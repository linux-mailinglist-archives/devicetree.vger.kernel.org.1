Return-Path: <devicetree+bounces-198965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F339B0EDD4
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:58:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4AE8188C2AB
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3482283C92;
	Wed, 23 Jul 2025 08:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="uE9WLxBW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F41B2820BA
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753261046; cv=none; b=c6LHu1/bajYM3NB/MD1dfGJp+2jSmEgGuH2I2aUPN16CB0l6mydwAWMDLEiO4kB7+TJmtQgNxqmhpGWyKE8d10ma9UVzmeBP+bPQ5kQa6J0ehF+24H2Xk079Mv3CBrep8uvc7bRWpVktnKtB1Ot4m6SBAZB/3K1C4EGpI4c4m+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753261046; c=relaxed/simple;
	bh=8SCowtYA+H6rspvke1KAUKfarPLg2f1jV6JRWecdiKg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cStIlO9jYkX+RsDNaKACiOXOP/C/zBk5qqu4omJnkiXugn3JAMYBlMptRbXJ29Kp5OjSi36A1SOOi7ioLBxyD8DpXQ3oWgmjVFl6pFPo/9XRuOdVg1QRCy62R+86YrnQ8ykjBvPjVuabprgy1WJDgLRhv8ijOpixtwRXQKvT+Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=uE9WLxBW; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753261043; bh=VYMDQe/mQ1kKIZU+OHkaA1YB3avFSOAww6d1p3lXtB4=;
 b=uE9WLxBW0OWUeIG2TUSx47MYJotv0lWIVNyZY9C3lJaqngnBQmM0gzjs6ncadMD4zxUBpUA7v
 39fWZGJ56I9g8kufAC47PQz+qtAIsx4H2og+hLM/Em0IKxAzCcZENuXXlHHdALEs8eWQaUCeMUe
 wp6FeXl3gjRK1EPAraM7P1IkKWmz5EepAC/1P6mE/e1Wt5N++o0c0yEs7gxTs2wBhZcu+4fYnvW
 6I+d6EnxPn3zNXDqwnqPyCvKdrPCpdVUe+pIGB33LaOztE5KNFU2KwL2VCnYkrk8UBB4yyqBg21
 rD8W7Ru+LTOFzk9LPsdM5qc2xsIS2/WYhMtZupX9510g==
X-Forward-Email-ID: 6880a3ed144dc4a5e5baee49
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-serial@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: serial: snps-dw-apb-uart: Allow use of a power-domain
Date: Wed, 23 Jul 2025 08:56:46 +0000
Message-ID: <20250723085654.2273324-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723085654.2273324-1-jonas@kwiboo.se>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The UART controllers in most Rockchip SoCs are part of power domains
that are always powered on. These always powered on power domains have
typically not been described in the device tree.

Because these power domains have been left out of the device tree there
has not been any real need to properly describe the UART controllers
power domain of Rockchip SoCs.

On Rockchip RK3528 the UART controllers are spread out among the
described PD_RKVENC, PD_VO and PD_VPU power domains. However, one UART
controller belong to an undescribed always powered on power domain.

Add support to describe an optional power-domains for the UART
controllers.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 8f1b7f704c5b..cb9da6c97afc 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -108,6 +108,9 @@ properties:
       parameter. Define this if your UART does not implement the busy functionality.
     type: boolean
 
+  power-domains:
+    maxItems: 1
+
   resets:
     minItems: 1
     maxItems: 2
-- 
2.50.1


