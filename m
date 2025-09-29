Return-Path: <devicetree+bounces-222552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F278ABAA92B
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 22:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4531D7A1577
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 20:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61EF24E4AF;
	Mon, 29 Sep 2025 20:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="T7anGM2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f228.google.com (mail-pf1-f228.google.com [209.85.210.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8439723BF8F
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759176423; cv=none; b=aqCmKGCqai5sizq1V4MDwwAVwr44Sk7DPitSSJhyxcAiQLiRIE0jMmyZR1ZmZqpXHgHLbnkmz4xRz4Njs0bTmuSBtFnf1xitjxBAtu9Gx5FLst8G9H5zy4gcQUCtgIKSpnuQtiFmHQ2wCTuB7hyP2W4W1BHlFcbJVU/O9/zVNAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759176423; c=relaxed/simple;
	bh=twWts/BBJvvdpMllhwwy0sPWeHXBhThVVr0F+f1kI8U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KiML3TK1luTvgK/z/gvCjgh5f1nPMCqsBU3uhvjz/CSp7VXodoEg3ZP90vMgD2sXAOG9FnDlpvz4pN15/Wg0seQOaJvocZzCmtnwXph05oJ+WwSajcHrwi3AziKpDlZkkO2nckI2bLh9F8LG7xNVuQCTBKtpPliOOw1oaqhaQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=T7anGM2X; arc=none smtp.client-ip=209.85.210.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f228.google.com with SMTP id d2e1a72fcca58-782e93932ffso1888095b3a.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:07:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759176421; x=1759781221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqovZHXYm5Oo5CU4XtE9N0uxOF2JJp5QxUlgkpF6rV8=;
        b=KvNiIlQrgyV3SE9uQoYcsF6meKJ8TlaXZcrj+LQvotNU564EOpzyHjY9/exSgA+dlX
         uEgSDkvjIjNp6nay/Wnzgy2Fi+XVpjYfM/XaNmRO7dmiI4+r8ztBpyHQ4Pi7lB+LofuQ
         pzhlfwDeMgcM3FZuLRQC7x4Ctsyv8F2eNtaDmsToxbzkAc2cdHSZAFBWWlvKDLS/S37q
         llKXO2jV7ezI/d6MSbyJWWVWbJBnkx0QvMaxjDULgipVTP5IYbV0XvIzRUgmJqsy9UB2
         Z4Pz09DDzadNIcydVw2j7JrWkcZ5PMzNub2cKOQ7IFjDp43MU20RKIfYGOepDjqIVpeU
         gBsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJUgZWmIAQzZ57ZEDx4ALjtLFfAJIv7Cz9uU2fu7JJYa1q+5AMJfcxuOgfSbtJWcJAka5uQ6P0FpcY@vger.kernel.org
X-Gm-Message-State: AOJu0YxD0IoT94sVLQPotHW3VGxON3y82PEag+D0jXEn8IsSxKX/dpYr
	vOoy/uyhptheUiq+qOzXXQRUGxDO0y/DXuAhfMIKlxTcpb2tmwCiVW2XIze3EeE13xjc5p8TSHU
	SThN2h498QX5/Dmjntd0wuVfJooVwfUwx8xsQUzrhWvT6eGdOwg1Ojr4STh1k99pi2lY60gFm72
	C8kEUGat29ylukg12cKeAeoWquXiotzCvgr5oxRjEYg/TD9Jn/P51rZIl7LeFLCmNK7GIPRyyn+
	wtb3cZgizhwLg==
X-Gm-Gg: ASbGncveBwkY+uIs7i+pBxyGGs0zuqo1tjyIMw3dLo3ejlXwcDx/vjMU3K2MpWjws3b
	XtsEdW7jFPQOuvwTV9kLg9k+BOyXl5Wg0Nz4o0JgJZ/y0pfyEMVFHqLXZqW/ayr/u5QfprT47OI
	pVfyBjF2ga6NKYdTj34b7hNRTQDW9eKwTmKgFrQykN1eqCUV6bdFWhECVCQRNruzxlGTBaFsEvk
	lx9cZfA+rUm/pfBrU5Q7LIRO+Cb5wYid3mzcpoY1kaLSp7+RY5PI9g9TGB4oNKjjMpFjiMNQkgm
	K/eoxZaGgNb9E3GxK5jPim5SypALhcL2xHLHF3/dI9YRLJw2vPaBdBo7ra7azupm3A1SRBfHGDy
	ywgUtBviY/8kf0xHQGjEl
X-Google-Smtp-Source: AGHT+IERTOv6+RNX/l+mjFUW471z6m6KaMUvFuk73Zf0iukyQ2vh3rtM8yAQg0t34toBSrH79xK7C+/NTCw5
X-Received: by 2002:a17:903:a8b:b0:27d:339c:4b0 with SMTP id d9443c01a7336-27ed4aa57f1mr142898495ad.35.1759176420731;
        Mon, 29 Sep 2025 13:07:00 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-27ed66dca5csm10250145ad.20.2025.09.29.13.07.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Sep 2025 13:07:00 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33428befbbaso6097376a91.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759176419; x=1759781219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqovZHXYm5Oo5CU4XtE9N0uxOF2JJp5QxUlgkpF6rV8=;
        b=T7anGM2XAd/NzmUdFsysFvtl1kbUysF3HPvwoszNcxe9r7iJoypdpRMP6rb5LLQOYa
         ivB7FfFoftOcPrkvQbEja6s/EyHes6pigumk9Av+r+3+6jECnE+EtINJFXEi0ThOFjGp
         TDqzrW9wAXlbKgCNH6T/2CKRlukQpurd8JiyQ=
X-Forwarded-Encrypted: i=1; AJvYcCW+YHtUtmNVzOYeZZd7dMbSwhug1uTiQLGjiVz2XQSobaPKzgf804Hflg0Nnt8kJiwsNf6BfAH0Un25@vger.kernel.org
X-Received: by 2002:a17:90b:1d06:b0:336:9e78:c4c1 with SMTP id 98e67ed59e1d1-3369e78d5c6mr11368298a91.15.1759176418961;
        Mon, 29 Sep 2025 13:06:58 -0700 (PDT)
X-Received: by 2002:a17:90b:1d06:b0:336:9e78:c4c1 with SMTP id 98e67ed59e1d1-3369e78d5c6mr11368259a91.15.1759176418122;
        Mon, 29 Sep 2025 13:06:58 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33838735194sm2121479a91.22.2025.09.29.13.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 13:06:57 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH 1/3] dt-bindings: hwlock:  Adding brcmstb-hwspinlock support
Date: Mon, 29 Sep 2025 16:06:24 -0400
Message-Id: <20250929200628.3699525-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250929200628.3699525-1-kamal.dasu@broadcom.com>
References: <20250929200628.3699525-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Adding brcmstb-hwspinlock bindings.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
new file mode 100644
index 000000000000..f45399b4fe0b
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwlock/brcm,brcmstb-hwspinlock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom settop Hardware Spinlock
+
+maintainers:
+  - Kamal Dasu <kamal.dasu@broadcom.com>
+
+properties:
+  compatible:
+    const: brcm,brcmstb-hwspinlock
+
+  "#hwlock-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#hwlock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    hwlock@8404038 {
+        compatible = "brcm,brcmstb-hwspinlock";
+        reg = <0x8404038 0x40>;
+        #hwlock-cells = <1>;
+    };
+
-- 
2.34.1


