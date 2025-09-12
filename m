Return-Path: <devicetree+bounces-216511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 174DDB550A9
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07EACA0746E
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E8930F929;
	Fri, 12 Sep 2025 14:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OCyUUw19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCDB31195F
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757686485; cv=none; b=f525TwLcsaxeSbf/axGS7cs3YkPhBIGQDYJCYqj6ivdt3IaL7rTHxn5K2IWCDxyoe/kjQZWDLGLm31XL3oNQZvsviag+FV1c/fHVypuiqVoWzgBk+UTRa2VxPdwOcTURvuRMGlBCbmOFxOpfPrXmBTW69dSELvZNq+6tRykoa78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757686485; c=relaxed/simple;
	bh=QfTTg3lYzgE3ckVIJYbSn344G42n/OvAp/3LqxlyLEc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HM6odGP2jWh/OTqMo8lTwpysOHhuhJeqbg5JwavG6mrfbgX+N+Bhr8sbx52PxsJ1B9IKRYNFPJhXHzkdh4MmB93SRu8mqkACdrtKZ/KjzldIQaLO6y6Oz0tjFVVGmk/hhIzRO5vEvd4Xo1Pl5tnzxJ0V5aUzT80ohAZDJ8AtgVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OCyUUw19; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so14327525e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757686482; x=1758291282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B/35+lplNa9c1ue8CwS2qpyGIoojlgVm98TES9qQ+QY=;
        b=OCyUUw19o29h0CcbQqzDlEPjszFVSKVT7JrFFv3rQP68lSBWQQcOuOur3j2NT29G/o
         BqpGjZk99wM2K+oiwkLy3E2tbVyVY3kf0CdkXWp08hpCNw2cCqMTt1Xv1VzZBmksc4t4
         EeFudqwurS/NAC/+R3HgpAd0XoDHXgY5oHbKZtWDbYxsCrw5xY5Nd4i6Vq79ZfXMMQl4
         ZL8zhMgfxKHDjQ1uffaYNm3BfuMnKFdjUqn6ZGIFK3n7ocOPkjX6IpYPOBo8ivOCk0E+
         UYQVORUsX2x74ydFisPFu5It2l/RgFBefk33J4X5ZT1AXqiu42wFumyNGG1m9ThVWTmm
         nweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757686482; x=1758291282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B/35+lplNa9c1ue8CwS2qpyGIoojlgVm98TES9qQ+QY=;
        b=OjyzOjkdMMKPn2L9uMPa3V34BaxsbCk9rZtHNvPFak/D7DPZJTYkd9aQkjUHKyS19e
         r2SSRSgKz2HpSrQPOC1ixjf/gr2ensSFKTqcAtqeBsLFxiOW9rSY/mgL+Q57bIB9pzdb
         3CYRCetGYCaT567MWJKD94Tv6TjtPpkr8pIaKHdM02+3Rqx3xI7tYY3UWpw4ozUT5o8N
         q63VgtB+5HQtHQdiBmJQnT+ty+4Tf6YxukS5xnrhkoQRiQeFvArnKR0sjSwRIucJJLwM
         FZNbaznvsJLXiuRc/7eGvK3z2gYRGeup73YvBGqkovMIotZWNWjN3mC5gWKukGpB6qaw
         lX9Q==
X-Forwarded-Encrypted: i=1; AJvYcCW5MkKgtfvE3DD0nNkGKnjy8s40wp70zJAqDdGd7ZGgzFRmVIKIysXBVfP4B6wlQvuaMkVl1klRpujd@vger.kernel.org
X-Gm-Message-State: AOJu0YzoVpKV0xU0BiXliCZBE0/nI64dlsdEpkgMzl8ZmWDMUlL/CGnA
	s/wxzDrF6b7rnUIAE2jsnyXP11v5n32CHxjqR3RveikUTFT+CO4QNw1SAvtKB3s+4+g=
X-Gm-Gg: ASbGncsRpUfV+24/X6TRcXb1zgsLIjPfERNArc19RetTVZAA8c3Gh8po3FHxV7QgEuS
	3GowSlbd0qBUv4K245TBlM8A6h0+LYMXgwn2AcSP+/ty3b1lbLQQqM7OtWzffh+jO2HAidKgXd7
	pWBWCNGx/DX06faDgCg+cXBq4Qm9O2hCzs5QDHoLmJ2jgu2pQ5C31Pvca9TRoYgrTbcpjhJb9fI
	Zu/kQ4YUPa51RF9RznglGxUmcwGT87txEDbz6Mj3eq7Tam8nIDCQZdq/c/EeVxq6tvix0QV+/XJ
	XIoQcdBh8KRkdm/ixIDsySMvgGNJazYd2PGj4EqS/1EJbf+EEapQbOEVIOTskXgF7HkR2bKd1lh
	JUCFGs69gjeolUkkIeKQhOP6DyrqSBTk=
X-Google-Smtp-Source: AGHT+IG/qv8/NZ7DiR8l/8DhDwWeY9yHV3BseVNp2K73nhxvNF2iyswkFzMn3ukA0/vaEuJChx4aSQ==
X-Received: by 2002:a05:6000:2210:b0:3c7:308e:4dff with SMTP id ffacd0b85a97d-3e765a3e492mr2942700f8f.57.1757686481952;
        Fri, 12 Sep 2025 07:14:41 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:40ce:250c:1a13:d1ba])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd415sm6680739f8f.30.2025.09.12.07.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:14:39 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] pcie: s32g: Add Phy clock definition
Date: Fri, 12 Sep 2025 16:14:34 +0200
Message-ID: <20250912141436.2347852-3-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912141436.2347852-1-vincent.guittot@linaro.org>
References: <20250912141436.2347852-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ciprian Costea <ciprianmarian.costea@nxp.com>

Define the list of Clock mode supported by PCIe

Signed-off-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 include/linux/pcie/nxp-s32g-pcie-phy-submode.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 include/linux/pcie/nxp-s32g-pcie-phy-submode.h

diff --git a/include/linux/pcie/nxp-s32g-pcie-phy-submode.h b/include/linux/pcie/nxp-s32g-pcie-phy-submode.h
new file mode 100644
index 000000000000..2b96b5fd68c0
--- /dev/null
+++ b/include/linux/pcie/nxp-s32g-pcie-phy-submode.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/**
+ * Copyright 2021, 2025 NXP
+ */
+#ifndef NXP_S32G_PCIE_PHY_SUBMODE_H
+#define NXP_S32G_PCIE_PHY_SUBMODE_H
+
+enum pcie_phy_mode {
+	CRNS = 0, /* Common Reference Clock, No Spread Spectrum */
+	CRSS = 1, /* Common Reference Clock, Spread Spectrum */
+	SRNS = 2, /* Separate Reference Clock, No Spread Spectrum */
+	SRIS = 3  /* Separate Reference Clock, Independent Spread Spectrum */
+};
+
+#endif
-- 
2.43.0


