Return-Path: <devicetree+bounces-223254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9531BB2743
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 05:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88B053B7E9E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 03:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E90472DA75F;
	Thu,  2 Oct 2025 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="aqM8H+5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C93285C85
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 03:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759376843; cv=none; b=jlPjQifbaaoUGTXaT8DPjMNyj0C28XwjScAsuRAyXvjxu/dk4U6Dk0LlYEJcC9Q+7DgV9O3PzNrrEu/OS6TEP1VAa62NBGcUelS0jD4oR9CxoSkpwH98J/GoJSEtIrs77a/x7JgaATemgchVnA2W4WCj4riBStf6WKcJwHn5nHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759376843; c=relaxed/simple;
	bh=lURSqJKTdJb7Xs4EQnW9jEapWTZbXLGSTm9CKQyFJDs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=azMOtzGV/RcVDl2zQVQcV136Q/1ghaQCHd9QwkfCxWxRirdNXjI2tLmC/9RPRLEqmjSHFClI8/8s2X2ZQT6VTG/d5Z1NmLjydI1QiM3FpMcaqTV6sdsLyXGz8PxllS8ckQ8vm8cJJ+1kJ8N2+eueOPhtyJwyPH+h9lSX9wg/MW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=aqM8H+5Q; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 117D01E3D;
	Thu,  2 Oct 2025 05:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759376748;
	bh=lURSqJKTdJb7Xs4EQnW9jEapWTZbXLGSTm9CKQyFJDs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aqM8H+5Q4PLA5z65QHJdo28c6P3/ZOvemycQo9JYxmGdm7q8s0JYkHcbDoMNbkk+u
	 3WGWwJOt5BmWp6doivm0/X1yypBrcDMfGaeTsqhioAWNi4tBGHDGoKVvB4t//rYsDm
	 9KFKFRl0H4kAKADnP63UoTD9oHX1HZ0Fc4jNvaLk=
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
Subject: [PATCH 2/3] dt-bindings: display: rk3588-dw-hdmi-qp: Document enable-gpios property
Date: Thu,  2 Oct 2025 06:47:07 +0300
Message-ID: <20251002034708.19248-3-laurent.pinchart@ideasonboard.com>
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

The RK3588 DW HDMI QP encoder only supports AC-coupled links as defined
by the HDMI 2.1 FRL mode. In order to be compliant with the DC common
mode requirements of HDMI 2.0 (and earlier) TMDS mode, the middle point
of the termination resistors needs to be connected to ground. Document a
property to toggle this connection using a GPIO.

The property could be better named, but it has been introduced in the
Linux kernel driver for this device a year ago in commit 128a9bf8ace2
("drm/rockchip: Add basic RK3588 HDMI output support"). While it is not
used by any in-tree device tree, it may be used in the wild.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..7471c2f51c32 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -103,6 +103,10 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  enable-gpios:
+    description:
+      GPIO to switch between TMDS (when active) and FRS (when inactive) modes.
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
Regards,

Laurent Pinchart


