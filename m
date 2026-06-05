Return-Path: <devicetree+bounces-307117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hz7+ASojImrkSwEAu9opvQ
	(envelope-from <devicetree+bounces-307117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 03:15:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4655C644519
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 03:15:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=tEf9i5+y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307117-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307117-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B607D301990F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 01:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A81473BE633;
	Fri,  5 Jun 2026 01:01:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09165372057
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 01:01:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780621296; cv=none; b=Rwkz9Ukzofd/j0HTE2AHwzuK0TN13lPEDHpW7JZwleMJFt8Z7/mCzlG0HFUaLTojSjHZgNXfDLKaS2eYNEvB6NtmFkaKmaIvhxcMdM8cKBMOoW1SW+JpjAHblFUfipWVkWbPoifx+rmnEc/7CBrdEpOkyWHhIEeEbhHYuNPuaQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780621296; c=relaxed/simple;
	bh=rpLXgYSA9ynFB3Z3mEXcg+Fu+uSw2ie7fIqqWqhCqXU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HArq8BFZlcsCAx19/N7s3lyWC2dQPDOJkj6bSvVhCvQ9KlFCxA+0tVTqNDOwY2bEhD+V0xo529JTgXqBZn1A9jPYWXpH20Crqz+H5OwrYQmSF9bjiTauT1P3/X4krmgAT2DyIxxbhOSob4b45LASeMEyH9jK63N8VQd12QOhe7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=tEf9i5+y; arc=none smtp.client-ip=209.85.167.180
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-4862ed6ab36so811905b6e.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 18:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1780621264; x=1781226064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cuK6dXKBAsFNVUM3IcE6hxmCyNGfHV5JrrNTNHc8ejQ=;
        b=tEf9i5+yn0yNoBfzERXZxMtIYUoPPn+3EVCY8Oi4ADgR9olePEOzTyOcenwRgIdCI+
         Ser/IFpiq4rgtTbelBhOHnYP2GOyFb+lLsU9lredme+fCtazK3u/yfo2p2Bzka7t1/EZ
         uamBwBd1D6VPW8E4xZFzgCMwiPlvszVr4+zdB8Z/R4JIdNmcqCV1uwPGNXTUnn9/oU1x
         tEZSLaKgs/7rwWad1P5T2ayQoHcqgmePHP2oFWRVbYwpQbLY7+Jyf3S2+PO2uPuK9mta
         TP1zAKWmgACxAopicQaKzoOykRkbDDp/uCpOejA123fzsUnU7JaEVGVe9F4fOeRqt17k
         8DOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780621264; x=1781226064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cuK6dXKBAsFNVUM3IcE6hxmCyNGfHV5JrrNTNHc8ejQ=;
        b=NLtJbpF+fpsTsjHzAg4PysAE39dOvPEG5LGnwsmpELXDwMCUCyuPwxbdlZKSPLdUOw
         eqzZffYnnTB+QpD07/hfCXseHHcrBhy5UPuc/lFh2qgiEuShpjvcPqgT+aVle+Od6q34
         MM31XfyMxFICUUBpkNdUBnVFKfBgfkE3GpjhHuutp4/M71h6FCSAUAY+IHezpXAaTJPO
         lB47la+0RBvoAZbgT9A6BQ/ef/umW/nGfJ9U09uLSWvIsRsA7sivrS+bVqOzi05hmc5G
         ioLir5YT8MCP4FvwONkWKkPK4Xc3Hf3ZPQVANwredIN6DMF/DSW1NZ9nRaCnoC4AWE2c
         7Afw==
X-Forwarded-Encrypted: i=1; AFNElJ/4kOmfljM6KSJhYigdnKeM3HikqQbZAM3FJwIt+fNN38X7ZsHglPWPm7B+vC25uiXjuan8FaO87R3e@vger.kernel.org
X-Gm-Message-State: AOJu0YzfljXsnSiV21zvQdCPmEA948JuZeX3Zk6so8Vyu/F5Kk+ZQgK1
	8D2aiNQ4BlBQLqbUolfWA6JHXcHh0Z1e8WXbTyJcCF2aCxk7ePWF0pVwbqU12rcsWeelO6P0B5g
	78XtQSp0=
X-Gm-Gg: Acq92OFP7R+WYzG3Q+xXnRG3HBQK8D1c5esZfYFyEGFvITDl91vuQk0BlKxrAnT+/6f
	Deq4ft1Iygi4F2Vll8/OjUyoz6VeI2jh7LqqL9isTNT6i7qkKaEslybbXzK31k5lzm4+xoLDUl+
	374+6PvRpfkIFMrmhCTZy+EvIBTvRLzPXbdF29BBFaySlSsmaYYbu7azK6OrUrS2SaJTag5deQI
	oxrnP1YmDUH3AQQOeAv8uMocT9RelErs6nZk692q/HLheEnHaMTZhd7pAw4zpgnZ/REuiTP2au6
	8bU0MwCCza+mPXjqDmJ0KX4KJPU2oh+Ao5yYBQ6YVw6QWIDJT75eDlzwumFXj5ACeYnNYoKJq8m
	jS+jRIcNn+LMXVOjTgecoZCY0d/vkOuWiNSsvE0yMmegH6GYnxUyc6HUxkRvFJzgSeHAlsU4i2t
	50sEU+Palj3LfqT6VpZgYcZV1SfJ5DvvQj7y+BieM/oIpE3tDH
X-Received: by 2002:a05:6808:d49:b0:479:e869:5424 with SMTP id 5614622812f47-4868dc7df9bmr777929b6e.19.1780621253368;
        Thu, 04 Jun 2026 18:00:53 -0700 (PDT)
Received: from zippy.localdomain ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b6ec694sm5544631b6e.5.2026.06.04.18.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 18:00:53 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	maxime.chevallier@bootlin.com,
	rmk+kernel@armlinux.org.uk,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linusw@kernel.org,
	brgl@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org
Cc: Daniel Thompson <daniel@riscstar.com>,
	elder@riscstar.com,
	mohd.anwar@oss.qualcomm.com,
	a0987203069@gmail.com,
	alexandre.torgue@foss.st.com,
	ast@kernel.org,
	boon.khai.ng@altera.com,
	chenchuangyu@xiaomi.com,
	chenhuacai@kernel.org,
	daniel@iogearbox.net,
	hawk@kernel.org,
	hkallweit1@gmail.com,
	inochiama@gmail.com,
	john.fastabend@gmail.com,
	julianbraha@gmail.com,
	livelycarpet87@gmail.com,
	mcoquelin.stm32@gmail.com,
	me@ziyao.cc,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	richardcochran@gmail.com,
	rohan.g.thomas@altera.com,
	sdf@fomichev.me,
	siyanteng@cqsoftware.com.cn,
	weishangjuan@eswincomputing.com,
	wens@kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v2 08/14] net: stmmac: dwxgmac2: Add XGMAC 3.01a support
