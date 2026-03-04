Return-Path: <devicetree+bounces-270900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIfrAp/op2mDlgAAu9opvQ
	(envelope-from <devicetree+bounces-270900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:09:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA51FC3B1
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 24B9F304F016
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545053909B4;
	Wed,  4 Mar 2026 08:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IqCD+uiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C027F38C438
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611681; cv=none; b=socvEqQikya7K7qJoH1CoFumKClsZXGj1moviiWTiHcUBBltTsvZSoLv2dNmmCO4wXkYfCIdtUS9wpAO4lN2iuMMPZIgckppQ6tyTugv/D8C9uc9fpQYTrhpKPgGDOQ3B2/dDD4jd6KpEJvVRJCJHdWR5J+R/PO/Snl/9EUwBtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611681; c=relaxed/simple;
	bh=h/CjFdpAJcVREpfZXVwfif/697poNJIUcK2DAAylgDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JOPPjwDmMlDBPUKAIEfdWPkqPIYJPo7IWrozx9QyzM7/zCTkzvF5QnKuDV+47nB8bgRfLL1HKTu0TFU5oIXUwFh6cg9E8sEub9IeUCvVzaC4OeenC8l5tLTR9CyuE8xWviANbMDEKzdZiLORpqTufCuhDbVJXiWUo8HivHz7WP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IqCD+uiu; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35984cd0335so1469617a91.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772611679; x=1773216479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=62PbYYmVOOK5poz3ReEQOuGuTu2sU2hARoRYcSfvRXU=;
        b=IqCD+uiu952X9NlvzEC5txK44rc0zLqq+5VjZEY/UfhhDFJKrkXq9ogsoU9Me1vq55
         dquZI6BEVuDNEJKBY3wcUCgK7q1/xGkjYlQkNH1S0P7M9q1EfKs3xgVe+t7IAgKryS0Y
         zUepRbHwG5UpCYSM1CXr9nLXngGn+8qpujAT2FB5lKeHSGkzJ8z9bwLGrsafG8pR28CU
         45qwsd6ht4KCadn3UiToS9JchiNdQeKSf/+m7hDTrTP/L69lamgelz2ymirKDKS81M1j
         5Ss4gWezdQLxu4DJ7y8XTWRZdOPmm/AjbZWUTzUkjsR4PJhgO5hlCpZfEkswK9hD+hm3
         +zlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772611679; x=1773216479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=62PbYYmVOOK5poz3ReEQOuGuTu2sU2hARoRYcSfvRXU=;
        b=CKIAYI8oiuAMLj4GtfeO5fLZmDm9aGUzBZTniIPbwcqhQapx/rabRF8trYmGAekufB
         t7cDrml4Ee1Awh6fkJegLyimtd5cAUa8d6/0QAvvTIK9vdhxEPkDCuDbQPCY7uxOmC32
         N1lm+rCgzM1YdYUVu9Z/8/uDVkNIDZSGE+f7/1N62uhMXHCJ2S3aTTI39bJ/CHh2LRFq
         zm5XvL2kII6CBm0X0wOAhP0tSAuCzlvCPLoFMrLcLaChv3tnocUhbVc4/qXunJVcLiep
         fQMNu/bdMpWsF05CZOy6MLCt8OEWN54QTHdJJvt96hvdgJES6BZKXG3iggoDlt1wqDjF
         FD+A==
X-Forwarded-Encrypted: i=1; AJvYcCVYPosBseX983ybHsboWdvKO9+m2Z05GQcS2O3UePrd7qFLKYmM6jyF+mOanf7ko8Kq3DQzvdYoqIBs@vger.kernel.org
X-Gm-Message-State: AOJu0YyDG/qIZM+OaKzQAt72VkzCkB7bG5+LP42CQOoofB+xVeveZurU
	rs1EOGRgtLX6+BQbhOxUyIhtTArhydaJy1lL/e1bicNE6AYMrxgQadDr
X-Gm-Gg: ATEYQzzWOe705l4xHHX0TFskQIxtbnqJIb0KlWlKVMBvUja37p6dOFu1Owg4/ond+eH
	Dx/LOhzI448YKL8sEe9wFyhC3nU041HuC+8zvNTPdXmfL1evZ0HvznQhA+RMGCZZizwjTf2lOlr
	YQ3TLMea+8AyBpVqNPPDLahRlx35tBvMOkZjI56MEoaTCTPgVvSxg43OQavJ6UgumgIz/ML6078
	Ox5xoPv8v0NLSK4DyQ52YtFZ+LTtEf7yQk1NXPT0CKmcXFTjYxgTAIuzVBtaOGmwnjqW8Bh7ZGb
	qH3HHaxmfJLGl2acVrSirMt1Ypay6zFW988uNYVbiEUzQC2D+G6+AtAxbBGBMQviOd0rxIhl3pm
	JrubfyHN4TnMCU9IUVRQ7aytMo5R6h+u0LNgzr1mcd9o8VVfKIgm/7DTEAbRzRgobeKSBMnzXnZ
	zLSQBBXG5DwURq++2YY/ezpsk=
X-Received: by 2002:a17:90b:384f:b0:34a:be93:72ee with SMTP id 98e67ed59e1d1-359a6d2687cmr1265093a91.8.1772611679144;
        Wed, 04 Mar 2026 00:07:59 -0800 (PST)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa5ea0dcsm15592172a12.3.2026.03.04.00.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:07:58 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yao Zi <me@ziyao.cc>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v7 2/3] net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
Date: Wed,  4 Mar 2026 16:07:19 +0800
Message-ID: <20260304080721.1658224-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304080721.1658224-1-inochiama@gmail.com>
References: <20260304080721.1658224-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E4BA51FC3B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270900-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,bp.renesas.com,nxp.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add compatible string for 5.40a version that can avoid to define some
platform data in the glue layer.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 5c9fd91a1db9..02303a808fb5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -396,6 +396,7 @@ static const char * const stmmac_gmac4_compats[] = {
 	"snps,dwmac-5.10a",
 	"snps,dwmac-5.20",
 	"snps,dwmac-5.30a",
+	"snps,dwmac-5.40a",
 	NULL
 };
 
-- 
2.53.0


