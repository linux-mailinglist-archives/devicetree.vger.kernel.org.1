Return-Path: <devicetree+bounces-296200-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLakFLsXA2p10QEAu9opvQ
	(envelope-from <devicetree+bounces-296200-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:06:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D7351FC53
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:06:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4780C3010BBF
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 12:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D63238E8AC;
	Tue, 12 May 2026 12:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jisNzjr5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61213FB05B;
	Tue, 12 May 2026 12:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778587550; cv=none; b=rvKyXz3dx0tZ0W74Lk67q7ILWHPngLG6QYaJ1338B3qLKn9uUmuG3uCk6aX2VGYcIA/rn316M9/XICT5q2uoXEhVxcBL1KekwzVTKM3w6IxO0ZT7gTILX/GAX8FehNBt8mw0V88EyIFi2gNzz7/jQTc8NP9OpQCbztlWMGIrXy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778587550; c=relaxed/simple;
	bh=L0njMALZB/v37lDozZc9pR7GS9XbxvW8vfuwH1eA7xk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=krN4NaZDA1LsSu7XXMepdDmtBC0rCp66CLNNqSZUSw4UP2hlwLCeqPCYYTMPUVJG9LaptW54cbLY1ZpSCp2rtfunBKehUUnaS61fy2SR1fXzN0TH7iHxTqFvilbW6kYHf/0YWZ1LKJtwrJ+ZcZk4TxV+Xf246Ctt2rXqNumlIwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jisNzjr5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92448C2BCB0;
	Tue, 12 May 2026 12:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778587550;
	bh=L0njMALZB/v37lDozZc9pR7GS9XbxvW8vfuwH1eA7xk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jisNzjr51h+KvPvjFres2Z4CD5u3LvN3Q+dK+XuK4v0nBguNcajkLd6EbNGeZ5TkM
	 OEhcT8zc4hJ3H0vasGcSXaODccditGA+dVFrlL/DcDCGAhOyotOklAXft4yEMNASrM
	 En/iqByZjpXFg/BIlGAQ5o32Klu4r2BRD7zPwi6eqT0CzegJYulY3nwfVidUCZfYGO
	 BDC3DUEczArLXWjZiQ7kVR6Wt3/QzUgyREjTkcq3WEeHjj2nb3cO7jB16IHL/tyaUl
	 q0X65luohGuFull90L1XFkuqmBFETun1XBk7Z4yQX4cVX3BG1C4s23Ol3VjBCi3jav
	 TRjiCS90S8KCg==
Date: Tue, 12 May 2026 13:05:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, andriy.shevchenko@linux.intel.com,
 dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 v8 01/11] dt-bindings: iio: adc: hx711: clean up
 existing binding text
Message-ID: <20260512130536.2e9a3bac@jic23-huawei>
In-Reply-To: <20260511174342.123820-2-piyushpatle228@gmail.com>
References: <20260511174342.123820-1-piyushpatle228@gmail.com>
	<20260511174342.123820-2-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B4D7351FC53
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296200-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,aviaic.com:url,microchip.com:email]
X-Rspamd-Action: no action

On Mon, 11 May 2026 23:13:26 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Rewrite the binding description and property text so it describes the
> existing HX711 hardware behavior directly instead of documenting old
> driver implementation details.
> 
> Also clarify that clock-frequency controls the SCK bit-bang timing.
> 
> No functional change.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
This is a good improvement on it's own so in the interests of moving
things along I'll apply this one now.

Applied to the testing branch of iio.git

Thanks,

Jonathan

> ---
>  .../bindings/iio/adc/avia-hx711.yaml          | 25 ++++++++-----------
>  1 file changed, 10 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> index 9c57eb13f892..1ea60dff98d5 100644
> --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> @@ -10,14 +10,9 @@ maintainers:
>    - Andreas Klinger <ak@it-klinger.de>
>  
>  description: |
> -  Bit-banging driver using two GPIOs:
> -  - sck-gpio gives a clock to the sensor with 24 cycles for data retrieval
> -    and up to 3 cycles for selection of the input channel and gain for the
> -    next measurement
> -  - dout-gpio is the sensor data the sensor responds to the clock
> -
> -  Specifications about the driver can be found at:
> -  http://www.aviaic.com/ENProducts.aspx
> +  The HX711 is a 24-bit ADC with selectable gain (32/64/128) and two
> +  differential input channels. Channel A supports gain 64 and 128;
> +  channel B supports gain 32.
>  
>  properties:
>    compatible:
> @@ -26,23 +21,23 @@ properties:
>  
>    sck-gpios:
>      description:
> -      Definition of the GPIO for the clock (output). In the datasheet it is
> -      named PD_SCK
> +      GPIO for the clock output (PD_SCK in the datasheet).
>      maxItems: 1
>  
>    dout-gpios:
>      description:
> -      Definition of the GPIO for the data-out sent by the sensor in
> -      response to the clock (input).
> -      See Documentation/devicetree/bindings/gpio/gpio.txt for information
> -      on how to specify a consumer gpio.
> +      GPIO for the data output from the sensor (DOUT in the datasheet).
>      maxItems: 1
>  
>    avdd-supply:
>      description:
> -      Definition of the regulator used as analog supply
> +      Analog supply voltage (AVDD).
>  
>    clock-frequency:
> +    description:
> +      Controls the SCK bit-bang timing. The value is used to derive the
> +      delay between SCK edges; keep the SCK high time below 60 us to
> +      avoid triggering chip power-down mode.
>      minimum: 20000
>      maximum: 2500000
>      default: 400000


