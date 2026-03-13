Return-Path: <devicetree+bounces-275490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHDCCuBQtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:01:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA00288700
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36EA632C413B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9BE83D6492;
	Fri, 13 Mar 2026 17:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eon3f0/d"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F393D6CA0;
	Fri, 13 Mar 2026 17:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424644; cv=none; b=mAyQdlzk4hCgm8qQNvQBDOZ00lBASIkEYr1ygUFbva4+g08J1d31XPbXAVwyDbiq8zn6kyNvTYjauTl3PL8/kpzYc5C4XeSDloIqc1uvT0zG8xzdGupMUKukXfM5pJU+3vjUf4j6DFG5YkRBpCU4mFM2h6Fk1brTlGLZuZOjh18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424644; c=relaxed/simple;
	bh=8XKEEF4KyHT0T1v1iHCLDOk9ooAapZQC0N/82jwA0gg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dY/94wQA5VbKc1eOwdV/5O1hk1SyTqNPqpr2btzZ7Tkw5EXv/BKtw9vWWbHXglB14FHdKYVCwWUsOWJs3OBw5NS8QhvPbfZhkVXNPoXKK1YvduDplPjtwzaunSfD34ZLDbAPTAfCYGUy8aKQbRdgCHTCKkWny+NXLBHCxue3sbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=eon3f0/d; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=8XKEEF4KyHT0T1v1iHCLDOk9ooAapZQC0N/82jwA0gg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=eon3f0/dCHEAr9DpjskpjEBgLZWLlpYDu8uD2xfx1Trl2DNwUDXPhbQOAWuS5tOFI
	 Oe+XsJQRXjkIfYtNcolMXzhksGh5fKzz6FjWFtQC1HCgfSdr+zypH1Q0CJx9FUreyN
	 BbPjYvsp0nt+E61JO912adfLtFASukyCGGQsXavdVkoahQ1ce4r7vPZfhIEKTO5M8y
	 Cxsxd1r8pExm7Z12iUwOTrqIeUPi7U4ybWKSVjzllUY6ynZHzrr6U4Nbb7DNb6lqdD
	 zSIXzp4jw+2TpKHM+DmLzVD0ltglkoKmN7emna1UKap3Us/bLKDnn13rwdasNFirgI
	 iLkpLFotQZntQ==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 713CF17E12D4;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 25C63480024; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:11 +0100
Subject: [PATCH v3 02/12] phy: rockchip: usbdp: Do not loose USB3 PHY
 status
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-2-3e8fe89a35b5@collabora.com>
References: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
In-Reply-To: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1343;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=8XKEEF4KyHT0T1v1iHCLDOk9ooAapZQC0N/82jwA0gg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAAf0J8ySDP7K1Cs0pAiitUFnqV/NPU6D
 dPR/aJgESPkUokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaLKsP/2rScWxePQrU+pUMRTemUgdValvUF8YYzWWgKVJA7TYYkSQuf1Rnwn6lhf0Pr1Qu9l0
 S2Y99LC9WoHIXAWieWl5IpiZ24I0llnrOtwFIeUm0ID+yKMmxxDVxPkHX9c0MxSGQIit6PkbO5M
 5r7hIGJrW5+KNqpQvg/urp9P45znuqXw7NqSK6WpjYWPK4zNDlnRvPHn7WhgPgn0/sBy6bpyB/S
 xpBS7ItVX2IFHL1d+9e66jgSWmfqMluGRGjsh2Gu5sNLmUVgFy7qX5ZDdevaD7WSvAXuJxhgnCa
 /2coU8hLafm99sHbJkZ5v73JKae7GLwFWAcy6L8LCxjvlQFQCtsVEZ/JBgSg/JaCAuuM9/BUijx
 KMqiXlZKeCq74PDCxALS0ZECqvZChwVb7lxeq0RwmtPgzQjZ/oaJAeZqhk2WMZodMAgpBleU5BZ
 8HqghWLZgabUo7Ct9guGFpT5QlXv4OXxDih849y203ARMrxHMxQxhtkaoMmeV2TLVLOhYRhE1HU
 lCsyiLU3qaQ5QOml6KzNyMVTTz9F9lZC8Hsx6rAkzIl50JGJyRGmMOHO9sZAzYNM6N4L+rzNwNh
 Y33JcXuj+E/PNxYXh68g93u7fvxOvvll1MtIyJm6AMvjMPSPHz4TKl2GclC/wSkTm17HB5zHRyk
 c5RJjRBku79oP3FiCBlkdew==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275490-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ABA00288700
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

By default (i.e. without manually enabling runtime PM) DWC3 requests the
USB3 PHY once and keeps it enabled all the time. When DisplayPort is
being requested later on, a mode change is needed. This re-initializes
the PHY. During re-initialization the status variable has incorrectly
been cleared, which means the tracking information for USB3 ist lost.

This is not an immediate problem, since the DP side keeps the PHY
enabled. But once DP is toggled off, the whole PHY will be disabled.
This is a problem, because the USB side still needs it powered.

Fix things by not clearing the status flags.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index fba35510d88c..744cc7c642f4 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1009,7 +1009,6 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 			rk_udphy_u3_port_disable(udphy, false);
 	} else if (udphy->mode_change) {
 		udphy->mode_change = false;
-		udphy->status = UDPHY_MODE_NONE;
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 

-- 
2.51.0


