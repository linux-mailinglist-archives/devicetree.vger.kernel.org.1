Return-Path: <devicetree+bounces-120520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E81D29C30B5
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 04:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7A6FB2163E
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 03:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADDB145B25;
	Sun, 10 Nov 2024 03:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dt1k2qJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89BF13F42F
	for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 03:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731208277; cv=none; b=Q1SVuUk7kDhkfP+5CAziOxItQJtEEfqFXGTR3OfKnzZ3aAdwJWmvKa799LoXHicYztIJUXcJdJYlgM4AjsXsCqWbOUA0rxBjh2sMOdPKomKDsIXONB8YMR5wBTtFBi7IsA2r5UFS95YUOsqcSePt66hmARzSQKZJBRTDJ5foDsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731208277; c=relaxed/simple;
	bh=g/KMlcMVXNTbNZFri33l43WlCq7/c4sXqfwmJIHrgjk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UV0a8AllwG8DZfnwvYssXKxnNRIXGMVrsTxJoOw9WNZpMIxpJC5IgeSOU9MXSoTr46ixFexW6K4aN6aHyv2i9cc6G1MKd6vdaXSjq3T+FwtNc7QiDM3rPYpCTK5iYmc/UF0fCZfKsaBA6cjTm4Ss8ePSKsQfeXYBAcVwD3OvmZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dt1k2qJu; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4314f38d274so43043255e9.1
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2024 19:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731208273; x=1731813073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cko2Ugguk3Az/odluOUc+24GVofiG+QXX2HCknsFNAE=;
        b=Dt1k2qJuuSTp7HMcRV3W5GiyHEbvFzRd2fRbGqsGsSEzyK2WEUJzbj9uNPcgg9sO2Y
         RKNbiE6KtWxV0x3TurM8XcNmApEbN5IVSezJ0JQV1uymXZOiNN3fAF/8e81QnGBbwNh3
         kLyGbUbtNM50qIGEyw4cOBZSgF0IhambRr6p2BZY0+jsKO/QpQfwqQs0vE0LsqlO4HIW
         5AeTASqXme3edTLgcSsKfm88idioEhXrvniCN7ajVZGbhHChE2dbL/CnrzbDYitdWUKu
         XQya9t6QEBd4TyVD/foHGZrXCktAAG8/xZWtj1lhvhrtY5xCNKrJNrIW7ugbMS7w7bU+
         F4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731208273; x=1731813073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cko2Ugguk3Az/odluOUc+24GVofiG+QXX2HCknsFNAE=;
        b=gdIP8d5B+2jLI8xFZ3QjQYLX4YZK3VRD2ayDvq8ohEaEEiepspSjU4KHQs0wf6mqNV
         fyhMIzV64nbhjbgWo7/4C1/TPPYVwhlda0YdbsGzwtv+xBkTz4cCwtQt596haJEp6BXV
         G46DzLkB5wCS8U6lyTUJcmGSspj1mbme/G/HQWFC4NkKb/XK2GYuIAMVBUX67He6P4iv
         cq8x0oOWgPKL+qRQvC+pgL3uwHiagc5T63yD12qrBXel4t1P0oppxe5JeClHSLS2x3hI
         zXT91B9ggMpo+MjYm3IVz/Ria0TV1EP02jgQ2v53XkZ6guvTPdsUebZJFyelABQ3b63f
         9Dsg==
X-Forwarded-Encrypted: i=1; AJvYcCXqfcZXhGU1mlduaZwB7xihlJ2KsKqEgOCxJzsuhaGSDngC+r9X8GpzwJ4p177msTBj7ovx9ivPN8mI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5t4DSf9qfItnxlk6YrLP0hTc6Gurtpkv9v/SDZa9biFiSf8GD
	hoPxSjRNo7qdHnTM6J7xWqUHUZiT9gAhA1FgDK3f4n0Ci/yjd/Df6oEYoHAByNQ=
X-Google-Smtp-Source: AGHT+IFaIidm3QPf6bn0cWOlTbHdw3gWZCS4Ki1/N5fALPksgNqv20r6Ewl7HK2fNVn1X+eNagNWnA==
X-Received: by 2002:a05:600c:1396:b0:431:5c3d:1700 with SMTP id 5b1f17b1804b1-432b7518e11mr80462395e9.21.1731208272963;
        Sat, 09 Nov 2024 19:11:12 -0800 (PST)
Received: from [192.168.0.48] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b05c1f61sm130198805e9.35.2024.11.09.19.11.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Nov 2024 19:11:12 -0800 (PST)
Message-ID: <05936fd6-862e-4727-be0a-22eaa8ab4448@linaro.org>
Date: Sun, 10 Nov 2024 03:11:10 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 03/28] media: iris: implement iris v4l2 file ops
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Jianhua Lu <lujianhua000@gmail.com>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241105-qcom-video-iris-v5-0-a88e7c220f78@quicinc.com>
 <20241105-qcom-video-iris-v5-3-a88e7c220f78@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241105-qcom-video-iris-v5-3-a88e7c220f78@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2024 06:55, Dikshita Agarwal wrote:
> Implement open, close and poll ops.
> 
> Open:
> Configure the vb2 queue and v4l2 file handler. Allocate a video instance
> and add the instance to core instance list.
> 
> Close:
> Free the instance and remove it from core instance list.
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

