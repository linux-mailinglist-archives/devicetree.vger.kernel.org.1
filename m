Return-Path: <devicetree+bounces-266623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMB7MqXnlmmNqwIAu9opvQ
	(envelope-from <devicetree+bounces-266623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:36:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7B915DDB5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 560273014641
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9FA329C7B;
	Thu, 19 Feb 2026 10:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lLRDWlLN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10D830B533
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771497356; cv=none; b=QbD8z/7JS1NWHTV7Pa+LLJSlg7rqsCF263yooGksCPen68Kfnx1SvtPmoMM28ES/LqnDVVuwONpKk5kuIJBB8uqFtNnr2Z/b6X3rtkphufc1mWZMdmBMZ1FCQqfuzwSNpx8NiGbCdtW68g+bC1JGpBrn50MlBCORMeDucP3zNzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771497356; c=relaxed/simple;
	bh=dI8V4xKa6ItYg1Bq44OfQbhIjgj/tiomTOfmVIXMfxw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lTcbSlnm0GeM/DnYa0v9ZTB+k5/fJ7VJAi0UB3rmSzG5DkWQ60GzBZ2mCEWr2Si2gFMHvjtno1l7aZL83Arn5MtXKwgKcwcO9xS1YAc8EIIIr8Bx3ODMHYLpffEBwvBzcOpJ3k1xt8ek8phbFFfyQLdc51HxfxqvzlbZUnMdKPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lLRDWlLN; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-82310b74496so392887b3a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 02:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771497355; x=1772102155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EYzdCHN+ZDO6pwEpgPPlsnEbhBhJZMjBDcc1b5CMUoQ=;
        b=lLRDWlLNCGJTcpeavT1Za4qV6ruvlrQ9vOu4k4bs9owQOjiIu6MZnIWFWkEEwuXN87
         TBChGQVXmaMM8IdMhmpjU1WIOy3phMnG6GyTsKYFN/YyB0SH3x4BsPdq8oq3HPb+ipuW
         c+sxxKUNhCobcjzwtJ/t62npotJT6VlgPploerzFjymrOt1+aqkmBLzhnpyHAvcdFy8d
         fJt6xzAzDxsLEyH4WYFp3BL8ZfYvhzWPbN2ccYQM3vNQPuKPWWU0C7dpYdCYOGuFpv9a
         tOBj7cBwfVYesSnpXu8nrIsXBpjcL9pOwmmXU45MwcB30BeJZx7PBgVo/YaE3SSRmdLt
         E1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771497355; x=1772102155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYzdCHN+ZDO6pwEpgPPlsnEbhBhJZMjBDcc1b5CMUoQ=;
        b=mpVpwKBjGyevtLAwAuUcjIG0GNUeG8FIPJSrGoRLcEPoGvQQPMIqJixrdFn+FzpkwA
         7b4xPqtuDcq2821F7+8NEno6vNWx5h+A5pFYmbsyazuvRLzNOZ+P/zTYyeDskQCFPG/g
         AO4vgi+TJWse9ehYODIOgPQwpzNoxecKgAi1oIrxZFGjFDdhPARCYXOp45v7xek+aR3z
         6pqH7mWRL6tcWu37ANVB2aXSz3EiYkL6OXgGDDnrzuKBFR48sSMrVK1aA95sVp7iyhzg
         KuToClV7kBzNE5zMP9wo1RgY5OeNtcEc2KmOTuXZlIwrIgRJ2PzPompv87mulDpEHQfG
         77og==
X-Forwarded-Encrypted: i=1; AJvYcCVlUc2MBpJeD0swBal5Z/94fwDDda2CovcCkVVzcSldSF6RuW3EP5G6AywBttvfKp1x2JegQB8TdUJc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+C1TvV3i+4QjQqPnH3aQ/YS5oL4pavqJAX+w0FVbrCZQuPNSf
	LbYPPU0ayqzNwAXt2Z/+6CM9OWZCVVTbWPA7g0s89Fz7jrMPgxzSyqLfKuaLiw==
X-Gm-Gg: AZuq6aKct7jQmTP5HG+450rcGgTlnCkBiVnKXBoaA0bdbMxXgs2PbdnmuVgYOch05zZ
	0k1JZYKGPut0ZwSvaK3G3Nlqn98k4lADF8pkdp+arV0Rz9QfDWVfo/VVYRfug3LJrlPTPKioYY2
	6jmlkL72vPS8eXGNL/AWcnp6UbjlPgIO73CYaVCbvs9xFYqOKfL3CnSm6HZFtlDOLLZp82LZOFD
	7FwSIBsoZl3/HAbRG0172Kg8cX1h+z3MjzE6dsta74giGjVDp3VclY12YrFgMDSp446VwRkrXXl
	couMG2R3JRbGeGpCO8HxfWVBrhLRkkiNCQMuMGqVvKZwNZxMA0MjJ8pIcMjHamJ9tOwFe39gGLh
	ga5FrVcO1EnHT72ip6wSMPR7iP6pwS+/5zGondNQAYY+HN5EnU0sJW31mOtI9wbLZ9VztvesSUL
	MEXScGKIUv5uhsHiIJY7c=
X-Received: by 2002:a05:6a00:846:b0:7fc:da5:f85c with SMTP id d2e1a72fcca58-824c95a2037mr18253105b3a.38.1771497355027;
        Thu, 19 Feb 2026 02:35:55 -0800 (PST)
Received: from rockpi-5b ([45.112.0.78])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a2c881sm19780678b3a.13.2026.02.19.02.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 02:35:54 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Amlogic Meson SoC support),
	linux-amlogic@lists.infradead.org (open list:ARM/Amlogic Meson SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH] arm64: dts: amlogic: meson-axg: Add missing cache information to cpu0
Date: Thu, 19 Feb 2026 16:05:46 +0530
Message-ID: <20260219103548.18392-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266623-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 2F7B915DDB5
X-Rspamd-Action: no action

Add missing L1 data and instruction cache parameters to the CPU node 0
for the Cortex-A53 caches on the Meson AXG SoC.

Fixes: 3b6ad2a43367 ("arm64: dts: amlogic: Add cache information to the Amlogic AXG SoCS")
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index cc72491eaf6f..f1f53fd98ae2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -72,6 +72,12 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
+			d-cache-line-size = <32>;
+			d-cache-size = <0x8000>;
+			d-cache-sets = <32>;
+			i-cache-line-size = <32>;
+			i-cache-size = <0x8000>;
+			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 0>;
 			dynamic-power-coefficient = <140>;

base-commit: 2b7a25df823dc7d8f56f8ce7c2d2dac391cea9c2
-- 
2.50.1


