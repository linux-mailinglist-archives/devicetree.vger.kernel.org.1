Return-Path: <devicetree+bounces-147649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB4CA38E19
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 22:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEDD13B4256
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C331B21A7;
	Mon, 17 Feb 2025 21:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="eYj3ws0l"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDC11A8F7A
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 21:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739827970; cv=none; b=WuIH30R3+kQ/pVpwuTwFQjbGWyWkJhS9C4XQ5Sz7Rvw3g9UQKke9JDI+DUuWrIfEY+1TFlPwDx++bcuJwKGhgsn9kWCQ+aeQmzSzTULzpu5q2xwQnAW/P/0iEY+mWQ1HZUXWqz44pFLZHypOOm6uNQPgmSGuVaRH2sr8u8ZL9zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739827970; c=relaxed/simple;
	bh=d90e+aG/dLPhZ45Wax0yq+hKJxVgTdMsCYq09/QZQ0s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z9HSAWudmMBf4afvjnazi4QxkhDy36iAURsMLxqdvSrvGtYrpO9fNaaIv3wiXQ0hechcwHODUHhekyk2SpIIXVmQ1jES/KTfpAkRJTgHzWVSGLIAk89z+nXdS/4r6GN0UGvCHrjna3IjW9NYs32bIN80rOlu8gSaFmxZWOYw3yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=eYj3ws0l; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=eYj3ws0lIGsVHsw3N0VISHwu3eK10dmpNuKwriaKXMewIeqstQmYqcC6SVFx2RA2uj+TbwUKhSj5xi95BcoKWLPfUZsOwSfrA6BLo0p6t6h/wzS173iJnmVPwfkP4xUwuCpLLanKxk3HA8Am6v0slaeUeNMVUvP39pKJavIcyYcV4fiBE8M1GOe2emvkvXnJgMn+sBzH9fToaUd2ZV/FbVTpjX3pnTx8GQ0mEBOY1GUVVwmUA/9EswdvD4KMO3uZk90G2Au7S1zmieKVdQZ/aIaFfWBRkCNlxOjdR/JH9E82sUJ3Rejmwy/IUAj4O1ci/+4wokKB8gQAfXIsLgR32g==; s=purelymail3; d=purelymail.com; v=1; bh=d90e+aG/dLPhZ45Wax0yq+hKJxVgTdMsCYq09/QZQ0s=; h=Feedback-ID:Received:From:Date:Subject:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 42194286;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Mon, 17 Feb 2025 21:32:37 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Date: Mon, 17 Feb 2025 22:32:05 +0100
Subject: [PATCH 3/5] arm64: dts: exynos990-x1s-common: Enable USB
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-exynos990-dt-changes-febuary-v1-3-99935218cbf4@mentallysanemainliners.org>
References: <20250217-exynos990-dt-changes-febuary-v1-0-99935218cbf4@mentallysanemainliners.org>
In-Reply-To: <20250217-exynos990-dt-changes-febuary-v1-0-99935218cbf4@mentallysanemainliners.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739827951; l=1301;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=d90e+aG/dLPhZ45Wax0yq+hKJxVgTdMsCYq09/QZQ0s=;
 b=Obkdhx9gjqTphT/XZf+SeeVBwNcPUVVI4LdkeHzZTZyuX9KjyvyWQzNj5ap2XocW4QEGQPAOq
 fDOeWiQk3dNBUD31zENjl+XuJqR0tH+pZwbe15BUTRBTDCM3TTRHcgf
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

The x1s family uses a shared USB configuration. Enable both the
USB PHY as well as the DWC3 controller.

Since we do not have any PMIC for USB implemented yet, use dummy
regulators until we do.

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 arch/arm64/boot/dts/exynos/exynos990-x1s-common.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos990-x1s-common.dtsi b/arch/arm64/boot/dts/exynos/exynos990-x1s-common.dtsi
index 55fa8e9e05db8af51109d20d74cbd7b9a2af38df..7b97220cccb7442dbc5a9f31ae9b9124bee85c62 100644
--- a/arch/arm64/boot/dts/exynos/exynos990-x1s-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos990-x1s-common.dtsi
@@ -27,6 +27,12 @@ framebuffer0: framebuffer@f1000000 {
 		};
 	};
 
+	/* TODO: Remove this once PMIC is implemented */
+	reg_dummy: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "dummy_reg";
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -96,3 +102,13 @@ key_volup: key-volup-pins {
 		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
 	};
 };
+
+&usbdrd {
+	status = "okay";
+	vdd10-supply = <&reg_dummy>;
+	vdd33-supply = <&reg_dummy>;
+};
+
+&usbdrd_phy {
+	status = "okay";
+};

-- 
2.47.2


