Return-Path: <devicetree+bounces-223464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A651BB56B4
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7A911884462
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640B82980A8;
	Thu,  2 Oct 2025 21:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="B+mHKi7F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f225.google.com (mail-pf1-f225.google.com [209.85.210.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6B1B0F1E
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759439091; cv=none; b=gGnEa4AqswNLYydNYtITHf9QD24ZqgJ8eRQ8dwJZ00vUSbNHGkWT+Sa7HvbtUW0+b+SnqHCZtMi+G2rLoaysSosU8RCc91Ac+iqiiyBUO3fNjwrwOc2h4p3w/on4EH6Yd/ny4CetAhA7R9MKlXvrGrWNoK/6WT1oHRGsF6jITpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759439091; c=relaxed/simple;
	bh=jK7kxcxxZSZOzxffNSAiY6865wMbhPwApNWPua55We8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=puIws1qxmLBzniVdOuRKpP2vjpTLak0jwSiMhHOVWfNgzi305BB+etP7OeM9BY9e+5Jx3T2sTcDIkhhY/wiSKPiA6jMBlJftzQZbG1yRmlM8k2jTZdmMTMwUVF5cSRvrCeh1DKwGPQzkr9g5VfhwL41s/jmnT75Tn8Q9PXYBo9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=B+mHKi7F; arc=none smtp.client-ip=209.85.210.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f225.google.com with SMTP id d2e1a72fcca58-78115430134so1106251b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:04:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759439088; x=1760043888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d0VBquDv6g415iy1L7kGakH7H853FAzWxsvjxiCHfN8=;
        b=PsNR8ViET79KK6gwM1wItMI6W0DdHtF5MRcHqyadTw7PVzBysy2KtD/IpwYmcwJ1B+
         +KTvrPNehYdssw80lkyGBt6M7LLrnNl3BeXJB16S2L4repGVNDGx70qRGvpk3hg3K3NW
         luY4GdkI2n3vGKfTeg5DZ5PpX/BBqJqOG1/l91TIgfPaQOftYYO2aXJnxKuidNtohqm7
         KAGydH2LYyJZowHEVJG94Q1L/gKSnv5EFvfu5/bmcxxR/74ATg/YJE8+MmKWP89x7ewy
         jppg1yQdEwNxt5TTpJx1n3La167Neno83FFLeJHUAYjiqsmZsOVuaEiV2qfFjA1z0JqT
         xwwA==
X-Forwarded-Encrypted: i=1; AJvYcCVIgVOyq6m2BakM/dxd23AJHh88rOnkvV3ZOpMRzVBb4t9ZulWnJ4Brv8evGaNCuK4yAUQr4xuBqqPS@vger.kernel.org
X-Gm-Message-State: AOJu0YyswsIBbYri4wUqETI9qOOGFXKrGReCD5BQQWCbKDyLeEa19EyZ
	bcQNJOkaYbSAiJJC8zrfVSN3ZM/DsvYqnMqfpiH6RJr0AOFyTYZlym6NYNjGmtBhHp29PKQhSwW
	KIYzmjajxP1hU4Wh+gIcWSr4X4xywRsQAlWk+/UJnV+OI6zqtVakzn7F0C18y5NAeIZu8B0OMvr
	TVoQWCDNhP0bF8ShkSW4ergZHpsgsYm8zCzOUeNnary75d6NGYOxFgOAPxMsdaTDEggmfwY+IrP
	GiBnwfoAHXQ0Q==
X-Gm-Gg: ASbGncuX/uopXULm/Vn8Kc/bG6p9pl7WJbI+Vcisf54uh5bRWcLgETbXCCHivq9tJC6
	FL3Cm93EApcfsbN861PJHDDTMPmhUyb9d6Va8mI35myIJ+XpqJmwMiXWeeot1c8qQxBS1K8/a5x
	8Tkmv1iW6Vf3BfQoPV+qF2Sax7oWxLRd3SfcMbBV3SHRlTaYbU+Wbazisaqi/XWT5bMHoCcSOTj
	LKrB+20FFVS5xYVvOJpdRRVrUVcdzD2O4QZlaNDalV4mQopinjTF4e2Mt7J0rvXHUx1NQoR0yct
	py34FO7alJkjfEtt5Fhx7ZHmqkN1HDZBAyQWOJnja6/77yMFTFRTOG4RZKuvsr5Ri4ty07gtB77
	2JsD7CrhaEeUxRBd9KlQzNm4fuxOGEVJWaqOSOWskkgiy6wV/a9qgPv9Ri8vc7I7phssM7JK0es
	mbAw==
X-Google-Smtp-Source: AGHT+IGj0s/EW5jYwz6GccL8Fg0uoE0Zf+CCx46M2AUlacurbAGGWaKtAnusRl8hXmHBBzuaKPn3BZhmtJpH
X-Received: by 2002:a05:6a00:b54:b0:77f:4641:e5ac with SMTP id d2e1a72fcca58-78c98a41555mr1252065b3a.6.1759439088294;
        Thu, 02 Oct 2025 14:04:48 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-78b01fa6c58sm249820b3a.6.2025.10.02.14.04.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Oct 2025 14:04:48 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-46e32eb4798so11674675e9.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759439086; x=1760043886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d0VBquDv6g415iy1L7kGakH7H853FAzWxsvjxiCHfN8=;
        b=B+mHKi7FrxKqXf4T4MBS5guhb/3IiPhc4kpJMT8Jx/STD3M/UTs5QwsYI3aQXdqBe6
         gCg7OSputMXRtqZg/Sf3Zq6g0mwI7VaJ/P1tM5hyPlI6IDsV0YS/ZBaNgX1GlVYCbBaj
         p6s/CpiPQ8Caear653sKwVVQ5eCE54X4YmGVY=
X-Forwarded-Encrypted: i=1; AJvYcCUkHf+4GIdVL0CRI6TEUZbfIy3QvLZ121bL+vPyfN4cLEL97MUUje65yrXJnCNA0fyc1Qcw0KEfxfjZ@vger.kernel.org
X-Received: by 2002:a05:600d:420d:b0:45b:47e1:ef6d with SMTP id 5b1f17b1804b1-46e71172104mr4721635e9.36.1759439086299;
        Thu, 02 Oct 2025 14:04:46 -0700 (PDT)
X-Received: by 2002:a05:600d:420d:b0:45b:47e1:ef6d with SMTP id 5b1f17b1804b1-46e71172104mr4721505e9.36.1759439085831;
        Thu, 02 Oct 2025 14:04:45 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c4c0321sm61711295e9.8.2025.10.02.14.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:04:45 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH 1/3] dt-bindings: mmc: Add support for BCM72116 and BCM74371 SD host controller
Date: Thu,  2 Oct 2025 17:04:24 -0400
Message-Id: <20251002210426.2490368-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
References: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Updating compatibility to support BCM72116 and BCM74371 SD host controller
similar to other settop SoCs.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index eee6be7a7867..720d0762078f 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -21,9 +21,11 @@ properties:
       - items:
           - enum:
               - brcm,bcm2712-sdhci
+              - brcm,bcm72116-sdhci
               - brcm,bcm74165b0-sdhci
               - brcm,bcm7445-sdhci
               - brcm,bcm7425-sdhci
+              - brcm,bcm74371-sdhci
           - const: brcm,sdhci-brcmstb
 
   reg:
-- 
2.34.1


