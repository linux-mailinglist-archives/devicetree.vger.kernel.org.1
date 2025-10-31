Return-Path: <devicetree+bounces-233602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0B7C23DD7
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEB6E3BC034
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F2530BB8F;
	Fri, 31 Oct 2025 08:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="Shpy9pJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D316199939
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761900112; cv=none; b=fPNOTCNYPi6aCWcTFA/5mc3NMZFMtihiZnxmIMwUttcu3hdzqHf3GlUsUMucmqdO0oIK8WPd4VCBjDaXYpfm6f2Cf3t0aIbeqtg4G+AqQbCZbBrcQ02TGxHFfM5lTCnIAfzMl55EIv81jiZROJaUSg7Ke+YmZ+hdbpW1Z2S8m88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761900112; c=relaxed/simple;
	bh=2lUvWhdB4NGL1LqZv/NPiW3WqcOoMBXkMooN1SEI71Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VKOycpqS6vOjDHKScgMYIncirwvDQtSitJrFleXxr+Gf0HcIkOqQpni8Hc9wv++kR/qKhHAnbRjuYhq6ow0SzUkApQPDBJDBmHLfkkPBfHXilMj5w3tj0CcfmqysB+eVy5glswWEJqOfRkRUnQFuVTGMmxrZHMwloA9DNhGj1F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=Shpy9pJ1; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-295351ad2f5so228755ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761900110; x=1762504910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFAEjrMWY0ykRF/jVrSGE7UxJKIHOGktXm16t+/fBBQ=;
        b=Shpy9pJ1pX+VPBywXn2XBYS47VcPCO5ieTHaWN8Y391/9+jTtCU9bTxh/Sk7Zw4cZu
         4T/2VXfu+ZyVQqX92lN4uKsSTGEWnU+jvM42pzc7pJDFOnQoBoVuleaaAW1ouXpRRVuk
         2U3a5YyivAC42MU7+W8Rf73t1nYcu1sVB/FzjaHlB4lr1q+De7s48aky/VtFUInie04P
         eR7lEixjrWr/8tkjAZi7IAEJguEa8DqRoWa5cRZH0UWxmdhsr4+30gXpDqvYiU6VPIhG
         exqIeP0P10/j3G2gGxJXYvb+2GT7iR6Ivu9b80/AW2E5dyLkKzBXnsgFlZeIlyGErmSp
         YANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761900110; x=1762504910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mFAEjrMWY0ykRF/jVrSGE7UxJKIHOGktXm16t+/fBBQ=;
        b=v3Y5a3Op6JaxqIKe4OKQUPBwHiXEHpTSGb6qQwkPz1WrG3cM4QsReFQ7uj1UKIDZFu
         v3DwnlkSNCPIq/qvd9FhvP0Mm3OkWRH8ME33cNDVu0SKPBZj88QhTzAwzbAX3ulWN6ik
         mRVaU0R3/JA89tL4H5uocq6uodQlwCqpYxWMTGM2Mi0zVp+A6UZXqNGGsWBGFK9PWCs3
         pogffp+6hTjFWXBwE/mswAGJGIJoPPDXZpuVgDXI2GUa1qZIKl81veNBO9bqB3uefULe
         SlFInj0KvMFybb2sRI5c+lrKMjLn8JUjSaT3V9tEa9r7xrW+vYxU6ABnz2VSDBb2NFdX
         YROA==
X-Forwarded-Encrypted: i=1; AJvYcCUsTK1LT6TS0jR0hnY9kDzXif0nL8iKQqDUS8CPnlPGCsDpynsjdWxq9vtAeOLIcpCpr2Pp4nhxn+K+@vger.kernel.org
X-Gm-Message-State: AOJu0YxCpSkjvdPwjgEYSk2+4/IaWFZYnza7k7dwy7zkzUV8EJX2Svra
	a1p6BazQRxSMW3KP5wMpedKrcqbb+dLJ6XQMLv1a/9NLUO29XBkjJtRTbHI+e0f6zQ==
X-Gm-Gg: ASbGncuXQCcialX0ZeryWAsufbwQMolBRLDUCy54f72So0wrsWAuwVn4aACyZ9SPNOE
	+EZnzOId2xW4tvmR5dKBV0nWAO/xwKpsUo2u9U3J3plLuLQTqYmwaLA/HykGnG8dxfTvBqLFjzf
	XNMdlHnyszw7CbR2HvzOLFkrOasaZw+GhcOOo5wnRfAh4bzF89r1+BSBFnZfOT/HcyamYFhQark
	UKc7Ym1gn6r85Bw4SBiIVa26mur5kyyQ6kAEGwnahkqJ8X1rluHR6OpO43w3FKFG7gobdw3KvmY
	wB8zb9ImNt+Qs3gTqLkxOoVWW9JmmLDAmFd4J57o8NmI7RMCanQDZuGnO7MLpqR7rhjoDXJg7H3
	V2GgL3/BZG5oTS1STm2b/NuzjNqlLNNyZiDvGF28LVRJnWGCxhZL8kyEzOlx//WylIVyRnTDBQn
	nvLol2jDw22R92os8hXjxiChuIY1EFyTSd2h4pnc1IyXBzOo7mCcZXRn4UTw==
X-Google-Smtp-Source: AGHT+IFFLWa19f/FrNdVnPDEN0o0mcIg80kenGGv9VHwXgspqh1uTCGkvt60mnvGNp1nA2FhcS1EEQ==
X-Received: by 2002:a17:902:c412:b0:264:cda8:7fd3 with SMTP id d9443c01a7336-2951a46d112mr24813365ad.6.1761900110413;
        Fri, 31 Oct 2025 01:41:50 -0700 (PDT)
Received: from adriana-dmi-upstream.sjc.aristanetworks.com ([74.123.28.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952699c9dbsm15333505ad.84.2025.10.31.01.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 01:41:50 -0700 (PDT)
From: adriana <adriana@arista.com>
To: ilias.apalodimas@linaro.org,
	ardb@kernel.org,
	trini@konsulko.com
Cc: robh@kernel.org,
	krzk@kernel.org,
	jdelvare@suse.com,
	frowand.list@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	vasilykh@arista.com,
	arm.ebbr-discuss@arm.com,
	boot-architecture@lists.linaro.org,
	linux-efi@vger.kernel.org,
	uefi-discuss@lists.uefi.org,
	linux-arm-kernel@lists.infradead.org,
	Adriana Nicolae <adriana@arista.com>
Subject: [PATCH v3 2/2] drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT
Date: Fri, 31 Oct 2025 01:41:01 -0700
Message-ID: <20251031084101.701159-3-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031084101.701159-1-adriana@arista.com>
References: <20251022114527.618908-1-adriana@arista.com>
 <20251031084101.701159-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Adriana Nicolae <adriana@arista.com>

Signed-off-by: Adriana Nicolae <adriana@arista.com>
---
 drivers/firmware/dmi_scan.c | 58 +++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/firmware/dmi_scan.c b/drivers/firmware/dmi_scan.c
index 70d39adf50dc..acc0e18b8d0f 100644
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
@@ -670,6 +673,54 @@ static int __init dmi_smbios3_present(const u8 *buf)
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
@@ -718,6 +769,13 @@ static void __init dmi_scan_machine(void)
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


