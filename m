Return-Path: <devicetree+bounces-225770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A86A2BD0D2D
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 777823B8893
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 22:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC04F23BCE3;
	Sun, 12 Oct 2025 22:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="O+Uv3TnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE611547E7
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760309270; cv=none; b=Bm0DAPNUPR+ASaJJvkD9vqtMwlgry0fTNQZQf80xkjkNfTQ6zLJULkAIBEZv1ZtWTZxd15ISl/w2SzAIUAgXI3ZF4AycFOYICibtr/4fXCEzvYixFhJpavO0rvzDcdlY2FBX018irs9409XKkNxmfPtwwBaV3pMlVaWPN8Awqvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760309270; c=relaxed/simple;
	bh=EyPG3Fi950uiyAJD5Mohk3oQRg/ePz+PGzh3DjGatOs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k3oMaiAwc0i2hNyu9G69rDLeuyNrv/PcZqoNhnMe/EPClnc44ePPSadrKbRZ9h07M4weW5xVwo5RaIf3EAu3AH9OAX9l6ILD4J0QrtA7J7k/lTE2AUmxDBWBwbG0X6IecCYMrcfPUlrJiUvCU9Bqvps92qtWBwZZERSct22MeWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=O+Uv3TnQ; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1760309256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bcjVnsy37RIrdVgMtxg7YSO76T0MhxQKRy53qIOEJRA=;
	b=O+Uv3TnQt7MwbJw+HsFtOncgRcYm6qsFe0yqil7KNbWr9PGWi75Rv0zeAspofP8jhunsPn
	UftV6XtJ1pWqgCl5uybdT5CXQEo14ua4rD2TWUie2DD9x3Z1VNQZKvOfaxjDMdgKf1Tdxq
	v/jYRdNO/AOV/UvP0Z8KtZe3VxZjINEVfHvg5KRNX8n0RZyFP3YmLcI6xDisZ9iuR3HHPj
	jp9sAqs7OVp0EqXbA+/ThVVjtgYzFBfnbdEX7meYjmTTXFASaFIy8Ps3IX8j/GcglX/Lcs
	Ypd5wt1IPfgm3i3dhSVx6eImdSSPORjI9UP0y9kHHnTCnZp+od9QZGHIvZ6GSw==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Val Packett <val@packett.cool>,
	Laurentiu Tudor <laurentiu.tudor1@dell.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: x1-dell-thena: Add missing pinctrl for eDP HPD
Date: Sun, 12 Oct 2025 19:40:08 -0300
Message-ID: <20251012224706.14311-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The commit a41d23142d87 ("arm64: dts: qcom: x1e80100-dell-xps13-9345:
Add missing pinctrl for eDP HPD") has applied this change to a very
similar machine, so apply it here too.

This allows us not to rely on the boot firmware to set up the pinctrl
for the eDP HPD line of the internal display.

Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Val Packett <val@packett.cool>
---
v2: fixed commit msg style, pulled R-b
v1: https://lore.kernel.org/all/20250927032330.21091-1-val@packett.cool/
---
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
index ef83e87e1b7a..0aad80a1159c 100644
--- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
@@ -1104,6 +1104,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
-- 
2.51.0


