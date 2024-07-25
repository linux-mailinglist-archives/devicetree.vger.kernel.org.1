Return-Path: <devicetree+bounces-88038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A632193BF06
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 11:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C7F01F22F4B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 09:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E0419883B;
	Thu, 25 Jul 2024 09:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H0FfPFgw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3951719882C
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 09:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721899529; cv=none; b=kbYPRq4BSDu2nNRhnUYI2mtYKCYQd+wVncIlesBRDumrUB6edxKlh9xX7VSNWYl0csJJgIgVXCDwocglq9txSP0eWIoxThbwUSNINZ3jQeIxPFBhExRsVbCkBpGP+qcr8+sVJ6xA+IxVcYKsqx2GkmW1cXVJK5AffPWnqZt2gp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721899529; c=relaxed/simple;
	bh=kVnq7lEY6gwrjM1mi4zF3FeC0D0Ncx7lnf9pQHV9Zy0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cjuOh4Fdw6xmHNHydjdhAIuzPuz61NmlDN8Bx9JzHZscdw1jbFPjsOkNZjf56TpfW0m7ZC400GBBvk2EP/VhccLcVYesIsu0X6HYwWdrT0zt3bZBjBcQBV5Xpjj7OYW9PdpPvXYH+RLi4N2/i177oxbzhFcPrQXpc+Y0aJ1Wzic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H0FfPFgw; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42797289c8bso5371675e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 02:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721899526; x=1722504326; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D2MlzuOoUoymThNON9rT97vhUbZBnF3LUPxsjQQSfSM=;
        b=H0FfPFgwEuAecy3+4TxcBMRo2E0uMc+JAecNdlz8D/4esnYF9sVJ7ybiQACJ6jNiOJ
         1iW1X6pfds1PpZCQUGJbohnPOU5v6Fd3Sq7c+oZamrs8Fs8pC8+CmFiAU2CuMDhEJwVw
         QtRoxeiNM/AlyKnyKiOZTq1fgq6e2LOwTt0JyhdiawL8laSThnLWmg1hEW+dnNGxUEkE
         98mO7mZIJVGGP8N3etglms4Ykl0chBFEPACVQM7CUWu9myFrfLZwEX6XImVpN65HS+xC
         twwUUOwZ9OjsxVXsOGbueZ0YHdidF0ohN79Qnad9YXf5/R5Y3/ykDN0QRC+iylFrN0K/
         kpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721899526; x=1722504326;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2MlzuOoUoymThNON9rT97vhUbZBnF3LUPxsjQQSfSM=;
        b=m8UxzHL1WYTSgZdBAp5dSkji12B/mrKhhzaohdsksUocJJuFaX4U8I6xViWIlB06na
         USJfmAFQ9pzl8YPQNCTARoTnjO16w51wUjHEBcRyi7I4yjL+xrq8rufaQNfKBwh4b1Wd
         XBR9iVHgJMqD8DHCUwoqfnTc/PPHHKIiATzCAbamm8U0pBYG0os+awQOnfYF2UNfqKR2
         xli3CShyFP5C539giPM4NE+kBUjys6A/0z1T1qwGi0zlWWiI1eMSN4xw4+66wD8grO0l
         bZp4Dp32DYzEPBlBd4loFl9F8upasNF7sSBe6FqBl38vmiNEzdYNUxiQ01t1oIgHvcx4
         dzOA==
X-Forwarded-Encrypted: i=1; AJvYcCXHuU1sMLJ27PwOHenbRJNcoI+N2YPLCgB3opRTmuX70n4DbdjV2Hd8XBC0o7cdIezRvf9nd8SSPA8VpEfzJhTSgOLMg0UzmZ5CLQ==
X-Gm-Message-State: AOJu0Yz4mR9OQMCLvVnJa4i+JCudPbsu9sZk2TkAsBhe/vgEsY2YIRIG
	DrSns/JfP2z5N3RMcjx6OtFywRVcDTuAQVn039nMGA57ylgS7vD5DhtKY5C0Vj4=
X-Google-Smtp-Source: AGHT+IGig2kx03GSwxPx4hLAblVlwgWHF3naMDhrXLgI2PJBfer6j+Z3YpqWo44+c4+YFSI2hVfbAg==
X-Received: by 2002:a05:600c:154f:b0:426:5b3a:96c with SMTP id 5b1f17b1804b1-4280573c824mr11106235e9.28.1721899526472;
        Thu, 25 Jul 2024 02:25:26 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427ef3f45cfsm65830385e9.0.2024.07.25.02.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 02:25:25 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Subject: [PATCH v3 0/3] arm(64): dts: qcom: fix dtbs_check warnings for
 qcom,spmi-pmic.yaml
Date: Thu, 25 Jul 2024 10:25:15 +0100
Message-Id: <20240725-pmic-bindings-v3-0-d7f6007b530d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPsZomYC/3XMQQ7CIBCF4asY1mLKFNrqynsYFxSGdhKFBgzRN
 L27tCs1cfle8v0zSxgJEzvtZhYxU6Lgy6j3O2ZG7QfkZMtmUIGsWgA+3cnwnrwlPyTeqsY61Wm
 nhWLFTBEdPbfe5Vr2SOkR4mvLZ7G+/0pZ8IorpY4S+tpIFOcbeR3DIcSBrakMn7z+5VA4CmMbI
 V1npP7iy7K8AfaBUrrqAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1126;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=kVnq7lEY6gwrjM1mi4zF3FeC0D0Ncx7lnf9pQHV9Zy0=;
 b=owGbwMvMwCXmtuJiX/SRuS2Mp9WSGNIWSf7Ls9qu2LZ38smbSmcZYvq+a7ifUdRZWnfUzMzMW
 ulk9c7nHaUsDGJcDLJiiiyHm76seb3dSejK9qpTMHNYmUCGMHBxCsBEuicxMjTMDn3Cn54Z1rE5
 I9/3tp27x9GrXgVlag9/O685cfpUnQ8jw/d8S795Xne/vAhg2fR5bl7MpSD3J4Fn3s5Z/yKjTZz
 RhB0A
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

Hi,
These patches fix all [1] warnings whilst running
make dtbs_check DT_SCHEMA_FILES=qcom,spmi-pmic.yaml
on both arm and arm64 qcom device trees.

[1]: There is still one warning left that was fixed by an earlier patch
by someone else, which has not been picked up: 
https://lore.kernel.org/all/20240606181027.98537-2-adrian@travitia.xyz/

---
- Link to v1: https://lore.kernel.org/r/20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org

---
- Link to v2: https://lore.kernel.org/r/20240723-pmic-bindings-v2-0-e1cd614f8c4a@linaro.org

---
Rayyan Ansari (3):
      arm64: dts: qcom: pmi8994: Add label to wled node
      arm64: dts: qcom: pmi8950: Remove address from lpg node
      ARM: dts: qcom: pma8084: add pon node

 arch/arm/boot/dts/qcom/pma8084.dtsi   | 16 +++++++++++-----
 arch/arm64/boot/dts/qcom/pmi8950.dtsi |  3 +--
 arch/arm64/boot/dts/qcom/pmi8994.dtsi |  3 +++
 3 files changed, 15 insertions(+), 7 deletions(-)
---
base-commit: dee7f101b64219f512bb2f842227bd04c14efe30
change-id: 20240722-pmic-bindings-756df58afa15

Best regards,
-- 
Rayyan Ansari <rayyan.ansari@linaro.org>


