Return-Path: <devicetree+bounces-176991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 071E6AB626A
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95CFC17051B
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 05:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1388B1F3FED;
	Wed, 14 May 2025 05:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CuMxDGNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131E51E492D
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 05:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747201064; cv=none; b=XhXlqroKaFzWOSi0GJhejSlikFTDRlF1kGaZDd0FHq/LEGiNA5IHhpVtEfGnMB9nKwAtK+fMgYxUc1w7AVwoY6POgG6kdiHoVgvxtVfh0N9Ck8aPJKLCAMkaiBqXxGDW91kYMhL/7TMCGOXBk7YuAb2tP/a6z6sAumEjL6jCB1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747201064; c=relaxed/simple;
	bh=EEby7excLqyRAZlBVU18cvMGi7EHO5NAyeDfYhB2ybw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TQtpu3PXksBBHSIv1UbQY1v5hFhFTqlmGRZk3iVANKaWpDb7xRawcij9mYBt68zu0GdknI27jECzanzrvsXz1eJ5AwDDZx5yU9noQgcvd67YNWrNOzKvnnY1EQmV/Csy7j4VAiCHkZYJsSPiYgTnQrx9lRuJhmrvqhVleX6gSSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CuMxDGNy; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so64810025e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 22:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747201060; x=1747805860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X6RATe/WUl9l8PIeAPNH/uJUaYuQaKoomiYz3L5vu+w=;
        b=CuMxDGNyOaableO3MXJOxrrrJVQvwgg9JCk+sCsQAIPh+jQ5dqEogf9dxDyMUifnxb
         6rM5Q5nXm+fTe3W3ys4VsyP+vn/AVkh0mkq/H5gNnQsC9jCNvZxEFY4paOwfuE1UTiwo
         lNd2xxvtytoxPMdANZO50SxIjuy9K51pIx32/bnZsEPCkG03eHxknvXgSCwRUxglqPgA
         tE7JH+rhHCRRzl6v4yGCMPVNCcXsHD08iXjxv0Tk9OfQiLJn669tV/o7oPEMAxvOpiG4
         GNoMZdTqn1/Lj8MBVoWte1k96DRWN0RVtqpnqKMO9zJDKNRIhtWOdGACAZv4Xta2yJO/
         z8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747201060; x=1747805860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6RATe/WUl9l8PIeAPNH/uJUaYuQaKoomiYz3L5vu+w=;
        b=dD2TATUgXTfFnQb3PxFRqysIHVHKUbFqdQigJkciSkDZ8Mo8ZPRNi2nFRV7VLnhbVm
         oariiC9y2EBY0GN4pZy+SM/meTrbfI3C/Mk7ekXB3f/cyoAPlnsWWUeAfK1WqHFAH5C7
         oa3R9L+D2zWf9r7+sLP1/dzgvS3HTx6GLK97ePsOQt1MPg1oaDeka3q7J09sJu5wqNRs
         3z4LY93CaZU4AMI0XYzmxmyGmDgYT749XrlOxqLiyB0p6yFZsm5jO+eppJAHL6Nsfwl0
         VECVlpsS2RfywrdLGS7/DxPGJha9sQLcRq2LxQJMHjx3+BRavsNA5SUy/ZcYM6sfUVfi
         L67w==
X-Forwarded-Encrypted: i=1; AJvYcCX1xvQSfuX7qTe7r1QHBmynis04f4FFUHEPCkUHE8YV7+t3Re9CDiKo467IyNPVYG/L1uqgxR1gvyMS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6SW+OqcPAFAIfSXOakp+ZMe//q5xzFtn1p0SWtc/dg28mc1YH
	G4pWhMHq+HcFaB3LO6Uf40LT042zD+4fDn3MD95TCjCtMW6EN7ZZuBZfdWc5T3o=
X-Gm-Gg: ASbGnct+pzwixLD8yMaVfvGEr7Fvg+uIxaHgBIBOgTHYRWk1JJV73t2NdoI99sP/AhC
	LdUNFVGt+Z72gIgQfXhRD8XdW25hxoHahci/y0ADQRBZ2R6w6J+X+Zj1LXvWYzczZtUGmoRgojN
	FBurpEisFyPXgbFHWIbY7zD5n93P7jaY8/yuBCHx8jIFxeq9PsZh9iHl3w3OHZkBv2yOudI3uaK
	i01exF4hgeJVPaICgXeiGvonxexxSazwLloepjq4eX+pn6kCU8FnpEBTnV9LGdZsLoV96MWpjOQ
	FYGRqMd+P2BfpK5rcGKRD0VL1aFiP3wzGxOtBQ14C2M61Usw3vw04TnLbgAqczwggzcpvN6b7kS
	G8OxLVdtj/u8P
X-Google-Smtp-Source: AGHT+IEH0gDtxUZnOie3UkdF+NX8VbUWlkkfab4c2RI1xS/aCqZplXS1DjQKIykuoWCzSS/8AUXEAw==
X-Received: by 2002:a05:600c:c0b:b0:43c:f64c:44a4 with SMTP id 5b1f17b1804b1-442f20e1ac8mr15280155e9.8.1747201060355;
        Tue, 13 May 2025 22:37:40 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm28574955e9.3.2025.05.13.22.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 22:37:39 -0700 (PDT)
Message-ID: <e1c4cb6b-2445-47ab-a908-af3e4833385d@linaro.org>
Date: Wed, 14 May 2025 06:37:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sa8775p: Add CCI definitions
To: Wenmeng Liu <quic_wenmliu@quicinc.com>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vikram Sharma <quic_vikramsa@quicinc.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Andi Shyti <andi.shyti@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org
References: <20250514-rb8_camera-v1-0-bf4a39e304e9@quicinc.com>
 <20250514-rb8_camera-v1-3-bf4a39e304e9@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250514-rb8_camera-v1-3-bf4a39e304e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2025 03:40, Wenmeng Liu wrote:
> Qualcomm SA8775P SoC contains 4 Camera Control Interface controllers.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 268 ++++++++++++++++++++++++++++++++++
>   1 file changed, 268 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 9a8f60db87b1afdf16cf55eb2e95f83eb45803a5..a867694b15b307344b72041e972bae6e7543a98f 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3941,6 +3941,162 @@ videocc: clock-controller@abf0000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		cci0: cci@ac13000 {
> +			compatible = "qcom,sa8775p-cci", "qcom,msm8996-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;

The ordering here is not consistent with upstream. Please stick to that 
for your examples:

arch/arm64/boot/dts/qcom/sc8280xp.dtsi
Documentation/devicetree/bindings/dts-coding-style.rst

---
bod

