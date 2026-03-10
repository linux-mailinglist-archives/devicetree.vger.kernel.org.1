Return-Path: <devicetree+bounces-273438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DJSDtHtr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:09:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3257D24922A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9A11B30216CD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0B636E493;
	Tue, 10 Mar 2026 10:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mBT4K//m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9D136A004
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137173; cv=none; b=Q2ucBBklfgaV69gLNtGOZ97EA3Wkp1l3/DTGHbesEKUw+0qYwZdK9Bspem3iMwoKnNFrifKVgpb36q/z2JkSp+NnayN9u6d/N/jkEW/Aq2OnghgBnOYcy2cxcGPwSzZK6niOTW0WifzW0i2z20/kn2c7SoiDNqp9jtqEFtAyOe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137173; c=relaxed/simple;
	bh=QjE4cEvdFi0owbDr/a7XfWDQ+/pUxniveETxohTqu7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aR+y1HKnksSeL9QSahbMEWt1OXOSRiEbvoozDnxjAW4OCogy8r8173c86h+uoLWYHVCx5COQIVorYeWl64c0qCaVY0dBGZ9a5cTHO0ahEUtzD72HkT9LTZ70FCBJ8RNyUFxsQply2UHtcjc6P1jnPJr8QUGsIRux0Y8a5S2rWUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mBT4K//m; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439f59dfda2so104480f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773137170; x=1773741970; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bmUw5A97wrpfIT56ALDmCYbj15syxnOOqGuMSPR08nE=;
        b=mBT4K//m4qJDJS0eNnLsRzJL/k4mZyjh2DUAof8dJ7tSqxa4xxGU1rDyaHwwlDY6fr
         9aTY76ImWsDpth0L1tZq4MMtoDXwD/dLkyXc/dhTo+U1khHT4myvUS2zBl+RuDmybnf2
         mCxPCBahgTpY/vGF5flum1AtR08EexkZMixm0GCjnISaigtlp5QxLIKBOR7OmHu0SN8K
         AmerB71VOXzsXsLKjgI0Fozqg+nKLF1hpI3E2edgIBTzO2Xe4EI1Ojy8NFC8PebeT78D
         pRwhid/YAYqBSZxe7E4tgZSPe3nIaxKU0HZjDbK4sUBJ7D98dLWgP77zAiUdQVuAi7JX
         qfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137170; x=1773741970;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bmUw5A97wrpfIT56ALDmCYbj15syxnOOqGuMSPR08nE=;
        b=JqxXtYnNkXDwQDe8iXvDlB8uuWKfICojD4jkMHGnmSEKBile9M4LJuf1bnHEWmpYT0
         XL5fmwSLwSLrNQ2OKTSmh6vmoKasqDy2VvnXsjsfjXrLdSqm0hRrD8gmXpKkElwbvsC9
         59CjJILbIR3+gtZxSCb8wuniU136hd2gZzRukifmgHgynfg/4UQDHjBGU4VqwkehLuTQ
         EnINZhIjzuIGMWu3SC+iKbWew7z4Rfy2vdr+Sx4BQ0k3BwilJTCA102vBb/GTypad7v1
         2NDbre1I/PV+XliTZKKOTR1J0UyBlGU6xzSix8LUNqgzzZkoh+CdCcB0TeTx4cBLizJv
         a9NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvRnR53dvRfezyTTg24YScs/Afsh9UQJ7AfCYQUJqjdJP9tc5mk/mHQHPatr9PmS/jpJ8gwnPF9VC8@vger.kernel.org
X-Gm-Message-State: AOJu0YwBSKs4LHGHEfNjPF0zWTpCS7jV4s1SoGx4+MpSqslN1nX74dhf
	19lQS8H97WMO8wJoM1VnURquqe+rbITVdBdmXxAJSklZEVGwYT9t6HJP
X-Gm-Gg: ATEYQzwXl5ZL+x2lMFZCTvy1x3+zdvGqLirRkDf3zgZlnR3zIjEwIeG2B0tSaRkBnq9
	PJGkQMMBXP6gRl41FBc7eGF9kyd66Gzoo26vi2Cfz7Fr0wjiYHJsGdYYD+C7WSa8+mi4cDXtAsm
	YOYALUI87Bb9rXF2iNv3C6MBDcUeQ5XS31XEPWMw2Z7USCAdJ+tMgSzepErMxbHTY2Ls3ZtTOYr
	iOVscbh84NoCsBHMH8KCOFDcrxlwJegJdlB2AqL3XyE4hmBy7TM7nQcOWe8j4dRMHLe8Ln6/1Ga
	+dEsmh8xh3LPetd4ekPLXQ8she64ZPD0x7Iao8wCQsd5RMrdw6GYkLpJ5wYH3h++lDH7rfOAV7Z
	qMb+XernOwDHlPflQ+pFTVzSUimnLBH7h31+iF7Oh+0RhH86gCMmCIWBNIFyaIpHasan+1CB+ci
	+y5lNnpdu1jtyT3rvFzBlBAcHH2DERAOp2zOyOeIFme+MGEBHvnPYFK8Qt4oKYMxUfzGo/dpqXh
	bL7fiPq7uFegqhjZE46p5Fpk7c=
