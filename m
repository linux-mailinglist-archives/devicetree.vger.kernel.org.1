Return-Path: <devicetree+bounces-244452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B4934CA50AA
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 20:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2654E300BF96
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 19:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9FDC2F3C31;
	Thu,  4 Dec 2025 19:00:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 3.mo575.mail-out.ovh.net (3.mo575.mail-out.ovh.net [46.105.58.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03C0345743
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.58.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874848; cv=none; b=kzyR5uUD0jSNwlUQZfQlS9KOHJ458eTD6Ws3GjfL3cxHp06MkAxRN6mxxQsP80db0WBNGXlVSNEPSMFn1WLXiS5gWwoX/wQm9CCf62niMbKEytYzdiYfKIaet/Kzvu2bnsQ9k3w0TrrEj5yC4TZycu8QvVYw16wbE2cYwhRu1Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874848; c=relaxed/simple;
	bh=pPNTClRoW9JRdOtd8rJh2TJKkXQUOFrmBQwQDVGQKyE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mJgCL7lAt1vsPSgNLFTEiAhI/BM8HnJl8BccooYDzFIJgblD/wUd4Dya/ikx6HraPiRfXFESch9uFQcC/D2Wbneq/u6R1d3COQR0ipN9aOaF1PwpghVmqUGpVQgM+vFz9TsIZTxcyoDHooBrih/KQGzyN3bfB6lX+EB7fIxiR5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com; spf=fail smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=46.105.58.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bp.renesas.com
Received: from director6.ghost.mail-out.ovh.net (unknown [10.110.37.191])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id 4dMg4m666rz64m4
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:31:36 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-mkpf7 (unknown [10.111.182.250])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id C7C88802DC;
	Thu,  4 Dec 2025 16:31:35 +0000 (UTC)
Received: from labcsmart.com ([37.59.142.99])
	by ghost-submission-7d8d68f679-mkpf7 with ESMTPSA
	id GduLDmO3MWnQjQQATXHgnQ:T4
	(envelope-from <john.madieu.xa@bp.renesas.com>); Thu, 04 Dec 2025 16:31:35 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-99G00337fdc783-60eb-4b1b-b5f2-08529535221d,
                    E90FA267686E4F2ED65044873A5FD8D85CF2A6B0) smtp.auth=john.madieu@labcsmart.com
X-OVh-ClientIp:141.94.163.193
From: John Madieu <john.madieu.xa@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be
Cc: biju.das.jz@bp.renesas.com,
	claudiu.beznea@tuxon.dev,
	linux@armlinux.org.uk,
	magnus.damm@gmail.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	John Madieu <john.madieu.xa@bp.renesas.com>
Subject: [PATCH net-next 3/3] net: stmmac: dwmac-renesas-gbeth: add physical port identification
Date: Thu,  4 Dec 2025 16:31:22 +0000
Message-Id: <20251204163122.3032995-4-john.madieu.xa@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251204163122.3032995-1-john.madieu.xa@bp.renesas.com>
References: <20251204163122.3032995-1-john.madieu.xa@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13215813106605196677
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTFsH8QoY8HPSEQZoD8Ibbd+bzwNXL0obaKKFLGiazDlW4Uaj9Wg1DqTSH/q7cJfXEOA4J54NzU+oVoI3cBejbXMiSHTkHjeas4ztG/nP5UJMApVzCcZ/nfmW+QDUI1C/RrE4AAReL6XBOgTfT9moE3wEjU2bSLFC4ucx9Zjt3w6vYmef8004X5IC1NW354OZcIlYIkd5YdukTcWHLjQ8V2LUAbDI/9v2AVuNCpEGjoeQCkbSffru2pbWS/emLFjwC7K31AqGLU98AqvSiTEnqDRzsu9NaOyqxR8B6vcWtkwQo4b9ZZRI5w/Ynl/5ZGRSKvxGx8VGIqIB6TcMFzKGz1CCpVJm2Wg3WphlrQpURlj+UGw1kbqiDQ86K1c5Db1+U1+iCITQmn3pHFWIH/LabIuRenyFovcNajYzKBN0BzIN0Kumndtp6OeitzeTqGSplsFLJQCG8PR467kGTAzbwNvgwXMU29NSPI41Mf+yGzvwb6enYfixubAhyv/hWtn1EIUKSMdP2Q8zRI5DPTD1PJE8vL5Dia1HIpJqi5U8/s9fH/2QTgG0xu72pvlgWtWi5h9AhjtWxkvQmjLhFYM1yO6mFR83SyrDaEh5+lWsulBXi3QPuDFbOAMnGmZTTCX5Rol0jl/3gKj7RBSJNLNIqlsWYuxx51M1LdjDKgcpZ/RIQ

Implement ndo_get_phys_port_id() and ndo_get_phys_port_name() callbacks
for the Renesas RZ/G3E GBETH driver.

The port ID is an 8-byte identifier constructed from:
- Permanent MAC address if available (addr_assign_type == NET_ADDR_PERM)
- Renesas OUI (74:90:50) as fallback for random/generated MACs
- Port index from 'port-id' DT property or ethernet alias

The port name resolution follows this hierarchy:
- 'port-name' DT property if specified (allows custom names like "mgmt")
- "p<N>" format using 'port-id' DT property
- "p<N>" format using ethernet alias index as fallback

Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
---
 .../stmicro/stmmac/dwmac-renesas-gbeth.c      | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-renesas-gbeth.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-renesas-gbeth.c
index bc7bb975803ca..5acb65b0e4f06 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-renesas-gbeth.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-renesas-gbeth.c
@@ -16,7 +16,9 @@
 #include <linux/clk.h>
 #include <linux/device.h>
 #include <linux/module.h>
+#include <linux/netdevice.h>
 #include <linux/of.h>
+#include <linux/of_net.h>
 #include <linux/pcs-rzn1-miic.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
@@ -91,6 +93,57 @@ static struct phylink_pcs *renesas_gmac_select_pcs(struct stmmac_priv *priv,
 	return priv->hw->phylink_pcs;
 }
 
+static int renesas_gbeth_get_port_id(struct device *dev)
+{
+	int port_id;
+
+	if (!device_property_read_u32(dev, "renesas,port-id", &port_id))
+		return port_id;
+
+	port_id = of_alias_get_id(dev_of_node(dev), "ethernet");
+
+	return port_id < 0 ? 0 : port_id;
+}
+
+static int renesas_gbeth_get_phys_port_name(struct net_device *ndev,
+					    char *name, size_t len)
+{
+	struct stmmac_priv *priv = netdev_priv(ndev);
+	struct renesas_gbeth *gbeth = priv->plat->bsp_priv;
+	const char *port_name;
+
+	if (!device_property_read_string(gbeth->dev, "renesas,port-name", &port_name))
+		return snprintf(name, len, "%s", port_name) >= len ? -EINVAL : 0;
+
+	return snprintf(name, len, "p%d", renesas_gbeth_get_port_id(gbeth->dev)) >= len ? -EINVAL : 0;
+}
+
+static int renesas_gbeth_get_phys_port_id(struct net_device *ndev,
+					  struct netdev_phys_item_id *ppid)
+{
+	struct stmmac_priv *priv = netdev_priv(ndev);
+	struct renesas_gbeth *gbeth = priv->plat->bsp_priv;
+	u8 *id = ppid->id;
+
+	if (ndev->addr_assign_type == NET_ADDR_PERM) {
+		memcpy(id, ndev->perm_addr, ETH_ALEN);
+	} else {
+		/* Fallback: Renesas OUI prefix (74:90:50) */
+		id[0] = 0x74;
+		id[1] = 0x90;
+		id[2] = 0x50;
+		id[3] = 0x00;
+		id[4] = 0x00;
+		id[5] = 0x00;
+	}
+
+	id[6] = renesas_gbeth_get_port_id(gbeth->dev) & 0xff;
+	id[7] = 0x00;
+	ppid->id_len = 8;
+
+	return 0;
+}
+
 static int renesas_gbeth_init(struct platform_device *pdev, void *priv)
 {
 	struct plat_stmmacenet_data *plat_dat;
@@ -194,6 +247,9 @@ static int renesas_gbeth_probe(struct platform_device *pdev)
 		plat_dat->select_pcs = renesas_gmac_select_pcs;
 	}
 
+	plat_dat->get_phys_port_id = renesas_gbeth_get_phys_port_id;
+	plat_dat->get_phys_port_name = renesas_gbeth_get_phys_port_name;
+
 	return devm_stmmac_pltfr_probe(pdev, plat_dat, &stmmac_res);
 }
 
-- 
2.25.1


