Return-Path: <devicetree+bounces-242609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56329C8D187
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 08:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1349D3A6587
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA0E313E0A;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHNHu8KO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CA3271443;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764228644; cv=none; b=pufePtNFeHEFX89BP97dQN2IWaKSH5YfwzNus5RdG/JwsLSc/M37R8fcYsGicwiYjuG2y4GML5hRPq6E1Cre4mIIZaUA/H2oB/3YF6j+eJ+al/t/WQFBEHK592x14DEWW8pCPDOGJUS+m1UZNd4Cta3I1iYbbRCF/gO1NAtQ5oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764228644; c=relaxed/simple;
	bh=Vz5O60fug17WeVa5R0d9fG0WfBfnUIbjwQ8BzF1UNpg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ngwZBx/7YjQzyfML3dUUAz7BgPa9UbRYSfAZdlIi5HD6CuR1GzAXEg3Wy8ARHgpOI9/KNW6/MgLE0m/lPS1C23XVuLgbEtegXJbEUr32qIDix8fLNNi5ZTzn/JnN/eOQ4ak9b8aO9ohapbTw8vdaSdd/xuxP7dEXTxIKsFgsAdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHNHu8KO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC30C116B1;
	Thu, 27 Nov 2025 07:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764228644;
	bh=Vz5O60fug17WeVa5R0d9fG0WfBfnUIbjwQ8BzF1UNpg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VHNHu8KOH0lIy85UVPOmTYKPX54am6IReBoOKdCvkXXG8q/RAyDOb9O0oNjdK3S+o
	 PUBYjdI3i9I0M8PUrrWg/CR/AfYijZcuPArQmWGUSF4iF/3Oxk3mMGDxubY5KOXi4F
	 uEEaCGDnBpCskPtra6wz7pRm54DdpKKa4uB+nWGIYKwCzgNx4ruCI7SFlc2dJDTOND
	 YWIp4tPV8TLLTd5nLY3u1RnbjmJ69cLRfQ8cFNrlge9edn6Um4AN7onkuLexb+XTw0
	 A0CgdsehL3OIthSiPJv331w1BduWWQdqawB7fKNbhUIlkkKD1GYS7YuYlPQtaegabt
	 P2rd8UOpnlYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA544CFD2F6;
	Thu, 27 Nov 2025 07:30:43 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Thu, 27 Nov 2025 15:30:31 +0800
Subject: [PATCH 1/4] dt-bindings: reset: Add compatible for Amlogic
 S6/S7/S7D
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-reset-s6-s7-s7d-v1-1-879099ad90d3@amlogic.com>
References: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com>
In-Reply-To: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764228641; l=907;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=2OdK+NCY/4qzOMjaRXwivbbB/E5n4gnbT5hQIb0Cm7w=;
 b=Nni4wp2m2zGAhsKqwfP0M8WsDPvUTnG4Clu5t7Ln4JMqDxq9m52wyAoK7g+VEMXQNkb7oIpi0
 YSfvz6dJag5DYsqZrNwv4j5qMKQ9UuadQghQJcJqBVPDfKHjp5KJTwu
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add compatibles for Amlogic S6/S7/S7D reset controllers,
which fall back to 'amlogic,meson-s4-reset'.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
index 150e95c0d9be..ab0239cf16e5 100644
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -25,6 +25,9 @@ properties:
           - enum:
               - amlogic,a4-reset
               - amlogic,a5-reset
+              - amlogic,s6-reset
+              - amlogic,s7-reset
+              - amlogic,s7d-reset
           - const: amlogic,meson-s4-reset
 
   reg:

-- 
2.37.1



