Return-Path: <devicetree+bounces-71744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB78F8D7D24
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 10:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3ADC21F22DE7
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 08:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BB94AEF5;
	Mon,  3 Jun 2024 08:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W+003EVM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D8854BD8
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 08:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717402649; cv=none; b=UEDHFslecq6p81gCopMRIacfV8KpqMFD0A5bwdMSIJtoJ7atK36omDH4wG7MtdWBrbnGPisrYBxBpxdjljW1J8V+xXG5JyAA5Z8EWoCmrTynU2srp5A3W9oNMmjAxcX1vEJ7xrckPEp1P0rCA3zajsXpCA0wv2mtvU003R488Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717402649; c=relaxed/simple;
	bh=GYQwyqieU5pgk0RpDLcK9N1jttSb3ko070lVFg1uSEM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bdF5YpJGfHqrGPEthytMj5/M75f1/F24VfHaTgEKoOfkQwuEVwNtNgRzn04JmOOXD5iEsE3hb9Ry76vB6GWCcgrSFaxDdp4reoAbrTS8NhNe3Kom7+TYmBqjHuF/akG1grlqCqr+1vTJKH+TMazvBWdr3/qjekn72LHYeT8D9xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W+003EVM; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-57a526c6a2cso1456511a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 01:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717402646; x=1718007446; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U5auj/DxsumSSLcpeBxnhVyl1FBew61ppgHTyRT0DrM=;
        b=W+003EVMkY8KfKIlDcjhAdpUesEcsibCC4NQ6G68DxGSYEPltFCo23iTWYdppGXTCl
         XI7D6U5xbthDkHex8Dx5TtkO85QrjHbGWzFrQsHn7P9u8HX6cUMsS/Nf4go120ilaYT8
         qjWwuc787291ZC2n4Zdgh0uzSj8zkd4hzKHG9D6LvzdTY/PuJee38B0ivR9NqM7yUAgz
         /CngUiAXCEn8V5zkkxBGdjxJOBTYQGeeYHFKKCgMiXx84pgSruF3FuHi4A2fnlVwPaJP
         NFakyQnur+Qi4+obLOSVGpRtfr4Rky81I4aHLb7/jrCfdBf0V0uMRduo7AGkdafiIZcW
         JKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717402646; x=1718007446;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U5auj/DxsumSSLcpeBxnhVyl1FBew61ppgHTyRT0DrM=;
        b=ktdrkFcDFtZGmWSqk8XDXufKIYmz0RMxO0C3uU5Hb7qtupB1VUvwrGICcgiu1HyzAe
         DdbqW7a9SaIkueiuc4wuNC+nArh9U+JPcsC4kEWaByLHO4pTbo/gBk6lVnNkqNMopfSf
         uMnD4wwDRtrX5yxXZCegZzc/wLbKtHNa44p9UrxbX20PAJFotKs3mF8KZrFM/L89bgE6
         9pnhL1yv8gRRzT0FBwtA5hSmtQmuiBRla8xlTgjseFc6Jz8DqtdolTeGU3KRfYI2S6iR
         x2Wd3YFs3jKFJybyHMy2J4EjJ991zJ9m3ZOzan7IyZweb0hFR/FLayItzu6D+uM9BsBO
         Sd9A==
X-Forwarded-Encrypted: i=1; AJvYcCX+0VIyyXKBMSpW3p5uX9+oY79WTG7NixL/y8t733dx45rfQiiq6fwQJH3q+QInSJkCaytZn3u3q1S0Y6p01M6GSla2rcCq5sA5ig==
X-Gm-Message-State: AOJu0YzVtgRtA7Vb3z3lIn8MSm417lo4feZWaLsRDoKGMSGUvF9zfZrX
	UmMWsDGcbC4tDNgVCM/2OyJ9tUQQuieeDSORWCRgmzVliZxtVowxn4nAln7/nt4=
X-Google-Smtp-Source: AGHT+IFQCcQ+4xqx3uVgd4j1etV1G5jXaWznVKyyoBTDSVxep7J4PHOlSZg36mckXW36/cw79Hiong==
X-Received: by 2002:a50:8e59:0:b0:57a:1c24:8b6 with SMTP id 4fb4d7f45d1cf-57a363a4286mr6341681a12.22.1717402646049;
        Mon, 03 Jun 2024 01:17:26 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31b98de7sm4853418a12.10.2024.06.03.01.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 01:17:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 03 Jun 2024 11:17:17 +0300
