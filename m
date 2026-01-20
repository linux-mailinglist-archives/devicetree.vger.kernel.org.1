Return-Path: <devicetree+bounces-257176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF50D3BE7C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 08B2F4EBD2A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC622352FB6;
	Tue, 20 Jan 2026 04:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fDIrnssH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFE8352F99
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768883792; cv=none; b=j1tlJn+Sx6pYbwJ2uBnc7x8U4OWK+XjvDqdT8mQt2CXjRJEi4jANQj9hZpMlIXZWrN+Rd+YiWUIdwN0CtEDkNtoDImU1bWxIzR5O1UlqvCrbaEpvFG0F/QTm8WlYJSWTfkBWygwAmHaTdxB4pnb+wlF6muB32ONqWzKVqyMfxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768883792; c=relaxed/simple;
	bh=RbmYS+GbmO5r9aIsVbkZb99LO5fpXfIwGvbgj9g6qUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O4iaLI0JF5pJzaVuLLo+4Hxfnxn7Uac5/CM5esPtvt2t7XRvZyCrZQLWeR18tirOeKVlFMC1Avq+TdDeCigHu/JhFRZz5SP15EPc2xDYi8ptfSpPhhXrrQ9ISdMeyQwR7nHeaFPYqQIKhiZsTonohIANaRxZtyQE+Y6t7S+PSSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fDIrnssH; arc=none smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2b1981ca515so5361517eec.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 20:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768883790; x=1769488590; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=fDIrnssHsZHhl1JrOcn8DT3G7fCEhTDqkTCHS/kruE5DdkNGBzbJskcjkpVIdd6uc2
         Al25X2f+DM6rXYGCeEk3f1URs566WG8zRjrj0Yn1HO1Gs/+X+Ruenv2yNjhxoNIQNAhi
         ONDG2V1qjwkGB3AUuXEvHd+UGzxip9nrhPmQTQ7v9YfGA2RiqmcWEUKEdKiacUyEMyVo
         DZkJLS+Ea8NXwENx3TbfMgBpdDQ4Ieh5nNksR9HUszR974MCHG6T6kqImpS47lCZB86v
         1FZQQIzcA3XcGO4StBhMaRSkZcDu6XQOVexIbZ4TnkHsAC8FHL5vxJKj8JxZgI+0ypog
         I/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768883790; x=1769488590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=kDuimvhqyezxG02U3of+UDvP5U1lcxqEPN1W3ROgjpebwimndXu7AlI6OQ/4nVGMzQ
         OWTkkT+auTEU4wQ3WKANL5eBDh21HOQSbYCD4/QiAvbhe2ANOW7WTJwlegd4rCoWlgWQ
         KT8oxD9euK8LTEP9Bj1d+OUsrUBIUtbpixyWZZaqc8ukoYdUYXVHakfvOVKc4ubnzIg9
         vJJUZlCRyfDiYquRNa2R2Mx6wZWpO5U+2g/tA8rhAutZCjDvQuunq75Xshitzmz8BETN
         BKKMpchaGiatgHUoTxRDmQYGZ/O4TWQK2+7CZJWWwX1mt+OqKGLplsybNHOq0j9PMtvZ
         6Kcg==
X-Forwarded-Encrypted: i=1; AJvYcCXLDQVtB6UXySvCro8KvlTLM3UxaHboUUX8nRbGuBLto6YVTsw4ZubT7SIv0xmdHTC4zoi4TRjKJCNW@vger.kernel.org
X-Gm-Message-State: AOJu0YzD2joZb5cZxw33H+kNcgJl/zPkwbTwop1nT1BBBiBMWUVmHdQa
	3agLxjYKCy/jZrFMujFdaUc7kOpiYUxxKkdHx/SaPUj3eHutyhXOHmsC
X-Gm-Gg: AZuq6aKUuEK3fm/zgFFy3WEVAQPx70UhzdnJ42bZvdFInSSxNoXaqLkuRzXr9aErv7s
	0/mrC2E8NVXC9fpT83F6rwjpKH/XsNZjKWku9DNV3QWK5AX750tyGXx5vanLHay5dSCTVlOxTBU
	k3ibtoSahOykhHXzB9R3AgVFL6ExBZ6ya7uLRMH0rz3DXngBG7UnYznhHMuyXUEOgSkD7B5/ElJ
	McUJxGBS3/91zTlx5Tinye9zSkrX5V13mcJJWCz8hOaaBzWEWrfpLsTvJs0KlTzUeUZv0o3Rcff
	m/EMtjk6b9LbeprtrKibXK2oub7jfar/DoqHN/sxO3ZQZfA5RIBLj/wNkfm3cSCyMqgG+VqLa1E
	RDUCjIeofwv+BDvYdV9sX+mNfFClGf+7fMNGKEsGxvF9ijOCpP1hGGg3RARw8QOPI7J3mLeTgRe
	efk8OHQb9kdJBuU9X546Jc
X-Received: by 2002:a05:7301:9f09:b0:2ae:5e93:b6d with SMTP id 5a478bee46e88-2b6fd7e55f9mr304430eec.38.1768883790053;
        Mon, 19 Jan 2026 20:36:30 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6fc2820a2sm1030314eec.35.2026.01.19.20.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 20:36:29 -0800 (PST)
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
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Yao Zi <ziyao@disroot.org>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Choong Yong Liang <yong.liang.choong@linux.intel.com>,
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next 2/3] net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
Date: Tue, 20 Jan 2026 12:36:07 +0800
Message-ID: <20260120043609.910302-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120043609.910302-1-inochiama@gmail.com>
References: <20260120043609.910302-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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


