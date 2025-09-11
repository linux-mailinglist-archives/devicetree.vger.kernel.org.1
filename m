Return-Path: <devicetree+bounces-215959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D392BB53414
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:43:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C99B3B3665
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF4A340D97;
	Thu, 11 Sep 2025 13:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SuxQAa98"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAF833EB1B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757598047; cv=none; b=Q3ZZoctihWW8A+zCF9n3b4TM5qIAKHNnpBsEuRPseWAtmRt82MTu+XDLPvUz+ch9x7N84gcdNgPKnQVU/8qWivdBLcqpnVeMhfuz67pf72ocHDJ2YWluIQOBtSDEl2qDzoM1r1DJs5tXu0oynYItshsjNGCfPeR0iSmlzL/XGb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757598047; c=relaxed/simple;
	bh=cR+i0j2nFSKam+gq7FWSsr5apx+a/lZwZMhEZIsHfcA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=guQOT2ShIbc6hEab4xu/yrMqyllPB2Tt8ZxOI3KsEn17DO2vxFbmKgqx8AFwhXSBgS/9d7PTldSbR0E9W98G2htuRqmYdVJgGgFe9jz7ui4ajV7/Z6ZAHXXX55BuOAYc6SvYlcGwWvxpRSr4usrYapiumQTRTpoldkEpssYu7NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SuxQAa98; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45df7cb7f6bso3621895e9.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757598043; x=1758202843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HxXWRqnFqGYPd1tnhNthT3WKgGhl9VmDbyQfQ/+snwM=;
        b=SuxQAa98uT2YzbAANMDIZgzMnMCwLVaPwBorQtAJ78TaFoSm9A+mQBTfz4UaT1YVGM
         hVCzl0sBQHjmOSqH9D7dSO37jV0QmrDSv1MsN+WIf3ZN0F8mLBngYU7dWVBkKDPiYddw
         HoenTvB6+lfZge9JbhdCMMc3Nun9SLoVOZM5sEBhnLpB27a/Ayt9FI046y5bDY7dIq/+
         4WO+nEdPW8OV1mLQDw3DlSkgxeRD+KuVYlX/IpsVFk7GdyiGkCwk2KqF/K1uK43RBX4J
         LA6phTA10kNDC+JAjDFuqJBqkReBQyD8TsCvj0nnoJmhBV2V+mh87//oJIgarJxWK/u5
         husQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757598043; x=1758202843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HxXWRqnFqGYPd1tnhNthT3WKgGhl9VmDbyQfQ/+snwM=;
        b=jdaJ8TfOaEYUGmNyhYciyYMVPFYJaTWQSY0q+y/Ekn3BfG7xIkxYcsr4us1GNMuFOx
         uDnQfiyb9NvSRoEvCtHUNp7xsth4TaminVRY25yvyLdSEWidmrf33u3+5gscmEnzGteA
         V7RyqloyJPizs+xuxjm+0/um59S4AlHKPEc7Z4XcTH6uGRU+zUSL3kSVjnEMDKUJNAzV
         gOKXGuivMwaKK/W3Q8MQ/GTLDSP3uxr4sje3dSRJjy7RkJJimIT4ogYVS3/YD3Qz7z3M
         EotKo0ssn8EbCHVOv/ongFr0lPrN7zfp8i3qb1isGjIASouJ6Rs2z4GWmaTHCLGhOQrx
         AN0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUQVkIvRHo6fmq8qR+DyCDIOqca49KAIN7aKnzuUv8QBo1lv3OEOYAw+0h5/2E/Cya8q3cxqLVEvbk0@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd1aW0Y3+bAri5Yfi3CTqgpVVTqsr5rDHE/F2MbedtqQ9B1T1V
	LLu4FTzbGb2ndLxjk3bcK86NLhQhg5hy3dS/IXfoDD6TZNsUahNToh01
X-Gm-Gg: ASbGncu6I8M52II9LAtkPMDKdKBdPJSQCBFxhgRT8z4wt6umq/hDKvv+t+nm0kxc7TQ
	xx7aWqVZ5JmCn9rNd1Hl9jb7VOZ/LV0Hvsw4ZW8zj1n2TgOSnOVc4QmUtV4wTnLnOcnosBUZowi
	I0yoGdzMYkRptxF/VYhxHWhS/KayhsbAPnpUu3FUaDPmtUqo5EAEpOu3mcokE5gLgaYkH6I+aVA
	kAElmho5cWkMnWpQfo8hA6Q/EjXB/bEaPTOMQcE8yPjECQvwAGhqnQtlCTdIg2th8OAaosjrz0t
	92bHtHHOymJGfcOfDObWM3IsyoOtpnjTNcFcMLZHy165Vb+fnrD9L9yMHu9wc3tYbFqwZLygVNK
	oYEGOOVDYp8xKSpFypTuSZFoMtTL5aUY6dYj6jbasI/DrOOoMrAezxIt0MtPqcWyynarFuCpBXT
	SThpn1ug==
X-Google-Smtp-Source: AGHT+IG2KpWHVxRYHBojS5qhqOAZS3ZPHK9ADJy0kEMpbU3Dfi9X/AHkq0y0EQaVaEvtw7HYElj84g==
X-Received: by 2002:a05:600c:1d16:b0:45d:dd94:7c09 with SMTP id 5b1f17b1804b1-45ddde955c3mr180709415e9.1.1757598043155;
        Thu, 11 Sep 2025 06:40:43 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45e037d741asm23413475e9.23.2025.09.11.06.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:40:41 -0700 (PDT)
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
Subject: [net-next PATCH v17 8/8] MAINTAINERS: add myself as maintainer for AN8855
Date: Thu, 11 Sep 2025 15:39:23 +0200
Message-ID: <20250911133929.30874-9-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911133929.30874-1-ansuelsmth@gmail.com>
References: <20250911133929.30874-1-ansuelsmth@gmail.com>
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