Date: Thu,  4 Jun 2026 20:00:15 -0500
Message-ID: <20260605010022.968612-9-elder@riscstar.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260605010022.968612-1-elder@riscstar.com>
References: <20260605010022.968612-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307117-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[49];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:maxime.chevallier@bootlin.com,m:rmk+kernel@armlinux.org.uk,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:arnd@arndb.de,m:gregkh@linuxfoundation.org,m:daniel@riscstar.com,m:elder@riscstar.com,m:mohd.anwar@oss.qualcomm.com,m:a0987203069@gmail.com,m:alexandre.torgue@foss.st.com,m:ast@kernel.org,m:boon.khai.ng@altera.com,m:chenchuangyu@xiaomi.com,m:chenhuacai@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:hkallweit1@gmail.com,m:inochiama@gmail.com,m:john.fastabend@gmail.com,m:julianbraha@gmail.com,m:livelycarpet87@gmail.com,m:mcoquelin.stm32@gmail.com,m:me@ziyao.cc,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:richardcochran@gmail.com,m:rohan.g.thomas@altera.com,m:sdf@fomichev.me,m:siyanteng@cqsoftware.com.cn,m:weishangjuan@eswincomputing.com,m:wens@k
 ernel.org,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:rmk@armlinux.org.uk,m:krzk@kernel.org,m:conor@kernel.org,m:johnfastabend@gmail.com,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[riscstar.com,oss.qualcomm.com,gmail.com,foss.st.com,kernel.org,altera.com,xiaomi.com,iogearbox.net,ziyao.cc,bp.renesas.com,fomichev.me,cqsoftware.com.cn,eswincomputing.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,kernel,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar.com:mid,riscstar.com:from_mime,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,riscstar-com.20251104.gappssmtp.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4655C644519

From: Daniel Thompson <daniel@riscstar.com>

XGMAC 2.x and 3.x are architecturally very similar.  That means that
for everything except one erratum we can simply use the XGMAC 2.x
callback functions in the stmmac_dma_ops structure.

Only the set_rx_ring_len callback is specific to XGMAC 3.01.  It
limits the number of outstanding write requests that can be serviced
per DMA.

The other erratum addressed in this patch is simply a comment to
ensure that a feature that stmmac doesn't currently use is not enabled
without contemplating the errata.

Signed-off-by: Daniel Thompson <daniel@riscstar.com>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../net/ethernet/stmicro/stmmac/dwxgmac2.h    |  3 ++
 .../ethernet/stmicro/stmmac/dwxgmac2_dma.c    | 53 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 9b0b5cc619556..bcf59ad8a1939 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -374,6 +374,8 @@
 #define XGMAC_DMA_CH_RxDESC_TAIL_LPTR(x)	(0x0000312c + (0x80 * (x)))
 #define XGMAC_DMA_CH_TxDESC_RING_LEN(x)		(0x00003130 + (0x80 * (x)))
 #define XGMAC_DMA_CH_RxDESC_RING_LEN(x)		(0x00003134 + (0x80 * (x)))
+#define XGMAC_OWRQ			GENMASK(25, 24)
+#define XGMAC_RDRL			GENMASK(15, 0)
 #define XGMAC_DMA_CH_INT_EN(x)		(0x00003138 + (0x80 * (x)))
 #define XGMAC_NIE			BIT(15)
 #define XGMAC_AIE			BIT(14)
@@ -463,6 +465,7 @@
 extern const struct stmmac_ops dwxgmac210_ops;
 extern const struct stmmac_ops dwxlgmac2_ops;
 extern const struct stmmac_dma_ops dwxgmac210_dma_ops;
+extern const struct stmmac_dma_ops dwxgmac301_dma_ops;
 extern const struct stmmac_desc_ops dwxgmac210_desc_ops;
 
 #endif /* __STMMAC_DWXGMAC2_H__ */
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index a84601ac32153..584ab28d7f7f5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -38,6 +38,14 @@ static void dwxgmac2_dma_init(void __iomem *ioaddr,
 		value = u32_replace_bits(value, XGMAC_INTM_MODE1,
 					 XGMAC_INTM_MASK);
 
+	/*
+	 * A friendly warning to future adventurers. If Descriptor Posted
+	 * Write support, which is off by default, is ever enabled then be sure
+	 * to make it optional. This is required by errata for at least XGMAC
+	 * 3.01A... and the XGMAC 2.x and 3.x are architecturally similar so we
+	 * use dwxgmac2 support for the 3.x family as well.
+	 */
+
 	writel(value, ioaddr + XGMAC_DMA_MODE);
 }
 
@@ -490,6 +498,20 @@ static void dwxgmac2_set_rx_ring_len(struct stmmac_priv *priv,
 	writel(len, ioaddr + XGMAC_DMA_CH_RxDESC_RING_LEN(chan));
 }
 
+static void dwxgmac301_set_rx_ring_len(struct stmmac_priv *priv,
+				       void __iomem *ioaddr, u32 len, u32 chan)
+{
+	u32 val = FIELD_PREP(XGMAC_RDRL, len);
+
+	/*
+	 * Reduce the number of outstanding write requests to 3 (from default
+	 * of 4). This is an errata workaround for XGMAC 3.01a.
+	 */
+	val |= FIELD_PREP(XGMAC_OWRQ, 3);
+
+	writel(val, ioaddr + XGMAC_DMA_CH_RxDESC_RING_LEN(chan));
+}
+
 static void dwxgmac2_set_tx_ring_len(struct stmmac_priv *priv,
 				     void __iomem *ioaddr, u32 len, u32 chan)
 {
@@ -619,3 +641,34 @@ const struct stmmac_dma_ops dwxgmac210_dma_ops = {
 	.enable_sph = dwxgmac2_enable_sph,
 	.enable_tbs = dwxgmac2_enable_tbs,
 };
+
+/* All but one field are the same as dwxgmac210_dma_ops */
+const struct stmmac_dma_ops dwxgmac301_dma_ops = {
+	.reset = dwxgmac2_dma_reset,
+	.init = dwxgmac2_dma_init,
+	.init_chan = dwxgmac2_dma_init_chan,
+	.init_rx_chan = dwxgmac2_dma_init_rx_chan,
+	.init_tx_chan = dwxgmac2_dma_init_tx_chan,
+	.axi = dwxgmac2_dma_axi,
+	.dump_regs = dwxgmac2_dma_dump_regs,
+	.dma_rx_mode = dwxgmac2_dma_rx_mode,
+	.dma_tx_mode = dwxgmac2_dma_tx_mode,
+	.enable_dma_irq = dwxgmac2_enable_dma_irq,
+	.disable_dma_irq = dwxgmac2_disable_dma_irq,
+	.start_tx = dwxgmac2_dma_start_tx,
+	.stop_tx = dwxgmac2_dma_stop_tx,
+	.start_rx = dwxgmac2_dma_start_rx,
+	.stop_rx = dwxgmac2_dma_stop_rx,
+	.dma_interrupt = dwxgmac2_dma_interrupt,
+	.get_hw_feature = dwxgmac2_get_hw_feature,
+	.rx_watchdog = dwxgmac2_rx_watchdog,
+	.set_rx_ring_len = dwxgmac301_set_rx_ring_len,	/* Only 3.01 */
+	.set_tx_ring_len = dwxgmac2_set_tx_ring_len,
+	.set_rx_tail_ptr = dwxgmac2_set_rx_tail_ptr,
+	.set_tx_tail_ptr = dwxgmac2_set_tx_tail_ptr,
+	.enable_tso = dwxgmac2_enable_tso,
+	.qmode = dwxgmac2_qmode,
+	.set_bfsize = dwxgmac2_set_bfsize,
+	.enable_sph = dwxgmac2_enable_sph,
+	.enable_tbs = dwxgmac2_enable_tbs,
+};
-- 
2.51.0


