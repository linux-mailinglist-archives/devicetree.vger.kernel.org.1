Return-Path: <devicetree+bounces-4485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F374C7B2C64
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A33BA282DBF
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 06:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BDA10E3;
	Fri, 29 Sep 2023 06:34:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43810188
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:34:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D3619F;
	Thu, 28 Sep 2023 23:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695969255; x=1727505255;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=rjspptSg7zSqg15bu/FnJMsdagx6q/43SjMsDTCWF3c=;
  b=L471OKp2GzLHgA03HEqcGoxaWP5BkXf+ZSfR9JlPvgUU4darRYow5GUC
   EbImqCigwMAenTxbCTJUsTpbC5Y0JPJmkLaLOLj7mhWpIWonLVNaz3Fha
   9VcN1rmwQ+5H08m9Xd/8jq4Hwor2QmPjy0CgyUbFub/bWCSgDv/FAf9GP
   i7fBGiNUdiNORCiow0LFwO3Wb/Ap24i5gtUkOzORsiEdhTbybVtKhCW8H
   HM0B3zzBpxIdBpCQgu3peH/LFHGmOU9Ti0EgxLI1aRPP9Vrjl6QQAKQ7V
   0Idmqhny4UWJ4AOHXRSJUJAacUEUjAk4A0g+/8UncGD5meKb69cXTb7od
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="386107495"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; 
   d="scan'208";a="386107495"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2023 23:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="923523838"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; 
   d="scan'208";a="923523838"
Received: from smorozov-mobl1.ger.corp.intel.com ([10.252.52.167])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2023 23:34:13 -0700
Date: Fri, 29 Sep 2023 09:34:07 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Max Filippov <jcmvbkbc@gmail.com>
cc: LKML <linux-kernel@vger.kernel.org>, 
    linux-serial <linux-serial@vger.kernel.org>, devicetree@vger.kernel.org, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
    Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
    Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 1/5] serial: core: tidy invalid baudrate handling in
 uart_get_baud_rate
In-Reply-To: <20230928151631.149333-2-jcmvbkbc@gmail.com>
Message-ID: <69902af8-103-38a8-c438-87f7a047497@linux.intel.com>
References: <20230928151631.149333-1-jcmvbkbc@gmail.com> <20230928151631.149333-2-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 28 Sep 2023, Max Filippov wrote:

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
> Changes v3->v4:
> - drop WARN_ON from uart_get_divisor()
> 
>  drivers/tty/serial/serial_core.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/tty/serial/serial_core.c b/drivers/tty/serial/serial_core.c
> index 7bdc21d5e13b..3f130fe9f1a0 100644
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
>  	return 0;
>  }
>  EXPORT_SYMBOL(uart_get_baud_rate);

While looking into this, I found this old commit:

commit 16ae2a877bf4179737921235e85ceffd7b79354f
Author: Alan Cox <alan@linux.intel.com>
Date:   Mon Jan 4 16:26:21 2010 +0000

    serial: Fix crash if the minimum rate of the device is > 9600 baud
    
    In that situation if the old rate is invalid and the new rate is invalid
    and the chip cannot do 9600 baud we report zero, which makes all the
    drivers explode.
    
    Instead force the rate based on min/max

But for some reason it does not work as advertized here? What is the exact 
cause for that?

Is something wrong with how min/max have that +1/-1 there or what?

-- 
 i.


