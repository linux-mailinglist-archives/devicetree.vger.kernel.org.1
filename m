Return-Path: <devicetree+bounces-240315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29786C6FCAF
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id CB21428A77
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3586A3A79BA;
	Wed, 19 Nov 2025 15:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5VN9gtA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE21B3A8D50
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567168; cv=none; b=M7m5Hy5HGm1w85oiz62TB2yw0ZwhgKvTqT4V340+mGMo+BpewEgWpgvn2cpNszx2sFdvKjFj3uwKyg4DfqOlZgzZDHUE+CYbxIAXhbM8KToG2Sc8quNhYScGqGu44WUDtuv0gjMHoB2CmC9Lxhzx7dI+H+vD1ZLhlySZahYn95c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567168; c=relaxed/simple;
	bh=Vs8lQW7BawUxmkOmLvkVao/jUHVbMrAhKW0MzITmHHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mu0XE8aAiJDmVHqvPJaXA2oYJ9PJQfXHBQdeySjtBfFqfSPU8PiJ/SdpBQcrSyaYOQF/DiUPD7NZ2fT0pj2BXXQLE9831yXcrrikeTJJZIrpcyxTPVDKuXeZKvvWFzvpON4HELapMtTdJiRtp7PgEnXzKV7SQ4pbMo6Sh6n9bxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s5VN9gtA; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3669ca3dso3464432f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567161; x=1764171961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=plmpXAswm1LBomkuKtBG6pEMvq3kPgWo3F0t41OaVKo=;
        b=s5VN9gtA7BI7QEVyZFA8bNSEEtzGadJpV0n75+YSnEQFbezbHy0V9//G5xZOOBKNy9
         w/dFXLVOJAGqEChl1FE9CuIi3WdPHYT0C7emqe3w5/eAxEPF4lTjCDpCOfPKuM1OxdxG
         VfxOhSXpLpyvUFKSe4R6FXxwFt3xjVEq8fpT8vy3fSk2d0ethXkqeMBhlLKM3gBYnspH
         /WaE3rgjBZi9tX1i2OjQR4fI8Ubqbk3BzV78jghkr3GTr/xiNPoZZNk1NgHpEXrLADPj
         o0K8GM49h6Vz7yGMKgEq8moU5p/xGZwKTyQFzpwXbiDxSIbrsvD/4tAX7dBJ0XU0jvrB
         JqMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567161; x=1764171961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=plmpXAswm1LBomkuKtBG6pEMvq3kPgWo3F0t41OaVKo=;
        b=SQ9ynhTG97dUUtTIvWsSwkj644scJSfMQNDekE5ylomGa5CS3Z/0Y1GwDT7bh74UIL
         6S8xujNa+2uJZLahdd6XWtdHUyAL+WOgastK72hPu7neB/h7BlTWZhfzvnZZnRN823j6
         LuyB5ratMKWllWPXCvuXH635ZJyYrbSXgNpe4uspDGEksOn7RZxEJZKGytDgLNdxR4M3
         znkC/tXPKFbDWhCy1fQWyrUIXb87mhFDPQ0buLyaOqBQ5sMcvt5aBe7yi9aejk34xR52
         KHWoqGsJSF+D0VvUoWnrZqx05+J7BaS9swtgTQTW3m/7FTfp2QokC9rMA7HM3VG9EEjk
         z88g==
X-Forwarded-Encrypted: i=1; AJvYcCWRCGe1di7AgS9oTDy+JQUnfQ3/t/HPFKCrFFx28QbOV+uIm/IPxr+VnQoyD59kv8c28IZMDSbCt2HT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5oqQV4RvzhNimgtuIAcFV4lQKCm5Tc6JyDJfXhLMN3kKHNAfX
	2j1UateeTDvJ8crGq7q9bIrhR/bAVkdu0fgl8ODJo09dPzGkvZ+gMrfrilNVns/SVpg=
