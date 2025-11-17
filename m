Return-Path: <devicetree+bounces-239282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3311BC6383F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:23:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6AB354E74EF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2FE8299A96;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnxlweIN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7918428002B;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374622; cv=none; b=mlSOgEcqoBZbhU9JaMe9RwrYtAdx5PLavcCH7ByWlYinzvYHaoLKmjFOwH21xZJcMTquHGu6Jnuko/brTj/qdm0qm22nHbg2aHzuzCr6hqXT7Vv40jiQ5BWZbuW3Nlw6GSeKWurHHxcurqnCrLoJPCd6ZEbEgn24XYJ4tcUdIS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374622; c=relaxed/simple;
	bh=6fHVsbNH52PFtab2v6YfQkWbhwR0X63Y5FjKPOYJNPg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WOykGweENwqUBBlLu4FQD/m/ntW1rnCyZ5Td00uhbMEvDjPoM55enjfJgs8GhBEf2Vl2YYPqQn8N8vJAXhj9aOtarTBp2cTnDycsgoNT6SX8vgFJftvn69D3PLrZsDlXDBKijuU5nK2cltYuBKiQejV1S07+erx42vDVU1ThoR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnxlweIN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 290AFC2BC87;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763374622;
	bh=6fHVsbNH52PFtab2v6YfQkWbhwR0X63Y5FjKPOYJNPg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=mnxlweINlhwk0Qkt0Va7AXJFPrqDAjIEtTewz0NX8ViLXmhLHAuuJyCMMMLEBJvAg
	 ZfxQvHDN1UiTycL2rBXNRNQRNHahfjH0p/mQ26GG6uSfpFFNadSVJmdpRodju8C/2L
	 C8GqsQHApusF0Vy0UsTGVp/NvSB0Btlw7QfVfshHifdIK9j6PejYmo94ZHGXY+UNB8
	 RJjUn99XePwf90jc+jjwRmsGTh3/ug8TvsMQJvIGID0DqZPenu38BVpPMSHs2Zf07r
	 DkqKiEvADWRuAjJrTY3vEcXVcad/AdQ/mNkuZ9ux57gA+a+AwtvQ/qvFWU2MbbxJ+u
	 LfUhlor3ZY4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19071CEBF61;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Mon, 17 Nov 2025 18:17:00 +0800
Subject: [PATCH 1/5] dt-bindings: arm: amlogic: meson-gx-ao-secure: support
 more SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-info-s6-s7-s7d-v1-1-6ab8aab03dce@amlogic.com>
References: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
In-Reply-To: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763374620; l=1021;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=XEMdKYwBl9u+QWFcS52Jj/So1EuzFbtVf5sqvIVlOFc=;
 b=spJCoSzfIT9m6jM1W2g2a3W28/U3k5lbqXxDLrjHJkLFwDFPWCbxa1KPJ3CWm/zhlJoM+q+Kt
 1+NRjs+owwTAo4RHmTCuDwgxXyyDUr47rqwzS80havhlRdpMT2N6Zgk
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add new compatible for ao-secure of Amlogic SoCs(S6,S7,S7D).

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 .../devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
index b4f6695a6015..fa7c403c874a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -34,6 +34,9 @@ properties:
               - amlogic,a4-ao-secure
               - amlogic,c3-ao-secure
               - amlogic,s4-ao-secure
+              - amlogic,s6-ao-secure
+              - amlogic,s7-ao-secure
+              - amlogic,s7d-ao-secure
               - amlogic,t7-ao-secure
           - const: amlogic,meson-gx-ao-secure
           - const: syscon

-- 
2.37.1



