Return-Path: <devicetree+bounces-291146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEo/AbHg8GmoagEAu9opvQ
	(envelope-from <devicetree+bounces-291146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 18:30:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88957488F01
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 18:30:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D42430E2C29
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 16:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6576443CEF3;
	Tue, 28 Apr 2026 16:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="RBC6iJh7"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B183C6600;
	Tue, 28 Apr 2026 16:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777392845; cv=none; b=Vh3hGMj5XEvuhLFsirieJ5+xpx7JpSEbRwaeQwrim3+A9ISs3JqH9Lll3phLEYU18CLaUD7s933fKcdLo5x2+5gBh+dzlPmaU9Rq+KHGBQ36prLuxRLr5s1w04o3AysXi9Mv06s4oAvYgR+2RyfDl7fCXb7Z90ZNmGQbbZ8VgpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777392845; c=relaxed/simple;
	bh=lVMDgPrv/XqgshhEJQv3iup6/HEvG/vwnk6YBAh6auM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S9X1LlyZUzZ4Zt7OWF1/YiFPUGDeOxuLyPzB7/i9usoqDhLdNmKcUHOwuAL3g6PJiXNrHsXlpg3nUVbycC+0q5khkXbnqTRN5DkT239xd2KKhaFLyBbrUwxaIf45YLW4w785zfF/r1JFemhSg+9pO0NMLq9Dp0NFyJ/54AJTlZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=RBC6iJh7; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777392841;
	bh=lVMDgPrv/XqgshhEJQv3iup6/HEvG/vwnk6YBAh6auM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RBC6iJh70Ng9puW6JMdNu5KVfbha87tiDZ5g5Ny6imQmIHfOon5ATNv7CfeFg9qOh
	 sKUcu7PoKZ6jQiwa89gaAp0hB3NUpaMUlNBdVZwGJniOaJu0Xq3aBC9TyMi9varnWl
	 HIAQp9KjcqlRgiwyrE4anE5uVwSOl8J1DNOwscH9vFM4JbnQVL+vSivN17Roh6m/ap
	 BMk+OaAjR13vhNz8i9WAwtLag7MPXck/h3AxAkW4KjQogBri/dqVgYE2WJxtLBeAlS
	 8KhVO8/+JgDX/NfuhULDI0YwOMrBk/A1uid2PVu2fHklOOtb5hxb+E0C5iHjPwK89s
	 ggQM7+XA2vEUw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C640D17E131F;
	Tue, 28 Apr 2026 18:14:01 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 82F84480031; Tue, 28 Apr 2026 18:14:01 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 28 Apr 2026 18:13:42 +0200
Subject: [PATCH v4 03/16] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260428-rockchip-usbdp-cleanup-v4-3-7775671ece22@collabora.com>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1079;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=lVMDgPrv/XqgshhEJQv3iup6/HEvG/vwnk6YBAh6auM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnw3Mg17IfkYpPi/fviUG85PATBikSnAA4pr
 2aWLQeIAvq7AIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJp8NzIAAoJENju1/PI
 O/qa3Y4P/0EamDY5YtEJW1mTJU2BWbfCzMbcmKNlEXmJ4/SA0R/qs4XRDgtZoKCFEq1RblvDFaD
 k56HT8lR6tOm0bB4XiV+OUpvfqyZsQfplSbPFZv9bTSs+AUWNMgImi9q/rXYsGeCvYSlEuh9NPi
 CbJaU0UxnFA+3432hoVC6ElH6a2wvsuVwDTRbq5VDc1sL4jrfZOgo21E5aHbGfod1urBGdGDGJB
 iQbBVOBMEtqfcax8cFW3cVIi6u6hhBZctsQqXL6NP5Eo93c/fEogAVPFtYN6tE7rAQggr8Kn/R4
 zMJ+lfc8/l7RenFmhhbfoZKtu6ivWBBdbisaXfDJ0liKzNHEKIk4T9hQR5HBYpE4QqbgdKXZL5O
 UhVlMERXWM5tIT6x71SOi9inzfjwqqjj7bcT92+EjGj0m+BEpwIFOoQRpnft9RQiedUrUlLxljK
 V8ckFS60SabcxsNguiv+8GD2Tte/LzEJ6Lk8fKJUJoMUFY1tpdknTXUOdB3uU8HCouYJDV+f5jf
 RcrmHdeqPqoqa3rNzRsLAbRdhMlpoqlBXXa2ivfVt14iled9QAUDp3rGGy86GggUVlotVjevwMn
 TceiJKNl6XkkUgVICGP0fsxJsm84frxNVc+QWPNpmCE8vrjRXxi/0oYI1RLab3MBzNJLAUMY9/L
 xwtRyFnpXSQaFFFvEmFEspQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Queue-Id: 88957488F01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-291146-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:dkim,collabora.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

When a mode change is required rk_udphy_power_on() disables
the clocks and then calls rk_udphy_setup(), which then enables
all the clocks again before continuing with rk_udphy_init().

Considering that rk_udphy_init() does assert the reset lines,
re-enabling the clocks is just delaying things. Avoid it by
directly calling rk_udphy_init().

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


