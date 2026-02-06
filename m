Return-Path: <devicetree+bounces-263475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBN4GkgvhmkTKQQAu9opvQ
	(envelope-from <devicetree+bounces-263475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE45101A80
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A776300C018
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E68426D1B;
	Fri,  6 Feb 2026 18:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YGmBlP/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D5335DCEF
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401604; cv=none; b=J+AkrW4OYXtdph6VhU39nmSM8QEPgJYsXKfwOXiuwpppG4+0Tof2xYqC9fLbjmw6vfY63kC63GzIEzetc68JfqPm2Lp/uFeMCRr+Ff1VBkBgluBuJMgdfRt3Eu5HnCK71U7KR1RNWdW1UjE2MLS/QSu3pWfR4L0ZejWKmkCxJ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401604; c=relaxed/simple;
	bh=g+qLRAKZGqZxx3ATAi/fFjxaO8JeIpWwRuVeZvwZWEU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ce+MUgdFFTK8FQtTH1R/Qoo/q3XdYgm1uCOuZ7kAaAGQrtM/lNbxQa5sNLPhvvNGp/Vvg0rb/OGsyeNn4wAxHjrZTSGyzVEuNyF5SrW7i63WYg6F7Fia9MEP5axzn1xZ4UESDKxLLrxznwMwUFBfoS6JlXkZJqrFt+M1vmyOCfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YGmBlP/7; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-124a677c9afso1717177c88.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401604; x=1771006404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W62an0abMcrLJ9IcEAjj5au+IY9PVbDUlIRL7uo1FT4=;
        b=YGmBlP/7qhUyI1i2QztzzDFbJoEv2531nkHZcS+UUqWpOQrmFLNfar0ZFzXYcqljNH
         SJFwi6xiJq43Ddr2+8bquCpJfmrahIg0IxExulhEWDteOhTGHKvLbLmCFTPaEuFPb9I+
         GxCeMC5yX/YMKzj4YQQQ5TeGd0ftgwfrw9hHqvNkOBru2uCdk4vSeLuXonbTom+s9tIn
         yrWVtQVVnUnM3Fuy/GCH/FFANn9p2qr2doRiIrgc7JbnSES6lpQcGVDdZmi+XC3tNJyi
         YIAoUZ0bMYTbxagt3TcHfJeEtlga9arQcFZy7m/iUD2gGGY9dpA+jjOQRj3qU/4E7Waw
         o4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401604; x=1771006404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W62an0abMcrLJ9IcEAjj5au+IY9PVbDUlIRL7uo1FT4=;
        b=neqvKMobmKVH/1QVwG8S4Zsya4RmFfi7zdEcf9ZWbT1k9eMXSJSaITGRv91AqT557c
         rsMYZxd/p0xt+eWMFklLSgdyNc7+EQslIUD/GoLgedXASmYMuJBLZmj5vEzz7gEu/1Zu
         le6vx2jkFad2COqiYgDbw9Z6nHvGpyfZPEjnyBlcOLbZ22RlEF382ju9iIIvsztEOBWH
         j3ima1SrSJkXWlpNJKFBBmaZHahDpeIn2HpCAiKf5GtJZ4z3uEoiILUPBFb6e+DUMD/g
         t/f8olqfRtMBxFLHEXaSukpZhY6AlTqrC8BRgoBRGzpMbnES0kQ9KrNzHHAb91Waitbm
         7hXw==
X-Forwarded-Encrypted: i=1; AJvYcCW17ZWPjTqzpVMbF/mE5G2qlR3ErUQRwoe6mEQY0C6iiWf/zLgrxdpUcsyL84dCLamAr3lxTU964uUN@vger.kernel.org
X-Gm-Message-State: AOJu0YxFetM0obVErbmje/LQ3qCN7DnjpWtUsRaeLWmrKDxduEe+8ulT
	YsHwKzvr1LBqYz5RIFPV8PBo74Zb+8mGkRJ30fSRi4ford3SShFK0MMw
X-Gm-Gg: AZuq6aL8JjZHIltkYdmW0JXJKwM4Y/7kOdNlP/ev05cw7YUr9e0u2W0rFY3hAwz6M3L
	vnESLrdmKT12SYoPPtNMEy7Z8GnTELtOqfo+3GOj7ZHu9y4lAOisglVrbEFFQ0c3aT1RuMiMEpK
	ErdqADDOif9ZCkN6DpwBmo0o7XeKHhG8led4bfbjM+Zn76wSXMHerKZa0mz0S+v3wCDzZLSW+xS
	F9C2PvsqvEEoB0kYddFjh0tBzlfyrggDN+7cqUXEshistnYdQho6i8ZhR0ztA4rhTfvzJ9tgTHw
	Ph73zNZcXNzGMJMV7E+1mBrD7CZcoeydJdeMaC7U70hhI088scIJVVAupwTZdB1h2RTjDQ0/MEM
	Gd/pUtt/0k3H+VpNS/XoS1dnRhdM6M6qw4Xf7pW+unN3FkuHjIjEvNRTlhkTer60lHmmjlsiTU2
	3J+GzFZQcL+YIqzxKl5rujRC0Y
X-Received: by 2002:a05:7022:6611:b0:11b:a73b:2327 with SMTP id a92af1059eb24-12704074607mr1378821c88.30.1770401603758;
        Fri, 06 Feb 2026 10:13:23 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:23 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 01/11] dt-bindings: clock: rockchip: Add RV1103B clock and reset unit
Date: Fri,  6 Feb 2026 15:12:59 -0300
Message-Id: <20260206181309.2696095-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263475-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.49.45.0:email,sntech.de:email]
X-Rspamd-Queue-Id: AFE45101A80
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add device tree bindings for the clock and reset unit for the RV1103B SoC.

Cc: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 .../bindings/clock/rockchip,rv1103b-cru.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
new file mode 100644
index 000000000000..fa7298955aea
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rv1103b-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RV1103B Clock and Reset Unit
+
+maintainers:
+  - Fabio Estevam <festevam@nabladev.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RV1103B clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rockchip,rv1103b-cru.h header
+  and can be used in device tree sources. Similar macros exist for the reset
+  sources in these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"   - crystal input                              - required
+    - "xin32k"   - rtc clock                                  - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rv1103b-cru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller@20000000 {
+      compatible = "rockchip,rv1103b-cru";
+      reg = <0x20000000 0x81000>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.34.1


