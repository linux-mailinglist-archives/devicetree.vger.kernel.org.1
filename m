Return-Path: <devicetree+bounces-143370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F1DA29829
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 18:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC8E23A52AB
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 17:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2EF1FC112;
	Wed,  5 Feb 2025 17:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gxzQnj/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E561FC0EE
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738778066; cv=none; b=GkvqNWqJPCvb54eJC5GJCbaOMVPTYZYt1O5aLWl4MY6GpKmt4EvGXTOWD29mH87bh72r5d9oht4nRUhb48Oe77WB1MH6lIYZNSFjnlUV/Ymo60mwZ+o2702M5knUgaRow4Yz4wu315eyZQlDQ17Cod2RkrUuiu6P5vSjvurgaNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738778066; c=relaxed/simple;
	bh=JDsPD6H7sq2JssXSPZq5WPbt9ev+FcdfTWuhqbRmUg8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PpZrtetqgaZ9Es0NvFodsiwu58EQCfG/E0x0ejnDic+thv3odmkgGjDfWWxeUu2h5roAWhY1FgWySjX0jsj7A38UKDMiwptATDGQxYK8R9ID5cYwIHYQpBp5J3Uof4Y8kVJ3jo1jFolABgUm90Iju4QupOPx8KAE1ZsF2OfuIcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gxzQnj/2; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5dcea5d8f16so149034a12.2
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 09:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738778062; x=1739382862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rCMKE5gzKgu/HvyulYhfT2Ja0Yjz35cFcUjQJgI8Ync=;
        b=gxzQnj/2ZHxEFKj+xZ4O7Poncc85Oa1/8l/o/CdR4I91UF7Kf5cFbHoO4HMj+TEr2D
         xVVpTPwjSLS+v6L+mogYET938HMDSvAnOPKQC6bRLvpxRVJeoX0eBao2b/gxdAVK+iV4
         8tz3TS8rk7gb51gJZPingBmGB+qz65fj3Pn1kOUX05fuFsIEg1gHXV5CSnANL3hZhN3M
         ngKGVcWOkig06kDcwQH00iGkb1hbKluPB35RWCmff5YhUgRSkrGsu3jbzBqFYDKCwts7
         6YVY6inHNkGQf8DHKYDjxGEDpB4X/0vfJz1vxawpOgHPCOIItYCubUV0TgAAEtVFtAK2
         w4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738778062; x=1739382862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCMKE5gzKgu/HvyulYhfT2Ja0Yjz35cFcUjQJgI8Ync=;
        b=IzUqqLA27sbXLZgBVKieXryHrg4wHt9np4w4vFFE/kHHLI33HQ1UL5U1asZjAWhf1B
         AZyK5YTB5ziFFOIYctVHi+EF+9KjD6/bkuFuSjXggPuq5ffshrwKyrawNqYvmvXO4laL
         9AM/79ixWcupKuQP9qQURItjOewK4PAnxD/YPGYbpQV7OAgvrp0wh0sCKX3OIZtIebW5
         cPpt5VpPiW8H1NLabdOv3wNTsahFuf4M+JktLo0I2LRvz0UDGp5bEHt9nljrKPYJHbTw
         NjHiYive5YS3D64MXvhytRiEsstsR+QMwv8dO5+nWflZqJUK4APnsQ3HMIlu2oN71piw
         yg+Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+WDBBNbX73CFh9yGgs9Da/Gv43kJf5yXRzEaKnIKl5CiK61eiiiNHwMFvBn8LoK308GWjuecsrTSk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3cFZ5vCZE7LxOXazYaI9qqM5LYOgHuOSoTQbL4lCiNPOcuCwq
	WGI8Iqi8tDy8LwIA2+TrGdzvR0ccNC2R0tqWr0mQLYz8c+2c+84hOBj0uItjIsI=
