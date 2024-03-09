Return-Path: <devicetree+bounces-49565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E393877013
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F7A51C20BC1
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 09:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC9B3770D;
	Sat,  9 Mar 2024 09:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQomdCuw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706883715E
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 09:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709976764; cv=none; b=iFrFI8OugIoUDuEAHnaFqSNiY6kiAvGI06G9FuruRBDAbSq1RQ7GMoemuNBKJG463jhw468qEE9dLHg2Xr16asUqgTB6T9ukHHthPYJkKItsFPX5Uqs9EdJ7wn5eOt+tmosXk9QMjetF1gP0wVrR7pwm4xXdTfKfdT0wXrjGBgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709976764; c=relaxed/simple;
	bh=51IkfJUdDbep8bKDV1NsL+iKRnWKcY4feKhjP1/tvoI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CtV6O9YoHZTw1kr8ZLQvejVi6qVD14jXnjiI+tbKDepw14p7LZu66Jc6w3MD2RicPfHe6JF4vIo0X+s/QbaOrte5zJDh5YsL8MD+jI3BOYwi7/PhOiselXqs3UHPaprNhG9u6wFoCA7rwaDFMCqcJOYi0KSm9T2XVqkeD3teJKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQomdCuw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 877B8C433C7;
	Sat,  9 Mar 2024 09:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709976764;
	bh=51IkfJUdDbep8bKDV1NsL+iKRnWKcY4feKhjP1/tvoI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lQomdCuwRMm3DeJEDx7MZlr/Up22GYXUl3NwuHNpWRagY0vmjKAhGP/AcjP3jNuvj
	 q7BZZzMr10ODCATU0NA6U0SvJDNCw2jwQRkUrkSeTym51qillwR/BQzJNwjgtFf8Zx
	 7RJ6+o8kcEiEkW/MvEnqASnmUvGP6rOWN3bx5mZIxvw6peBctyQmHFfV/kwAaln1/Y
	 9iafaU2zJRpdjcN5ntn5GVBxxO1QJMtojQW/8/FJoD0PmzX+54zhub9B6eqkaRQlBa
	 sgqNxWVgXkyo1FshTHpElHoThe2i5NUPloBfS+4aEimxEJZXYaYlENEUFgyyio662/
	 6ew1ElWcRvGeA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	lorenzo.bianconi83@gmail.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v4 1/4] dt-bindings: arm64: dts: airoha: Add en7581 entry
Date: Sat,  9 Mar 2024 10:32:14 +0100
Message-ID: <ee9cda964dac62d38d1c239f7b189f707d3708a0.1709975956.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709975956.git.lorenzo@kernel.org>
References: <cover.1709975956.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha EN7581 entry in Airoha dts binding.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 Documentation/devicetree/bindings/arm/airoha.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index 3292c669ee11..7c38c08dbf3f 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -22,6 +22,10 @@ properties:
           - enum:
               - airoha,en7523-evb
           - const: airoha,en7523
+      - items:
+          - enum:
+              - airoha,en7581-evb
+          - const: airoha,en7581
 
 additionalProperties: true
 
-- 
2.44.0


