Return-Path: <devicetree+bounces-274377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AII9DtYVsmkiIgAAu9opvQ
	(envelope-from <devicetree+bounces-274377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:24:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ECB26BEB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 272F530451F4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 01:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62DBE35B63E;
	Thu, 12 Mar 2026 01:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ce3s89uD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737D935CBCB
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773278610; cv=none; b=vDNYcvXLHgP8WEfTSNpowRz7ysJEPv7TA9VHCGsgDLJlblItGxe5jTFzV8XmsgEyHZmOJWJsKZU/yvaGs2tCGkgtkP1mPNcjT2iDWIrZ7ndSxxBleEsHyQS9/I+1VKtGzgevWwP3mdNf5x86lHa+0XPkZn+OyYOqdhkYQ1/66KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773278610; c=relaxed/simple;
	bh=oXR7vTLd0I1RsCDRTzJ+Auh0cCkgfICbXcBBqdH8Z5E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a45974OtlXyCU2yMZxHN7+hhvu1m/5ga3xeV2o0iCagGvEIENb5ixlrggyrW1n7DPI9O2NxKvwfJBo/ieAiu+H7fmFUH5pDqWE5UTXjKcq/n3rs/0GVZkNCfgmqHU/DbbRmy2RCTvrK35UV23OQt+A+2IKvQrNd/VQgg5r2xkq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ce3s89uD; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-50905b779dfso5402211cf.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773278606; x=1773883406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67f6aplaQjeW67VXDX4TdCndW5aSx2/hPT60hva8Vws=;
        b=Ce3s89uDyWQY5Ca1QQBcM9vA5fAQXPvacxc+PBWZEroaPAhZplfHZA1JjgvbIVC6ke
         A4NUxIcwD1t4noMjSsjwwhQ7t7HQZKsCIibAHo4d7Ldn9tW4t5h7kiyEPtwUODxGFrXe
         NMa8x8ZxIEax3Kc6eyOrKrVyz8iKWxbGwp6fo6dD5c2C5w3dgwnLMyNBg760IITjiGMA
         ljhqHOHJMuChePEhiT9E3bQueLeJOIJfHF13VBenCf+X3DB7xD5/uMO09hYZlZXnlODx
         GfuqTAMpofd43QWdEOsihwyu8CEqdJdcq/pb12CBnpMgDrOQCx49veA143WG6AD5vyDe
         Nrtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773278606; x=1773883406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=67f6aplaQjeW67VXDX4TdCndW5aSx2/hPT60hva8Vws=;
        b=Ddis+fLQZj6TWZvi7pUhBsJTLGBobHzcRRCQTd8TpN77c+ZyQQ2x3MJ72xlsBG/dAK
         uGVCAhYdFJwacKDpNbtTDHSsJZL0EgiE9wGOXNoH7R1kuAg2ZOPvlW2WGJOn9IXD9mcO
         XBsu/ERiKy7TQdV1FA203ev8BrjP3k1XWEZ2Wvkcrjh4yOJc6J19bvvFhvHZQRg0pAMe
         kXwvnD2OKtKwcAcZeOhxSmgVNDP+2rPdVzz1KqSV5hgaR3uitct/GOXTRp5BsK4lRG++
         kB4HtGWfC25M19k/FKIAtBD+tvKsDe9HhWA5sc7rFsgS//UFimBK6XfuTGM5FrdLhKHy
         MWpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVaF++eJ4kZP9m9ZbsqEvrSm8RJQWlmmde6ephUd8N6w90xWddzjapzLyAtTglAwvXTIWKC2e4O3IF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4ezkH6f6gLGzrSOiCe1290o7UkSIzT193nbZOOE0TBUGz2OLN
	/sluZfxWIKGT02mWsuiRFJoHriB2YDXNF/z7qWXiRMyTjJtbxj1FgzvC
X-Gm-Gg: ATEYQzztko2puzlY0KRl4p/lSP3xrQn9BMq7MGwpi2KoF8LqchggwKyRizNRW0Bpt7y
	qid6dBh9q2XjQdJPWslCoXQ0ASBRlJjQ25SR2ahr+st1MExaN7uPMttqYUndHWMtmA1GpAGYmfO
	xxEBMkS2VgmeUHVHhGjoY57b6n2/XDiaD+Jn24mFYpZsZ6Zswx1yDhrVOMZrrQJo7mxGOa9JLCM
	0zw9QkFJPv0fDqGAGh+zE37y9fLYKv713oDzqY+1qNhqJTT6+SPKD3W7Gfz1nqtcV8FAgQ654Wc
	5nX0UnvqXQmn8MWU0Q04PGYa25cax/bQkFUV12SI7QGAkHU4yIiqvExTBNrz9rtgyXdIksY1pTg
	2QOG6k5gw9eRjPLS2VuTiRNaxn19tPah4PIjB57JEr6jauQMWX4Q9w2IZUhIiu7Zg2kDg0HX++V
	bJRbHA6FDaguxr+jInWWcSgvs=
X-Received: by 2002:ac8:5914:0:b0:509:16a1:2033 with SMTP id d75a77b69052e-50939fc6e51mr61632471cf.26.1773278606210;
        Wed, 11 Mar 2026 18:23:26 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5093a0ea244sm23041871cf.16.2026.03.11.18.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 18:23:25 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>,
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
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
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
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v9 2/4] net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
Date: Thu, 12 Mar 2026 09:22:24 +0800
Message-ID: <20260312012232.373713-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312012232.373713-1-inochiama@gmail.com>
References: <20260312012232.373713-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274377-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[armlinux.org.uk:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A5ECB26BEB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add compatible string for 5.40a version that can avoid to define some
platform data in the glue layer.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
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


