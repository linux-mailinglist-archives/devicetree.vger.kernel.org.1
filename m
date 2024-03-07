Return-Path: <devicetree+bounces-48922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C3C87450A
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 01:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 230B31F22902
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 00:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E5A1C2D;
	Thu,  7 Mar 2024 00:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDQh2OD6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF06B1859
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 00:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709770291; cv=none; b=UNSnq31L4rbYGJR9co+qShVQi7b6eFEBDasyNOpkpsOdARQWP8fU5kocnjU4iEwsbSjOeQ4XQKnqA6aoiQk+5CBBRfoaYqmoEwt0UXpiqBiR2xpjmcBDuZuL452mH4Z+uPs3yFzsm1TjOPDfwyNcOMQCLT81q8DLVDcj5OAcsnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709770291; c=relaxed/simple;
	bh=i5Iy82Vx71pxX2IFrQ3UutzjBxuNP99cZz6xqyd/3UQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qyjFMqtXVs0HaTsUO1t51dw5K/+PofWTPnWdj1YWdBJIAmMejhw0l2niRdoXYySArxZanXVGzMVpKY0LpXVuuCG/eIUct5QtX4hGMVcJ2w9qE/+BDL7gx+UEe9MepXrkU87aOV6wx7r0WBCyfGD+n3TlRqy8VWo/c+0V2YjJoNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDQh2OD6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E10DDC43390;
	Thu,  7 Mar 2024 00:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709770291;
	bh=i5Iy82Vx71pxX2IFrQ3UutzjBxuNP99cZz6xqyd/3UQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nDQh2OD6Ya3fZkb7UZIzZIVW1ce9uIjIUY3rIG9XbyffUFdUXk81xrlMf8cyS08lz
	 gEAwUFlbSokvmVzUrXxBT+GKV7d7A07IGqyEwREV8yu46XXlUsBseU8/fGLJXmVZHE
	 qrKfxzUCObeVyMM6MyhddV/e7KsFjRv8yS0a0vzvEik4phscae46rKtyh7CfvQVlzj
	 cn3h9uj1McbaBrvAxhty9F2Sx83o9P9sTfj558wKZ31ioXzcnGuI6efsrtD0kCZR6D
	 IxtBo4CB+0gg1S50ECp9gM3em0cni5XFVg7xiLlvdMEm6flyeJpq6A1ihZRTuMY3gR
	 8Y5iFJpoiKH6Q==
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
Subject: [PATCH v3 1/4] dt-bindings: arm64: dts: airoha: Add en7581 entry
Date: Thu,  7 Mar 2024 01:11:10 +0100
Message-ID: <b29cdd8aa093aa76c77b8f602fa9363a1676ca3c.1709768157.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709768157.git.lorenzo@kernel.org>
References: <cover.1709768157.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha EN7581 entry in Airoha dts binding.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


