Return-Path: <devicetree+bounces-68042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D518CAA17
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BD66281147
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 08:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6773856B7F;
	Tue, 21 May 2024 08:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Cgwxp9Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697D053E31
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 08:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716280513; cv=none; b=FVd7zE/0NWydp0iyZIXmvNea+N1RiydgOzPHp6f4DfYaEHtJelnopEkVSYB7AHkLWauKtl8LigmXwTUMDnDYX9t1Y9SA3fbTrIC5ukVyNHFWUBpNfHPA9OKTk9kkFEjD89ktIFfP685UqLmtfBag8NYRHHBB9YLymNMYRqSRw/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716280513; c=relaxed/simple;
	bh=kNZI+tfNPBQt9dkkmteDOfG96JtFEZcf2Sv6/JIELrA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PfPodqD7Z20AHHZs8qVBDOiSmvnm7m4/t78thniDYJERVcX9G21O4kp6RS/H6K2HwtJzJi4JLLJN76Dz7BnCdQO0d2a+zFKaaBySKEqB8DAUPUHeHBMBOOA/49a8LvtyEkPl/W+88FQZaN4LZVrioLb/RjJCwi6YX/3JLqL8eg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Cgwxp9Fu; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56e1f3462caso8621247a12.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 01:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716280510; x=1716885310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xeUzaJgucCPR+zY9E+AvBWEfJ2LsXQToej63r5VWGuY=;
        b=Cgwxp9Fue7rRSDVSezsi0r80JzLqSafgcM3l0o4GwUPhE8aJ3o4tad6KyyEW0d6x7L
         1Sbxl6r53uMkhO3NTKHkfHGt4OP/ewFHWPkBky57fNedKmDAfdGGkb72zSwQI3yTXu0G
         t9TGQSqWuhFyf+Pjm1uv9X6QwK7iUSFGNyae7pW4oM0upm0GTsl4oYU+WhIGfRCrJSKP
         adnVFle45ktAqtwXy+P31wdRQM18uZqC7ra0AFntZUBTA9D62JQGqUG6AjgH9bTLaSnC
         103Q0COs+iosXWPLkAuQav5TBjRdIg0Chl9Zsft2U40qoQLLDcTVWMNJoRQifmpHIfhU
         4tVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716280510; x=1716885310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xeUzaJgucCPR+zY9E+AvBWEfJ2LsXQToej63r5VWGuY=;
        b=YbiP/y3aDriEe9vD0RUNM3wscCGB/lb0DCWxPktVOwynb+cmkez0hkYeIF+PBBVA+j
         O6KmOOLQxLBzPiLHmeiM3ZXg9lA18rf2NE5DjZlQFLCVNKCEYknZkMXdvL+R/UbjVwLp
         8WFPG1WVUUoD/cf43U7E9hoVtxcT7ye8Lva6NEEdHiJtWCPck2dr8CffYUuhGVZHqbx1
         r7xX+fi460wDkUBG3W4THV3lQM1erDYlGkzQcA8o9p64ukWHChemkFD2ubGRBueMCRQy
         FNvC6l95O+mWlNJXMl5uvCGnHRfxmeoDr3AvSkfjWRkLQaCc07ivIvMEiC4wnsBgD+9d
         2QVQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1V42qssUXFoIvNZwPQtuqeZn26BYr7xRsJ5U0FizBHh9XhnnsuZ45AoNra07DF5C80bLafrDtLOA0XXwbAMKEcgT3R6+EYApIZw==
X-Gm-Message-State: AOJu0YyZYrMa3DEjIk/nBpfcKaPy21jx15YmJm1hZR2WKso5BlvX5y0g
	QUxqMwpCkXRXUM1VFQVsXwvdmrKS0572oSid0lku8S9p6jj4FBBzUhnXjyGg23w=
X-Google-Smtp-Source: AGHT+IFGVFbO+Vvt/HLW1ts2sBvZryzev6bkeYdTBdUsoUpVu04fdJMUBuNaBT0ihT7+qGIBU1QAIA==
X-Received: by 2002:a17:906:6415:b0:a59:adf8:a6d5 with SMTP id a640c23a62f3a-a5a2d6786fbmr2042739566b.72.1716280509907;
        Tue, 21 May 2024 01:35:09 -0700 (PDT)
Received: from localhost (host-87-18-209-253.retail.telecomitalia.it. [87.18.209.253])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7f49sm1572664766b.101.2024.05.21.01.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 01:35:09 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Marc Zyngier <maz@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v3 2/4] dt-bindings: mmc: Add support for BCM2712 SD host controller
Date: Tue, 21 May 2024 10:35:14 +0200
Message-ID: <d7c8bc0143c6b8c8b313413860840ae5bf2dc22a.1716277695.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1716277695.git.andrea.porta@suse.com>
References: <cover.1716277695.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 has an SDHCI capable host interface similar to the one found
in other STB chipsets. Add the relevant compatible string.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index cbd3d6c6c77f..d584a7ea707a 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -13,6 +13,10 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - brcm,bcm2712-sdhci
+          - const: brcm,sdhci-brcmstb
       - items:
           - enum:
               - brcm,bcm7216-sdhci
-- 
2.35.3


