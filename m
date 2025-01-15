Return-Path: <devicetree+bounces-138808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A0BA12592
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0A18167E3E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A0C3596F;
	Wed, 15 Jan 2025 14:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="akbPY3h+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC412BAF7;
	Wed, 15 Jan 2025 14:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736950072; cv=none; b=F6pRTlRXZCxJe1B3M/G/oU5IROjlCOmctq6SOWRCI384KP0JSVb3h6ijD2VSJxPqzvGn4C2lvZW8e5G/tpAPVd4G3TaSN62SatB+Y+UkQRADXXJHaT+C+BVzathJCtP3iPOq4fXK16WYymzcme9uWdnuijrdMUzfrAnuXnRkDTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736950072; c=relaxed/simple;
	bh=pYNI0+DrSHxt8IA4pT0Q6TIGUdZHoKvWFTtA9bR9DVY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u4l0Jld9yY6aohh5hKqQu3LkiW79gaG2OUynCbTIRrjcQtEP8CcTv8cjvR2HN9OPBIv+YIa48Ql/Is6OBpXHYcngnJRkDxrB8K0IHHSFa3iESIjCBRp9hf6nliG9vgqoKuP1pa1+ZI7T0BqvESKIlQIVkVN1P0+3vYqmgtdNuTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=akbPY3h+; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2163b0c09afso126474675ad.0;
        Wed, 15 Jan 2025 06:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736950070; x=1737554870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5vCPLadSTG0XNEadulJx4woFN95JwHE+lHWPlfdFjqo=;
        b=akbPY3h+zkcgcBAC4tHkZHIV8AK1rlYHEUrt11vuKD2oY6qdkkrgcZY77WHoioOKOn
         0J5U1B6a61xW1ZHy0tfVC07ngUA8M/WFj9v2yKRnFHQcCHtvfrpoa2gPOZ5X0+1dGbjI
         c5V3s87Yf6ZbCw2Nk/S6XgAqDG9VD+GSHfq96H8wgrc08pebaYI6wZc0RNH6SW6aZ7gU
         l/9ZflT+an0gAt6DFN9CB6YsfAO/aLmXkxvaEHekZ3CTD6xeoht2cOXZQXNhjRSBezDU
         OUEIXCpu44ZS8mqlHTs9bwEKG8XhqR0s5IoNriSgn2sCqCrkaiJ0BRzDFD5OW9I19McT
         O0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736950070; x=1737554870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5vCPLadSTG0XNEadulJx4woFN95JwHE+lHWPlfdFjqo=;
        b=HdZL/o4LWB9iVUGIGtsMSdJT1rAw3O8AJd6gO3p1u7uXKhuZCKPk6XGnltA9JNcItZ
         cKu5snFIDO31YgctulB+3RwahHDneYdliJDvu9cIJ+HOVRIpV0L4DVeLxqY95cIFfAMl
         +JCgWkeY+Ucy7HL+fQZzdEW+MqCUitL/xsszfp+cN03Klvu82lzZYuDnjVrGpbeWBcC0
         jeG1PGs6l6pN3hEmvNnv1ASYMNcfcfpo6q2biUxxwzD/BhsiS23qNzf2Omz49NxfE7By
         1Bgu4YzE4R+e6CBXpRg3vfTu9fjnSQh8t9zRip2Et84Nps+PrAa3D2cSG6b9sOx/9tnJ
         AxqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwTFhEH6AAHjaqzQq8ZMTJRGszc5ZjENfpXuH2YcjAZGxfaAK9JlNIqVzI/5xRX6rhmDiu7KINkWl9@vger.kernel.org, AJvYcCXtmh6v/96wPTNngq2K7NxRZtsueqpmWkabQ21Aq2+CxeMX2OqYXU68rgOgm5LxXR8blM8XJc7knRVI5oQZ@vger.kernel.org
