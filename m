Return-Path: <devicetree+bounces-262184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EApaGF7QgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:39:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DC6D7D5B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A2F8316B5D5
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593AC33D6C1;
	Tue,  3 Feb 2026 10:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SAykJWpn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB333B6E8
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114644; cv=none; b=ngztMfaodTjLq4IaYHraBzxdLaWI0uHzlqF+juPipLGOjBPCAC155zLy/DDbuvHnE+Pri0CaZ0eY9aMvEI+iiwfn+s7lqirbNAdobTmRKD7pklbzLl5NC6gZSdF2G6Ef7Km3RLsesQ+1UgKKeILqnTEQSeZ+03fhIHl7MlMoaJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114644; c=relaxed/simple;
	bh=0MTzIy7crs4kNh+ZUPCYfGcLKbcJen+bM0bYCrJj2VU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VTaBHWfMAO7/4ue00XCWvva4UlSULxXkRRwYzS2N8RytLlIM3lJ2PtIaOsX1I0PGQNlazvKzy+v4Em6ifW91jyzQhL2w4FeVSyrIqgENVHL4bBU9LqZv9LdwEtO7ZAKcOVvV3sNEQRs3XnLE1FUTjq9jbR73MbJpD6mW9pCOJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SAykJWpn; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4801eb2c0a5so52215905e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770114640; x=1770719440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YJ0Cr8rQrm1tlnQhk5AGGEpo9oul+BbRV6O9Yi61KeY=;
        b=SAykJWpnoC3rAK4hfJag/i3pZsGpmpKhQzi5oNA4aR7tPRy7BmDp9WRdHXwXu3uDSW
         NyX3ainK7RQi69qz9uM1GyPjUd05nJuHgXBpv1YDAxxSHGEdS3Nh8uFs9BrYGrJuh7Y/
         87o5VLBnJ2M1gwf+94MkycxvvjokwOzV0DJDPGLGE48FfZJ66JFNek4DGJZz01sWNX8T
         qCnOJJUTzHQxwqd6LKyridYFbIkt96q6yucxkNGF1Fb6f/91enkeyvNXwcr7HQ8BF5Ss
         o4ZN1itTQcQTcG5/rWDjT+BeIT1sCBCnmfErH1t6bSfVA+oRGOomIg0XG88ufEjLSbfB
         fzpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114640; x=1770719440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YJ0Cr8rQrm1tlnQhk5AGGEpo9oul+BbRV6O9Yi61KeY=;
        b=NSVo0KNCBnBwfB30zLLXMyOgTvYDx0rSY5cKGf5PbAbm0dBFH2+CCitl1btxs7zxIU
         XJ//HUDL6MtEy57Tl8YXx/JKoyC1iUjklEArql2hLAM/HDer9xY53mg2+Js54XPGgOks
         DzspDmsjpkf2SCGUwbu2HdzalefCckEweFB8GKv9/5H/0R6PJI6PJ5PeAzTzCfbicnCE
         ogkDMuSSle6xlxJKCdu966OChoxgMIBJiXYY2FPkGv+8K/k8D6IJvFoyVU0cxmSVdRZz
         yA8vzjqDPRMAFpq7l8McJs3JkHms9A4ZwRDMCyTR8FozoSL9kHN9dX47r07uQvpR8fke
         NIHg==
X-Forwarded-Encrypted: i=1; AJvYcCUxvuBgdmbEF++3JDtSY70e1zLaMOhKGzMtb3w+OTxk6DWIIEFu4aOoPDIo3OooYCzseWOXDRGhHfSk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzoi37R28FD7kga7M4pziXE0Y11n3QmcqrDvrsAQtywVzpvQbMy
	5Eqh9hhmRxXK5mEEX7AQWLbciMiN0DUvF+RhiXA34iHWftkL/VQKPdNI
X-Gm-Gg: AZuq6aLbUl8E6Yce9/gQ6cTvacOVxl5sriQ+04G3enFE5WZVmJTV8zFNLdLfiBvkXvX
	iAhRA2hDa5Lb3f1lreUkgo6czCoOb4K+BPpTUiU3tS2wFUbYKYMGGcC5kXkIEV52lwvh6KtGU25
	gtYVO1ARbVvo1jzQvFrtgTQ/QJD7kDkeulWq+W43ggOhRj+MfS1OYxAFtBxwfea0yFxEyvyLb44
	JpB8xx3nMTDTFzoEQF8JACFsnHzmQXvpPUEulkeRzZgweH5h4Y87QCEOwqYedPVyEmNwM+1DCS1
	6wccu++z5KfjvWB4ew2wHxqnEPhOoF6tX9RVgXKzXCkSO1xl1PPmJZPzCuiedKuZy2QQ8lapgfj
	GAHVOprpbOfCd52fvdi+Q0a8oQBLDzA51ME8kGeephcihxPmcgtBfMvM4TElUbhr9N+dznqQN8r
	NDnpTIZPveBRFD7BWLmw==
X-Received: by 2002:a05:600c:310f:b0:480:3a72:5238 with SMTP id 5b1f17b1804b1-482db49243dmr208264455e9.30.1770114639755;
        Tue, 03 Feb 2026 02:30:39 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm53160961f8f.35.2026.02.03.02.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:30:39 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 10/10] arm64: dts: renesas: Add initial device tree for RZ/G3L SMARC EVK board
Date: Tue,  3 Feb 2026 10:30:18 +0000
Message-ID: <20260203103031.247435-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262184-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: B8DC6D7D5B
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.

Added placeholders to avoid compilation error with the common code in
renesas-smarc2.dtsi.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * Dropped scif node as it is already included in common platform
   file.
---
 arch/arm64/boot/dts/renesas/Makefile          |  2 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   | 37 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 1fab1b50f20e..0153e772c231 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -179,6 +179,8 @@ dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc-pmod1-type-3a.dtbo
 r9a08g045s33-smarc-pmod1-type-3a-dtbs := r9a08g045s33-smarc.dtb r9a08g045s33-smarc-pmod1-type-3a.dtbo
 dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc-pmod1-type-3a.dtb
 
+dtb-$(CONFIG_ARCH_R9A08G046) += r9a08g046l48-smarc.dtb
+
 dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G047) += r9a09g047e57-smarc.dtb
diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
new file mode 100644
index 000000000000..86db86335d5e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/G3L SMARC EVK board
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/dts-v1/;
+
+/* Add place holder to avoid compilation error with renesas-smarc2.dtsi */
+#define KEY_1_GPIO		1
+#define KEY_2_GPIO		2
+#define KEY_3_GPIO		3
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include "r9a08g046l48.dtsi"
+#include "rzg3l-smarc-som.dtsi"
+#include "renesas-smarc2.dtsi"
+
+/ {
+	model = "Renesas SMARC EVK version 2 based on r9a08g046l48";
+	compatible = "renesas,smarc2-evk", "renesas,rzg3l-smarcm",
+		     "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	aliases {
+		serial3 = &scif0;
+	};
+};
+
+&keys {
+	status = "disabled";
+
+	/delete-node/ key-1;
+	/delete-node/ key-2;
+	/delete-node/ key-3;
+};
-- 
2.43.0


