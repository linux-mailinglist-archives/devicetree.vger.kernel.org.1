Return-Path: <devicetree+bounces-250886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DC5CECC87
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ADD9E300BD8E
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353B925C804;
	Thu,  1 Jan 2026 03:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="TyFn1LE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DCB241103
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239025; cv=none; b=QOUnpbOw4N7s7P9K/MYy53HCDtrKF3UfwyuR4Bq6cwUSaGj3snydUJtExFL/hUNItUN4icrk7Gkt+y4wiJfBsTd37sZBEHCIOaJ9ANmuY2xp8cLvioGdTfZ0CZC63uxCF+c5mGBDQ7RaJ/ZR12l2TgHbxYU/qqh3Ha25WjaQJ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239025; c=relaxed/simple;
	bh=lQfu9dd32r/M/FnaUnwBLlapdfth0jP45zLEDLrsj1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VjbYRCM+z8J1Ycw9cRa9dPXGKNf5Llw5UcZ32W5jXU7555+mn7m0izNvm1fhwjdI521z2Lc4FwNjHTGF8oX+eCnvd3XqM9nn9cspHKrfnoxlXvBQSXunqHIYbclUMh+rwW4fLrJM8V4qDopAWeMprwzO62ijMo3K7bdQafspuuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=TyFn1LE6; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a110548cdeso153402125ad.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239024; x=1767843824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5H6KXg9o2QtM55dEd8AiNf+pVaQWGHEPICjIkw8m5C0=;
        b=TyFn1LE6KBZmru4SS2FpVsiYxVcTknLM4w2IoJ4i2ksZravsubE7p4SW8AvtO9DAAO
         f0Pqnjeo9wZ/7JuEJm9XLDtIPNoS/1kF1wRsHZBna53NeNBWsajd/nLbh9Pdt6F1xGnd
         BcJTmhmnixRvCLxNpLTBhFTs0idoe0kjkZp2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239024; x=1767843824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5H6KXg9o2QtM55dEd8AiNf+pVaQWGHEPICjIkw8m5C0=;
        b=i0FtSYrH7p4PkoUjIxaDB2NWCa9jfsjZhs4Sn5gZHWXCv2nS5AB7CcC/1+Ba0QGE7A
         CSPWCX4bol1Zm1q51V1QOTC/IjJnfN+gqha7FeTraVsTJJzTDnMVO/JOxnY6iuTGE6dG
         RaFX8OHkq5sYTYCFLX3nvmZLN16hjuhLh80vBQbI694UTw1bBOLfAaml/faVmug2UDng
         mTCex0jRYqhzTG+Pvio3FdXIvBbKExiERiF11IXj3rGlZgAZoUxdBZ6AGqknW6yiyXUz
         7Cna0LD74W67rOcSrFIm+4G6m0eiB26mdDDdE3L8z4iXh4b5w/7Ygr2+cUKEpfnjjs+y
         wrzQ==
X-Gm-Message-State: AOJu0YwxKP5WoCiahb4q8xHYC569avZ8qHhV+hpsoUutUTiXXVDcq5E1
	46ldYrtTkDHxrYosKgefxbyEr7qGDtydpANtMAhWTa+3g4fXPGPybJsWSm8mBZ4JHR4=
X-Gm-Gg: AY/fxX6Pix8MlZ1Jx+0WWkQa86m8g1zzimq+zFE2hOayYEKCSXDCL9p3EURR0zmKC4D
	XMHXVIBnYYbLSBJ4G24tdOdCclKJz46AJx9aQKuMAVefFYdO8qMIYM8MzBjXqPgKHAD/egf3is5
	5KfwIZhjrBBgCCOkGKZsBhIuiOz7SoQ7315CiXWEzpt1kuhRu1PFa2Wf5oUAIYhqy4171++eN8Z
	pzp2Z7v/r9ELTCWxwSDa9nd0RkB/omNktq9e4//Z16f4+PkVOr7MjzfrjnUmM55OeJcHYfT+EnV
	oxaOwhCCLQ9e4qad/plwYB3qAS8L/dysIm5N5QtbGdWFYgz2rDtMX39PGyh5OBNS3ECj1OsiRZ9
	ruSjMaQFnIx3DcYBcgI74AP0olfgTW04UJx1twKVtTO6yU8SyjVBKjJ580yg35WNFv/f0i59LwC
	IQ8sNO3r9zrHiGoUqAT22VO75RQlDmT9CuGoT5+9NDThfChdKkLILI
X-Google-Smtp-Source: AGHT+IE804vLe/XfYsP1CbE+EseIvkHg07qVUyP21x79odMEy0pfLI1eQQVGuf6RbGWuOZVH79H2QA==
X-Received: by 2002:a17:902:f550:b0:298:485d:556e with SMTP id d9443c01a7336-2a2f2212bd6mr352395505ad.11.1767239023688;
        Wed, 31 Dec 2025 19:43:43 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:43 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 7/8] arm: dts: mstar: v7: Move the reboot node
Date: Thu,  1 Jan 2026 12:43:05 +0900
Message-ID: <20260101034306.1233091-8-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reboot node is currently inside of soc and that makes
the dt validation stuff complain that it wants some properties
that don't exist for reboot which is just some glue and not
a real device.

Move the node out of soc to fix the warnings.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-v7.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
index 3eeafd8c7121..db661e189eec 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
@@ -73,6 +73,13 @@ xtal_div2: xtal_div2 {
 		};
 	};
 
+	reboot {
+		compatible = "syscon-reboot";
+		regmap = <&pmsleep>;
+		offset = <0xb8>;
+		mask = <0x79>;
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -105,13 +112,6 @@ pmsleep: syscon@1c00 {
 				reg = <0x1c00 0x100>;
 			};
 
-			reboot {
-				compatible = "syscon-reboot";
-				regmap = <&pmsleep>;
-				offset = <0xb8>;
-				mask = <0x79>;
-			};
-
 			rtc@2400 {
 				compatible = "mstar,msc313-rtc";
 				reg = <0x2400 0x40>;
-- 
2.51.0


