Return-Path: <devicetree+bounces-216999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C4FB56A66
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 17:59:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00084212A8
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B88112DFA2D;
	Sun, 14 Sep 2025 15:58:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EBB2DE1E4
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 15:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757865482; cv=none; b=nGm66iCoOjiDcW4XMcbku7dbJlfNySlh4WZR3S7triiFKyrFhj9raak+Tviz9T3wXonsYoZLtERRLigSDXOQPm3TAgoru4hMu600D/t+YuDFEfU6hvrwxVQrQUyy269Rxi+lzIj86oXcUNGTz5io4AMFOQQb1Fx+Gldt9OzV2ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757865482; c=relaxed/simple;
	bh=+iv5zRGMLQo5WENFMbbcB6yHAuv5xbx2teATjhd7cMM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JCEzjWiwKBYV4g3jRPrn5makrUMlpH1dukGcfanBP0TvO41jnHnb+J98nffW/b3NtGvDTGURUkOSqCNfdWcYPCStu8i5s68Idt60n38umNYnrlCTSsTtxLo3kYFkDTOETv28BRfWfvNDq9qkcs5xixOQVNgIJmyvjJIjSTD30/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1757865431t0c66b8ab
X-QQ-Originating-IP: S7nT+GMUYRpDXn7Z8+1Fwd49cQqEch6LdR1e2x1FIPg=
Received: from [192.168.30.36] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 14 Sep 2025 23:57:10 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2342445468012948641
EX-QQ-RecipientCnt: 13
From: Xilin Wu <sophon@radxa.com>
Date: Sun, 14 Sep 2025 23:57:04 +0800
Subject: [PATCH v2 1/5] dt-bindings: arm: qcom: Add Radxa Dragon Q6A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250914-radxa-dragon-q6a-v2-1-045f7e92b3bb@radxa.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
In-Reply-To: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, 
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>, Xilin Wu <sophon@radxa.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757865427; l=921;
 i=sophon@radxa.com; s=20240424; h=from:subject:message-id;
 bh=+iv5zRGMLQo5WENFMbbcB6yHAuv5xbx2teATjhd7cMM=;
 b=lIBliRBEifCegCHHvAD3Ro5Lo7s+VC/wQ3Xd/SUpe+Yz2/Go5nVIGWfUbpC3sVa6K8cY9J4Nm
 onNzwi2QWyNDWBX2+bOY+GKV5rs6ZmEaOjODsQCuIqCBHS8zWlD6LKT
X-Developer-Key: i=sophon@radxa.com; a=ed25519;
 pk=vPnxeJnlD/PfEbyQPZzaay5ezxI/lMrke7qXy31lSM8=
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MNbA5mkmBXEJbStYpILaPBz0Qu9jji5IMP5Dg3e6odWwYAEXp+urTvGG
	4SioFWxRjeeHawC5JsXoTIJj7sx8jX7KYTMBQGeirzcWYHiRpK9irzm8AAagOh/PKANCl1t
	26dBZByebAXjnWlgVewz+VR4Wh2PZSwzidVLw+HRoHSvtU7NRCUEKTpwc9emPcS0ts+Rk7W
	+78TUJp24jkxAe9Jlza7PZrjAdNH8BqZmBOsCmOi270yyiMsN/QvoILVqGtDxWzvMH2I/PO
	BtUDa7Q/bEa3y5RXrKwry5ac54wlUjFg7jIUL+Yeoa98Wm1fJz4xdi5+fwNNMvR5JfEX1Ij
	AbIUkigS4Lz63tgsOLOOC9pfIghTNbGa1EXZT6Z42p+4g/lh3eyUC06vbT9i2uiUaYi86iy
	iQEsRURSaJ8GtpKzcmw0+rogCko0GVFDuk0SgLBD1GYOs2CC87+egI7uq6d474VSr/w3z1J
	7BI3Jme7ryAz9WwfZBi9xF/OGL/uSfiEtEFxHRI3E9i7mCgzbnCvxTx/zahoYdbmLg+B/mO
	SW4w9+YYpnuiW/0suPxVG5xyx8eOqrQLSn9R18MPLCNlmyBeO6MuH74ELuqHbw++cOD/c4A
	bsixUor4q4EtwNScR+K46GHhzqXSDPiVJFN6LD9lbsG3j3d4d7CZJNTXjBjIfp4KlM5lt14
	KY6PLNaccC6B2xvN655xNbrAT8wVU0iVcVGACEdRLb6Bd++uzzRUwsbQSXZX86sRecpyUpe
	Gj2o8P5L0rvXHSUUlOmY0jPEWh9Wm8lQ8xnSsyEjpD7LKjeybhVEqpZDF6CtXzGVAzdt2bE
	ROeo7dVrfxcJ42AqptQXqcbrC5rOV433tlzz+M/hTwiJwyyDlaQMWkSrIHhnoSRQ9hUKEnO
	6gJyJnwk0ojBZ2myEGXtLw3+Uby3PL/AtKkJ7Xr5YHvo95pJnL6piW3igV6jUfyHpCqa9KJ
	9VeR+5SrZESlwsNRx6vY2dSZGdI2Ec0WODLHjk3qLkmAJgvDb1gOemGER
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

Radxa Dragon Q6A is a single board computer, based on the Qualcomm
QCS6490 platform.

Document the top-level compatible for this board.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Xilin Wu <sophon@radxa.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f3686f1647b9e2ea192c175b0b96d48a..a7469a51adf0d6ebc1bf25acce8f125a844dcdbf 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -339,6 +339,7 @@ properties:
               - fairphone,fp5
               - qcom,qcm6490-idp
               - qcom,qcs6490-rb3gen2
+              - radxa,dragon-q6a
               - shift,otter
           - const: qcom,qcm6490
 

-- 
2.51.0


