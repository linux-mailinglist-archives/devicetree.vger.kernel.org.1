Return-Path: <devicetree+bounces-229771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9529BFBB7F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:47:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 115D4188DDBD
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04FF344045;
	Wed, 22 Oct 2025 11:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="irN70r0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA03340282
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 11:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761133542; cv=none; b=LFN6NuYw3gTZfxMkLsHYnrPh/IfTwchK7XahPt6idGVEefx+yjrps7PfV22+71lerbBViwKa1sqL8/QFcQQnKndItuQnjxe3J/dLZa93Ho+ES7vlp3mYP3DlNey2Xa/pWIhaBP7YZxLctggITwnk04lWqUZxZaEMjMGMqblWVHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761133542; c=relaxed/simple;
	bh=L6JltfCgzavNx7wMkMNh/+Sx1qS8gsYLxOCNUpGaA9w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OAsE6b6qwiX7ESss2i4RYLLqZ/M3AAmNWHfZpwf+m08sucec2rLXcwBUNvX0zwgPnTz7JW4MBOsZcxv/2eWWKk/SETq3BlJ/GrbN+0zjQTWi5ugp6BncRI5EEOU+tCD04YhUdIQMlAEXVeGrkHEMynMUhnmjruG1CvxIR7kCApU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=irN70r0l; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-33d55b7a073so623752a91.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761133540; x=1761738340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUX8HZ6vji5tBt32jdysfYoNvgGz6oeEx0DeGQXcliE=;
        b=irN70r0lD8wWlavJD1oe8iNSvBWviU1QShS8zUdLoX5uwLmNiLy5o7o+E7k+oVPBqd
         cEef2Xx9XMQhxdfE7NWnE8TmYJ9ZMLCyY6gevOUi025v2c/MTe3czvPVJXYtk9P6HIDB
         lKCTTEJNAEuNOAeE7i44QNgTnx9sTd9/TmFx4GxX7/ToGF8h1zsoTvrkf34xJa7PdRTj
         2UVSkUJ5XERIM+/7gFeLEaPoObfVYKgom9xS8l5/lkdbTmop0bkE5Xa35DJ1u7PLcE/h
         PZK3OW98uhj0OELj67Go0r68hhqdm/BZGtENukb0fMkwxshex4Oy1dy86R7xLVaacgKb
         b6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761133540; x=1761738340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DUX8HZ6vji5tBt32jdysfYoNvgGz6oeEx0DeGQXcliE=;
        b=FtR9h7H0BKDOExnhzME+viUdbMWqKTVDjVclab+CKL1yXit/JEQp64ibE1WAlX1JBi
         E3hVUfpki35Z3xf9y6tBCwz7RrViu2YYcOolwao+e8LeHMXoXHO4e4eZsqsTyxSqBTc7
         DHoebudiE+CRY5aKQi5n3VBVNLbkcF7HuAoKtRKxZJNcQwjJSNJvmaqyLDsROLXX3rCi
         +y4QKz+VSaBHPc5gTwUEgE2kN4IMrlLSArOZfPSxj1ZrZSIO3xiEHmoVtAzxpfb+D10B
         N0oItpmh90PYwVbHUOFJbbPzj4C8ZE+AKx0RQtcRlz2H17hRYyz/jjR3CjZlIH0gDJBl
         lFGQ==
X-Forwarded-Encrypted: i=1; AJvYcCV98MeGyWch1xE0MUUIyp/NG8eItXMi4TcXYwQkbNTX73stzqpdI/yBooUaS4ovUjXuYuUkmR4bmNmz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1P5Tu5CiM3Wbi0E7/ZzpC3F3XDDQPFAQQg1alnIeyiF9wJHdb
	57pSc5WJzjvhMG5WrEuGprCNkbCOYEOYyvPJryrDDuVE8NNhLKnBroflp+RwpIgyJQ==
X-Gm-Gg: ASbGncvn/sup1KN03t/+ap2U4cRs4Y2OzeIAAP2PdJoDmjLCzy/o/dJN5LuSEHLgPeD
	/h0laotFQHBinItkNJ49PJ9vpF8ToS3j/tcDN7P114q8t4wOCSFi5vM2htOohpLHD3aDLv3cwBr
	Xn7nCw/1Q1Ve2jY1hg9K5/fdapI47MFimPeDEYUsMPfliapFgZGLzpWzeH3C0wGmfoTYC6Nc428
	WIjmii37Su/Hz2B8q+0OMPa8leUaYhAiQbIcAsFdjBcvNTpW8Tpxupz8QoE7muPRhOULG25Hz5U
	W94qE1tmqkcXZ63GTWeva52qlTEaTS2zkPTh2j+qHFAHUScPBGgwpfNQrIiCWFQIdvrPqg325ia
	x/rBTDpipdclUzNriMP575bkiXzqCO0wGmsR7q/GS/C0TcpN7ixkbpafbl2wb6JV2rSmjLtkE1O
	jmtdoO6HmWC1MVoXmRgvzYuW+Hw0DXG2pPiRa/jJyGCC6YpFkE+D28vTa4/VkS++8=
X-Google-Smtp-Source: AGHT+IF6fs9LU+FUhR5ZsckfVqatI9W+gmk2N89hg8LOW5kKhLh+JL5lxioJxKuw+nOPcN8XHnqdOg==
X-Received: by 2002:a17:90b:3852:b0:32e:8c14:5cfb with SMTP id 98e67ed59e1d1-33dfab10b4emr4732611a91.1.1761133539850;
        Wed, 22 Oct 2025 04:45:39 -0700 (PDT)
Received: from adriana-field-alert-pcie.sjc.aristanetworks.com ([74.123.28.12])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e22416d3csm2399895a91.18.2025.10.22.04.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 04:45:39 -0700 (PDT)
From: adriana <adriana@arista.com>
To: krzk@kernel.org,
	robh+dt@kernel.org,
	jdelvare@suse.com,
	frowand.list@gmail.com
Cc: linux-arm-kernel@lists.infradread.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	vasilykh@arista.com,
	adriana@arista.com
Subject: [PATCH v2 2/2] drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT
Date: Wed, 22 Oct 2025 04:45:27 -0700
Message-ID: <20251022114527.618908-3-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251022114527.618908-1-adriana@arista.com>
References: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
 <20251022114527.618908-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: adriana <adriana@arista.com>
---
 drivers/firmware/dmi_scan.c | 74 +++++++++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

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
-- 
2.51.0


