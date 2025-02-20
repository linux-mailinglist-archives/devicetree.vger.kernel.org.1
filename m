Return-Path: <devicetree+bounces-149133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAEEA3E6E9
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1566C19C505D
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C374C2641C2;
	Thu, 20 Feb 2025 21:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ii1U/RoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E886F264F8F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 21:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740087831; cv=none; b=p53v/B3nNoQz8PNY9+xigP6mtdi7p1txMTUlu1iaInCEx+TeVA45D8wBbEeTGn/YVooOYZPvgi3f7PcjI7cvtKrl5Yl4NMn/uWl5b5BvLAZGuLAxTBcK80a4DXvcImXy0MTwu+SD5aCr15flGuHVvqK6ovuJiV1lx1/JkBCX66g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740087831; c=relaxed/simple;
	bh=ES4OGi23rslj+Ajn+wNFewphPy7M6o0Ty7Wpu/HZ5lg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OfSObf71Og7bHcwVOni+9Bc6QDoPic/FXEvasSleZ8RwFWa1zYWKZrLzJAIwY0TmGG0Q1jkp0xmRaiELchIri9l0LfbfeLk4+aBdKSoZJhmkN3pbbRkZUUhDAXtWbsxx5B40LZmQhwAl5Z7jCbnVBjpU+jKpkb8yuNHamY1wsyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ii1U/RoC; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5fcee9dfcb3so652345eaf.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740087829; x=1740692629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nt524ElHokjzB1IIM2DIs3AzK+URz67k2uKl/q2oOJ8=;
        b=ii1U/RoCmBoiI1CKzwEmdZFMoROd9ObKguIgJPoJ7GwSpt2MItgCcdBShF8R2iK5mz
         3JzLWMMiEX6GwonlfLt2IIHNZE1sciNO4j+NbshDdkN2jYSjDnUXqTglyaHhXEuBkr7l
         qyotlmkD1evDNZ7IdqppSVS8wmUJePNzVhhFrYJvNuJmws3fc8L9oBNpSWHfak9qrPhl
         quJRpLx484t7pINKv64QHjZN/zSQ9wAgwOxIzg2mISK/IKJ9Kqt4oVh2/jWh+oOaWYpi
         E83WVRZZ/d9Jq2rjtrxuf/1Wd5Bicp6n+Xyciwget+J5VdQHYdJlRSwhBbD/lnQdoj5Z
         2iBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740087829; x=1740692629;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nt524ElHokjzB1IIM2DIs3AzK+URz67k2uKl/q2oOJ8=;
        b=jW/9Vf071E+3yF1J10ukgZOxbI+g6VZ5NDbNLTsFGTEUiiQ80rS1t3fEM4iPe334pG
         c2Y41FlMt2QkosgyzarshGlkpZJfgcFaWue8ixa1mtd5I8UMbsiBZY0uG4tuaJzVnrWJ
         X0KSiIATnJLBJS/y79oF3poad+rcYfGadltiLOWXA30Nnnx4lJ+8G4sqyH7p7oHPf6Ab
         kfZEdggW4IINS6K3AoO7TP+0DD6K1J/QP2FrUDkhxMAbpQH7jlFT/sVeAfwTf7WWzrhN
         p3389MQn3+B9M5XNRqtAjhLZ8/X8aI9aRWIPeomB/vwvgFXCSpgYDXaaqBHNpQMlCixn
         vGFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeR3qdwXRBCNN1oAmw3vV8gGbFNCQ7kMAXRnWILxt5+F39RoH0wGdsmKNiByCtiam0wz1sORArR37L@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq4r2usyiFgmF3ZZNdtq0eLnPS8VUFmwnHUDeFqz0CKI2Y6Dzy
	qxr9UDEGWJBkkvEYtRN9mhBgRuqxvqVrjLcYVIdmqWQMNuvrTcefHljddoQ0p04=
X-Gm-Gg: ASbGncsaWMXBXUmoklwDzEVjU6hFf37vb7usuLtFB6/XI5wRgr/ITO4lLsD0xaDfLuh
	mVZtv2tmyeDgo9Sk+ya2AVxO33FZ0GKbZEr3g4U1GdGdm6z17jqvD2nXOtVXrSq0B8OK/N4Xtpi
	1g4O4DM4LN1sZRRcpdy4QgIC1XPA9cDtndtNttv5nPbHILppXkE2OQz13uT2YiPC6Dvw+JYs/kj
	opWSxN4fPenGxcT5s/v9oOODNmdRXxeuef+EYbnlOSg2Iz8QB5kn+RNNaMKRItSHW4WBgRknFxK
	5LFGRtoxPQSwjDXsXvR0h4tBrVOmTOLg+DqrcQoZ3EAAQvknO/8D
X-Google-Smtp-Source: AGHT+IFOfWm9sA+tBwWhqqwmy4uqvJdg4Cmb7v3gPA1NaW7kkEAVPWo6zRGWCJs9b+QrumlHS9MUmg==
X-Received: by 2002:a05:6820:825:b0:5fc:b489:6cec with SMTP id 006d021491bc7-5fd194de281mr893707eaf.2.1740087829046;
        Thu, 20 Feb 2025 13:43:49 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fcf2e2c385sm1637668eaf.10.2025.02.20.13.43.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 13:43:46 -0800 (PST)
Message-ID: <b8c43ee5-ec88-4dcc-9926-38764d18efa0@baylibre.com>
Date: Thu, 20 Feb 2025 15:43:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 10/17] iio: adc: ad7768-1: Move buffer
 allocation to a separate function
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonath4nns@gmail.com, marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <d78aba0d188119bdfde7cb91041229ba16e8eeea.1739368121.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <d78aba0d188119bdfde7cb91041229ba16e8eeea.1739368121.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/12/25 12:17 PM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> This change moves the buffer allocation in a separate function, making
> space for adding another type of iio buffer if needed.
> 
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


