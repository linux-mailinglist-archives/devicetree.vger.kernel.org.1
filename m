Return-Path: <devicetree+bounces-138300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5299A0FD3B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 01:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEEDF1888AC0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A694C6D;
	Tue, 14 Jan 2025 00:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="USIcRRT8"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ECA81BDC3;
	Tue, 14 Jan 2025 00:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736813699; cv=none; b=lLNUhxEMf89VV1MUvNFY3SAtzffJXup0gA5zE/yLRCzDseeB4WVU/slrknrpevNiHSYbAZwhTjPTxjE4LVKH5rgifP5WLdlqmQj7N9QBSZY9k5hcIkNI7K8QFt/m9ew4ecrsle/emcyY4x55Al2u8DoXWn4kxUvNX9Iq9YRjwN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736813699; c=relaxed/simple;
	bh=aTbESRYGxTwCplB3UvZLtGH1SGInBgF61P/F7AdQGCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PcRH+BZ76SQNaCcxJiihwHxaGB2SQToEkTEYR6eAv16IYLwGybvoUrkjkl6ZTHBuxlELCNNv7rca/cerllKhK5WT9fA0Z7nE4J2kE0JIsKKNfqqEY63irAwOWJ9nVP9+r5scAKiPeIGyy3BduBy2NDdHwZ4H06oEn3fE5rQd0DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=USIcRRT8; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 19B757891C;
	Tue, 14 Jan 2025 08:14:54 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 19B757891C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736813694;
	bh=11bw0J6qO+9mxKLe0Z2Gb7Ay6M6TocNEYgsoy2WMvnc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=USIcRRT8f4K4RNSLnwiZhfBDotI352qD2GliYOL617lfWjfgz2Q8WxsLNduKaQAfN
	 RBM3/BMZI6BazPtuSu4gP9QA5SdsYhwNsM6eWX91dPEWY/wrbf+hPS077jMWWQ2W6l
	 WvAQuwSRGIpmg0isi/WF32mwSD2b5CWozpCXgsbs=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 2/3] dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
Date: Tue, 14 Jan 2025 08:14:10 +0800
Message-ID: <20250114001411.1848529-3-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250114001411.1848529-1-bigfoot@classfun.cn>
References: <20250114001411.1848529-1-bigfoot@classfun.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This documents Ariaboard Photonicat which is a router based on RK3568 SoC.

Link: https://ariaboard.com/
Link: https://photonicat.com/

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..4802ced008b7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: Ariaboard Photonicat
+        items:
+          - const: ariaboard,photonicat
+          - const: rockchip,rk3568
+
       - description: ArmSoM Sige5 board
         items:
           - const: armsom,sige5
-- 
2.47.1


