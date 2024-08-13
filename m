Return-Path: <devicetree+bounces-93149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C62E94FD88
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 08:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB4B61F23A34
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 06:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A27F39AD5;
	Tue, 13 Aug 2024 06:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="NYHfQmSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE00836AFE
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 06:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723529107; cv=none; b=G8isNKCehr99uDOr6VePt/pa6CjCXYCEVmpw3ytjId/A/7ovR4DPCl6Kr+CiiLZRchc30kJD6zhIEo1u4F15hhNZD9E9tUbCZ0C8WgaGIqa2XVG+AvfirSvXiLAWmnqXcWbAOAoCe7LfYLuEYuxvvg5MSjKJaUPnDXLWZ9Pf/TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723529107; c=relaxed/simple;
	bh=xwO4qZm3Gbqbi5R6FcqkiTL12YiVG+Slagrb4NBEdyM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fYKyaX/dzWLNk7BwzwfRiu0r2vqnDq+ghy4ut6nn88JPdEYyGtspy90KY2pA7IHLXEjNs5rgmN51HzV8/g2Py53j/L13Kp4X9vg0XL0LrRtNdVgiVafsnRi6ESZsi3nihS7OBTrag7vOgu5yW8RUZHz6S7tBCTTrL0KCGO58wEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=NYHfQmSj; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 202408130605019b1cc12bcaabe4b55f
        for <devicetree@vger.kernel.org>;
        Tue, 13 Aug 2024 08:05:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=nESrF5vTvc0qOhMZmjkHj4ky91fAdlGMxwFql/ii16Q=;
 b=NYHfQmSjhbe7a9WCrV7WcuKchcxXHQCFiyR1MwRd+wn3tYvaelipfjg1PWCY1U3pO6lOby
 JbysP06T37errJhkP2YWE7p2WqKvHZs5f2spGP6qJ7zefYwzNLr48nxiV9DEAesyir4a4fDL
 d5gzsyYoMIz7nsVZE7AOnGNL2GB41IPoHfODgOz8A0Vlk66zppUXXz0TA7W1KAlrF6/gb24H
 pl/8QEI7qDKX56AdYTXoCyAkSgFMAWsX8+vcyjGQAgpfrMy7ezS0c0MK9DvUtSU1/CprNTRk
 MAlYg487drK+1nDSOXB0zI5WErMShT363xeRFu/DhHpmXfFawxM+if5g==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v3 1/3] arm64: dts: ti: k3-am642-evm: Silence schema warning
Date: Tue, 13 Aug 2024 08:04:58 +0200
Message-ID: <202d7ccb9796642c2c05419f77c402ebd6719a84.1723529100.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1723529100.git.jan.kiszka@siemens.com>
References: <cover.1723529100.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

The resolves

k3-am642-evm.dtb: adc: 'ti,adc-channels' is a required property
        from schema $id: http://devicetree.org/schemas/iio/adc/ti,am3359-adc.yaml#

As the adc is reserved, thus not used by Linux, this has no practical
impact.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 6bb1ad2e56ec..42015a55e0d3 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -646,6 +646,10 @@ cpsw3g_phy0: ethernet-phy@0 {
 &tscadc0 {
 	/* ADC is reserved for R5 usage */
 	status = "reserved";
+
+	adc {
+		ti,adc-channels = <0 1 2 3 4 5 6 7>;
+	};
 };
 
 &ospi0 {
-- 
2.43.0


