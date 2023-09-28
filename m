Return-Path: <devicetree+bounces-4135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DCD7B15DB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5BD5528262A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B6D0328D9;
	Thu, 28 Sep 2023 08:17:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4DA1FD5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:17:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06C89C433C9;
	Thu, 28 Sep 2023 08:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1695889065;
	bh=f0Py5KsQnV1kllOtBgaMRjOqXMqsVEKHE9P7jkmTxLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mdKT26sKpwvKyVxjrAM3SwSFoLqZQ3Ap9kIl3LPvUuGJri7B/UskSlNUv3pTUlydj
	 +cKEq+FCaDatZOay9enVHnlVG0SmJU+tjbwN50C51rL/jz5Bn9ZRZiqPTS+5QBN0F+
	 U5KdvwyZuPYLoyKpkGLGxI7c0lpnWRHDl84zjW4w=
Date: Thu, 28 Sep 2023 10:17:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Subject: Re: [PATCH v2 1/5] serial: core: tidy invalid baudrate handling in
 uart_get_baud_rate
Message-ID: <2023092835-applied-shakable-f5dc@gregkh>
References: <20230920022644.2712651-1-jcmvbkbc@gmail.com>
 <20230920022644.2712651-2-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920022644.2712651-2-jcmvbkbc@gmail.com>

On Tue, Sep 19, 2023 at 07:26:40PM -0700, Max Filippov wrote:
> uart_get_baud_rate has input parameters 'min' and 'max' limiting the
> range of acceptable baud rates from the caller's perspective. If neither
> current or old termios structures have acceptable baud rate setting and
> 9600 is not in the min/max range either the function returns 0 and
> issues a warning.
> However for a UART that does not support speed of 9600 baud this is
> expected behavior.
> Clarify that 0 can be (and always could be) returned from the
> uart_get_baud_rate. Don't issue a warning in that case.
> Move the warinng to the uart_get_divisor instead, which is often called
> with the uart_get_baud_rate return value.
> 
> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> ---
>  drivers/tty/serial/serial_core.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/tty/serial/serial_core.c b/drivers/tty/serial/serial_core.c
> index 7bdc21d5e13b..a8e2915832e8 100644
> --- a/drivers/tty/serial/serial_core.c
> +++ b/drivers/tty/serial/serial_core.c
> @@ -431,7 +431,7 @@ EXPORT_SYMBOL(uart_update_timeout);
>   * baud.
>   *
>   * If the new baud rate is invalid, try the @old termios setting. If it's still
> - * invalid, we try 9600 baud.
> + * invalid, we try 9600 baud. If that is also invalid 0 is returned.
>   *
>   * The @termios structure is updated to reflect the baud rate we're actually
>   * going to be using. Don't do this for the case where B0 is requested ("hang
> @@ -515,8 +515,6 @@ uart_get_baud_rate(struct uart_port *port, struct ktermios *termios,
>  							max - 1, max - 1);
>  		}
>  	}
> -	/* Should never happen */
> -	WARN_ON(1);

I'm ok with this removal, but:

>  	return 0;
>  }
>  EXPORT_SYMBOL(uart_get_baud_rate);
> @@ -539,6 +537,7 @@ uart_get_divisor(struct uart_port *port, unsigned int baud)
>  {
>  	unsigned int quot;
>  
> +	WARN_ON(baud == 0);

Why is this needed?  If this isn't happening today, then there's no need
to check for this here.  Or if it can happen, we should return an error,
not cause a possible reboot of the system if panic-on-warn is enabled.

thanks,

greg k-h