X-Gm-Gg: ASbGncvkPZK8OrIPP5kvhwoE0/2FWf0Gph+Cf+0kU1R0kXAGR7wlHnHvgoY1aM2QFgM
	WgJd15H8uDpb8FGyT7tsXfH0bI+bUxKAir0Dpcl2DUf/vPExxZFew3wd7vk0jmuExv9MSsuA4g5
	zlx8ChwNS7G9i+QJbW7ktgXrysQqpnMfusXMx2xnjY5R/eAQ9b6BhY/WbxbAnM2Go0jz5l+mJLS
	J79mzQjuqEEtVROew/YGtnYrUM6HSjSPqb0IhbfYKYnljx+nr0sxkbdq9PKd5kIAde58BKtbUGU
	+lJceRGvOFYSq/haARDlFYVCTXjL3WMUTsdh3aMoyvsEQDj3aVW5vndmWg==
X-Google-Smtp-Source: AGHT+IGwFChnLi3ypYCTZHAHkBmrw8K+5yHJCBID2rJDb3472Yl7NGdTkpLX4by9169XWQPNNr7i/w==
X-Received: by 2002:a05:6402:234f:b0:5dc:da2f:9cda with SMTP id 4fb4d7f45d1cf-5dcdb77a00cmr5000144a12.27.1738778061929;
        Wed, 05 Feb 2025 09:54:21 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc723ea218sm11385857a12.31.2025.02.05.09.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 09:54:21 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] pwm: pxa: Use #pwm-cells = <3>
Date: Wed,  5 Feb 2025 18:53:59 +0100
Message-ID: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1673; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=JDsPD6H7sq2JssXSPZq5WPbt9ev+FcdfTWuhqbRmUg8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBno6W3nGyFzH2RWbXMNkDi7NRuJZY1Mdd/uPZtB mi/Hqxh8yKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6OltwAKCRCPgPtYfRL+ TqFjB/4mMGV2Y07JilIJeoyM64TvtCXPufPc3lftW4t+VffV2nwQ6OLwLX+5YEccyi/f9YSA+d0 4WxXZYZCfQSn0TiqfSAwXm4uPNwjiJWWvmeEXDGjo65qwGSrKuqXLHomRbjgaO/U6p1z/F5ZWNN lnhWGvWiVP0jUiOqw8Rm5Phh22liOqmuqpgZN84al0Oab0/Sa3BUqg0hNTgc8KWGB2ZSRQzOjuD 23PAkaPxmgCnvt5H7iFAgV3fcjOfLdR8DF3qRmkoh+NQXfbAxzfua2b1tw7w6Q44rFH/1vpTiau /AF0kWibrfiJUjW5xK7cjmhO0scrEAJSxr82XPZ8ZcLJ8i5U
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

For merging this series (assuming device-tree and pxa maintainers agree)
I guess keeping the patches together makes sense because with the 2nd
patch applied but without the 3rd there are a few dt-checker warnings.

So I suggest to take it via my pwm tree as I guess drivers/pwm/core.c
has more potential for a conflict than arch/arm/boot/dts/intel/pxa.
So please send Acks and tell me if you would need an immutable branch
for pulling into the PXA tree.

Best regards
Uwe

Uwe Kleine-König (3):
  pwm: Add upgrade path to #pwm-cells = <3> for users of
    of_pwm_single_xlate()
  dt-bindings: pwm: marvell,pxa-pwm: Update to use #pwm-cells = <3>
  ARM: dts: pxa: Use #pwm-cells = <3> for marvell,pxa-pwm devices

 .../devicetree/bindings/pwm/marvell,pxa-pwm.yaml |  3 +--
 arch/arm/boot/dts/intel/pxa/pxa25x.dtsi          |  4 ++--
 arch/arm/boot/dts/intel/pxa/pxa27x.dtsi          |  8 ++++----
 .../dts/intel/pxa/pxa300-raumfeld-controller.dts |  2 +-
 arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi          |  8 ++++----
 drivers/pwm/core.c                               | 16 ++++++++++++++++
 6 files changed, 28 insertions(+), 13 deletions(-)


base-commit: c98e66144b7d07ee9a3ca8241123b628a8ac0288
-- 
2.47.1


