Return-Path: <devicetree+bounces-143587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B919CA2A816
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A33F718853E2
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43C722C352;
	Thu,  6 Feb 2025 12:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MfvZ3Tlo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B702288F9
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 12:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738843609; cv=none; b=gdzxUXiCTPGH25EgPS1e7DkkMJIjOYsZPFqf2lHo1VF3zkjLoMYPK1HSvWX5TYeeohcWkqYo/NJPx1JDvBfRac0QHUpRD7NKrldqyVkdux5xjXvMCbSCI+BHxWyY6CH5mgsiA+3xrKUnE0BtRIMJeVCGh1Bj78zqmf3H7BIVs1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738843609; c=relaxed/simple;
	bh=P+DmhZ5fsqW2fWssaaB0vb1pG+aNe17OBNu8J4YPM98=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=QwRD6VojC8+r4cAG0T1iykoZrQQQ4KELeJsMQN5q7qxP/fH+DE8Fv3+mj51QP/VXMqUJuQNp473euThYXkN63PWMfQ7EDnzg/FkLFBzMPI06X3QztYXIbbExKkb+ACQw/FhVZdsY3U5XxJyYvnAHp7Yyn1RWBYfq4Bgb1bpVmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MfvZ3Tlo; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-ab7740ca85eso91079766b.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 04:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738843605; x=1739448405; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YGdBF5amQn6183NcAyaMY643bdra7yDi7L3ZDBI8C9M=;
        b=MfvZ3Tlo9CK8rY1sHUtSgNL45kqRdrm4et2R4BVIoeBhVNwBuR4YUnmiYVqiTAw0QE
         n2KN2RNq8Z4XSH5NqoUJorEXQUXuAFt8TwNF7eHZXbPAiLi0c0p8NLWP6B8VIxKU9Bac
         ukzkWq+u6A5JSppKh8uon2vccWwMx/KQJLcso/QRtK81zW9tDimTo2FV1mFwjlnGW+am
         cstdraKmuf+u1DJmJxzFPVCzE5H0LhDa27NXxYQ87nxVJ8YBDifv4/juvq31nUehJ0LR
         H8TGj8r110jbKFseAqRAqfBC6C/rvYMapu/AhpBLQ5AhAzccpCZohe79kMpryda9Il7p
         zXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738843605; x=1739448405;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YGdBF5amQn6183NcAyaMY643bdra7yDi7L3ZDBI8C9M=;
        b=pBzyCwgRPTZ+Dn0LgesBlwBbGzxNVqwR09PNMS9GlmPu8A4fDvj/QpwJpfbkGWgqPB
         38Ug+CCi5JTO1ZmIN4ho8OrtNocb1DLPrKvpJQoNmS0cY1c+ojIHAheADiUQcA6rmptg
         sdLZpiv1YaAa6yLNetFKu0diycg/D1I8tCgLW1e1FFpi4Lk2CEOqZf9pjfBYyj6G4CVZ
         9oS9KFKbSYWUomNxGJtzT7wDVg3fwcFfMybux8Ul3zE9PVB3OfCBhIZuM0MfxvxocA27
         atCOSRFQ1Rzr2D0nM8PDJeR4BsdPvZDx6DgSyn7m7n5VWKgfU5MbXKQcqE89OMhaMEAn
         I1gA==
X-Forwarded-Encrypted: i=1; AJvYcCX8XsYTwvB0i5W2Qo+1RcXUcmnj3R9DF+pEKfUKxFbhT+MDEtsdu6n11JeDn0EQ6zskf22Axb81kNz2@vger.kernel.org
X-Gm-Message-State: AOJu0YyTT4R1bBPxBW342UaiJWCNi6Qf0vjPvwURxyb++4UFcalI71WH
	tYjt33ijjR4UDjYS7jKkzeAGSK/RtaxLbJ2th5tMKPyZyC02PVINeiuGhyogPG9dbFhS4wYX2Gw
	tbAVzCA==
