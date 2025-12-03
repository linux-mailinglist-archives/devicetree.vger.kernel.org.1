Return-Path: <devicetree+bounces-244110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C541CA12EC
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 19:55:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72968318727B
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 18:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9376E2BE7B2;
	Wed,  3 Dec 2025 18:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N7FNjJuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC7831A805
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 18:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764785112; cv=none; b=a8MB/EfB08hDZjF2WyN5rAuAs+IzkcH/9tNSvPzvBZGh3mY18x26TTzIfi0wm65xKoSR2TpNnv7BuPLdx8lW1lwbQDK7MIP4/qHzJ7AOCIzt4/BL2XBfgiSnE0U+1JPHgIVOwoy+cKeDzbo4vZiOisSCYy2nR1hOH3YgUl6gAOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764785112; c=relaxed/simple;
	bh=EjjfiB9cBHAXSvDlgStQBwBw5SyzbG3m02xMWWjm2PU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IQiUcXEITTtpFtr0KolFBlsiJ1/MJu+lzb5Sg9AP/9KwwebLykiyR51w7BALkdh4sjblE/GwN/E6SrKM1YiW36cwk1334fMDYHKKTPtFoJPBp2km9TcSF6wT0Un8IUrSoP1fBkGlmWcZOqY+popTEIdkQZb8L7m03XuOMGSVrQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N7FNjJuk; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so397365b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 10:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764785104; x=1765389904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r8aUKLL0U4HpZQYQ2ev6PbF/etF9iGnebdLww9uoN2Q=;
        b=N7FNjJukA26CTj6MzDyUQowrglB4TIXAIBwLViVds8jxgzoGX4HHPv/uR35AnA+I3v
         WzPf8D/rWGf8ZGoCSQ5KpBEm5pCfEOViOF3HEMVcxiTBNwdvCy1/wkMg5UoggFdHcshX
         srPErQLGgdZylEPo6QT8esjWoSCg3XY4wUyT2EntCIb2Fj4M+7gQAL8Jbeg821+VLGl8
         QNSgEQo7mSYIETyki45C+LFFGnvREpRXLGTCGprWs5Oelb0LMm24VWfJ0bv8QM/QJWk2
         NE7FPBmMphe2JhUSHl2+7WYWgFYO7PxLfXTxSFxd4Q/Up/EtsVE+GzRYeCtbz7QBTmDm
         6/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764785104; x=1765389904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8aUKLL0U4HpZQYQ2ev6PbF/etF9iGnebdLww9uoN2Q=;
        b=qn0ARDqvn6ByBm9LAFOtAeTVFDnpQDsrxH6Y8W+exqTP511u6+DgwJdOV6rGV8oDYZ
         u4SgnacdCms7V5wgtWkHGDOPNo0T/2j0coHevDwk55wxgHGBQToTbqVXYlhSl7YwAxsA
         V2wxs4ECemPg+6Og/YsFVk+Q7ByiQUwZMmSB/de+mVdURdYlE8Srdha3vgVJqGKboYnh
         TwN0bIUSvuYmt1MtY6orHsRbTkv5SF6ArrnvfhA1xaNPEv1rzi6iTe6GVf7otd17sRd4
         1iWerZiUF3UPK6D6niRvdecyaExxX8sGRMLyh0wawvFb/TsQLomtCHZ+uEPTNppQIxAU
         B+zw==
X-Forwarded-Encrypted: i=1; AJvYcCU3/hMudqrzkL4DXeT5XFgTKHDT9ngZCp6l+ZsZ2w9ylxKvDZY2/iosCyv3LJQB7BlDu6SQhbaNVQ+L@vger.kernel.org
X-Gm-Message-State: AOJu0YxuU7NtvZtGK5b97j6A1EU5ZnD3J+zS93nXKpsA639pjduPG95x
	SSL+L6XFxG4BWHUynWkfh7Ya29BJCJxDcLF/rWdbZuXFc3CbRhLMF5/cRbvpXsqU
X-Gm-Gg: ASbGncvz+WRtk2CDQxYOf5RuOUTrg0XAegD5TxxA8fZb5ig3mTGlugnVHAlZzh2sYw5
	tH7r8jgfq4hbtwygvPtShBmcW6eon7n/OEKAcZKFoe9jnQNh1OOqknSYoTwY+Rv+WqPuplZcNJU
	Vi9z+FRK/eTvlOJdePT9aOMNGnHdm7emgDWbKMK3HZm9B2/Odc6M6g/9CVi11ReiDaQ0vOd5fjM
	0MtsUvQcleHtCsJRhIEO5XMmTG3cs/0Dl06C9lYzR4yWxr2JEHZq2al+4Qh/wnbEsWePc+eqyLQ
	JIyptHlGTN+2C/yqUpIF5avrbIH0sv3dy8RhVRt8L7Z/qeNF1HbUvVIwi2pi9Yju+W595QDW5fQ
	si8JBVi61oL9DpwhSMN8k1pmHWxRGVInoSaENz2tmpgNmnl/xFQ4SsfbGlIKHUkzjnqi9+ZkF7J
	adeZlVkz21QZaD3WaUA7WPx2Y7iccFvA==
X-Google-Smtp-Source: AGHT+IFEixLGV3A8+6jlL7a/8Uv2OMwWRqulw8eWOs24wopjQE6qdYvBYZM9hQQi+wS8cPkdVKqjPA==
X-Received: by 2002:a05:6a20:3944:b0:342:1265:158f with SMTP id adf61e73a8af0-3640387a27bmr191416637.51.1764785103491;
        Wed, 03 Dec 2025 10:05:03 -0800 (PST)
Received: from soham-laptop.. ([103.182.158.110])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d150b68367sm21135011b3a.12.2025.12.03.10.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 10:05:03 -0800 (PST)
From: Soham Metha <sohammetha01@gmail.com>
To: linux-kernel-mentees@lists.linuxfoundation.org
Cc: shuah@kernel.org,
	skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Soham Metha <sohammetha01@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: remoteproc: Fix dead link to Keystone DSP GPIO binding
Date: Wed,  3 Dec 2025 23:33:37 +0530
Message-Id: <20251203180337.50831-1-sohammetha01@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The old text binding 'gpio-dsp-keystone.txt' was replaced by a DT schema in
commit aff0a1701b020c8e6b172f28828fd4f3e6eed41a
("dt-bindings: gpio: Convert ti,keystone-dsp-gpio to DT schema").

Update the reference to point to the new file.

Signed-off-by: Soham Metha <sohammetha01@gmail.com>
---
 .../devicetree/bindings/remoteproc/ti,keystone-rproc.txt        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
index 463a97c11eff..91f0a3b0c0b2 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
+++ b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
@@ -66,7 +66,7 @@ The following are the mandatory properties:
 - kick-gpios: 		Should specify the gpio device needed for the virtio IPC
 			stack. This will be used to interrupt the remote processor.
 			The gpio device to be used is as per the bindings in,
-			Documentation/devicetree/bindings/gpio/gpio-dsp-keystone.txt
+			Documentation/devicetree/bindings/gpio/ti,keystone-dsp-gpio.yaml
 
 SoC-specific Required properties:
 ---------------------------------
-- 
2.34.1


