Return-Path: <devicetree+bounces-76960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1BB90CAF0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 92CD4B21015
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642AE15A864;
	Tue, 18 Jun 2024 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="HCCSeKLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F27158217
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711333; cv=none; b=FHqzCEvMlPkZZrNRMicLSTFvROoN5XC2c6Feir3qQi97fR+nRcigny1msvr26H0MnO6UbvNUr/Y01eK5piXwMmvFVXz9DJbwEKYiI+9+GHA74CzeOqqToJPYZrcdAXdUNmklr+AjaWvw7utox/hy1RfXevKBw+pey0qUTv+ruGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711333; c=relaxed/simple;
	bh=AUpptuslq0jOxWvWoEbgFL7kd5Ynkb5zVnsn7JQGDA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R2ljxG+bJH4OSgdcHmzGbW9oQqShR+sWp09c1EydVdlyK2x4692zh8jvQjDvAv3n7f1hI+jjn67MsStuBRLphkVP0Ps+hLhuPonrnwuF56gSOlD8457+Gni3z6Ga2u0mRKFbjv5HkltXk3ALlA/VSDBRJOBs3v4gSsJQDj8/YOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=HCCSeKLE; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-421b9068274so47933275e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 04:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1718711329; x=1719316129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JSGPriNhJecr2X/1oYlqBsQu7u8ElPp6aKxGUZ+T2tc=;
        b=HCCSeKLEghnoNMWIn8zCYI88d13HjQr4Uk7gIDzr3tmkUAeeYPAngKB1aNymIbmqay
         3PpT3hixqv7ltKBJT9VzkL0/rMkRW/XxCKbv8e6yXuPvUSohuKGtqqTQgNsflFM0BL7Y
         AtiF/j6ELYFA7F+JW2hwIA6cTr9gscs13RuPULeaGQwzJ08xpaD3HssOBeikDQUh0OKO
         aoTLcKYk2YLIZp9z+mBKA0dvcDKEsikYApf8ziCTNJcGTXyLjzufK8dOO91QvPdb7hPt
         D4wYcwzAzvlXuhoql8BQp8Ce7ctuqwxWD9AWZrcwXnQHonET0R0DJMq1gPKFZuPTb306
         q4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718711329; x=1719316129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JSGPriNhJecr2X/1oYlqBsQu7u8ElPp6aKxGUZ+T2tc=;
        b=OZOnIVOiVF8R6vVmUfaHvVFPSA15g5CwltZJtaThX87Dbx7qxfPcrIqRAGQBvXG+rE
         Ez0QC5R4sdqxNmnBy5zuU9t7mdLSj9GYwA9JV4c9wH1wkv4z+wu3/X/xtAoTQRxosXM9
         Xvg32U/KFZvTuOKsiKmAKkGYf2ODgxdaH0XCkW9CLLh9XaE2p9Mb0DnN0Ln0dbefqlU4
         LbXFJNaZLXCh9MNYgNYwY4yxw0jjrgAd2kXbg8812mZrP5vHSxExcGIR+hNuccgJ0RUz
         G4HOE0Q3hTZiKUz+mK2PAh80tX7xW7gG2Qp8E/VkPJuev1nQrdKP5qJBv1QXMiAMxnva
         opvg==
X-Forwarded-Encrypted: i=1; AJvYcCWvLJZN9NMPY/qO1UhaeVHT6OQu8go2PRXOCpqe2cEbGZki60hyVbCQE0L95qfX1wxJbkp/8XZS2AeYeqeQvQEY6J33Ov73s0dSHA==
X-Gm-Message-State: AOJu0YzwQ9DX4JOytuzxQRnmb2fYpL0RhYXQ0HHqrQz77jMmxt7eikBI
	NkpLQ7iC3nhT8yx2An85TTGlwX4kRc3pKCWJm4O4EOxV2WDNfAVnhWbHOXMIIJA=
X-Google-Smtp-Source: AGHT+IFy0Uinm2ekdyGrSwOzD+HZWNMhNIX2b6b7Cs//1O1myZ0TJYvBgmSiUt11zlMHDiIFPmrAtg==
X-Received: by 2002:a05:600c:3496:b0:421:7b3d:1fdb with SMTP id 5b1f17b1804b1-4230482b8a8mr82010485e9.21.1718711329358;
        Tue, 18 Jun 2024 04:48:49 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874e71dcsm221053485e9.44.2024.06.18.04.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:48:48 -0700 (PDT)
Message-ID: <cad870dd-861b-433b-8598-1b8b68b72d6c@freebox.fr>
Date: Tue, 18 Jun 2024 13:48:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm: bridge: simple-bridge: add tdp158 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-4-df98ef7dec6d@freebox.fr>
 <hdhy5pnq4vsdn2axgu3t5vyhwqrqcrvpveeyai2lyvwadr7rbb@te6fucdqclez>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <hdhy5pnq4vsdn2axgu3t5vyhwqrqcrvpveeyai2lyvwadr7rbb@te6fucdqclez>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/06/2024 00:33, Dmitry Baryshkov wrote:

> On Mon, Jun 17, 2024 at 06:03:02PM GMT, Marc Gonzalez wrote:
> 
>> +	if (sbridge->vcc) {
>> +		ret = regulator_enable(sbridge->vcc);
>> +		msleep(100);
> 
> At least this should be documented or explained in the commit message.
> Is it absolutely necessary? Can you use regulator-enable-ramp-delay or
> any other DT property instead?

The value comes from datasheet "8.3.2 Operation Timing"
Table 1. Power Up and Operation Timing Requirements
VDD supply ramp up requirements, max = 100 ms
VCC supply ramp up requirements, max = 100 ms

Did I read the spec wrong? (Very possible)

Are you saying this could/should be a property of the regulator?
What if the regulator gates several different blocks?


>>  	sbridge = devm_kzalloc(dev, sizeof(*sbridge), GFP_KERNEL);
>>  	if (!sbridge)
>>  		return -ENOMEM;
>> -	platform_set_drvdata(pdev, sbridge);
> 
> I think this call can get dropped together with the remove() being
> gone...

Oooh, it didn't occur to me that the only reason to store drvdata was
to have it available in the remove callback...


> Does this work if the driver is built as a module?

Not sure there's any point in testing since Maxime NACKed the approach.

Regards


