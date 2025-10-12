Return-Path: <devicetree+bounces-225772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFD1BD0D3F
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 726541891C00
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 22:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368D823BCE3;
	Sun, 12 Oct 2025 22:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="KUEdOK6f"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EFA21D596
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760309379; cv=none; b=gduvcW/Qbt6nZv78U46/o+Ricqe5RvLhpELkEv5aAUEZEH3bxXw7+3CbL0ww2HyDyp9Cs1brl5kL3WJFG3nULxWNCk4aLtK2JlQTDoTZIb2VH7DbfLNmowVMpyXIzgrTPMsFTX/R/bElF8IMX+CqHczsnagqZDBpsc6sBCDI+8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760309379; c=relaxed/simple;
	bh=++W517G07PbsPHf8tLIEwPk8Hn5slItVC8zFHbBE7D8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RO4L/9Hl07WHj/pB9GaWGer9+0IxwHth+WNLYtHg+kbUpr3otEiAtbB6PMJGXoOrLSot+AXMMODZAiBvPesMjjARSTcCbVONsXEZ1aiZw8NAkviuLwYU8XfXtkFcCU5BRJxEMo+rMBNZA/MmMnjkpSEsbhS8PByiMSNtxlyrDoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=KUEdOK6f; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1760309372;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pOzTHT5kWtnB8D7OyyyQQ79h5DZ+AVxhYATw2T0aDTc=;
	b=KUEdOK6f+Yl4blhQv4Ex4+6YS6XI8k0d3Iqp2tRoWBowRUSI5tYonsekiQCk1Xm4+sjsM6
	pBrmggp200WxegO93WazNz8LkNemU8NBrr3QPlJzX4wrmPoOl1/8ntcyyJuwfD73MYI+vW
	k9ReI1yTFu5y4gH8gTssrYU0m1CDVf+Oj73+cdqfLxYMWZ/o3UHI7laY2OOcls+kjjQEOQ
	AI+/YZD2ADudtMz5jELo+oL8VryBo+AfIvsPYZ7Od3K+ztT2GV5gf8isEDHi/c3xeKA1Tm
	zKZkUSHBHO3mpD2Ri/tTyrMfmI+HN06CwDLyracAKvhW1Qbjpy+lk+wWxkEI8A==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Laurentiu Tudor <laurentiu.tudor1@dell.com>,
	Val Packett <val@packett.cool>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: x1-dell-thena: remove dp data-lanes
Date: Sun, 12 Oct 2025 19:48:07 -0300
Message-ID: <20251012224909.14988-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The commit 458de584248a ("arm64: dts: qcom: x1e80100: move dp0/1/2
data-lanes to SoC dtsi") has landed before this file was added, so
the data-lanes lines here remained.

Remove them to enable 4-lane DP on the X1E Dell Inspiron/Latitude.

Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Val Packett <val@packett.cool>
---
v2: fixed commit msg style, pulled R-b
v1: https://lore.kernel.org/all/20250927032240.20759-1-val@packett.cool/
---
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
index d71b67824a99..ef83e87e1b7a 100644
--- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
@@ -1090,7 +1090,6 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -1099,7 +1098,6 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
-- 
2.51.0


