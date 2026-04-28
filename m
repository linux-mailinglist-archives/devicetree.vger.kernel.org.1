Return-Path: <devicetree+bounces-291152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKT9C9Hg8GmoagEAu9opvQ
	(envelope-from <devicetree+bounces-291152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 18:31:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C9773488F1F
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 18:31:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06AC5309E66B
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 16:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9F847A0A1;
	Tue, 28 Apr 2026 16:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="YLzpHbg6"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3911B478864;
	Tue, 28 Apr 2026 16:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777392849; cv=none; b=bZ5v5Z+L3rEU7fgqnKithrpplv9JyVySfAm0Xi4ujgjoKXWYURTgm3y+teu+iGc0xLrQCPyUCnLNdG951QuV92peJe5ktuu+rg38xDrEwhIt2bFXQh8YthM+0gBKGjpU1AjQJFHwHTk4mWfYCOtqUTLHG58wkcH3yHh6dzRkZnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777392849; c=relaxed/simple;
	bh=44U1UChGeKh0HEiCvpuVJ49MDPkv3nQQ2Nz9Gq57yC0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QESSgnmwkA9n+PrbdO+IUPefAg0cee8gSgYRkP8NsSN2+46mtqJAj3eKJni7+EPcJnVzrlW9ybWOWYy/z2MnDdtjwxgIP4Lt8t7lP6qnKpSfbr55RZNkI8j8vquwwfzqAAwr8qMCA29G3+mvyLnILSWXoccykyrkmTD6L0PpB+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YLzpHbg6; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777392842;
	bh=44U1UChGeKh0HEiCvpuVJ49MDPkv3nQQ2Nz9Gq57yC0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YLzpHbg6XSqh2vYW149Cb0Mr0ybRSIrbVSUVjwSs9LwXQJP8A+i7yrkNfTbNtlz/x
	 ZUoJXNqSK0D0m6YKDrc2neDcLjT9sake1Y9gqmtRACliv0FnucCknafoX1GRq9HjPv
	 y9BdQ7QWTHGiF3CV7Lil31x1k7Yp2SGZRB+DTwUJR5lRyuoC8PF8lEcd4V4T83fCBl
	 mao1NWOFxFCPMfrO8jbjWfJ/bZjIkKqCYYATmR+znpbMXbODczPl5oVo1fsV4qIR8l
	 0qAoYxOIGsv5JpzziPHSakzTD8sQF1wIXW3nGHILMi8qPNhIzeaZvLkMtpVZqIlzR6
	 X5uMvquCybqzg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 22AF117E1553;
	Tue, 28 Apr 2026 18:14:02 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 863AF480038; Tue, 28 Apr 2026 18:14:01 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 28 Apr 2026 18:13:44 +0200
Subject: [PATCH v4 05/16] phy: rockchip: usbdp: Fix LFPS detect threshold
 control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260428-rockchip-usbdp-cleanup-v4-5-7775671ece22@collabora.com>
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
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 William Wu <william.wu@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1464;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=eVOY3NqVA0ogxpiysvigAYrriG39FpovjHpdGuHvpr0=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnw3MmfN1guRhjMtYp9JkPPxN8GXqZLa1Fw3
 +AZpTHqhhYZ9IkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJp8NzJAAoJENju1/PI
 O/qayasQAJ7VUokwjwSLaNyTDCx4EDvrdj8WT91X64eLgL1YSZRX5VJXRA22KedRmXcFoKMFBeR
 CPEYb1LCKDOVQ11dc/Ggbwgec1EqRtt0efChSWzIjsasQs4fH+wa69lsWqglGyTYZnkTFRbOmSA
 lQBfkog5lRxvtY6qalkE6ERj8EokI0VigqxSUOAE37z7fPnkw4kbNs7/r5lUqzIBtJid1QsYDhH
 pl0L9PtnYXiT5T2f9QjLvtW95NxUyJKcZXgwML+JAIYw75GtWdzhIEdbEQa+clv3EPpYYBnhtK8
 b9RedvdRLHi2cWrywbHQcupCNakcW+9CgxJgTvMJuBF1amNa2+DZ5QmDrczf6Mk7zEFvHqtqatx
 o9ZMa6eYbMh1MOYACjuSClnzARLc3sN6RH7f8zNogEgW44Efwvgmn8u9Kcks13a0RXUgvoznBvA
 C+4Sc2d2D0s4hVyoWfi2yr2ZecfHpuhuSxCaak4r6g6d04dIS8pOzgiMRv4CsG/jEcv4pg2uR8q
 01V4vXcbytqE48kvGaQRs7TfCIz17BzO7mJzqEFv5N01gNrCvPNe5Lb9r9nVaAzqPY2N7iqVGSS
 /Z2vR3d2Ot24AT+4tQSwz0fM9OGEgM/206G17/qAALXynyJ6Ve9C8YquhhOAziS2gCMAGvDRMrg
 1wWt4el7UIycW0B8dW5g1bQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Queue-Id: C9773488F1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-291152-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,collabora.com:dkim,collabora.com:mid,usb.org:url]

From: William Wu <william.wu@rock-chips.com>

According to the LFPS Tx Low Power/LFPS Rx Detect Threshold [1],
the device under test(DUT) must not respond if LFPS below the
minimum LFPS Rx Detect Threshold 100mV. Test fail on Rockchip
platforms, because the default LFPS detect threshold is set to
65mV.

The USBDP PHY LFPS detect threshold voltage could be set to
30mV ~ 140mV, and since there could be 10-20% PVT variation,
we set LFPS detect threshold voltage to 110mV.

[1] https://compliance.usb.org/resources/LFPS_Rx_Tx_Low_Power_Compliance_Update_Rev5.pdf

Signed-off-by: William Wu <william.wu@rock-chips.com>
[Taken over from rockchip's kernel tree; the registers are not described
in the TRM]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 1f686844c337..97e53b933225 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -413,7 +413,8 @@ static const struct reg_sequence rk_udphy_init_sequence[] = {
 	{0x0070, 0x7d}, {0x0074, 0x68},
 	{0x0af4, 0x1a}, {0x1af4, 0x1a},
 	{0x0440, 0x3f}, {0x10d4, 0x08},
-	{0x20d4, 0x08}, {0x0024, 0x6e}
+	{0x20d4, 0x08}, {0x0024, 0x6e},
+	{0x09c0, 0x0a}, {0x19c0, 0x0a}
 };
 
 static inline int rk_udphy_grfreg_write(struct regmap *base,

-- 
2.53.0


