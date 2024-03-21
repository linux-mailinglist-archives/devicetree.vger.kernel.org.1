Return-Path: <devicetree+bounces-52157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B4885828
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE19F1F211C5
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6A8557303;
	Thu, 21 Mar 2024 11:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wPCI0gk5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148FE57302
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711020125; cv=none; b=cKZptg5ojmp2gCbxY7gfrRf1fQNsomL0vDcjf+bd2oDAEfie98RgiwlMlxvFtq6c9Css9EmCsNgCNa3WacjOhBSaWrPV2kSZCoqLh/dri0jHYzJWMrepEs31CfvvxNNaKYM1fj3/2U5f+IrmFzvQ3PE7s06fvGPCf9m9hG/4AVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711020125; c=relaxed/simple;
	bh=YRWj7tUuWaozGIBwXID8VtXGQiJ2rzifS+2Bco4hG08=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eVTVN16z42/AR+pHRD60YHi3rfa4PRNlXsap6+b0eEQa2L7S4E9d/8LXaLeYmbPrbk3RUfI3lJ531bOHAas93F0QRiIEoF6wzBuY26rcH3x/oX5AKPxqnChZ9DMQIwWWQpoZOUSh3jfQUuYJbq7xh3PSnHvPfQsQYYE+opphoSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wPCI0gk5; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-69625f89aa2so7703726d6.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711020123; x=1711624923; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MKov5O1lFAGwk/wL55gxbWjBq9FqkMhV/kf6YNRLDok=;
        b=wPCI0gk5H4j2Esv4qzE673O83ZdVs2Gk4o5mZyfSX9We/X4my/i8ayzhq6AYGOlHgU
         ewjWUeQmWaOa+XUKeGmYARhaOocwcQvxUE9FxZoXzFIftf8UZVBUMXrK0szPR7pDbFy0
         V/WHTcpiIMNaEPDmKicfUjz6+eakokPJxC1KpG4EN58d/1i4E/+Dn1uEPav3zz7mi8hI
         N2CcAMJwEc6Ct8wLDayoaRLkFVyYEeM4uDo2FLWBUmTUoJyeQfT9GbH5A8CtP+G0j2es
         tnPwt1pkgeBS83mBUEOlFzL5HaNzNufqVbehP2Gs2k+/7kW3JBURvG+zrLJ97Rrz3+tl
         Ic7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711020123; x=1711624923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MKov5O1lFAGwk/wL55gxbWjBq9FqkMhV/kf6YNRLDok=;
        b=YvwLpqy14nbr+xgJhkv8uO5gE9upAGaL43S32QGnRfrTfidibBb+W8ZTeO3PhQ4MK1
         QUvzi5gptks4diDHtz9EkaAvyyUGWbnd0pEfMXuMKahE058PsAu9EvaQUUdOMPatStcX
         P5AdXwuBm1watLbjxyb9cJC9IU5KyuYvqXcRhNigzwGE+4Ua2niJKiwBdqWDjEfDoEcu
         weSueEFaZbBh+dWVPoDRBvFkMi2AuavUzGLO16yY+1hW6fzRUrSlAxgMZqMBZzaqp+aS
         YR4yPiMAL3slh3hYwNyg//Ut9/rnJOHGgqlRHaAQFAsKIJvuhFUODlo0e57WDufP2tWN
         JWUw==
X-Forwarded-Encrypted: i=1; AJvYcCVH7WeXHLyYp/d2ckz0xbVp7xJZhFVSvmu01JSMi6xxQ0NyoLZMbhLBchMD6JYjtJP7Rtt/hBo23evWZstbYtmr/yW6YhYuPOZ+ww==
X-Gm-Message-State: AOJu0YwTXMr3jxZWV4VQwqHXx36Exk3KiCbb+mZM8Izb5AizbSX+99pI
	9xdmzO9q+o7u4KEw27Nt0W6YNJRot3Hpj1D0+zckOxMJYIiZlzSb9vgUoBMbvD4jB8ONOuNueRk
	=
X-Google-Smtp-Source: AGHT+IFEF9zGB/LdeZhJbbnFlyxqqaJFUZ7TW2VrIUFAnJy5wTVwAoPqE1PhloEVUkpQfD6YLYxRjA==
X-Received: by 2002:a05:6a20:4e28:b0:1a3:50be:b3bb with SMTP id gk40-20020a056a204e2800b001a350beb3bbmr3542415pzb.53.1711019809214;
        Thu, 21 Mar 2024 04:16:49 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:16:48 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:23 +0530
Subject: [PATCH v2 03/21] arm64: dts: qcom: sm8150: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-3-1eb790c53e43@linaro.org>
References: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
In-Reply-To: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1249;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=YRWj7tUuWaozGIBwXID8VtXGQiJ2rzifS+2Bco4hG08=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcJJxAyVnzVSonO4oMAUO+Ag2f2+i0I0Vglr
 D3M3ea0HX+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXCQAKCRBVnxHm/pHO
 9dFSCACSscUDSAGMxHspwNenzJ2yAY3/YhnjNqPcuON1yIn5KEMU4NcL85gsz5ggk1DmBND5arp
 QnsacCfTvv8ouytMnA212VVS785S8U4vfNepNYiRyu/sU0pPGf+FNyGucNr6+N3DqeArGAQElXk
 K1JKIfDKiR/PLo+2pi2GSoPefirnf+ihJlV+ZEQe/l8QJJdbfV3LsmvW9RgXtSaVkJS3V7z9F5Q
 1cc6NSQcDbL0dSewn5GvYENeBluWKlL3OGjwPacgL2GoUyrosu2i210TQT3EAbjVsDSSkfGrHeK
 ETFVXUv/Zkiczln/g4rNtXe79CaE09LIGMpQfUL3Ftu9UDzq
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index a35c0852b5a1..ff22e4346660 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1901,6 +1901,16 @@ pcie0: pcie@1c00000 {
 			pinctrl-0 = <&pcie0_default_state>;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie0_phy: phy@1c06000 {
@@ -2011,6 +2021,16 @@ pcie1: pcie@1c08000 {
 			pinctrl-0 = <&pcie1_default_state>;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie1_phy: phy@1c0e000 {

-- 
2.25.1


