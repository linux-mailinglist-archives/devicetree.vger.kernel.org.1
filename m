Return-Path: <devicetree+bounces-151641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AF6A4669E
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:32:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 579E219E033E
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 16:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1757821D5A1;
	Wed, 26 Feb 2025 16:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RYWNo05s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B19821CC66
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 16:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740586489; cv=none; b=PkZ7maMtFn+z8Te/wJoYGfL6gat9LRwlNMd1k5vtSkSaMhtK73HKXsSG4PMCbdbKJDaxhIWBJlfSzUS24c5HHrqq8oWF+gMJGump+IOvQOrABAx5mn4mwOf/VWKGwnfhsFYoZHgEyWln1uhCuNU+MR2phPqTpS3cE1KAy2MrB2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740586489; c=relaxed/simple;
	bh=YUF09IcZrXY2wJ5Q8XSoqYhVJAYHJpb87FaMoFZMtBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r3jgaw99IaUN82D2lvnbgnT1Zx4ni0NKu6M/jxxiGYnaL0gcw9UyjPKNjt5if7pmYH87Q3O69t0uD1X2s24rsR1PEmGZEKIFRK/I6eGjxPJOLmNzxJRhR5vqmOS0sHRFnsisL33cquwnHAFC+Ru33INclwSd3nU4GtPd07ZMrlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RYWNo05s; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7273f35b201so3639559a34.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740586486; x=1741191286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=drFcXyyb+twCj8LLQJ+8ciOWTD1LqQ7TVcLVAV9+OvM=;
        b=RYWNo05sRIDQVt72/Dmvv3gSVzP033clxxmZ/xtUaftlgKPcPjtONNdfWBUQ8GdS21
         DC9YV2HKYm8ay1XL8//9SgzstF4oPQKw0YfGsL9db8DCJbWD/c45U5d5ecQCN4VcUOAY
         /Se2YEfBMsNeaWVsBk7HUt6XxNlH1pxqrOFaeSdLOhLH5Y4Hd41qvHA58KRBVEdVgc83
         401bbCa8EIu6fcIX5yFoZbTQgQHP/4Hj6bggl+PNDvUc/o7HthLgosIxg5eeufFSv/II
         EVtJiBKr8y7N7R6nog28idSXrgtqvBcV+FSuK+w3cea0fZB82iJ8M2yxicsKIgvTgZFA
         vI+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740586486; x=1741191286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=drFcXyyb+twCj8LLQJ+8ciOWTD1LqQ7TVcLVAV9+OvM=;
        b=dgq0vQGeSq1MiVJ2g0PL+2k79uVhInvdOi8OTui5x5Q5yk0m4cQBCQK39Ri0bACBx4
         v8+KRqG72OYV4YxwIst3yuC8h0Nf4uMda89FHonRNp+OEOLNZV65j69c84eExODSkY8M
         jBsATCIt3TL8rBwk3vn1tI11tobmPt52ZJfR+GoULl3EmqpVWHntXv3Q9l+MsjRRC9Gh
         L5a1rwe135KVvT4c5gIaqgww0mK4LCCFVj5oRyWUgl8JFtGRvvAVTXxGUIEVWkFDEQzE
         XW3ccoxC38DBI3ZhCHfTDbGqygUIAZFp/NLWrsg0jeYCNjRa/RnflgQJl6mjk824z48n
         MwiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEsj0j3YvvKF3x924OykS+ywmjERLsvt+DBZKSM/zS15MdJTK6sh62xtAdtHO4/W+53BqnyQsH7zp0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwml7ms7JR9W4aadisdO9Iq6v8iDCZVppa8iC7YqBDBK2Ga8UX
	x1p6MBcNa2ttyEorgkNoo7t5jhZoYj73y6yOhRN8VEQZbDTsiHMryktGIQ5qcaw=
X-Gm-Gg: ASbGncthtB9sihxa/deEdeDxn9ThAeeMkZf6pJwkPV+79XyR7CdF7JZ93pBq2ZyhoDG
	wgtUyAuNOwY0sytEBQB++lmOPtZV1jQF2z6RznfQQWahFWJIBTyG+X2wIINQj+OArQM2r5puxRU
	dAdBdcCL07ombq3thIOJZdP52n5YJIfztrUv1gotcTtNR2xxGuwAtFdGoxBL2+WkQIIl/v2auBR
	Hj35mhAr+LD55IkVpmnAgoUTVQDMZRsIttKa1X4l0eF45DtnkkTZECtgcbwsO6F38aLhEMPYuNE
	qFxvTSXEaVoeCmLrZNj8z1dSnRWmxn36Tr5aGvXPTwEa+tIehr1PDJ06HR8g5qQ=
X-Google-Smtp-Source: AGHT+IF8NI9+1TFgCQXZV07Lfd20oHa51d15isLN6a4AtwGJl5WnwIxcHmu8nhk4CUGmWxBUTRSMEg==
X-Received: by 2002:a05:6830:6706:b0:727:f9a:8aea with SMTP id 46e09a7af769-728a50c73bamr2345843a34.4.1740586481711;
        Wed, 26 Feb 2025 08:14:41 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7289ded6e56sm750702a34.8.2025.02.26.08.14.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 08:14:41 -0800 (PST)
Message-ID: <5ad1f95b-ef0b-4e65-9e31-a8166a8e90cd@baylibre.com>
Date: Wed, 26 Feb 2025 10:14:40 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] ad7380: add adaq4381-4 support
To: Julien Stephan <jstephan@baylibre.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org
References: <20250226-ad7380-add-adaq4381-4-support-v1-0-f350ab872d37@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250226-ad7380-add-adaq4381-4-support-v1-0-f350ab872d37@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/26/25 8:50 AM, Julien Stephan wrote:
> ADAQ4381-4 is the 14 bits version of the ADAQ4380-4. It is compatible
> with the ad7380 driver, so add its support and documentation, in driver,
> doc, and bindings.
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


