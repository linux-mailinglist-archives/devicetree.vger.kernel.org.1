Return-Path: <devicetree+bounces-52156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 485C1885814
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 035A928139D
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F28A605A3;
	Thu, 21 Mar 2024 11:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HwkfgSBu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D585FBA8
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711019884; cv=none; b=im8EzgGG83bjkw5d7EfhnolgNHNEq9VLkbmf6eefDfDngF+/Mx5lWLSRDSdIKiPESHsqH/epWy4DduEaX0uqKMMmlMNRHsTTtjpVrWC9lQ64gq9KYAuZJvdZGH4LpVrgL+BL6pstZDpYlJc3vM/AwTRRrqiUkdRFzz7pEQRSXxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711019884; c=relaxed/simple;
	bh=/iKUhklNtsVTlpdt2ueK7v2SeuxwCKURWlmh+eY9/Y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kUdybORsxH9/eXqpwRm5hqDMPEQ04kTR/hMgyvwad2uPVk1sToT5L/vUYpJ2/QO5OX83S+l2t5WkFG3Pumv7dgEJog3aMVuGVtEegJFdeIdGH7lkrFkHK+OdgFHftuey1hJfEDpSjw2S0hxZD0P91mssMsdaA0NJ5yOCeY6JnDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HwkfgSBu; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e6cb0f782bso745441b3a.1
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711019882; x=1711624682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kDRo5ilU3ksVt+woAtfHQdXmIL+jybsRYN2ijwt9Zi8=;
        b=HwkfgSBu7qcX3w+Q9knUv8mKngcVaEk9lGT4lKMU7UWjat3to0ND9cRy8GnNIQbomV
         PwGAPu4YHhP+RaAONMJIUtGIMT03v+R3IoO65x+QJ6GOhKbCv8shsbNeM719FY6HjLk7
         pnjK7RgmReZ0nn+envAqEorlBM6llZVei1MSqT0kvEw/JtwinuM/0t80sHlG2booQy/L
         eusVDqsBlbHA6zPz3lpCBF2D4omeosWAc/jWm9XA23rJMgvYcgaKG6lJChFJQ+KKzpUb
         SmN+UZbFxjnOadIRA2CRrCYjx9S/LhtKsrT+ugRB7ly2cXYwlJAXsZNqH24iEHt9Invb
         0nOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711019882; x=1711624682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kDRo5ilU3ksVt+woAtfHQdXmIL+jybsRYN2ijwt9Zi8=;
        b=oInskTUeKofP/el0LcEzSSnjGhnC/yKrDjge85eY68FXsQXl70WohseVYNKHVLjwF+
         +sthqq5OWNk48cdbD8rjPiQyIHDZPq+uosFKDvlk9OXmwIPSFthL63NIsTcH1gz/e9yM
         Ngjfcem1Op1D62yn/OhEr8gKXlu/784QDFA/9bH98ig/1yfddm0wFFp00Ne/ugBcM9Ml
         WoiK9k5KXd4NbPAdXurAjGj82ZkWLF5AliEH4XG4myjUbGTbjvxJHHqRDHSoT8+97XJj
         njt+3Cv2U2qO7W8VeqTHi00no9IlVov+i6K5BCKK6uJV8T6qZJ3qQyJSWYbSzdzFtstL
         J75A==
X-Forwarded-Encrypted: i=1; AJvYcCU9DlqGuZOQP6dlmcprEEMInNe6bgmPl+VQr8G3YrwvbH23PiZB2VwcrnXeKES7hT1w+mru/3n6z0PebtNszpTliFy31J9O/NdnPA==
X-Gm-Message-State: AOJu0YxED83ILyUYZ3EZe1+Ct6bm1eiKcjHtYPilgbpGgqrpWOugXz8L
	AyOj9dS9NaxcYGtGVjWHbPQTOPamUsFAO8QbHdXl0USIIT7YAntNISNDBXqjig==
X-Google-Smtp-Source: AGHT+IGjWkn+GHpVB3pgtGuA8ikgm8O+lkiGChIylc9BqxEHgXQ4RTyYJZaqu5CKJzpLBk5Hl+1m9g==
X-Received: by 2002:a05:6a00:b95:b0:6e7:3204:d602 with SMTP id g21-20020a056a000b9500b006e73204d602mr5736965pfj.10.1711019881772;
        Thu, 21 Mar 2024 04:18:01 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:18:01 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:40 +0530
Subject: [PATCH v2 20/21] ARM: dts: qcom: sdx55: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-20-1eb790c53e43@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=895;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=/iKUhklNtsVTlpdt2ueK7v2SeuxwCKURWlmh+eY9/Y4=;
 b=owGbwMvMwMUYOl/w2b+J574ynlZLYkj9I84XKdR7q36j9NWwLy8PyrdPXPjFSOmp28aOq3feG
 99IEI0w7mQ0ZmFg5GKQFVNkSV/qrNXocfrGkgj16TCDWJlApjBwcQrARMRt2f8KBMj826jtqfD8
 vKVwrrCF3RbHqSVW4dvk/fZ9/j3hIduRV0aMx86FPl/yydhC1zplW0fWMsddvgr9c1SvFIY151+
 L/deR0sL3dfHUB7b+Bzdfv/qc8dLRZya8SRyJu3m6e7z93W6k3Cn0YIp2qH3GI7/lltuytBifnF
 +BE/l8xJkFv3iyvzJTcek3v71qpeK1TV2CXN6vMpQ/NebtNRb101fcvIjVWGFtzV1BeSmZ/Uc6X
 qRe274s1r8qSXHX8+gwycLMORvit4gntbZUrJJ4FvGG1aN/1UzvpxcPcHyMk1B9bzNFedUOu0VM
 NiqmsgwSG1L2TeRkDoo27dIQz2Gu3LI9aW+6TKD241kvAQ==
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index edc9aaf828c8..68fa5859d263 100644
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


