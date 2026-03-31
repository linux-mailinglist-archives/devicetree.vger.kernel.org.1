Return-Path: <devicetree+bounces-283037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCDKOhjby2lHMAYAu9opvQ
	(envelope-from <devicetree+bounces-283037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 16:32:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8A436B034
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 16:32:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0194309D72A
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 14:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75B63FB07E;
	Tue, 31 Mar 2026 14:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="a0bZEJnp"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400013FB055;
	Tue, 31 Mar 2026 14:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774967105; cv=none; b=p73keSCY9BzJmrVafpSf8VW+zW3iTOig0SBixpuYYfGUdbl9i92B+HFHleO1gImi4SqsSWYqUgX9jdbx+t2Rv15KusMdj6CYRTLJbTFxMh56w2hMRYD1lf7vlk0wErXmNC2LermUYHPOZxA0IC53BscJc7aC0OcDwswNFoXZ8R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774967105; c=relaxed/simple;
	bh=qxFJoJrGjwGTRee41XbDZD3ZEy53tTIFlBC7/ii6Ca4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=or7j/pgoDu+JFNzMXjZGhdXtdsCaUEdToFuVyiyvDRYdLy2NMpQhzv6nRFkB2tIuKeZaIMAW3yQ079tEnjktd1UFNwq9nz3u/R+xX5V5iSq7RPenxYfJrt6xJEdRjcZOGTyZKB/9GQAqtDELTeQ9qNDuLgBdqD5snstuXaaIIq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=a0bZEJnp; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1774967095;
	bh=qxFJoJrGjwGTRee41XbDZD3ZEy53tTIFlBC7/ii6Ca4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=a0bZEJnpqeyKwOWOkSPeSi4pxe5mTrY6EpukajDGCWdWkauJy8OSI4v+YdYIXvEtQ
	 feBpiHZPWWNP2FO6XJYZINfn99xKEa1dF3BRDut9OPHd2aOWarrujIP5UZZg9cplVx
	 PLcUpscbF0nSC8MiFyR2DEGphqBmk8TUi1OZ0btU=
Date: Tue, 31 Mar 2026 16:24:05 +0200
Subject: [PATCH 2/2] arm64: dts: amlogic: t7: Fix missing required reset
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260331-fix-aml-t7-null-reset-v1-2-eb95b625234c@aliel.fr>
References: <20260331-fix-aml-t7-null-reset-v1-0-eb95b625234c@aliel.fr>
In-Reply-To: <20260331-fix-aml-t7-null-reset-v1-0-eb95b625234c@aliel.fr>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1774967093; l=1561;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=qxFJoJrGjwGTRee41XbDZD3ZEy53tTIFlBC7/ii6Ca4=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QCU4/Wz8ZteqVRTInB1DatMXwUnzpYxTf+Mh7GPkDkaMVHRrsViO/qJt3PtEoSYeXtPCurOZydp
 xH1XiXwnXfAo=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,linaro.org,baylibre.com,googlemail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[aliel.fr];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-283037-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.1.87.192:email,aliel.fr:dkim,aliel.fr:email,aliel.fr:mid,8c000:email]
X-Rspamd-Queue-Id: 5C8A436B034
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CHECK_DTBS shows missing reset required property in T7 DTBS.
A new CHECK_DTBS with this patch does not show this anymore.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 02a303d4ec39d..5069f29d2fbb7 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -582,6 +582,7 @@ sd_emmc_a: mmc@88000 {
 					 <&clkc_periphs CLKID_SD_EMMC_A>,
 					 <&scmi_clk CLKID_FCLK_DIV2>;
 				clock-names = "core", "clkin0", "clkin1";
+				resets = <&reset RESET_SD_EMMC_A>;
 				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_A_SEL>;
 				assigned-clock-parents = <&xtal>;
 				status = "disabled";
@@ -595,6 +596,7 @@ sd_emmc_b: mmc@8a000 {
 					 <&clkc_periphs CLKID_SD_EMMC_B>,
 					 <&scmi_clk CLKID_FCLK_DIV2>;
 				clock-names = "core", "clkin0", "clkin1";
+				resets = <&reset RESET_SD_EMMC_B>;
 				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B_SEL>;
 				assigned-clock-parents = <&xtal>;
 				status = "disabled";
@@ -608,6 +610,7 @@ sd_emmc_c: mmc@8c000 {
 					 <&clkc_periphs CLKID_SD_EMMC_C>,
 					 <&scmi_clk CLKID_FCLK_DIV2>;
 				clock-names = "core", "clkin0", "clkin1";
+				resets = <&reset RESET_SD_EMMC_C>;
 				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_C_SEL>;
 				assigned-clock-parents = <&xtal>;
 				status = "disabled";

-- 
2.49.0


