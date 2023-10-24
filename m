Return-Path: <devicetree+bounces-11442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 796FB7D5CAB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:55:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3281A281ADD
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9CF33B786;
	Tue, 24 Oct 2023 20:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="SOB6I4ME"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4752E3B2B4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:55:27 +0000 (UTC)
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [IPv6:2a01:4f8:a0:821d::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D359A10D5;
	Tue, 24 Oct 2023 13:55:20 -0700 (PDT)
From: Stefan Hansson <newbyte@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1698180448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WyL/zzD9SEbdEVP0sS0d2jVD0oYU+zFu9fVpTgzQOmE=;
	b=SOB6I4MEfwEiUdEZZlDPhXLfoW42dnJhtdjDII4/d6BwKVgSnhzcXTvN1J/KE9kXHot94B
	lkkwp0eIo2G+RkZ/RPcdqkqjCX3bZ+rjRq/wnd4u3LMsV111AEty32B4KaRsQorYLo3Lxr
	7P9C2J35wZRH121waAdu48qE4bgy0UA=
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Stefan Hansson <newbyte@postmarketos.org>
Subject: [PATCH v2 4/4] ARM: dts: qcom: samsung-matisse-common: Add UART
Date: Tue, 24 Oct 2023 22:33:45 +0200
Message-ID: <20231024204505.125813-5-newbyte@postmarketos.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024204505.125813-1-newbyte@postmarketos.org>
References: <20231024204505.125813-1-newbyte@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This was not enabled in the matisse-wifi tree.

Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
---
 .../boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
index 11fec4e963b7..35290ce63b40 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
@@ -233,6 +233,10 @@ muic: usb-switch@25 {
 	};
 };
 
+&blsp1_uart3 {
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators {
 		compatible = "qcom,rpm-pm8226-regulators";
-- 
2.41.0


