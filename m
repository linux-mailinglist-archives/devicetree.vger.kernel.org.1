Return-Path: <devicetree+bounces-124401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 651EC9D8A7C
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:37:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D04DD286810
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD2B1B4F2B;
	Mon, 25 Nov 2024 16:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="EwcZSLE5"
X-Original-To: devicetree@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E83C1B4153
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732552664; cv=none; b=bT9PyBfBkmZC4MANjIWyldgfHCgKnIVfkL7lO3AxkKrmg+ThB4aG1zGRQ/4eA73rt+7yNniTnyJdn1eKxhzneSg8W4fprHSZ4Eo94x6JafPbw2TpJlRMay1rH0+IugOGW3Y4O8O/8qbdKYggHN03tPViS0IS+uIFAy/iXRclAQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732552664; c=relaxed/simple;
	bh=Ho9yE+w80J7VIUHdPNx6owMyuxUaKBtNAwOmDj2W8xQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OfcBDwJvnHN1D6I67ASUAn1xvmIcOm3Rdl6LxRuooGB5vmbewbZncGFHcjkwVzfZmc0yr9mBBSUzNThdFGlNOa/UiiGt0tLXdoallaXNAw8piX6Pa7d+8FBM37G2HaQJc+Psz/d8fKobXlUZJMtfKrmohe3z0aQ2Gk8w/amevDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=EwcZSLE5; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id FU6XtMYSFg2lzFc5ftj8b2; Mon, 25 Nov 2024 16:37:35 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id Fc5btSMZ265gFFc5ctBZJM; Mon, 25 Nov 2024 16:37:33 +0000
X-Authority-Analysis: v=2.4 cv=Z58nH2RA c=1 sm=1 tr=0 ts=6744a7cd
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=jHB5UwbQy1EK6tLgU6AA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZkaQrEJQKXqjJUPUIzJYYL/fozoFlM4O9eaEZj14tUU=; b=EwcZSLE5Y7T94mFQ+8wbjatkn5
	pP4PisXppncniVSlpyNhFVZ4SR70T9cZFSy+M+nBUXyOvhl7p6H2GPNI/ROkJRg/Qsv3j1DSipVRN
	O7ChBvYyTop5neO+hDDI90+OMYEgFMZQx6alJR+bo2oyLAqn3LZCxg6zQeZIZ8DmFXADmwpFLZ2+Z
	wIAfOdtxh4vcqnxBiS+KnioSWsMGDt4Jyioe/V6qIe3J1ZwDaWLdjhCmizZmQQZVk1e2PnSChBufD
	Z9Hkx7d2/fePr/lXN0/MjJ+0uUGfA/oLSr2IfGjtbX33e2TWSAKFAZMBBvJbGl2mAu/IjqOpkNWUO
	LNSYIbqw==;
Received: from [122.165.245.213] (port=38110 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tFc5Z-001iXQ-2q;
	Mon, 25 Nov 2024 22:07:29 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Mon, 25 Nov 2024 22:07:03 +0530
Subject: [PATCH 1/2] dt-bindings: gpu: add reset control property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241125-pvr-reset-v1-1-b437b8052948@linumiz.com>
References: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
In-Reply-To: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
To: Frank Binns <frank.binns@imgtec.com>, 
 Matt Coster <matt.coster@imgtec.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732552647; l=764;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=Ho9yE+w80J7VIUHdPNx6owMyuxUaKBtNAwOmDj2W8xQ=;
 b=buSZC0mE82qD1h/SzkH5xIZDHBjoFSR9kNvw2We8/zoqNTYp/mcovVjufRcXBuJG6Vp+QMov1
 jDbtSsXSmdACKwUzKF3xbkMLNPcJ5t90ukYAR67bwY0MKgjIXjcVOh+
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tFc5Z-001iXQ-2q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:38110
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 20
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGWi1b2UNzq6G9PkZriH+JMqu7mT8UYjTDBdO3m8T4hQHJO2PETDKjfHFSEjr6IDiYw1dSJRt350dAEQqDjfApv8VDb6Uf3rZmclLteSVNCTk00VVLsn
 xXFYQ3MAkvE8IHma59M3KF9w9ZtAst5K0gk+QarovXEQybgcsUAPuWwncN/A8czKw6OKpRpfk3Gamw7k32p1Vo0PsDO9zJ/546k=

GE8300 in Allwinner A133 have reset control from the ccu.
Add the resets property as optional one to control it.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
index 256e252f8087..bb607d4b1e07 100644
--- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
+++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
@@ -37,6 +37,9 @@ properties:
   power-domains:
     maxItems: 1
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg

-- 
2.39.2


