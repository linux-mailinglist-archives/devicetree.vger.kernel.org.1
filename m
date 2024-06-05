Return-Path: <devicetree+bounces-72761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1248FCE8B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 15:11:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD9B41C24E3E
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 13:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF37B193074;
	Wed,  5 Jun 2024 12:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="jjCKtKic"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F6514D2BA
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 12:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717590462; cv=none; b=nYMnwQn2ouBHrgUsO2L7zIJwdI0znOrVPnSByYjBqMTmWWyFeJwEudFzA+mprrPcGcZr2QVphFXb8Q/AvfkJT+BnjD8tydtgdf+svkczc1kooXg2lAsP7lKSNEepPceUL+pRhobI4rFkryiQZuJbsO7UMIXSHhZ9eFwcT7BMmUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717590462; c=relaxed/simple;
	bh=ye7thy+/3m6Zqj7SbdLqlPoBsKgCZO4q82/NkiqrCwg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OJ+RApxM4E39FFRr8VOBfqvPPVsnEa1mgrOleiTXzJWthHX5pmpcw7OPg9AysfY//zphlknQ4PQYiNdzrQDQ0yvNjbRIiJFPaGa5LNe0EzClUu/QDyzsouWdLcGjW2i5/3wieTeVjMWRVloo/KRwg9wiyQjt35R2DihZ8mG+4pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=jjCKtKic; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-35e83828738so1053705f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 05:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717590459; x=1718195259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rJu4ZVYDYjYu/Y+oCiKT9LoXMtfjh5wGjAB/2kqB2wk=;
        b=jjCKtKic/idn1muC/jKl8JIbZ7/6yTzjKXxFwMRBbRwOH5iveQF/+sTAI45Sh6iynp
         36VUi/Cb90sNKPNEuTuvm0irMOqbpVJVOeo8HeoQsfS0fV4ZS3dDzEiG7ZfhEAvjxFd4
         e6MkVU8X3PIVCAIIij9bNeb0b5/a8pGWeDhScqBcpFMy3APClxrnZvjdt5jDKKM4+he+
         tx64CX8EIZ1b2yLgFrRK7Voz+7uNkuExAWBrzRtBCQtII4aiRy2mQYyZKEk4eNGi/lcv
         5QI5+8Y+cs8W+iSDtn4sHHdDYpo72Ohhv9LmMMfws0tpPyaKdyH8kUCxSgdOQEJBXCsp
         Rgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717590459; x=1718195259;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rJu4ZVYDYjYu/Y+oCiKT9LoXMtfjh5wGjAB/2kqB2wk=;
        b=g3rHuAI1cB+2mY0PxQfgjfNgHhFXhbrs80qdQ44qE0yjLktZlqCQBRyz3qx2ZM43t3
         HYsY2yKrUikMT1EF9a2NfbpRoY4nC4PhNrH0GNFkUeCRabe4nqtEOthPXb5P/FSrkXl8
         iNEsECOt5AXER2UYsA9yaUECN+kwDg8KZcRfG3LJ+U8A/RD1EEOiHV9B+ABiWstgFWhm
         29H7GzV3aXyIGVDiXH1OgFJxyJ02EkJ+yaRCYn4hmbycscg7lbb9qdDMo/SMX8vIPebb
         j0AcI1I8NMvUirxy2PAzEynvrv/7o/VwCB/lJ1Boy0J+QvdPg8Q3rnqIssg8xEc+KIyn
         uzGA==
X-Forwarded-Encrypted: i=1; AJvYcCXn9M/MKslWUemZpMq4njPQofeXjHZfyYteVFrVQ89txu+CEn6L8lE5eq7jriiI1/6ZXcrzfISGFFoju9lAE3E8xq8Q3C+7LWdHCg==
X-Gm-Message-State: AOJu0Yxu465axuLrpRnnZPIIakWOOcVXgOJDcPRIVNfLsyEgpWxThAXA
	w/ft15KXEeOpcMJMCavZg8txbcs9vyaOgl1d027YOhkHknb3YwpZo8wclfK7wxPe9849/B1kPJX
	/
