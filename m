Return-Path: <devicetree+bounces-46465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C03C1869AFD
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 16:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7767D2849F3
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 15:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 758E6146E77;
	Tue, 27 Feb 2024 15:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="afAGtIxr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9426F145B0C
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 15:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709048881; cv=none; b=fifzwM0Y59qKqFzC0/oBANMbkYKvx4KTuOzSlRMZL8QmpvwNcq3HEi4pthN+vcshmYuFyL3a3fMUTu4W+G0scTefEwVK8Y/UoQkuzsy4iKDuzCGJqXGOzDQJ6WQoHpW5Cxz/fGgVaI+F5DdziBMUADqrR4VkqxcIvf2UKPgnwWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709048881; c=relaxed/simple;
	bh=zLP3Nh9re4oPL1rzSQYuUp+YFXQxBUvljv+R+0YwHQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mggMZ/B1+BI4Gnqig/nk4NbWC8mhdEyy+O5VhI8UoTDhVqzjphE1FnKPe6WMALp/f8aDLdV1C3YCUQi84xFkqf5fxpybM5u4iWduQ75d23PK5j/1ni6SNNHCBPXVmiUbr/PAy7nbkMcK/TU+pLGJZlXZq4OsaW773XCJ0ZCOeqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=afAGtIxr; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a293f2280c7so671642466b.1
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 07:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709048878; x=1709653678; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BUdQYoYhmZQWT1OkEsE7ybx8wYaMrIYDNQQCYx+YvLY=;
        b=afAGtIxrY1GoB1UiIo/pvVhqTi25z0M0dqRJri+uYvWUInw8WIqLTMUS7t53BWRvMa
         OsBPj2lYGvSn6YREmmP8Oc72BWTf4iuwJ4bXtrHXdi3rK2h5DAFWSKv1J92PGb3gQqhH
         FjleHA1leGIEyXicBHj2pIwp7iVgDJv2cIli9R5M5CwaFXbB67M6+ZLIiILc6WJwPrFH
         RueFuEEhZH3Qie2FzsQizeZZNb7mGzWO1BeqQrhmpR0ysqWQ2KnaXFWBnuvarI78iFJY
         VVqWivau41f+yGL4PvcX2u0n4crQiQNhMsl5kXiimz9KHH8ygwOrsmUa3Q1yRv1+ml4o
         xiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709048878; x=1709653678;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BUdQYoYhmZQWT1OkEsE7ybx8wYaMrIYDNQQCYx+YvLY=;
        b=EA2o+JtdFzeqxcci7j5QsUlI4Q75ZjyXOW5L097VtFv+KG390wN8WpAbNZooo5gdEP
         qKiOz1rujPT7YITJw4xyOjtgIeFMJ3tFSPloNlbOun1S3vbRKm7LdDDHUDXnpmOVx/5i
         PuEE3PB+y3D5Ul8pfcVZO03UVNJVhwbl0huKwr2R86LKaZ/J1XufiuFO7kd6sj87+aol
         NUHsNPRuowpJ5DjpuJnb4Npx662l5C3eqbwYJ41ovy2S2CholLxridgcykraBtVAFsYE
         L1OgT7t4wVb4ByE/FIAePPUps4RkxUgMLzP7jpm/558WC5xoQJW/4L28FCWaH9Po5jLN
         pX5g==
X-Forwarded-Encrypted: i=1; AJvYcCXpwLFI5XLQ6D9MyWXlnggG0DK5U0dB+kDVAPAvf7BKZmacuUQdNZylc0ePK5MUdjQXIsSEjYUoJ7p0noyyGl6VPHx15CLbgPVaCQ==
X-Gm-Message-State: AOJu0YxVMjQVtPCGlxSrfvaA81VAfhug2CtisdGv0bscJPFDpGvCaXQm
	rT/7LztWdrWmAAD4XM8pdyLu9MT8m+KLGqQzhwN+o5DCMZasZzLDk4oviy9O3in34hJY2TQ2MB+
	j
X-Google-Smtp-Source: AGHT+IG1N/evdsxiik1o5kVkAoCHQYDI76zYEkVSe5R90t1zo6aVmG8FqUOCqhTQjif7c4Oz185DUw==
X-Received: by 2002:a17:906:1f56:b0:a43:88c0:7729 with SMTP id d22-20020a1709061f5600b00a4388c07729mr2487693ejk.56.1709048877919;
        Tue, 27 Feb 2024 07:47:57 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id fj7-20020a1709069c8700b00a381ca0e589sm888216ejc.22.2024.02.27.07.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 07:47:57 -0800 (PST)
Message-ID: <26feb928-55e8-4f6e-8727-44ef8e045b4c@linaro.org>
Date: Tue, 27 Feb 2024 16:47:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: msm: Add llcc Broadcast_AND
 register
Content-Language: en-US
To: Unnathi Chalicheemala <quic_uchalich@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <cover.1708551850.git.quic_uchalich@quicinc.com>
 <93143410af20807c8451539db7fca7cddf31e7b4.1708551850.git.quic_uchalich@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <93143410af20807c8451539db7fca7cddf31e7b4.1708551850.git.quic_uchalich@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/02/2024 00:07, Unnathi Chalicheemala wrote:
> The LLCC block in SM8450, SM8550 and SM8650 have a new register
> space for Broadcast_AND region. This is used to check that all
> channels have bit set to "1", mainly in SCID activation/deactivation.
> 
> Previously we were mapping only the Broadcast_OR region assuming
> there was only one broadcast register region. Now we also map
> Broadcast_AND region.
> 
> Signed-off-by: Unnathi Chalicheemala <quic_uchalich@quicinc.com>

Why did you ignore the tags? Qualcomm upstreaming guide covers this
case, so please read it before sending patches.

Best regards,
Krzysztof


