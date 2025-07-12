Return-Path: <devicetree+bounces-195708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E075B02C35
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 19:39:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEECD1AA09D8
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 17:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1558F28A41E;
	Sat, 12 Jul 2025 17:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="L6UiUCsH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E6A28A40C
	for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 17:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752341912; cv=none; b=Tdb7l4U9vwETdb38X3JskMOUb49eHB5Vg5ow86+c2BYU5SnDkwDKWwrafwzC+uuIALP7NnLijKMm79PZ6AGm98XD6EGhYcsF43mO51dxU9RjQDHQZKWtjcJGe6+p5SM6JOOmSoFj98YYVTJT0TfDtUZLVq/nYAcCQJJEPIqNjqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752341912; c=relaxed/simple;
	bh=f/8q8zHP5f6JhZn+IezboBYlfUXc8+YlmLFj4QL9tBs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r9I0WEtb3qkqK4k2TjN+a5/gnIM5r/bogELV1Uv8BT6T78/UWVCh3ETA0SDTos3NcFmdQuXCIIcfBVyubdQR5wmoAgeGrT4ZCICDQOlsHOQ8cdarLVp08pZqtjI03lDXqbzqa2QnIhboiAsqXGeSWq+gslkG7/ejODIoPaXPFvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=L6UiUCsH; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1752341909; bh=YKPl+FPnp3Ba0e9JwZfuPZ/chVf7stgdpzJhCfjh7FQ=;
 b=L6UiUCsHKn6c9o3Gum7NHS61p9fwcOlA8zWI95MJkjZqFCKadK5T57PHWnMMD524wd4g5P0yn
 t6RO2CPGJHHnmZeMN0Y4LhpKyHG0u0dVEcQJpBoIp9OJpp6dh9A/+JasSgDzg8cDeFnYTafLpdx
 k1vjewkiw8TNjTCEgwvUqI+fO76TKoVhjhmOCCctQ3zelWiDNr4/834Q9aDYQPO3J51keV0Lhw3
 tHo+OPj9I7y2TFmBYKMQxm1lDe0901ULs3Ie83WvZ8tazTnJoieu9Gj5BCOel1fWiZkUyYytOSn
 h/xUJZRtCbeiqIC7xTxKnJhGd3Z73euBzAXq5FuDPkkw==
X-Forward-Email-ID: 68729d93d7dd91652d16c1ac
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/6] dt-bindings: arm: rockchip: Add ArmSoM Sige1
Date: Sat, 12 Jul 2025 17:37:45 +0000
Message-ID: <20250712173805.584586-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250712173805.584586-1-jonas@kwiboo.se>
References: <20250712173805.584586-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Sige1 is a single board computer developed by ArmSoM, based on the
Rockchip RK3528A SoC.

Add devicetree binding documentation for the ArmSoM Sige1 board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v3: Collect a-b tag
v2: No change
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c5690098f2ed..43f6403ecad6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -54,6 +54,11 @@ properties:
           - const: ariaboard,photonicat
           - const: rockchip,rk3568
 
+      - description: ArmSoM Sige1 board
+        items:
+          - const: armsom,sige1
+          - const: rockchip,rk3528
+
       - description: ArmSoM Sige5 board
         items:
           - const: armsom,sige5
-- 
2.49.0


