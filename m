Return-Path: <devicetree+bounces-318924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kOtXJrakRWpPDQsAu9opvQ
	(envelope-from <devicetree+bounces-318924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:37:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 834606F258F
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:37:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=U8QIxcWX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318924-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-318924-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A3E57301F699
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 23:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2399D4229B0;
	Wed,  1 Jul 2026 23:35:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9826A420E7C;
	Wed,  1 Jul 2026 23:35:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782948955; cv=none; b=mAec61f2D9CpSKOLetRfZ6bax1TQcB/Q7F1r9YXguXzjc72la5UW5+cbKMTP5mjGJDSrjqxtaBKLIYVRpIjNrPsCjRs7bI7I2xnDOKcri+py9zPTPX6AW6LPoBhSoJZ9ad8gyCe+3o1wJ3ssuFz3CqPQLua9xM8f0TTe4ga5Z4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782948955; c=relaxed/simple;
	bh=sJkpHjMyuCGBTTW/sZnTUenvlYuEyw8qh8/75W4WtnE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KkKUigTMT2spU3L8p4xse50V2Qqcenik6PtV//V0L5FuOvNrQhVrlTnjREKM6N5vrDTYgIxFNuRYOmAxR8oewwIVJ+HnWkZyfgoN3NK3DBhVxz5mOuR4bg48vvWML09RIjPrfOoUDverb2SVv9Wdrqj++umNO5wY+hO6KcpPp6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=U8QIxcWX; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782948949;
	bh=sJkpHjMyuCGBTTW/sZnTUenvlYuEyw8qh8/75W4WtnE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=U8QIxcWXmRjt2nFgZjOgUSD+Qse/3frAFrNsOt4ZUSwvsYtWfynixc71r9zmrOaHo
	 Dx+sisA5jUc8L53mjT/bTiV+Pfl2rnmPyoW+YjdluHwW9kot60v5bgQmzcLAcQH6iZ
	 erRLhLzMinDezml2gqowoA8GpbVhHl8kTBo5dWT3Ft2VaGqaF4lB8C5mSRy+0PoZ4B
	 U0itTTLoRdAA3G5w4crPzsjQBfc8uFh0hbGLSM81gqgR94kcsDf/P6xFIl432UOMj4
	 zIbCByfrg3ryBAfnDj98ckJozqhDVjAXntoQ8wtum8y5Vm+VHMd3zXoYW+nKJ6zGa5
	 7q957jukt6R2A==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5B9B717E1553;
	Thu,  2 Jul 2026 01:35:49 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id B6A8E480038; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:35:45 +0200
Subject: [PATCH v9 07/38] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert_all errors in init check
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-7-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1517;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=sJkpHjMyuCGBTTW/sZnTUenvlYuEyw8qh8/75W4WtnE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFPrXvh6h4GZvVQ4XGt+B6pO5w2YFi/GQ
 oy0QE5siocC2YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRTAAoJENju1/PI
 O/qayYAP/3mQX+qsa2b4h99CO0vht9+TBZXe0q/8BGIhtpea+a/YVhFmP+a4QfzJm1H7o3Wk9Wq
 V+YYTpLwj6siE/3wG9t98bC28oTxudrVJTF2pWK51jrj6jbuBbn57RjCxbStC5vfjRPST3Xw5Vd
 8sUfQYp22Vyo3X1/jFL8E0FoTbFz1rvoTznj6Ax2Kakk96mDScD3LXkX1LfoWYChRg+k7uhxVG9
 slGyyZWbsn7Qye3HrrDyx7y9A0YMsAEZyKvGVWHXoERDhLiNLpam9v6lgfcRd31xqBoXHi9xH+p
 HA8fVoXo2OO9LeUnbdWItdlp60O5sTidPi84ri/NgjINTKcdsA1rLlGNkodzdIxFvpxXtbpirwa
 YaktvS2DV5GaWe3RH0L4g6hiRwkU9mWKuIgF+QbKsLGgQDqeOTtctg8RLRzc8boC5t+p1Y8rolC
 0gw+XnMV1R0lW4zgBGLbknf55wcb/J/tNvvK1fDv6ZSsAHpu6tpatub0qpPGzRYxvRJTCttshXp
 yoi7ohP2Rfu2w+pJopo/lAaYNuaRUvlPSpaC0iJc+qmtr+0vHJOiBKw+buH7Nm5ZMUUB1dQdyqD
 uI9du6dCYBHK3XD64K+jHyOAGQmyHekD+R0s/HH13l/CeJIbnVyB8sLZSLdKSvII3mAmBRj8+3d
 HcTerCjBXjVS2cbuGw8UzLQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-318924-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 834606F258F

Fix theoretical issue, that failure to deassert the reset lines would
result in an SError in follow-up register access. Note, that this cannot
happen with current code, since the Rockchip reset driver never returns
any errors for (de)asserting reset lines.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260619154903.2225A1F000E9%40smtp.kernel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index d73455370113..5d0e4f82de2f 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -936,7 +936,9 @@ static int rk_udphy_get_initial_status(struct rk_udphy *udphy)
 		return ret;
 	}
 
-	rk_udphy_reset_deassert_all(udphy);
+	ret = rk_udphy_reset_deassert_all(udphy);
+	if (ret)
+		goto exit;
 
 	regmap_read(udphy->pma_regmap, CMN_LANE_MUX_AND_EN_OFFSET, &value);
 	if (FIELD_GET(CMN_DP_LANE_MUX_ALL, value) && FIELD_GET(CMN_DP_LANE_EN_ALL, value)) {
@@ -946,9 +948,10 @@ static int rk_udphy_get_initial_status(struct rk_udphy *udphy)
 		msleep(100);
 	}
 
+exit:
 	rk_udphy_disable(udphy);
 
-	return 0;
+	return ret;
 }
 
 static int rk_udphy_parse_dt(struct rk_udphy *udphy)

-- 
2.53.0


