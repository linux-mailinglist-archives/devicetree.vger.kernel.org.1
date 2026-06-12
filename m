Return-Path: <devicetree+bounces-311053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sFsOKzIyLGrXNQQAu9opvQ
	(envelope-from <devicetree+bounces-311053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:22:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D018F67AD92
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:22:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="avpTs/Ql";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311053-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311053-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 635363003719
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9393D331EBF;
	Fri, 12 Jun 2026 16:22:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F933381B1D;
	Fri, 12 Jun 2026 16:21:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281321; cv=none; b=hCzEE6qOMIfjr5h9s2oJTPybw5gNTySGPujqxm800+9BcufS0vbyMCy/cclEuuZ7Dt8RPB6UGBk7cBpiiPZjgQx7ZizIL6oNd5PDa8HbqD5rbZKy13EYCL7SskjnI5o1947oJaZY8QPf0fQTT9F1Bbgs7o80B2Pdmo6XbvrqFZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281321; c=relaxed/simple;
	bh=rfJKx0EWFtaxAVuaGJpBkiaZlyPZVhF+CYaMhiH23eg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PgkO593MRJn6lZX8hsoVcXdlJXPG2Sq5t+ZLwzhWoECQPooIL/YU7dlfLr26+TPMHQQP0ElBF3H8mzwSdzJzOms/AT1WKVEMDK2TjulRpx2h8r2leHJrFj3O42ZYYmHZKCVA8Uah4cc2Xf6kdW7O0NwKQpwcpUXSy0f8k0wdYIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=avpTs/Ql; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781281314;
	bh=rfJKx0EWFtaxAVuaGJpBkiaZlyPZVhF+CYaMhiH23eg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=avpTs/Qle+AwXKsK/mfvONvWLf9bhqHMJPpDiV2nNqJdn+CML7mWZpVSb4Dqwf6gs
	 RZcA0l9XIHKhJTDZaJk1ahBe1MLYZ1wS3p7mexgliD24v35e6vyay85Pkf7NSow3gw
	 cvmLUM/+/UcCNRmYUoOps5Lgu7+P1mRWmeMcdbo7B5bTCrLwYxcH+USu2k7zIvl0+B
	 CTVwxRJUI6PW681IYGTpyVkxHZFqG52KMcuuP3FRi5bvBHR22M++E7XPmuahXAX8t2
	 8p22fFseQk6IXDAkhnLxlJ+MgPQANGh/8NtCL8EuyAnq5mE5MkgQxosC+fYzvN6QIz
	 qbMvul581r8nA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 200F317E0C88;
	Fri, 12 Jun 2026 18:21:54 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id C837548002C; Fri, 12 Jun 2026 18:21:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 12 Jun 2026 18:21:41 +0200
Subject: [PATCH v5 03/18] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260612-rockchip-usbdp-cleanup-v5-3-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-0-efc83069869f@collabora.com>
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-0-efc83069869f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1136;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=rfJKx0EWFtaxAVuaGJpBkiaZlyPZVhF+CYaMhiH23eg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGosMiHu+T2GMml0kCL0PLzICkmH6vqggWfZu
 rD0IoFkvxlSzYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqLDIhAAoJENju1/PI
 O/qaCb8P/0XKum0ATMxSyPAg8XduReqSWlHffGAhFsb7Rtb9aHp2efmAZ3GsusZ9sxrZ4Mjhc4p
 KPqlUvYc7AVwfafEE3DcqphBB/F8MDigc4YlsfzBhA9u11KPWSiQ0PQ8Cw5woAIpa+viqdHWxhA
 SQqflKp10yO+0SN7DbFpZoMOE2eX27dkr6OX6DPaWHzXCGzMBA65fP2v+ZSrAVKF4yMPbFCSAU+
 CKV4c+R1/339adxe1MnP8suOqplgrKg3lzK/rCoIrTMILJdVXd5Zzns26L3uztG7jK5XUopLmnx
 zLDGWi4f7n35gjHHVOIcOiE87XHN2xTf/KW/yo7QT4JkZlo4LSTixJ5//2ha7YUhsohf67jJQ3G
 pthAWak6O03CEp8nJW7/BC67515vtaZCJfwbsXqteTRwiHPvPpkyMTTjb4UkU04OIJZl6tTE26j
 98JlEfBcf4ZTFKzyNBRbcbbT2nd+hV9zb8Cfz6h2BBp29mdKlFe0uGdODbvij9I2bGWGdmlIB6M
 SfwELspNObwQnfZn1q9GmntZTHIvhgjE1WazIMaz/yu75ucrs6cD3LEr/2mo5bQJjoAM6gpyF+D
 8QQ686P9YC/12e0dihD+0MQY46Nu0UKqr/GLMM+RzckaGcFgzPHfEuTEFdKGxsNl1jREzMmyuPb
 xGD76Fguejf1bUsmTKvM5Mg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-311053-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D018F67AD92

When a mode change is required rk_udphy_power_on() disables
the clocks and then calls rk_udphy_setup(), which then enables
all the clocks again before continuing with rk_udphy_init().

Considering that rk_udphy_init() does assert the reset lines,
re-enabling the clocks is just delaying things. Avoid it by
directly calling rk_udphy_init().

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 744cc7c642f4..98562a888b42 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1012,8 +1012,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
-		rk_udphy_disable(udphy);
-		ret = rk_udphy_setup(udphy);
+		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
 	}

-- 
2.53.0


