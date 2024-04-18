Return-Path: <devicetree+bounces-60590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8342B8A9B77
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:42:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B53D41C20C58
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149AF1635B3;
	Thu, 18 Apr 2024 13:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b="FspPPls3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpdh20-1.aruba.it (smtpdh20-1.aruba.it [62.149.155.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76DE15B961
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.155.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713447759; cv=none; b=uTJzUIx0JWSRX+O2F2i0nJK1fwOZIwbtMM924csXzxktZXA52Sx2Rx2xkTe5xLbK610cQ+k94XZN4qXGDxhcuFzC/xE6phmuCpzgPBJZ8g5f4pLx26148YiZAxP/4f6hRx7tpDCWvEi6Xlh6KNi1CJxrjcPPVJZhWtulEujdyFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713447759; c=relaxed/simple;
	bh=BPnGJTtrBvdVCZOyJP7914EN0dAiey74ztwFVJtarM4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=okXiCPf/xPXp+sz2/fzq2qD+jRpy2MZ0CeYpOWdFcxkIcJ4fqiJWmutaUqUvRFd1sfJsoPwe2vgKn8mmISaI3Ar4efT0nSpPUjj0yBKoMd19aZjrtt77FqtDLhLDBwzfS+VxhLtEmPPYIo8OZcRTnLco3SJ0ow6Gxlhgg/zLZ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com; spf=pass smtp.mailfrom=engicam.com; dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b=FspPPls3; arc=none smtp.client-ip=62.149.155.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=engicam.com
Received: from engicam.com ([146.241.28.123])
	by Aruba Outgoing Smtp  with ESMTPSA
	id xRz2rgYv8wWj2xRz4rpftO; Thu, 18 Apr 2024 15:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1713447566; bh=BPnGJTtrBvdVCZOyJP7914EN0dAiey74ztwFVJtarM4=;
	h=From:To:Subject:Date:MIME-Version;
	b=FspPPls3NCm0nYqZeYqlkCZgQ3zN+iDB9qLoxTr2Pnhtzm2uYtsJaLOZfG2h4jB/8
	 GmMy7fdKJvEGe+P+4lNshPhKZBnx20HsNCaYzqBHYelZOI8GyzJfIeDd3g3zHU+FQE
	 V4R3ij8SkHYLLJE6iGRh+1P1Iw91/2BmMWO/H/rD8MqhjnVswz9C/7JFK3J7qqlHyL
	 Jh25uR64I/8IWu2s2NBf9l+goMQNsukmRa3N7LulaCYBRx2piZ6baCiLuCGYH+uC+q
	 yr0OMdSH3zBJ2b8Dm/bvGMVJTsfs7qOBYGtl74uFO79lCl9X2bVXag7cZa1sjs7EKK
	 0tLA0nRJ6e1lg==
From: Fabio Aiuto <fabio.aiuto@engicam.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Aiuto <fabio.aiuto@engicam.com>,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Mirko Ardinghi <mirko.ardinghi@engicam.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: add Engicam i.Core MX93 EDIMM 2.0 Starter Kit
Date: Thu, 18 Apr 2024 15:39:21 +0200
Message-Id: <20240418133923.3705-2-fabio.aiuto@engicam.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418133923.3705-1-fabio.aiuto@engicam.com>
References: <20240418133923.3705-1-fabio.aiuto@engicam.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfLPJjMyjuC46EePe1tB96/9btQeWSPEKQd8nMiBOciL4/I/k80FuI2OCQZSoAVSxtrbAPJcmCyYr7zN2Fw1D1aVoW/BQPbue5kadG7bPGNMAufDG97zR
 DTIqauKgc9+6o+lE9x9k8tvP0SGnOiLgFoE4CGm0MArZmlpdj8ewoVcgtyKWk5HW4YuKlvVnAFB3ZVFOoVAo3Kxf31Lk5Zq1+0eqvx1/c2LKKAmWh7XndKP8
 N/JJ+QzDmUN+riSRkQ6cdU25hIxHehCNmNxsLrAndngSlAFFMgSPFlufKBV3LUHAsqB/tVlRsvY1yXQ3l3Diq3amCWHcRQfDFR6N+ZkBfFZ8O1UvcgFZyANW
 JqHNNg/MCyV1tsjFo6ZZl9KnkMYOYeM7SZGaVqEF+XT+u+8pveRc6kPSZufFfy62wQ1nz30akqCTo8HYCZca+utl010WIQOTmJJ9IH75mxfv39BHfGFVYd9r
 ZgQG4ywkWD72irQwXnnZpH6xOIL2N7+DgOIxnOP8iG/UTD7kGjE31TgePG/E8U8kIoKI4+ojQZh0Ugplr5H0omiv45+cmkw3eb1puMSGCEw+1lsnxfxyMwsJ
 nWmb+q0zQkQ09T/HFzrw0wdO

i.Core MX93 is a NXP i.MX93 based EDIMM SoM by Engicam.

EDIMM 2.0 Starter Kit is an EDIMM 2.0 Form Factor Capacitive
Evaluation Board by Engicam.

i.Core MX93 needs to be mounted on top of EDIMM 2.0 Starter Kit
to get the full i.Core MX93 EDIMM 2.0 Starter Kit board.

Add bindings for this board.

Cc: Matteo Lisi <matteo.lisi@engicam.com>
Cc: Mirko Ardinghi <mirko.ardinghi@engicam.com>
Signed-off-by: Fabio Aiuto <fabio.aiuto@engicam.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0027201e19f8..b497a01c7418 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1265,6 +1265,13 @@ properties:
               - fsl,imx93-11x11-evk       # i.MX93 11x11 EVK Board
           - const: fsl,imx93
 
+      - description: Engicam i.Core MX93 based Boards
+        items:
+          - enum:
+              - engicam,icore-mx93-edimm2         # i.MX93 Engicam i.Core MX93 EDIMM 2.0 Starter Kit
+          - const: engicam,icore-mx93             # i.MX93 Engicam i.Core MX93 Som
+          - const: fsl,imx93
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:
-- 
2.34.1


