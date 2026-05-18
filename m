Return-Path: <devicetree+bounces-299615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNvFFEh1C2oHIAUAu9opvQ
	(envelope-from <devicetree+bounces-299615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 22:23:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C271B573528
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 22:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F9843042C4E
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 20:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E9B3932C6;
	Mon, 18 May 2026 20:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SlmOn0XF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCE4392C2C
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 20:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779135793; cv=none; b=T1u66N2Z5x8L5MZPDirAJwTsz3SF+LDFBQOTE4oBXcD2flq71Mw6FAutr1EddzgNj2Nasu0ksmda4j8EdMBEslysvvQlWFbupQdfDivjuAgWYTVHxeI7WoIcEeLp9ktz8oAALpkSNRp1a/SHjmDHEq5mb4GKLwg1mOZmGWW4OTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779135793; c=relaxed/simple;
	bh=CJeSSYYnZeStLm7YVc5JWFlVV48PQFOvjmfLZx4cw/U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=czuSjpBiSTkgwU80iG299WE9H1AiTXKieSzo25vWKEA37ZmQWEWnPdC1kLItLxt2ACC89Z6ZaWNe+58612tuZJXHxxunbXY3TUkonCS3KPi2OHTA1ihmA18u7MGyXHA47K1sf2Cpxfx3jnYf9mS1dmmuUyRhufTpKTuLPhB4Npo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SlmOn0XF; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-393a44854d2so26522391fa.3
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 13:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779135790; x=1779740590; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tLtvCiHLhOODkbTb6ldPXwhZ1lgl9LVuxx7kGug/QYY=;
        b=SlmOn0XFAv6VxT8niudZz3kzeKSzKL0MZZrEh2uMcyPYPhOk3IiOEq+m1keWp6lJGl
         6CWdHexjCw4Ilm3Yb9uOS7fPXM3cBgT300bb1qjOV2TgV4xYbUuxo4V7YKwycu9cfoxn
         +owxja5rcHk8aEeR7vzEeGVjOxnq0NLEhvyIGFSUirioGAc1FHGOYYqNZGdKieuVzbVn
         s3OT2KVf+IkcRRG0o4EF/MHYgNQghvvrEajsC7FM51LDx1bIeNMff4FWCIaSjpB1Ded6
         /cdtRBjETTxg1Tz1Gmdfg2zHIZxoawWxsIv+oNikpqrGhhSUvQRDUTiCZNZpyE5viUCq
         iFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779135790; x=1779740590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tLtvCiHLhOODkbTb6ldPXwhZ1lgl9LVuxx7kGug/QYY=;
        b=eWANc/KVVsTRCvJI5ZIW+1+QCNQz4ZZZZvZhba0WzZgClBccAD1KlYaJOgD0+Y6Bco
         shD9TqVglRsd1ryYcjzDz4o5EOtE36uMc86yAzxqSuGdXzpgfMo8fHFmTJv7fP7JZFT7
         HfFe0MIOH+15L6GRzYrM6wz1eZibaSz8hzINAoKObzMaymmFFtCsmO31R0jnROp6yrbx
         u43B349yoVqHb+jhG8I9RcY6LNOIqEolt2LyA3emyqufJTr9pvg42KVutsE3ZpGgIXwa
         L9Nvaa0j2YuQlqlUgPydp1SwDNiRKkrAj/QvMfF6uoxSunjrphTOcBcinkXgxix6kJhE
         fhsw==
X-Forwarded-Encrypted: i=1; AFNElJ/0Nlxe2wGbDLF7f3oZHYPFBAzID6hf2Bo457XTNtgN7QMKajAt6eXAfeF28sTm8wJGF1GQfU5hG9OE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv9aTXF/hYSmDy0/tWNkn/G8HiSg9kc3hThvZUMiqyMYqhAcXa
	csOnSQGomacaxzFIOnmHkpcpQLHe9deIHzPBZa6WNzHIP6r9x86fZJxU
X-Gm-Gg: Acq92OFtfs290pHjZvdCwQFouUO3BguSXcaPdeIm6080E3gYQjOLaohu/hq/NtUoDHs
	dChr2Xx2Fe+1yfwYEcllxx343pKpp6zrcocuh3HIOvsy+fsS4wapoQCAhK+e4ZV12l3XdW+VXsZ
	unVZRg/BL1cfOZGiM8vp3Y0gXYYBGke3W7Kyr/neAbGXZwl4lQoBGjky1Gwih/TqjSN8u7Znxdm
	f4UbFpSBx62iSZ8BcgvfGMo4jUl6di/Zw8A993r8ZuWVmUpTlRF8Cyl4fJ5Rf0RnLdgetno6Pg2
	A2XSorj9YDuG8gPJ0qNNLTWik+K5S/TUbmQossm5qTvV1XdyfpZyTo+Jpi9EMdPN+sN6K2wSrOV
	vk46ODttrcpglgYPVtGxEiyzYejq6FcXpyE+uWxnqyGOofGsVSexY+3isFaYR/HtsXL4U+9vnDe
	gIeyiuBed286ziIFVQ9TrBvpNLBAcxsGDy2zyv9jb1QBWMGHkds+4=
X-Received: by 2002:a2e:a995:0:b0:393:a4f5:3e0f with SMTP id 38308e7fff4ca-39561ae1a22mr51690241fa.2.1779135789949;
        Mon, 18 May 2026 13:23:09 -0700 (PDT)
Received: from localhost.localdomain ([90.157.113.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395887b42f8sm15225061fa.36.2026.05.18.13.23.07
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 18 May 2026 13:23:08 -0700 (PDT)
From: taygoth <taygoth@gmail.com>
To: linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Casey Connolly <casey.connolly@linaro.org>
Subject: [PATCH 4/6] arm64: dts: qcom: pmi8998: add USB Type-C and VBUS regulator nodes
Date: Tue, 19 May 2026 01:22:49 +0500
Message-ID: <10efd57e82ebceedb75dbe3e038af81de4f1557c.1779127507.git.taygoth@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1779127507.git.taygoth@gmail.com>
References: <cover.1779127507.git.taygoth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,quicinc.com,linuxfoundation.org,linux.intel.com,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299615-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taygoth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.5.20:email,0.0.4.76:email,0.0.3.232:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,c000:email]
X-Rspamd-Queue-Id: C271B573528
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The PMI8998 PMIC includes a USB Type-C detection block at SPMI offset
0x1300 and a USB OTG VBUS boost converter at offset 0x1100. Both are
left disabled here so that only boards which wire up the connector and
USB role-switch enable them.

The VBUS regulator falls back to the qcom,pm8150b-vbus-reg compatible
because the OTG register layout (CMD_OTG, OTG_CFG, OTG_CURRENT_LIMIT)
is identical to the PM8150B SMB5 block.

Signed-off-by: taygoth <taygoth@gmail.com>
---
 arch/arm64/boot/dts/qcom/pmi8998.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
index cd3f0790fd42..08a5f58c9b85 100644
--- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
@@ -29,6 +29,25 @@ pmi8998_charger: charger@1000 {
 			status = "disabled";
 		};
 
+		pmi8998_vbus: vbus-reg@1100 {
+			compatible = "qcom,pmi8998-vbus-reg",
+				     "qcom,pm8150b-vbus-reg";
+			reg = <0x1100>;
+			status = "disabled";
+		};
+
+		pmi8998_typec: typec@1300 {
+			compatible = "qcom,pmi8998-typec";
+			reg = <0x1300>;
+
+			interrupts = <0x2 0x13 0x7 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "type-c-change";
+
+			vdd-vbus-supply = <&pmi8998_vbus>;
+
+			status = "disabled";
+		};
+
 		pmi8998_gpios: gpio@c000 {
 			compatible = "qcom,pmi8998-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
-- 
2.47.3


