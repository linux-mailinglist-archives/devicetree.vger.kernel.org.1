Return-Path: <devicetree+bounces-216214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDF5B540A3
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:48:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB5C21C25B17
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEFD222DA1F;
	Fri, 12 Sep 2025 02:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IuNyor3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D65E2264BB
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757645276; cv=none; b=UPoWfD0uQSkkBICfjVgoAm9/psA8GnQC6dN/S7Qz7JAQ97kc/476R6LRHfidZZ871jhKwFS5EidB/YzWcQ56onOiqcEL32Np5vyJjFufTi09/aitEUw4QIoOJKLHS7a7nWUEWHq3Ilh3h/H5NBca5GuNTfarGB+YAoSfR/azNW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757645276; c=relaxed/simple;
	bh=vSWwbQxf5KT4HkeJD+pU8m0AGeh439pmbQfV3q1jwu4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vl8xDjlt7CxKjiI7VmSmSYWNQN50Rv0XlDN9I/FzHJPZWl3S4MjFzPYgf2UloWNYe3jVtpUDfC0Ugc/LdQWORvdUu5V0Vy1ZpZRGESy9lSgfTvEXrBXBLt9pQ7U9EgnukA5+L8I6gpxUlDCX4RjG0wupvrBURoynWYCZNZN1Jrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IuNyor3+; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-32de7a2ea77so153953a91.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757645274; x=1758250074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOB8+c3LeZXokEHs6F4/VuMcwqCqjuk9sTez5HnCgog=;
        b=IuNyor3+ICYLcy11Q7CVYTVK17MP3D8zrj/jEn7VVzRSf9M5skZ+owKPJD1kzKUNJh
         L1HZDNSS5fL4z9ltIzJE/09qK4rXHHrIsc+o7SGxb/iNZ+Cfo17e4T+nccx8tmnAkzwV
         0icUqYIzIaII8h224Nrx3N8gGHxtfvl3tgpP0Jz/IldjxME8OiNZZ6y3lBZoI1eBWFae
         zkfswuTGX5CS/VHjeUOzoYgNpZ8ikK5tuz7x/0QYOSaVUWnrD29gLZ1rQQ0E803Aj8Pq
         8UQFQGQh3jPNgAbzFqVXQFGHQFkQBUX1Y6ulbbtmPmqtI+8xuwdExkEy+sBo0brMAvAa
         Oj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757645274; x=1758250074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XOB8+c3LeZXokEHs6F4/VuMcwqCqjuk9sTez5HnCgog=;
        b=H/cUcyMtC2MjQYyUtYjYJdwmsGMwoHeYR8C+5SU25i+zBase8fl3XhtBPMv2d7rBiR
         +SN6Ynvh5eCr9bbjaHrlrU1UvxTig3wxxksbfi7sA4rxTCi1YVee4DgxkYrCyJNWUMDK
         A9UrP589xhZPkxEpVUc2avwCkOZ/SBKsDMwZxQ16G5TTUl+OvNanBb+pTVGFDkmtLvnO
         ha4lLw9yKOt+w8nhS6j8nos+AVETuxUtgA2kLOL7StUj7tZaar5eeProbCf4sGnVWh9u
         Yvk9R9qW/daseTtv2yh1fJs9LSJGfyeHGTG6hf28l+CXvoSf9sKtI3xgLVvMFY04MbKV
         uPSA==
X-Forwarded-Encrypted: i=1; AJvYcCW0+PEdqrZ9Iro2uBYuc9lN0f4d94GXcry54bcChc585E9Yvfbj5TbKjQW1rknsPffIJwPAxV+hnhAF@vger.kernel.org
X-Gm-Message-State: AOJu0YzBpz5jEZ4YYOKFHxVVTHcu3EZiXxjULTObxOYi0lOfjwulVymT
	5rRx976GAMwbOpjAR5PR+Ffhu4BAsBL2pvxVHkz/PsDRtHOwkxptBtwV
