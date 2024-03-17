Return-Path: <devicetree+bounces-50985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB4087DE2D
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 16:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A2961C20FD2
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 15:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236BB1CAA6;
	Sun, 17 Mar 2024 15:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="e5s9aQm3"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0C81C6B0
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 15:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710691073; cv=none; b=ivwqJFo+UihSrBDLLG/AjOoK8wEuRWOY3/dgEPbQfPL4k5pG3dds0KrW9R0Bbotl/MYhT95WOr5sSGRQrZ7Xpeieh0BdBlM6h+ePk5z414pCNYiUPGHq5n8m6dEPQybVbCd6eSeash587szABjAWa5Ofpg3ku8cY3fQQH/5srHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710691073; c=relaxed/simple;
	bh=jqkasTgZB6padVpRfMWcFIhzP0VCrABsnxxJ6KVL2fU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kdT3B8pkrD7Yozd4BMODi8nWc17n7CkyX+3KQeTfz2xrHIavH7ENdCfVhAr+YJuXvXOOv2EGaR7nbeVotYqF/8mj+F2hhIM8T6qLUj7zQJIdZmEjl6tlEHkLFxiaZdgDpZnirDqTShIMzFY1YBZZsWIg2VKXDTGozjW6iY1NRP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=e5s9aQm3; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 44B11FF1;
	Sun, 17 Mar 2024 16:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1710691044;
	bh=jqkasTgZB6padVpRfMWcFIhzP0VCrABsnxxJ6KVL2fU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e5s9aQm3QHe7a8vL07hhhDvSFq7ZdlMAz3gZClBSqAX1CQZxfrjTcnnbR7/z52t0D
	 ISiiQA3M8qTkyR63Sgkl2XpyPu5+no6n89eEsAiD/fl94FwnkTYQ6sguNi3FTQ4grt
	 GQxKQpKLVD698LpUaXxgiWEmIZeyaRsS7hPNi9kg=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: ili9881c: Add Startek KD050HDFIA020-C020A support
Date: Sun, 17 Mar 2024 17:57:45 +0200
Message-ID: <20240317155746.23034-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
References: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible value for Startek KD050HDFIA020-C020A panels.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
index b1e624be3e33..a015dce72f60 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
@@ -19,6 +19,7 @@ properties:
           - ampire,am8001280g
           - bananapi,lhr050h41
           - feixin,k101-im2byl02
+          - startek,kd050hdfia020
           - tdo,tl050hdv35
           - wanchanglong,w552946aba
       - const: ilitek,ili9881c
-- 
Regards,

Laurent Pinchart


