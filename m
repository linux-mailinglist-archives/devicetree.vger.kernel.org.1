Return-Path: <devicetree+bounces-217380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A51B57759
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C15FA16293B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5DA72FC009;
	Mon, 15 Sep 2025 10:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kF8smMcC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB45242D88
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933991; cv=none; b=VgHIsXLLu3GLLaAR/EtjQwPUlWfFnCPCS1f1gIuQRWuZodxXZE2bgtPS9GD9/PWC1bwb+Ow+5k8X6jtXIogwB/FDbLTeLwTLlXpEZtPjYIbZFz1Nu78v8M7Ualeh3xZ0TiraKoPAh+BVPpcNRwF8xOoxos0S57xz+7uSEkr31vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933991; c=relaxed/simple;
	bh=z4vIa1+jE/4b0HDhWypNczdB6rHMWQ9tTqETYOZ0tXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o149dhLV7C3J77Fr5RiB3pqDVmbBMEOyqM2V+jbtMf92AWbETXQ4raIb/+kppTdLp83Yjn65AXCX3nwNt8uwtSULjEnqi4yrLFu4M+/mbYz6lBZgFvx6dM7wNzkdgLSDGbrr3z//+urirS/ZYIQfZOGrC05sVFKnpxRDmCPljZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kF8smMcC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45f2c4c3853so4319715e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757933988; x=1758538788; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dZJB/Bsvr4A7muWR/f1MBNyM3K9e22kPh9FuXwE8xe8=;
        b=kF8smMcC0+oM7wTAe27jeUKbCTQKfQdDTRJ1f8BDnnIa8wcCbEUx1HcMPRvub1H6rS
         ddXK14vbIMjUQzyK8+vpY4YnO4sX+SeCC2ffpUUVWFhMuYvqEwizzkm0jFLeiDnf2WTR
         S1i0E/BP3kVP3gmKDWoHVZ+/j4BZ9g+iHzHVPrMOJ+xWOUTSkJ9MNqOnx3U2gZW/XKiW
         UWfNPg2lHeXnWP2sRc1QPmf9LV84DTY6+v3iJrXqsVWHc8aWDcjCpxKegVxWD/UqPPO1
         jrSJ+XGb3PYdmrX2Lk5dQkjgRiO1Ah/4LL3pjrdMiY0jw/ZBXYLur8R8NgIo2tVo8vpH
         bvXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933988; x=1758538788;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dZJB/Bsvr4A7muWR/f1MBNyM3K9e22kPh9FuXwE8xe8=;
        b=I2X/+1z9c830kLwKzeHE9zN9liefbMeDmqnE457Mt0O9JX8hbrT7EIGcJ6tsLWOq4/
         CgdabkQ62ujvKt//uuKuk9g4NUFqtF/TXQFwKMYDKAGJINpi5SAIFejW/Qj1p4qB14hE
         9XzUqHIpbAZD1XCstonQp7eBl/HZcCQdn7pKPXb2fokvJUpCInYam67jNhq82QofeYg5
         D9Y4fegYCZ4lcjps+e32Ae3tUGAyCP+KQ5TDStkr0kT3bnWFacJc3FNJ+S9NkrjReC8+
         5k2a+51kuFvfsa4gq2ITrrAPERG0nABdE959a4NN7AcJS4G85dU8ZiBZ+QZbpp1ZnnY0
         LkKw==
X-Forwarded-Encrypted: i=1; AJvYcCV0SF++xNFLwgoxHiL2i84PeWZHsynLl5my9y7Y62ImJ1n91UXhcQ8gD6n4JnmUCByVB/q6q+mct3VJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/bci0q9Dr81RjF7ICpc6OIZKc/id9LFZ7YmM0BznHGyyN1BFJ
	fuHnh3tnzH1EK63t9wK3+jq0Yc1LWA7vrpz0/G6oo0Gs9oIamnrjQRA7Kb27XJYUjlc=
X-Gm-Gg: ASbGncszcZzJVbQPo/mZSK6bf5hQhQJ6Klz0KG7l9FheCuXOD45AH9l3w0SR/dc8Hfl
	KSRgQwvmQErMrUrD2dhjOVBHn4KEQ4LyeNFW8NlTJpYQ4ljQA98JaQHKWo0QHt27oqSWESjSz+2
	AffPyR0ruvIDBiF7345nnpMsSmHlmhDZkmTMVEy4r3/a3Vwz+h6Kl2hvEIYwiojXjyTWWCFD5HR
	5lNatuhswK/T/kK+bj3B6y0ciuzv6B9eyk9kqaOIQdMJ1vnFoxB9Nq9cNlQyM6Xo6TGJRS0reCo
	GCPeC+hnVe47p0X1W4fEgw/29+D6s99vwnJ64ymVDx03ZpOHRuJXHMXbRP5krW8w+VLWfLvLBYf
	HmQipt8xDK4q1c/AnKQG2+6zFj4ayYYnbsT3cOpAeazzgsD5Nh+xxf5ZKWDwQY73EwoaPJg8j37
	TF48hLNH8jvbKmGn2wKcA=
X-Google-Smtp-Source: AGHT+IEv6c5FUwwLFSVhJG3Y1Sz4/h6bMTRmTq6A63QYOpaJO9qwKgFhy/icrtsmblyY/8eaAxy/eQ==
X-Received: by 2002:a05:600c:6812:b0:45d:98be:ee91 with SMTP id 5b1f17b1804b1-45f211d4f1emr107824775e9.9.1757933988224;
        Mon, 15 Sep 2025 03:59:48 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e016b5a16sm175947125e9.12.2025.09.15.03.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:59:47 -0700 (PDT)
Message-ID: <1b322807-ce6c-413b-8f84-3a0df4eaabb4@linaro.org>
Date: Mon, 15 Sep 2025 11:59:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom:
 x1e80100-dell-inspiron-14-plus-7441: Enable IRIS
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Klimov <alexey.klimov@linaro.org>,
 Anthony Ruhier <aruhier@mailbox.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
 <20250915-x1e-iris-dt-v2-7-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-7-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> Enable IRIS to allow using the hardware-accelerated video codecs. The
> firmware is not upstream in linux-firmware yet, so users need to copy it
> from Windows to qcom/x1e80100/dell/inspiron-14-plus-7441/qcvss8380.mbn
> (just like GPU/ADSP/CDSP firmware).
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
> index f728d298c72f4bf2ee151698e36108fdd7a8e5a5..cf2a7c2628881e44f093d73e6496462c22326d9a 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
> @@ -37,6 +37,11 @@ touchscreen@10 {
>   	};
>   };
>   
> +&iris {
> +	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-7441/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
>   &remoteproc_adsp {
>   	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-7441/qcadsp8380.mbn",
>   			"qcom/x1e80100/dell/inspiron-14-plus-7441/adsp_dtbs.elf";
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

