Return-Path: <devicetree+bounces-123825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 633B89D627E
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 17:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8821EB213E1
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9661DF75E;
	Fri, 22 Nov 2024 16:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iaVEXsLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855B41DF275
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 16:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732293878; cv=none; b=JwjuI6QttPDowRgLAkb1n5FwAlKVNGgcIXmxkkAGRCHrjVRD5ArxaZF3IPhUx958rM3BmxM5iW3Hc0QbJdbGasFsT5frikyRuWZDpqmVCw8gc/Cp0rVUK4QMi5RcoCSFZilQpNRMsHWwgy8TVBNfwy+hfMsiBx0Rv4hy60eN1Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732293878; c=relaxed/simple;
	bh=OP7jIjAssaBavEB3Z5dHyvMwl1uaAest0+Ee9D9Eqmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T7ZqP1RHg9rD8n6t50tKagzJFJdQKLjHvMl4h3ZWVx1mcAqAkfMIxv67bjposuD9u/I/JmFjmWN5KiFKWoplBDdawyjZ//+UxVHJMgf07lsT/zjRFhGduoZGuIpRdXdhJYO5NDPY3nxdreuQkBI9RZJ4xo8JiAc7hzKYtAb1L2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iaVEXsLx; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4609d8874b1so15024141cf.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732293874; x=1732898674; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OP7jIjAssaBavEB3Z5dHyvMwl1uaAest0+Ee9D9Eqmg=;
        b=iaVEXsLxl2PmdQJ+gu6BSRVnnD4A6FhybyCyD0MneG5ORFsphYkK83oVSlb36vuEwn
         qSphVgr4SnViY5FpNsu6FmoHn5g8HzGr2uVWeW1sYI4p+gNiaIvkA2RuTPiqf2P1egXT
         pAqUUjHEss+cSqc11r9NqtAofnRdX9tcmxfE0pPdQWTXBKCjY97L6KMnlVEk3PCcIzOh
         5fhW8HrOKKj3qgp916lENPWgFhEbNlbfUEo9I2XwAh4DHb53oxij5obY+pG5xrRydev/
         QMT0U5Pv4UUw6Bzs03Pn12U36i5RGZEpfzmsn2pJDDNMKodQcA6ZeRS+ooCN92+WnHeB
         ANNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732293874; x=1732898674;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OP7jIjAssaBavEB3Z5dHyvMwl1uaAest0+Ee9D9Eqmg=;
        b=ZjFFgm7pDdEMmg0iu1eTIchv2juv5JMvWFcWarPV0/Dq+jo+OVg5OuFM1/yk2QxVAZ
         rfNc35tN5LhDlRoszZqqxoq7jrnlOxahVk/RR0Kv3aKOa0bgbLBAgRKVxtxq+uZQbXfW
         1gB1IxYViMtLhwm4bRX2ppJTn9cM5nQMe761Uqxk5xe9xKRqgJnvoCvbC95KgErAzNYn
         dNZh8GR0/eMHgsdDqwkyabz1xZ9LT8TUupXtHI1oLvT06RUI5poWQu2htDrE/XR/9kZw
         fpWZwy7pO7G+EzQ4zZH4IpBXc48qzxcmlZWbPTqZ54so1E78lPfJ+3jYti83yormW1gP
         dekg==
X-Forwarded-Encrypted: i=1; AJvYcCWx2VI3A/H62qTN7m+RH5WUz+GjuPnxVuhvGa4TCeATZ+1kPuQsQQlFO4n7kzZJpPdAmBr3llW1Gyqz@vger.kernel.org
X-Gm-Message-State: AOJu0YwgEscTFMOMHBWfjVgCx24cGZcTO0rKAPfwBTS/8/kBfxHOIKIQ
	HdzlrSYX0GLxzWv588d6xAH7EL38UeY5E6NtQwFU4SR5qjvVEegIc5ut/UZCjpo=
X-Gm-Gg: ASbGnctpHwPMO63YCNXaPAZ4fVm1viJ/iINGm6NBbo/+VwI+MfkjqY3JhYxCazCoPi3
	BiJTtgWdgtz+kfzEUSGK9Oz/9hFDbE3z8Dqpcu8otgukneDQDc4pqzn8huBxjQErFJq63JoecRt
	w/YgWaYXq4uWpFW5ZM9wIWJ2NxB9vvnAzcc4LWJKbX0FDlqtU774hMrBgg0dEksD1+KKxvCcEqd
	ifwBqdvZTnkhel1H5hZBZlN5HrzeIaN3TokmOroaKmyz0a64pF7SzMtyoXZEKAP/TsrXbntq89s
	EKngsjN752nnX/6aHw==
X-Google-Smtp-Source: AGHT+IHnTtl4XzgQI6Cj/5Tw1+c6s1eOk2gCKDFSgR+4tzc5/FOY9V3ehAztDo7DybxRc1Stip+1XQ==
X-Received: by 2002:a05:622a:4a86:b0:461:17e6:27ae with SMTP id d75a77b69052e-4653d5a6b9cmr53354531cf.24.1732293874474;
        Fri, 22 Nov 2024 08:44:34 -0800 (PST)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4653c49016bsm13278711cf.87.2024.11.22.08.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 08:44:33 -0800 (PST)
Message-ID: <12e62693-adcd-4da4-94ad-e56e98c11cc1@baylibre.com>
Date: Fri, 22 Nov 2024 11:44:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/10] iio: adc: ad7124: Add error reporting during
 probe
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Dumitru Ceclan <dumitru.ceclan@analog.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-21-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20241122113322.242875-21-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-11-22 06:33, Uwe Kleine-König wrote:
> A driver that silently fails to probe is annoying and hard to debug. So
> add messages in the error paths of the probe function.
>
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>

