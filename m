Return-Path: <devicetree+bounces-302198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHHZMd3CEmpM3gYAu9opvQ
	(envelope-from <devicetree+bounces-302198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 11:20:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 478D85C1C9C
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 11:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 314AE300D6AC
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 09:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B458E39021D;
	Sun, 24 May 2026 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="duOQWtjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44D1346AC1
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 09:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779614423; cv=none; b=YAfei9r2SEh8yDAPklJd5X98UANTn4wh7nugPlnSHSrRn0PBAlaS978wtmmn6J+JINymtzo3LScMAYVP6HH35lPNiS/Zpint7IsDq3obUk2W+ui88mFG9H5ncyMB+rERQ08ndSVcEjCV/VWHa85WqruNMotWEBkePTPzeTNsWVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779614423; c=relaxed/simple;
	bh=m5MldW8/rj/cmWsdxos1cei2w4g8s18jCasI/5xDt9k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=s104CwbjgH5G6upodwHpuCDErpUA2Yw+iWrqa81NAqTPnVJ98J0+1B0vChTDECHAHptVc+ORgoAo0pkOCOUSFXcILF6faCJQvLMS+LPmFG5okFx3CXCLGaWmJxW/idG2HTs5VzpRfE9trSLoruuPPjsFKCfzUBemXVb2BF+Y2Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=duOQWtjP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-49041e84237so18145625e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 May 2026 02:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779614420; x=1780219220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fBUAhsBB20qNgqheJcG9wI7Ac9cNCmknHQW+c+a7mQ0=;
        b=duOQWtjPGifffMgAK0gY9fpvEt8ziUtsyPGUF1k2NAC8kgSDWKZnZx+lZRqxIstHek
         B/dgmu2N15UpbeSDwHdJFjhqA8L4NE/d54wUQTM8GBBo9otbi3YcKcmUwjR3jAk2J+yc
         yQzDShDbvY19QqVKnbx8exL/fz0N1DNuHALqef9S1CmG4gmnTfi0YVZfj5+5jyHwWstQ
         I0MYecraj5PI4ogX2PM5Yjn+ckiF7FSafM07ggMwvv1Opa6Mx1NIpGJpTuiht3k2jCUU
         jKvza3v8v+ZmcFUfUSX5YJJJuP8rnAat4epbNEYUS5a5fH+ehhoFLuAqTa1z/P+jutLJ
         OB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779614420; x=1780219220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBUAhsBB20qNgqheJcG9wI7Ac9cNCmknHQW+c+a7mQ0=;
        b=kTv3grj9VfyXlSPRMecjVb6+gjZhL0JmvfTnRsZJ1kq0cmpp1PF8mn0yRGJ8ZB11n7
         5A2mL8TdpcgmurQIcTvOebFwvqa9cXe5uee/YXiRTAWp7UNe7dj9Hb/rYyRjC3973MLA
         DcaPRLoky1soVm2BCc7swftUc4PJlqZQtdb3DeeIvh5Vz00B80Pa0jsMhZBvTvp9b8bH
         VZpLKV/A+PsKtAgEdlnziFpWvBCIIzpYPNLPMdYjtv0LfceNAAeD+ybszKvfL8yibIPh
         j32y6i0DhwIefGJGa/Sx1Nle+bz/nlkuo1fdr2u3DoD7Uh1YvBh6JPBwItnuBGpEZu/W
         oCsA==
X-Forwarded-Encrypted: i=1; AFNElJ+SC8dORMTKQlJPmGDqH5bhiXK3m+jyFrKJf7S+AA3zj7fumeEJ0D1fDz7oIoeud6iAK1EEWhuckDUX@vger.kernel.org
X-Gm-Message-State: AOJu0YxXU0zfHu6G2lSuNjAKEQ9vW8tYhvFKkwnFkloJi4liBopZF6eq
	dakls7peFP71zOxIC9HzjfOpAukUqf+1nOcB27kstkE6qHP/idIbKx+/
X-Gm-Gg: Acq92OH3XbngILEk/HMsCWdgU7GUv958mMiknSG/2RrP9oTDFSoiZ70m2uXCfgyJ6A3
	uXUM7epKJ9cfpCREx3fk4Syxa2ohPn9w43GOqAaeyYhtHMQeIoNHoyvJOBf2S8oNu5qWApqMkLI
	iu8dnbumNmB0vlDchzLmu97iHoax8a5Km9O+iSa+7G190gGRdHzOkEKJ3x87QzIjf248XOqgjiS
	0FPVSUf6QlsVwFKf/N9fmpvXV+tC+xXZkYwYJEr++cZSpXBX3AA+gmxAPBeKpHSGC3Ulp7S3OTn
	n2NEoa7Bv65qv2m4xhEGyzw3tu+1LgrJL48ElSXIkWoobPxUtMnoYUqzTO05SUwsY12OUXmMpsz
	KjD0GUD6AB1j1AjN/ylx3/qsWAK851CMXUEnxtMxJBkR0bqxgxJqr5iYABxK4uCzHHO9wYLsBWB
	Vn23sSUGRq1QnSqm/BAuhSd4Q5zqWjqYA6Sglp0saFTAkB2MpEvZA3cC//+as=
X-Received: by 2002:a05:600c:1992:b0:48a:79d8:a8d6 with SMTP id 5b1f17b1804b1-4904245f54cmr129956015e9.7.1779614419836;
        Sun, 24 May 2026 02:20:19 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:ae73:a12b:ca55:91be])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4904179c615sm59140785e9.4.2026.05.24.02.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2026 02:20:19 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: renesas: rzg3e-smarc-som: Sort pinmux entries and fix blank line
