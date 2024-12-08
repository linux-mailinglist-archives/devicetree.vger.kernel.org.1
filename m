Return-Path: <devicetree+bounces-128257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D9E9E83A9
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 06:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50BAA188483E
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 05:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1626428371;
	Sun,  8 Dec 2024 05:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IAPHcyw0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348E5F9FE
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 05:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733635934; cv=none; b=l9sj98IQHqeF3niHClE7pKKIcgqTOgNRg4FXMKe4NpguTg9NilVekIkOFiMPBQS1LhucRqSkCUuPku8yyK5s/Hloy/rLpcm+iu4jKdh6VNE8LasyRbmdHyQRGVPb2WfnXgTq8ErUt5q0rzac8kGHYlnk3Hrs2bn8++ZLvT3uoZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733635934; c=relaxed/simple;
	bh=ZH9c+nbPI18/8YvQMcmvQRtgXojPyyQ3bR6i6JGEYIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QnMpTje2SjSNI1y2gUcJwmumuxqWRzRVuh1hEWHtDbIBs6MmZP3LNbfd3Pc94tbg21RCCEkAjXcmJK69TBUAcNg/sej0dKu0por+kKmmPJmMZNutmRNXE6X6LWQ0+1IXKrGnqQlC945KgKGVUWLJHsDf/CDq7Tor+ogue/YARB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IAPHcyw0; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ff976ab0edso33379351fa.1
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 21:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733635930; x=1734240730; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P6nFzI3wt1FIwd3t3T0zMAhozPOD3DEG6nWM7JBmOLo=;
        b=IAPHcyw0z9ku0Xz/QfKZl+CCa0mRbsUE3aVaqffK+2EO+0MPpHzovRiijLZSbhBWZ4
         0x4RasIigYgHrM8mrk/DCS66T6vWqCX5OEzyCvT3UmccZJxCZk5IU48jZ9g3qZ2t01T6
         kxbX7tbajKcHD1g3VaDD7HZgDdLr++sVm5NLpnn08N/ulhDArDXRlVle3ODwGj7Rkqau
         F3ReMIQkGIQGQvg9Jb71CLh+BgM4SJ+overyI0w93AqI07EHUPBrPhnOnr67OXhpGqky
         sr+YN2Hav7hzryy0lyqzQLZAy2P6p0vUOeICJ1dtfTh/P1FYNkNeDiSWVBYEuoe+Lyvj
         q7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733635930; x=1734240730;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6nFzI3wt1FIwd3t3T0zMAhozPOD3DEG6nWM7JBmOLo=;
        b=dSZdjZoFat8KT+W2TvlhfRS8eX5CX8D+k1gC7ifKYuJTCqTw0hi9KeeTlvtDWHN+w2
         t8ENnIAviQhCFUCXpXKROLEKNpWgSkb/ECTTFRXLkiTwmRxHB5oM/2j+HEQsS02C8Q4j
         jIiBCr1o92OWxFY2IoT49v3NjvRvSVYXKBUL21YE7gKj9EVXsMDy9oVl1yyvhz/mZ/Rl
         qDDQqAex70UYV1tslvocbRsbo3CZajEsPpffNJG08rEo9lkzWv9twRhuDKZ2CIDrl1yv
         C7f+8ds9aPDzPVtWYqhZJkhKdi2vl0kZJKMPe5dPaFVGcWz3mxEg0PIb/b67T8YgJqvL
         NaEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWl1QkQ9mzUv0JSOx7zOV32164ZIh//NVVpJV8gp3B6LTOvi3M7+u5yXkOOdrShnbA7Qmuh4lcx3g6+@vger.kernel.org
X-Gm-Message-State: AOJu0YykvztaKPN0tO6DjIlWq95LxGFg7g3AvIhWQNkU4RSPa6fb50iS
	ptcsfRaNl4zs6/54FkomIMuguMZwvBJ3Siu7GhGLfo4C70115pYW+Phs1ilIe5w=
