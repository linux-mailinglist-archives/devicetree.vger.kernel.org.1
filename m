Return-Path: <devicetree+bounces-246906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD104CC14B4
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DA643007EEF
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38BAE30EF80;
	Tue, 16 Dec 2025 07:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DuU7B8mX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E022BE7BE
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765869694; cv=none; b=nIaM/vpQo4zKbCLrOLyyaPenEREjhREjKQl2B/TiUrj4iK2iBo8hNzzdTZT1tKazPo1XzRyCRfc/dafy5jEIFy8MFBaKUniFeKtvn1KHkikqjtBVNeykuYHg0MkzsHZQvM8pBjrw5TBloRiP+jGIVLqfPdNiV5e4ucTjhzfZ6Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765869694; c=relaxed/simple;
	bh=G5CtVkCS+s6XV5UMl94LB7FGabE300CSqt8QE5xdzLs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EMaLwDVkhAHu/s9I/mqJ82FLVH5f87MtfTbKtq9cdFo7KlpbsW3FEkWeQViRji7XcLZiIIG2ZGq7f2d7DR/QAxiKpRrMBmFEOzhBRlgiGk6ghgsFMHjs8quBfTaRVGhCiCiqMHHVpFkroAhCA2Ti1y/hVKP8piG3kU/ZlqQBTc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DuU7B8mX; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-37a33bd356fso3578331fa.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 23:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765869687; x=1766474487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j2DcE5/95zKMGcm5PK6kvg2lmrYchM0TUglmEw2Vw9w=;
        b=DuU7B8mXhje00U2x/Hey97mT6ZarjTVvzpPOY8pTEmvlhYFEbpSMCLCdN+ag4R9D6j
         4VSYNYpyAVyh+AEwhHDpXBM+EVzo4/RUM3T/FqA9/8W7W4et6YFiTGDf1afMR3/det7K
         7ihGlfeXZtVt3vXOFCbNSyA2wX78r08ZyOnMIrWjuWFbxm+TB003SJojYTRVvQ82bEqw
         OaewxFbu8RFh7LDMATCbXntbV4QJa5cEdpPScsI0dYiIUmjf9O8+t8BBJykk633BxjG1
         haKmgjHnKdd6S1RxDm/E6Lzj2cinWY35cCcWzP1fpMiohKE2EHaMEwj6Rvu1664Mkgs6
         hkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765869687; x=1766474487;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2DcE5/95zKMGcm5PK6kvg2lmrYchM0TUglmEw2Vw9w=;
        b=O0ayNexn3aux2DhzZqM+nleGYa2U+4uz14YfShDnWgfAok0rt7T07mfHwD4k7LsCwr
         3qaXWY46IqLmxxrEhzxhXgwTArdZaBuq0D4bmwd3hEBbf8tSJALrZFdkj+Qb2nE1Wn2k
         WVR6oce1YVE6FSaZ+j00vLS/tzmCw8/rhruaFTE9UwmLH0iwViNoz6WWkG6aK84wtpO1
         mPx95/e+Sn8dTf3UkqP5WYLRe1jzvRDM6xXrNiA8Xmthpib53SKKJPhukXKZpfVvp+e5
         D2d980pYqnh/NsxWw6jGJaNMhqbAu6n5s9vzXiFL6oi1vK476epW5sP5ZqOmof2PhBhe
         30rQ==
X-Forwarded-Encrypted: i=1; AJvYcCUz1qka1fhTzRBtj8BQ590gSVUCNJUsPKE5EqjO5rUfN7q5HMP6K0/TG3sOpDPZ72EILrLNppf4d6zH@vger.kernel.org
X-Gm-Message-State: AOJu0YxSiJbCLktfvQX2RkrWFJuXngTdy8WuBb/frbGWaziEdSESRif1
	Ev0BzkxZKjts67o0eOKDcvxBtLpjOmsddI3mH/AEJbYhIpJIC27lXzNFY3tpqI6gU4A=
X-Gm-Gg: AY/fxX7KMCQ+VBbmlZlVQapj2CV3+H75Ca9Fr6zSRycJintwiNiIvHhf6HSDIV+0uwI
	rcEYeu7otQGAJu6W1ILyTu18dAheMTFArOmGfDjXnsTRP1cA4hH0R4IV/gFF8MyzBm0xiNR/trN
	e1BYDMloboU2Cy8X/CbUITJuVev5nwaZ5zcOq1zm1P/SVdH9XYijPtW8owWIJ7EQZ/1KJucGzeG
	OhN0pSpjg/YKg2m64n646JwQnJ7yT0fl4GJq9iMXX85el6k3R6tTG9gNgy85Feq6rLwPLFCVx/W
	FUS25QsvUHLHjniKAUHuwnUDD+4tdv9TOo+xw17RAwGRB5dG5JX36L13dhFcOoYr1RvKKDSXDIC
	lyjR6dQlNe4kNBs8irv//bPDyptdijQ5Cyv8JPBA632xQU+Cqa/ybpotK8S/XdAtz2n/dOc5z1B
	xgRBcc4YLhMxLPnN/QjiO8+/gi4gjjJNnSewMnqUeemkcGxEGIwzIu8FrdjF3lzC20kQ==
X-Google-Smtp-Source: AGHT+IHNMgsgp9u2yPWPCiPcD2bTZmOe3omll5Q5NDvnxjcWG7cZCuUSmQe6KNVWP+5AylmWofEkEg==
X-Received: by 2002:a05:6512:3d1b:b0:597:d7d6:398d with SMTP id 2adb3069b0e04-598faa01850mr2816802e87.2.1765869687301;
        Mon, 15 Dec 2025 23:21:27 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da79110sm613437e87.101.2025.12.15.23.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 23:21:26 -0800 (PST)
Message-ID: <87815e05-737a-4051-b139-499f388cc144@linaro.org>
Date: Tue, 16 Dec 2025 09:21:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/5] arm64: dts: qcom: monaco: Add camera MCLK pinctrl
Content-Language: ru-RU
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>,
 bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251216062223.2474216-1-quic_nihalkum@quicinc.com>
 <20251216062223.2474216-4-quic_nihalkum@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251216062223.2474216-4-quic_nihalkum@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/25 08:22, Nihal Kumar Gupta wrote:
> Define pinctrl definitions to enable camera master clocks on Monaco.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/monaco.dtsi | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> index 4b2d8a449b00..ace09239d167 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -5182,6 +5182,27 @@ tlmm: pinctrl@f100000 {
>   			#interrupt-cells = <2>;
>   			wakeup-parent = <&pdc>;
>   
> +			cam0_default: cam0-default-state {
> +				pins = "gpio67";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam1_default: cam1-default-state {
> +				pins = "gpio68";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam2_default: cam2-default-state {
> +				pins = "gpio69";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			cci0_0_default: cci0-0-default-state {
>   				sda-pins {
>   					pins = "gpio57";

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

