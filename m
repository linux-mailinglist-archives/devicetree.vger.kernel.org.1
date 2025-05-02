Return-Path: <devicetree+bounces-173154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD00AA79FA
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 21:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DDC53ADF18
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 19:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A87371F12FA;
	Fri,  2 May 2025 19:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NQIbCYgs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845F41E25F2
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 19:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746212680; cv=none; b=dOMGgJY0bhZhO7ts+dJXl5y4rWkbKDzxkEuwxBLnpKxIPwksjc2DkTm4QHYVIlODdYSsr4bXxyE6aE+n+kP6EvS5sf5zLrAw+heOqJugDf5KAQUbEEQjSgWaZS5RVlKDLsRKFptiPZoQK9DXrenQpZ/pXwAouC7PQYh7abZMJLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746212680; c=relaxed/simple;
	bh=BqtqTKdD0wfSLUZ1EG3RdjGoNfqcNF11h+vSIZQ1Ymc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PpDjrb6MmXht0a6MDv4M58CtYDXYxoriq6691IzIfnShQYtHhrvQNxSiZfHr4J9h2AJyOuF3f0JOEi/29sYkYTqFNw8CRp/Sa12XoOEn6Iui/s7NshjwvXgL3l/bmH9yacD/VW5J7yDiC3GHpE37tN58zgOhA3cqefbIcwBNxcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NQIbCYgs; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72ecc30903cso1366783a34.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 12:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746212676; x=1746817476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q3PKLFA2VVV9aMJem6QKMjsF94f7Td0gw1o00ZukAD8=;
        b=NQIbCYgshIHLPb5s/7S2PaxLgdrPqgQz9QxSaL4FZyRUaWiVRsTHZ5Dzx9kXM/C6BS
         eeXRv2kuocbQG+gGzsrThpARB4mhp44abhCoZj3/IgFlX5v+i08F8ckS4wn5HHY+HjZZ
         Y3Z+oE3R587IfrZH0E38b5E0ecGDIyyNpllIOyPYRzTIA+xhgm50joqpRVN6tBjiu4EM
         N5LHs8o3nzDay2CnFGmVDzsnQe9S8s1iJ0CeW9ZM1Fx5eAc6Qr7QTbK6xtFeUCF75id/
         ZsvmNw+e64YbybAGWbEgjZlrTkPQOYHe6YHVeh15dWKzGNch6VgG357dbZZlU+oFmYs+
         A1Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746212676; x=1746817476;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q3PKLFA2VVV9aMJem6QKMjsF94f7Td0gw1o00ZukAD8=;
        b=HKDccFXGB9ybSV7g6tfmaSSA7kkl0mrJMRjTQMxGX0BBT2hWoTZIDzdzSVX/a6eHbg
         0Y5gsU14A+DWLnJT8n2bnLxPOqiigt0NjIxewfpMd3+0u2uGd4H3htO+y0FSV+KqcG5j
         Ds1FZuUv/g5r2nV32H8Qi4e8yEaIY7yIBfCs2c9oTxcU4e5YPBHdSJ8uRVB7enhW7fBl
         lD6uS26b+KrjvULmSs6w7l/S/j2pTNLmO1QUyhCQpm/PA66Wx8GzAfWFvh8aa4gx+s4E
         d/rMJYg0NmKINdWDNcKmHH/kUd5iHtlqL96Zn0F/5gVjuQB8h1FND1euZLDnZy4HsjRL
         tE3A==
X-Forwarded-Encrypted: i=1; AJvYcCVsTqOcSMjcmwKO4wzRDC8pptW+6Q8kG1AZk3kODzeJ7z/p04q0/hqgoMX9BXYUWPUDX4/vNP6A4eph@vger.kernel.org
X-Gm-Message-State: AOJu0YzSOJT/1grxC8Yg9LW3wKKt4BI93bWt6gtp931EQkXybqAMfY7j
	UU46Buy70guYPrmbkuKf8XYxOM85ZM1Umm9FxAd7lgyX6pns3/g7v4yNBn90RyIhx2EVAISWxSG
	M
X-Gm-Gg: ASbGncsLDYC5I8pJJOh9EivVcj6nRFfUwrzeYagWMLpQ1QkboDl9DaX0v+Lv+415cTP
	5R8lsMILCUSNCMYl189jKz1lBU2d5nPvrTz4/sW3SP1fp5dYh32httyntSx+JnPznErgYuPNo41
	BDqN6RarCSbtdKvlM6Bp52Fyi2EGczxrK0oMs6Cx86xnl/igxnM7/qZqWeayuB/r/cZtsstt683
	US1uAK3A5rw4knVRkO8/ItXQKt/krStltUsQE1o3uKb7c2v8ZdAvl8r2Qt2R0Ge5O3o0uyAeUHK
	Xjig8EqEOFLCRo2zF0LEq6LXDeA3a6FmWNTecauxbR98FHNdeT2X8lhYAStaxJmdnb/PvCg+i7m
	3d62YbDlVImgPx0Dn6w==
X-Google-Smtp-Source: AGHT+IFvwfGrNvE39uQ48bU7A3GY6kQiwC6kAAl9UGMdUVUY3hdyDs8bTqBwhUAODN9l0novkb6Y7A==
X-Received: by 2002:a05:6830:610d:b0:72c:3235:557d with SMTP id 46e09a7af769-731da159bd8mr2434917a34.13.1746212676619;
        Fri, 02 May 2025 12:04:36 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4489:d382:ca90:f531? ([2600:8803:e7e4:1d00:4489:d382:ca90:f531])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-731d31a1f04sm590393a34.14.2025.05.02.12.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 12:04:36 -0700 (PDT)
Message-ID: <2349fa18-efbb-44f9-bfab-323ab3ec2453@baylibre.com>
Date: Fri, 2 May 2025 14:04:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] iio: adc: ad7606: add gain calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
 <20250502-wip-bl-ad7606-calibration-v2-5-174bd0af081b@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250502-wip-bl-ad7606-calibration-v2-5-174bd0af081b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/2/25 8:27 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add gain calibration support, using resistor values set on devicetree,
> values to be set accordingly with ADC external RFilter, as explained in
> the ad7606c-16 datasheet, rev0, page 37.
> 
> Usage example in the fdt yaml documentation.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---

Tested-by: David Lechner <dlechner@baylibre.com>

