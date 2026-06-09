Return-Path: <devicetree+bounces-309024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kzHOHvcNKGqu9AIAu9opvQ
	(envelope-from <devicetree+bounces-309024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:58:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9DF6604EA
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:58:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IR1ePokG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309024-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309024-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28699308CA7A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 12:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F36C41C311;
	Tue,  9 Jun 2026 12:54:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A844192FE
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 12:54:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781009690; cv=none; b=Jv4OQKYIcB+5JFbvzQWPMqpMmQXGzycMeQIsGWaKUbAhx2vWBVenONGMjyLISQ6snC7jiNugIhnzwaOpCt0oHCsm3UR59358IhYZWvx7QF11G4o3/JiyeJgHAprUbJtaQVFlD5t5JtkmgxvvdqakYsd/bUvIcfMyQqAFGgD4b+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781009690; c=relaxed/simple;
	bh=VgFNiEF0ef+trC7uormB4Jp8xRciGveapgTE3rlnBCY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DvZC/AaTO7U6HvlielzNuvOMv/OWir4iZt0SSPwaUMSFCYHmSuC8WEy081JIqM9YpZ0hw9xfOUCq+fSm6gp3KIhe+u5HKyeDwM/tr2xJtL1+z3mwXaesdkFZWQviQSxdBb97eiDu6k45rnWIRso6j12WIUBQ7BF20H352u5NU6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IR1ePokG; arc=none smtp.client-ip=209.85.128.50
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-490b613a17bso54039155e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 05:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781009687; x=1781614487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pa1NEGZZ2FfbTBnmrVGSbV2tYmK5duax/CfIG2yuC6M=;
        b=IR1ePokGnwGz+UlAYXMlWL3OSMUAn0YPh9g9XJTtkoDdv6IQ8So1HRiPRVWyYRrw8C
         IKMphZg8moZc2XjWunmHZhItypFWMsWTUzT6mDGPRJ5lLhR82tJyecTIU6mWg2MfyChI
         j73+L7Yi5jXD3ggQZ0OAHBUWIPefhWN+HbIUImK4ZcZnuXUUvH9Cl+TctMDrds0r8Ewi
         vw3XVvZPUZy/DsDeKAsikaheb6I8DmmVCdetV7C8mVtxSds7uI+4KiirKN/zO/ZpUxsE
         /902KAszHUPiorIDh2Mm8Rt7ERwaw1vMVDukDLVfKnReYYhZX1PnQznJOQpwqhw8LkP6
         l4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781009687; x=1781614487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pa1NEGZZ2FfbTBnmrVGSbV2tYmK5duax/CfIG2yuC6M=;
        b=ZNH9jtb2VYoRYZx9fh6W6wVVQy7N2hhE7HVr+WtsNQrNaQ5ouzY0NWIYfkgykOBXsZ
         epprUxiRECISz/6Ve5ozl46QdovZXVXRtjZA3XZx1XEbIBjrMWxtygFlnTyzkG2oep7N
         FXh7Ov0LzQyOjF6tRD5/+oEq0ncfqdVQr+fGdLyxZwpAXA7enL9/1DLQNQXoLXTSAs0Q
         Z4u81XffjCF4mPI7V0sgIf5c5MgFqrAQV2++uENxPUwZQvQyaXbjN3TYnhNPQ6Yyx7+O
         ewtN+DN2wLIUihCdR/GuyYwzv/6/ebGBCAEBsW3/HQGgQWumMrFVvuHJH2ijGSZ3LNhl
         Y8vA==
X-Forwarded-Encrypted: i=1; AFNElJ/DEGg9D68Hc/8Rzi7hnhi2d5LBnf4hknABwfndf09NgXuXGrBOWa/EQyp3N/Era1OQ7blcjA7TA001@vger.kernel.org
X-Gm-Message-State: AOJu0YzMMF7ZuoJPN5Qx/Jr/rbLXip6G4MGa5n2qvHry8ps5aEmuo6Ne
	u3WjCB9Re4aTxGQZgT4iqCD7P11NYwKxkQMO5oxUoTl4YCADCIkhUC4y
X-Gm-Gg: Acq92OHLfa9J+iF99KRsCj/pgAeYQZ2mchisppAwEYlcelx5F45oTqqaUvxmrI0pwuS
	ljF139tbxEgiOIBmHLsQUVNwaC9RUkizF21OvUgCySJTO04NwUkp2jIPDVUpKiy0m/kS8foyHTM
	8mbNEtn09uC7rOhE3hpkjDq/XlYbclsU3vZZNSZua+3wWo3TU3jTMY4JZjws32gUzTiTDNSDPUZ
	afIPUSC3pgyweJGE9jkFw+omppY3rE9oZsPX36dMy7BHXglJweePN1TfBrG3iszjxZf9z2X1mLT
	cquDPqNNG3v1UItlkcUD/vFWp+9Wb522zFOPW/hD+7EOpMkgQo1WF1oQcMQujlOkqZW3NASQciV
	hxavwjoChrVRYn98+cNs6CDGfhHEhtU+jPAC0RDpytwJKn7Yc9mCPD9/xboKPW4tODAA9hAzm3+
	g7KLjmhSj3cdAqZ9beFnB8E+tyUHEMVmmc3orf0SSEGKMQgbg5VIMbJ/YjL71VvJ6viJJ8VJ9pA
	ZCACEGi8GTeJ83HnV3Uv24SviHWC6jLrdB9DE8vK4JapIDdOFyWDE+So/tZVZUCMm6A
X-Received: by 2002:a05:600c:4e4e:b0:490:c2a2:e91e with SMTP id 5b1f17b1804b1-490d7244543mr37984345e9.34.1781009686933;
        Tue, 09 Jun 2026 05:54:46 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:2b2d:6009:3bbe:fb84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3b5b06sm435968425e9.3.2026.06.09.05.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 05:54:45 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/5] arm64: dts: renesas: r9a09g087: Add DU node
Date: Tue,  9 Jun 2026 13:53:52 +0100
Message-ID: <20260609125353.401124-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609125353.401124-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260609125353.401124-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309024-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,bp.renesas.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF9DF6604EA

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add Display Unit (DU) node to SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 174f683fa68d..308d3ccc21d1 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -1380,6 +1380,30 @@ sdhi1_vqmmc: vqmmc-regulator {
 			};
 		};
 
+		du: display@920c0000 {
+			compatible = "renesas,r9a09g087-du", "renesas,r9a09g077-du";
+			reg = <0 0x920c0000 0 0x10000>;
+			interrupts = <GIC_SPI 781 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_CORE R9A09G087_CLK_PCLKAH>,
+				 <&cpg CPG_MOD 1204>,
+				 <&cpg CPG_CORE R9A09G087_LCDC_CLKD>;
+			clock-names = "aclk", "pclk", "vclk";
+			power-domains = <&cpg>;
+			renesas,vsps = <&vspd 0>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					du_out_rgb: endpoint {
+					};
+				};
+			};
+		};
+
 		fcpvd: fcp@920d0000 {
 			compatible = "renesas,r9a09g087-fcpvd", "renesas,fcpv";
 			reg = <0 0x920d0000 0 0x10000>;
-- 
2.54.0


