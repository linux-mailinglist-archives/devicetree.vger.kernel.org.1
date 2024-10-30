Return-Path: <devicetree+bounces-117391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 572B39B6108
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEE311F22507
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9F91E7C05;
	Wed, 30 Oct 2024 11:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rFNKpYhv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5591E767C
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730286204; cv=none; b=b2IHuEtuWzLS8b9KPrs1bTok185mk/JE1R/dr8fWGOGR6osNz6ZLyW7oCg0hV2TlI4ROQ+160Bf2HkANIxppeYW/HPKwjCcVS26xcCR4C+nnot5vYEbQRdXDcRtFNi7NO+opMFNSrG9MqpWgBNEG5ViW21xAk3iGCw/AsXFxiL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730286204; c=relaxed/simple;
	bh=i/sTm2W58aqNc0bvwKrCduULaEOcP81xZKszHJgcu5k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LzwL4x+JbaFB9A37w4M8gzt/RucpmyBFOquOjfcxS41YnBBt6IrTfO7MqDOP1VJ9dzi6lQl87dKVjJZNdrai9cosk/8yaXkFNsxNiTec23dprFriL1Dtf+FelJk8RCFeDuZ83VLlevA/FNbk/uNarTQdHQYrVDlMFEkvrdHOWKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rFNKpYhv; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53b15bc0731so858084e87.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730286201; x=1730891001; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dyDd73LhSa+Aowk0j+nzrmpWsgvv8frt2OywSF7Wle8=;
        b=rFNKpYhvKs8wsIjVxz4uk/o/WdX67f8OTLp38bpJaYEEUt7nPB5M57lNPTEThZUWc+
         EgVGUP2sCJ9ktPD+XKW/CmHueooons9gmMELbSdvhc9N9Z1h2k8H3r5nnDCzQsK3gJUe
         6zE2TgNRplJzSRW9OgSCk19CArglkmrQ0/v8e+b8yxrv3nWPQ6iw43CjiU4L9TEwnz9/
         jmmx0Rw4Fbo5tiFwVL/EWYG6Hr48qXye9XC3Dy9V7J/wX/5YSe+qQA/mBH1w6RN+gmZF
         WtoLP6yFZBKm+YWIQd4uTPUpF/0JlqPlPy3vUsUxrF9KNsZwQMOchUQ+h6IPIpJsKvJM
         W/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730286201; x=1730891001;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dyDd73LhSa+Aowk0j+nzrmpWsgvv8frt2OywSF7Wle8=;
        b=AyPqy7xcyhAkxIRPMp7jMGXQ8pR/uGeIismP68PbYq+HFChG+WnPzmRcIMWhgP4bg6
         sOPL+LxWklcdsLrm79sddVWAHalct7nQlkAKuTXz6uEXbYiGYJSJzmHmAH8m4H2hkNRO
         eTQdo41Fz61ycBPcmvK/X8cJA5YmTZJtAEqLfPZrzJIZptPtX6lRpaJ4mt+D7mHEu0XL
         XjSTlV88KjqtVA9UTRlLZ+36m2jZ0LZnj1eRCuxgf2lh8vtlc6rKUPSFOjnAVmLjJDCM
         H8A+xr9Nn+Z6DXbNSj4EoZs1nJbZjKQSYKSves+JDaDEQcW3PGdKEB9WJp8GyOdmRJQc
         Qzng==
X-Forwarded-Encrypted: i=1; AJvYcCWomvEToebggHCYP8VABqIqIaz+uRrXvHjjQNmUoTHx665BHeLVaTFG4C6aqy0UQ97zswWG/5jtQFfY@vger.kernel.org
X-Gm-Message-State: AOJu0YziIlL/Wox527vyT2bk/PJM9pztW2JTDclQKBKOS5cRAyYEXoh7
	wMIOq4pCKL/nYwOS97ov5quis3e1X7B/9TT06KeHGPaBrvd/RpDgGA99uUQd1Xw=
X-Google-Smtp-Source: AGHT+IFhZJoljikBYl7EYG3OcLL8xTDXcY1FxwXB5w8ypUTn/Fu7ouw0JZgiUeSHRe8KwIvx45FKJg==
X-Received: by 2002:a05:6512:350c:b0:53c:761c:2a07 with SMTP id 2adb3069b0e04-53c761c2d71mr163553e87.6.1730286200692;
        Wed, 30 Oct 2024 04:03:20 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53bc0d52d87sm218049e87.164.2024.10.30.04.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 04:03:19 -0700 (PDT)
Message-ID: <dfb7e2ad-5262-4e4a-a49a-584012ef0e57@linaro.org>
Date: Wed, 30 Oct 2024 13:03:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] dt-bindings: clock: qcom: Add CAMCC clocks for
 QCS8300
Content-Language: en-US
To: Imran Shaik <quic_imrashai@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>, Taniya Das
 <quic_tdas@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241024-qcs8300-mm-patches-v2-0-76c905060d0a@quicinc.com>
 <20241024-qcs8300-mm-patches-v2-3-76c905060d0a@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241024-qcs8300-mm-patches-v2-3-76c905060d0a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Imran, Krzysztof,

On 10/24/24 16:31, Imran Shaik wrote:
> The QCS8300 camera clock controller is mostly identical to SA8775P, but
> QCS8300 has one additional clock and minor differences. Hence, reuse the
> SA8775P camera bindings and add additional clock required for QCS8300.
> 
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml | 1 +
>   include/dt-bindings/clock/qcom,sa8775p-camcc.h                  | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml
> index 36a60d8f5ae3..18cbc23b9a07 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml
> @@ -18,6 +18,7 @@ description: |
>   properties:
>     compatible:
>       enum:
> +      - qcom,qcs8300-camcc
>         - qcom,sa8775p-camcc
>   
>     clocks:
> diff --git a/include/dt-bindings/clock/qcom,sa8775p-camcc.h b/include/dt-bindings/clock/qcom,sa8775p-camcc.h
> index 38531acd699f..36ac587a981a 100644
> --- a/include/dt-bindings/clock/qcom,sa8775p-camcc.h
> +++ b/include/dt-bindings/clock/qcom,sa8775p-camcc.h
> @@ -93,6 +93,7 @@
>   #define CAM_CC_SM_OBS_CLK					83
>   #define CAM_CC_XO_CLK_SRC					84
>   #define CAM_CC_QDSS_DEBUG_XO_CLK				85
> +#define CAM_CC_TITAN_TOP_ACCU_SHIFT_CLK				86
>   
>   /* CAM_CC power domains */
>   #define CAM_CC_TITAN_TOP_GDSC					0
> 

I greately dislike this change, and the reasons are the same as already
given by Krzysztof.

If you find it possible, please follow an approach by adding a new
header file and include a platform ancestor headder file from it, like
it's done in commit a6a61b9701d1.

--
Best wishes,
Vladimir

