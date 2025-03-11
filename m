Return-Path: <devicetree+bounces-156460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 124C6A5BCAA
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 10:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EF8C1898078
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 09:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3459022CBD5;
	Tue, 11 Mar 2025 09:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="COiNW8d+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF86222596
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 09:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741686564; cv=none; b=WfhoLW5eYxGDDFZmfLnTf/eRT8HjZKnfJEO4hmdjwanM53LsPy60G4lyhFqQpUKms9iCmeQhtVia2SAck3PYFKINU+WGsF0zbDFJAW5vpLJiw9kWjHn+Dfb2XvIl+02G4kNk5N4OsQsz0VbkeTTK3SXAf1ZEVK7BdM2w57blj4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741686564; c=relaxed/simple;
	bh=KV6VloN+Q45Gc0+a2tH993aFZT/8shI0EYvvt/qm3II=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hzF9M5zgUFW8GXltS7SHNJlfMttPQk1+0ArhAXZXNBJBHpQn/jPsqqVErN9ervynNjvwU0a9O6GdJH9quNHlXpaFXDdbefUjjaKJMnjfvcp11KKeD1e03AN72mFrKjMQk/ZBY7RCOc/hiAgQNcsRQXIvWldtN7rEzK2vSYnoGZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=COiNW8d+; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac25d2b2354so637594566b.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 02:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741686559; x=1742291359; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GyMmo00MijQvv1nIo9XATusemS0AEgh5wL246DTX9fw=;
        b=COiNW8d+IXRt4v4+eisTKawSg90sP+OEg1cN5/f+/8AUJQk9G8sOLQV1+csuymsrj/
         tNCY6lIw8dUQS5xRt6PNRIJhq6b5vvzWsHjyjF6aoPCXsfNDfIRD9KGjqOACVK8mUkLQ
         6fkHRc9nAZyi8dWLhGkFGj4kBKT2XibMnb5HBBAwZqd8mx7eneFCS/EkGM3gbmu0fPPq
         C6uKTOD6umPUQ7izZnRME4jDTj4ubWmdISqTi8rwLAKzw3De3qpGdA8jh1I/iu/COtEB
         cSBw3f/CIhqPIUfO/aanG5qYO81D/UXH3UOmSiB2bOYrra5UU0FG4MzjS0Ezae3Zy3ai
         xp4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741686559; x=1742291359;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GyMmo00MijQvv1nIo9XATusemS0AEgh5wL246DTX9fw=;
        b=Z3MzWVBKJPQfTvDQKhhx734nK4QZJeVMvaKl9gww+hzW/9+i9rmVoifFeKeCzxNFWh
         FTexaOghkMXVrGGueVqus4wFRj9BbtR+u6LNrHt8JugJKL7Ub5+fSa5lQuN6fHFDionk
         T0aYJP1y/H4xaGx3rdgKCT6sSq/ST1HgeFNo9naTGkSjgX8cQWpdtZA2ugXaEBmbNvkv
         5t9DG0mQFWBYAj3PVD/G26Zqxy4fjS8km8HwwaNctfRg9dkyaHbdyy8aTq7TLfyfBJ0f
         6g2k5A9x5SOyGcgpcYSDLWVXtrEZjDx/o3waFBqsmvP7oudOuAY/FsRnkfDts/HPkxYQ
         O/Vw==
X-Forwarded-Encrypted: i=1; AJvYcCV4C4dzj/YUxmLfwvXBsDUAb8W1NLuTulXzEuG+xvNeyO0Y6qFcCDLY3DRLnCceqDTEyz687v8xUHn5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4qiNMPS2yVlBST9/MylOTS7ld4ThJ5O31/B5i35ldyB9ai5Fh
	tOT6D28lqHOKkaFR3hVM8D3xwkDKyTMSIwh8eDuH9GXB3s35csCuHWDUba0T/f4=
