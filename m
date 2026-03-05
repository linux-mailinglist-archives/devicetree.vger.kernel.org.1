Return-Path: <devicetree+bounces-271470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADJ5IoRRqWkj4wAAu9opvQ
	(envelope-from <devicetree+bounces-271470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:48:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F82E20EE9C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3579C305D299
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BE337AA6F;
	Thu,  5 Mar 2026 09:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eLCMqKDy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3AD377ED9
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772704079; cv=none; b=YOGydXYzCDVMx4m115fIaIMX812e1HnKftoRDGvksUqe7/EnqyJ/1GxyuJaaHdNffDZ7KwLISpKFVP4C1XD753+zx/XPBQqrNjtM/2yJjTI9E+gRV+R5e3d0qN6BXm01cixIbUvMULjBa4L2on3CHDNjqnuDet//+KLFk/RDPXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772704079; c=relaxed/simple;
	bh=yNJ+g0kgFl4rN2nV1qDYDztAf8zpw/3rgT6jdQgfIak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSqa9BazhqRtXCyIULSjMqvLfKJ3krpx1FA7gqg7MX8tTPDmxpIvhRAE/8TSWPnVMP3IFDFMG3Y7K9JA66bfS4c3CQ9q3HmJJjh1jbk96UVKpqrxKEEksi6JzNEsyrpqISEIY+k6ygUnnE9L9tAB6XEgpEEMWuWI7HZl6962ieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eLCMqKDy; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4834826e5a0so88867605e9.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772704076; x=1773308876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=obqyQWFp1H53oLqwIlaLvRj7pbSd+nYq4rGayxVQqL4=;
        b=eLCMqKDymWtpwAUnQYoKNKqKiLoWlQxH/p4LQR614Ji1m2oo6S4ecYxpAFss6bgzfM
         TgCaWir/AHpvUMW5hTLr6jycQUyOTcQ7i5DVXtDPubkJP6PvayZbBU1eiv/+TrD6SCfO
         I548MehQoziFRYJo+wtgiERDzmxlO7PE7Zayui51vrMZhUKY+8pyUz4QsraYDc9eLULY
         d0OKgVX7VgrQxf8gjyynfLut3tGSovKCED+Mrx4OlNIDPYs9oRUhI0VFhkRyHPIPxS9Q
         bTz8Yt33f+Owoaz2gFxQSiZZJKZJvXaYmfeC/+vkPDwFGQcDi652pTLaRs6h5zmg9jDD
         pgyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772704076; x=1773308876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=obqyQWFp1H53oLqwIlaLvRj7pbSd+nYq4rGayxVQqL4=;
        b=KV6zKf2lhYdmvnjRHIXWYn+GJCu0kwwwDzeImPAPSiqFde0ujBuVmyGR9EFer1JFoO
         SC9Tshvj2FgLvuiAr25tuEsCNKpOh0DxinG2N6QeeGlGatARo/gyWiDMHemWoXA3MlBj
         Nm9WWnNJzwtTgBJzP8QZ5bYHjcyIveNEslUmCP3o7C9FerqoP0LnuD522M/trEAW1Rqz
         Dm0aRFr7ZJ4U24UvQwS78lg20C7OVB3utfRQhK46t/jgWiFf+efxkXXcYD97jTe8qII6
         k7ZvcnFiG7JiIjF9d6xQX6r/iD0ZZD1eU6rjA6OzlfxFDgxTWi6JqiEvOXKY6RvqLuPc
         EnOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd4pxJ86Wdu1Rgzo0I8Y7Px5J4pu2Ilm5KKw4aVggLW+M2a480BDCLXaHp7uGqPCtYUQ1M4B773cg+@vger.kernel.org
X-Gm-Message-State: AOJu0YyjdMmgFAkWw+xhvmQAxemBnfA90qb80vXQ8wMz2Srx3Y4K6UIc
	vsOUnvy6/zDdOkKFIKLq+6r3OHsq7wyeoTYPfD9hYMPPfk5qHHkdh8PY4gyo/RB8J8A=
X-Gm-Gg: ATEYQzzPGu+7unj1P7rNPA3zOWMytEzUOTcCrp+uTMOIQDRVMQtVlxLYhWC4qVrkNgt
	A52ss0iDKYOnIXNouwHossoFFCXP5ccBVWbnMb65bMrHwJB5g+qZvbixCkQtIVhYoFEa8BSmzpD
	q3fGdYFlvhfAhjDzPeDfD2qtNQOSSNuGm5Oj1XA44+qIVTiNIkyPdg08tDlnal+8USWsIzqi7LN
	LfJ2wg6XQGjMGAs+gLcyRvrhAaTPiBMGOwMp7CgnXkaBTXXxu9A8qvT1ICg608zjTPFsdCC1rYc
	1Nh9T+NHREJt2SbYJ6753xJ0plMnmoUadfM/JIixQipOLvOHVGjIFjIlGngK1E2Casv7IMOVorj
	/+qhX02VHCSfW83xcwpA9GhayWNIA3QgEkYJ0cb3lOx0uy7/HTWR0E8Aob8WtZ5mWKfWSkifG/q
	5egA9H4OlP/SyYWRUOxm1Wr4W7mL0OAM7HLj9HvZ0=
X-Received: by 2002:a05:600c:46d2:b0:483:b505:9db4 with SMTP id 5b1f17b1804b1-485198a3d0emr89895795e9.31.1772704076395;
        Thu, 05 Mar 2026 01:47:56 -0800 (PST)
Received: from linaro.org ([77.64.146.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851ec74bc7sm25012025e9.0.2026.03.05.01.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:47:55 -0800 (PST)
Date: Thu, 5 Mar 2026 10:47:22 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: adamp@posteo.de
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
Message-ID: <aalRKuqzX48PzyL-@linaro.org>
References: <20260301-wiko-chuppito-v3-0-9b36a2a7aed5@posteo.de>
 <20260301-wiko-chuppito-v3-3-9b36a2a7aed5@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301-wiko-chuppito-v3-3-9b36a2a7aed5@posteo.de>
X-Rspamd-Queue-Id: 6F82E20EE9C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271470-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.39:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.48:email,posteo.de:email,bootlin.com:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.11:email]
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 11:29:19PM +0100, Paul Adam via B4 Relay wrote:
> From: Paul Adam <adamp@posteo.de>
> 
> Add an initial device tree for Wiko PULP 4G.
> Includes support for:
> - UART
> - USB (no OTG)
> - Internal storage
> - MicroSD
> - Volume keys + Power button
> - Touchscreen
> - Backlight
> - Accelerometer: Invensense MPU6880
> - Magnetometer: Asahi Kasei AK09911
> - Hall sensor: Rohm BU52021HFV
> - Proximity sensor
> - Vibrator
> - Earpiece
> - Microphone 1
> - Headphones
> - Wifi
> - Bluetooth
> - GPU
> 
> Signed-off-by: Paul Adam <adamp@posteo.de>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts | 356 +++++++++++++++++++++
>  2 files changed, 357 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..5a3a9a823503 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -75,6 +75,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-rossa.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-serranove.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-thwc-uf896.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-thwc-ufi001c.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wiko-chuppito.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt86518.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt86528.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt88047.dtb
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
> new file mode 100644
> index 000000000000..dd56e1baeb4b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
> @@ -0,0 +1,356 @@
> [...]
> +&blsp_i2c2 {
> +	status = "okay";
> +
> +	magnetometer@c {
> +		compatible = "asahi-kasei,ak09911";
> +		reg = <0x0c>;
> +		vdd-supply = <&pm8916_l17>;
> +		vid-supply = <&pm8916_l6>;
> +		reset-gpios = <&tlmm 120 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&mag_reset_default>;
> +		pinctrl-1 = <&mag_reset_suspend>;
> +		pinctrl-names = "default", "suspend";

Did you mean "sleep" instead of "suspend" here? By default, there is
"default", "init", "idle" and "sleep" [1], although drivers can request
custom pinctrl states as well.

Note that even with "sleep", the pinctrl state will be rarely used on
Linux. Drivers need to explicitly call pinctrl_pm_select_sleep_state()
to trigger these, but only few drivers do that [2]. From a quick look,
I suspect that only the &sdhc_2 sleep pinctrl here is currently used on
Linux.

That doesn't mean that you can't add these pinctrl states (the DT is not
supposed to be specific to one particular operating system), but it does
mean that most of these are effectively untested right now. I would
personally omit them.

[1]: https://elixir.bootlin.com/linux/v7.0-rc1/source/include/linux/pinctrl/pinctrl-state.h#L36
[2]: https://elixir.bootlin.com/linux/v7.0-rc1/A/ident/pinctrl_pm_select_sleep_state

> +		mount-matrix = "1",  "0", "0",
> +			       "0", "1", "0",
> +			       "0",  "0", "1";
> +	};
> +
> +	proximity@48 {
> +		compatible = "sensortek,stk3310";
> +		reg = <0x48>;
> +		interrupts-extended = <&tlmm 113 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-0 = <&proximity_int_default>;
> +		pinctrl-1 = <&proximity_int_suspend>;
> +		pinctrl-names = "default", "suspend";

Same here.

> +	};
> +
> +	imu@68 {
> +		compatible = "invensense,mpu6880";
> +		reg = <0x68>;
> +		interrupts-extended = <&tlmm 115 IRQ_TYPE_EDGE_FALLING>;
> +		vdd-supply = <&pm8916_l17>;
> +		vddio-supply = <&pm8916_l6>;
> +		pinctrl-0 = <&imu_int_default>;
> +		pinctrl-1 = <&imu_int_suspend>;
> +		pinctrl-names = "default", "suspend";

And here.

> +		mount-matrix = "0",  "-1", "0",
> +			       "-1", "0", "0",
> +			       "0",  "0", "-1";
> +	};
> +};
> +
> +&blsp_i2c5 {
> +	status = "okay";
> +
> +	touchscreen@39 {
> +		compatible = "syna,rmi4-i2c";
> +		reg = <0x39>;
> +		interrupts-extended = <&tlmm 13 IRQ_TYPE_EDGE_FALLING>;
> +		vdd-supply = <&pm8916_l17>;
> +		vio-supply = <&pm8916_l6>;
> +		pinctrl-0 = <&touchscreen_default>;
> +		pinctrl-1 = <&touchscreen_suspend>;
> +		pinctrl-names = "default", "suspend";

And here.

> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		syna,startup-delay-ms = <100>;
> +		syna,reset-delay-ms = <160>;
> +
> +		rmi4-f01@1 {
> +			reg = <0x1>;
> +			syna,nosleep-mode = <1>;
> +		};
> +
> +		rmi4-f11@11 {
> +			reg = <0x11>;
> +			syna,sensor-type = <1>;
> +		};
> +	};
> +};
> +
> [...]
> +&pm8916_rpm_regulators {
> +	pm8916_l17: l17 {
> +		regulator-min-microvolt = <2850000>;
> +		regulator-max-microvolt = <2850000>;
> +		regulator-always-on;

Does this need to be always-on?

> +	};
> +};
> +
> [...]
> +&sdhc_2 {
> +	pinctrl-0 = <&sdc2_default>, <&sdc2_cd_default>;
> +	pinctrl-1 = <&sdc2_sleep>, <&sdc2_cd_default>;
> +	pinctrl-names = "default", "sleep";

This is OK, drivers/mmc/host/sdhci-msm.c selects the sleep state.

> +	cd-gpios = <&tlmm 38 GPIO_ACTIVE_HIGH>;
> +
> +	status = "okay";
> +};
> [...]
> +&tlmm {
> [...]
> +	imu_int_default: imu-int-default-state {
> +		pins = "gpio115";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	imu_int_suspend: imu-int-suspend-state {
> +		pins = "gpio115";
> +		function = "gpio";
> +		drive-strength = <2>;
> +	};

imu_int_default has a bias, but imu_int_suspend does not, is this
intended? I would just drop these "suspend" states, as I mentioned
above.

Thanks,
Stephan