X-Gm-Gg: ASbGncvRtF6v2Fd+wVCmpfdeZCizPitAKW4NHSpCzQI+floPbm6D1ytoRJeMsMTCql5
	v8hERikburissz1bsg8mMZRVoVFIFC27zzdnUEYnZW+MiIZHr2jbpD4akyzTZa8FPwz+4KbrEU7
	oQviGDJU7EGzvnpIqZpnQQLWSwuq9RPlDbi/o8CqnwbZ59t4XpqHf4xc85ouy5qeJrz2K51i/8P
	EkgWIYZhEUc21rvsdQM0VnROKZXkMO8rGQCtg7BUHDUM5q6nr1QxKgg639JgSYKdBvTkkHdNBs1
	z4Htv40W3UmbgA3bMaB8BjzFXFPm9b+SY3ZulBXKGFi/za7P9mzBonl73Q==
X-Google-Smtp-Source: AGHT+IHr/BfZzmlAYdHkONK5DIkNc2MOki3sCNB0+BjvRciFMqB5iZ1wTz2F8JJQatrKAPl5mZWCuw==
X-Received: by 2002:a17:907:6d05:b0:aa6:6e10:61f6 with SMTP id a640c23a62f3a-ab75e322b40mr566158166b.52.1738843604642;
        Thu, 06 Feb 2025 04:06:44 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7732e7089sm90262266b.95.2025.02.06.04.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 04:06:44 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] pwm: pxa: Use #pwm-cells = <3>
Date: Thu,  6 Feb 2025 13:06:24 +0100
Message-ID: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1886; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=P+DmhZ5fsqW2fWssaaB0vb1pG+aNe17OBNu8J4YPM98=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnpKXAtvNUKlDIiKRsWNc4oyxCFo6Grjdo842L2 udPu4gsGnmJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6SlwAAKCRCPgPtYfRL+ Tp+9B/0R1HkHEHRU6lkinzAWJleWmmSCWIyIEVGQG4zUoQtf/j5DA0sacW/x5ONM9h62C/Kw2+y +0qbisvUZZia5cZwrm6U7p8g5rXBzXUrIRRz4fdXbKoLRa8mPOAtbrzAx0O4DPVvmfDjv/ezG9O KyJ/u7oU/x1Zl1DoIdSJ7mXZ1p5jczi1/1I5d7cy1C7NNdgQn2290PTgXIoq6N+aSBOcgQ1hxRR PPLThy7HagPJmewucOC9xEL3EQWvsVKO7vo+OLfFkvujO6IgdZJ5bpxYvIP5iIFUsF497yNWOKk BbpVuEQ5Ep9aEgIzUvWwN5n+ZtqJLzLT3Vfl8E+YQtezJviW
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this series' goal is to soften the special device-tree binding of
marvel,pxa-pwm devices. This is the only binding that doesn't pass the
line index as first parameter.

Here the #pwm-cells value is bumped from 1 to 3, keeping compatibility
with the old binding.

The motivation for this was that Hervé sent a patch introducing pwm
nexus nodes which don't work nicely with the marvel,pxa-pwm
particularities.

Changes since (implicit) v1, available at
https://lore.kernel.org/linux-pwm/cover.1738777221.git.u.kleine-koenig@baylibre.com:

 - Use #pwm-cells = <3> also in the binding example (*sigh*), pointed
   out by Rob
 - Add review, ack and test tags by Hervé Codina, Conor Dooley, Duje
   Mihanović and Daniel Mack. Thanks!

I intend to take the first patch via my pwm tree. Assuming the pxa and
device tree maintainers and bots are happy now: Dear pxa maintainers,
please tell if I should take the whole series via pwm, or if you want to
take patches #2 and #3. If the latter: Do you want to delay application
or should I provide an immutable branch for patch #1?

Best regards
Uwe

Uwe Kleine-König (3):
  pwm: Add upgrade path to #pwm-cells = <3> for users of
    of_pwm_single_xlate()
  dt-bindings: pwm: marvell,pxa-pwm: Update to use #pwm-cells = <3>
  ARM: dts: pxa: Use #pwm-cells = <3> for marvell,pxa-pwm devices

 .../devicetree/bindings/pwm/marvell,pxa-pwm.yaml |  5 ++---
 arch/arm/boot/dts/intel/pxa/pxa25x.dtsi          |  4 ++--
 arch/arm/boot/dts/intel/pxa/pxa27x.dtsi          |  8 ++++----
 .../dts/intel/pxa/pxa300-raumfeld-controller.dts |  2 +-
 arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi          |  8 ++++----
 drivers/pwm/core.c                               | 16 ++++++++++++++++
 6 files changed, 29 insertions(+), 14 deletions(-)


base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
2.47.1


