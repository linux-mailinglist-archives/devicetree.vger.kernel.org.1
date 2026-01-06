Return-Path: <devicetree+bounces-251984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C36B9CF940C
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E68073026A6B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB57C29B8FE;
	Tue,  6 Jan 2026 15:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r/sq2PBq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A892DAFCA
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767715079; cv=none; b=sCJ9o9Fp3UCj+NkY/gyKQNx+klGR1GFlgITIlAX/1Ap08ZOWUdZGVwNDhZ4bUhgf7broBgU9EEGkAhoO12lB4yiLRSG0s/bOtuyC9+/CEZ6qrm0LfV9AYGFeQEqoWs4y69HzRO3/FV/MQOQax7AODm4dX/F4dcGSa6Kg3jKjYII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767715079; c=relaxed/simple;
	bh=rS2kEN+l5lBWD9HEj0zmuZJoqSCVqudIyrokemU7S3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X+QtkvwR95NkAPGH2v4Lrqe6JVTMBgNXBU+4IDQ+KytKh1uiPlkJkik2UBDHHl8MLlpqJdsMs2iiO/t6i48x50R2MnCcDr4aWsUgqVtx3/e8ADVcc4wZu3+JvvzmwSsq3qzYEu+Bg4mg4SIn0sddvAZu7HRwMaMKVOypHFmCwjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r/sq2PBq; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42fbad1fa90so916796f8f.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767715076; x=1768319876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qTn5UN9IF89s1t/TYllEdz6u2Ql6Y5//aGwbSQnngsM=;
        b=r/sq2PBqM3uFLd02ebf76BXuQDbb5a9ZlxPcoxrtUydmhsRA/F0mESo8nIsWu+fz/S
         cpD8UhuUIDdUK5bzFbHjli7g+1sGT3jG7aBsJif93xyv5jEtrYNcy8KYVe97CHMztMM9
         DSxH7FRWgt+6l/AmmHc2x+PTKfGB15FoVF03JMqYS2taNypVXpihA1P+JCeG+RU7p7de
         4r3eNkJTn/N3mME8EjXyKbBBUr8K6MvM7lHYt3k+rfgzz01uXMqBIAG+E/Gl1iq/rv7p
         gXT2ACATGdxnvl+uIzlqajieuXsgAYp+Y5LSm9/YZ8Xk3rwruOBvor7ogCBOpcOmsGrx
         kRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767715076; x=1768319876;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qTn5UN9IF89s1t/TYllEdz6u2Ql6Y5//aGwbSQnngsM=;
        b=eKdwE/1bSN/2JT4k0dIpTUYghNJrhnJmQGzQr3UEHMn94/2oQ/W+AfP9y0m+YhyoOD
         4Gq4fTlVIS4Qi1vfczGQum77Zikcfoii1FNctXAzjGV5zB5Z3tEmE5fVDns2F22udJvQ
         B+kgRyWaMRSfmq9wNhbQa06YEQl8JO9hbaB1PW5K0s7Em/J0Kj60gs3PFt3xK71ocEEu
         mpcEhpQbRBM5GpeiS2tsGWsM6QW2g3F6KTK9Uaag3F1+nO8RjqSpXCNNS5gWF0gf1Ihj
         I8C7YjajvC08whtnGW0nfO+bqGSgxHpiqs3herJDOebf8b31BjU01P/83+2soh9XaiAO
         CEfA==
X-Forwarded-Encrypted: i=1; AJvYcCW5KltfGaZ5oFsJdvOtwk1NmBVvE419XY6iEZMxXcnMVqJJGZ5aiQAksS+IAjx1A6D4sPT0OwDIiiVT@vger.kernel.org
X-Gm-Message-State: AOJu0YyHRWHJPRHn8aW9WYS4aqYUNUiJQYmUd3BqugLYHz8tPzavOl/d
	zNqVsjc5T+OoQIrZ8ff62M3g1rXEZC1kbZoMdxWEiUeR9oih1I/xXYTCQFVYfi1WCxA=
X-Gm-Gg: AY/fxX4Ag1diBbVZ8SSdf23YoZ2BJVcAv0NCF9Q6q0khQIbdCPOJoZZI+EbfM+zSlnz
	U9L0v4xAGVFxoSyNKkgttqA/TtgSVay7QgRKa1p+0ERkAyAZgRgM30Tz4IN5svocPnMvwnWNOR5
	KBNtfwFu5zqB/0br0fXfcEnvO447lIf9ddjMZvFbLtiGlKIL8hIye5dHs/zhxqz11FEpgcq/Y1o
	6GF0oTarwxE8KVIvVkwwAIBAqRb8PuzjukVCfuq8dhaOZJMN66Eyodi+4brSlZuj3+Fm5nZidSs
	2+8VkbGRWW1QpxvUNDwshOHFvqKzfZzRyTcUeUh3QbjAhp1opkQbuXmZk+Y3CDizeUs2LEVi2LC
	8IKuon9JavH+BNDqTclhF7Jrt/wZGw5P3ZZGoHaZq1dhnVmuSJdGXkxrRGcn8H2MR3+Kr2yVgTu
	ObZe6C+1nRy7VHDAtt6sC5yTm8iB1+4Nf4+DUOk49km8BOoYZezG0i
X-Google-Smtp-Source: AGHT+IGQnz5PEx8LxOfGK9LkP+QK7fQMiZ5NijpaoybNg98oXmt5YfVveFTA2OQMNZn/dfHJVeSvTg==
X-Received: by 2002:a05:6000:22c6:b0:430:f62e:d95b with SMTP id ffacd0b85a97d-432bc9d0f75mr4987371f8f.15.1767715075853;
        Tue, 06 Jan 2026 07:57:55 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e1adbsm5211662f8f.17.2026.01.06.07.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 07:57:55 -0800 (PST)
Message-ID: <20632cd0-30e4-40ec-83bb-56d915c4ddad@linaro.org>
Date: Tue, 6 Jan 2026 15:57:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] media: dt-bindings: Add qcom,sm6150-camss
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com>
 <20260106-sm6150-camss-v3-1-d1d5c4d02b0b@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260106-sm6150-camss-v3-1-d1d5c4d02b0b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/2026 09:04, Wenmeng Liu wrote:
> Add bindings for the Camera Subsystem on the SM6150 SoC
> 
> The SM6150 platform provides:
> - 2 x VFE (version 170), each with 3 RDI
> - 1 x VFE Lite (version 170), each with 4 RDI
> - 2 x CSID (version 170)
> - 1 x CSID Lite (version 170)
> - 3 x CSIPHY (version 2.0.0)
> - 1 x BPS (Bayer Processing Segment)
> - 1 x ICP (Imaging Control Processor)
> - 1 x IPE (Image Postprocessing Engine)
> - 1 x JPEG Encoder/Decoder
> - 1 x LRME (Low Resolution Motion Estimation)
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

