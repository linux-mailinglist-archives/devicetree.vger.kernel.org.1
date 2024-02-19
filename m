Return-Path: <devicetree+bounces-43350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C73285A0BA
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 11:16:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A153D1C212F9
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B3C25628;
	Mon, 19 Feb 2024 10:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Bjbd1Mps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52B52560F
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 10:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708337772; cv=none; b=PugZSsAEU34ivKeZlMzJSUFDZusPoy47jXn1spkN1PDKYgxle3ntCELGFx8mupMcamsHUt7FYltSEIzvMAtmt4gfFfKXjKhPgYllO4k9XIrG0nPEl19NGeJLN2/ErZ9kqy+OCbDbuXrcuMtTwIP6W2VgQnWHMukeRGAagreu2Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708337772; c=relaxed/simple;
	bh=3eH2DQjulTQWzaETHUPgMzr5ISAoOnSFssehNnOf5ag=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BQo766NM8/N7yCRf+JylcUNcrAxfWQ5kybqGSWGXDpMGylbhhnZm392RVSZJC2l6vvLYmlaRskHhJK/4QR1Py471t+i0xvI6Bbt2auh8VvImQPn/99bJVmSsRJXi8uS/lMYIaaH5PZtrxfXZnH+PSD0+nyjWgXAmGiRlMC9rXb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Bjbd1Mps; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4126144d931so10064805e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 02:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1708337769; x=1708942569; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5zoml2vRpQl5LD/rIkuDqi2U8sTmVO8rjzsWkW2+twQ=;
        b=Bjbd1MpsUASSbeQIwnOJR0KaBxHRzuVZyopyguBXSj/7s5EBOdG8lA7CkOB7fnBqPG
         d4cy8MpnD7dhl0Q/kvOMW3x9apcmtE7qgAacFUoFTDyd+PQBmtODxXO7j96l+TiAJinp
         cd+rinaWFgep+JDqwVl4OzS6tcsJwYszXtPs1mFDSTDxJ6U/j0vrR1TZKOrEenQSBOo5
         qmLFIxi+fJqa8dRGdqjQwoZwCQ1esp9X/QqVGao9LdE0Yyt7B0Hwm5qja5Zp7WGUlThN
         /uO5V6VsqDXUS2LY8UYE5DPxiFYckEKhmy5Vjlg+FuWi0dQknESy8FlRq49MFexTcA9W
         5Q7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708337769; x=1708942569;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zoml2vRpQl5LD/rIkuDqi2U8sTmVO8rjzsWkW2+twQ=;
        b=Md6Oe9B4sMxYAFz5DBo2/v2uYh5c8/0m28xyxyo2BXIyu682BQXeqFiYhHZE/W4p+S
         ExU8lioFgAkQwAittxbkfwk1laBOXMIJIiuiexwSclqkzdrVszTXtrRz9MUF//sO3xcu
         OFxz7mA48T9LPLAprT9fErPFv4iEHESaVwlmRcwjyXr6+7hcofBHX8N7fhLb4bES24k6
         oGfOCH4H8IZzNu/TybTApI4l8TeTAXKWIZiQOHh6eqZIa/axgsJP/lK7MyW7+OXkj6NT
         AoO+4h6uIMBZylGum+WsrvIVBtx4wN74LwBSV5Cg5EGF35umtkSxrZbkljTyuIFaWQa0
         EhYA==
X-Forwarded-Encrypted: i=1; AJvYcCXLSTSnJM+Hnll3ntfH1QEagQIm6rYngKNofkW33+5tFH0gSOWbRcOfj3KZTdmyzTW+YexBwp3Gut6ex7/7SUDUkgPBIL8BbtmuVw==
X-Gm-Message-State: AOJu0YxvQY2DEUbnjm2U4WK4IwVbDUgJU3hSdeslDXfiSmy0a3rNsx5J
	5RM/T7ywonh4q21ITf6dxpNEMF7akdHUjUL9Ap8o72H3NPZEWuHE1DdzmKyyPMs=
X-Google-Smtp-Source: AGHT+IGrWfQTq5uDJ77OQYqzYBHmVzvtrmE3pqBM057vfJOgs36Eytz0Y/9xdEhJdg29BER0tNIYyA==
X-Received: by 2002:a05:6000:1244:b0:33d:5f6a:60e9 with SMTP id j4-20020a056000124400b0033d5f6a60e9mr511704wrx.45.1708337769281;
        Mon, 19 Feb 2024 02:16:09 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id dw5-20020a0560000dc500b0033b278cf5fesm9856250wrb.102.2024.02.19.02.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 02:16:09 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 19 Feb 2024 11:16:02 +0100
Subject: [PATCH v2] arm64: dts: qcom: sm6350: Add Crypto Engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240219-sm6350-qce-v2-1-7acb8838f248@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAGEq02UC/23MSw7CIBSF4a00dyyGt9GR+zAdULzIHbRUMETTs
 HexY4f/Sc63QcFMWOAybJCxUqG09JCHAXx0ywMZ3XuD5FJzwQ0rs1WGs6dH5q1Uyk1TMDpAP6w
 ZA7137Db2jlReKX92u4rf+pepgnGmhUXjT0qcnb8GR3mNacGjTzOMrbUv0EmnOKgAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bhupesh Sharma <bhupesh.linux@gmail.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Add crypto engine (CE) and CE BAM related nodes and definitions for this
SoC.

For reference:

  [    2.297419] qcrypto 1dfa000.crypto: Crypto device found, version 5.5.1

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Add the compatible and nodes for the QCE found on SM6350 SoC.

Not completely sure how to fully test it but "kcapi-speed --all" shows
no issues. Let me know if I can/should test this more.
---
Changes in v2:
- Drop applied patch
- Sort iommu entries & drop extra leading zeroes from mask
- Link to v1: https://lore.kernel.org/r/20240105-sm6350-qce-v1-0-416e5c7319ac@fairphone.com
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 43cffe8e1247..7a14b040d140 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1202,6 +1202,37 @@ ufs_mem_phy: phy@1d87000 {
 			status = "disabled";
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			num-channels = <16>;
+			qcom,num-ees = <4>;
+			iommus = <&apps_smmu 0x426 0x11>,
+				 <&apps_smmu 0x432 0x0>,
+				 <&apps_smmu 0x436 0x11>,
+				 <&apps_smmu 0x438 0x1>,
+				 <&apps_smmu 0x43f 0x0>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm6350-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x426 0x11>,
+				 <&apps_smmu 0x432 0x0>,
+				 <&apps_smmu 0x436 0x11>,
+				 <&apps_smmu 0x438 0x1>,
+				 <&apps_smmu 0x43f 0x0>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "memory";
+		};
+
 		ipa: ipa@1e40000 {
 			compatible = "qcom,sm6350-ipa";
 

---
base-commit: 6af5a37dbe961391c3c357c0799d76dcd7c280e4
change-id: 20240105-sm6350-qce-c6233abbf54f

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


