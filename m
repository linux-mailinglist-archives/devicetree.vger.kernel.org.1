Return-Path: <devicetree+bounces-52162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4655088584A
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6B4BB22C88
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA345FB9C;
	Thu, 21 Mar 2024 11:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EaWbye6l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1135F5CDE1
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711020331; cv=none; b=qBYcseUGnOKzNL9SydZAlT8gLbBPCK9dQ9eDmmVJePkTyRB4vFDQgdGdUjKJHXSAojW51tEniCf2AotLlXgQ6k1p3RXebvFCnrQVeTU7D6HJYsDmymuEobPkjBUVEqUfjs4NDONUutawcQQq1okH2XjimRK6cYrvykW2tCPLn1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711020331; c=relaxed/simple;
	bh=JjX5rQTZo4PnOzDIoK07BP23seNYxLCWEZfQhQdyN1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YHgqLRspCTdC3kcwdQXMhLSs5l7xqDzH32xfJHmXK0ioR3JxOdxO/VzgVZQIMnr/tgVBJRVXNIQrAEadDxnHptYJRuIskvIgDhGWho56RNtV8t0U2M0zhgye+juZh7HIsyUcTseXpCYDUxcNF8ZM+lo4nj4dAoEsKVyStbzaXM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EaWbye6l; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6e68a30e6a1so330864a34.1
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711020328; x=1711625128; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BTVw3VOLiPjAAnXNFxWBHmzEpyoJ/0WYArrSCRNtDwk=;
        b=EaWbye6lBP8h8Be6Me5ULCJhQQWXukrFQkBBA5C4FsVHk6922vpHfjOWQcZ+J3iq1g
         6DY2zahXZ9rc0IJmYz3Iy2v/rgn9r7BC754pOFZkS1XZ2zvdbNM8LXktwbnOALTvqsHk
         rkLhhm+9oIbgnzOS6e+8lByGwalaQp62iAiDsBc9RaI/Fi3ymrLGvJrbcqgDHbfB3JAi
         xsL2lTPNRjTCIA3VT2CeaWXwPaYSFg5m8awSX69HBvXN2d4UdCqDYV6kzN+qqA8eOmFj
         hGUVMpThO5rClqSn0sTs3/1c2ZUTBTdJQF3YuKJQ0CB3MMaYcW4F++ps/VXcN+4BKrZQ
         W+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711020328; x=1711625128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BTVw3VOLiPjAAnXNFxWBHmzEpyoJ/0WYArrSCRNtDwk=;
        b=YeEJXT/b7flwWn0Tx8yt5YTyHEcr/Vwmt3o9kaLxLxyoSSf080nb9PoDmRl4iFawjd
         6Airqb8hoC7yos6Ihn7muCaZlCM45HmjFdqZAc3Lu5ZffSIY2LoisHEI6IgUTzsDWCO+
         0QGX/T2VmK2l/y6Db+V8FascrAtqyB/w6ic/POfdvYsrVCZwdMsj5skVaIYeGZMAOYH7
         R1et3RRvviHcLl+LnrCe6sabsHRvXtuwqgvU9jQiI2aLeeFVekG0bYR3BmfiXAbAjhSx
         ilM3VmgrlCOS4MJADokYM+enyF8heHB0GpDfR8GpxU1KU30/RzWFsXVPRJhQIbaQjPdQ
         h1MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcYsYEIaemzkbACjG+WEu1i/hLu8QCVlIRDLS321AaaXYrxeMb48KILy9RFZK4ije1UCj6PP0IW4fkD1lddMCs3j8tVMlhbY1M8Q==
X-Gm-Message-State: AOJu0YxUB+2M8436CbU7OW8/ExVYZfG85hXmKzspTywHy4f5QA/7ZmOX
	21APkpciazT6LHCWgfTZFSMDTpzljdtq8+KYGjqT9P4z+8/LsjUqhGTMm/IJYYdOgCJ678S/Wrc
	=
X-Google-Smtp-Source: AGHT+IGwvyGUkGDV6ho8SQWENellaGbkh9BcDgzJIU3V296S/hqDZk5/JFLnDkcfFmeXKk/l8XWvvA==
X-Received: by 2002:a05:6a21:6d9f:b0:1a3:4c8f:dbf2 with SMTP id wl31-20020a056a216d9f00b001a34c8fdbf2mr3288711pzb.27.1711019828039;
        Thu, 21 Mar 2024 04:17:08 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:17:07 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:27 +0530
Subject: [PATCH v2 07/21] arm64: dts: qcom: sm8650: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-7-1eb790c53e43@linaro.org>
References: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
In-Reply-To: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1343;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=JjX5rQTZo4PnOzDIoK07BP23seNYxLCWEZfQhQdyN1Q=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcKfo6nILZjT0uVxu9k6L61zmAF0krMsgWSM
 o7hLHsVsL6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXCgAKCRBVnxHm/pHO
 9fpRB/4yJ5GNKfkKv4TU5wFicnI6n/82CVm1TD/Fjc2OFsnwNPP0kQQbQ+5IuThXGWfv9243m8E
 WJN4lpImXtRMHtCESd571i5xfvcIhiJnQiIOuZF22UMQ7X/IOKys6FY1FDct+W1tdzJLRQfjBYt
 8pac7biguPo74gZH2fXpDX4j6th9SJkMnziR/VtbQZMueDJlzJQ8bBFKnVDWBl2orkndM5ao2i1
 zE8bBQjm/OP8CiZaBY30hZG7Iplc4LAW+Y5c2XgWKFliF0SRthvNJIlPVbcb0as28QS4W6zuLuN
 7jongFh1sIqnMAS290MvHGe4Mp6le+ojO0M3DoBeaozuGNP9
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ba72d8f38420..06d2b6432ab1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2294,6 +2294,16 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			dma-coherent;
 
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
@@ -2422,6 +2432,16 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 				 <0x02000000 0 0x40300000 0 0x40300000 0 0x1fd00000>;
 
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


