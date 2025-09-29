Return-Path: <devicetree+bounces-222553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D77BAA92E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 22:07:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD9383B024A
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 20:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48444244662;
	Mon, 29 Sep 2025 20:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="DpIgItuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f228.google.com (mail-pl1-f228.google.com [209.85.214.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8CB24A043
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759176429; cv=none; b=Qu6uDkUVG/bO3KbwGIwcakiB7WwAq4t9Bd1g/ezzdBstZPF2QmQmCfVVn3RW8DRiIR4exouvHwaGZpBT9XouTRmrCpT4FrGtsuO/ysds07ScGQwffE+pY+Ss8KGy1vV3e2Rc/3vNppi5wPuCrdq+GFh+qn6l9WhjZmsLiFTSKpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759176429; c=relaxed/simple;
	bh=twWts/BBJvvdpMllhwwy0sPWeHXBhThVVr0F+f1kI8U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rG/mK3cgQrhtygega7XeQLr/8FfUxSivHZjGxhdQToJkUMAsO4W+lLey+yltEL0GceZkioHc0Rb3bxG9HH5Qm3mrRSQhbU3VcL8J9Pm23xGjwfGsoOJP4ThoG2R5nMsoDIQ2ygHHYL01+gAbEP+yXRMdz0VwJpOcvdsHpfGXPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=DpIgItuA; arc=none smtp.client-ip=209.85.214.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f228.google.com with SMTP id d9443c01a7336-2680cf68265so43188515ad.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:07:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759176427; x=1759781227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqovZHXYm5Oo5CU4XtE9N0uxOF2JJp5QxUlgkpF6rV8=;
        b=QWyDUbr5i//Z1iirsnvcXYmprt0yaxIMXm1xiylYqXueJL9ccA+HQ31axURQIQn/0X
         AzukovBPzxE67DWGwHqSqOgtQHAC7mNOgWZX5Sasy/N2WYAUB72D/R2HPdlNMJqWShgu
         5N3xVbQpIj8j0JyyvWuxiMVw/p31P2MoAvj4q7k8gTfpjsQLiho2/IYiV8LGytUzzPJ2
         SxHCaC14F2wVJTCJKiWXGlixa17LUltJ7C5XI/Pc8xDfIh7XbWI824EtsQHvLWTRnqoU
         L7A+zJSIAS5zJtzxu8X5DegJkNHpAdzOxq+TVah6DQiXjTV7gjanfQrru+S6ybijb219
         niSg==
X-Forwarded-Encrypted: i=1; AJvYcCXkGZvLNxe+hk7Md8PI6yMZ4SYsKaIPkaScyKWp5DUx4L4uCCi60ojkoM3z49cKTmHPGOt2NiZVJk5K@vger.kernel.org
X-Gm-Message-State: AOJu0YzM1vGkRH4Fck9YpsXdIglqeZXp+pUxh4lGF4ST8yl/GUVD3bJ3
	+0/4j0lDQobgUdxq1zemYuvp8CZvzbSg6xq0nftpEf4QMuTjbkY1iq4Y3iqnV/nsyNZLgUxB7Fx
	rYj5fCswS08NTfqBGplnBW1VC+MGRriWn93f+ap+X9UNM5QN7QxdzFOqF3AMmWWTs87T9GFpf28
	xKRgiAa9C6ksWy8NM2chGnRbhRXrGwkSG8tKBOGB8xiGSvqQb5Hk/rfhA2LxKDv3MFCGWP+01hZ
	+pY2Ic5hjAWuQ==
X-Gm-Gg: ASbGncvluWJsu1W2QRN6b2Z8OJENPYeL4dEq4dEqFbSO0PvsYx7LjwkClnMVNWf7Y36
	Jw80ZUm9JKnS/vJqs7ehsIka8zXbavcBFZzA4gU4ndMXfSeSHAjX8x+/fEQSUIpU47Xha9HfVZ+
	I3siXpcCIZ8pFlCZDbK0j6zcJL6z6EY79P0zERRwzUhqYKTcm5vKgROjlxQPotRnINFUJTy55OB
	x+LMEdjnhabvD1Z5LVRHCf2Rm/RcIOsKKpKD3pbZ2dopPOk+B13PQm3FAU4j1XHt+D5qB6UHj5E
	2OcrYqRZYrnnvB9YgFTtGxcA6G66WDKpKZstdKkr9Qm9VYXLnew+gA6buiYks/wKfTG4Q+asNcX
	5Sxnd8lbVE5iOd1UXb17TDhZFrQRU0KIOvyBycePQ2mul0UzmcRKbgoISapcwYTNB6h/nI4a7gh
	s=
X-Google-Smtp-Source: AGHT+IGyw0QTMNgx3iKTCsnayJYd7ESaZ+DE33p3QMB5LHkcxl7IJxovDZXyZXmjYhXIB8BRqjRY8IKraLEG
X-Received: by 2002:a17:902:dac2:b0:260:3c5d:9c2 with SMTP id d9443c01a7336-27ed4a93585mr190563575ad.48.1759176427111;
        Mon, 29 Sep 2025 13:07:07 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-116.dlp.protect.broadcom.com. [144.49.247.116])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-27ed67e66easm11259785ad.45.2025.09.29.13.07.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Sep 2025 13:07:07 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befb83so5775935a91.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759176425; x=1759781225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqovZHXYm5Oo5CU4XtE9N0uxOF2JJp5QxUlgkpF6rV8=;
        b=DpIgItuA/K8nC/n9G2Y3rf47n/R8vg7U4qrfGbDMZmVlbJjiNw7uMarM4gY6rp4NG9
         zK0sPELYbsEYMJyg4yBdwavUBshzwX+1jEwRjbl39tIz6INlI28igHpSwgT08D+NOhHu
         4e0UuzmXGTnH8bLxL2M+cZ9rkQKAHs2Yna33M=
X-Forwarded-Encrypted: i=1; AJvYcCXFUWjUX+S/+ak80sduBKNvdGcTzWfqbbE/ZL/39pQVmoxdH11ADqu42XsTWt/4FDS13iYEQCIIKL2Z@vger.kernel.org
X-Received: by 2002:a17:90b:1c81:b0:334:29f0:a7e4 with SMTP id 98e67ed59e1d1-3342a2bf175mr20116991a91.21.1759176425637;
        Mon, 29 Sep 2025 13:07:05 -0700 (PDT)
X-Received: by 2002:a17:90b:1c81:b0:334:29f0:a7e4 with SMTP id 98e67ed59e1d1-3342a2bf175mr20116976a91.21.1759176425253;
        Mon, 29 Sep 2025 13:07:05 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33838735194sm2121479a91.22.2025.09.29.13.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 13:07:04 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: hwlock: support for brcmstb-hwspinlock
Date: Mon, 29 Sep 2025 16:06:25 -0400
Message-Id: <20250929200628.3699525-3-kamal.dasu@broadcom.com>
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


