Return-Path: <devicetree+bounces-278213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDKMIckmvWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:51:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1909C2D91AB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6216D3064936
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433B139C009;
	Fri, 20 Mar 2026 10:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c2mdK1gY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740D839934F
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003805; cv=none; b=pRVZesL0hGXTy5Wdes8GMz8rEmU67zjtBcniBY9BlGZ3+3ClsAuDwVRkETCQlhzJriraLGPd2vjF6RrZto92CZE4M+CEY4YIgh5Wmoj10QKRcQQ81XM3znGV0dpqlB+Q3M+pMN5eFj7V+dL6QkxIAQF+cMV6VQfb7dGX6RVOUvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003805; c=relaxed/simple;
	bh=lUF2Jqf0gYMvUtENXHw89bSUP7GP4cOx7g5VFrg9m3I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VQ5Vt7YVQjhfGcrJRNd+ppQxspnCeavej8Al3YjzTzuBRVrT0baxAVbePgeciKisYQGtAxbYi4ejST9THhI+kz0LydRUM3d9/PR6SRfHKBfHHYgIxHmCXxO51JTDibqFq7JJUOPePRjy+XKrTWXPT/ADYm/Xebt7UiE+bNW90wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c2mdK1gY; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439bcec8613so319928f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774003798; x=1774608598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LAC+GCqzsUO6cgBpnnDjaZ8vnx7qSKM8d1+qGYeOoSM=;
        b=c2mdK1gY9uHa3kMNdHopuLVC2I/gOiumSexNA0DU1ZK9Vzptk3DcXmiaLIfLjLnOJL
         O0AeTmaPMP1sr5pESr/Zb+ItTRMdabXNZ8j5qV2z08hsusBP/qqguY1/ZgCK3DTFge4Q
         RAcImIjmx9mQk62Hsn4bzCpKpqt3LID4WrKRJ/t1XSXv9c5fzkE0b9utco2rjW4UOXfi
         kbfwAby6qJ9cZronQ+zUxlM6MXZCaVvX7e8ZrqU/d1Cddt7i2LmLAT1pVksRp1bVyfaI
         zPTl6Ouaa8K2h0Lw9tdy5ASYySgV5yD7/nPwmUYJ7WpOyPTgejWU5ZZjKxrXVMN60d0D
         nv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774003798; x=1774608598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LAC+GCqzsUO6cgBpnnDjaZ8vnx7qSKM8d1+qGYeOoSM=;
        b=JxLU9812RTGVebLcXlmDpDmPlfWvt8G3EAClTbKM5OAXuyToagVIsivvet4CKIfjsG
         YKasNAHkgEszuOyL5sXrAxa8FN3zl+7eTFMpLMonxYP/bVMwHrnfem4yj55gGRgxVhS+
         o205XlanoZjX+aaM+Rfz3R2AHr7fEpJqtTVaW+35EZD3d7mgv6Qt6KPG796KLd6TiV7F
         0J/py1MTsmoZDf2xTkxCMTaMsMtpDW1hd1QmTzBDH69tJHeCSzQAyNzZiyoZTTOYqUgZ
         uvwtuv5qL2zNrTF64z4u6Qj3XL7ouxOdB14+3sI+R75pfVzXgrs6pel6y0qlgl7/5nl5
         P1vw==
X-Forwarded-Encrypted: i=1; AJvYcCXCHYgD4ZWBhk1k6nvK7OZROUj3EtBABdivSefYlfSMe6m7n1VZMTsKhVwBkjCrh0F7uJc1btc1/yo+@vger.kernel.org
X-Gm-Message-State: AOJu0YyZGa4+L2mwAhfjnmoNFqiW9p/grwcGriRnEDbe007uhQe5zk2K
	sllApJtnmJGknhXRo9HCA4ARioBKJ61Dj59ilsR8NCncs0Qn1JUWQw/9
X-Gm-Gg: ATEYQzz4WSsQYRKNsucggRvGXZ2gFBSnnwXT/zOIcRnYFq3mMKEvJ5Itthnf5KX9Z9m
	xI0ewaMXKG697MNQuP9EeN+eiUJFhXwIUx3loaTC7R/7Fh29W2jJ6Gm/UbZ0wJ4/3Rd37yA0cD1
	nM6+dDIiIu5NnTvKfsCjlfm9/q8dqG2BWpCani7aWpn0QPq9xQH1zrld12uyLWn09SDbOsRrhyQ
	jo6fZBcNWl1BP9x3WteQ+5jOsnAk8eJpVJcecn1epXIM154G0vawTAUE9ywMIoUtKokIjpaNKui
	0YWQA/pOd6pJX2l3DJ0JJ6gs5T8VXkPAsFmh0tdXMqtbn5e34Ph0Uh/2T2rQrFbSXfPLEnihXQ7
	xeoJCowrXj0tuhDgZXOjBsWOZ4n7ZJBLrP+MQBEORWcTkxyZidY7vSTX6YHZP5r28cA1LRxZYXn
	jTRe1/m9mqA1DT7MnqYLc8DA2bzWPjIEk=
X-Received: by 2002:a05:6000:2c0e:b0:43b:410d:c4b2 with SMTP id ffacd0b85a97d-43b6427d238mr4522308f8f.29.1774003797984;
        Fri, 20 Mar 2026 03:49:57 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:5b93:d2b1:bc5c:9231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b644ae619sm6203062f8f.5.2026.03.20.03.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:49:57 -0700 (PDT)
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
Subject: [PATCH v7 09/10] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Fri, 20 Mar 2026 10:49:43 +0000
Message-ID: <20260320104950.42220-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260320104950.42220-1-biju.das.jz@bp.renesas.com>
References: <20260320104950.42220-1-biju.das.jz@bp.renesas.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278213-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,glider.be:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 1909C2D91AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

The SMARC2 board DTSI is common to multiple SoCs. Move the USB3 nodes to
the board DTS, as some SoCs (e.g. RZ/G3{S,L}) do not support USB3.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v6->v7:
 * No change
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


