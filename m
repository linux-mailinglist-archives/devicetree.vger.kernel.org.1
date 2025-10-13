Return-Path: <devicetree+bounces-225826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 61095BD1656
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 06:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DD9533477AF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 04:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E518A2C15A0;
	Mon, 13 Oct 2025 04:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="DsIhr/Cj"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506E6283FDB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760331130; cv=none; b=MhXwiz9KFNLCxHxCLOKJ8GRgfRw2S9fcynuEdRX/ioVjYZwV9imNNOgbFBrwQyaGQcZpVnEV0hS0KvNIgNKUAJFvi/ypjIIPhnYaDU3kXlQFEXC1QuZvOp8atovmQw55gCC3ZgJKM2Z4uArpIiHECjc6XHQjhhXZNTBQIuCFKUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760331130; c=relaxed/simple;
	bh=TGijnfP63bLoEEIa+F0axtF4nYIOHU+yJpAd4E0PVds=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YtS/bKxMtvENAu91FMnHcRqqrGOIIHQQYWAqP5RaJfO8dagWJ/V5T8vPzWR3eSO3lBh51S5X3krsww232HdBjdwtubvin7V5gGe3GbgbuwWFHTOLkl1ljk5HQ/xPqeRSNnRxNCc2eqnOGuGYV6CakIAL+nsES6ITEmj2H3Hajaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=DsIhr/Cj; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id D3081240028
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1760331121; bh=KYSb2eVGrP9QZN+RqCt8LieU27WuvxR5OzqhlsJwvk0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:From;
	b=DsIhr/Cj0VMA8nRL7EDNsVn5xguW06shVQ1B45z0r6lA1a3tv5/0xongKWcIX9A1X
	 fEj9Qj17EumfmQcrVGqWxAGxFciY2FGeXO1QkoiHKGNUdVTxrUZhAtT9C/xZimsO3+
	 TSO/t0rniubdjo37IPSz7nEdasNQj540CFzpsIU5Zz4+JFsTE+iY2lSBfQMuroeHMD
	 A+stkNJBgerY5vC/KwgF4un6zqs/HzsfAwRElUuAVbKlGKyQGnhCUtdCTwLwDYknwA
	 MLkysJLjANnO1PeaOmRhUEL81ngj9e8lJQAKEAdxcw/U+N32ABJeNzzd1Ob7VU7x0R
	 y6/pil0kFEYwg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4clQ1Y1bczz6v1B;
	Mon, 13 Oct 2025 06:52:01 +0200 (CEST)
From: =?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
Subject: [PATCH v2 2/2] dt-bindings: media: update Martin's contact information
Date: Mon, 13 Oct 2025 04:52:01 +0000
Message-ID: <20251013045152.14555-2-martink@posteo.de>
In-Reply-To: <20251013045152.14555-1-martink@posteo.de>
References: <20251013045152.14555-1-martink@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update Martin's surname and email address in order to be reachable.

Signed-off-by: Martin Kepplinger-Novaković <martink@posteo.de>
---
 Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml    | 2 +-
 .../devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
index 1a57f2aa1982..0a715081d271 100644
--- a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SK Hynix Hi-846 1/4" 8M Pixel MIPI CSI-2 sensor
 
 maintainers:
-  - Martin Kepplinger <martin.kepplinger@puri.sm>
+  - Martin Kepplinger-Novakovic <martink@posteo.de>
 
 description: |-
   The Hi-846 is a raw image sensor with an MIPI CSI-2 image data
diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
index 3389bab266a9..9d9b697e936a 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: NXP i.MX8MQ MIPI CSI-2 receiver
 
 maintainers:
-  - Martin Kepplinger <martin.kepplinger@puri.sm>
+  - Martin Kepplinger-Novakovic <martink@posteo.de>
 
 description: |-
   This binding covers the CSI-2 RX PHY and host controller included in the
-- 
2.47.3


