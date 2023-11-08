Return-Path: <devicetree+bounces-14630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 831F57E5C2C
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 18:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10B9E2814D2
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7000030FB3;
	Wed,  8 Nov 2023 17:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Z1zZi7rF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045593033B
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 17:16:46 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72B851FFB;
	Wed,  8 Nov 2023 09:16:46 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3A8HGL7L108935;
	Wed, 8 Nov 2023 11:16:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1699463781;
	bh=smX0ePku65I1V1dFik56r1qTlLoFJ9WIl8YRS3aknEw=;
	h=From:To:CC:Subject:Date;
	b=Z1zZi7rF9biXmBsAhmriT4JRxo1bJ24u4S1mlEGpOlnZ2imq0iUAB9PirXwEtW31n
	 7la0mcMVV1Ly2nYipon8jtQH23g2/uMgwzhJR4PeVV0dHM6iHPMq5jQ+1DwSy87pYM
	 KPkdS7NUAoKZg4d4rkWg+g3IzX9ud+Y9yNWhEnhA=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3A8HGLZY020906
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Nov 2023 11:16:21 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Nov 2023 11:16:21 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Nov 2023 11:16:20 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3A8HGJ2D005614;
	Wed, 8 Nov 2023 11:16:20 -0600
From: Aradhya Bhatia <a-bhatia1@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Jyri Sarha
	<jyri.sarha@iki.fi>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: DRI Development List <dri-devel@lists.freedesktop.org>,
        Devicetree List
	<devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>,
        Jayesh
 Choudhary <j-choudhary@ti.com>, Jai Luthra <j-luthra@ti.com>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>
Subject: [PATCH v3 0/2] Add DSS support for TI AM62A7 SoC
Date: Wed, 8 Nov 2023 22:46:17 +0530
Message-ID: <20231108171619.978438-1-a-bhatia1@ti.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This patch series adds a new compatible for the Display SubSystem (DSS)
controller on TI's AM62A7 SoC. It further adds the required support, for
the same, in the tidss driver.

The DSS controller is similar to the recently added AM625 DSS, with the
key difference being the absence of VP1 output on the SoC. The VP1 in
AM62A7 DSS is tied off and cannot be used, unlike in AM625, where the
VP1 was connected to 2 OLDI TXes. The video pipeline that corresponds to
VP1 still exists and can be used to overlay planes on the VP2's primary
plane. This can be done using the overlay managers inside the SoC.
Moreover, DSS VP2 can output Full-HD RGB888 DPI video signals.

I have tested these patches on AM62A7 SK-EVM, which converts DPI signals
to HDMI on the platform using the Sil9022A HDMI transmitter. All the
patches, required to enable display on AM62A7-SK, can be found on my
github fork[0] in the branch "next_am62a-v3".

Regards
Aradhya

[0]: https://github.com/aradhya07/linux-ab/tree/next_am62a-v3

Change Log:
V2 -> V3:
  - Add Krzysztof Kozlowski's R-b in patch 1/2.
  - Add new DISPC_VP_TIED_OFF for tied-off video-ports in patch 2/2.

V1 -> V2:
  - Correctly sort DISPC_AM62A7 macro after DISPC_AM625 in patch 2/2.

Previous Versions:
V1: https://lore.kernel.org/all/20230818131750.4779-1-a-bhatia1@ti.com/
V2: https://lore.kernel.org/all/20230818142124.8561-1-a-bhatia1@ti.com/

Aradhya Bhatia (2):
  dt-bindings: display: ti: Add support for am62a7 dss
  drivers/tidss: Add support for AM62A7 DSS

 .../bindings/display/ti/ti,am65x-dss.yaml     | 14 +++++
 drivers/gpu/drm/tidss/tidss_dispc.c           | 59 +++++++++++++++++++
 drivers/gpu/drm/tidss/tidss_dispc.h           |  3 +
 drivers/gpu/drm/tidss/tidss_drv.c             |  1 +
 4 files changed, 77 insertions(+)


base-commit: 2220f68f4504aa1ccce0fac721ccdb301e9da32f
-- 
2.42.0


