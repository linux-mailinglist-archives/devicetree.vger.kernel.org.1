Return-Path: <devicetree+bounces-52471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73835886BE5
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03AECB24A35
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 12:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11CD43E49D;
	Fri, 22 Mar 2024 12:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJ+8Wwia"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536F0446A0
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 12:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711109503; cv=none; b=MZgnSaPiUO6pBWYL5XEQfNl1G4PHFqj/Ys7BnBGZieukOaL0qfxPYXqk3hqbl820Nho97P0CZupWK/bcnjOZByhlc7RovTENHqGqR1e6rSIRD9CqirT5MRiSfYo8qO5vGqZSIqtY8gXzTPr9uR+Z/iKnZksB27UzK+aGLZZVu10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711109503; c=relaxed/simple;
	bh=7Hi/wqqjIIEsOtQpwnH6pqXUN/y4LiNuG3sgNcl1HpE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o2Qy5WoE0gGnSHkhdjnt1s8xxF1iY9jLSxxxYvFsuoOFmvxqhrFan4ePfycho77xxiGllTVZ4MWfWMBUrxCnI7f2EvYghGucvS6/L9b4uyFSfCW747mr0Jzz8Se7xEhyQKsAzGCXpJK9Y16+1LXICcNJjIDzn/y4bUmJz0uN5Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BJ+8Wwia; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33e162b1b71so1467696f8f.1
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 05:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711109500; x=1711714300; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Le16WcSed8nC9jSC5l5hiFp9bIsB6xxNGHVWFVCiUd8=;
        b=BJ+8Wwiacn76gzFe14x1TGLz9ggI+UtGv2BcQDwMWJUaS2wR0xfJ/UD2y3UOIWABjO
         UuLgzhzsZexi3RiRC39xfZ1bWWQQ12eODH3PjS3c01O+4TF0IynVhAoqz8XbZwn3aFv5
         CRfDI5CT2/MVEvNspSZeX1nZvL4zYjPtqRs9ZTAXNNdhHXqK6jinGupwIKV8xaK8qFDy
         IC8ePHjkjv+Z1tXg4nvtltn4HD8P2GZBs6YeabHKNsHRfpPlvovIZj9K93ckx61z9hHZ
         Rfhb0NBPmyie3R3+vEpvy9xJEsUV7FABDtYCZbUztiBwDwKaXYg1YN/AZwTUWQ3QWyaX
         PSOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711109500; x=1711714300;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Le16WcSed8nC9jSC5l5hiFp9bIsB6xxNGHVWFVCiUd8=;
        b=kca2NsEWHd+b8d97fZXOU5vwZ1mN5Vw6n/NU6Rf4g2h/VsMnePisz/eJ/Qr2oK3GGG
         QV2JJIsNpWw5WhvnsxF4Y3qsJpoMWYlW1Tbp6aTV1+3N0LXqmfb4KxL57IWzfNVBoeDI
         JbSe35iH88cpXl45l7E+BoMj1VqBajn5QcO967GF0FR7O9x4W/kbh5284pDfFXd85MjK
         rwr9WHQHigxt94c4sY/vMaPjBZwVLGsEhd1xwWkD13wDN8D706Ocx1gh7VifiuZB+iCO
         dvnXldHBsdhFKTpSsnJKMc3slgfb9Ao4rk4JtFZE/e+4nv40WcJlhhvyTDlwgtlRThgy
         SYkA==
X-Forwarded-Encrypted: i=1; AJvYcCV0kNkzepFbZ/avrGrA28lhNyMLBC1FDFmFe87fIPWw3E47d/+pkCKviXwZ0X/ROGgsDEQbJNcmYYUM+TylC91O7CLZwGOeFxnDyg==
X-Gm-Message-State: AOJu0Ywq0+viLJlgnzGEp9bjshOVm55D4G5pTySnnsXm0uontpMrKv4M
	LYadpqxQxmQyAkvXRcqECU2OBEuPh6ocfb9qqj0uMhoGH6gOZiCDndti6AqYjUM=
X-Google-Smtp-Source: AGHT+IESitk5Tjv3Y5YyH2RjM4Y2RiRCyJcZ1naAnp1SZ/0nNfHcKxGUONrIuupIg7Hge3PdklpXpw==
X-Received: by 2002:a5d:494f:0:b0:33e:6db4:e89f with SMTP id r15-20020a5d494f000000b0033e6db4e89fmr1261987wrs.22.1711109499658;
        Fri, 22 Mar 2024 05:11:39 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id bk19-20020a0560001d9300b0033e2291fbc0sm1947516wrb.68.2024.03.22.05.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 05:11:39 -0700 (PDT)
Message-ID: <635f7501-82cf-4df1-9194-27f24eb40a53@linaro.org>
Date: Fri, 22 Mar 2024 12:11:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8250: add a link between DWC3 and
 QMP PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
References: <20240322-typec-fix-sm8250-v1-0-1ac22b333ea9@linaro.org>
 <20240322-typec-fix-sm8250-v1-2-1ac22b333ea9@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240322-typec-fix-sm8250-v1-2-1ac22b333ea9@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/03/2024 11:58, Dmitry Baryshkov wrote:
> The SuperSpeed signals originate from the DWC3 host controller and then
> are routed through the Combo QMP PHY, where they are multiplexed with
> the DisplayPort signals. Add corresponding OF graph link.
> 
> Reported-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 24 ++++++++++++++++++++++--
>   1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index d57039a4c3aa..e551e733ab94 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -3917,6 +3917,10 @@ port@0 {
>   
>   				port@1 {
>   					reg = <1>;
> +
> +					usb_1_qmpphy_usb_ss_in: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_ss_out>;
> +					};
>   				};
>   
>   				port@2 {
> @@ -4195,8 +4199,24 @@ usb_1_dwc3: usb@a600000 {
>   				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>   				phy-names = "usb2-phy", "usb3-phy";
>   
> -				port {
> -					usb_1_dwc3_hs_out: endpoint {};
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_dwc3_hs_out: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_dwc3_ss_out: endpoint {
> +							remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
> +						};
> +					};
>   				};
>   			};
>   		};
> 

I think these should go into platform definitions, there's nothing at 
the SoC level that imposes the port constraint.

---
bod


