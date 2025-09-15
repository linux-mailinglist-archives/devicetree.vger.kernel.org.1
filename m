Return-Path: <devicetree+bounces-217377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E07B576FC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAA8A16CD32
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD32D30101B;
	Mon, 15 Sep 2025 10:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N91mQpWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74D82FE582
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933177; cv=none; b=Vc/BlTF5l00nqmX8Qe5xlrv2yf8mTducQ6uPHgTD+Q2J2aublsYBga/nptMCAzD3BEYr5oChMnhhB9df57GxL5S25Rubio/YfR9skjjtKUOevHvcplYRxdQH0kYn/FM3RfMEgQQKkZCzvUuOlCLz5ATMTPlaYGUyQAFq0QbIl+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933177; c=relaxed/simple;
	bh=cR+i0j2nFSKam+gq7FWSsr5apx+a/lZwZMhEZIsHfcA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b524lHL9Ux9+WSsHCT0KLQCtBhdRbzF6UrX03ZIsj0PY6/xAXAZortrjEhSPfaRQ+leoKf0NvfdSW4DIqCfAeO2ni8P7oF9V7snSIxqdl1nZLlX7cXMEHLQkrugXa+dLZ+OGFLpuF06wE3/EDos5lcBE8ZRIJX0Aao70vGVo1Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N91mQpWN; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so2835496f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757933174; x=1758537974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HxXWRqnFqGYPd1tnhNthT3WKgGhl9VmDbyQfQ/+snwM=;
        b=N91mQpWNaQHTgCwVV33H7/ObwAxHX08/a4lGFO0SpWfrYJNwKBeLW0APAUEMJFwNX2
         zBraJXRDxxiKY7clEG9VCWP/FghRcLnP1QFah1epg7D5TBo7seoxqDcI2hveGMPItCZ7
         slJ5Gm/FPkTxXCEZDlH80Elp7Lo+ICiFCGadTQmHXTdkB3ulk2EOB7V4YOrlAaL9FOWc
         CXFwFdQp3cblEWLLgcutmF4Hw8hgefOQa4yJhS5mgBhR/eO68ZdZsIDx2j9qZvk5bXRp
         2CV2N8FUZYcyrsavS5+uMyUGditB4gKJZnGP/Ki4bLBA24c+2LqOaT5fmDCX8BQ96g9Z
         vCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933174; x=1758537974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HxXWRqnFqGYPd1tnhNthT3WKgGhl9VmDbyQfQ/+snwM=;
        b=Byyfrnk4+V11NiUPmQ8Fbh4vDuZXchkmfkWPFhj9OfOFKwyKzSAxFadtfZ2/OqomnJ
         pzz/AHhM+K2a5bzqvbiOjUIcgrmuX/mKb2Z+s5qXSNCXVyJFp58MJ5qrzJ/ITlPdmY1Q
         dtALsxonhDolaLr5GqFXHkk/cCTx4O9tx6fCbbvP0yQoKLGDGRuKdM284WaRN2988rPv
         AiiKYipdgz4aQs+xOxyR/Kk03XsEu35bqsazzVY1dOpkzJqtrKxuU6EDFTYG4YWdACzo
         snKKXffrDqv57JgU0QrToeDgZKJIrtxCB72ytSRNrCOoIAbGQEnzlbD5Dn8SKhnpM+o9
         D4Ig==
X-Forwarded-Encrypted: i=1; AJvYcCUr8nGgfwSBSANWZ2sPJgMhV092Jlx0X2+jH/+Dy1+8AE+7fnpwgAYF7go9vtcGjAxL0Xm7Iw13uRx2@vger.kernel.org
X-Gm-Message-State: AOJu0YzerTV2850SzBHy9AhAB8n6U1YKq1T0wlxS5DYpJwlqd7rlNcvt
	NAmpdna8eQBEuMnQfnvTLlrry/mbEHzDuzS5Ta+c7Q8pB+tdQF6Wef9P
X-Gm-Gg: ASbGncv0fPah+DlKz+NnN9o4EXbDhH1VWuH+88aewESUXnWdKcYMv3qPr3h1GyD/tqZ
	8C9e81W+BrKRo1cfNA6ZBs2Cv72mrJWhT81j+JU/Eu8J1yT5ugqlWOkw8zHobNof5W585r1HHPH
	xMrt6mXevBUX39iWeOxQUHUd7WU4OO//1ONH5B3uZLE5g+g/Zjd0x1a7IS5c75vZAXLBS375jH1
	ROkPFGvn53QpJpPddIF1cyiu+4yla1W75Gmt6FqfQdDMoGg9ccd4fS1iIErXfGrajoW1aeTjTAQ
	mGFX2jrngKIT/4N+ngFhZd+wQuMqvTvQgq+jbAvYkBPj+Hdzwtm+8yXnU37UlgoBmGXuObLI4Is
	bfTOmdXAEKG9ctPAB295gRq60tUZH+Nm0L9B2B1EqmJ9pStnStD6/mPf6lB18+Cxb/+xllvV1UT
	LQZCmozkvReJxmN2/A
X-Google-Smtp-Source: AGHT+IEiFbkrpONQ4XqXk19ByjgEAHG7EmwNVeSeBkfcrYsWrMW7FZrDKlSQ24Q5Qd7fFkQP/hDrrQ==
X-Received: by 2002:a5d:5d02:0:b0:3dc:2930:c7e3 with SMTP id ffacd0b85a97d-3e765a13065mr8441662f8f.35.1757933173856;
        Mon, 15 Sep 2025 03:46:13 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45f2acbeee0sm67163365e9.0.2025.09.15.03.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:46:13 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	"Chester A. Unal" <chester.a.unal@arinc9.com>,
	Daniel Golle <daniel@makrotopia.org>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [net-next PATCH v18 8/8] MAINTAINERS: add myself as maintainer for AN8855
Date: Mon, 15 Sep 2025 12:45:44 +0200
Message-ID: <20250915104545.1742-9-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250915104545.1742-1-ansuelsmth@gmail.com>
References: <20250915104545.1742-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add myself as maintainer for AN8855 DSA driver and all the related
subdriver (mfd, mdio, phy, nvmem)

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 MAINTAINERS | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b81595e9ea95..818fe884fb0a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -740,6 +740,22 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
 F:	drivers/net/ethernet/airoha/
 
+AIROHA AN8855 DSA DRIVER
+M:	Christian Marangi <ansuelsmth@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
+L:	netdev@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/airoha,an8855.yaml
+F:	Documentation/devicetree/bindings/net/airoha,an8855-phy.yaml
+F:	Documentation/devicetree/bindings/net/dsa/airoha,an8855-switch.yaml
+F:	Documentation/devicetree/bindings/nvmem/airoha,an8855-efuse.yaml
+F:	drivers/mfd/airoha-an8855.c
+F:	drivers/net/dsa/an8855.c
+F:	drivers/net/dsa/an8855.h
+F:	drivers/net/phy/air_an8855.c
+F:	drivers/nvmem/an8855-efuse.c
+
 AIROHA PCIE PHY DRIVER
 M:	Lorenzo Bianconi <lorenzo@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.51.0


