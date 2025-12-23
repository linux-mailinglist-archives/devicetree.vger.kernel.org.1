Return-Path: <devicetree+bounces-249031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E14DDCD8983
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84B44301A70A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F645327210;
	Tue, 23 Dec 2025 09:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EC2ZUeGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C3B326955
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766482371; cv=none; b=B49l1l+cWF7yplyx5CZLq1oa2qsNuQh9lrZDC7v1NuI4/99T1v/ICWU4GjmLm8RKrsGSY2Kk4ASSfofBKylFbjDwSOgFZcmztmxqEhPzvdwJQRPGp+MIaUtGkf8qRu8cp4W7XFPRSCsZgxsUEjd04mz6s4GxCmTwVRGU3N2kQ98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766482371; c=relaxed/simple;
	bh=/Iii+N1pB+IX8ozivJEIczKINrVHiSyEufjWtYoS9l0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UpK5HLL2/6fYKG0+fDr/W/afgcx2gks6h3Ui3HJ29KjTac/XHOUMGJIaqljGD+ODiOs9wbWTYBvDptGnG973JDTu5bLCKB3pN+o3/veqAuyqXchkK20qzlVkmDFwvg82p7Dfx/8XZ3a+FH1ii8BW7hFegljQ7sp/pNWZIX/RrFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EC2ZUeGS; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4775895d69cso20323605e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766482368; x=1767087168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eAEySv2XWlwHuqdOI9fzzrs359mLloz83GdyEXxt2mU=;
        b=EC2ZUeGSuM8CwnRloLZx2AuqZgK3J0RtcPxKLIaqLsObdSndiYv1HJ0pel7CBW6LoH
         kt5V18p726ApXWhiiN9Mm6I2NEAd+FcQtkQZXVEaCynvHmngDJrTikF28qZSWo/Pqiub
         yI6aCXIbbYMh5KHH/EQdKSokRk/ENS0eO4aK7OYO6qwvEKUgBIlaymyYjhLiVpekz5ea
         3+D31oace2S5F9U5XlfBVh4MnRQ5iHhI64pYRMtR54hS1+582ptSRucetS0UIIcrB9HQ
         qakT5dfF0gFS7iImfxGHGUwvPNiILPAIYtb+sEqj8UKIDOPLbgUHEUKB6pCecPdnDa42
         nwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766482368; x=1767087168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAEySv2XWlwHuqdOI9fzzrs359mLloz83GdyEXxt2mU=;
        b=eAjhQb3AKso2pi5OZYE2TTWz6hITfnjgeI3+O8AxbmAQPN/d62trE8aNxwUPC4jf8r
         Z1o/HWILec5Kk78sCt5DdanTYmpPY7V03unezhIGeE11tbZaD4tzL2Eju0Z2sylS0ip0
         bm7V8xhAyd3gDCloruERs4fHw+9kOgA5n7V/qggU+f1zOhFIazk+6lFROCDaFhGl4VX3
         Pi4bU/aRQS33utsCrkMgjcnknIx298Z4Uf1FSdISlyaSktyqYTqc1fcj+EPaxYzeaiiI
         5i0rs6M4pecw7Vc9La82KJqW4+flmK5NOuwn/5EjCkb0418DWSZIiXlqgOu1y+y4uHvE
         wb3Q==
X-Gm-Message-State: AOJu0YwiKmMwAxw7ao/4KGkDodNkbSYw3M/eSFw3YJfFRIBWN/bIGwAr
	jTtoc2iVhsx4UjaE5+HnvPF5b3nA8XzpVCX59TMDjkdW5icawe4U3paN
X-Gm-Gg: AY/fxX6Es49qBEF6pZuJjYX2yEPPwzVlYocy6HK5VpnARPh6oZB47eFNVpHRzcJF7Lk
	Rm7JVwes4kUpIui9fw6AWo5KSq8NW/7tZWvwCxTD4wk5Kh6WGecbfIwcGZEUca97QmlIhF01dBj
	43liCbXYBXaH2gFpNNrsK2gMhMMbSK6ZK4o+6kZoSGKN+bQ/IPtbr6+LwIC/sjviLHgOOzrhnLD
	kmQpE3BspkRXRStlr2o/aHNB8fFr+BqDWwiykoPxqa2x8rzgZEuXIAHha8sB1XBCBR1oM+OzCYd
	f1XIfUt0tyh2p5xpsG2apOzEUnGLXQ9z1LxulKR+oT0eeR//9jnHAWl9ZDc3LNsWvyrt51yLv+e
	eh0dNkhllqu/yLLwNzJA9hQob+tl8enZU4FtCIBkSd62ZKs/kwV1q+s6DpNBMmsB7Rb3kPGkX1q
	LG
X-Google-Smtp-Source: AGHT+IGvi6J82Rgzr2zCOEmBeT5lUa3Wx78GAwGqctUMSFJV6I3evSDSyLrVDEeoqnj/mU6Cj72pdQ==
X-Received: by 2002:a05:600c:37c6:b0:47a:7fd0:9eea with SMTP id 5b1f17b1804b1-47d1953c178mr142674055e9.3.1766482367600;
        Tue, 23 Dec 2025 01:32:47 -0800 (PST)
Received: from xeon ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be272eaf8sm282891485e9.5.2025.12.23.01.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:32:47 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Ion Agorria <ion@agorria.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/1 RESEND] ARM: tegra: add support for Xiaomi Mi Pad (A0101)
Date: Tue, 23 Dec 2025 11:32:35 +0200
Message-ID: <20251223093236.6006-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Mi Pad is a tablet computer based on Nvidia Tegra K1 SoC which
originally ran the Android operating system. The Mi Pad has a 7.9" IPS
display with 1536 x 2048 (324 ppi) resolution. 2 GB of RAM and 16/64 GB of
internal memory that can be supplemented with a microSDXC card giving up
to 128 GB of additional storage.

This patchset includes some schema changes not yet applied. They can be
found here:
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250909143432.121323-2-clamor95@gmail.com/
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912065146.28059-2-clamor95@gmail.com/
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912064253.26346-2-clamor95@gmail.com/

UPD: patchsets above were accepted

---
Changes in v2:
- added fuel gauge interrupt
- added CE gpio for charger
- removed always-on for vdd_gpu
- improved pinmux configuration
- added camera regulators
- removed usb@70090000 (already disabled in common tree)
- set correct modes for mmc devices
- removed thermistor thermal zone (not used by mocha)
- fixed pmc interrupt polarity (removed interrupt inverted prop)
- configured OTG support
- removed bluetooth reset-gpios
---

Svyatoslav Ryhel (1):
  ARM: tegra: add device-tree for Xiaomi Mi Pad (A0101)

 arch/arm/boot/dts/nvidia/Makefile             |    3 +-
 .../boot/dts/nvidia/tegra124-xiaomi-mocha.dts | 2790 +++++++++++++++++
 2 files changed, 2792 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra124-xiaomi-mocha.dts

-- 
2.48.1


