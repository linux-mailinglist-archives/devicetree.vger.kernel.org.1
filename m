Return-Path: <devicetree+bounces-223253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDC9BB2740
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 05:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD4E94A26E1
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 03:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBE52DA755;
	Thu,  2 Oct 2025 03:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="sVoxwEYu"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707A22D9EE3
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 03:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759376842; cv=none; b=PuiE9SON4gAUTATCDfCj6AxGRfvnAKB3E3YWjb3OoayaKddlU+aC107+6i5xguAjw285EcmTaPoIg2YU13DLvDpHzj8fQhnMkem5pw7JHe8+sVQFREQuy/zi9xobfEjzyokp9KkBJ5JLa6V2c98v+gvN/fEpKJb6/1Z+HTzyVCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759376842; c=relaxed/simple;
	bh=KcG/zkmiKNvl/P8os4q/rlZ6PsGXzEwTQ9fM/OULnkQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qqFTri4aUQq2DVcUpxHsZTNIm/t43QrKGl6Uf+Pv1ZLx9qUYc3tQTZppC4J43bjgIwZDtc9j/h7lzMPMBR22Pp4xvtQfhW+DjUiEz2EGfA94IeOCmy/soNBWZPOXmsAXKKlSFmKIM+Unmsh8kYxYL6ldnl2pfdCr3BIpuUD9nZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=sVoxwEYu; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 9AA3E19DC;
	Thu,  2 Oct 2025 05:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759376746;
	bh=KcG/zkmiKNvl/P8os4q/rlZ6PsGXzEwTQ9fM/OULnkQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sVoxwEYuj/ela5ZxaI+O+pQLNMIXncIZlADpNxoIKohZAe7cKsRVqA3/vaMuEisqf
	 ZY74kqDaEqRfU41NfTq8XgkMp26jtPE06qvOaZgIbgeX1FzE1fpOHhjfoIqifTCS+M
	 QShfU8f+uQeBVrn+dgNKMC27UatS+hvTKsTWq3/g=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
Date: Thu,  2 Oct 2025 06:47:06 +0300
Message-ID: <20251002034708.19248-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
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
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..8b08a57f96ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1243,6 +1243,12 @@ properties:
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


