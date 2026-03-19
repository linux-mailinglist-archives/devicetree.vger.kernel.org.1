Return-Path: <devicetree+bounces-277774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABdFIaLxu2kgqgIAu9opvQ
	(envelope-from <devicetree+bounces-277774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E29092CB6BC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22C5D30451CE
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FD0C3D5655;
	Thu, 19 Mar 2026 12:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iEF0tTkG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082BB3D47B5
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924718; cv=none; b=PfNJPEF5Wuuq2+LOR3eCldVbWR7SbBBIASiEE3963O0hQQWKCkSG0CrQhPH9ZQJ7ZSnl+3fqvSbqUjPLI/WEqjKm1SAK53+OA2SVgZ+EFn3ls+oia3J6sQPWoxS9lrhEDS/0PXs2hfiZfAT8DFNXR6FF2zSWW2mNyRBpaaBFedI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924718; c=relaxed/simple;
	bh=S74UqbjF95V+udFLpvoBvl3CH3uJw56rQrUe4LNcA9g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d/MDR8tMjrEKtbeHZtFJCfcp4lVqHNyGXgh0Pfq5KiDeAC46P84iC5cpWg26CHbkm/QG1/Y57bhdROe3NfTJPyfLDZnNmN0cjgjASKUl0go35KYXkOxGJpN7Ny0oqcBhjTODblGAxYMaf5LG83AHgk9YuPVjZ1wHs4P/DObLLkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iEF0tTkG; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48558d6ef83so7067935e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773924714; x=1774529514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1W8n1zZCHCxWXqCYavBk9p4116WcokN6yg3o8E44k/c=;
        b=iEF0tTkG1psDm1Qk5q3xHjgSie009NJL8+sGyWvBduF5mFe+S5elWcngf6EiHcqCDP
         EKVrqfnOLke5w1cDxxfVB9J8cdzvbPPCeyGEOb6zujUeq3qBtqmRyGmdv3MzWNpJIZu7
         EbKEue5/8khk64/+WAEDnEdlc+jGATYUj4mceX+0lgTKOB3KWUlq/P5fl1dZiBupFbYj
         3HTaM/LKyYzxF5uPRgTwiYUhafy2n22byt8P1oPo5bfwPbgZ1FU81wc/KPNQqr4D+Vt3
         wjY8ybhmqY5XQachGGTo9UCnoRZGuVwcD8rwlejqc71q0xYiF444qxCu/ndHNQmD00Q8
         Xhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773924714; x=1774529514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1W8n1zZCHCxWXqCYavBk9p4116WcokN6yg3o8E44k/c=;
        b=plkLqe8iCMLEmv8tqr/aEK//eVTpiqhiEq3yX7gs3jktCEm2UqKNS68OLgL1q+FTpG
         Ppw6BzJX0rN3zdNPCgny/rQJ8IlNCsEqKnCsKEn5FJOcxvTU2AbqT1nC5q2qulQhZjOb
         +TCqvE94OBcQpRLJejUcg8XmzWRfTU4m/r8YwZ76sActRvMwcwOrU3QI6CD2tgBP0JN1
         hVOh6cPAe8w/88c0uoUbXENyHwFajPV8wpOygZKxOwiCdn2zGrCQ5umwRUlfr+QrEt1u
         1ZvOn7S1XCZuw3ciw0baSriR1CncfxXQUo/gKAs+eStXPUuuzeX7oZ2U4YIdI1FKx0Bg
         8uxA==
X-Forwarded-Encrypted: i=1; AJvYcCVYJC2hAH/hOmXSO/7eWDoLFBpDGu7JZntyuerUmy+3N7yNeqoaIARfzBjVD1Wyop1cNKJVmsDxM//b@vger.kernel.org
X-Gm-Message-State: AOJu0Yx16foa239FkDMMzw3JEpDO1fIZV0LcXTO1zqut9BzWLpOeliUo
	ZYizYodFkBpoiCs49nMGed3EXtDOQoDN1RYZMDxEJwxK3arIsb6J5VU9
X-Gm-Gg: ATEYQzzTISOVuIZS0tKc0nL959PKQBxoHc6gBfx5yDxCNV3RhcJeO6GiWJAqmPtnhBQ
	clyffwszXzFGxdV10HeQQqs2VDmm57P31ftjIeREp01jvfxlhPUnczFde4DunMNOn5+JDOa06D5
	0hkJc+2CtpT4t89afqW9SRBC4sYBt4NWaPrY9Gfjut3Mu8HiHr2gIHvWSFQG3vIPfJzCHOLudga
	nt7LHP2WiyvbskMslAT1otv0c6WIMI0q9ANF22I74fZDDOw2vrGtDJE2AR2QaQLSjaYyaMk7NLq
	v8cfr9Kk1MJptZhaIGVa6dzHFoAG5FRRW9wdo8yozC00Abu4JN+m5i8P5tozrdQZxzYkEeS4Qdy
	a8h75ExGimKSh4ZtSNIwZAQXqr3UcipcQQGdHdmcORCkFYnBdImL1qUv73SKOl2m6++uaBoe90L
	Te9sZdPUT9ZeJwUqiG0Svz/5mU2x4Q/4k=
X-Received: by 2002:a05:600c:8b0a:b0:485:3193:6ddb with SMTP id 5b1f17b1804b1-486f442207amr114638285e9.3.1773924714133;
        Thu, 19 Mar 2026 05:51:54 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:8326:7b31:bf82:d2d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bc96c6sm72382035e9.5.2026.03.19.05.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 05:51:53 -0700 (PDT)
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
Subject: [PATCH v6 09/10] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Thu, 19 Mar 2026 12:51:33 +0000
Message-ID: <20260319125143.230377-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
References: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277774-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.961];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E29092CB6BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

The SMARC2 board DTSI is common to multiple SoCs. Move the USB3 nodes to
the board DTS, as some SoCs (e.g. RZ/G3{S,L}) do not support USB3.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v5->v6:
 * No change
v4->v5:
 * No change
v3->v4:
 * Updated commit description
 * Collected the tag
v2->v3:
 * No change
v1->v2:
 * No change
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 6 ++++++
 arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi    | 8 --------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 1ba50512f4ef..9e66f2179807 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -264,7 +264,13 @@ &sdhi1 {
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
 
+&usb3_phy {
+	status = "okay";
+};
+
 &xhci {
 	pinctrl-0 = <&usb3_pins>;
 	pinctrl-names = "default";
+
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index e2a34577a1a1..696a933af808 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -111,11 +111,3 @@ &sdhi1 {
 
 	status = "okay";
 };
-
-&usb3_phy {
-	status = "okay";
-};
-
-&xhci {
-	status = "okay";
-};
-- 
2.43.0


