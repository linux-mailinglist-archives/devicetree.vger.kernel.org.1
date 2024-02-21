Return-Path: <devicetree+bounces-44163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB87C85CF1F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD5391C227D9
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CC841206;
	Wed, 21 Feb 2024 03:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c2Yrls1s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7091E40BED
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708487000; cv=none; b=r73CaZJR6S/QfpyTtYdvi+VnjyGDyPBdHepqD88vK4fMHXZvBThPnYDU9t2CiPrMTP3MIl5Q15YT1OolrHu2k05OtyJzO3ZOW15u3/zNx6IQ1XoFbq1zq+L+gd5aTrcxigSVGIgvMrNCNe16rQHRD06cKqnV04pTzBNkkxeMEzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708487000; c=relaxed/simple;
	bh=3jx7xcLFBNs3MoMPC7hOG3cqD1b3y0NhSb/veZhqzaw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uXePdnFUDfPzpv3mV9o3INvG6WQZWGbOfhKXeD+5Ky6+DYnA6CTrqOD4GiBzAiVrIQ6ySthWmvZJgGJGHtInz0IVzWdOAyJh6kOyiUdpWEsItFRgc25iJemr9GPa7OyDJYLEskz+lcS+hV1BozTgkacB0DCr2p2ntFuHaO0D00I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c2Yrls1s; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcd94fb9e4dso224048276.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486997; x=1709091797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=syX1Qx9Iem4TSxZ/KaGRejBy0YhBu2VJFkbJL0HV4dk=;
        b=c2Yrls1sCcQWZrqNHGjCgD5NjXVbECXzjkixS9VwHo0hqs03B2HaCKhmgTpgVwjT3z
         /MBnBxKiqzfTToBP2I5+GgrQ+pGrtN/8H6VeI9+XmoTGsje5UIsBaE1tgGI+ssq/vs7+
         rmK9uZ1FiQjPZJx1afc/8tjWmy4ZLUoZUqGZJaj19mBEmXlltR3Mq7tsTo9M6wy8uNCX
         MF2bcHcxR5S3nRjgdJclU3+3sard8sCt6n+ZPOtzAoGdqfE1mnW8Mxf9J7b7XxdFLpaR
         CvL3dJoK/GZoSEjM2uud6nxpnxThhPlP/gAjmL4M0T0eh+fxBhVV26MTg1qBLGqnpzz1
         2IWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486997; x=1709091797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=syX1Qx9Iem4TSxZ/KaGRejBy0YhBu2VJFkbJL0HV4dk=;
        b=ddZpTA2CYeoBTGNGi++HH+UAJ52w9W4qbMJr9crIFTO+i2R/AyzytlFSlrSEum/6bM
         rInZnri/b8tIKq5+/PUJ6lA+61Cvm9/+WNsReCLJnFDz4uIx2EsxkHznsbh+WdBJz3U/
         SV9vOCp9CbtpvDr7BK/V4xsdLdAjcJuenHYJAD4VThYixdQRBT/AM868I7yUKJMTbk14
         DLXrdw/9Ne0I5ViBskOfdyUGX4fmVafuyqF8VB1m31kKvLwEby+WHyOV+6FYk5zuB6Fk
         NXvL/8z5M/Scx8exapIPq+ejT2awb8IrQyE9UDaf711rcTSQV6pqwFwpj+utBeRzHyST
         XvXw==
X-Forwarded-Encrypted: i=1; AJvYcCXASn4olI9tCSjafyfaIPrOi9bmjR1aS/QvMyEeccPFj3WHlb25KOwIoALsH5t5z/L2GW0+n9dgXojB4ZaN74mbx5ZyLZ+Fc3w7HQ==
X-Gm-Message-State: AOJu0YxBzdYDLY5hraay352YwZzaEW+OmS7xJsQnx52olygzEg4bDGqr
	kJdZBpAV+QdK9qHOi0UEIHXiHOVw+Z3AhjuD7hYZRczLxO+v3HvVSy4CQaYhcA==
X-Google-Smtp-Source: AGHT+IFBVWJpECMedkEX8/nOsa0s8lpnyOvjOn6f9DzOfF+clVYwUoyuh7w/f2/VM3FW8kxweFZPbw==
X-Received: by 2002:a25:a109:0:b0:dc6:fee4:e889 with SMTP id z9-20020a25a109000000b00dc6fee4e889mr14755046ybh.13.1708486997281;
        Tue, 20 Feb 2024 19:43:17 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:43:16 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:12:06 +0530
Subject: [PATCH 20/21] ARM: dts: qcom: sdx55: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-20-6c6df0f9450d@linaro.org>
References: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
In-Reply-To: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=895;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=3jx7xcLFBNs3MoMPC7hOG3cqD1b3y0NhSb/veZhqzaw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEJ0dYtKghZH8nSt5KbXAa7K43VgCuWjwSTS
 qwWd7D9xTWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxCQAKCRBVnxHm/pHO
 9eSqCACVezpkM5fzyHWjKwcI9D/5H8bEjfZ3JGxrFTpT375ZlftDiC8YFM9PwY6TARsaUtuir4h
 QfFsjMoctfImFxsrv4v8mIQE84JUA0BP3dQJYMZS7EHSIDs0p4KjQ7ywnV9YVW03kn0TJ+oFbWs
 KpqT4BHsfA2KrxztKIdc0cdc38ZZGl33T9w85pOb2E+hQXmyMPLDSiuucJZjZo/uVIXnCa4xc15
 0Xs/pCa1/EmlelG3a/0za6AoeGqOoFKXqLC4AUwhQ6FiG4zwogrgR+T+Es6Sdv86YoUHsX2t5K+
 AQytcdZsnb28J7q8Tw2qgQP7rJoO7MTdAJshR5hVXhg83OVl
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 2045fc779f88..053dac097c70 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -378,6 +378,16 @@ pcie_rc: pcie@1c00000 {
 			phy-names = "pciephy";
 
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
 
 		pcie_ep: pcie-ep@1c00000 {

-- 
2.25.1


