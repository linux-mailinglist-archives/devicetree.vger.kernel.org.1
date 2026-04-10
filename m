Return-Path: <devicetree+bounces-286462-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIG9Gj/L2GktiQgAu9opvQ
	(envelope-from <devicetree+bounces-286462-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 12:04:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CDE3D563C
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 12:04:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BD9933024DCF
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EAB937F730;
	Fri, 10 Apr 2026 10:03:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-sc.amlogic.com (unknown [64.106.246.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1543F3815E3;
	Fri, 10 Apr 2026 10:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=64.106.246.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775815437; cv=none; b=eh4CkxFT6uOdSJAbZuLvJIQRf3/Gh5AW7o9f+3kl3LV1SyHSyxh8BoqYNcLCfQghLf/qprHw5zjK5alhLiW5nAzWPmB16fHw4DEAuwrdrKj+BkftIncdC1rW4YgYENWbEhxyJUDTZyoccBsB9UI66Nv8Wuj+azFbPGMza1eHwz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775815437; c=relaxed/simple;
	bh=OZihmrETl/csxWn7A4CItHyQjCfEvjrSg8l5unw5n0U=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N4qo1jAcwY+FCe2SywHl2oc9JAAAN/N5u7+h2viwk+MDjSzSsidoc63OY3rNVb7IKDIfq5vwxwAd8I/jQCPweO7pyUYxVjLZQDF5R4GeQL7zqFsC65N3mMNddHS3AaWhN34XbHCDGVVsahpFTj4ecEzmqMloDzYaDSQI9J7vgs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amlogic.com; spf=pass smtp.mailfrom=amlogic.com; arc=none smtp.client-ip=64.106.246.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amlogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amlogic.com
Received: from rd03-sz.software.amlogic (10.28.11.121) by mailsc.amlogic.com
 (10.8.11.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 10 Apr
 2026 03:02:52 -0700
From: Jian Hu <jian.hu@amlogic.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet
	<jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, "Michael
 Turquette" <mturquette@baylibre.com>, Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>, robh+dt <robh+dt@kernel.org>, "Rob
 Herring" <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
CC: Jian Hu <jian.hu@amlogic.com>, devicetree <devicetree@vger.kernel.org>,
	linux-amlogic <linux-amlogic@lists.infradead.org>, linux-kernel
	<linux-kernel@vger.kernel.org>, linux-arm-kernel
	<linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 4/4] arm64: dts: amlogic: t7: Add clk measure support
Date: Fri, 10 Apr 2026 18:03:29 +0800
Message-ID: <20260410100329.3167482-5-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20260410100329.3167482-1-jian.hu@amlogic.com>
References: <20260410100329.3167482-1-jian.hu@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: mailsh.amlogic.com (10.18.11.5) To mailsc.amlogic.com
 (10.8.11.35)
X-Spamd-Result: default: False [3.04 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amlogic.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-286462-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jian.hu@amlogic.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.87.192:email,0.0.187.128:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amlogic.com:email,amlogic.com:mid,0.0.234.96:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 64CDE3D563C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the clock measure device to the T7 SoC family.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 7fe72c94ed62..cec2ea74850d 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -701,6 +701,11 @@ pwm_ao_cd: pwm@60000 {
 				status = "disabled";
 			};
 
+			clock-measurer@48000 {
+				compatible = "amlogic,t7-clk-measure";
+				reg = <0x0 0x48000 0x0 0x1c>;
+			};
+
 			sd_emmc_a: mmc@88000 {
 				compatible = "amlogic,t7-mmc", "amlogic,meson-axg-mmc";
 				reg = <0x0 0x88000 0x0 0x800>;
-- 
2.47.1


