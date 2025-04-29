Return-Path: <devicetree+bounces-172019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F24AA0FC7
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BE0C16672A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7992521ADDE;
	Tue, 29 Apr 2025 14:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="YRBmW7Jo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA42B21ABA6
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938718; cv=none; b=JDP5CIRDYR1hUmNV66GITB9sVTQUuh+WwQCR+1Mrt+WioPlq/OuUQYANxLBpoKwsknEkFpRkQT0ZWjvlXpriw/DoojHuLsyOSRqmSPgKoCpOqSD/2V7DL6JNyCbNclcIUg1PlZrWBF85UMJocmX4NOEYOw9YA62y7/vjpHC6UXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938718; c=relaxed/simple;
	bh=2PdqbEbagwoDuKzEj0IRmpbhZpPVeui/bIiI8irZQ4o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RHM4aRJaCViQZ7a/c8NTAO2lFOmsQVLktDfwXhWEWGLBfEfvVm8QE+Ht3lOE9/WkQxOhzAq7jLyYMS0NqHW+UNYuD2FX/oP9zY/HzoG45fUPrQGvNcDyfKFD7mBCWn3uJwoIUZeYPRqGoYGi7yBinG7KvJmEqfTUMTkdN2mZR7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=YRBmW7Jo; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 928B33F5A0
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1745938202;
	bh=52MijEJOA2wvCQcL6Go5NIekwbrP8EYQEpSc/TVugz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=YRBmW7JoKiSIAha/Nr78pmeKdcbBSOQ1Bu7jq+vxh8np5ZS7NENj1RYYlORijaVXl
	 9JXzD3FT0XJQCoqt1DapTbv7qgusyHWqhEorw+klAwxcBpLu1Oa9adxK7W9+3JXTxe
	 Hn2oG1WaeyOFB4Lr9J2QQCkKHBzanhotR3DV9Q14AQf4s8sC/TX/a18Wii5R1ErZvJ
	 h7xYfxJC++WUO2QPoOub6jrj4W03bafnPdG5LYTc11JklFwcwirRePiczL7SRJl0Ns
	 eunPYf07SP2Gbc2ipGaWXW8KlG2VijSAcnChaBmpy/6NAZtAkCsyiRGsurlbIwcn0r
	 03hDFI0m6ZIog==
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39135d31ca4so2340881f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745938201; x=1746543001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=52MijEJOA2wvCQcL6Go5NIekwbrP8EYQEpSc/TVugz0=;
        b=eHZSFhBWHapQmQ+zB9sqOzU5fGy0DfXAXzMQegv3iiD6JW4a9++riOgAU37HVaUrMF
         DjeD/cCCm9ju2MDzPHfrxESdcUw01M7gLhMcEmbxmjOqjOv5OwDkiaoTQGrPkCrRXEWn
         RyhJRqbKPQYmXlH15sPfg2enRsGAc1UEU5CrEMd3JSbsWUu8d7GCYfalC4jZ71Tg1BiJ
         HxJuqNybhC8Ux+KPQKIkPCVI65CAbbfcFHqc48oG+5urXH1OuQWUzUkIkCmXjqaPXKJQ
         or5UIsGVws5YFBc1mmbe31h9ZYz5PyVjJryTZI0CKRXPa9YaxRaw7fk1jfJbNrFlnu7g
         SllQ==
X-Forwarded-Encrypted: i=1; AJvYcCUScD53cxrDMjmQsF5OOyAuisS0e6RCyBh0fJ6jl5Tsc/8v71pY15yF+P2AfqeV1afvp2ha3LSIXGHo@vger.kernel.org
X-Gm-Message-State: AOJu0YwG+pa8Yp8ieL3ZprorIdsVhcjKEs7XO4iXeF06L5ZnlK1l4DRg
	bTFaPHnZwQ18wmpaJZTEPbejJvwy3lJAs7UEnN+tOJn7eJokAOtEB1TAAgy7WwH6JLWstzPMhME
	Kbj7r1i4l4NGjjWEhxZsgHKVVvtrpao9mWmtvkIGjraRwMvZ14LxhGFoCs3wdRBk4nXzkakhzAm
	I=
X-Gm-Gg: ASbGncsjZc5jcsrmpNlcar77S5mltZppHtBQ26LKXUTolT2cByAOcV9/hhohLRHRLxA
	H6Mwd4D5Shor4DLh0YJKU61ZUC+/Io8Qb3NblCd1kaBW5Ar5/OVI9PxazgdMaWtaD+3aP3SFl1k
	D5LnyXw2GOsOl7RHdFjn+oYJhot/wvNaEjMp55m/GtSz1AD5K/wi0vlCUoWtQagNHVDHsHcr8GU
	tt9sIaYLdPazbdLsg2Q2JSFZxFxdbx79iuKIpvo3ck8b1z3Bpa+qyRzwJ0euRcgvA05GX9LK2LP
	gHlWWOgWJMkf1fMiF0BSKbBsWq5bGzIn9qemhprm1HaL7LgkAKMKc72p
X-Received: by 2002:a05:6000:18a5:b0:3a0:8c01:d463 with SMTP id ffacd0b85a97d-3a08c01d90bmr2630923f8f.9.1745938200825;
        Tue, 29 Apr 2025 07:50:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnKBHWKNLptuYZLJZBRUoe7eBhk55Kl8aqDH7g/w/SK5bZ6Awe0yTGofYm3mWix+gf5bziAw==
X-Received: by 2002:a05:6000:18a5:b0:3a0:8c01:d463 with SMTP id ffacd0b85a97d-3a08c01d90bmr2630899f8f.9.1745938200468;
        Tue, 29 Apr 2025 07:50:00 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073c8d1a5sm14498765f8f.13.2025.04.29.07.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 07:49:59 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v4 0/4] HP EliteBook Ultra G1q support
Date: Tue, 29 Apr 2025 16:49:53 +0200
Message-ID: <20250429144957.2088284-1-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416094236.312079-1-juerg.haefliger@canonical.com>
References: <20250416094236.312079-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the HP EliteBook Ultra G1q 14" AI laptop.

Based on HWINFO64 and APCI tables, it seems to be the same HW as the
HP OmniBook X 14.

v3->v4:
  - Bring the sound model back to the node
  - Split the driver change into a separate commit
v2->v3:
  - Drop status properties from nodes in patch 3/3
  - Add acked-by-krzk to patch 2/3
v1->v2:
  - Don't rename the X14 dts to dtsi and directly include the dts
  - Add a label to the sound node and use that to override the model
  - Reorder the dt doc patch before the dt usage


Juerg Haefliger (4):
  arm64: dts: qcom: x1e80100-hp-omnibook-x14: add sound label
  dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
  arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook
    Ultra G1q
  firmware: qcom: scm: Allow QSEECOM for HP EliteBook Ultra G1q

 .../devicetree/bindings/arm/qcom.yaml         |  1 +
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../qcom/x1e80100-hp-elitebook-ultra-g1q.dts  | 30 +++++++++++++++++++
 .../dts/qcom/x1e80100-hp-omnibook-x14.dts     |  2 +-
 drivers/firmware/qcom/qcom_scm.c              |  1 +
 5 files changed, 34 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts

-- 
2.43.0