X-Gm-Gg: ASbGncs53QCQjCFXD8sSlKwtoWAFQaJusoxSPa8DvCpMwLebMaoAlI64NHtv+0tzf2Z
	57HRahhMx2xPPO1Nb54sjKGkaTfjAmFkh3cww0ZqOqGV7UMFo3qUSM6I7hAPShM1yGHxXW8W/9R
	WR+kJNRzP+Zlvn/Xcbk0hhMPcifQe6wES8khGA1O3Ncm/ENXGaYIBB2Y6MGfgNFUT7iBVvhvhAN
	zAQ5eHaQbji1Gn+nmO57buQxqEMAW3O0vJaWpM3hMgkLt9jD0KNKuSbjFJlRjquHWqei/hxWtPA
	ZPL9POCozhAFhmwFi1cb+CBlvK6dpuALEVnOHfwgOu2ycrVVvwpxeCLFtnf7v9/BlmuEBgprt8i
	JSqk1pFU9z63K4Gev7kTl81rDn/FqBAUV/wda97ce
X-Google-Smtp-Source: AGHT+IEAa1SSvOxNw6eDjYM4JUsXmPAfjiilClnEg9xjJO/fmocQUvIiCBdJd6zqtNlYzLJxPvZe0w==
X-Received: by 2002:a17:90b:5905:b0:327:f216:4360 with SMTP id 98e67ed59e1d1-32de4eac480mr1521409a91.8.1757645274390;
        Thu, 11 Sep 2025 19:47:54 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dd61eaa42sm4349827a91.5.2025.09.11.19.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 19:47:54 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v8 2/3] net: dsa: tag_yt921x: add support for Motorcomm YT921x tags
Date: Fri, 12 Sep 2025 10:46:16 +0800
Message-ID: <20250912024620.4032846-3-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250912024620.4032846-1-mmyangfl@gmail.com>
References: <20250912024620.4032846-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Motorcomm YT921x tags, which includes a proper
configurable ethertype field (default to 0x9988).

Signed-off-by: David Yang <mmyangfl@gmail.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 include/net/dsa.h             |   2 +
 include/uapi/linux/if_ether.h |   1 +
 net/dsa/Kconfig               |   6 ++
 net/dsa/Makefile              |   1 +
 net/dsa/tag_yt921x.c          | 138 ++++++++++++++++++++++++++++++++++
 5 files changed, 148 insertions(+)
 create mode 100644 net/dsa/tag_yt921x.c

diff --git a/include/net/dsa.h b/include/net/dsa.h
index d73ea0880066..67762fdaf3c7 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -55,6 +55,7 @@ struct tc_action;
 #define DSA_TAG_PROTO_LAN937X_VALUE		27
 #define DSA_TAG_PROTO_VSC73XX_8021Q_VALUE	28
 #define DSA_TAG_PROTO_BRCM_LEGACY_FCS_VALUE	29
