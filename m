Return-Path: <devicetree+bounces-40674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D50BD85128F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 452EF1F22A74
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F5339860;
	Mon, 12 Feb 2024 11:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hLkvrCYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B8639AE8
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707738413; cv=none; b=geNULblb0NVueU8RD45f8PUFy1fVEkDuZzCvqcb9WHXoeYw9YXJ8P7Hv22MJ1ud+0m7moXJhqGbHQOHKgBLMURzCdkc0KzkwIkQz5FYdjTkSsn52cMUvY761mpWySUDAVdytAbwBTQloyJepOGWTiVh7ziwy9j35hGDja9cxwUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707738413; c=relaxed/simple;
	bh=YZI0iWYIs4Bh/cvrE2Q1viIQKQR4G93YPr/aYKc/beU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RunyHdQEa8TWyVXBpsa7P0FR/hVB6Kqu3UVA8mpFRWTvLyCsiWFIBz7ZDytkl9NYOR8N00xnz+7BgZp/nwFhXSlYxuRd7PcRowIgGN/4S0aaI+m38PxNA139lIGfQKXu/ukYS76Lpmtn5LAa0Gy7mndJYl3aU4CLJ1fILuGWD6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hLkvrCYQ; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55a90a0a1a1so4330024a12.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 03:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707738408; x=1708343208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6igGhHE0Wmh8X+D47XGNFybq2+vq3ZSP8U8DuXuJZOc=;
        b=hLkvrCYQfeMwRdjvmFwF7kO4qJYU7n/XYGYMGxOCMvRK/a79/z41s3KlKvXaK+UCc9
         x3/dwSmUqwrEtCz8uUGuDY9EJGUxsQhQyUwnrnEwVHyVAfJcjx/Q1EpKj6jauiy24dKA
         VLtl7KuAfa0VQPrXFJitrBe1BeyC7pU/cEBojFO6iQCkqm4tOYUjpK0/AJo7EN1nG2TD
         xz4Z4AE78w/+9wi42RCYejqF5uhr4F5dZCP3ifq+02osWPeohTxj8FzSUEM7ZGN3Q/rW
         k/E4MQHqKd0DPs4DfcYS8tA147XermheknVtkECbK2YyZBmBDIAtFz3DX6eVIULXuwAD
         TxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707738408; x=1708343208;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6igGhHE0Wmh8X+D47XGNFybq2+vq3ZSP8U8DuXuJZOc=;
        b=upwthov9qyKfFlzUZ4ANE6L4IE5a4Ne+KVzwnXmfC5YDFIVD9p/P+EiaxSBdhascor
         wYRqn+ilM1BiaBZDTGKXnaJNHZMcYLpWa1UAPKMis6PPvsbo4mHH/IdhwCHDOXdsLK2X
         lnTkx1/cw4WvRTlnQ34NglhjmuX1T4zcn7DFvJRZuXOJ/Iup339dPQkYrYWayjIi3q7Y
         MKPnLqLkIMc1wgKnd7VrTlJwtkpUWbnN3x2RpYFMJ0F4Gf6yEzgc0UqgqEhC8jYvYezQ
         aY9hBFA+wAo4dXUhO2HHW0f4l9129Zr6fbcMkHBFq8QM0TX9eT4r4oowfdlwDg4nyIyE
         forQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYKNNF/+O5AhrcrCX+n1kb0dd0y0mVPIkGy3y5SD/drokD30SaMir7PwunxWYNnW7/9rr4RzGw/G/f8Ph8XAHPcTBZWtP4Pt+ETQ==
X-Gm-Message-State: AOJu0YxQHUr79nI5KawxL39abuEJ2T27VpOUOxtuSCBnLMihCb7Jidgf
	91twKPbt4koO1ajAM4VBDf7lt5Wi/VwOqlJYkbBl8gJW7DIiUOVFAJjYw4CCsTM=
X-Google-Smtp-Source: AGHT+IHtMO/k7BQoK4cFgFlk4EAZ+OtEN24JAjUYza+tSEgNVW+iUAxv4YEHSUvFdsrBYJxx0+EjlA==
X-Received: by 2002:a17:906:46c3:b0:a37:2bb1:7517 with SMTP id k3-20020a17090646c300b00a372bb17517mr4477352ejs.45.1707738408616;
        Mon, 12 Feb 2024 03:46:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXmdlD4KAro5iEc1Dr31HuIN4wk6LEz6e3kSziAz1hQ9NyQk1cdScqmB8JnycEV/4aRK2lP0ug8ho26cKPWBmAbgNK4TCs32ts4W+u7m3j+b0V1DJzCYhuv2XM96rBMFUy5fAo+Fj1Wnesw3KvBx0FXphgcajzpJBux4hJ0A38Pih44RzZWPZ/vPH+AGqIYQPSZ4/DV0ucix0Z8+SFYLbvfGbJbwo4kinntjvjW9m8sUnSKHT1lts7Li2WLXMLzpR6YNq3vtjTJrVNAlaqWcXHqIEqLgGmFYMp/FHOuo8SyL9uQY7Xo2O2wDfW8tz9cip5fiD19wmGWWQtV2CqmXwdwcpChYAydTZuSjz9j7xKgkl3OpodD/RCH3l74Ml8NoDQbVyDkZdXaNzssexbdh3+91cGzgm6Njw+eEEmY9xZGy1ILDPJ34WUd7QInVpo2D92LHfqYUo5kq1k2D/cDyoVLl7dp2ZSHOVGlBD/DVGDGxvJSk1+zEaGkqTW3sIpC
Received: from [192.168.192.135] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id f17-20020a1709067f9100b00a3c89e226f7sm123069ejr.181.2024.02.12.03.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 03:46:48 -0800 (PST)
Message-ID: <bfce2357-129d-4eab-ba7e-99f96f79ade1@linaro.org>
Date: Mon, 12 Feb 2024 12:46:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/4] arm64: dts: qcom: qrb4210-rb1: add firmware-name
 qualifier to WiFi node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ath10k@lists.infradead.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20240130-wcn3990-firmware-path-v1-0-826b93202964@linaro.org>
 <20240130-wcn3990-firmware-path-v1-4-826b93202964@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240130-wcn3990-firmware-path-v1-4-826b93202964@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.01.2024 17:38, Dmitry Baryshkov wrote:
> Add firmware-name property to the WiFi device tree node to specify
> board-specific lookup directory.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

