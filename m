Return-Path: <devicetree+bounces-127278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB94B9E50D3
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 10:11:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36DCF188367D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 09:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35222066C7;
	Thu,  5 Dec 2024 09:06:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D25205AAD
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 09:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733389593; cv=none; b=Qc+oqW6snOHbojedshTuFMbGUlM67HRcMkRZzo2YtPXkuiNrM6fAahTsWifHWNLrXX+VeU76RkED6OVb9qNokGz/CDemBAxvCSGReD3GruQWIRp92GrSnIGCS2KgbIvuNgNbQZvtNeOddI4egQyFkFlje729h/q4PBG7h/Sr6SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733389593; c=relaxed/simple;
	bh=18+pW2kWUE/Ue5Yvz/lr13w8by67WAGX398CfJwKjvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hJeIfS1I9KHHrwXgXcl8ppAzW1R64xM1Vz3aB2aMqGQvWLd6hmtp5sZXOC9qpx8mFwuBAQ8lCBMF0NuQIVpG0/Zqb7YJD6Mfrw7lIyMc8h/YVQc1Rf3cNNhG/Z5SsPuii06uNZVQkDJHgJ2Ctz13o98W7/I0tNIk4eVWD7uYXBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tJ7oV-0004Ks-NK; Thu, 05 Dec 2024 10:06:23 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 05 Dec 2024 10:06:05 +0100
Subject: [PATCH v3 5/6] dt-bindings: intel: add agilex5-based Arrow
 AXE5-Eagle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241205-v6-12-topic-socfpga-agilex5-v3-5-2a8cdf73f50a@pengutronix.de>
References: <20241205-v6-12-topic-socfpga-agilex5-v3-0-2a8cdf73f50a@pengutronix.de>
In-Reply-To: <20241205-v6-12-topic-socfpga-agilex5-v3-0-2a8cdf73f50a@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, kernel@pengutronix.de, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add binding for the Arrow Agilex5-based AXE5-Eagle board.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index 2ee0c740eb56d63cff7767167ee3c640beba0803..03de49222d465584f24cc6c7dfff6ccfe304db46 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -24,6 +24,7 @@ properties:
       - description: Agilex5 boards
         items:
           - enum:
+              - arrow,socfpga-agilex5-axe5-eagle
               - intel,socfpga-agilex5-socdk
           - const: intel,socfpga-agilex5
 

-- 
2.46.0


