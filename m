Return-Path: <devicetree+bounces-264882-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CSGCGkvjWk/zwAAu9opvQ
	(envelope-from <devicetree+bounces-264882-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B1826129073
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99F5D3020EBB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 01:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40E0321ADCB;
	Thu, 12 Feb 2026 01:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJFMkekb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB5B21ABC1;
	Thu, 12 Feb 2026 01:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860357; cv=none; b=lSFYl9+SM98JTy2boUG+QWrWP90h+wkkws87DR4ggoiOOOKEzS0Q4TG28yK0dQWRi9qqPPUq6WnSg6DD/38rZnLWAjI6SDjWICJW66CvLXhxT955clQgBfSTZ6mXOwtLLK5VCy39gElvZYO7+WBgCKdpHQVu/4NXlYMPz0jPF6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860357; c=relaxed/simple;
	bh=VeholSffT/UMyhEACirshDrbCKDpTWyBnxuxVdBUr/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N5g+1BYT7PgGgBuPkAzqpOBOuIocs2tlAuzmKa72vhOWSHYtaC7BZwloQkzeAnuPno6Cu3YtHn38W0qaYl5nmPd2LMBHHgfWOVlzOoO29Aocu3lMUJLjPofKGCvEL4rb5QSyUIHqOGw9ZgAjoDushvql6uRABlUxH05rs+BDyiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJFMkekb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2E57C16AAE;
	Thu, 12 Feb 2026 01:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770860357;
	bh=VeholSffT/UMyhEACirshDrbCKDpTWyBnxuxVdBUr/w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KJFMkekb/gpw+iVZ4zFpjfyIj40fK9OJOeNklaJeprIum6E+l7NCmbQDu/YGY1YoM
	 oJR2er3OHh82lGnV47jvk+qz+U+z3/rQGpDV03YFemgMkj9fqFu97Y/2EHBRbqC6Fn
	 3j5gri5h6JNrkXJ50wP9mtCPUFVp5vCPDgYpdeN+B2mUzifKctRr0l/MYpEeWt3DGI
	 z2CUJFhDMGYSOIG5r9SirK+lZyIN1Fd3YKF8BqDVG7yOfQCaFzRhrtnR2CpaRizRjY
	 nVO1KAECeXC5NJ50bq5hRiRSEhQQrg618Z8BPLMBXOzswLbEx8yol+LhZmrNMoJUgp
	 3qXgDhndD8eIg==
From: Yixun Lan <dlan@kernel.org>
Date: Thu, 12 Feb 2026 09:38:55 +0800
Subject: [PATCH 2/3] phy: k1-usb: add disconnect function support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-11-k3-usb2-phy-v1-2-43578592405d@kernel.org>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
In-Reply-To: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1479; i=dlan@kernel.org;
 h=from:subject:message-id; bh=VeholSffT/UMyhEACirshDrbCKDpTWyBnxuxVdBUr/w=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpjS83l7LIBz5j7b0i1Mn1HREi55NVap0spyWjR
 qFR12iKDH6JAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaY0vNxsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+0acA/8DiNihXAyofvNdMrH+2sgLHZcWc0P4+l2zGse7N1DqHhzTMCJQmQz8
 AsQkj/JF96iZ6LsB+ruMJLFuiKyJ7cDoHpsAe2nWMDSp9g2C59c86xu3RbJSimk+vCt7/2gkZLv
 XmloMWH+dUqnKitXxCt+mGSLdtNe/9A4F1RBT3i4TBmbyH5YcPBk8aFCE99HZRA2tUHZxY308iV
 2Ztwjtveq68uF518L3P0IYO36QszZEq+zDl5eriaLTNfQLqcBu9whDbBUxKxBjF+xnn1Rk2t8pZ
 Xcd6/QdmDvRJrt/2xaYGoDHvHMAS0AA7K3fCeRoEhYoLguTc0DtEtnXCLt6E23Hu9SGXbE83CgP
 SdEfj9gfAdATba4vOEg1PXxOMl4mxVBE69E0A4F8OrMVPnOGgv55LAgeaWykGe//2qybaEumu/K
 YhbeZLPrjKs2p+LLQTvL6WbDaYiFK5ktkD8Kg1cFG+RONxfUNYt/j8zJ2LBx1+ixJtktgNX5X9O
 6n26mmRrxc6kNV1OTAL+zZ+WVZsZa7pRRescgml8W6RStIyowZDAQGav8iSHJQFdZmRHkrkmM+U
 eI7+WDAZ11uwMq0RQ+bSaOKRc0LNq5ds/qYOs+8F+iHXkbWxHnlS/8sElOZzTlKelvczzZbtbHO
 TKIPHrl9L1ttmZ5KFDwTITyg+Uuz68=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264882-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B1826129073
X-Rspamd-Action: no action

A disconnect status BIT of USB2 PHY need to be cleared, otherwise
it will fail to work properly during next connection when devices
connect to roothub directly.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 drivers/phy/spacemit/phy-k1-usb2.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
index 342061380012..959bf79c7a72 100644
--- a/drivers/phy/spacemit/phy-k1-usb2.c
+++ b/drivers/phy/spacemit/phy-k1-usb2.c
@@ -48,6 +48,9 @@
 #define  PHY_CLK_HSTXP_EN		BIT(3)		/* clock hstxp enable */
 #define  PHY_HSTXP_MODE			BIT(4)		/* 0: force en_txp to be 1; 1: no force */
 
+#define PHY_K1_HS_HOST_DISC		0x40
+#define  PHY_K1_HS_HOST_DISC_CLR		BIT(0)
+
 #define PHY_PLL_DIV_CFG			0x98
 #define  PHY_FDIV_FRACT_8_15		GENMASK(7, 0)
 #define  PHY_FDIV_FRACT_16_19		GENMASK(11, 8)
@@ -142,9 +145,20 @@ static int spacemit_usb2phy_exit(struct phy *phy)
 	return 0;
 }
 
+static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
+{
+	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
+
+	regmap_update_bits(sphy->regmap_base, PHY_K1_HS_HOST_DISC,
+					   PHY_K1_HS_HOST_DISC_CLR, PHY_K1_HS_HOST_DISC_CLR);
+
+	return 0;
+}
+
 static const struct phy_ops spacemit_usb2phy_ops = {
 	.init = spacemit_usb2phy_init,
 	.exit = spacemit_usb2phy_exit,
+	.disconnect = spacemit_usb2phy_disconnect,
 	.owner = THIS_MODULE,
 };
 

-- 
2.52.0


