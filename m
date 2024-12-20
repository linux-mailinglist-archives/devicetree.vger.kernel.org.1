Return-Path: <devicetree+bounces-133188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B866A9F9A63
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 20:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 389D77A2473
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 19:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD31223E7D;
	Fri, 20 Dec 2024 19:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ppu8lkw7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B09A22371D
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 19:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734722724; cv=none; b=Nf0xAMUPOZZ7G0FpqORQ65+MYQ+Q9tu9WDjZMTNZaINaGjGZF8RFuPcsbXYILbQ0K9ulHLwINVvn7NBc5+P3xHJ/Qiy9fmOz8Sa1gd79hLrVZu44a4ODOr+R5Tsol6LjsgzVuMBsg2a1C8eAXnsIq7R6QjQtRS0y0UOAnCZbvn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734722724; c=relaxed/simple;
	bh=bFKftFHPYljcnx4vBCiemniJj/6au9bLCdd1QZtxopw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=saoC/0b8IBfTEL08QcXZvpKT2m/Ous1SgHiK8+SlmMIlqcQHAhU3kn+hJ5N+njohWmXBLqlDeZpdkyMsOlssLAo3wXOO3cXOjOdZ2PfN2Ec4x7Gs2872rVFkDKimHm+DdJYkGEIrJhOxmxVAzQF7QXiUhVkeJBztbrj8hs5kSHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ppu8lkw7; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa6aad76beeso349212566b.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734722721; x=1735327521; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mYFutb0NWKnF0fNa2OYIjpA0YuFOIGmBiwPL2G+iLdM=;
        b=Ppu8lkw73ONgVJubVfKVFdo6UdzlxMehIWn04pmcy5TIKZazw+fh5/h0C0b9fNEn+0
         CrSzyXqfp32rWcPDewsyPe39CKjMA7PgVjtn+GnWIA/BiLrTsODma08ql3Hw80qUKby+
         qMXOdYRFuS1OUjxAcHIQBFCJjvhYqFAVr17fSBSwuCvJ2gdOrjGEc10F8jTj+s7/Aghn
         4f5YcCm9tYC85uOM4URgxOSQmMhIqOURl7RiKvHUYWleJ0GGLIlSC6Mr/sInWw699fMD
         /F60yHiNAV7QfNlrIYYBR1jEs0/ZAnhyGO1qVWRocr95xyGeFnuJHzLwc68ACknRbmLx
         oqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734722721; x=1735327521;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mYFutb0NWKnF0fNa2OYIjpA0YuFOIGmBiwPL2G+iLdM=;
        b=iMKW622Q9tr+pObcVGCxgP4kV67E9QdYVZWxbh+JeoiV+SngZmywL7VJbgolp4CRoi
         RhdnNkEv3B2f+TN5MLoJO/XPKOElraww6FilSIHuNbEGoAaFHiVormbA+G6Le0EEdKW+
         PQsTHirAUz4UfrNcaUdfEb1G93zxXoTCySu+2Dxoed3ZY8KWvgY+T4T0GYjMt1B3YKnY
         goliYnrQlWzoEGKU+wbR5c9pInsGG9Pf6mcG8jV9H42Uo7KdxBjdO9kECeVTPa7p6xkG
         oD/P6p1uYdl6IRCoWiLGKtsGYsgOu4r+vzBE8WKC2lbT+P01HAwhclW1U7JlzcYG3Gb1
         C9sQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3de4m9ho3izKzn/pIGTpeXHI8fAkPAmmakCU0l73JzZ4KVmHnEXr/FsUNLaSpXsvEfOX80KOag5/L@vger.kernel.org
X-Gm-Message-State: AOJu0YxoESQShcaoX0GUu2NTcds1zTb/+w71sIQYfmvwxVT3ObOvRYR1
	2aQdCbXgCfbazTq+IG413NKbUKMx75gFwghC2muVytOrH5C0l62SefcbUfTG3ME=
X-Gm-Gg: ASbGncswbHU02klL9suiOLCUfQGwTWqSD/2PYOFaz+cWvtVWDwTLI8g9anEuamfKcly
	17XDdSpCvVjysklm6GGStFZpr0R/z/slZ6ltQo5Ei4BFu9ZCsjsYvinky+AWhZeo3hrNzyisc71
	HOoBPi8dDRhcbn1SCBXz+EAzhEtgIst/q/pys+31zQ8ol/qS32T1q7UdlAqCVKs9JDXaREX5e18
	vc+Wiw22Yg3CQGt2UUNNMRwrS2bqIEJWOrgXRLzQHNJQYnKlgSZ6YVsVzIp38yiB9Y=
X-Google-Smtp-Source: AGHT+IH3htdiLf5KyJkH6L5LoCiDGH4ms05IDeue80g5zNXSRBlaGHLmKTFpbA+Z4PKjB5VWaCZqZg==
X-Received: by 2002:a17:907:3e8d:b0:aa5:1a1c:d0a2 with SMTP id a640c23a62f3a-aac2d0478bemr355400066b.34.1734722720741;
        Fri, 20 Dec 2024 11:25:20 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066112sm204152866b.179.2024.12.20.11.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 11:25:20 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Dec 2024 20:25:19 +0100