X-Google-Smtp-Source: AGHT+IFVJVUC13ysU+7mF23cQ0ytETMFziGqtuOyTgLfDsFL1z1ZE0h27PO06RkLagYGFk1T/JjCig==
X-Received: by 2002:a5d:610f:0:b0:35d:bdb4:f623 with SMTP id ffacd0b85a97d-35e8406782emr1861012f8f.23.1717590459187;
        Wed, 05 Jun 2024 05:27:39 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:d3dd:423:e1eb:d88b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04cac3esm14383619f8f.39.2024.06.05.05.27.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 05:27:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v9 0/4] arm64: dts: qcom: add WiFi modules for several platforms
Date: Wed,  5 Jun 2024 14:27:25 +0200
Message-ID: <20240605122729.24283-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Hi!

Here are the DTS changes for several Qualcomm boards from the
power-sequencing series. To keep the cover-letter short, I won't repeat
all the details, they can be found in the cover-letter for v8. Please
consider picking them up into the Qualcomm tree. They have all been
thorougly tested with the pwrseq series.

Changelog:

Since v8:
- split the DTS patches out into their own series
- Link to v8: https://lore.kernel.org/r/20240528-pwrseq-v8-0-d354d52b763c@linaro.org

Since v7:
- added DTS changes for sm8650-hdk
- added circular dependency detection for pwrseq units
- fixed a KASAN reported use-after-free error in remove path
- improve Kconfig descriptions
- fix typos in bindings and Kconfig
- fixed issues reported by smatch
- fix the unbind path in PCI pwrctl
- lots of minor improvements to the pwrseq core

Since v6:
- kernel doc fixes
- drop myself from the DT bindings maintainers list for ath12k
- wait until the PCI bridge device is fully added before creating the
  PCI pwrctl platform devices for its sub-nodes, otherwise we may see
  sysfs and procfs attribute failures (due to duplication, we're
  basically trying to probe the same device twice at the same time)
- I kept the regulators for QCA6390's ath11k as required as they only
  apply to this specific Qualcomm package

Since v5:
- unify the approach to modelling the WCN WLAN/BT chips by always exposing
  the PMU node on the device tree and making the WLAN and BT nodes become
  consumers of its power outputs; this includes a major rework of the DT
  sources, bindings and driver code; there's no more a separate PCI
  pwrctl driver for WCN7850, instead its power-up sequence was moved
  into the pwrseq driver common for all WCN chips
- don't set load_uA from new regulator consumers
- fix reported kerneldoc issues
- drop voltage ranges for PMU outputs from DT
- many minor tweaks and reworks

v1: Original RFC:

https://lore.kernel.org/lkml/20240104130123.37115-1-brgl@bgdev.pl/T/

v2: First real patch series (should have been PATCH v2) adding what I
    referred to back then as PCI power sequencing:

https://lore.kernel.org/linux-arm-kernel/2024021413-grumbling-unlivable-c145@gregkh/T/

v3: RFC for the DT representation of the PMU supplying the WLAN and BT
    modules inside the QCA6391 package (was largely separate from the
    series but probably should have been called PATCH or RFC v3):

https://lore.kernel.org/all/CAMRc=Mc+GNoi57eTQg71DXkQKjdaoAmCpB=h2ndEpGnmdhVV-Q@mail.gmail.com/T/

v4: Second attempt at the full series with changed scope (introduction of
    the pwrseq subsystem, should have been RFC v4)

https://lore.kernel.org/lkml/20240201155532.49707-1-brgl@bgdev.pl/T/

v5: Two different ways of handling QCA6390 and WCN7850:

https://lore.kernel.org/lkml/20240216203215.40870-1-brgl@bgdev.pl/

Bartosz Golaszewski (3):
  arm64: dts: qcom: sm8550-qrd: add the Wifi node
  arm64: dts: qcom: sm8650-qrd: add the Wifi node
  arm64: dts: qcom: qrb5165-rb5: add the Wifi node

Neil Armstrong (1):
  arm64: dts: qcom: sm8650-hdk: add the Wifi node

 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 103 ++++++++++++++++++++---
 arch/arm64/boot/dts/qcom/sm8250.dtsi     |   2 +-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts  |  97 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi     |   2 +-
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts  |  89 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts  |  89 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi     |   2 +-
 7 files changed, 370 insertions(+), 14 deletions(-)

-- 
2.40.1


