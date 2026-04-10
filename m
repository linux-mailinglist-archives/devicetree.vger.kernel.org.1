Return-Path: <devicetree+bounces-286461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC7NHRTL2GktiQgAu9opvQ
	(envelope-from <devicetree+bounces-286461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 12:04:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 003D53D55FA
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 12:04:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 358203006818
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEC0237D13B;
	Fri, 10 Apr 2026 10:03:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-sc.amlogic.com (unknown [64.106.246.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57C03815E3;
	Fri, 10 Apr 2026 10:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=64.106.246.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775815433; cv=none; b=DVWMUJa2kjbay7PDfi1tCJIlFU4//0SFf30YdNvg+MlXvVa+uBtbDROYlAdNyOFfDABZi5BOvM+4F9psGdgAhoqFP+z0mpDaxelrDToiDmCBMef8+K5AYbdYVpFBqQ1e+Ba30MdUpW6rtKkqN+DwZEt4i7ffoqdl1nCpWPWgxuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775815433; c=relaxed/simple;
	bh=9uXgIGv8IU/YQd4VyPr+t+/xhDaINbw1L72leIE4mIw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YvG+58J/aIVLDeJc9iMyyI8ya08eos7MkDWLpGa8Ul6Ps5MJSc6z9Q9U1IMbuy8MvIpp2hiBUoUC4l4OFLmr3WBJMClYlA+XjUosx469xRnmhD7folXhCRD0G5PVUoSnO2kUsGzShtgUYPE4r4zP0Rk9mJW0p38DbKoGTtjrLtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amlogic.com; spf=pass smtp.mailfrom=amlogic.com; arc=none smtp.client-ip=64.106.246.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amlogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amlogic.com
Received: from rd03-sz.software.amlogic (10.28.11.121) by mailsc.amlogic.com
 (10.8.11.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 10 Apr
 2026 03:02:48 -0700
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
Subject: [PATCH 3/4] arm64: dts: meson: a1: Add clk measure support
Date: Fri, 10 Apr 2026 18:03:28 +0800
Message-ID: <20260410100329.3167482-4-jian.hu@amlogic.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-286461-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jian.hu@amlogic.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.13.72:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,amlogic.com:email,amlogic.com:mid,2c00:email]
X-Rspamd-Queue-Id: 003D53D55FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the clock measure device to the A1 SoC family.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 348411411f3d..6f6a6145cba1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -576,6 +576,11 @@ saradc: adc@2c00 {
 				status = "disabled";
 			};
 
+			clock-measurer@3400 {
+				compatible = "amlogic,a1-clk-measure";
+				reg = <0x0 0x3400 0x0 0x1c>;
+			};
+
 			i2c1: i2c@5c00 {
 				compatible = "amlogic,meson-axg-i2c";
 				status = "disabled";
-- 
2.47.1


