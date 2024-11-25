Return-Path: <devicetree+bounces-124275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E1F9D84AE
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A641CB34331
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 10:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883E3192B7F;
	Mon, 25 Nov 2024 10:33:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CD419ABC6
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 10:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732530828; cv=none; b=SJ4C6JXMxBedUlFVJ+VOISJ3irYOjnnY1ps+hFYGoySsnIa0w0v8mIrG3I8uvPVfdk+jDLsP1VkYNoAyf63kIxkeVv0emobmieE/2l8O4qrQyrIxcFrB0nskWtTFLSub3IfXRCYSBQe7dQrD+TgKBTqWgZDJtn+VfBnq5zUJOrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732530828; c=relaxed/simple;
	bh=mS8iXYVjVBdhnzOOGwa018+Hti3jLNwAxmOap9NVCks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W7aMDdDlESp/tAvPqYdRnUpkTBQgSuxUMVhfQA9Euhkf0grXEtdZHsGokHJqw6j/g8LzPzEw5kgqLxJZ/xnW17+Siuu2OP9pEcLnXrqykLQZFP4srInCXJG3rAWxvhJp9eZ+djMS08PfEBvlObNX8xpY8/R4dS/ctAw8U+fHK9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tFWPQ-0001Fo-NO; Mon, 25 Nov 2024 11:33:36 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 25 Nov 2024 11:33:22 +0100
Subject: [PATCH v2 3/4] dt-bindings: intel: add agilex5-based Arrow
 AXE5-Eagle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241125-v6-12-topic-socfpga-agilex5-v2-3-864256ecc7b2@pengutronix.de>
References: <20241125-v6-12-topic-socfpga-agilex5-v2-0-864256ecc7b2@pengutronix.de>
In-Reply-To: <20241125-v6-12-topic-socfpga-agilex5-v2-0-864256ecc7b2@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, kernel@pengutronix.de, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add binding for the Arrow Agilex5-based AXE5-Eagle board.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index 2ee0c740eb56d63cff7767167ee3c640beba0803..03de49222d465584f24cc6c7dfff6ccfe304db46 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -24,6 +24,7 @@ properties:
       - description: Agilex5 boards
         items:
           - enum:
+              - arrow,socfpga-agilex5-axe5-eagle
               - intel,socfpga-agilex5-socdk
           - const: intel,socfpga-agilex5
 

-- 
2.47.0