+#define DSA_TAG_PROTO_YT921X_VALUE		30
 
 enum dsa_tag_protocol {
 	DSA_TAG_PROTO_NONE		= DSA_TAG_PROTO_NONE_VALUE,
@@ -87,6 +88,7 @@ enum dsa_tag_protocol {
 	DSA_TAG_PROTO_RZN1_A5PSW	= DSA_TAG_PROTO_RZN1_A5PSW_VALUE,
 	DSA_TAG_PROTO_LAN937X		= DSA_TAG_PROTO_LAN937X_VALUE,
 	DSA_TAG_PROTO_VSC73XX_8021Q	= DSA_TAG_PROTO_VSC73XX_8021Q_VALUE,
+	DSA_TAG_PROTO_YT921X		= DSA_TAG_PROTO_YT921X_VALUE,
 };
 
 struct dsa_switch;
diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
index 69e0457eb200..cfd200c87e5e 100644
--- a/include/uapi/linux/if_ether.h
+++ b/include/uapi/linux/if_ether.h
@@ -114,6 +114,7 @@
 #define ETH_P_QINQ1	0x9100		/* deprecated QinQ VLAN [ NOT AN OFFICIALLY REGISTERED ID ] */
 #define ETH_P_QINQ2	0x9200		/* deprecated QinQ VLAN [ NOT AN OFFICIALLY REGISTERED ID ] */
 #define ETH_P_QINQ3	0x9300		/* deprecated QinQ VLAN [ NOT AN OFFICIALLY REGISTERED ID ] */
+#define ETH_P_YT921X	0x9988		/* Motorcomm YT921x DSA [ NOT AN OFFICIALLY REGISTERED ID ] */
 #define ETH_P_EDSA	0xDADA		/* Ethertype DSA [ NOT AN OFFICIALLY REGISTERED ID ] */
 #define ETH_P_DSA_8021Q	0xDADB		/* Fake VLAN Header for DSA [ NOT AN OFFICIALLY REGISTERED ID ] */
 #define ETH_P_DSA_A5PSW	0xE001		/* A5PSW Tag Value [ NOT AN OFFICIALLY REGISTERED ID ] */
diff --git a/net/dsa/Kconfig b/net/dsa/Kconfig
index 869cbe57162f..6b94028b1fcc 100644
--- a/net/dsa/Kconfig
+++ b/net/dsa/Kconfig
@@ -190,4 +190,10 @@ config NET_DSA_TAG_XRS700X
 	  Say Y or M if you want to enable support for tagging frames for
 	  Arrow SpeedChips XRS700x switches that use a single byte tag trailer.
 
+config NET_DSA_TAG_YT921X
+	tristate "Tag driver for Motorcomm YT921x switches"
+	help
+	  Say Y or M if you want to enable support for tagging frames for
+	  Motorcomm YT921x switches.
+
 endif
diff --git a/net/dsa/Makefile b/net/dsa/Makefile
index 555c07cfeb71..4b011a1d5c87 100644
--- a/net/dsa/Makefile
+++ b/net/dsa/Makefile
@@ -39,6 +39,7 @@ obj-$(CONFIG_NET_DSA_TAG_SJA1105) += tag_sja1105.o
 obj-$(CONFIG_NET_DSA_TAG_TRAILER) += tag_trailer.o
 obj-$(CONFIG_NET_DSA_TAG_VSC73XX_8021Q) += tag_vsc73xx_8021q.o
 obj-$(CONFIG_NET_DSA_TAG_XRS700X) += tag_xrs700x.o
+obj-$(CONFIG_NET_DSA_TAG_YT921X) += tag_yt921x.o
 
 # for tracing framework to find trace.h
 CFLAGS_trace.o := -I$(src)
diff --git a/net/dsa/tag_yt921x.c b/net/dsa/tag_yt921x.c
new file mode 100644
index 000000000000..c8d34193159f
--- /dev/null
+++ b/net/dsa/tag_yt921x.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Motorcomm YT921x Switch Extended CPU Port Tagging
+ *
+ * Copyright (c) 2025 David Yang <mmyangfl@gmail.com>
+ *
+ * +----+----+-------+-----+----+---------
+ * | DA | SA | TagET | Tag | ET | Payload ...
+ * +----+----+-------+-----+----+---------
+ *   6    6      2      6    2       N
+ *
+ * Tag Ethertype: CPU_TAG_TPID_TPID (default: ETH_P_YT921X = 0x9988)
+ *   * Hardcoded for the moment, but still configurable. Discuss it if there
+ *     are conflicts somewhere and/or you want to change it for some reason.
+ * Tag:
+ *   2: VLAN Tag
+ *   2: Rx Port
+ *     15b: Rx Port Valid
+ *     14b-11b: Rx Port
+ *     10b-0b: Cmd?
+ *   2: Tx Port(s)
+ *     15b: Tx Port(s) Valid
+ *     10b-0b: Tx Port(s) Mask
+ */
+
+#include <linux/etherdevice.h>
+
+#include "tag.h"
+
+#define YT921X_NAME	"yt921x"
+
+#define YT921X_TAG_LEN	8
+
+#define YT921X_TAG_PORT_EN		BIT(15)
+#define YT921X_TAG_RX_PORT_M		GENMASK(14, 11)
+#define YT921X_TAG_RX_CMD_M		GENMASK(10, 0)
+#define  YT921X_TAG_RX_CMD(x)			FIELD_PREP(YT921X_TAG_RX_CMD_M, (x))
+#define  YT921X_TAG_RX_CMD_FORWARDED		0x80
+#define  YT921X_TAG_RX_CMD_UNK_UCAST		0xb2
+#define  YT921X_TAG_RX_CMD_UNK_MCAST		0xb4
+#define YT921X_TAG_TX_PORTS_M		GENMASK(10, 0)
+#define YT921X_TAG_TX_PORTn(port)	BIT(port)
+
+static struct sk_buff *
+yt921x_tag_xmit(struct sk_buff *skb, struct net_device *netdev)
+{
+	struct dsa_port *dp = dsa_user_to_port(netdev);
+	unsigned int port = dp->index;
+	__be16 *tag;
+	u16 tx;
+
+	skb_push(skb, YT921X_TAG_LEN);
+	dsa_alloc_etype_header(skb, YT921X_TAG_LEN);
+
+	tag = dsa_etype_header_pos_tx(skb);
+
+	tag[0] = htons(ETH_P_YT921X);
+	/* VLAN tag unrelated when TX */
+	tag[1] = 0;
+	tag[2] = 0;
+	tx = YT921X_TAG_PORT_EN | YT921X_TAG_TX_PORTn(port);
+	tag[3] = htons(tx);
+
+	return skb;
+}
+
+static struct sk_buff *
+yt921x_tag_rcv(struct sk_buff *skb, struct net_device *netdev)
+{
+	unsigned int port;
+	__be16 *tag;
+	u16 cmd;
+	u16 rx;
+
+	if (unlikely(!pskb_may_pull(skb, YT921X_TAG_LEN)))
+		return NULL;
+
+	tag = dsa_etype_header_pos_rx(skb);
+
+	if (unlikely(tag[0] != htons(ETH_P_YT921X))) {
+		dev_warn_ratelimited(&netdev->dev,
+				     "Unexpected EtherType 0x%04x\n",
+				     ntohs(tag[0]));
+		return NULL;
+	}
+
+	/* Locate which port this is coming from */
+	rx = ntohs(tag[2]);
+	if (unlikely((rx & YT921X_TAG_PORT_EN) == 0)) {
+		dev_warn_ratelimited(&netdev->dev,
+				     "Unexpected rx tag 0x%04x\n", rx);
+		return NULL;
+	}
+
+	port = FIELD_GET(YT921X_TAG_RX_PORT_M, rx);
+	skb->dev = dsa_conduit_find_user(netdev, 0, port);
+	if (unlikely(!skb->dev)) {
+		dev_warn_ratelimited(&netdev->dev,
+				     "Couldn't decode source port %u\n", port);
+		return NULL;
+	}
+
+	cmd = FIELD_GET(YT921X_TAG_RX_CMD_M, rx);
+	switch (cmd) {
+	case YT921X_TAG_RX_CMD_FORWARDED:
+		/* Already forwarded by hardware */
+		dsa_default_offload_fwd_mark(skb);
+		break;
+	case YT921X_TAG_RX_CMD_UNK_UCAST:
+	case YT921X_TAG_RX_CMD_UNK_MCAST:
+		/* Should be forwarded by software */
+		break;
+	default:
+		dev_warn_ratelimited(&netdev->dev,
+				     "Unexpected rx cmd 0x%02x\n", cmd);
+		break;
+	}
+
+	/* Remove YT921x tag and update checksum */
+	skb_pull_rcsum(skb, YT921X_TAG_LEN);
+	dsa_strip_etype_header(skb, YT921X_TAG_LEN);
+
+	return skb;
+}
+
+static const struct dsa_device_ops yt921x_netdev_ops = {
+	.name	= YT921X_NAME,
+	.proto	= DSA_TAG_PROTO_YT921X,
+	.xmit	= yt921x_tag_xmit,
+	.rcv	= yt921x_tag_rcv,
+	.needed_headroom = YT921X_TAG_LEN,
+};
+
+MODULE_DESCRIPTION("DSA tag driver for Motorcomm YT921x switches");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS_DSA_TAG_DRIVER(DSA_TAG_PROTO_YT921X, YT921X_NAME);
+
+module_dsa_tag_driver(yt921x_netdev_ops);
-- 
2.50.1


