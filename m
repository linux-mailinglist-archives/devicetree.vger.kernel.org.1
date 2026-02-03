Return-Path: <devicetree+bounces-262239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gI/6HYrrgWkFMAMAu9opvQ
	(envelope-from <devicetree+bounces-262239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:35:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 19402D9132
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:35:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7F0543031CBB
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24B3346768;
	Tue,  3 Feb 2026 12:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HvakYn8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43377344DB4
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122113; cv=none; b=ae2r8KLYC/BRuARZw8a9LulC9AhyJxMvFmhIx5N35MUtcwx9C5S8ok0Vcffqnk7llVkiEmdzBKtCsXA7FWxQtyFNQLF5+QsdbZRSGKBD9qBMQRL4n6BDlp1PrEWN+Ie063hu4mTFBFrTjzexd52al/kMhv7TQd9FNcVc5n1mupE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122113; c=relaxed/simple;
	bh=RorSjLaX7pGdqqpN+C9wX6wNwfenUgYC9F7+I9hWWyk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=REoQIgCfMzMSTWESfg5c9Rqbpmb4szlL5bfGRf5HYmI63JSoBlqe6w4hGvSJyzLFe5BNugFbl78Lj1sQa3vZTMVEGZMb8TutgeR02RMuBPdH73V5+5NJR8vDl58XX9ZesJhEG4eq+/LKJcfYZRypibI/M5LQqeyUMIj+s3MFOkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HvakYn8W; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48068ed1eccso51503165e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770122110; x=1770726910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9zafmNs4nVxr2+zuOn1Q4Qxj0agj57LaZX3rnIZfZm0=;
        b=HvakYn8WkyW4cC2he7w/yXaJVn+C4C8qm93eKUudBtGAe8MkhA8Z1riBOWHHUwmjlz
         BQ1P1LINxCJsUG59t0/qA8c3JoKtQ313ZJ0BSQo4TF7mYUaFbT4grQgvtreLCytmnVXB
         O5Lcs17VYT+A2UtgVFpSDbBQx/mhD41kEkoiNdrMowmr07JDGM51KCYxBbFTRFhxiR0Y
         tEwSIkbxxdxbSUIyqJpRx7SMogUeyO4ZZKwg3HI6i+vUzmPL5QGhkCWg/AO9GBsK4QRB
         bfrjhuaD2jyfLs72piIWYIVQoJhY2RDr3p++sWfA8jd28n2Rf1tEoOW889E7d5Qh840b
         nOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770122110; x=1770726910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9zafmNs4nVxr2+zuOn1Q4Qxj0agj57LaZX3rnIZfZm0=;
        b=hc246Ld6x2pVxpsIDrZ9d5V3AVy5OjTOfTFPWaXJFhHn1SuRuLkZgNc0vUqnP+bL1S
         aiP14PDbrdtY7WqfFJbGf1VmRgLlB8haRKGxH/fmpRO5e3f2LtAZAhZKFVQc22oh1r9Y
         4ENy7hDc4BJz9rDcdcicE5dxcmcs7kHvPEsDEn8mqjpPDX43mVidIUrGmVjPwO7aoBFu
         V7uBUwM9WoD6SGwrJaocw0Of0F8EBOc2cRQlYgjTuBd/CLMwQ5V7Z7V55iBQSmrZ8Lzb
         BM34RwhvmYGEj1UjWiKVzQ3buOqiPsG+wkRkkUqH15sDEARmwxsuxNm5NMxc94dKQvgn
         d4bA==
X-Forwarded-Encrypted: i=1; AJvYcCV8SmpNBY2XFOx5RVIxZITGS2ZuyWsHFLvWLDOC2eHW5sF2usPtnPKM7UhQQAqIgu1Juybd6Fryjhn3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdc4U5UK4dyBBhEYrmIz/xjL/8K1HXtsqAY3tr06UgqOIxvLeQ
	X6H+ak/X/pJV1K1dMjaPA2ySVQ6WgKyIjS1SGYF5Ko/DG/iVLa/8rJxP
X-Gm-Gg: AZuq6aKe6HHVgpTY1Fc84BxeLGZUbG5JuWWX4VXV6zXaTEQorUHmD+2ViEVkA39Hk00
	q74R3/mU4iEW2dk0SOjFc0BH+Ye5bnVhZ4cNq/3K52GV5DUQ0Cf98GMTLSnNMkOZDrcQ7gXFbnO
	J2bw7G0UJbzQoSBqUADtWb4gvKBVh3Gl3JcOetqRs98eQhwI2TtHuIfDQscIbSFmVoUzkmO9zDB
	438dMR6rE3rLzTuJQHXlynWIIUphxVBzmPEP57DxuapzhImKK5ZgPXnkhSeK5wIXPMtrL05ESBv
	tmxb7J4Dl4Pw9pl+wjnapkdHgBoMvpNzIaCdXhXgiFroN+sD5TW2cCu3D7irdyPKAKi9ngseAqB
	dlpGB5ogo0HlR16WiTVUpG1a8r1jGZ+Pk/w/dJpkqoP4sCbFkYsigiDFywthpoXf8njt9a39Dn7
	vx9KCoNXnJfaN4feESng==
X-Received: by 2002:a05:600c:6206:b0:477:b0b9:3129 with SMTP id 5b1f17b1804b1-482db44d215mr218506605e9.3.1770122110349;
        Tue, 03 Feb 2026 04:35:10 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483051379c4sm60618205e9.15.2026.02.03.04.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 04:35:08 -0800 (PST)
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
Subject: [PATCH v2 2/2] arm64: dts: renesas: rzg3l-smarc-som: Enable eth0 (GBETH0) interface
Date: Tue,  3 Feb 2026 12:35:00 +0000
Message-ID: <20260203123503.314755-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203123503.314755-1-biju.das.jz@bp.renesas.com>
References: <20260203123503.314755-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262239-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,2.220.108.0:email,0.0.0.7:email]
X-Rspamd-Queue-Id: 19402D9132
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable the Gigabit Ethernet Interfaces (GBETH0) populated on the RZ/G3L
SMARC EVK. The eth1, pincontrol definitions and hotplug support will be
added later.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * No change
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
index 7c21afaee9bc..f52af01a7eff 100644
--- a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -8,6 +8,10 @@
 / {
 	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
 
+	aliases {
+		ethernet0 = &eth0;
+	};
+
 	memory@48000000 {
 		device_type = "memory";
 		/* First 128MB is reserved for secure area. */
@@ -15,6 +19,37 @@ memory@48000000 {
 	};
 };
 
+&eth0 {
+	phy-handle = <&phy0>;
+	phy-mode = "rgmii-id";
+
+	status = "okay";
+};
+
+&eth0_rxc_rx_clk {
+	clock-frequency = <125000000>;
+};
+
 &extal_clk {
 	clock-frequency = <24000000>;
 };
+
+&mdio0 {
+	phy0: ethernet-phy@7 {
+		compatible = "ethernet-phy-id0022.1640",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <7>;
+		rxc-skew-psec = <1400>;
+		txc-skew-psec = <1400>;
+		rxdv-skew-psec = <0>;
+		txdv-skew-psec = <0>;
+		rxd0-skew-psec = <0>;
+		rxd1-skew-psec = <0>;
+		rxd2-skew-psec = <0>;
+		rxd3-skew-psec = <0>;
+		txd0-skew-psec = <0>;
+		txd1-skew-psec = <0>;
+		txd2-skew-psec = <0>;
+		txd3-skew-psec = <0>;
+	};
+};
-- 
2.43.0


