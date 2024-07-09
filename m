Return-Path: <devicetree+bounces-84245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A7E92B94C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:22:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D826A1F255CD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33C9615957D;
	Tue,  9 Jul 2024 12:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NuS/Ze8v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CCF1581FD
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 12:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720527579; cv=none; b=DfECT8VWx6kuXs/LmVATu3iKbB4l6CkfCWzPsvyQsUqtTW18kngs86rhYFOheyV8q/z+rFjA5JJbRibdf7bcKMeQ8S+wObyWqz2ADK5SycOJ12M5GTeuJFxryPLzXyHBd38Rlpfa8UkXi9mKVrA16005uIPn0YNNNYFrQb+fTOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720527579; c=relaxed/simple;
	bh=wwg9T7d2yBCHnXt74rxBEjB7TDXiUZKfjUZmjmOG3eE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SriCjOvoomLaGt8cIp4QPddKSzHQIh8tigiIqI8XXly1le8U0Q71AnGN2XVcHhhSfBoEEIRnim9Oyc23eLKwrrObqbV0I15lwMDqBj4EJIWCYheJODMDvFiOI7ilhJYxcOQixe2n/i7+9K+1KCOz6tYfcP4lBq6wZOaNysA/H0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NuS/Ze8v; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-595856e2336so533519a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 05:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720527576; x=1721132376; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=K0JcjxVLv/i0PeVxmJo/2AeXjlP7/Xz2DM4bSUFo9xw=;
        b=NuS/Ze8vVcheBfafQXmUT0jE0+bwJGRbJdIDCUTrQbEdJXdjFnqp6Lv+Z807buQ4UH
         oKid0/bLKrP76rHa6JldKsZNXVSALiD0EIRna2O2mv7XGA3UfNqqiOqr1ifXuYySDuid
         +Q1P6Akk9yRDBjiwe/Bm/LRS0TQeM2BhDadz0vnQtHsXQQr9PJ4vCm2D6tLzfG39FRU6
         xa/11hhqfZ1mHW1dT/o7yktd3ZVcSSFP3LF1wdIAZYh5quQxTPHmBxkO1bxcJLLtir6E
         uXflvjliPgQDPL1r18V/dBbJr4hFcSxWIpfgtilpvsXltqzOfxWtFTTt1NvkNAKMzt+3
         h9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720527576; x=1721132376;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K0JcjxVLv/i0PeVxmJo/2AeXjlP7/Xz2DM4bSUFo9xw=;
        b=tp8S2vWmz7zb53k76bdw9Uq8hf3TQag/zowuwHh5abcuz/6aslZ9mla+4gx1s0qKPb
         PwrDiyrsqHqz5W5ftuZlPDR4SYOQr2dK2tJlZQt9PWPN3OtO/3sbMhxcA2aZBtUn/MdM
         B+sflHdnCDwJLLWY1IqTGSkMv1ozUeQ4FonE1nkB588+RDF+eb/YDK5V1So0/sowVdIM
         6wI/TWxQsynBRB5E7rw8CMI7uZOb3vOY7InQUW42azFUFGouGemAkwa5SR9WK9uYqhFN
         Cdi/9cZ/cybfPI51M1chI++JQn/41V0rmn6aKPriZ7rTwCGnLpbW/ClBm6s3a6xd275G
         zJlg==
X-Forwarded-Encrypted: i=1; AJvYcCXLnXLC8hkyHE1Gx3QT2pkJpgb049ywfxzAYia0H+blebR7Q9TBQfpMrsJTPHfMuC/THdtBmSIcq8ZufSqp640pDsaAFvSfwTLotg==
X-Gm-Message-State: AOJu0Yw/T8X47X5gCXUVyj3lGwY4q7Ykb9iiwdk12ZYkYgo7CWO//NLi
	g5aUNPVdP0rT6B9RYiPEeGfaXadvYcWWY3Iv1WliKcduhh2AYJ857dlewZHxgrU=
X-Google-Smtp-Source: AGHT+IETP+x6ceMtCRXfaP1AJJDwtxfBU1Wtet4Ur+40MKTLTGbV1kvJ/b3uu1sOGoj/YhsZa/8NSg==
X-Received: by 2002:a05:6402:2708:b0:57c:6a05:afd0 with SMTP id 4fb4d7f45d1cf-594dd2555b7mr1431568a12.14.1720527575789;
        Tue, 09 Jul 2024 05:19:35 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bda30f76sm997747a12.97.2024.07.09.05.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 05:19:35 -0700 (PDT)
Message-ID: <6af7308b-ab84-4173-968f-c67fc1aef04b@linaro.org>
Date: Tue, 9 Jul 2024 14:19:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add interconnects for ethernet
To: Sagar Cheluvegowda <quic_scheluve@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Andrew Halaney <ahalaney@redhat.com>, kernel@quicinc.com
References: <20240708-icc_bw_voting_emac_dtsi-v1-1-4b091b3150c0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240708-icc_bw_voting_emac_dtsi-v1-1-4b091b3150c0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8.07.2024 11:14 PM, Sagar Cheluvegowda wrote:
> Define interconnect properties for ethernet hardware.
> 
> Suggested-by: Andrew Halaney <ahalaney@redhat.com>
> Signed-off-by: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
> ---
> Adding interconnect dtsi properties within ethernet node of SA8775P,
> this patch is adding support for the interconnect properties defined
> in the series ->  
> https://lore.kernel.org/all/20240703-icc_bw_voting_from_ethqos-v3-0-8f9148ac60a3@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 23f1b2e5e624..7ebf03953b7b 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3464,6 +3464,12 @@ ethernet1: ethernet@23000000 {
>  				      "ptp_ref",
>  				      "phyaux";
>  
> +			interconnect-names = "mac-mem", "cpu-mac";
> +			interconnects = <&aggre1_noc MASTER_EMAC_1 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_EMAC1_CFG QCOM_ICC_TAG_ALWAYS>;

property
property-names

please

otherwise lgtm

Konrad

