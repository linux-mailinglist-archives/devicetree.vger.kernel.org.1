Return-Path: <devicetree+bounces-126299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DC59E0EE3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 23:25:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E238D282DC6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 22:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DBC31DF75A;
	Mon,  2 Dec 2024 22:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Hf0VthXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA85D1DE3AF
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 22:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733178337; cv=none; b=pa9vYAPRtDoXH6gLDzOjmXQZQDTXC8oIxiLkxw600rEWDhvAWWktDiuFPPpSnMcV5IfAt5KaqnnkQp+BfxLr+ypLiZTYUc6rP9vq1Lv8k3uIruLO14Djf8N+3RwisP8SWPUyYVpYnKSaIJ4c8ZTmXIob9x1bnRAHJZ3j7q2a8x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733178337; c=relaxed/simple;
	bh=5FeWdKTT/Kl2lGbJ06Y8tF42fvPEW7LRdGOqragRJJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Et+5alcElzUW0odKS++INkViXpLdVxZT8aicdb83wg1rpBAHhG7f0bPli4+kejq0Z+4UojtpCNu25RaIav0HEroCNid9vWm88WJ1rsGSwuJ/YQawQPDlXYPnHJfWXQ6JcLWW0F51SZ+1ssUvtNUw+2jqC19vsViv+0ekLVzMq20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Hf0VthXL; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-29e3721ded9so1513825fac.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733178335; x=1733783135; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yhe+Y9KpnQcbiwEqC2RxmdyO+5PB6oqbLiwhpO9OfcI=;
        b=Hf0VthXLc9QBN4a8b2b5I+YXjt/xP5FQSRDa5aBTtFS5fGHFIjAmMnn6Xjy2kvcFFC
         XezjwoYA+DdTOoOeKj2RYA0dRLl72oicP8a5eLD49iNvO5OGCUblssg+INtMOYzxzVDa
         JVtSRqzlKdo5L7cu/L1AHemMr2EiE5pP1qP45kkrt/QlifIAHx+KynzR62kuiX0RxVo8
         DCVN5PBqFycFa8me0nP6Mme21Bht1UUl0mZnORdgY8GhpTQkkoqxfMogwuKgcmBsvRkB
         koBEJtazWV9U5Ap1AIFFYFUgDFZXpE05RmqsmHGrMQQ4OLWfspmWXWZNDK6E4Jrj9EEW
         npTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733178335; x=1733783135;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhe+Y9KpnQcbiwEqC2RxmdyO+5PB6oqbLiwhpO9OfcI=;
        b=fthKHMOwFt5eF1QB1/rSoa8GKGsSG7ho01MM9fZqJ1qzZe7Vc3OEfY0qlaZ/gPYOL6
         gTidLHA1roSHZspoVOFLb5rOzaqFT7NwI9ElgmR7aL9FDuL7/svHI96e6gyoXz+DEnfC
         9Qw8lnssgZNHm6i3Gzq227IbkI6pKGs0lGoH9hPXkIVnpbk8qqszppiDTHS8a1ZjQySK
         wTRTqCUcYtaL4gJWAHRpnds2g5POvCp/CU7Z2jdajvD9a7iUkQW0CofFt9fmKNrE5YOS
         cs50tZIgSNHmKwOoCrtIWSSNcnZdGosZSv2aHLFj0ao3nK+spxUfa5sgF2tcv1YOusz/
         PJ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUqgI9Gk6D9y/A2Kqw3e7gYv3FLnytfN2zJTSLpQgBKiQJ7HJXpaFOk1/djFlVS4PIgjXUdf2E0oaBy@vger.kernel.org
X-Gm-Message-State: AOJu0YypSBfKC3EmUnsmXVT2EdsThUetPKGlhR3KP0mdPjQjonHsI3vH
	V8oMAQx8zGrWw6tVWSTlDg2k65AakFlQRm7vlvQrTQWPiKv5aMg8uGV8LU8jORnq4rpRw+SHJ1q
	6
X-Gm-Gg: ASbGncvOrGiQ/1tPDw2GSA4eH0op5X39neDgdD9/bjNwHvFIdcMOFd+5ah/kkUmQDow
	zyy54FbSaysUJwtiPF/R9Bl2APchiQmMxLCqlajhZ9+w9LmbQ/omgJiPiZeaWmhS/A9TytGF8wD
	qFfwNWJ0ld8o+FUcBMlAIfuBw7vBdnGERtF+6/1zKtwT7JlMVW2Fe0wOrg8EgTdJuLbDK6ty1nk
	OWUh14k87dsFtOEpzF/b0egmg1oG4yN49RFW2aRsfClnt/xAKn8zJ25381TQdeD8hzN6s3c6wiE
	ePj+ZH8bLVs=
X-Google-Smtp-Source: AGHT+IFeuI/nJ53p25gQt3SeEy0W9rm5s/8s0AHvHNdnQS3wcS/sGrQgMgYd4xQgK7v8g31Y3F8t5g==
X-Received: by 2002:a05:6871:42ca:b0:29d:c624:7c3d with SMTP id 586e51a60fabf-29e88835d82mr88674fac.32.1733178334926;
        Mon, 02 Dec 2024 14:25:34 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-29e6b1a71e5sm708382fac.32.2024.12.02.14.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 14:25:33 -0800 (PST)
Message-ID: <72a86649-7a83-430f-a47d-39f71f2e5f2f@baylibre.com>
Date: Mon, 2 Dec 2024 16:25:31 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/4] iio: adc: ad4000: Use device specific timing for
 SPI transfers
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com
References: <cover.1733147443.git.marcelo.schmitt@analog.com>
 <a36fcf44cc00b2a498170e2ae3f005829d516266.1733147444.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <a36fcf44cc00b2a498170e2ae3f005829d516266.1733147444.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/2/24 8:08 AM, Marcelo Schmitt wrote:
> The SPI transfers for AD4020, AD4021, and AD4022 have slightly different
> timing specifications. Use device specific timing constraints to set SPI
> transfer parameters. While tweaking time constraints, remove time related
> defines including unused AD4000_TQUIET1_NS.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


