Return-Path: <devicetree+bounces-277045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCuwFRNnumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:49:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 043742B8695
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E406C3186FBE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E976390C82;
	Wed, 18 Mar 2026 08:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KKxqo56/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BA838F225
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823329; cv=none; b=LTwBlk2blt9R7tsONRn2VmtR6oFsj3+AAWnC0G698+z51lR/m7f5f/OKaUwNEV473jyEtGoLHWtONbm84Bi2IciVn4TU8EAxL+BHRLbqLmqoxFYpV4UtFXIubSiQQN2z/mfqQ8oQLkmb8K5AiORTpKixra9wScR9ufYTF4clOkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823329; c=relaxed/simple;
	bh=wbA039UCsYa08sITTRO9QFA+3yS8Mc/n5hbUqkI0bd0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XSYkK7fZ7auf+ZXZAENAZiXFPEmludhCsekCa9N5+lmpmS8wDXFyh889N5Zh3L6oiaoiu7J3xaGaD6TY0Os3bq5/Sd/KnvH6DhDyHUMZHfalxBPisRyf0cTLdvDj0aFwwD0OT0SSAXlJj7bYJNnjGdW8JpGc69vSx2fW8eXqGhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KKxqo56/; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso59085535e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773823323; x=1774428123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KopvcsoMbI+TYFAx+ful2vEATKS7wTJcITfhebXYt4=;
        b=KKxqo56/q9Fdp9bpzBZIocVR/aZN6g4VxiF5kpNBSwoP4sV4O+tH0+Te6x7dzKFN2f
         2W79uOL8JpRxUUfK96jD/EKTZoKLe60awX3KkqXyxPvvXUbgaxbJ6vOSKB+f3xNsLmld
         fPFiSDBhGe2VrhEPDupAD0IMHo7l+yeObgXsdOmksDgvo9BJrZhTBBHA1uDgkscQ4eiq
         y1NyTJpc5E2j++lAVVC1q03YC4A5DvG4tqDQj6GKGDRcjOg7/PG7/ZE9Bzu2JDMH51s3
         /mqKQO6QRCj0HeIID93IzMoYlS6V7CB0ZCDrgyZrniCxHUR72D8S+1uZRyw/LoUW9zOi
         ArsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823323; x=1774428123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0KopvcsoMbI+TYFAx+ful2vEATKS7wTJcITfhebXYt4=;
        b=ejcgjnLi15eN5hw4eAyQIWSGs6aIN/8HAx4G0EXzmvbQtMUhSySJn37lovGDA9ZFo+
         jL1WcpomNkRkWbrTjLZRYnqwpsvkCgOniytpnweriwoIXGAxUKJXHSNm6PfoLAmio4n5
         VUUk441WO+eTz9d6mp8wJZRqyPNha9Ha9EROwHv7zvoxVNEQSO/nuDV3YTZJa++S8Hct
         7E9ye6Xl9ZoqvXGO5h4sFcv1GLjjJNPZ/Bgz8PSxLqP4BVQP7cEhaQvHwKpBBP43Chdn
         rmib0Bnk0IRFjw3+p4oUoiCnMneu2dDSewDyM/cO4Mbt8hGtDqWxS/zSlclCJTy2U95N
         da6g==
X-Forwarded-Encrypted: i=1; AJvYcCVsCr2uU3gvF0lqCtc1knPrNfpIwPxgsryu3pt9HoVfPYMyfTxM/0VoY1yxnNQnrxb4RTYJ+4aHYyM6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/lNvFZn2n1JDEsjOBlbJqhvI2B+/Cu12v09i1FfXnuCtLhQ5N
	ZnyXzFZong2hjCuXWpZ7+eQCUuj4AC3sR9D7LBmb6o1LXBB+h5b+lLwv
X-Gm-Gg: ATEYQzxv4l2o841JSARnt9+0VD/WdSTY1dP3MNNRmoQwIUN2qoFBBDB9WwEEizZ+vlx
	XHAfLGULt42xJ4XB20fB2z+0kaskirHrVl1Tf5MhtpzL+73nwWCz5IwmOQ4u0yP4Gz02nJjfnS5
	hESljd3Z5SKCBO4ycr9bN3H/1k6jCVQxrgGEqiPr/0NyRf18PuMc5LT/JNOMj1CTH5s2IutwQBo
	/VEdgwEby54bpVdTzKq8CPmHDdNAeBLZjIhWHyPGiw9lMpQVv9VCnQZMeHiext8KTuQCzHmoGoO
	afpiwZlIXBBjbrd3XycnI4AoqA6nH/zbWmISBvTP1aEg+fMOiHBomZWvjMFL63lqpgkbvx4DPJA
	qN0FA9iYTeKnOoqd4x/BoEjReTR6tK9+FDtRGWz/t728xNskXZgRC/IbqvhIijIKAl1WUdSva+Q
	OzwfJw91pv9pBfEEZ91BNX6i5pOj0yvZP8ahR+P7orc3H05sH4
X-Received: by 2002:a05:600c:630a:b0:485:5574:8ccc with SMTP id 5b1f17b1804b1-486f445122amr39667205e9.13.1773823322358;
        Wed, 18 Mar 2026 01:42:02 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:d643:4385:f93a:2085])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184961csm6389350f8f.6.2026.03.18.01.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:42:02 -0700 (PDT)
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
Subject: [PATCH v5 8/9] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Wed, 18 Mar 2026 08:41:43 +0000
Message-ID: <20260318084151.122674-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260318084151.122674-1-biju.das.jz@bp.renesas.com>
References: <20260318084151.122674-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277045-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 043742B8695
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

The SMARC2 board DTSI is common to multiple SoCs. Move the USB3 nodes to
the board DTS, as some SoCs (e.g. RZ/G3{S,L}) do not support USB3.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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


