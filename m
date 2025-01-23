Return-Path: <devicetree+bounces-140623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBEAA1A92D
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 18:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 578B21662D8
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 17:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6187E17A90F;
	Thu, 23 Jan 2025 17:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="bhbRqbz0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7423316EC19
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 17:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737654548; cv=none; b=DXVeqeBOP2glW4mpNnE+YtNN+jJ70giZF5MDnTph8PWCMZWxUI3aQ83bNLv01rUaLsF2QLhBR59wuJdw644Xo7L6OHuCSW4rvoEIxIuTmOvtxT3Jm84XpxHpSv+VZM2TealE3+96hAJCnz4SutamjeHux/9JdvNtsvh2+nBAbc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737654548; c=relaxed/simple;
	bh=NSojA+duzzxOoFog0vBYiL4prIUazZryuZHHprWey9g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tNSyhlCOK4Ky9rDuOtmiRnPCLdGySerBfTVgu4Auos2KigMj8DDcFJHW7D35Lw01JlFs//mn8cZSzWQzBoBUGtu96ydb5qZaKM9Gn8/BfVjGyD2+n/zBZtvsIcj9BfqH2bVXMNMYMEu9QQ2lVMhcLQJAZN4x7vSJMY/yI6Epvvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=bhbRqbz0; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6d8e773ad77so10162336d6.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 09:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737654545; x=1738259345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YhKhwXmEFKJ+KW9V7oUyVzf79Oqc/PvSp14CvPLvf4g=;
        b=bhbRqbz0PJRXo82VzTNv5WmNO9VPKOt3FEqZiM7o0Szem0Zi9cQajNN1a6+DNyM+5u
         eXoW+DGKsAS0LDDQ0US+CH9t8VY/Xe4zqtjMotaSB/tOsOcbe3N6G9M6IPHGtfZEVacz
         8WO3k1SxKDjPpEH69++25dRvckLHAUAIGM6Zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737654545; x=1738259345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YhKhwXmEFKJ+KW9V7oUyVzf79Oqc/PvSp14CvPLvf4g=;
        b=fsDBm2/U7/sUywfkheie0tIQoehAsgzo9IzqVb4tDciswG2jP5AmTj3vDYL7wUtSCP
         dmOdt9rn/3voc4LvEi7WgbLl8ZkYge7p2bplFY++KeN5VPWx88G1M/4xF/RvUpm6wRH1
         mRM+CfNnCq2G1CsC8X4+vc1Z3K0aojVb7OrhqaVuY7jSxW+usEW49WcbTiQ8daTCdgEJ
         x5wHMrjpnSwYMrMp94524e0aSuKvV8jDiF8irFSgcGH6/RiU/Y0lVIY1NN/sxyKO7grW
         TFvyJMBHoY4BIyHd5NJOUGSnO+3IwbQhB/otWq+jdiOIXwFhyhc++WDjPAwgCArRKGol
         Qf2w==
X-Forwarded-Encrypted: i=1; AJvYcCUG0ULy/WRQPjDm75EtkHur+UCu3omhpiuv0vN0mhy+l3gMcnPzdmFCdsvAXXK8iJJjAE8k1SALssSy@vger.kernel.org
X-Gm-Message-State: AOJu0YzdNOHtA8B5God98UsYFe67JNIebCHug1HBzN5pG3vWh/uyqkCA
	Re/2NCtOh5P0YHthHv2UCswuCS5tT7Kf9d2nAeQ7Dku/apfpk5Gm4J6z2Tmn4lk=
X-Gm-Gg: ASbGncub9K3KjuH5Ep679tGIZsVfO3MWhyRRnPk3mVdDSTTXJrgc6kSxmg3TKYjlpwV
	Nna+aYQkcilqfFFOLddEqF9GuUjCRPCgTiEK4gHikcKVCXsEKy9ZPRH3q0rfkMDXwpX4iSAaKVV
	jTH0pgbfdehZzQ4iEWUTimo0Ds3Xc/DWErYPoqOvsWY4MuQGkn+dKV7eEgUTi4dIJ91nFIJJCe2
	5i/Bia89+7qnNtd88xQLOjTShHdIv558Bl2/tosfjLQUggPsylco/IcEJPHcv6jJelgHhkZWEoy
	LXZkj0g=
X-Google-Smtp-Source: AGHT+IF9ra2G/nN8r8Xk6LkxR34WWRGmCzW4zWuzyzPGPFwPVeEuTgg1nHbFpv5qzaYHGHZhwn6cTg==
X-Received: by 2002:ad4:5aa4:0:b0:6d8:8f14:2f5c with SMTP id 6a1803df08f44-6e1b2180802mr421129916d6.23.1737654545301;
        Thu, 23 Jan 2025 09:49:05 -0800 (PST)
Received: from bill-the-cat.. ([189.177.145.20])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e205136e02sm780536d6.20.2025.01.23.09.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 09:49:04 -0800 (PST)
From: Tom Rini <trini@konsulko.com>
To: linux-kernel@vger.kernel.org
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Robert Nelson <robertcnelson@gmail.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	devicetree@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: omap: Add TI Pandaboard A4 variant
Date: Thu, 23 Jan 2025 11:49:00 -0600
Message-ID: <20250123174901.1182176-1-trini@konsulko.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the ti,omap4-panda-a4 compatible string in the appropriate
place within the omap family binding file.

Signed-off-by: Tom Rini <trini@konsulko.com>
---
Changes in v2:
- Include as part of the series with binding addition, make this be
  first.
- Rework as suggested by Andreas Kemnade (slight rewording after Robert
  reminded me A4 a production rev and not "alpha" rev.

Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Andreas Kemnade <andreas@kemnade.info>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Nelson <robertcnelson@gmail.com>
Cc: Roger Quadros <rogerq@kernel.org>
Cc: Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-omap@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 93e04a109a12..3603edd7361d 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -141,6 +141,13 @@ properties:
           - const: ti,omap4430
           - const: ti,omap4
 
+      - description: OMAP4 PandaBoard Revision A4 and later
+        items:
+          - const: ti,omap4-panda-a4
+          - const: ti,omap4-panda
+          - const: ti,omap4430
+          - const: ti,omap4
+
       - description: OMAP4 DuoVero with Parlor expansion board/daughter board
         items:
           - const: gumstix,omap4-duovero-parlor
-- 
2.43.0


