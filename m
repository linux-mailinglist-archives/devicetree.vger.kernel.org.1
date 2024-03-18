Return-Path: <devicetree+bounces-51117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DFA87E3F8
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 08:19:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 991041F216F1
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 07:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58913225AE;
	Mon, 18 Mar 2024 07:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jlUP2Qce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91F7224DA
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 07:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710746352; cv=none; b=F7KdAQCvfsWJYQ7hLV7EN1uIqqjhLnA5We2DMMPSk0DC0g2sJ2An9ZsZYPrKUmGI+Ke7nEFFjuKmhaaaH62DqhW+hL5ACW3Q63GChPlY9AyUlO1j95xoPsQhSROc9dmFfhP3BiMBP8z1b82LVlPikCnyYjRk0hNUF65K0pBuPuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710746352; c=relaxed/simple;
	bh=MGKj7wfCZYrQYF+80ADiEhQgQu9TbZEdPZchw3ECvw4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MWKA+R0vRr1oVqq//Tphl57ZPJtu4Pf/rk6tGgTaW4+AUI5tFqhw/EGTtqdhghvrXs+JOx583JoJqtTKbn/kRD/Yk2yxvngk2UQMPaktq+dgb/TjGxVWXZSqxzGsyYsLxOc2EwUF2mxFbzHqRlgyJaM/CYy2dFg1EJBh3S6x/tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jlUP2Qce; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e6cb0f782bso3368930b3a.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 00:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710746350; x=1711351150; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K8MF9dapfHmZ2V5BiMJetVYLE0Od+bScCXk1FZ6cnoU=;
        b=jlUP2QceIy6LFaoyMCF2oD/Wsu+VsT/Iya81aPtefnUv0YqVPMwEZgtJEewGzF5UG9
         xrLDArdcjoIGPw3yaKhOuSOIexyuszMVrgIPYZIfZcLPGhnz4rUrxLUJtAulQJpz79YB
         eeys4TRTKUDFhJO53Gob3MdMW37wuOujd4PhojAHxapbNV0i0ZN3qHvclsqOmAzoEsyz
         ZzZ1NJvlEDzr87Uh4UCoGdgiIpmSN7yZafLDp209/+bNQDlLn0cEM4G19nvI+PSG7UJh
         ygkf/QD3GnxLMyiuMikawNxyDTOTOCwYMGxSjRanLlfGh588s/tCfa/6DKYO5PrmYDy9
         BJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710746350; x=1711351150;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K8MF9dapfHmZ2V5BiMJetVYLE0Od+bScCXk1FZ6cnoU=;
        b=in9RyAkYKmaCcSBndNCyG5EPEitJNk2ULKnqKM4L7AM8S2IS/gPSim4H8w+drGzfNe
         +pbyyeSeUdhB6YOGQSmra5G8SX044oyUwq4s1uX++zduV50zBl1LzUmdtcWm9RVUtB4j
         bv4Ep+kGczeaYxfL1oScRKI7l8Jes9DHBHUzO2cVYlcaSRAJKg1tfukkhBSaZq5wW+kB
         7OhR+cYRq608kcf9rOg1f2ABCE9qs7pwyZtzxRsprMqpC435RbiaBagbf6qOfnCA8RQA
         xDiTOSFavymNcP/JEuWQFQpStuCar4DIltB7Z4FtDBlB+LfYiDZohxpkiNs9V3rQ9bgK
         hzhA==
X-Forwarded-Encrypted: i=1; AJvYcCXWR/PwXu1GNPWFVD28ZanbFawefWkkQsIM/XV3L2E82867RisJlhAl7ts7OWUWxjfyqaWkThUzKMpoWT1pjKavaVs/9Bt4bgJT6w==
X-Gm-Message-State: AOJu0Ywq0ONXHniure+rwxgPhRSymcaaRqj1oO5NxySmGeZyX0ipXSFo
	zK9R6EKFijXOq3lxOgVTpOzO6qsLQUvi7bRsbNPwPgBctmbuv4Lc9fiZXnZODA==
X-Google-Smtp-Source: AGHT+IG4ogUXkkIdRJE0UqbBhl4ZxAdr/6N2ZPQB39XoxYTKMhoqLyMJOM387SRmTYKkYbQkFAznlg==
X-Received: by 2002:a05:6a00:a0c:b0:6e6:6a80:aced with SMTP id p12-20020a056a000a0c00b006e66a80acedmr13604149pfh.32.1710746349647;
        Mon, 18 Mar 2024 00:19:09 -0700 (PDT)
Received: from [127.0.1.1] ([103.246.195.160])
        by smtp.gmail.com with ESMTPSA id x16-20020aa784d0000000b006e66c9bb00dsm7387515pfn.179.2024.03.18.00.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 00:19:09 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: Fix the msi-map entries
Date: Mon, 18 Mar 2024 12:49:02 +0530
Message-Id: <20240318-pci-bdf-sid-fix-v1-0-acca6c5d9cf1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAObq92UC/x2MQQqAMAzAvjJ6tqCdqPgV8eDWTntRWUEE8e8Oj
 wkkD5hkFYPRPZDlUtNjL9BUDuK27KugcmGgmtraNwOeUTFwQlPGpDeS9By6JC35AUp1Zin6P07
 z+375dlGKYQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1139;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=MGKj7wfCZYrQYF+80ADiEhQgQu9TbZEdPZchw3ECvw4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl9+rpidY7MorJCAakm7kCMRgJx+vEy6/C+ry7j
 IAX5jVti66JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZffq6QAKCRBVnxHm/pHO
 9ZLGB/4if0xAmKUHlupcIOqq5E0+gOO/dXyUteUvSYXVDbuYgLXvB6c8LQREdy0rKkZHruPGE3g
 NLxWtiLuOYGKVnUN/rzHyL88d/0AULU8uPQUqURZkeM0agOmhjO/N+e6/3ylDsOYffX/Yxs4JgJ
 vas+IH1zL1awTpRZKjL1muqr3P716Q3CQSFDvQS30Ikr9siT27K27BhVLqoHIsFVIdHfITuFILZ
 Z9P28bT9kqe86W5ee2JjhUbCX16aN220ghmdZ8r67XI0rBrJ4LZ819eTqYQ/UL8wg5uwcG/5RW9
 GH1E+ON/QwxZfZLe02HpeuXcA0BcoulOxSpjSGI5tbfUEP7D
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

While adding the GIC ITS MSI support, it was found that the msi-map entries
needed to be swapped to receive MSIs from the endpoint.

But later it was identified that the swapping was needed due to a bug in
the Qualcomm PCIe controller driver. And since the bug is now fixed with
commit bf79e33cdd89 ("PCI: qcom: Enable BDF to SID translation properly"),
let's fix the msi-map entries also to reflect the actual mapping in the
hardware.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Manivannan Sadhasivam (3):
      arm64: dts: qcom: sm8450: Fix the msi-map entries
      arm64: dts: qcom: sm8550: Fix the msi-map entries
      arm64: dts: qcom: sm8650: Fix the msi-map entries

 arch/arm64/boot/dts/qcom/sm8450.dtsi | 16 ++++------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 10 ++++------
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 10 ++++------
 3 files changed, 12 insertions(+), 24 deletions(-)
---
base-commit: f6cef5f8c37f58a3bc95b3754c3ae98e086631ca
change-id: 20240318-pci-bdf-sid-fix-2e7db6fe4238

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