X-Received: by 2002:a05:6000:2010:b0:439:b203:7711 with SMTP id ffacd0b85a97d-439da31de13mr25766004f8f.3.1773137170198;
        Tue, 10 Mar 2026 03:06:10 -0700 (PDT)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dadb29fdsm34564056f8f.16.2026.03.10.03.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:06:09 -0700 (PDT)
Date: Tue, 10 Mar 2026 11:06:08 +0100
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
To: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/6] arm64: dts: freescale: imx95-verdin: Add Ivy carrier
 board
Message-ID: <xghf5wajmzkz3vhi565q5fmclrelczobbvywg7z2tj3gj2rzlq@idn3vyhxxsde>
References: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
 <20260305-verdin-imx95-upstream-frank-li-base-v1-4-823fad02def9@toradex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305-verdin-imx95-upstream-frank-li-base-v1-4-823fad02def9@toradex.com>
X-Rspamd-Queue-Id: 3257D24922A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273438-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 06:24:32PM +0100, Ernest Van Hoecke wrote:
> +/ {
> +	aliases {
> +		eeprom1 = &carrier_eeprom;
> +	};
> +
> +	/* AIN1 Voltage w/o AIN1_MODE gpio control */
> +	ain1_voltage_unmanaged: voltage-divider-ain1 {
> +		compatible = "voltage-divider";
> +		#io-channel-cells = <1>;
> +		io-channels = <&ivy_adc1 0>;
> +		full-ohms = <19>;
> +		output-ohms = <1>;
> +	};
> +
> +	/* AIN1 Current w/o AIN1_MODE gpio control */
> +	ain1_current_unmanaged: current-sense-shunt-ain1 {
> +		compatible = "current-sense-shunt";
> +		#io-channel-cells = <0>;
> +		io-channels = <&ivy_adc1 1>;
> +		shunt-resistor-micro-ohms = <100000000>;
> +	};
> +
> +	/* AIN1_MODE - SODIMM 216 */
> +	ain1_mode_mux_ctrl: mux-controller-0 {
> +		compatible = "gpio-mux";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio5>;
> +		#mux-control-cells = <0>;
> +		mux-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	ain1-voltage {
> +		compatible = "io-channel-mux";
> +		channels = "ain1_voltage", "";
> +		io-channels = <&ain1_voltage_unmanaged 0>;
> +		io-channel-names = "parent";
> +		mux-controls = <&ain1_mode_mux_ctrl>;
> +		settle-time-us = <1000>;
> +	};
> +
> +	ain1-current {
> +		compatible = "io-channel-mux";
> +		channels = "", "ain1_current";
> +		io-channels = <&ain1_current_unmanaged>;
> +		io-channel-names = "parent";
> +		mux-controls = <&ain1_mode_mux_ctrl>;
> +		settle-time-us = <1000>;
> +	};
> +
> +	/* AIN2 Voltage w/o AIN2_MODE gpio control */
> +	ain2_voltage_unmanaged: voltage-divider-ain2 {
> +		compatible = "voltage-divider";
> +		#io-channel-cells = <1>;
> +		io-channels = <&ivy_adc2 0>;
> +		full-ohms = <19>;
> +		output-ohms = <1>;
> +	};
> +
> +	/* AIN2 Current w/o AIN2_MODE gpio control */
> +	ain2_current_unmanaged: current-sense-shunt-ain2 {
> +		compatible = "current-sense-shunt";
> +		#io-channel-cells = <0>;
> +		io-channels = <&ivy_adc2 1>;
> +		shunt-resistor-micro-ohms = <100000000>;
> +	};
> +
> +	/* AIN2_MODE - SODIMM 218 */
> +	ain2_mode_mux_ctrl: mux-controller-1 {
> +		compatible = "gpio-mux";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio6>;
> +		#mux-control-cells = <0>;
> +		mux-gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	ain2-voltage {
> +		compatible = "io-channel-mux";
> +		channels = "ain2_voltage", "";
> +		io-channels = <&ain2_voltage_unmanaged 0>;
> +		io-channel-names = "parent";
> +		mux-controls = <&ain2_mode_mux_ctrl>;
> +		settle-time-us = <1000>;
> +	};
> +
> +	ain2-current {
> +		compatible = "io-channel-mux";
> +		channels = "", "ain2_current";
> +		io-channels = <&ain2_current_unmanaged>;
> +		io-channel-names = "parent";
> +		mux-controls = <&ain2_mode_mux_ctrl>;
> +		settle-time-us = <1000>;
> +	};

Hello Krzysztof,
Hello Frank,

Thanks for your review so far. I noticed that the node order here is
also wrong and not alphanumeric on node name. I will fix some of them,
but for some it could mean that for example, 'ain2_voltage_unmanaged:
voltage-divider-ain2' is far from 'ain2-voltage', which is unfortunate
since they are related. Together with the the current-sense and
mux-controller nodes they form something of a logical group and it seems
undesirable to have them be separated by a long 'leds' node and the
regulator nodes.

Would it be acceptable to keep the "group" together and sort
alphanumerically within it, or is it preferred to sort all nodes
alphanumerically?

Kind regards,
Ernest