X-Gm-Gg: ASbGncvBxCtMtXXvAYyCgyUVVq5sTB15TaL+i50+Q+cqbjBd2wE3005+1oxyeHfCEHI
	dXZCVt5ylt2vdO2bQhiq+iQAd11GPNHO0z03yYYB3SxNmM5/M81VJrhrvxLv+ZWwahY2xduDVoE
	uJyl3odDP5JPY9czYcNCfpqNirz6bExoPO29xtQ8CUy/m7ictY97oCY/iSZk1xhueRvsRRin967
	i0QONxFvQDowbN8lid5MXzmTBhkZx18B61Rt4jfGR7AkhxZls1fhrd3vZbonASHMcT9SfURgUoj
	98OW4Gmp0E2DhanGtKf2ZDNwWLCGkg==
X-Google-Smtp-Source: AGHT+IHM6HUUTb8wNdmSb6sHgl/L0lzJE9vsiapY5lOubCX/APlM2HXRklZ2wiKCWtgwS0Gfxw7uWw==
X-Received: by 2002:a2e:bc84:0:b0:300:3a15:8f19 with SMTP id 38308e7fff4ca-3003a15931fmr37023771fa.32.1733635930310;
        Sat, 07 Dec 2024 21:32:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3021e43be73sm621751fa.42.2024.12.07.21.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 21:32:09 -0800 (PST)
Date: Sun, 8 Dec 2024 07:32:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: sm8150-microsoft-surface-duo:
 fix typos in da7280 properties
Message-ID: <sgcfb6mz6hdnpbbq3lz2jyoehpgukqqv2p4kpiisrbfe44y6t5@gzpot5gpfen7>
References: <20241206-topic-misc-dt-fixes-v2-0-fb6b9cadc47f@linaro.org>
 <20241206-topic-misc-dt-fixes-v2-6-fb6b9cadc47f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206-topic-misc-dt-fixes-v2-6-fb6b9cadc47f@linaro.org>

On Fri, Dec 06, 2024 at 11:12:58AM +0100, Neil Armstrong wrote:
> The dlg,const-op-mode & dlg,periodic-op-mode were mis-names with twice
> the "dlg," prefix, drop one to match the bindings.
> 
> This fixes:
> sm8150-microsoft-surface-duo.dtb: da7280@4a: 'dlg,const-op-mode' is a required property
> 	from schema $id: http://devicetree.org/schemas/input/dlg,da7280.yaml#
> m8150-microsoft-surface-duo.dtb: da7280@4a: 'dlg,periodic-op-mode' is a required property
> 	from schema $id: http://devicetree.org/schemas/input/dlg,da7280.yaml#
> sm8150-microsoft-surface-duo.dtb: da7280@4a: 'dlg,dlg,const-op-mode', 'dlg,dlg,periodic-op-mode' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/input/dlg,da7280.yaml#
> 
> With the dlg,da7280.yaml converted from dlg,da7280.txt at [1].
> 
> [1] https://lore.kernel.org/all/20241206-topic-misc-da7280-convert-v2-1-1c3539f75604@linaro.org/
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Fixes: d1f781db47a8 ("arm64: dts: qcom: add initial device-tree for Microsoft Surface Duo")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
> index b039773c44653ae8cd5c2b9fdeccbd304ad2c9e5..a1323a8b8e6bfb556a2d6d865f8b560bd6c4d429 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
> @@ -376,8 +376,8 @@ da7280@4a {
>  		pinctrl-0 = <&da7280_intr_default>;
>  
>  		dlg,actuator-type = "LRA";
> -		dlg,dlg,const-op-mode = <1>;
> -		dlg,dlg,periodic-op-mode = <1>;
> +		dlg,const-op-mode = <1>;
> +		dlg,periodic-op-mode = <1>;
>  		dlg,nom-microvolt = <2000000>;
>  		dlg,abs-max-microvolt = <2000000>;
>  		dlg,imax-microamp = <129000>;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

