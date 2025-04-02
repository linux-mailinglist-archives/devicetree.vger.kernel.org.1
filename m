Return-Path: <devicetree+bounces-162672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B4A7957A
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:52:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F6C67A4B73
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 18:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C10BC1DC198;
	Wed,  2 Apr 2025 18:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="b5J/NQMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3371B1D5ACF
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 18:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743619932; cv=none; b=bCLuB3kgCGUFc7YKzVibOVWMJ21nf381HalNZcS1H84PKX4Xrj2dwW5bhquVFkF2IdCETxRRhypv/24AY6AwBZ6u3IkIn+gIsybtDZQ7Y9WNZy+HS4P+0da1SQupxRQoJU6PH50UDtLDkfc0pZ6RJbpUoHGos6Xtxj36KYHQXm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743619932; c=relaxed/simple;
	bh=5GTiMjnkORUH3/3JAjpIiHILjfgDZMEtWWHSH4k8Py0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SFLpQW99uigYuMvbQErciXvcGEjbBR6trKC/0ozaQRycDBBNEXzdbn4ftdmBkhhyrXq1qXMdtQiL/ezmVl4fVkVP7xkSkqK/HMd82bRD7I38ZkQS07Eu3gqC5iUpF/GgtH6xuoQwqquvVRk2d5AITJl+NQUq+xpy27ggc82nUVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=b5J/NQMg; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-6021d118877so55163eaf.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 11:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743619930; x=1744224730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqDKtnr5GaD9ToBXpFolLKV1wlSZYYAQ0+Ag5ew6NeI=;
        b=b5J/NQMgqmevoGqCIrvDf4HFwurVcCm4/yCvUQ4ZuvFL689Ky5u+f8BKqT9qr4AQy2
         uHQaj/fQfF7/P11Ww3rDe0TATfEzNcDWkVjNmofzOBlSb/K55DiDdH+4j9xLe/aYDTFj
         o3uMZd9I/W20rz54ytAu3KVVyEyWj7x8MjX1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743619930; x=1744224730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GqDKtnr5GaD9ToBXpFolLKV1wlSZYYAQ0+Ag5ew6NeI=;
        b=XG5vqN5PlybcDuombdIUBYiF+fy+fkAltVaeamJlTLDyRSZBNuKbW8qdieWEbtSK1N
         YsOFkRFLjsLcRPfY9hs60Qfw6cjv9VGi6u6TBa1MOYVSZwO4RFEU72ub7SzRbYh1qN8Z
         DZeamN1uuH58xnSJw4iPkXgZ//mnjWyV8mp6Ri6qdqa0g4NzXsoNr/ShKWnEgIfXNpUU
         5E7u+G3JsvhH7QZ0dK9Z8JGeH/kbI80PdaEh207UecHLuQ0WVmIgmtWxBMQcDexIUaQ+
         0JvY8pUX7LHNOupYgSV1vBKhNPOV8GNt5GYri3kjRcIdv2KeVuqAtCoPaCyO4DGx1H4T
         D7yA==
X-Forwarded-Encrypted: i=1; AJvYcCXZr+sydnRWzjXW3VgCsft02itFSnRPX4EgZ/EQ5L2xvhAhxDGyp2d4viIJO2TP+BfylOfuOeqoov0q@vger.kernel.org
X-Gm-Message-State: AOJu0YyFPZMmj+VkVfKZx12feQiC4fqRyKuKyfcVGyHyMjfyg2Mlpj18
	bVK0AGnZXGA3gLaEBIQsfSSSZjm+gMiXTew8cqWxWZguv4zZ/9RPHt1Ibaz3CQ==
X-Gm-Gg: ASbGncsjlgbnoMywivKQPkKCjw1dT+Pr/Sx66r+oSDNKD+zZw3Jwdcp6XQoOx3U2hoY
	xPHUsSlSRA+MPFJfhuMh6/+BY0lqo9ipKqvgoVjjfC9i6fQz85X9NOGWfahneVo8b0lyVHIEMnn
	oak3QARbUDzJcVvYLFSwq1P2CYbppGbbi3yh4mneqIyiM179aGj58t6aWUvdxTLmz85QyJXYamf
	Rmm71ZZz0AGCCuOThL/3BX2izdlw2XYzYO+5OxNYP0+3exuacqV0BrEmvunW/t3c6aI6ncWv6sH
	Z73B/IR2GNFGXwOR5w/s1TsRK/OgSziEktrxgwYYfg4RHpR8e88aCjK/aKpcUVdRG3Sub6tnhgi
	mYQ+U4kAV3oMALCFjj2mIWw==
X-Google-Smtp-Source: AGHT+IEbIiVI9NkR/CoWxd2DaTFQafqUnLyrs7RI+ylIFJC0k46MclFsgarT1oYobJHD6u84PnaCPQ==
X-Received: by 2002:a05:6808:218d:b0:3f9:3de3:c8de with SMTP id 5614622812f47-3ff0f523e06mr10176623b6e.12.1743619930225;
        Wed, 02 Apr 2025 11:52:10 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051aaf60sm2470462b6e.28.2025.04.02.11.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 11:52:09 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
Date: Wed,  2 Apr 2025 11:51:58 -0700
Message-Id: <20250402185159.2976920-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402185159.2976920-1-justin.chen@broadcom.com>
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 brcmstb usb phy adds further power savings during suspend
states.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2:
	Sorted compat string ordering
	Add new compat string to constraints

v3:
	Sorting try 2

 .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml        | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 580fbe37b37f..843d04027c30 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -18,6 +18,7 @@ properties:
       - brcm,bcm4908-usb-phy
       - brcm,bcm7211-usb-phy
       - brcm,bcm7216-usb-phy
+      - brcm,bcm74110-usb-phy
       - brcm,brcmstb-usb-phy
 
   reg:
@@ -139,7 +140,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: brcm,bcm7216-usb-phy
+            enum:
+              - brcm,bcm7216-usb-phy
+              - brcm,bcm74110-usb-phy
     then:
       properties:
         reg:
-- 
2.34.1


