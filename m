Return-Path: <devicetree+bounces-110026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42004998E01
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 19:05:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B12082835C5
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 17:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E436D19AA68;
	Thu, 10 Oct 2024 17:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GDklZcCV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0EA199252
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 17:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728579916; cv=none; b=OCoTHZejqObhD0CR918xJp3z35GmeHlCGyUxLJ8UfhCbKgfnGzysbdMPNnNZdrWnpAkWdVGbdDMtz0T5fwaTRoDZMn2Hbrw4vznFEev+ONWkzriC4ErQh74KfrjrKtPVAmsiJwM2iPoWMLSqge3PkNWJ9YtkFsg7ML5JwKoNNo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728579916; c=relaxed/simple;
	bh=9FveIuz13TN1AblFtkPdTceZQD0iMtQCCXeK7qgN+sQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JC1xMNy7waQZAUaowR/2UZ8oXNI7VIOcuIOKM09FU73hIz9B+Ggg2iRST1eO4I9Ujv8OT1GKA+ehMIT+kfIUh/pmL1mIHsfNHKk6f+kWZXlQyP08zRBl3SrFD8B/RWfgkU5I1kdSmlzmL/bHR7m3Dg6LhyDzM7OdhIIHVvBtZjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GDklZcCV; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3e2a1049688so541167b6e.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 10:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728579914; x=1729184714; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I4N1UJJB6VzHlLEJOiTTygzAjBQKfKndu8bsLaiWrQc=;
        b=GDklZcCV0V5t69mCLp1hPAlZj7Q34mB9pilkAHCuQ6GD7zjq76KR/cWymcoOR8ECb3
         rz22mG8RUFoSwg2QVZJJmA+zpZFd5TKPlsUzviEhX6JF4RgH2ktFRkrbabKlJH1c1DQI
         Usj9x4m/TATFDzqO2qxwznag8+tz/nqSq2uMBVcwTfp1CLx7+tvrGZYJVA4OmfdwvJS2
         k7mCGiaTpx6jj+GSqMp6gK9LYArn0PR/Fe5xQSA5Min2PgJ0dQ5v5eHJx7L8xZE7hGzB
         21G+FjgF06zXGQotXD7Qfh6fvCluxUJlS60/45VSF86fM9vK8oOPcZJLKilIvTCiUpV2
         lESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728579914; x=1729184714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I4N1UJJB6VzHlLEJOiTTygzAjBQKfKndu8bsLaiWrQc=;
        b=mCX3/x0F93fUOm6vg6Ls2X6rUZG9sf6kOfEsanawp1bBLJqbRJQvlxLg777eFrGC7d
         pWHtMcTQYsPkq3tIAt3Rxrbk/b2NXl6Zhz/Af3K5VPk4yLGjFRqt5ClH66groTrD/HtA
         TnCmNgdhdyBmk3n880e6stmCC8vcIJrwywx6uTmrg4EH3NibsC0jPY0wDxB5cQKWBVWu
         97M/H3qTqvqkIoNfgRpzglvdML5tTfHMmVGcgeo4//AHVtSFEBvpFasNQc5oDU1TUuxm
         KjHqb8WKf/ZmHsuylj97vxNzquDV5rbbZrZGJGQgU5n8PaOEwfq8q9jSOQFOAIOhUXkY
         Eh2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXN5OrTih+KXQGef32FIe4V49KZmZQ9WIeGX0i6pmV3TbiHQ9HujPg7NlMaw0cgDmn2wEZ21Sgv60sY@vger.kernel.org
X-Gm-Message-State: AOJu0YwzCJ68eignYj+wZ4QxAvdEo6OZz4YzzJrPIhZz3XOG+lh+XYuV
	7G9Cx2kcEx437tmxu72L2KQSH1yZ3ORj9GtZ8tbAI2KHx0P+zTpgcRT+sE+YUR4=
X-Google-Smtp-Source: AGHT+IFBejNCLo9F+D5dkmW3LXQHsQ8mLCJvv5I50aqSbJ78R7mOKvr0yeKfoBHIYX6hJzvpQBBBrw==
X-Received: by 2002:a05:6870:c1c3:b0:277:c027:1960 with SMTP id 586e51a60fabf-2883434b155mr4612084fac.25.1728579914084;
        Thu, 10 Oct 2024 10:05:14 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2885844a8b7sm369613fac.58.2024.10.10.10.05.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 10:05:12 -0700 (PDT)
Message-ID: <71c4a073-1b5e-42d3-8fee-a2a5215d5856@baylibre.com>
Date: Thu, 10 Oct 2024 12:05:11 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] iio: adc: ad485x: add ad485x driver
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Sa, Nuno" <Nuno.Sa@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Andy Shevchenko <andy@kernel.org>,
 "Schmitt, Marcelo" <Marcelo.Schmitt@analog.com>,
 Mike Looijmans <mike.looijmans@topic.nl>,
 Marius Cristea <marius.cristea@microchip.com>,
 Dumitru Ceclan <mitrutzceclan@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Ivan Mikhaylov <fr0st61te@gmail.com>,
 "Cuciurean, Sergiu" <Sergiu.Cuciurean@analog.com>,
 "Bogdan, Dragos" <Dragos.Bogdan@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>
References: <20241004140922.233939-1-antoniu.miclaus@analog.com>
 <20241004140922.233939-6-antoniu.miclaus@analog.com>
 <CAHp75VeaYBGTA7sN7SefsyMj09kaJLBoMz4=hf0GpxiXtF65+Q@mail.gmail.com>
 <CY4PR03MB33992F19FF780FF86234426A9B7E2@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CY4PR03MB33992F19FF780FF86234426A9B7E2@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/8/24 5:48 AM, Miclaus, Antoniu wrote:
>>> +static int ad485x_get_calibscale(struct ad485x_state *st, int ch, int *val, int
>> *val2)
>>> +{
>>> +       unsigned int reg_val;
>>> +       int gain;
>>
>> Should be u8 gain[2] and...
> 
> As discussed in previous patch series, the bulk operations won't work for these
> chips. The CS needs to be raised between each byte read/written.
> 

So the datasheet is wrong and Streaming Instruction Mode doesn't actually work?

There is also Nonstreaming Instruction Mode if we need to read/write nonconsecutive
registers without deasserting CS.


