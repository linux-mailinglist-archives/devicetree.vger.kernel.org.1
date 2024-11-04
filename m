Return-Path: <devicetree+bounces-118653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EA89BB1FB
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:00:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 164DB280EFF
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35ECE1D270C;
	Mon,  4 Nov 2024 10:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NZ3kVd6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B86F1D0F6B
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 10:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730717577; cv=none; b=mZCQyrm2fB/O3wEwZc9iJqMUB7CRgsz4uNHVd9E59JCV8DdHgYRe2AHVcXN0WRFfLmoN2ZJfvtDad32uvIiuauIpdPIy4pWo0HkHM6iPT1IelScSax/IT36VGv5kohoC1j5+bZXH/U1+237K2vfi68AintJVMuVXdB3hfjnnwB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730717577; c=relaxed/simple;
	bh=vKAr9hmyTddgF/WSN6iuJQ5BAfSJsnCK8GkT+tZfH0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bDSyw4hNjO2ymYN/zAeBoO4I/U1cAutE8K/tpbCfSXKz5SEa1RP1sHAV6tr7QWn9TMT7lfYbwYWZ6xw75r6ssPJQj3205oa+/hKHrC+m161EdPWpxUVVSnGPgvr5jJn6g0ev0X6gM8U2R67XBkvsy5GbBcLngsgEE6gNit/fWiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NZ3kVd6p; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb49510250so40259451fa.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 02:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730717572; x=1731322372; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DwsIeL6KJEG07y8wl1qOjDdqNT8K9HlcyWy1sRLVSGg=;
        b=NZ3kVd6pxU81ohNXiM8TrKnboqB8NS57DV+9kCuy0DO4k9utYuKLdpYLg4msHmqaPt
         9nHOsl3dRq5USjDtg1D4xLj4Jz9aFQxWt+hirM8E9F8n4ctyHzO5oInE5mP8inKNnJrd
         13efpAvjHN4ogaIgx75MwlSCMlZwN88pzXLDaXrnInenZiJOZtuR2Ep0E9wDyaSXHd/u
         YF5CxZrWjFJxGqjcYeux2oQ1okdqycVc5jiXqAkvhYi2kx/Ye5QJYC3cH+fwhC1aEIC2
         0AXpRancvluAdNGj0SPDF9+kV4svQ53B4GiQdl66c+CfW3CWTJxwsLZBRJkvU6om/ZJj
         DFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730717572; x=1731322372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DwsIeL6KJEG07y8wl1qOjDdqNT8K9HlcyWy1sRLVSGg=;
        b=q64H9mC7EaOXAHHqsxTVyrnE0fT4upZHU1Kl1uXqC7rQXg+VtE2DLRnPDbge9BuHZ7
         LOT8D7p3HCRXWUK9aetMg7bBYgsJtY8IyCEaK+UF7XscHNR9pwPQOHE5vdZJZUpHJ5kx
         XwRGDcqgwwK++Uwp7ZMyon3iWnR288pZ22AxAaTwzXU9EjGSJSfARWliEqCY3+2IuOXL
         /8fO0zfBH3LnTtt3wz2Ns/aCBWqvTfUZpl3Yf0WSJKsfrytp33tzZeFfBsZp7xkNa72+
         3KAHiRBAYsJzfO8zMV+EkgxB8/+XfvxiTPhwa2zRnZn1MAFPp6qMluLgHrEIUVva+Kcz
         vORw==
X-Forwarded-Encrypted: i=1; AJvYcCX6W8B3UPodIxlm7AbeMBV4v/MIraW73V1zmIeNo5e5QPqKdiAY73LFz185SmWZY1EMVEISeq7kaAgf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0j8LnNud1GzS409i6svtIFvcyfGeoWVcbR7+wkTNIUls9jdBX
	CnEGpnjtZ1Glfb2Dpaq/dDHXrhhJD6bgq202T+qheNXTo9Vzw5SipteWBxYsDLI0/h80JwgaRc/
	JiHM=
X-Google-Smtp-Source: AGHT+IGA/AaC//7xRg1rvQ3Pdaj8tMAcvK/iweU+LcWcYnfbkwdRORCk/zzuaDqXc0ND2sX86ZzRlg==
X-Received: by 2002:a2e:1319:0:b0:2fb:4f0c:e3d8 with SMTP id 38308e7fff4ca-2fdec88b40amr51037091fa.27.1730717572530;
        Mon, 04 Nov 2024 02:52:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8a62c0sm16317631fa.75.2024.11.04.02.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 02:52:51 -0800 (PST)
Date: Mon, 4 Nov 2024 12:52:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Melody Olvera <quic_molvera@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sm8750: Add IPCC, SMP2P, AOSS and
 ADSP
Message-ID: <kxpokionrgollof5yptnqnxgsi4v3g24iwdb67mznljzjzpxab@dnts7qgvu4vo>
References: <20241101-sm8750-audio-v1-0-730aec176459@linaro.org>
 <20241101-sm8750-audio-v1-1-730aec176459@linaro.org>
 <0782c956-361b-4109-a8a1-58b8ad396e0b@quicinc.com>
 <649f43d5-2d75-45eb-b13c-31fe88d99c8f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <649f43d5-2d75-45eb-b13c-31fe88d99c8f@linaro.org>

On Mon, Nov 04, 2024 at 09:36:46AM +0100, Krzysztof Kozlowski wrote:
> On 01/11/2024 19:14, Melody Olvera wrote:
> > 
> > 
> > On 11/1/2024 10:19 AM, Krzysztof Kozlowski wrote:
> >> Add nodes for IPCC mailbox, SMP2P for ADSP, AOSS and the ADSP remoteproc
> >> PAS loader (compatible with SM8550).
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 140 +++++++++++++++++++++++++++++++++++
> >>   1 file changed, 140 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> >> index 98ab82caa007ee63c395a3ce0f517e2bbeb0aecb..eb826b154dcb2d8165426ba2225548efd7547da8 100644
> >> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > [...]
> >>   
> >> @@ -538,6 +566,17 @@ gcc: clock-controller@100000 {
> >>   			#power-domain-cells = <1>;
> >>   		};
> >>   
> >> +		ipcc: mailbox@406000 {
> >> +			compatible = "qcom,sm8750-ipcc", "qcom,ipcc";
> >> +			reg = <0 0x00406000 0 0x1000>;
> > 
> > nit: unsure, but should thse be 0x0?
> 
> No, all recent upstream DTSI files nodes use simplified 0, because it is
> shorter. Maybe except few cases, but then these could be corrected instead.

I think most of the files (including x1e80100.dtsi) use a mixture of 0x0
and 0 here. I have been told several times to use 0x0 all the time.

-- 
With best wishes
Dmitry

