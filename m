Return-Path: <devicetree+bounces-50452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BDF87BBF2
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:29:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88E201F225FC
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 11:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299D36EB53;
	Thu, 14 Mar 2024 11:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pUVMmRFT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6972A6CDD7
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 11:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710415770; cv=none; b=itrUoBwufrVHOMVsWErmnb3x9TK9pRtJhbq7xvUi4bOyUnhY5aRcyGhe2/cTX5PTzKGWKrIH6u57Op67G7EciWLC9c51N23AjE1+eFOOFvHE8zcGHIE//dWzvReWkGvJsyv77kcymzU12O0lz0Ca0TM6NHeQ/qTf0ZzeoXXeUTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710415770; c=relaxed/simple;
	bh=DiE9EEVgFjio7zvrWO5a1XtVxji/hH4q6/j8/ifn8DE=;
	h=Content-Type:Date:Message-Id:Cc:Subject:From:To:Mime-Version:
	 References:In-Reply-To; b=UQOOOIpivufqY8KWrrlqUVc4YuxeYPeZs0XGKYHSJwFLZMMLCLn92c2Xbv23/Mv2xrtVjoi/xhtGUjLlUu5C+T5SykNHvQF8cHTXQOoVbqyhZ/B2FDvKQnT381hbEznufMBWoT6Hcyl9eGRx0k95VCi2VU3EC3D3jfz6d+j3t70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pUVMmRFT; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-33e92b3b5c9so910143f8f.2
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 04:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710415767; x=1711020567; darn=vger.kernel.org;
        h=in-reply-to:references:mime-version:content-transfer-encoding:to
         :from:subject:cc:message-id:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DiE9EEVgFjio7zvrWO5a1XtVxji/hH4q6/j8/ifn8DE=;
        b=pUVMmRFTtQhao619MEMQwCBYD5o2nLXE6kyKPiRxn6aPQTsDWuQYk/Jw/47It5ZbqX
         xar3GZccRXpmNdBD/J+rFZAWd+xxsWAxzw8jNX/ge9arw3/fCnF4NvS9OcEzWOhEAnoM
         92oHsdV9HKyXuENsFa5hid0TvFnD7LlZr2frvFHRHzehEhW/WPuH3HQxEeMDeKXLxX7V
         6/N/9LXx2nfTIKLZs2T5GIBT4j7fnSzVxtFrUuVYoL5b6hGtlvn2P5qRG6vtUr271HAg
         LSt/fD5QOXvwiWxaQtplKPDpuLdrPa/fTzdONIem30qerhIQsjo+rz4AVg83KxpByw/6
         RneA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710415767; x=1711020567;
        h=in-reply-to:references:mime-version:content-transfer-encoding:to
         :from:subject:cc:message-id:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DiE9EEVgFjio7zvrWO5a1XtVxji/hH4q6/j8/ifn8DE=;
        b=fAAhPG0g4tIvLXnu/c6494dqiBOvm8v3Ak6yJkJ98xftBxUt43E8ach07tAcaLgQVe
         AtTx/Qto+TeEtWgx/1AQ++ng0I1pwNf3hS+1+1yPrfAxx9X+VBUnty3lqj1fBCZqiCtD
         uBkmQXbI7EHpPnEEHYdl/ot0eW/XcXt5pnKUL9gCyuPDxCXu8cml5lclB26i8zO8ysHk
         AtQukzSwXkJb7wOapxJckQ+e088QCDjj2BBQVI4QkpzpSlYyvqeICRD1QOPr1TMbjCVm
         fOXhW2/QqQHSWW7X6u+uMVqJ9CjOny7ROJixhjKYT8Xr7LoLfOh/rObkZ2QbhcoOhXX+
         9hrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNIXGr1IgdnIR6GcvhmeXXb1vH9x7NWiGrKvQSV5sKK3PTpPbrz37IsapZyLwnF4HcaA22pKBtiYkZv9Dr9tEuLasFVqWPTDLYZw==
X-Gm-Message-State: AOJu0Yzw57zom2D0JmOMro3SnaP4Ksz27KAeON4yT67+AYg8ugDO1f4B
	ildNMNr0WuNr/wKUpWv1UasVwGjm5J6eYNS7rPZDgCOtlGakZZANBs4SKTOd0Rk=
X-Google-Smtp-Source: AGHT+IFlvfFShWc43gizRgqbXtLxPN837uXmBEtemv4L9dx6zk39jQ3uF7UInFSgzfVMY1ONsju8pw==
X-Received: by 2002:adf:cf08:0:b0:33e:7f67:5dd8 with SMTP id o8-20020adfcf08000000b0033e7f675dd8mr1035572wrj.54.1710415766841;
        Thu, 14 Mar 2024 04:29:26 -0700 (PDT)
Received: from localhost (alyon-651-1-22-137.w82-122.abo.wanadoo.fr. [82.122.123.137])
        by smtp.gmail.com with ESMTPSA id t4-20020a0560001a4400b0033e756ed840sm543934wry.47.2024.03.14.04.29.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 04:29:24 -0700 (PDT)
Content-Type: text/plain; charset=UTF-8
Date: Thu, 14 Mar 2024 12:29:23 +0100
Message-Id: <CZTFSA2OG09N.3V2KR7KS6GU1W@baylibre.com>
Cc: <m.nirmaladevi@ltts.com>, <lee@kernel.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <jpanis@baylibre.com>, <devicetree@vger.kernel.org>, <arnd@arndb.de>,
 <gregkh@linuxfoundation.org>, <lgirdwood@gmail.com>, <broonie@kernel.org>,
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <nm@ti.com>, <vigneshr@ti.com>,
 <kristo@kernel.org>
Subject: Re: [PATCH v3 10/11] pinctrl: pinctrl-tps6594: Add TPS65224 PMIC
 pinctrl and GPIO
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Bhargav Raviprakash" <bhargav.r@ltts.com>,
 <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: aerc 0.15.2
References: <20240308103455.242705-1-bhargav.r@ltts.com>
 <20240308103455.242705-11-bhargav.r@ltts.com>
In-Reply-To: <20240308103455.242705-11-bhargav.r@ltts.com>

On Fri Mar 8, 2024 at 11:34 AM CET, Bhargav Raviprakash wrote:
> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>
> Add support for TPS65224 pinctrl and GPIOs to TPS6594 driver as they have
> significant functional overlap.
> TPS65224 PMIC has 6 GPIOS which can be configured as GPIO or other
> dedicated device functions.
>
> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Hi,

What changed here compared to the previous version?

You might have missed my previous email[1] since I don't see any of changes
I suggested.

[1] https://lore.kernel.org/r/CZHM5FYHS6G0.295L6AYUNZCT@baylibre.com/

Best regards,

--=20
Esteban "Skallwar" Blanc
BayLibre


