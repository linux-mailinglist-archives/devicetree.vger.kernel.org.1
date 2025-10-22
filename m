Return-Path: <devicetree+bounces-229692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB12BFADC7
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1D141A00A17
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA28C26FA5E;
	Wed, 22 Oct 2025 08:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="PxBc25pC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A54305070
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761121319; cv=none; b=LZaxxIYVHWKlt9rnaFG2PZsiLT7rTQnmZ6cjewbHuHNoQdhVsz0wFcth1KwLmTHWYQiIHZ6fScLGvhQ7id7xD7oQ3E3/klYoZALPh+zY04Win9l9DoZZ+C+R00B+nhSfzMHQm5QM8puKNRbIeyRu8ncMgLMdz0ibHZ36CCF+12c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761121319; c=relaxed/simple;
	bh=lv2uVhZqfWH9WVsgYRtW9amrl5GZHACKCdqnmaRN7GY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VCWAtQD42HO1Z6XEcI6POqnWeOY6ZQ/IdbpNbNl9X7SFvUiboe+9Fr0Va1aszZzcdFJt+5UUDJ9S8ZU071xRL4cAGXmD3tU7JdRwbyklo18iPs6XXtziqf8kHb9rQhUi+qAMZcSdw1nTWFYV7iVaNbHnzoMpR3RHzbFaAa7SdBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=PxBc25pC; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b47174b335bso447484a12.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 01:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761121316; x=1761726116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rbLHC9QwAR9eOpe2xgT+y+OECBmxM2cqKB9QacBZTUs=;
        b=PxBc25pCLCfHnGVE4yrG9ZdK3XFrGGJb5WstUYZDRNgXjPBqy1ztPTURS9jo24QQcf
         3DE6JXdAWWZ+1NThIw3bUBUxjrP2M+Jf7G/CRKNFSzCcNTK1cktWM3GC23L95FQpozIm
         F3i4Y/mo5+aEBYfAFDiEEveENp1TTddYHwGRT7blxj8eUf9GL2S9JNZOWsHdQYYZMX+3
         lTqyyjvUuVXPM6LuRveBxrjshIgltC11lfnLiUMntUsrhas6Dx1Sc6pAcPvvKuOOT7FZ
         TBdnYUXVzyGm5gHp7v6tE9LmOFwqM+s/Wqa/NKnsaxl3wRZK12NW6cOurZPAxz706xB4
         z82g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761121316; x=1761726116;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbLHC9QwAR9eOpe2xgT+y+OECBmxM2cqKB9QacBZTUs=;
        b=mhzVuUkvFF95SCSurZe5zYUa5+MlEXzUGzgZFjZORnR2tnYp3d6ouduzqKveTYBllm
         Q4kWIUYzgOPVjtENUKAkmWFUwO81kuDEGk85m75Nrfm/Jz3KFp7FarBjSZZyZDJ/4t/7
         jmq6k34khcnuShol5fhbT2EgBZ+FC9C78uIqtKaAETpD8Qw0V3X33Vm11ZYbkKCOdzJD
         0xwZtbUKopEkgbjBtqENHThJToUBWLVQGwBgfq4U9pw8V0nr5CHtwRGUhncjjPiNu5/g
         8zMxmj7T3tMEGZPjr8deJXdy6na8hsoAoqFlP6a3870qqLO4okn6em9z7DwrcKoiucdU
         lrgw==
X-Forwarded-Encrypted: i=1; AJvYcCV/TR3JuqVsCPRqB+E/QA4makC9Lc6ntm2RFZrxKpfwF0jqY4CRUKb3ZW34tLQC/zGyhOScXPWXuJQm@vger.kernel.org
X-Gm-Message-State: AOJu0YzcKraMHWmI1O+oRq2Oh6leEYn89ucmMfOC4ZmiUUpQ4qz86S3q
	OYvo9QqdCxx0BiiVIwb11G5JMKoGfe9c4/3PFc4EE0DLuRgys8dsFppul/WGy/k8pw==
X-Gm-Gg: ASbGncsBSn2pTiZTXP5EfpmvjvxIPoY8qVZoHCcc0+7KSCP0zyNwlX+xEe1tCGsZvOT
	jd8h+jYwVRxh8cEqaxk35p6TgBY56e0ErgaJP48ODcaxSnrHU2qcZMXiZ0CBj4HZC/ZrXFDmC5G
	kBm4y8YeN7Tobj6bTZF0mA1x7FSXnKIlPteSNQfC4TiMZOnO8OzXVo2+eCvdc9/1lfXle8JgxD7
	GlMSqjX/DltiEMCSYZq1w0ZpqeB/E5206NXjblc+JCVZ0aMvuCEOHHpfZ8FyJM1WgCtSQBl6cSZ
	i9N/XsRpU8+nqzW23AFUT4dj1I7iUBZn3ktV58BotyX7G/IyYdN0NVgMqVde91a6N2v/306nMcK
	Im3uck3+nDzL2xfpjfiTtSfpf0PJfkbD/BLJU0ihj6tkH8RejsrFRqbkxo8Bkmf2kMtlye7DZRb
	RoMbsPRXGFmr2VOnXvr7Si04MtrKQQorGZ5E7wIPx/WezkIk52yBewMw==
