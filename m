Return-Path: <devicetree+bounces-17115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AEF7F1392
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 13:38:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 050931C21865
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFEA3101EB;
	Mon, 20 Nov 2023 12:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YpO1amKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD5B1126
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 04:38:44 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-408425c7c10so15606425e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 04:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700483923; x=1701088723; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=21JXa3IgbFfFrhusieTfDaVvLPguIDs8AX7F4fH0rno=;
        b=YpO1amKB00iVaeD+//5EMsA38VYK+5ewu9wNEBl9xse58SphWWqz26NKZObBoizxiW
         DcooNWEH/sFldm8ITqATowNH0WCyKjdZKGqrzAswcENLKT122ExqAEyaC1lSzGgJL3yL
         DhgUEvYVadTK4cAbA5+NMxqWliiGhXLiSRAKagolLXKZ8XBHW6g1JlCZR/18llltZf56
         IQpQg2g4PVZVM5ERUkhqdDyuJgd/GY+rZrf+frnkSgnwToYtGFVgTQqyuj4iP0KWHu8F
         n+lqGvMLJFJAba+J/8/r5NBM4KXr7M2gVCd2xYdziA4BumOgKIJ6Gn5rvcuwmJwA+7E+
         ajjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700483923; x=1701088723;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=21JXa3IgbFfFrhusieTfDaVvLPguIDs8AX7F4fH0rno=;
        b=le64jvOZ6L9DC6BY5J3Tel11VA7C7YmM6GpuPKeFjQgBp1nXBbX7aY3fgNuz5Lnt7S
         sg7ki9lVXLGli4GpThc91zKYfIP5t8GdEiSP1zQCLrD2ngHeCQ95lF4OfZ65vd478nn9
         RTJHafRKIBjwUepyFuXnSxdyE6oJ+5JBMYaVyJeYEXZbeLghAj/kWEL4VWJX2tyPq7ep
         Y0ZRvZ4ORhJmCW18zhyRSWNwBOfhY1cw11omCNGKYrkCCszC/nCGRCa3jVsMNezeqvXh
         6p9KwjalnJNTPy2cVUnyf9N/CDbaJOZXmC5yuCyzmSrrjBF23mSL6lQaemFJTsJ5DoKc
         Yavg==
X-Gm-Message-State: AOJu0YwbT1wuDqLdHCkPyurvTfQc3r/bOMnI25goLvkOj1J40YgW3jfs
	F+IE7hrmu2QgxnatPVEJrFGaAg==
X-Google-Smtp-Source: AGHT+IHFdwla/AebbJRKAe6qLN7wbT/Dy8ebAETdnKPj+2uOwE60Iw1i6eDQ1rAO0ap81eJ5l4hFjA==
X-Received: by 2002:a05:600c:4592:b0:402:bcac:5773 with SMTP id r18-20020a05600c459200b00402bcac5773mr5555019wmo.38.1700483923322;
        Mon, 20 Nov 2023 04:38:43 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id c20-20020a7bc854000000b0040a43d458c9sm17392081wml.25.2023.11.20.04.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:38:43 -0800 (PST)
Date: Mon, 20 Nov 2023 13:38:41 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/6] ARM64: dts: rk3588: add crypto node
Message-ID: <ZVtTUT_6fxCAvyYk@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-4-clabbe@baylibre.com>
 <e049bbd3-c5df-4220-b2b5-c73dfe5c798b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e049bbd3-c5df-4220-b2b5-c73dfe5c798b@linaro.org>

Le Tue, Nov 07, 2023 at 05:20:59PM +0100, Krzysztof Kozlowski a �crit :
> On 07/11/2023 16:55, Corentin Labbe wrote:
> > The rk3588 has a crypto IP handled by the rk3588 crypto driver so adds a
> > node for it.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > index 7064c0e9179f..a2ba5ebec38d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -1523,6 +1523,18 @@ sdhci: mmc@fe2e0000 {
> >  		status = "disabled";
> >  	};
> >  
> > +	crypto: crypto@fe370000 {
> > +		compatible = "rockchip,rk3588-crypto";
> > +		reg = <0x0 0xfe370000 0x0 0x2000>;
> > +		interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
> > +			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
> > +		clock-names = "core", "aclk", "hclk";
> > +		resets = <&scmi_reset SRST_CRYPTO_CORE>;
> > +		reset-names = "core";
> > +		status = "okay";
> 
> Drop.
> 
> Best regards,
> Krzysztof
> 
I will do it
Thanks.

