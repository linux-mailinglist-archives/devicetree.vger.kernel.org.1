Return-Path: <devicetree+bounces-276850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAV7LXOvuWkkMQIAu9opvQ
	(envelope-from <devicetree+bounces-276850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:45:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CD12A2B1AC8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E2DAB303D7DE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC653451AA;
	Tue, 17 Mar 2026 19:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VoCcwT/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C56D34D90E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773776698; cv=none; b=YDIno+cDfsEZPlS3YYuM7RgJR0nPUw/0xkcMRXsz/SWoS4X2UOHivkQRubtsIlvmdX2P3KdsXJOmS7bG5GQouXjM1XIA0kVJdNbSeqinHF+r+8cee6RIPrVFGrhZ3deqM1nxnuMMCcDOzu9S54/rqKnWE3TEEVOK0COIRd8TXIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773776698; c=relaxed/simple;
	bh=dn5dYtHgaaeDgKGCPYx083eAJbV1dxvbfBoMMROgS3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CqaOypzbv6kF04hpjnpsxeHX2k3ofCjtrc2rzegxDf0zVT4ePO7q2x1+qdtiON9TIOp2J5huLi0eAQecMnAauC/RjeblEYEce5x8h8CdZrF00Z6m5uznp4mcFvwf0dF1Cj/g2+trE+h/2Y1HUZX4LTslXpWyOLknJhZbLfmermI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VoCcwT/G; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48628ce9ab5so15122715e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773776695; x=1774381495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+wF52lbRB7DTjuwvGcCQ6Kt/mFwxZK5Ryn/ExuWo2fw=;
        b=VoCcwT/G9toXYc2100owvoT9iyuPb0gL71POxaRLYN+L6GTV52nDOvyW+or6xgSDKa
         GOL3LX4MFx1xdd7e1KnFlGQ5WiKxO5J5CncG7wrcnBMfMwaF1h/byDJiRW/MG6MbHPHK
         USmVKlJOfYFgQeDEsJE1bsbKlaIyZgXJNMR3S+r9zYNHR6+8EFZTo9VmDJ8bG6toVMYk
         78YqrvvAJiRzhorZtn8vm0x/kw0CdImpqzx7F+UHgZS0sPfjP8Qkf1T2jAxpOoPQMB1t
         aWlSwrwvzqgUhIXOC8c5eHjeaniE+C9E+SiE8V7A7r5HVFkeEkjVMIMAqlytE6BVcoab
         JjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773776695; x=1774381495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+wF52lbRB7DTjuwvGcCQ6Kt/mFwxZK5Ryn/ExuWo2fw=;
        b=TQx8QvbvxdaiaDICnPzqc++faOu4wwA97wyGCIUBgEPbJM9OH7X/iOFrcbqXEshwLx
         FKXeBanGReMa4sJV31N5Re3hRaviQZhK09bjpWNGhIvgqT+b5W5UOYkrVMGGaycDSVZN
         ic3v1HlxueyngL3t6rYC6TgC/E/NmhIWCjVSMLBfFgpzZuo/3qUB2ASG0kE2Uz0Oy6UF
         oiiAoYXPwwGUmAnrc2BjLFWQRKAka6AiKQ6uyFu6ylNSKOvZXubKrIW62D7w+MB+357v
         iqgtLphQtuFqET3hxRSxbEErpdLDQ5UTb1d3UeexplGiwMAkfMY8RPbyGO5lma+q0wT6
         XMkw==
X-Forwarded-Encrypted: i=1; AJvYcCUdteCNpkeHcnERqaWeRdKPgyky+5tKoESSF1D7Yjo9g09i6AHcRa9LTD0FsMAsJhiLAvGKsmTN+pOP@vger.kernel.org
X-Gm-Message-State: AOJu0YzKUM2Vz2Ou4q5NWKTEz1Orx9urjoFwmPLebUtpbESXBDRSbUCE
	vCYW+XBpHaoxmM0VuWwH2s4w5xl4wqxYxKcJ+zYFcFcDfNODQLSZ4SWi
X-Gm-Gg: ATEYQzx7oNK+DDmskcavb9LVozqPvDAUKBEar0ehWeRh02/hjd8f3AjsB9t1FAdlWQ9
	SbZ/JqwNeLIP+KIWsWxSAsXGc2lduKcHxZ/aApHvK3fTIUJO8zkgXRl3Uv7slz2qITFrd5enj8X
	uLWkyzJyqmfJGtgYwZdhLia+Xt5zv47VCIkZvKRZ2sacAQW7AbaCU120kC3Y7wWG1au8Lq6TVwm
	8gTrxy9Wrd19ndhT7wP9hYP+hxZyu1bUUPRnpyi6BNSzi2zmqu3POdM+c5TA6NcNtR1/9Azd0+W
	1kocABYDKMGV70XSrcnn3noqkXA+t+OedY9KWxdTMXN11THE+0NcIPyv5hFvUC6LCr3DkWmJWY/
	F2ZCj5tpa3jihVCS7BVFak33nG8zVjUksavmS3i53XiV1hZx2uSiJQ1IycC/5qvV+i/BHSptnUk
	HkRNhdhcuJuPL7goytk59gkSdHYv68bnNkCdWL37X/An58sgli
X-Received: by 2002:a05:600c:314c:b0:485:7f02:afd5 with SMTP id 5b1f17b1804b1-486f443845dmr15952565e9.13.1773776694620;
        Tue, 17 Mar 2026 12:44:54 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm1788235f8f.21.2026.03.17.12.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:44:54 -0700 (PDT)
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
Subject: [PATCH v4 8/9] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Tue, 17 Mar 2026 19:44:35 +0000
Message-ID: <20260317194442.468147-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317194442.468147-1-biju.das.jz@bp.renesas.com>
References: <20260317194442.468147-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276850-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Queue-Id: CD12A2B1AC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

The SMARC2 board DTSI is common to multiple SoCs. Move the USB3 nodes to
the board DTS, as some SoCs (e.g. RZ/G3{S,L}) do not support USB3.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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