X-Gm-Gg: ASbGncv6Z+Ix0lyrv3ML084Qc5CqXl0AYRP/DFah1jwwrHkpBQF/b9S6gfpq4PBqF5F
	ppn/s1CU3HN3BpBQMsXo8W17g59KWfiquWkf5XMg2oP2ZvWCVdoPisdXJjdSA3hQpqtn7GjGo5U
	PwtAn6YJ4IEo0cCw+uEBC2pjq7N1NnjELGp+BPLDCSj6UAVbmpzq5zNPdO/Sq+nSMrONn7oHKRY
	L44Ansz91l855M8UwUFOVR90sTcWIMiuRdQS/BD+AFy05DKqyRyQQLKAgNwHfoF7I6MeHgY4rYv
	tkp2eOaSfmizUTvPZ2URt3O6CO3thozMA9oghdNXYECeij5OKYPbmEwyY5+Oa++ZuJhuO+WwKyI
	S/HkWJOh7Tw==
X-Google-Smtp-Source: AGHT+IHSU9UltopReIg2YEjALsfLf8gnqE6qARMGrK0Hc/6wePY9JUwYhUJuhkZKJ1tEBgXuDF7aVQ==
X-Received: by 2002:a17:907:3d9e:b0:ac2:cae8:e153 with SMTP id a640c23a62f3a-ac2cae8e645mr70428566b.4.1741686559193;
        Tue, 11 Mar 2025 02:49:19 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23973af6fsm899839366b.100.2025.03.11.02.49.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 02:49:18 -0700 (PDT)
Message-ID: <46b6dbf4-0d2d-4165-8657-7bd8a1329d61@linaro.org>
Date: Tue, 11 Mar 2025 09:49:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] dt-bindings: clock: qcom,sm8450-videocc: Add MXC
 power domain
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250306-videocc-pll-multi-pd-voting-v2-0-0cd00612bc0e@quicinc.com>
 <lpuuYz9cjRQ3qc_0ZqUQk6SgCgfQ-lSt77HDAxGxNN9oGAQqORCJR2-DVUNcGjyeCqn7QKuLsElBbNDRjGQ1IA==@protonmail.internalid>
 <20250306-videocc-pll-multi-pd-voting-v2-1-0cd00612bc0e@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250306-videocc-pll-multi-pd-voting-v2-1-0cd00612bc0e@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2025 08:55, Jagadeesh Kona wrote:
> To configure the video PLLs and enable the video GDSCs on SM8450,
> SM8475, SM8550 and SM8650 platforms, the MXC rail must be ON along
> with MMCX. Therefore, update the videocc bindings to include
> the MXC power domain on these platforms.
> 
> Fixes: 1e910b2ba0ed ("dt-bindings: clock: qcom: Add SM8450 video clock controller")
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> index 62714fa54db82491a7a108f7f18a253d737f8d61..737efc4b46564c1e475b02873d2dc124329fb775 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> @@ -32,9 +32,11 @@ properties:
>         - description: Video AHB clock from GCC
> 
>     power-domains:
> -    maxItems: 1
>       description:
> -      MMCX power domain.
> +      Power domains required for the clock controller to operate
> +    items:
> +      - description: MMCX power domain
> +      - description: MXC power domain
> 
>     required-opps:
>       maxItems: 1
> @@ -72,7 +74,8 @@ examples:
>         reg = <0x0aaf0000 0x10000>;
>         clocks = <&rpmhcc RPMH_CXO_CLK>,
>                  <&gcc GCC_VIDEO_AHB_CLK>;
> -      power-domains = <&rpmhpd RPMHPD_MMCX>;
> +      power-domains = <&rpmhpd RPMHPD_MMCX>,
> +                      <&rpmhpd RPMHPD_MXC>;
>         required-opps = <&rpmhpd_opp_low_svs>;
>         #clock-cells = <1>;
>         #reset-cells = <1>;
> 
> --
> 2.34.1
> 
> 

The ordering of these patches is a bit weird with this binding first and 
then the rest of the bindings later.

Also switched my linux-arm-msm email recently so only got the first 
patch with my RB in my Linaro inbox.

Suggest as standard practice when you get review feedback to CC previous 
reviewers on all patches in subsequent series, especially if you are 
picking up an RB on one of those patches.

TL;DR please cc me on V3.

---
bod

