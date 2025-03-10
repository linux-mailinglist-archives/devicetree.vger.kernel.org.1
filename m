Return-Path: <devicetree+bounces-156224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDD0A59A47
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D0111624E0
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B529192B82;
	Mon, 10 Mar 2025 15:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fbKFcNSN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6AA22D79B
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 15:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741621507; cv=none; b=MdL5xRLEek4YgFXLwJSUX/ShcTsR/sLQv4HabzQhafgTyCgUOW62WLft3RFZ+QbD0oOfDqLmSd1dlrO0rTm90Sm82+gkkXHqzcwIpOgsIIpQI7j4zvtUPfs+cE7GflMtsdn/TjeapSrUKnYa6QN173AEl555hucpAVirLuGEIbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741621507; c=relaxed/simple;
	bh=uVdNAfnF5QVoXZdwn56fbLrLpEwf1iwrLhOZBKx2VR8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=itRRupkiAnO4Jvbj1ujb326zZxwufZKIvcVYWnnlWos8hZXaLTi5u0WEgKMbEozD5kL4AvJhumyTQbyWLG9dLsSXDy5QcJR0pGN+tX5GB2vepFERi0PZt0q8d1tmLe4VamB66Zxp9YEkX4bgJmp1c1ef8kZ7Zdv2daQARQT0ycc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fbKFcNSN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso4246545e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 08:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741621504; x=1742226304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mdl6doeBbRhuv++z4Ic7f25SbHL5xJEu/1avDDNXqp0=;
        b=fbKFcNSNU07XtlvSvpkDgJIKyBtHGFUb9S1JgcZB/0vUSxhVcr6G0OQ/y7E84L2jwD
         MA1FKR/jQSLMiedrZjMSaeGZs6rtM7GSM/RpC7/GyUEmckvcg7wu2CMhfQ0FQJB2gkYG
         DyvV0AOOz0BwdV4r5ZuMYr/vCRXl8Je7q7rmHTFfdHWAJ9qmQnOyxDQGR+dUveLM+t0u
         8OIpmG1L2EosoI8bsFZAsKAw6t3kgmMKLOnlsTmWh8lMiHVZ/dZuC1wkmSUVPnGBjRfa
         c9qj7I9cfE4FnObp8mM6m+G54rKNYc01FzBWalDDEkQ55iag/HGgZNRwTRZn6/HgmhRv
         Jqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741621504; x=1742226304;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mdl6doeBbRhuv++z4Ic7f25SbHL5xJEu/1avDDNXqp0=;
        b=nfiCBoASPhipzUjgbHy+5lhRMbtkLSxWws2K4WZKNmJaY7PlkZF03clL3+u4xX/UVq
         NX2ueUx06+4ZsobynqQ1UQ3NMmqYPpQAD241kN79xMk5yjzw+ECsUCm+/qyHm6oVG1Lf
         6f99I1evJL3ecCJLkplh+p/0HaihxWNUNVxKBWp2Wplgl5C6rfxp+zT3Y+pLct/DDibX
         HmQsMzNFh1E86zGV7egyf9FsAKAVjSQnC2BFwX2ZKtBkN0gs+8KuHuF1x2QNQ6NCllbE
         EA4MtjDYvpcUz9pBx8KrdN/m2KkMGQzOjgYERggzaFL2xaF+GLQbApZRL9DayZRL2Jqy
         XB/A==
X-Forwarded-Encrypted: i=1; AJvYcCXG3Jj24XAkKFNZ2AsrqworXc3iBX/zL0QVoMih67LPSrLI/CsYQAqPEXcqfU9ObYESXTICTJoPy8lc@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd0hv84TaOFfy7Ql3b5n9aAikfYIx9JbzLF/iag1mhKbAzRl5B
	4FW1sBMtm0ZevLpzpIutH5L0V+TGmhbgHrZ61RXh2DxjAvBptsbePkJXp3SQJUk=
X-Gm-Gg: ASbGncvaW2AUeMMSZYWrXG08rrks8nVXScPt6TpXZZyIa59pYMmN+aK1KX1TFuOI5Ie
	k1Ix6jRF4k65n4d1rWoyIrRzqkPL6TEngsv03ROUPfW5+iJmlrcbRDeRN6pQPZcJfBEGXZP45p5
	WQOFt0RuI3ER8Jb0iCUMt4vk1ikH4v3FJ1uYCjZyIpjksh3FP5FiwMMFpFQDlZTUxcjQvp1j/Nl
	XyJuBk4szOvEq6zvngWNjDUn+NJEmYY0gOPvLUaguZsDZjjJPxWyMo7D8wiHOXvdfM2WeTarVr7
	jk3LZS8tBAjLdczt1szAyB94K//KJmCvG8sz/JFpLLopxBxIgOba
X-Google-Smtp-Source: AGHT+IFpljTvUVIl7JTZh4WjEvDEDgvw0oNPeyMebheR2S+x50AjXyNjLmVY1VFRW/5YAcqlN0ZQiw==
X-Received: by 2002:a05:6000:18af:b0:391:3b1b:f3b7 with SMTP id ffacd0b85a97d-3913b1bf54amr5474836f8f.28.1741621503683;
        Mon, 10 Mar 2025 08:45:03 -0700 (PDT)
Received: from [192.168.1.247] ([145.224.65.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c01cb82sm15767349f8f.51.2025.03.10.08.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 08:45:03 -0700 (PDT)
Message-ID: <aded13c4-a8cb-464a-b7c5-34cc7d88d918@linaro.org>
Date: Mon, 10 Mar 2025 15:45:02 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: hi3660: Add property for fixing CPUIdle
To: Leo Yan <leo.yan@arm.com>
References: <20250310093708.9332-1-leo.yan@arm.com>
Content-Language: en-US
Cc: Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20250310093708.9332-1-leo.yan@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/03/2025 9:37 am, Leo Yan wrote:
> During CPU low power modes, ETM components will lose their context.  Add
> the "arm,coresight-loses-context-with-cpu" property to ETM nodes to save
> and restore ETM context for CPU idle states.
> 
> Signed-off-by: Leo Yan <leo.yan@arm.com>
> ---
>   arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> index 79a55a0fa2f1..4c6a075908d1 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> @@ -17,6 +17,7 @@ etm@ecc40000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu0>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -34,6 +35,7 @@ etm@ecd40000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu1>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -51,6 +53,7 @@ etm@ece40000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu2>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -68,6 +71,7 @@ etm@ecf40000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu3>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -160,6 +164,7 @@ etm@ed440000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu4>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -177,6 +182,7 @@ etm@ed540000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu5>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -194,6 +200,7 @@ etm@ed640000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu6>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {
> @@ -211,6 +218,7 @@ etm@ed740000 {
>   			clocks = <&crg_ctrl HI3660_PCLK>;
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu7>;
> +			arm,coresight-loses-context-with-cpu;
>   
>   			out-ports {
>   				port {

Reviewed-by: James Clark <james.clark@linaro.org>


