Return-Path: <devicetree+bounces-260206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAY/B/26eWnoygEAu9opvQ
	(envelope-from <devicetree+bounces-260206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:30:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0E39DC00
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB26F300DE2C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F54C3346A0;
	Wed, 28 Jan 2026 07:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CiG3Vls+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9A02FFDF9
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769585402; cv=none; b=JzPUaG5tNvg5OOLuKVsZrwAvReW5utEQcanYbV+bVCjNKMwrqGMT84D3vf158P0xrFJInPuUXqQdRNUghgt9bA6aBGEiFoNgdxGCKBpcxo1ZpmwB2swDGt2kmR9/R2Q7qyoV0Nclj9z603P/BhjpAFmDKiZKt28Ii043IlIu1KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769585402; c=relaxed/simple;
	bh=RbmYS+GbmO5r9aIsVbkZb99LO5fpXfIwGvbgj9g6qUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WgrgNGhWk5en4OWiAYW8yRtmUtBePDRq+aPlQVRpfEzPIshRXnMM0a4yvixFUyZW+Jx6uUNeMAJBB2lW62h7GqaouqinJk6ZA+S/lJAR0VLaIl/5CAetiU8SBAxKoo/e/P5yka2ilR2b/pS0d1kqGJ1GBJetVVrFYuUfEnOs67E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CiG3Vls+; arc=none smtp.client-ip=74.125.82.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2b1981ca515so7920816eec.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 23:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769585400; x=1770190200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=CiG3Vls+Gur6TkGzuxkU5VbfbW0xWzRr7hlBQK2nVk3UqkM1qXNUEkWJ7DfnVU9o7l
         PH5B+04YoiALU8upVf7QD+sLMr6ntIwTKGngF3/GnJ/W8Z/HRudS9wQti/DEWy1JtHo7
         vrMzoR7xRM8CUTP6YMnUQgi3AO5N5L0R21tzO880Rr4tTQ8GAorwiEy1QpG96RPzAYjG
         Jr8iMPexAoktaiE+/F/NRo5aH3mXeGmTHAjQSOX0w51N3CDzLBGX1ZgnirjuDmpHmMT3
         tVMgP4H9T7DIDdesVliTpll6xMEE2wd8dW2RnoPNo70UxuSBlQ5Hcy//nTeOjG/W1Pmj
         gbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769585400; x=1770190200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=xKvphw8EBigdS9JAo7yIx/H5+xxY9wrzaBj7sb9G3FDAVno9GaexRzBnQxGoIMs7b7
         RNr/3PHH3F35z+2qJoDjv5tUldMGYENEN8+qSs4qIEl2U2nvQbcpucDMwrhCFifwd1tM
         AOKxH6tBBOVxSfe2KS10H8gixFWze8O3m6vqdyOVL8VoA3qgr2NlL/W6Q9DYNUsQfqmF
         LhwwT4bpOZkn1BAN3zUjRpcbwhSLiAIb4g7qrkBmM7iScz2c95gtCOkFz6kK0sj31tsr
         6yHAf0MRa5hTLMBUpQ9A1Caescj5FxYmEytuoWmiDFNoVUW8/+W/TfT9SgS2xtdEJsxq
         CUjg==
X-Forwarded-Encrypted: i=1; AJvYcCURr9Whbi8i38FbBtKcPc8H06qEMk2xhbOUQJtKL5mlRJ4Lap8NTvuVoyLnHXxDvBjRrKuoiPhUYyue@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcz2zvFOu/9Ld/fxwI8KJnWJnGJKzLqm7OXejLuXNDIcMxB+oI
	Fum2sBbtL0p4o6sDNYVU8q4LGgKXysyvaOPRDGnYar4DrsgOydJ6dBAm
X-Gm-Gg: AZuq6aKnSMC1UFPlG3MV/biv8wTM81/HaUJHFS0AedfsqUuNr+x3sizAm1did6goXOq
	wzAaShCuVeXx/G5IIl+PjKHoWgOTo/Vlnvv1U3sfTnEpszy2vjd+G1mBdiphgjv66K/bdNHcg18
	lkwXftM4U896mHIgNuKu4D018oquJf3jzYdWn4CLZyBEzWYPFS8HxQAM32eNDrca3SDMk+UJTh9
	xKC5lj7sxMlVhBLdpg+D3DA6FTSDXXNOs5QaRqUwx6sUmMViqHpIIL3lXJXrKWLmSThXRbW8s/9
	9MbSU5tl6WEUq21KKvCdexdSgc5i8wP3u09rFjj4iHzN9pLX369fTqGHt4qZ39fZ/APKfo1k6IY
	Ml5zrqhgOKABxlKX60QvCp8dXlgOIlVy0OPcXXJh9LP2kkDaPhCFYGvkQRIcE2IEvwD3nMzKSJl
	FM6lSt0RQnCzlY1ueuXtGE
X-Received: by 2002:a05:7300:cc0e:b0:2ae:60f7:7f42 with SMTP id 5a478bee46e88-2b78d8df584mr2785650eec.11.1769585399859;
        Tue, 27 Jan 2026 23:29:59 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1add66fsm1479966eec.28.2026.01.27.23.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 23:29:59 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yao Zi <ziyao@disroot.org>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Choong Yong Liang <yong.liang.choong@linux.intel.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v3 2/3] net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
Date: Wed, 28 Jan 2026 15:29:28 +0800
Message-ID: <20260128072931.875041-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260128072931.875041-1-inochiama@gmail.com>
References: <20260128072931.875041-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260206-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,disroot.org,cqsoftware.com.cn,bp.renesas.com,bootlin.com,linux.intel.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7D0E39DC00
X-Rspamd-Action: no action

Add compatible string for 5.40a version that can avoid to define some
platform data in the glue layer.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 8979a50b5507..54c7b1537ab9 100644
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
2.52.0


