Return-Path: <devicetree+bounces-87243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F05938D38
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77A5A1C22CDE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F0316D4DF;
	Mon, 22 Jul 2024 10:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BQNH0PPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1D516D339
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642674; cv=none; b=fLn9RNORHbamIiOQc9yL4VZneH2AkkfFpJc3TCLad0TCRLS0ZtfJh5QPeBSiBTtsZCAMsVK5qM08HMmV0nZx88HZGB5wKmEUBLE2k+4V0DT/rRArl7hFaMoJ01kgUHCdhOVwKrGsMzs/oPg2qTpmBoDsVj2i02bWr5jddd2s8U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642674; c=relaxed/simple;
	bh=m+hBv3YDOsBdnN+l1C7IdzIqVI63phAI09hFwsxrzHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AeFhQcQx5Al/0fwa1V7YZoTF6pzuZiPHCQs5j1B4hQ3W1qtVZSwJ23ouXso9XVx/Z4HvMr1/Ul0hw67xy/h17pibBsejiwdPRk82u7cODJGkfm1K8ud7moqtvdCpOIV92H8A0NrX+CX1acJ5hPdAMrzgh/vTzBjJXYmXBiSEmLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BQNH0PPF; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5a79df5af51so1350364a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721642670; x=1722247470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KkO0qAzED2Vp4UXiyXJ+8Xb7bIrXJwQmMIp6pUHLxGY=;
        b=BQNH0PPFu8uqi3SOSXl0rLxK+gvFvO5TWGcf+xsTaGxi6u93ekKC5qW7jniDvLMx5z
         vKOyRcL5taG8JFGM4PceElCjcm5gU3VC7uY2AWsiTe6GdyQzC3H0tFlsqUWcp24c+Duh
         uSMM+Czci6bnj26UVIlONABca3m0d5G/n2h8hEWKalAA86EOzjxmE+0o1CeqJuY91Snb
         yTTMS4vHW1Su3eIAnyfbiQ8RRxCXkGHLHMSYqxrd90CYB9aasJxoVnclAnYrtr/7EW/n
         yRlv4yeR7kuUA4Go6OQUbDIY9XwP5n3TKqkxcvlk/2J2nmbhkfwN/3KqDAj2znWbUw7w
         cJXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721642670; x=1722247470;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KkO0qAzED2Vp4UXiyXJ+8Xb7bIrXJwQmMIp6pUHLxGY=;
        b=D9kXQTi+YkKweXlnRDUahtst2mvO3v0w/y4UQtnnO+owVaqffJgqiHh0uuh0CeQnu8
         obR/fNB//oR7Mq5zlzg7yiOJvfSmxnOmeTZcaeKmBO/8jlLS0NV+cbvs8fAfcpXfocEV
         aKq3o6JAiygwTPYN4SK00uQwnJRmsBiBJM9mEoFLgCUr6XftvVIsWh5KqsgehMawE+LH
         3K2DMo1D8kzQrNqzsYqvQ4LxvTp278/8XNmlXUGk+izOWYmKWI6YeBiWAqfRlovLa3id
         IiyAXMhXZeZBvc+HcWGaFu1mSIQBLcWs4VAzA9UAnesaU+wj1OdKocqFy2UFwlsZgBg+
         extQ==
X-Forwarded-Encrypted: i=1; AJvYcCXE1JKoV87DKQ9EMUj3ltLn1bPQQA05Slj1hCRP0Qg/md77StBn0ChBGXt+iz6aT8JwRWoLzYmLSc2YmqAGMj14d9ssDpnyynxJjw==
X-Gm-Message-State: AOJu0YyURTXcUw8Kkk6JlTswJd6HDO3RE4ysbIFJ/LfIAK+/qdQglSkG
	dLPJ7ylhyCKkAmAYSusnC0K9gttqozTasoPH7m6sYZ6w3LHtD+XKfNK/FTBo1cU=
X-Google-Smtp-Source: AGHT+IGzDbPWknvSjJXM9N6an129Sn8Sjn2htqiq85IkDdRp6aJREUAL9diVfhetRdmEwh6dILJFmw==
X-Received: by 2002:a17:907:208d:b0:a7a:130e:fb6e with SMTP id a640c23a62f3a-a7a130efe15mr1408717966b.15.1721642670059;
        Mon, 22 Jul 2024 03:04:30 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c7be08csm401776066b.70.2024.07.22.03.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 03:04:29 -0700 (PDT)
Message-ID: <2f6e4cf2-8047-497b-94f2-25e29bb05c22@linaro.org>
Date: Mon, 22 Jul 2024 12:04:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] arm64: dts: qcom: x1e80100: add missing PCIe
 minimum OPP
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20240722094249.26471-1-johan+linaro@kernel.org>
 <20240722094249.26471-4-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240722094249.26471-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.07.2024 11:42 AM, Johan Hovold wrote:
> Add the missing PCIe CX performance level votes to avoid relying on
> other drivers (e.g. USB) to maintain the nominal performance level
> required for Gen3 speeds.
> 
> Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
> Cc: stable@vger.kernel.org	# 6.9
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

