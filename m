Return-Path: <devicetree+bounces-138893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E716A12D8E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2FD7162892
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9DDF1D90C8;
	Wed, 15 Jan 2025 21:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vk6cymQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5EE1D6DB9
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975860; cv=none; b=eV+ZGtA7m2UmDXK0rgUs+XcdDV+AIAcy6smtP7XX4W+9eKDUP7RsoV4xF3qC3F6s8GApzUDbFf0wMnUopSkwQwzHYxgKsY8f7aBqTrsoXdJwKtyBosx82WclMPho1sJSoL7U0Svy5ZVfR6GzQEZ2Rm9gQCp8+/g9VRC3hA5+c7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975860; c=relaxed/simple;
	bh=2PQqWxQ9YICDkx5H1rwGX8Z5idEW8kO505bDj2I0gGc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lWHrZ6Jh7C0pt+YqZrTHvz+1UbrAnt0298E0+Y3/mGIHW69eHn7UqxckLSUagsSb9jDTK4uzj8eDdqRl0DkXz850bIQcrYxsgkxDJNg4zBqZyMoaGvLwiEV5231f/y7fbgIGgx/vyba2rIDUAvvkOKGsmpKHvv9UMFgAeL4ZV44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vk6cymQP; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361e82e3c3so230055e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975857; x=1737580657; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d+c8ZViS8QEnVa4l3RBbC0mkMWBhNXE0tgtIholsxgM=;
        b=vk6cymQPG8laEZ1mzBQ96ku+DwSwwak2KajKQjxs26xQsKCgMhmU6S3eWpv5ZBirx/
         4SVwt1k776rT+pm0A2+Ynp2zeZSqpytsyiUZKLDF810JiFNVz9oxuV1F8KN5vo0WZLxs
         gmGENzcvUUro+CLmQYnkIlrQw8kHzHsMB4rwxND3BcpeOZ26mseNwcS/7qyzR7TCRYdv
         U75IGrTxzYU8Z5LU13eNQaWZ6GxQ2xKj4hNc55GzJVKYetlgQnV/WzeVsw81o8Ld0RBZ
         gd9OHCJDWsf9Qp8eBYnnpBjgvRq1XYF2kitn+oXEO/n9cdYVNMt3Xyqd9JmFbDXWa+Xo
         WF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975857; x=1737580657;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d+c8ZViS8QEnVa4l3RBbC0mkMWBhNXE0tgtIholsxgM=;
        b=R1YOEpmgSghYWPzYewR2dbFsZ/gL6ZYJ3YWHfBOHj1Ouxfe7oSivozT4VNy3FPFS4v
         lLmVsAoV2tXlZ19LZdpOYPvCF8VAzByvqURlcYEuSqo+WX9rTJINY26IW9U5VyHJI9Cd
         3on6ZQV28hJ7GA39uERTpkqLOZV5Tf+SBrh4JrCOd4gW8qK4F9Fc6+o/sgyvZDUIObFU
         BGHRZS67uGjZNF4QhJYi54PFupnyHWnwJT49vmwBWGw2bkXwrKmxDMIpKysSHQdxYROA
         APKrkV5tqFxWwLVCBmEHG5hqjPI480AOXSXBLINGlgKZWPbRwsDWeBaM1pBfl4p6aP18
         HOQw==
X-Forwarded-Encrypted: i=1; AJvYcCU8pXu11p1Ie/l/0KvLQNgfU44frVp/Kk+r7PK1emvPKSIl3fWcrKpBX83jp9GtTBv/ufC/GvNCeTLr@vger.kernel.org
X-Gm-Message-State: AOJu0YzvZmD+9/xv4BGJrNpukG4es6ZPV1h1PsBicQr4QsVVGjmnULWw
	5SemvCdIrHnKrJofDLElEfIxeBH8p1+2vvyPch2ZX65yfaKf/bP1mBzlwzcLCsI=
X-Gm-Gg: ASbGnctgc4xpCLSA6H7Dn/cUmxolWt09pxWio7ca8EM2GpLPYSAf0HblfpPQerdZ2pp
	oM1da8uPQ0pJv9Wndn/u8N1uYwy/J/mCfj9xvYihneKlw2nW/ejZ26fEDRsMKyHrldgsHnUNzTk
	B8+q0t2ms4xsxl4LszAJqUlfPQGCZioqA82XwkeJICdoTe9xswtG0KfWSDOZXl3+j67p0F3QIgR
	CJkhbrRRc11u3YfhSRonRx2ok+YWO8rVgtnkEGbeMg2a71VPQsXiKL+fcpiYmPwpL46uZY=
X-Google-Smtp-Source: AGHT+IE6krwUR2QumwnUfPPmflTi7TTmshf5KLSxOu7Zj4F1rd78lylP3YHbkpgHZAE57cjbVARQPA==
X-Received: by 2002:a05:600c:1d07:b0:436:1902:23b5 with SMTP id 5b1f17b1804b1-436e26f4abbmr109908065e9.4.1736975857216;
        Wed, 15 Jan 2025 13:17:37 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d090sm18433838f8f.2.2025.01.15.13.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:17:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: marvell: armada-8040: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:17:26 +0100
Message-ID: <20250115211727.194142-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  armada-8040-clearfog-gt-8k.dtb: sata_reset: $nodename:0: 'sata_reset' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 225a54ab688d..90ae93274a16 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -371,25 +371,25 @@ &cp0_pcie0 {
 };
 
 &cp0_gpio2 {
-	sata_reset {
+	sata-reset-hog {
 		gpio-hog;
 		gpios = <1 GPIO_ACTIVE_HIGH>;
 		output-high;
 	};
 
-	lte_reset {
+	lte-reset-hog {
 		gpio-hog;
 		gpios = <2 GPIO_ACTIVE_LOW>;
 		output-low;
 	};
 
-	wlan_disable {
+	wlan_disable-hog {
 		gpio-hog;
 		gpios = <19 GPIO_ACTIVE_LOW>;
 		output-low;
 	};
 
-	lte_disable {
+	lte-disable-hog {
 		gpio-hog;
 		gpios = <21 GPIO_ACTIVE_LOW>;
 		output-low;
-- 
2.43.0


