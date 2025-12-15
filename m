Return-Path: <devicetree+bounces-246609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE58ACBE0FD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2987E3006595
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 444252D7D3A;
	Mon, 15 Dec 2025 13:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YpIBVJNj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257C124C076
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765805265; cv=none; b=QTLxJHsO24H55jEd9P4HKqVLpHazMxnVDn4vKF6uHI82Lhx3Za+Tvu4YUmnaWvDE2Kn2EDrGZoWM1C6vX+JEFjsYOvAdBdVNEkBoOGHOkqLsOQiu3XGEe8CDGbU22HoS9ZNlL4WYS8cD9HnifYn7/ZXpEjf9i5YWhgJdIVON8KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765805265; c=relaxed/simple;
	bh=Bsr8lXOOTjj/n6mLLqWuV51jaTy3lwf0AoraTFJMdPk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K0W8VHnCNaTU3w7Cj3wsheDLmiEh902SdWNcxcAQ4WegGj7XXTFuuCsfWpUeOsKUBGC1ZnLwv9C5bOmjNDZW1WUNDtvc6eqFUtbeXC3uEPl2bb3Ngj8qjTyBmOy3A+dxBUoU3Tw6Ij4HS8jQV0L0nXk2xQGvYYbdK8ubRmWBwrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YpIBVJNj; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59583505988so4866762e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765805261; x=1766410061; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NmBz14k7F2CZy0azsuA9GLkJkSsaTofyi1phzk7lTs8=;
        b=YpIBVJNjZHQ9bdmFAzaABDq5AZRqGMQMW3xYW9+dxDZIfc6REMbe80koFgXWSjR+y5
         j1RgwXGXUyiIQrPLLm7hkm3DmRJ5eIEAr4J4OANjsoESpXh+QwlCt7OUfMKXZewMHZFB
         k4PfyyCzpgplKEhKZbhP5PtMIyrd1+NcU/1MUCgaf495nm5n5zrcjN5HRADDCFwOwwPo
         DUrOvMzZMcMGxw73kBuB8L/ruXXLL5kR/6V9d0OyLK8StwWNGj11vyOyN1v9d02wZTW1
         0Y/XL6/xAUsRdvzS/ZN+JuApylRdMM6IpNlG8GHwNQuMJ4oc1EdqdukkiNl525lsRuRd
         hsfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765805261; x=1766410061;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NmBz14k7F2CZy0azsuA9GLkJkSsaTofyi1phzk7lTs8=;
        b=IBZ3+UO24pUK/JdWfbyCYVglDXT8213wthP27LnAYlocoQdd8pPkR58iiUwYiCT3iJ
         9ZVyGq4iW13QV/8sfgClqJMfV3h8I9G73tTLYffNvfxwlYwMgiWkHW5YbVKHVzh98dXW
         3gGPv7JdPXUMvd44P5eBVOWwOQ5RQRV2c47wYdwLT1xudTnvFhrDbO4fqVik/lLYE3JX
         Of260w97iL+4DbtaIDbYhc3Ta7UbUlK7Ikj++m+weOeAVj4bSmOkhC0NwcXq57kFOwbk
         THZ8Tg1Y8P6CwGvSQsxvfesbyP9jx/4m6TXruRUIAF6Xr7sHL9bm86NDBsY/UIIbyEU0
         Dc3g==
X-Forwarded-Encrypted: i=1; AJvYcCVnG+eKP7nwv1evbDSnFE51eoMgUqqUfvej1efaV7k+mIZBkFPc/gLUg/l7RMK40KUGigIzvLRT7lS9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzsq501yFfcXeA/F6loOVEKwXlwlZrL0FlFIcp/6U5YPo+ypHF
	Z/Wurdo5FCA4n4T9Cf/DnsOsq2CWdbqpaajsjd3F2w8yzKYUfwp1tHi9
X-Gm-Gg: AY/fxX4XCwyjuEoTjAkjnvFWVi5ZDS8zLiT8n5jop4jjo0f9jKtuBWw0fRPGtMmBk+A
	HMY2zyJbHRt2xdGaDxFZg9tHbUa1wr1UBikYuWkbQXqTmqMgMPGr01bJkPZ/fnILz4S3eW2ZgrL
	45SUEzKiOeHTaYJrnlf+lThzYJQLpg9Rl1m2bmiMwkcgAA/i7nQ2eh0FPIRQk0sIB6tExeHZeoQ
	EI4ukNtOyNawTl8z2hMf/bM4nzdpJFYbBTCkMjdxhKTwfG37C5rf0h8JFbrCbn9FEN3lbGmEz2u
	JzrODSs3eJt6AuvLzvfjX2hdEwQiY7E0TQKIZH6YgSgqbcqfqGQnP96KC0A0qNz0a/lfqwGN/N6
	gP/1Ox/lzSO0NKTERcw2hXRG7vqYJrrvhxiZyOpTrPS89kSThMhhjqVLJxeFDs44ZvyN9VB59yS
	wZSNJDBBFtrzasgaFk8PEIN7RXYfFERwJAWAJ+tI1h20UPEhuqWsSMtSlSqG+SYT0UyNNco8/mj
	C/Tn2E=
X-Google-Smtp-Source: AGHT+IHtF9/8gCCfZYm0qwIEIZc0jQIgrSD13Q3Kck8IHizEYRr0Rndx3rb7OqBExae0ujerBryxlg==
X-Received: by 2002:a05:6512:3d1e:b0:598:ea79:a5ca with SMTP id 2adb3069b0e04-598fa644a9dmr3696212e87.15.1765805261049;
        Mon, 15 Dec 2025 05:27:41 -0800 (PST)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5611235e87.15.2025.12.15.05.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 05:27:40 -0800 (PST)
Message-ID: <a52fe6d9-35fd-4046-aa76-ba4051a47ee5@gmail.com>
Date: Mon, 15 Dec 2025 15:27:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v6 00/17] Support ROHM BD72720 PMIC
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-rtc@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
References: <cover.1765804226.git.mazziesaccount@gmail.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <cover.1765804226.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/12/2025 15:16, Matti Vaittinen wrote:
> Resending the v6

// snip

> This series depends on
> 5bff79dad20a ("power: supply: Add bd718(15/28/78) charger driver")
> which is in power-supply tree, for-next. Thus, the series is based on
> it.

I forgot to update this. The 5bff79dad20a is now in v6.19-rc1, and as I 
wrote above, this is now based on v6.19-rc1, not power-supply tree's 
for-next.

Yours,
	-- Matti

---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