Subject: [PATCH v3] docs: dt: Make references and mention kernel
 abstractions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-dt-docs-refresh-v3-1-999754568b87@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJ7EZWcC/3WOzQrCMBCEX6Xk7EqaGEFPvof0kJ9ts6BJ2ZRaK
 X130949fsN8zKyiIBMWcW9WwThToZwq6FMjfLRpQKBQWSiptDTSQJggZF+AsWcsEUxrMLjgXJC
 tqJazBcGxTT7u3pg/yG/rYTDQ07I3xqrScmw+u8qRypT5e1yY1Z7+X5sVtGCurtfm5o12l8eLk
 uV8zjyIbtu2H9nG89LRAAAA
X-Change-ID: 20230505-dt-docs-refresh-515edbdbbd01
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Grant Likely <grant.likely@linaro.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This document is named "Linux and Devicetree" so I think we
should write a bit more about how the device tree fits into
the Linux kernel frameworks these days after we have created
the fwnode and swnode.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
These docs are old and outdated and need to be edited to
reflect the current situation.
---
Changes in v3:
- Resend because v2 seems to be missed or ignored.
- Link to v2: https://lore.kernel.org/r/20230505-dt-docs-refresh-v2-1-56bf359c53b4@linaro.org
---
ChangeLog v2->v3:
- Rebase on v6.13-rc1
- Resend because this seems to keep being ignored.
ChangeLog v1->v2:
- Spelling mistakes
- Resend because nothing happens
---
 Documentation/devicetree/usage-model.rst | 45 +++++++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/usage-model.rst b/Documentation/devicetree/usage-model.rst
index 0717426856b229be1c52efc79b18dbc617d4c92f..32dca4ca4384502fe2065efe650daf517435763c 100644
--- a/Documentation/devicetree/usage-model.rst
+++ b/Documentation/devicetree/usage-model.rst
@@ -75,7 +75,44 @@ out of mainline (nios) have some level of DT support.
 If you haven't already read the Device Tree Usage\ [1]_ page,
 then go read it now.  It's okay, I'll wait....
 
-2.1 High Level View
+2.1 Linux Kernel Firmware Abstractions
+--------------------------------------
+
+The Linux kernel supports several different hardware description
+frameworks and DT is just one of them. The closest sibling is the
+:ref:`Documentation/firmware-guide/acpi/index.rst ACPI`
+DSDT (Differentiated System Description Table).
+
+To make it possible to write a device driver that will adapt to DT
+or other hardware description models, the kernel has grown some
+abstractions, first and foremost the firmware node API, exposing
+device properties. The firmware node "fwnode" internals can be found
+in ``<linux/fwnode.h>`` while the device driver-facing API can be
+found in ``<linux/property.h>``. The idea is that if a driver is using
+the firmware node API, it should be trivial to support DT and ACPI
+DSDT alike in the same driver.
+
+The fwnode framework also makes it possible to modify and extend the
+Linux in-kernel model with software-managed nodes "swnodes" to apply
+quirks or manage registration of devices that cannot be handled any
+other way. This API can also be found in ``<linux/property.h>``.
+
+Further, when the DT core register devices these need to fold into the
+Linux device driver model, which essentially means that some kind of
+``struct device`` has to be created to match a corresponding
+``struct device_driver``. This API can be explored in
+detail in :ref:`Documentation/driver-api/driver-model/index.rst the driver API documentation`
+but what you need to know is that the Linux DT parser code will on its
+own mostly spawn platform devices and AMBA devices on the platform
+and AMBA bus respectively, and apart from that it will augment devices
+spawn on other buses where applicable.
+
+Every Linux kernel subsystem that want to supply additional data to
+detected devices using the device tree, or that want to provide
+resources to other devices in the DT, will need to implement calls into
+the DT abstractions.
+
+2.2 High Level View
 -------------------
 The most important thing to understand is that the DT is simply a data
 structure that describes the hardware.  There is nothing magical about
@@ -97,7 +134,7 @@ Linux uses DT data for three major purposes:
 2) runtime configuration, and
 3) device population.
 
-2.2 Platform Identification
+2.3 Platform Identification
 ---------------------------
 First and foremost, the kernel will use data in the DT to identify the
 specific machine.  In a perfect world, the specific platform shouldn't
@@ -180,7 +217,7 @@ However, this approach does not take into account the priority of the
 compatible list, and probably should be avoided for new architecture
 support.
 
-2.3 Runtime configuration
+2.4 Runtime configuration
 -------------------------
 In most cases, a DT will be the sole method of communicating data from
 firmware to the kernel, so also gets used to pass in runtime and
@@ -217,7 +254,7 @@ On ARM, the function setup_machine_fdt() is responsible for early
 scanning of the device tree after selecting the correct machine_desc
 that supports the board.
 
-2.4 Device population
+2.5 Device population
 ---------------------
 After the board has been identified, and after the early configuration data
 has been parsed, then kernel initialization can proceed in the normal

---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20230505-dt-docs-refresh-515edbdbbd01

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


