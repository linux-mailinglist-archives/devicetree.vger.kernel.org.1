Return-Path: <devicetree+bounces-246067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C49CB859B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B4FB300E01C
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965003112BB;
	Fri, 12 Dec 2025 09:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="q/qrF6oH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay175-hz1.antispameurope.com (mx-relay175-hz1.antispameurope.com [94.100.132.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CE030F922
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 09:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765530008; cv=pass; b=EZ19PVuGHTWM0Q1K2oSnBblkRfcG75wSQN2y1MN/MeBJHFpn32zfcM2PfLxyTfwnhrtbedWMkEjcygXbfTqfACTHJI/39+dN1817WLmRWDaWJE9PuRpAzSImAT7Qq19BZk1iCw92ZWRxLEiQ2+dpJ8J7UKz8IVfTZIJEG7q64Q8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765530008; c=relaxed/simple;
	bh=TTPuwWyrhwIbAh7bSDP8tr6fzMuC7IEfYtFGTQnG3t8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SkhBwfmbKsZ08IH/I9+XO3KX3hthb40iPfEA9XDDsekYFfLgy/DYUZy+1EY8YXTDYq5b7HaTeJCq4330+XMq2Tq3CqgYp8NdAI04326PmwFXBFf9EToGD6iSDfSTIEjJKFCRbqHdkJ1QqI+tpNslnlsRPq3esJXveH/IPzqaCzM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=q/qrF6oH; arc=pass smtp.client-ip=94.100.132.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate175-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=EPA4cw3Gvq6SBCJV/vWcX38SZi8PRTPj9bVk8hJPiao=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765529958;
 b=CVkQg1FdhsuHu247BZ/oTEQtDGhXlZdHOSza8rt3XptfX0CDERVdsWiBRaTKKYVD5hIixMFe
 4q8FfTkbnPSAOrxX/cbrYeXPBtyk6MfU6ClcAERivvOlTQhetaaoVwOQ8iJN077s7f5o8bC3TSx
 07JcoswRGMfBqL94IrsTI8l3LayGAbgLdYAzmAXQrEq1310NeXjZka2u8r656lOrq3Mdo0BXYWh
 X5h5wvykyhbHuFE8CpE887O28DDiO6HQcpf6YC7QbWCKfwqdGI/6e3pMkRMO3W2z6tVIOEcl86+
 Rz1cW9cRoPmLN/CqFuBhRjJQSHBoQKMDkU3RYhtZd166w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765529958;
 b=ZAmfL/8EIozx8KsEj5u06fvILW/O7IfIjK8r/Kw5JlBW4RhN3yxHLDcvER5RjYXGoUtniokf
 jfdv1aeHFDK6Ca5K7PFL4BMWG13kzy8qEwtJc/Pnm4PBMsLccoHkxP2xQnVOXm5jPwSVO6htncr
 tH7zGJTJPxWRfvu1DQpE55PVuM3t5hEWzhCezYDv5Y594CR2+aK+f4xclJuoPMX+SFMsQk624NA
 iAhI9y7QuVD0/W4AMJ/oJuGh2NytIqVK7ZuKmQqsSWT2yAcfBHyJSfv+u+gRFvP4sumZeyj19Xo
 YgIlxdAPkxvzzq3gbvXjkXOsTgZrQN2JoLu6dNZOXXBng==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay175-hz1.antispameurope.com;
 Fri, 12 Dec 2025 09:59:18 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 434D5CC0CCA;
	Fri, 12 Dec 2025 09:59:10 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: power: fsl,imx-gpc: Document address-cells
Date: Fri, 12 Dec 2025 09:58:59 +0100
Message-ID: <20251212085902.103507-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay175-hz1.antispameurope.com with 4dSNg273DBz2SSMs
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fa6caea5f90cd85704070cb335c8b449
X-cloud-security:scantime:2.182
DKIM-Signature: a=rsa-sha256;
 bh=EPA4cw3Gvq6SBCJV/vWcX38SZi8PRTPj9bVk8hJPiao=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765529957; v=1;
 b=q/qrF6oHkEBqE8k0ziJFCdtNT7iHGOjDXmcmWoxlQMx/rgpx5scBMYPVfaMWOeM2hITIgejn
 iX+sM53ewvM2TnhneIGXm478fvgBWRYzB8H3GgY7MDP0wu9gfWn0jg/WhJvfyiZSvtC5Ug+uRKC
 NH//C1KM2iFrspealBhoD5KvcGjmPgWUmaMOj2Dgq6JD8a+G3bu6wW9DNfUETI7XA900W7Of0BJ
 m/2pHddB8eq5z3SYDYymExkOY+bjJTVz0GD/Z6u+3OjSkcYfwiUyfVgYT+cmCNcMznKwGOxCEM2
 3bJNUCjM3nDjmefrFfDO/zm6X5ASxpd0g81hKcD5WYdmA==

The GPC power controller is an interrupt controllers and can be referenced
in interrupt-map properties, e.g. PCIe controller, thus the node should
have address-cells property.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
index 9de3fe73c1eb6..d49a5130b87c7 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
@@ -38,6 +38,9 @@ properties:
   reg:
     maxItems: 1
 
+  "#address-cells":
+    const: 0
+
   interrupts:
     maxItems: 1
 
-- 
2.43.0