X-Google-Smtp-Source: AGHT+IEq1VTnJQxlOmueu6s2GebaKNeFLbAzcYm2sgg1sCqMQhIRzeaeT1dxwWuPL3kl8Wo0a8Ua8A==
X-Received: by 2002:a05:6a20:430a:b0:334:8d22:f94a with SMTP id adf61e73a8af0-3392f61dc01mr4867714637.1.1761121316207;
        Wed, 22 Oct 2025 01:21:56 -0700 (PDT)
Received: from adriana-show-mem3.sjc.aristanetworks.com ([74.123.28.13])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223cba14sm1854292a91.2.2025.10.22.01.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 01:21:55 -0700 (PDT)
From: adriana@arista.com
To: linux-arm-kernel@lists.infradead.org,
	jdelvare@suse.com,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	frowand.list@gmail.com
Cc: linux-kernel@vger.kernel.org,
	vasilykh@arista.com,
	Adriana Nicolae <adriana@arista.com>
Subject: [PATCH 1/1] DMI: Scan for DMI table from DTS info
Date: Wed, 22 Oct 2025 01:21:29 -0700
Message-ID: <20251022082129.138217-1-adriana@arista.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some bootloaders like U-boot, particularly for the ARM architecture,
provide SMBIOS/DMI tables at a specific memory address. However, these
systems often do not boot using a full UEFI environment, which means the
kernel's standard EFI DMI scanner cannot find these tables.

The bootloader can specify the physical addresses of the SMBIOS and
SMBIOS3 tables in the /chosen node using the "linux,smbios-table" and
linux,smbios3-table properties. This patch hooks into the DMI
initialization process to read these properties, map the tables,
and parse the DMI information.

This extra scan is performed after the standard EFI check fails but
before the fallback memory scan, not to alter the order of DMI scanning
for current implementation.

Signed-off-by: Adriana Nicolae <adriana@arista.com>

diff --git a/drivers/firmware/dmi_scan.c b/drivers/firmware/dmi_scan.c
index 70d39adf50dc..ea3ed40d0370 100644
--- a/drivers/firmware/dmi_scan.c
+++ b/drivers/firmware/dmi_scan.c
@@ -10,6 +10,9 @@
 #include <linux/random.h>
 #include <asm/dmi.h>
 #include <linux/unaligned.h>
+#if IS_ENABLED(CONFIG_OF)
+#include <linux/of.h>
+#endif
 
 #ifndef SMBIOS_ENTRY_POINT_SCAN_START
 #define SMBIOS_ENTRY_POINT_SCAN_START 0xF0000
@@ -670,6 +673,70 @@ static int __init dmi_smbios3_present(const u8 *buf)
 	return 1;
 }
 
+#if IS_ENABLED(CONFIG_OF)
+/**
+ * dmi_scan_from_dt - Find and parse DMI/SMBIOS tables from the Device Tree
+ *
+ * Checks if the bootloader has passed SMBIOS table addresses via the /chosen
+ * node in the Device Tree. This follows the standard kernel DT bindings and
+ * assumes a fixed 32-byte mapping for the entry point.
+ * Returns true if a valid table is found and successfully parsed.
+ */
+static bool __init dmi_scan_from_dt(void)
+{
+	struct device_node *chosen;
+	const __be64 *prop;
+	char buf[32];
+	void __iomem *p;
+	bool dmi_available = false;
+	u64 addr;
+	int len;
+
+	chosen = of_find_node_by_path("/chosen");
+	if (!chosen)
+		return false;
+
+	/* SMBIOSv3 (64-bit entry point) has priority */
+	prop = of_get_property(chosen, "linux,smbios3-table", &len);
+	if (prop && len >= sizeof(u64)) {
+		addr = be64_to_cpup(prop);
+
+		p = dmi_early_remap(addr, 32);
+		if (p == NULL)
+			goto out;
+
+		memcpy_fromio(buf, p, sizeof(buf));
+		dmi_early_unmap(p, 32);
+
+		if (!dmi_smbios3_present(buf)) {
+			dmi_available = true;
+			goto out;
+		}
+	}
+
+	prop = of_get_property(chosen, "linux,smbios-table", &len);
+	if (prop && len >= sizeof(u64)) {
+		addr = be64_to_cpup(prop);
+
+		p = dmi_early_remap(addr, 32);
+		if (p == NULL)
+			goto out;
+
+		memcpy_fromio(buf, p, sizeof(buf));
+		dmi_early_unmap(p, 32);
+
+		if (!dmi_present(buf))
+			dmi_available = true;
+	}
+
+out:
+	of_node_put(chosen);
+	return dmi_available;
+}
+#else
+static bool __init dmi_scan_from_dt(void) { return false; }
+#endif /* IS_ENABLED(CONFIG_OF) */
+
 static void __init dmi_scan_machine(void)
 {
 	char __iomem *p, *q;
@@ -718,6 +785,13 @@ static void __init dmi_scan_machine(void)
 			dmi_available = 1;
 			return;
 		}
+	} else if (IS_ENABLED(CONFIG_OF) && dmi_scan_from_dt()) {
+		/*
+		 * If EFI is not present or failed, try getting SMBIOS
+		 * tables from the Device Tree.
+		 */
+		dmi_available = 1;
+		return;
 	} else if (IS_ENABLED(CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK)) {
 		p = dmi_early_remap(SMBIOS_ENTRY_POINT_SCAN_START, 0x10000);
 		if (p == NULL)

