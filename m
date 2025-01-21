Return-Path: <devicetree+bounces-140096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E780BA185F2
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 21:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF57F3A0109
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 20:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CB31F63FD;
	Tue, 21 Jan 2025 20:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="pk4a1gLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F91A2550
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 20:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737490074; cv=none; b=lL4TvmprYBEWfUl653uESzItduE/ulexuhJhedrOl8W2jOjKvcrSc8Ep5JIsySm0X4njKMmhvV1rOBi2iVgVkoRLOFlRENEn0F5b7ZSO1ZYWLu8zisevFGRap1Quyrpb5k3r8SbTXy03nP6BeKW6EgEi2RbS6WyUdCgg/K8AKIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737490074; c=relaxed/simple;
	bh=PUOAGcT0dyG4IZIati9P8GoHCBztzTSTao01uprfr10=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OaBra4y1+U8OJg4lSabkMSnhMUuY6aF17NcwPOamD0qiCqkiu0UgWtAijUO4B/n1tL4y3isGhw8JPIvCKP42SQYPucUwmYXXTGDz1OgP7mulfF7Dv4I4tcnDVKFA3bMbS0n6B4Gj51Try7T1iARTIQevVi0yHh/TfF2oc63EQD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=pk4a1gLG; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4678664e22fso58219041cf.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 12:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737490072; x=1738094872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lHb8pLXAEr3dsbwFJWVMWiMHmvwzjso8BNDm/ju1iH4=;
        b=pk4a1gLGscyxNfOReju1oN73gFip86igJObullgboI7w2wPHrhojIpKR+bFirjFRNL
         z0pmm2ruzOHpTSBEp0/kXbAeMEwnhoauCdXgKQzJbIarihSXpxXUiAAvzhu8iTgVdxhR
         9BTD0eP1w1EJ1lf5Mqo34BrEkgJM+P0mF7IZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737490072; x=1738094872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lHb8pLXAEr3dsbwFJWVMWiMHmvwzjso8BNDm/ju1iH4=;
        b=NhATcz/+avWsIzrjHTdHW65kDla+mYwyIFciCXla9IczcBS9Y1VE9GlPifptt0bV+r
         sc7qTlkHOfoetPFtCkNgDFEvyLrnztvUj5yIpYytWFmu3srYGbwEVCvDNWwBKYhfsnI1
         f3j11YSHvvkn5qJSHXkXg23HR276anwjyCKxyZSKUda9wQvnV8hHz+4Ayplu10DACWXm
         kxPb4Jtx76uyj0g87KYr79+EXjw2QJrHvB8445OiKPzm0sUe+5qu6VuYXrmcfE618S5l
         MS2KU1E2R7Z3pzl/YY6Lbx4xO+X3ZxbzlvXyTCnyEg1Nsjz3tHlnWxlqn7OFAqWQ8RIb
         gtAA==
X-Forwarded-Encrypted: i=1; AJvYcCU5yk584tmgak4uF3QUB99VQusO4gvVK8Oyi4ycE7jpPSG1OguTo2ncD5bETTCd/KJ390VRNqk5xNaa@vger.kernel.org
X-Gm-Message-State: AOJu0YzrM/WJ/TlBevw+K/tf02t5d1UBo9ov8UjqqdNLbbAjYZ4zWQip
	eABOL4tfM64ru5X/GoGP0d2KwEDLKij7qvA9rk4vhoQrC+z5JfTefziY1Mn8ZgI=
X-Gm-Gg: ASbGncvOuWC0lp3Vl1PzCydhSk4xDYMROuzZqk4gWSART530iWkpN3yI02GtBvJJGd/
	il+/jEJAE/MxjGqak++upyZOPDqhzxQwCA43dqkFxVIclHc0+wzew+65g8yRyxh1fdwJbQyd5d+
	VWQWlvmDSw+U3EKBx3apH86+f1J8Ij+ZzNV0RHdP8bK5/pe8HM1e/+0b33UP83YB8nw4wmHpi4n
	530WcqQNldJrtRIdbHqc48nsol224sFSTdA4YQNtpa3hIteHVjyd9th4dQBDZBIZagU51si7h+m
	Farpe46LtJonnQ==
X-Google-Smtp-Source: AGHT+IGIyzj+IsxFlYpz9XLDsiuK8SFY5lQ4z1aUa9MQiGkatYxr9CmhFXBBhEteoCIRhm9ZWdNStA==
X-Received: by 2002:a05:622a:1820:b0:467:7ff3:e4bf with SMTP id d75a77b69052e-46e12bb505emr238001681cf.51.1737490072102;
        Tue, 21 Jan 2025 12:07:52 -0800 (PST)
Received: from bill-the-cat.tail58a08.ts.net ([187.144.16.9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e1cc9e8b54sm30977026d6.86.2025.01.21.12.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 12:07:51 -0800 (PST)
From: Tom Rini <trini@konsulko.com>
To: linux-kernel@vger.kernel.org
Cc: Nishanth Menon <nm@ti.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: omap4-panda-a4: Add missing model and compatible properties
Date: Tue, 21 Jan 2025 14:07:49 -0600
Message-ID: <20250121200749.4131923-1-trini@konsulko.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When moving the model and compatible properties out of the common
Pandaboard files and in to the specific boards, the omap4-panda-a4
file wasn't updated as well and so has lacked a model and compatible
entry ever since.

Fixes: a1a57abaaf82 ("ARM: dts: omap4-panda: Fix model and SoC family details")
Signed-off-by: Tom Rini <trini@konsulko.com>
---
Given how long this has been broken it's entirely plausible no a4
hardware even exists anymore and so dropping this file instead makes
sense. I only found this because scripts/make_fit.py crashed on these
properties being missing.

Cc: Nishanth Menon <nm@ti.com>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: linux-omap@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts b/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts
index 8fd076e5d1b0..4b8bfd0188ad 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts
@@ -7,6 +7,11 @@
 #include "omap443x.dtsi"
 #include "omap4-panda-common.dtsi"
 
+/ {
+	model = "TI OMAP4 PandaBoard (A4)";
+	compatible = "ti,omap4-panda-a4", "ti,omap4-panda", "ti,omap4430", "ti,omap4";
+};
+
 /* Pandaboard Rev A4+ have external pullups on SCL & SDA */
 &dss_hdmi_pins {
 	pinctrl-single,pins = <
-- 
2.43.0


