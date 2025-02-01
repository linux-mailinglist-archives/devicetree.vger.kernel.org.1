Return-Path: <devicetree+bounces-142276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA37DA24B95
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 20:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C12D3A61F5
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 19:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8AC1CDA02;
	Sat,  1 Feb 2025 19:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="QsQ+wdcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E7E1CBE87
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 19:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738438309; cv=none; b=BtUx7Lg0BDpUnzNZTS4VE2fdP9Naa0dm3h0yD8TITipUlNQDf5Nz7sAozDqEArba4M1QsLv3y18t4gEDw4JY6tAuB9w5vsKq0DTGJob+uqNPkdNi8+Yg5kYtn5p9pxyJpgTN+l+ReqiZsi6I/M+HlC20CTJB0T4s73AS79dPTiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738438309; c=relaxed/simple;
	bh=Dl7S2xG3fQsotxVQq04GtSRshlgrV3KT8Yz0tFz9t/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GIt0H2csGMstHBpZiFa9R3yYU7bP71xeParRzLmDyNS4RLbPSkSvozJeKz5j1eTj6D6xWaMwTYYlujKoyZKii9dDX1VzacXdToykXh42/mEjHFP+gFWXQrONltNUq0wElP/HxhqFO1Tb925D2chVk0FJGXdDbXkFwwRZQxYEq0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=QsQ+wdcQ; arc=none smtp.client-ip=91.218.175.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738438304;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GezYrVzu+YD7bTihqKHBeWrBY4Y7kTGdsfDTKSVrcYw=;
	b=QsQ+wdcQIP4WYeJg2m4RJE1msXtINK9SDawNFkugGg5x7nY5AAH2vOzB/fFV/jX0GkHNP4
	xeZ09ZiJupGf6XYLiBra6ydyUtRjqj5t9wr9S1pbo2WcIJy3CpolAmQYS6hLQPREImQfaO
	k5EakChRlKVmilag9erNiBwLtAUOnZTcv+5tfzU2yEsikCerhjlpYA/5L7owizQs11KWyI
	mn/2GwU6rDV4wQIoF8p5gMtPteu2fmI5PgPEGglI3oVZo9cIBGE/WDP/5mDWoAengOU6pK
	YoKFZCMNTdbczwdzs0mmZ89ofmSjWMmx/btqFlOQdSPsf2MQZkieWkxlCSn5Bw==
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	funderscore@postmarketos.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>,
	Karl Chan <exxxxkc@getgoogleoff.me>,
	Christian Hewitt <christianshewitt@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV Stick
Date: Sat,  1 Feb 2025 19:30:43 +0000
Message-ID: <20250201193044.28856-2-funderscore@postmarketos.org>
In-Reply-To: <20250201193044.28856-1-funderscore@postmarketos.org>
References: <20250201193044.28856-1-funderscore@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Ferass El Hafidi <funderscore@postmarketos.org>

Add support for the Amlogic S805Y SoC and the Xiaomi Mi TV Stick (aka.
xiaomi-aquaman).  The S805Y is very similar to the S805X, with just a
few minor differences.

Signed-off-by: Ferass El Hafidi <funderscore@postmarketos.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 0647851ae..3403362e0 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -73,6 +73,13 @@ properties:
           - const: amlogic,s805x
           - const: amlogic,meson-gxl
 
+      - description: Boards with the Amlogic Meson GXL S805Y SoC
+        items:
+          - enum:
+              - xiaomi,aquaman
+          - const: amlogic,s805y
+          - const: amlogic,meson-gxl
+
       - description: Boards with the Amlogic Meson GXL S905W SoC
         items:
           - enum:
-- 
2.47.1


