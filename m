Return-Path: <devicetree+bounces-79961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2A3917785
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 06:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C9B31F23653
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 04:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA200148855;
	Wed, 26 Jun 2024 04:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="cOlrSKzE"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58A213AA4C
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376939; cv=none; b=s/7jpeI8NuR5pUMvnxIF0xRp03yJs/v3u9c/bPp09WcOyvqrQEfORfyUdqoIonRXsWxTVT5s3DT+IGjoEBI005irfLRFKJmKqcZzyfygg/YZ5xvWFSSkstDc14ggCjjVAQvWKEBXl8aGh12aG5rfF4HTHAV4DR8e648Vz3k564c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376939; c=relaxed/simple;
	bh=cSteKp6CIOnq1PYX49xABbAigJDBuMpb7FyGBju3kUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dikjVrwnPu1jigOGxY7+7srxWrkAEctkw9mYNLyzFLyKi2jKdD8QdMEexkhPZGuznpjvKbz7mEhiPCL3EtL56dsWzNFy4lGxqrSyNY3xdjbBbNq/+jaXQlvRGPaqsO/XdriPv3KrYG/krmewIwTlvgB0yCWGk+42CWshvIj/ZoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=cOlrSKzE; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 202406260442108fa0fb07094e95cde2
        for <devicetree@vger.kernel.org>;
        Wed, 26 Jun 2024 06:42:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=HcAaeWHnc9AqXonQzh8RdFlKgEgIVm0dEwxF9CuTCBs=;
 b=cOlrSKzEK/nC5Bi5DyzXX58+sjx/jrvroS+O9fosSFJ77CIiHiRwniVcMC0ymNSas+HYts
 flMkoO51MV6LOEiE3nh1MFY67Iudes7cJbc6M6FAL6RZi6I6EQxa2EtYgx5sXkBl28hEaMYC
 OV9iqZHSk8aSdtzNJ6rrYpkMzQuAU=;
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
Subject: [PATCH v2 2/4] arm64: dts: ti: k3-am642-evm: Silence schema warning
Date: Wed, 26 Jun 2024 06:42:06 +0200
Message-ID: <f46bc2b35ff3c3b58c8825cc3c8b4d2f079a37c5.1719376928.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1719376928.git.jan.kiszka@siemens.com>
References: <cover.1719376928.git.jan.kiszka@siemens.com>
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
index e20e4ffd0f1f..0e42d09aa785 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -640,6 +640,10 @@ cpsw3g_phy0: ethernet-phy@0 {
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


