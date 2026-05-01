Return-Path: <devicetree+bounces-292166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABqWCQTO9GkDFAIAu9opvQ
	(envelope-from <devicetree+bounces-292166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 18:00:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A65B24ADD67
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 18:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7797D3076D55
	for <lists+devicetree@lfdr.de>; Fri,  1 May 2026 15:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79DE23D9024;
	Fri,  1 May 2026 15:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b="U/FsVG6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3AD3D7D77
	for <devicetree@vger.kernel.org>; Fri,  1 May 2026 15:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777650888; cv=none; b=dYGOV77Xj6y4+LBq39IoK6WZ4wgoMj6BXLWFyV4jes5o52o0tUNm05MYGD0I/UEd4jKXYQP4kVelzSyyKwmzwEmLK7mzm969tb0GwlKFAp6VbmNcPMveXma33aT/pcJON4lcxQfEJi0oHt77cgPrl8Dd0VVwNNdzC0dUR8wtYw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777650888; c=relaxed/simple;
	bh=rWJMdH+guxvVRg/fYfPqNZhV8vkxgoYK2GCfMJpBrRQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tkyOm5Zfc85eV/+x1t43/ZAS9+v1J0/qkcrRw/PDShZ1sYrcFMLBzn/+m9stm2Vo07cybEEc32H5IN65mVqxDb44/JfvboBp6RMnNWvCmrIm2p3QDpFoXafz45cg01FRiME7hSDSoxolyhIrO63R8Xfwj+tK/HKIMXXUHlpcuDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=U/FsVG6P; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-50d6b9bca48so26156621cf.2
        for <devicetree@vger.kernel.org>; Fri, 01 May 2026 08:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1777650886; x=1778255686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJZ0RqgIk8/DP02YY4aEMI6Gbsvdjs3yNWLkzeFClOw=;
        b=U/FsVG6PzyZt6PaiHwol1aUL60lqQbkzo/5IRLlwPh/F+u9Q6oJpp406tWYXgCB5xq
         2sOnKYSK1tZTXw1E7WCFzXPVm2984ZKyN2dKc2NcleWjXoKRc67HNhuPjRWkR5c/HH5D
         uOXdYVzfHdC5rkwrDRvQ4VaZyRh/McRSXU0l5usj1yR8wLlrs/r1gx2KZvNrztV3Sxbs
         1WhLNM4+MITbHZRfcCAa9dM8esWiT4DIbxkPmd1n/WD2sDyc4NJzhH/4ALY7goLcCPUx
         3eOQm8sSfdHkdcl8Oj6UFDiE8EP7YAuN1Jrd6S9c5W+2SKmVTaCFJ6n7AfqrjeiIb8SM
         x++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777650886; x=1778255686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lJZ0RqgIk8/DP02YY4aEMI6Gbsvdjs3yNWLkzeFClOw=;
        b=l+7h30Ao82i7bDtuQD7YFaLb5czqgSAt+uzdyiKFC6OR53KZVkfEK6qk1FHrW4tN/b
         PWAv5kZeEibUj9BAtXesdNTd2qVpbsuq7rlaTJa/+mB7fvlVSxepR+IR2DigKGG6uWi7
         JpVsFaR7T694mUzOfzOYmVVReEH1v5otHn0+NqEOw4Ss3fwU6GA4crA4JtPwvimki+TT
         kxQsZBRrXAZTLsvxDFGph1axRVgVctdsL/iUsFx1QZu9CxtTt1pVHHh43pElTJ+I17ym
         VPfvqXznvlIdBPQhhvaFTDPFBMOi8cSLB0loIkHCmftQCR/mm5I4hRnz3dvzxqfv8g0c
         8cBw==
X-Forwarded-Encrypted: i=1; AFNElJ+bOjFq6mnAkvl+LuwMKxT9j7AMUOxNykxDtobBNk7HLD7OSH3pc/M+aQHKcVg2jV1TpqqfZBs9Qlln@vger.kernel.org
X-Gm-Message-State: AOJu0YzPV+OmTWvNeZJnD7IzRK2v5RucGyA/GtI8wKeevHJubGXG+64q
	+dXxELpG3IpV/7pmX3F6rC49pvyt+pD8ohu+MT/RPfV/qirfKgtO8el4tzXVUeGqy1w=
X-Gm-Gg: AeBDiesuMToG0qIbSXPN3TKGB7VgR5203dB3zH6y0W7jwLkag3tIcvqh3KrQbke0tue
	SsNsoKwopKp9uYt9UYy24EhqNcHc4kLMiX9o40b0y1AnTW41O13JJLkopOBwKi/1W7Cj4U8Seu7
	jpEKjtX94Q+NyA5zuStwcXp3mILvnNRjvZf80C3uZHwEhaABxJBM9ZK+Z5m2qNwwu9NHzZOcmb1
	34OT5Uh9KGTyAnn3qg7lj18VkMsod5PVOuz7AEB2BgmBXkmoqUkgOILa3J4k+1nPRxVY2MxIH9p
	y4UKVuNii+OpBLkJc9zKn7cLkbo3XBBa/R2FL7abk4IjCaMzHAIUKNnJYyd3fs8r2FSCw8YUO9l
	sY7Xx8rT19Hu1G+/LIKaHaem0il/xBceDO3ByMjX4LXqErdIgYv3EX5vhvJPnrOA3eNfin1hdVB
	qD98nP/5NaifGxYRQoa1rGEwn/K8wb0OUFoN2S+lTpRY3jPipaLNXHYmMDJgdqq47BUySjM9ERL
	9U0cA==
X-Received: by 2002:ac8:5d07:0:b0:50b:6b21:2bf7 with SMTP id d75a77b69052e-5102a940d0amr119383461cf.0.1777650884691;
        Fri, 01 May 2026 08:54:44 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b539aa7293sm26615406d6.22.2026.05.01.08.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 08:54:44 -0700 (PDT)
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
	matthew.gerlach@altera.com,
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
Subject: [PATCH net-next 05/12] net: stmmac: dwxgmac2: Add multi MSI interrupt mode
Date: Fri,  1 May 2026 10:54:13 -0500
Message-ID: <20260501155421.3329862-6-elder@riscstar.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260501155421.3329862-1-elder@riscstar.com>
References: <20260501155421.3329862-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A65B24ADD67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292166-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[riscstar.com,oss.qualcomm.com,gmail.com,foss.st.com,kernel.org,altera.com,xiaomi.com,iogearbox.net,ziyao.cc,bp.renesas.com,fomichev.me,cqsoftware.com.cn,eswincomputing.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_GT_50(0.00)[50];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	TAGGED_RCPT(0.00)[devicetree,netdev,kernel,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email,riscstar-com.20251104.gappssmtp.com:dkim]

From: Daniel Thompson <daniel@riscstar.com>

Currently there are no XGMAC platforms integrated using the multi MSI
interrupt mode. In other words no existing driver sets both
DWMAC_CORE_XGMAC and STMMAC_FLAG_MULTI_MSI_EN.

In order to support systems that do enable both options (such as the
Toshiba TC9564 whose driver is currently being developed) we need to
add logic to the XGMAC DMA callbacks. Happily we can simply
replicate similar code from GMAC4. Let's do that!

Signed-off-by: Daniel Thompson <daniel@riscstar.com>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 2 ++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 51943705a2b03..9b0b5cc619556 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -320,6 +320,8 @@
 /* DMA Registers */
 #define XGMAC_DMA_MODE			0x00003000
 #define XGMAC_SWR			BIT(0)
+#define XGMAC_INTM_MASK			GENMASK(13, 12)
+#define XGMAC_INTM_MODE1		0x1
 #define XGMAC_DMA_SYSBUS_MODE		0x00003004
 #define XGMAC_WR_OSR_LMT		GENMASK(29, 24)
 #define XGMAC_RD_OSR_LMT		GENMASK(21, 16)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 03437f1cf3df3..a84601ac32153 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -31,6 +31,14 @@ static void dwxgmac2_dma_init(void __iomem *ioaddr,
 		value |= XGMAC_EAME;
 
 	writel(value, ioaddr + XGMAC_DMA_SYSBUS_MODE);
+
+	value = readl(ioaddr + XGMAC_DMA_MODE);
+
+	if (dma_cfg->multi_msi_en)
+		value = u32_replace_bits(value, XGMAC_INTM_MODE1,
+					 XGMAC_INTM_MASK);
+
+	writel(value, ioaddr + XGMAC_DMA_MODE);
 }
 
 static void dwxgmac2_dma_init_chan(struct stmmac_priv *priv,
-- 
2.51.0