X-Gm-Gg: ASbGncv6pRmoD+xAkflYJdlHz9lHQnSDV9l5yK1WSrVDxazQo3oGpmWPYR/uYclveyr
	naN9lG2wWmXiI+y8TuwY1LgwUanvxzj94qGwh4NWTsdeRSisY7tQesrzw2o/s3dEiKRjpAI28V6
	Pfa3AqGitvVRb8Vdjl3Q28cCsc5BbRTOiedPzf/VNoMb2Hy6a8ePaHCdvm0sIMZIM76U4ctLbcx
	Kg/htSzVDWqlUB1Y5iKMsN597MchcKOo3vTQ4TBYB0z6bSPokCH8pzpUUeDzunKoJI02xtR5DeK
	8CmT6Moi1gfuhCnCcnzN9GBYNp5DwQyfNI+0F+zGOuSrkwYIEMSPL9DYBBmySd3qsnUBfnPzfM3
	MKOwDqvoLHO4qZeD11a1LGP2EwiJc0ziK4c5vzidupn7YJM10C0TSV/Cv11cIKEjapbK4LRMr++
	cZTr1vBV/kzDn6uSEKsLcLIj86HhV05hNE4Vcpl/OE
X-Google-Smtp-Source: AGHT+IE/UWqNyS6htQwPVCsFX9f3Bqg52uzu0v0K2d2YIVRMOF1vqDQaElTCpee5ClbOZybd51PSbw==
X-Received: by 2002:a5d:5d0e:0:b0:428:5673:11e0 with SMTP id ffacd0b85a97d-42b595a4ffbmr19851079f8f.40.1763567160526;
        Wed, 19 Nov 2025 07:46:00 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:46:00 -0800 (PST)
From: Eugen Hristev <eugen.hristev@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	tglx@linutronix.de,
	andersson@kernel.org,
	pmladek@suse.com,
	rdunlap@infradead.org,
	corbet@lwn.net,
	david@redhat.com,
	mhocko@suse.com
Cc: tudor.ambarus@linaro.org,
	mukesh.ojha@oss.qualcomm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	jonechou@google.com,
	rostedt@goodmis.org,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-arch@vger.kernel.org,
	tony.luck@intel.com,
	kees@kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [PATCH 25/26] dt-bindings: reserved-memory: Add Google Kinfo Pixel reserved memory
Date: Wed, 19 Nov 2025 17:44:26 +0200
Message-ID: <20251119154427.1033475-26-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119154427.1033475-1-eugen.hristev@linaro.org>
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add documentation for Google Kinfo Pixel reserved memory area.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 .../reserved-memory/google,kinfo.yaml         | 49 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/google,kinfo.yaml

diff --git a/Documentation/devicetree/bindings/reserved-memory/google,kinfo.yaml b/Documentation/devicetree/bindings/reserved-memory/google,kinfo.yaml
new file mode 100644
index 000000000000..12d0b2815c02
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/google,kinfo.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/google,kinfo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Pixel Kinfo reserved memory
+
+maintainers:
+  - Eugen Hristev <eugen.hristev@linaro.org>
+
+description:
+  This binding describes the Google Pixel Kinfo reserved memory, a region
+  of reserved-memory used to store data for firmware/bootloader on the Pixel
+  platform. The data stored is debugging information on the running kernel.
+
+properties:
+  compatible:
+    items:
+      - const: google,kinfo
+
+  memory-region:
+    maxItems: 1
+    description: Reference to the reserved-memory for the data
+
+required:
+  - compatible
+  - memory-region
+
+additionalProperties: true
+
+examples:
+  - |
+    reserved-memory {
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+
+      kinfo_region: smem@fa00000 {
+          reg = <0xfa00000 0x1000>;
+          no-map;
+      };
+    };
+
+    debug-kinfo {
+        compatible = "google,debug-kinfo";
+
+        memory-region = <&kinfo_region>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 2cb2cc427c90..8034940d0b1e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16164,6 +16164,11 @@ F:	Documentation/dev-tools/meminspect.rst
 F:	include/linux/meminspect.h
 F:	kernel/meminspect/*
 
+MEMINSPECT KINFO DRIVER
+M:	Eugen Hristev <eugen.hristev@linaro.org>
+S:	Maintained
+F:	Documentation/devicetree/bindings/misc/google,kinfo.yaml
+
 MEMBLOCK AND MEMORY MANAGEMENT INITIALIZATION
 M:	Mike Rapoport <rppt@kernel.org>
 L:	linux-mm@kvack.org
-- 
2.43.0