X-Gm-Message-State: AOJu0YylH3oulBSMXpDVPX9RDCoyr27JNADtMlpuMAKP8gNkBBB5xa4g
	bGYOSJjnZM0AE15XDILNpaTqgsMM+CDv2THb8gPtGic0hZxROj9Q
X-Gm-Gg: ASbGncvF0FtQDMCxLbaYI7zyyUj61FsgjrRGJvgBM1YjMWOrcJTHTqQ7bv6AVm0Y3GG
	iK9tBD3clWdxDOKUFehJEfhrgTQdPzYORAf9sFrLhyVyIY+8mDxajKDHIv1gLRnvwY7AlUReMSH
	J9HpIm1NJkzi5lu99a2ikHedZ/B4+yhU4WAv9y0FnoMCPcTZ3ExUQT6WGKusY7J3mAkmCoit4Tc
	jYmwmmyMF6NVtKEhxvygOZaxTQ8qBu32Tdyxk1aULN246ZxSOu7L+hnkMYmsXB/
X-Google-Smtp-Source: AGHT+IEOHm6oG8q2/VBX+YnEUddFnG0FmgHB02S4iMBT+29EuCT2i15IMPwhfxsK6EdgDfF5iHJflA==
X-Received: by 2002:a05:6a00:368d:b0:727:99a8:cd31 with SMTP id d2e1a72fcca58-72d21f47fc5mr39933032b3a.14.1736950070133;
        Wed, 15 Jan 2025 06:07:50 -0800 (PST)
Received: from [192.168.0.116] ([59.188.211.160])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a317a07cce2sm9929464a12.4.2025.01.15.06.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 06:07:49 -0800 (PST)
Message-ID: <00863806-d481-44a1-b97f-ead0fc6f9581@gmail.com>
Date: Wed, 15 Jan 2025 22:07:44 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: apple: Add touchbar screen nodes
Content-Language: en-MW
To: fnkl.kernel@gmail.com, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com>
 <20250114-adpdrm-v4-4-e9b5260a39f1@gmail.com>
From: Nick Chan <towinchenmi@gmail.com>
In-Reply-To: <20250114-adpdrm-v4-4-e9b5260a39f1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 15/1/2025 05:38, Sasha Finkelstein via B4 Relay wrote:
> From: Sasha Finkelstein <fnkl.kernel@gmail.com>
> 
> Adds device tree entries for the touchbar screen
> 
> Co-developed-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
> ---
>  arch/arm64/boot/dts/apple/t8103-j293.dts | 31 ++++++++++++++++
>  arch/arm64/boot/dts/apple/t8103.dtsi     | 60 +++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/apple/t8112-j493.dts | 31 ++++++++++++++++
>  arch/arm64/boot/dts/apple/t8112.dtsi     | 61 ++++++++++++++++++++++++++++++++
>  4 files changed, 183 insertions(+)
> 
[...]
> diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
> index 9b0dad6b618444ac6b1c9735c50cccfc3965f947..9b088f74e0cb9f42fbc8df822fca6451dcd1b717 100644
> --- a/arch/arm64/boot/dts/apple/t8103.dtsi
> +++ b/arch/arm64/boot/dts/apple/t8103.dtsi
> @@ -356,6 +356,66 @@ cpufreq_p: performance-controller@211e20000 {
[...]
> +
> +		displaydfr_mipi: dsi@228600000 {
> +			compatible = "apple,t8103-display-pipe-mipi", "apple,h7-display-pipe-mipi";
> +			reg = <0x2 0x28600000 0x0 0x100000>;
> +			power-domains = <&ps_mipi_dsi>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";

Missing empty line.
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				dfr_mipi_in: port@0 {
> +					reg = <0>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					dfr_mipi_in_adp: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&dfr_adp_out_mipi>;
> +					};
> +				};
> +
> +				dfr_mipi_out: port@1 {
> +					reg = <1>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +				};
> +			};
> +		};
> +
[...]

With that in mind,

Reviewed-by: Nick Chan <towinchenmi@gmail.com>

