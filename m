Return-Path: <devicetree+bounces-47878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CB086F0F9
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 16:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52C191C20AEF
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 15:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE721B267;
	Sat,  2 Mar 2024 15:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vM8rwEgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD6B17C77
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 15:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709394752; cv=none; b=nV8xnc65XDcEihRwdaNBKmuy6hzMocpU0cuG9olo8urHLeNmQa1wkiqq2VxmwmSLQszTvkKeR8BKIkyqweg3IlLy/Gj4Rcurszdb7i9Dxlc656SLUmS2rQxG0hB1mjjB5ZEtbwPILJf3zuQtFxo4UqlzexZao4AlppELBg9Nuys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709394752; c=relaxed/simple;
	bh=IpeQuxZYHbOib0UXMdpmSgRLjR8MvxoaSxSpZYZToPE=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=IWrHj9vjvGpHCdw1uP5Y1Ro11H/79abOoWPRd+sp0oPA2LmXWJZjs9Z7ZfYLF6zMOr3lmOfzAKLj5eLnN+qilbuWJUPLM8ZNdXQZ4H3H0Au3kSsYpxPew4V48mD6A3EmBZFxm0YL3I9vI+sD9Hs85HR3pYFHAOgJaQJ2feNgRvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vM8rwEgN; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-412c83a8259so12242165e9.2
        for <devicetree@vger.kernel.org>; Sat, 02 Mar 2024 07:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709394748; x=1709999548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HFHn5+gTrYvZdU2UMo/5Uu0slaoxEdGH237gIhxi8Fk=;
        b=vM8rwEgNt86TgO93LZO8zpZ26DtyGOWECruz/CQ5hcynxeX/kKPL0C1+E4se/yGGH3
         eKswlZSk+eq5N5NcBmR349G4cvIscSztS1QM11ZmMm8GSrBHJj9F3nMxDbV1LpKKNVPl
         4YmGtOzA8k4x/yuLLij1ngC1fq6PHGOZLc1NhCMNnepvsrmezHeyCbPrlUnBhM5yDyDZ
         TQiMXjVkPpxFS0O54cvmZs/Gi8MBHlfOUfi0OeYipBMPsP9BJaq6SZ9tfE/OuMShV1tg
         WX1bO0m8UEEP54bEXS67GQ+hgeTINRCOvjnCO8bGPFxbfBlJCCnYqXIU6TvYfhI1CfQS
         Mk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709394748; x=1709999548;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HFHn5+gTrYvZdU2UMo/5Uu0slaoxEdGH237gIhxi8Fk=;
        b=E/L0Vzy+2bGX87qpEBY432MbQ5udj+hKiCXpLesFEnM42zAYHAaAkfSFmJu/jVqT0J
         mSXBz+Z5ZQ1CU/boiYLYNx19AcAGEU/hZ5K1we2J/2502lpml3fXC3qmmgBZhd2iubL3
         fL0WLx5YNEwKcCqlHl3w1bmCMNdtUHKzrtNxC2lHFDjbz/cMhIkHjScu3UDm+P03pY+n
         mpANKmg+aVrm2p62HY6EvnMB0GLgTpz9VPimqK+NX9g8xeunwaQpEorul0+TBLNvGVMN
         fJ6fzbtPSYbhygMsmuQNnxraCKUT4MRWqkc/1dn7KQLOg372XsYteytFtV6st1OSlx4t
         0Vow==
X-Forwarded-Encrypted: i=1; AJvYcCWF0kyIeiZ0UAovaAs+UeqZ83PJsR6xcp8qml1x4d7h42n0yC1dcf+c8Ye9+it04DCzNzNOWxhI4aOQ2DLUZEq0TTc7F9MA8x+PQg==
X-Gm-Message-State: AOJu0YyQs+/jgP9PEvsRIbUuABAm7wmrwztr+PVMkrArnUB+wPbA+Gp3
	kVdzVTYyybB4B8g8oM8EuarR22/BB2IeCX+kaiQcFHSUA1hYZTCYUpHRbWE2zV0=
X-Google-Smtp-Source: AGHT+IHPEsKg9YL345VNJehawUEGJqX6jI1a45uLPxbSI3cJXqB9wbFooKxQnCv4HflprTmT7kTmXA==
X-Received: by 2002:a05:600c:4f44:b0:412:a5ed:bb57 with SMTP id m4-20020a05600c4f4400b00412a5edbb57mr4177808wmq.31.1709394747993;
        Sat, 02 Mar 2024 07:52:27 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:a62b:dc91:b659:dbf5])
        by smtp.gmail.com with ESMTPSA id d22-20020a05600c34d600b00412d6357945sm2015404wmq.27.2024.03.02.07.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Mar 2024 07:52:27 -0800 (PST)
References: <20240221151154.26452-1-jbrunet@baylibre.com>
 <b6jyherdfnehu3xrg6ulkxlcfknfej6ali2om27d7rjmwncwxz@3wrtx6sv4xm7>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org, JunYi Zhao
 <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v5 0/5] pwm: meson: dt-bindings fixup
Date: Sat, 02 Mar 2024 16:50:11 +0100
In-reply-to: <b6jyherdfnehu3xrg6ulkxlcfknfej6ali2om27d7rjmwncwxz@3wrtx6sv4xm7>
Message-ID: <1jsf18skat.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Sat 02 Mar 2024 at 11:04, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de> wrote:

> [[PGP Signed Part:Undecided]]
> Hello Jerome,
>
> On Wed, Feb 21, 2024 at 04:11:46PM +0100, Jerome Brunet wrote:
>> Jerome Brunet (5):
>>   dt-bindings: pwm: amlogic: fix s4 bindings
>>   dt-bindings: pwm: amlogic: Add a new binding for meson8 pwm types
>>   pwm: meson: generalize 4 inputs clock on meson8 pwm type
>>   pwm: meson: don't carry internal clock elements around
>>   pwm: meson: add generic compatible for meson8 to sm1
>
> I applied patches #1 to #3. This doesn't mean #4 and #5 are bad, just
> that I need some more time for review.

No worries. The change in those, especially #5, are pretty simple but
the diff are indeed hard to read :/

>
> Best regards
> Uwe


--=20
Jerome