Subject: [PATCH v2] arm64: dts: qcom: x1e80100: Disable the SMB2360 4th
 instance by default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240603-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v2-1-fb63973cc07d@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAx8XWYC/52NQQ6CMBBFr0K6dsy0AoIr72FYtLSFSYQ2U0Iwh
 LtbOYLL9/Pz3i6SY3JJPIpdsFspUZgzqEsh+lHPgwOymYVCVWKNCjbpGpSIYJcEcaI+geUQoVx
 GSJNRtxrBc5igZwsV5rcxjfFtJbIysvO0nblXl3mktAT+nPVV/tY/Q6sECaitL61t7ro1zzfNm
 sM18CC64zi+cylcFekAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2051; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=GYQwyqieU5pgk0RpDLcK9N1jttSb3ko070lVFg1uSEM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmXXwQCYFtMZWSdfs1i++mv0H4E5hgzd5CMAkrU
 pDq8M22by2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZl18EAAKCRAbX0TJAJUV
 Vj5wD/wLYMhnWywjDKkYp3CbTRu4kF58dd744Eeue7XiYiDAUA4FrKqO/gM3wkSgBiTUACGUAX0
 wmjW6+kmK7Mj+g81NUrrKzjaSkyIQdKC9yWAhPcKCTEr/DECQZN+iFW3iWlIdynS/TM9XcKhnXC
 6ji7Cba19+93LYDzTOLhVcPwKqS0ukFfo/dk2EA/iFtwbg/nLLWPSwQWUzjulPixYALJCT6uzD0
 HYby1At5EtRDdy4TD0xXNYVCH6wk9nYz0UqrNN7iBj/2GZsiUIzL5q9x6tRZalGdWJKa+MSOfaA
 Ac1//S6Sjx1vaxNsgKBkIuanbI9QZ74YbuBsVWM729AxONmSJEXbeFwDi5ogfL1hGwpJ8/NFHxx
 Y78n98nfHYHH5FIdgHB02MyUf/ibqrAJjeLDDu/8MdLJ5M2Jdl67UKmHiNdJTnjA8/qIlEDcxLV
 wDaDDi0ygx2c67FIZ1T5jmfd4+XSIORgJ1o1c6R1g35u/WJA/lygNe1XCFZmF02t5ruVaRoyoiN
 oVp93O6aZTviqC75vW7oh7G7AA6XzZMinN4grnlv0u6mKIO6F3DEuyBXK1EXvbLYLT6+FEtLKZO
 Q9HZltWd2tD/hTvOMr8MXzpNRIRLWugLjfXnIla4DyFi+wpz4qoB3sJaz5LrsgWaT40mQThNgcY
 XRmMOAIDLSRi+2w==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The CRD board doesn't have the 4th SMB2360 PMIC populated while the QCP
does. So enable it on QCP only. This fixes the warning for the missing
PMIC on CRD as well.

Fixes: 2559e61e7ef4 ("arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs")
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Fetched all R-b and T-b tags
- Rebased on next-20240603
- Mentioned in the commit message that the patch is fixing a warning
  w.r.t. missing PMIC on CRD
- Link to v1: https://lore.kernel.org/r/20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v1-1-0adf4dd87a9b@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi | 2 ++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts    | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
index a5662d39fdff..e34e70922cd3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
@@ -522,6 +522,8 @@ smb2360_3: pmic@c {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		status = "disabled";
+
 		smb2360_3_eusb2_repeater: phy@fd00 {
 			compatible = "qcom,smb2360-eusb2-repeater";
 			reg = <0xfd00>;
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index a8d0f743228a..1b2caa63859b 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -524,6 +524,10 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&smb2360_3 {
+	status = "okay";
+};
+
 &smb2360_0_eusb2_repeater {
 	vdd18-supply = <&vreg_l3d_1p8>;
 	vdd3-supply = <&vreg_l2b_3p0>;

---
base-commit: 861a3cb5a2a8480d361fa6708da24747d6fa72fe
change-id: 20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-501e8bb8bf95

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


