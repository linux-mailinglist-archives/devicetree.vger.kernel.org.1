Return-Path: <devicetree+bounces-324050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kecfMuvyT2r6qwIAu9opvQ
	(envelope-from <devicetree+bounces-324050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:13:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC4E734D13
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:13:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=EDWuukOO;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324050-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324050-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2087B3079875
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610C23CE497;
	Thu,  9 Jul 2026 19:04:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696B03C1402;
	Thu,  9 Jul 2026 19:04:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783623886; cv=none; b=WBjRWWJOmm0e6zxFK3p+4jAAwxtcSermttxJ8galfp0dgF5FCVDYcaDmNe2KuH9HrjJqsv/wO9SYe+BVCPpS3eM5RGKrSuINQeXhK/EF99TKneHwieh2zTJMXvqnnTz2S3tXed1WXhsLIgCyXCCx9O6at1cqqQuz5dJbrUQwUG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783623886; c=relaxed/simple;
	bh=7Gn2bgHmTSxV6xutTkSH7htCrYJzZ15Cj8a02NsjqyY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KXvLEcPjlE0Wi+MRDpGE2fniaBSC6XO1YVnDuEEj6Pk2S8h5gOl62FSpZbOj7XJgtmpeSq94c4VnC9F7LYVqNJYb7K+Y6K/UG/BP83eOyn+yDXSKRgBof3auhQchOK/eHKwx9/omkEs/0kE2xpHM0XmmGCloGDdzHo/S2ArNhPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=EDWuukOO; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783623874;
	bh=7Gn2bgHmTSxV6xutTkSH7htCrYJzZ15Cj8a02NsjqyY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EDWuukOOrOGBfJ8OGqRQQXZkYUtCSvolYPxDaTWrM3nfTjPH7rpDzxF5xyxsT5Qwz
	 W61Iofr6sKbGiCK6+eTOJOMtdA4tMVa0zXbNru2rfOu1T/opuMTgQIxJe3VsRIchn4
	 vCWqRIj7xHwQM/TnKZxO/HenHvpAOLnErV/pgk6jKJjpXYaaBDCEzWk2yxhJO38shg
	 /ofoaqn2L1M7mtJglSNSelZAkxlMZguIoodJ3El49pBqhn7yQO7W6eYw3wp/8rRAuO
	 oOsTonsfIKyXpMJE2szVy+X28G+X/NoRfFcxw+Xg/kDZX6ECL13rwUHQxC1AUaGl9p
	 pJkilXszVvYdQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B173017E0EFE;
	Thu, 09 Jul 2026 21:04:34 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id CB1F748006E; Thu, 09 Jul 2026 21:02:29 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 09 Jul 2026 21:02:50 +0200
Subject: [PATCH v11 27/36] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert errors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-rockchip-usbdp-cleanup-v11-27-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2365;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=7Gn2bgHmTSxV6xutTkSH7htCrYJzZ15Cj8a02NsjqyY=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpP8EUAH4gGxpalHZhZLnUOiVLc6NvF0Y2Wr
 M0Mzq8ATsRnZIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqT/BFAAoJENju1/PI
 O/qaPsUQAJtkZbnPQCn8wCIVPttwZZidJxl+BTnLHtLLTZrLx21B4UmbQmpm61gn9pa57u5leTO
 pm7doKVeLeyyr3blKSHdpe1Jc5kmohIEIwGD3AJujcAHcCd21uQd+LV2MKl2W3F9E1t1a6pIl6j
 hZB3HYKxvkGY46cvZMTglvwUJtlDxklyNLfV6xSBXaId5xXLPiLT888VFcz97rGHamnbXv1iqWB
 B6E2o77n6PJlwArVI/gsJjlEbQvD4ATOcW8KdNYnvw6PT0ph5GbDyLnnzJxlOMPi2wqC6SKHRq3
 L13GigF4G2ZI1NfooGB5wUZKVPJhPlHZkMM331omQdR7OdJajyQAxX0IZj40fVFvnV/SoRwUQi1
 kkt7tVrvo/hGcU2L/MSnqlQBNr2wUullwCpnYbVKmVMICB8OggI5eOe0zCwqb25SV5wlsXbhiEq
 B7cfLofc8ZN2fsWKUikDkrNEMFvfHlHbazTknhRuezFXpUY06FzMs2iNLDXd8UkTGCDDwq17vTa
 WXZMfoOa+wYaXPyUNSVu0KMDdhW1AW3dgf/KAUvD0gjZCAb/UqdJHwpyysSgxe9krODdu2aSfRS
 IlS5Ud1rzdpZ4EOvQIbDt6VWkxcWxjUjYgoYWjqJYz7aPaPhOGqIm1HfTJ4jwIoSKjTh8G0MxcN
 LkqjqUYxkGMtxxr9sJT8f+Q==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324050-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADC4E734D13

Handle rk_udphy_reset_deassert returning errors to avoid theoretical
(Rockchip reset controller driver does not return errors) SError.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260626211151.2332F1F000E9%40smtp.kernel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 9e77513643a3..c645fea67c4d 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -803,8 +803,12 @@ static int rk_udphy_init(struct rk_udphy *udphy)
 	/* Step 1: power on pma and deassert apb rstn */
 	rk_udphy_grfreg_write(udphy->udphygrf, &cfg->grfcfg.low_pwrn, true);
 
-	rk_udphy_reset_deassert(udphy, "pma_apb");
-	rk_udphy_reset_deassert(udphy, "pcs_apb");
+	ret = rk_udphy_reset_deassert(udphy, "pma_apb");
+	if (ret)
+		goto assert_resets;
+	ret = rk_udphy_reset_deassert(udphy, "pcs_apb");
+	if (ret)
+		goto assert_resets;
 
 	/* Step 2: set init sequence and phy refclk */
 	ret = regmap_multi_reg_write(udphy->pma_regmap, rk_udphy_init_sequence,
@@ -830,8 +834,11 @@ static int rk_udphy_init(struct rk_udphy *udphy)
 			   FIELD_PREP(CMN_DP_LANE_EN_ALL, 0));
 
 	/* Step 4: deassert init rstn and wait for 200ns from datasheet */
-	if (udphy->mode & UDPHY_MODE_USB)
-		rk_udphy_reset_deassert(udphy, "init");
+	if (udphy->mode & UDPHY_MODE_USB) {
+		ret = rk_udphy_reset_deassert(udphy, "init");
+		if (ret)
+			goto assert_resets;
+	}
 
 	if (udphy->mode & UDPHY_MODE_DP) {
 		regmap_update_bits(udphy->pma_regmap, CMN_DP_RSTN_OFFSET,
@@ -843,8 +850,14 @@ static int rk_udphy_init(struct rk_udphy *udphy)
 
 	/*  Step 5: deassert cmn/lane rstn */
 	if (udphy->mode & UDPHY_MODE_USB) {
-		rk_udphy_reset_deassert(udphy, "cmn");
-		rk_udphy_reset_deassert(udphy, "lane");
+		ret = rk_udphy_reset_deassert(udphy, "cmn");
+		if (ret)
+			goto assert_resets;
+
+		ret = rk_udphy_reset_deassert(udphy, "lane");
+		if (ret)
+			goto assert_resets;
+
 	}
 
 	/*  Step 6: wait for lock done of pll */

-- 
2.53.0