Date: Sun, 24 May 2026 10:20:11 +0100
Message-ID: <20260524092016.46346-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302198-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 478D85C1C9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Sort the pinmux entries for both GMAC ctrl nodes in port order (A/B/C and
D/E/F respectively) and remove the extra blank line before the second
pinmux assignment.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../boot/dts/renesas/rzg3e-smarc-som.dtsi     | 49 +++++++++----------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
index d978619155d2..2e1d9686df88 100644
--- a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
@@ -193,20 +193,20 @@ clk {
 		};
 
 		ctrl {
-			pinmux = <RZG3E_PORT_PINMUX(A, 1, 1)>, /* MDC */
-				 <RZG3E_PORT_PINMUX(A, 0, 1)>, /* MDIO */
-				 <RZG3E_PORT_PINMUX(C, 2, 15)>, /* PHY_INTR (IRQ2) */
-				 <RZG3E_PORT_PINMUX(C, 1, 1)>, /* RXD3 */
-				 <RZG3E_PORT_PINMUX(C, 0, 1)>, /* RXD2 */
-				 <RZG3E_PORT_PINMUX(B, 7, 1)>, /* RXD1 */
-				 <RZG3E_PORT_PINMUX(B, 6, 1)>, /* RXD0 */
-				 <RZG3E_PORT_PINMUX(B, 0, 1)>, /* RXC */
+			pinmux = <RZG3E_PORT_PINMUX(A, 0, 1)>, /* MDIO */
+				 <RZG3E_PORT_PINMUX(A, 1, 1)>, /* MDC */
 				 <RZG3E_PORT_PINMUX(A, 2, 1)>, /* RX_CTL */
-				 <RZG3E_PORT_PINMUX(B, 5, 1)>, /* TXD3 */
-				 <RZG3E_PORT_PINMUX(B, 4, 1)>, /* TXD2 */
-				 <RZG3E_PORT_PINMUX(B, 3, 1)>, /* TXD1 */
+				 <RZG3E_PORT_PINMUX(A, 3, 1)>, /* TX_CTL */
+				 <RZG3E_PORT_PINMUX(B, 0, 1)>, /* RXC */
 				 <RZG3E_PORT_PINMUX(B, 2, 1)>, /* TXD0 */
-				 <RZG3E_PORT_PINMUX(A, 3, 1)>; /* TX_CTL */
+				 <RZG3E_PORT_PINMUX(B, 3, 1)>, /* TXD1 */
+				 <RZG3E_PORT_PINMUX(B, 4, 1)>, /* TXD2 */
+				 <RZG3E_PORT_PINMUX(B, 5, 1)>, /* TXD3 */
+				 <RZG3E_PORT_PINMUX(B, 6, 1)>, /* RXD0 */
+				 <RZG3E_PORT_PINMUX(B, 7, 1)>, /* RXD1 */
+				 <RZG3E_PORT_PINMUX(C, 0, 1)>, /* RXD2 */
+				 <RZG3E_PORT_PINMUX(C, 1, 1)>, /* RXD3 */
+				 <RZG3E_PORT_PINMUX(C, 2, 15)>; /* PHY_INTR (IRQ2) */
 		};
 	};
 
@@ -217,21 +217,20 @@ clk {
 		};
 
 		ctrl {
-
-			pinmux = <RZG3E_PORT_PINMUX(D, 1, 1)>, /* MDC */
-				 <RZG3E_PORT_PINMUX(D, 0, 1)>, /* MDIO */
-				 <RZG3E_PORT_PINMUX(F, 2, 15)>, /* PHY_INTR (IRQ15) */
-				 <RZG3E_PORT_PINMUX(F, 1, 1)>, /* RXD3 */
-				 <RZG3E_PORT_PINMUX(F, 0, 1)>, /* RXD2 */
-				 <RZG3E_PORT_PINMUX(E, 7, 1)>, /* RXD1 */
-				 <RZG3E_PORT_PINMUX(E, 6, 1)>, /* RXD0 */
-				 <RZG3E_PORT_PINMUX(E, 0, 1)>, /* RXC */
+			pinmux = <RZG3E_PORT_PINMUX(D, 0, 1)>, /* MDIO */
+				 <RZG3E_PORT_PINMUX(D, 1, 1)>, /* MDC */
 				 <RZG3E_PORT_PINMUX(D, 2, 1)>, /* RX_CTL */
-				 <RZG3E_PORT_PINMUX(E, 5, 1)>, /* TXD3 */
-				 <RZG3E_PORT_PINMUX(E, 4, 1)>, /* TXD2 */
-				 <RZG3E_PORT_PINMUX(E, 3, 1)>, /* TXD1 */
+				 <RZG3E_PORT_PINMUX(D, 3, 1)>, /* TX_CTL */
+				 <RZG3E_PORT_PINMUX(E, 0, 1)>, /* RXC */
 				 <RZG3E_PORT_PINMUX(E, 2, 1)>, /* TXD0 */
-				 <RZG3E_PORT_PINMUX(D, 3, 1)>; /* TX_CTL */
+				 <RZG3E_PORT_PINMUX(E, 3, 1)>, /* TXD1 */
+				 <RZG3E_PORT_PINMUX(E, 4, 1)>, /* TXD2 */
+				 <RZG3E_PORT_PINMUX(E, 5, 1)>, /* TXD3 */
+				 <RZG3E_PORT_PINMUX(E, 6, 1)>, /* RXD0 */
+				 <RZG3E_PORT_PINMUX(E, 7, 1)>, /* RXD1 */
+				 <RZG3E_PORT_PINMUX(F, 0, 1)>, /* RXD2 */
+				 <RZG3E_PORT_PINMUX(F, 1, 1)>, /* RXD3 */
+				 <RZG3E_PORT_PINMUX(F, 2, 15)>; /* PHY_INTR (IRQ15) */
 		};
 	};
 
-- 
2.43.0


