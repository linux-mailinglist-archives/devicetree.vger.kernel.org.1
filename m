Return-Path: <devicetree+bounces-99368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A7B9698FC
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 11:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03A23B29663
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB0311DA0E1;
	Tue,  3 Sep 2024 09:27:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949081D096D
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 09:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725355661; cv=none; b=VLCVQhTZhjqLMwnrWkQcaE+7KMr1eFEfUKAzC111rHBt/C69Zgm3rmesG1sH5G20rUgra7DDOYfe73umlOO2KpZy2CEa35C0Nhk/VdC2XHq7hdQRgZ5Z/TZWoOfuSqZAzYew2bbSOrl/UWWoRO42BcdV1NcXwj+7QTTf1Up+Or0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725355661; c=relaxed/simple;
	bh=gTvq7gHTXf9S/cqPeCfVe7J+meaf29zJX+AvP7bOZn8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OildajtyKf10ovyNnYWYJ+K9uVOnArTN/CAtorXiWbm28E/uY7HFZ0eXchx+u72+lNvUSHL7XHKPrYeF9isha8SZavhYJphU/699wrd2yU75wt+zRd3awe8hBJTjyfmo+ah86OuUjH8gM9iEatN6jNhRH7Dhg6G7b989AA4z+nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPp2-0004Lu-Q5
	for devicetree@vger.kernel.org; Tue, 03 Sep 2024 11:27:36 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPp1-0059kq-6w
	for devicetree@vger.kernel.org; Tue, 03 Sep 2024 11:27:35 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id E4A92331162
	for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 09:22:36 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id BDBD0331034;
	Tue, 03 Sep 2024 09:22:27 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 880eff45;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:51 +0200
Subject: [PATCH can-next v4 09/20] can: rockchip_canfd:
 rkcanfd_handle_rx_int_one(): implement workaround for erratum 5: check for
 empty FIFO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240903-rockchip-canfd-v4-9-1dc3f3f32856@pengutronix.de>
References: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
In-Reply-To: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=4011; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=gTvq7gHTXf9S/cqPeCfVe7J+meaf29zJX+AvP7bOZn8=;
 b=owGbwMvMwMWoYbHIrkp3Tz7jabUkhrRrVx1C3zf47j+Un93z8L7WgniZZTO2iBTebszfPdXsy
 faLMs92dDIaszAwcjHIiimyBDjsanuwjeWu5h67eJhBrEwgUxi4OAVgIkK72P+XZnJ/9Ym7z792
 4tv2e857cn+q7NE2irubpO7R/mlpi2XNggWyEfu/Kb7mqHOwD+HLYPaXOto/1+ZiU3dtkEfF9Jw
 vQu6fHVSauf/X5R7T3xzj8r7jqtlVETmvvDWuufcWbzrINbU/sb9mjrpExOKoRwV9X1Xa2ySVcy
 1z1qtUC6/XEP6wnmWDx5nknY5Wy/YUHF33dIqC2Ptm7sX9CbxMbo7bDZOVelqDYhc3zmw4/EJ0S
 k22g960ro9dO9syKhieHMjqZM0zbOxRqwuo/MD2InZfifPSszLRd75OquuWahF8LHb4ndqGIKvb
 6o1nr194/6J3q9+pJnm5sJf3r21492ZfpY7mhqk63PGXAA==
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The rk3568 CAN-FD errata sheet as of Tue 07 Nov 2023 11:25:31 +08:00
says:

| Erratum 5: Counters related to the TXFIFO and RXFIFO exhibit
| abnormal counting behavior.
|
| Due to a bug in the cross-asynchronous logic of the enable signals
| for rx_fifo_cnt and txe_fifo_frame_cnt counters, the counts of these
| two counters become inaccurate. This issue has resulted in the
| inability to use the TXFIFO and RXFIFO functions.

The errata sheet mentioned above states that only the rk3568v2 is
affected by this erratum, but tests with the rk3568v2 and rk3568v3
show that the RX_FIFO_CNT is sometimes too high. This leads to CAN
frames being read from the FIFO, which is then already empty.

Further tests on the rk3568v2 and rk3568v3 show that in this
situation (i.e. empty FIFO) all elements of the FIFO
header (frameinfo, id, ts) contain the same data.

On the rk3568v2 and rk3568v3, this problem only occurs extremely
rarely with the standard clock of 300 MHz, but almost immediately at
80 MHz.

To workaround this problem, check for empty FIFO with
rkcanfd_fifo_header_empty() in rkcanfd_handle_rx_int_one() and exit
early.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-rx.c | 14 ++++++++++++++
 drivers/net/can/rockchip/rockchip_canfd.h    | 22 ++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index 5398aff0d180..609282359bca 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -47,6 +47,16 @@ rkcanfd_fifo_header_to_cfd_header(const struct rkcanfd_priv *priv,
 	return len + cfd->len;
 }
 
+static inline bool
+rkcanfd_fifo_header_empty(const struct rkcanfd_fifo_header *header)
+{
+	/* Erratum 5: If the FIFO is empty, we read the same value for
+	 * all elements.
+	 */
+	return header->frameinfo == header->id &&
+		header->frameinfo == header->ts;
+}
+
 static int rkcanfd_handle_rx_int_one(struct rkcanfd_priv *priv)
 {
 	struct net_device_stats *stats = &priv->ndev->stats;
@@ -63,6 +73,10 @@ static int rkcanfd_handle_rx_int_one(struct rkcanfd_priv *priv)
 	rkcanfd_read_rep(priv, RKCANFD_REG_RX_FIFO_RDATA,
 			 cfd->data, sizeof(cfd->data));
 
+	/* Erratum 5: Counters for TXEFIFO and RXFIFO may be wrong */
+	if (rkcanfd_fifo_header_empty(header))
+		return 0;
+
 	len = rkcanfd_fifo_header_to_cfd_header(priv, header, cfd);
 
 	/* Drop any received CAN-FD frames if CAN-FD mode is not
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 3dafb5e68dc5..c775e75a2740 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -315,6 +315,28 @@
 
 /* Erratum 5: Counters related to the TXFIFO and RXFIFO exhibit
  * abnormal counting behavior.
+ *
+ * The rk3568 CAN-FD errata sheet as of Tue 07 Nov 2023 11:25:31 +08:00
+ * states that only the rk3568v2 is affected by this erratum, but
+ * tests with the rk3568v2 and rk3568v3 show that the RX_FIFO_CNT is
+ * sometimes too high. This leads to CAN frames being read from the
+ * FIFO, which is then already empty.
+ *
+ * Further tests on the rk3568v2 and rk3568v3 show that in this
+ * situation (i.e. empty FIFO) all elements of the FIFO header
+ * (frameinfo, id, ts) contain the same data.
+ *
+ * On the rk3568v2 and rk3568v3, this problem only occurs extremely
+ * rarely with the standard clock of 300 MHz, but almost immediately
+ * at 80 MHz.
+ *
+ * To workaround this problem, check for empty FIFO with
+ * rkcanfd_fifo_header_empty() in rkcanfd_handle_rx_int_one() and exit
+ * early.
+ *
+ * To reproduce:
+ * assigned-clocks = <&cru CLK_CANx>;
+ * assigned-clock-rates = <80000000>;
  */
 #define RKCANFD_QUIRK_RK3568_ERRATUM_5 BIT(4)
 

-- 
2.45.2



