Return-Path: <devicetree+bounces-231781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FDDC11961
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D50864E2E83
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D354B31D75C;
	Mon, 27 Oct 2025 21:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="RpCiT9p6"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9135B2EB84E
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602222; cv=none; b=a9yGeNqeOp2zw9Rw8sBqahT/qyZA8d/eSPc+wrMvWwb2QiZH+5okkZvGE8eJ8YU1mqYFh9V/n4Y4cT7A4HDlklnjpHWC6g3vsIwqlnu8aWYdI1RJSNcHtvdP2ujzDoqRc0L0TtlmTzs3HtuuIY1U/p5HQw9aQ4Aqke5Jf0dyF9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602222; c=relaxed/simple;
	bh=5On+UoBapSqweDSSD07ansJ/Saq05iLJ/eWiTftj8hM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I/JdKlYMLjt/ZLOvGbM2pgYhaQPwejfaNYbL6nuKBYLKbWoLyIUioxg01vlUcYDe3y0oIcPSz6whA8lR4y1++4O5rOj3SGzOQYAFSyBpMiRvMNpoE+Iqm3CQhMrb0iLdPrcEk4KfSV/m9pU+1zc3x2L/El4PPyAY6qcAxGf9+wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=RpCiT9p6; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 4BD8E1787;
	Mon, 27 Oct 2025 22:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761602105;
	bh=5On+UoBapSqweDSSD07ansJ/Saq05iLJ/eWiTftj8hM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RpCiT9p6Bp3smvkPlgjmqQIoGqfGlLO3vkBKd5L+JyX9KZEqzqSoK2/jAFe/mLQyx
	 sKZJpfyceB+5fPErOhZRIimLcizJCsvmKprfEjLEWaCvClVHY+zG1M1ibHh22r91VR
	 99p9vsnN4v3AJCakEGkC4sKEfTopTWq7qPAIHP5g=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
Date: Mon, 27 Oct 2025 23:56:35 +0200
Message-ID: <20251027215637.20715-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251027215637.20715-1-laurent.pinchart@ideasonboard.com>
References: <20251027215637.20715-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Orange Pi CM5 Base board is a carrier board for the Orange Pi CM5
compute module. It has 3 ethernet ports, 2 USB ports, one HDMI output
and 4 CSI-2 inputs.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..bad4cab75bb7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1272,6 +1272,12 @@ properties:
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
+      - description: Xunlong Orange Pi CM5
+        items:
+          - const: xunlong,orangepi-cm5-base
+          - const: xunlong,orangepi-cm5
+          - const: rockchip,rk3588s
+
       - description: Zkmagic A95X Z2
         items:
           - const: zkmagic,a95x-z2
-- 
Regards,

Laurent Pinchart


