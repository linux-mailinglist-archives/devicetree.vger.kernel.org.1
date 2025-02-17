Return-Path: <devicetree+bounces-147597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B751A38BBC
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 959DA3AE316
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 18:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20563238D52;
	Mon, 17 Feb 2025 18:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A6DydjDV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CAA237165
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 18:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818591; cv=none; b=IWpDgFgezlgJ9EVdiIyL25PrDHPVHt1r5LP+vH3Pmn57olx1qTpDvBsMdqIzvLAHhsg7hdca2p4jyPyhEr/ntJ09zwsTSQxRL3x97sDKIkDncZJwnMTWngJHB2WF5om2hJkNPE+rTt0lnO1iBGatKtgXlum9FHEnhI9p7Z11fAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818591; c=relaxed/simple;
	bh=VENCbeTaM23TQPVjYo4xu2jm/G2o+bDbnVccO3nLEM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KzCx1pFaBbXlN9udtvGLKsqGZbpkadhqjtfZ0SdwB+amkIymsbpkZsjstVHV10I0vP2LlvfMYD6619L9Q5TbI2tX/VgjNyRzi9/2TkXMbyLZXNv9j+d9Y9bB6PilrPzMe7dNFBBUYNxyXBS3vyPXrEFW61R1Wlo0knwSVIIgk38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A6DydjDV; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5461a485a72so1404825e87.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739818587; x=1740423387; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/CQE/8APoJI85cJ7o16lk6cKIKl8q/OtIl4FzoAUDek=;
        b=A6DydjDVg+mIVf9/GWo9rSV1DM+ZqmwOb0FJTXj4gopDSF8nt27DMWHCMrIf0n/JQ+
         nXc/ZylJWs+5cvl7hJzkwBpyT8Xs86QJPMx0Az1KEd3AncdUQCHDBIEvUI4RIoiu5QR+
         BaS0WLdtnj+fZf3AlDYm/tVMr1y6RWrfbvl9a5ndOyk39vatbZygS1DsUyOnMuDXB1vb
         zppcreCtGd3SkAuqTVtUygBcOfOO7SARTMNEXNLOUoGyAJwpHnUn0Nfn339EtYM7GoIf
         4pvbyNBaQUXyYmldO0qzi0jgRzaFETDo6etc8tQ4t9bS5iWm7d4bPYXMgTt90QCd46DK
         EM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818587; x=1740423387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CQE/8APoJI85cJ7o16lk6cKIKl8q/OtIl4FzoAUDek=;
        b=B/eSOuoNK7UHAqIEM6efZUzqZrt0+oU5F1Q/cKQ+au6yeYpuaWZNW6Q1koe7g3Koxr
         aof+GtmHv1w9FzLUjPgMz46/gwgOcGJX7Pekf3Q+wihyVQq8vHlycqIqa2nFbEpq62iQ
         LKpMW6JmnvFtPNDIBI3FwqsgClzvFW9mVL02txvanUeZeT2NRLnMZW2cj5UuKvgVfxCp
         w6B5ikSDFpVTr71P4z4TR9hJp0UOLteKXjqJsxXKYNXbw9nnXdQA3JAfU0KUnWILnMkg
         A/afxqyG9BglbSezAWyD8o+Q5TSYcoGbqimkwEROOtAOCQ2/rMEIs6vEhaQRuWMgK3ac
         BhaA==
X-Forwarded-Encrypted: i=1; AJvYcCU6X/ZBidXF52ao/8JOQc+eGytLAkNsPitSkKBbxliukUAARbf3SCnodgn6XRhuPVdYm6mzQ5mUNpzN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyic9kGkNHDigLkK8hsN2dqLZ+Ll0cYefQTHhRKBBD3n/wnTUDO
	k/wRdAJVkl7QAx9u+pCxIoPUWycokKoHeqc9uE9i6Pfte8OaYRQSIF6ICeh8lXbsSfNyRMo4VN/
	1
X-Gm-Gg: ASbGncs+TDLvYhUsitqnRXl4LNiwILQ91f99IuuXpV47mkMsm9mNy2ECM5UFIrE+toa
	3vObCFeGuKNunXXMgmJwXZoBVkorgUbSvMuvimDxcOkg8RZozd0eeU4+DzZRtrzLTqPIiH4yrfV
	l1TjNRj5HQe7bfcB+dxHXSX57MogOPWxswlYlc+1yGgCyNNJ6fNflMUw4N7DOqnoQRRxwIOC/wB
	FvvvN1b77Qz+pDClFeBbaOWJdXFy/dxMBlAaOtHXHT0ALDl53iOo3wlJ33Ap/HSH/Ulbw7dsqdQ
	MC/dZJcmq8iexu0hRJ1VmzzlNql6dyk/TAHU6LFEdKF/Btpar1+SO/8U97o=
X-Google-Smtp-Source: AGHT+IFVmrRMpyr8AiQMIo8jvfcV8EyiI7d1YzAk9atAVYWUJHE331fK/mdqUltPfDMLqKLvpHbQxA==
X-Received: by 2002:a05:6512:34cd:b0:545:3037:a73a with SMTP id 2adb3069b0e04-5453037a749mr2641447e87.13.1739818587281;
        Mon, 17 Feb 2025 10:56:27 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462006b0ecsm559806e87.160.2025.02.17.10.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 10:56:26 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 20:56:16 +0200
Subject: [PATCH 4/6] PCI: dwc: pcie-qcom-ep: enable EP support for SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-pci-v1-4-94b20ec70a14@linaro.org>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
In-Reply-To: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=870;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=VENCbeTaM23TQPVjYo4xu2jm/G2o+bDbnVccO3nLEM8=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns4ZQy9bth64RzHBZKD5it6HGIz23SfQI8zA3l
 dROBLp344WJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7OGUAAKCRAU23LtvoBl
 uP/XD/444fJUeWL2n76zyKZgEnIUeCshYpkb71g56j2c/R6Zmwb3PjUGP47tSfhqTutg0RmTeC3
 8OWrsIDiEOKi7XvfKpT873CKwpeK2Tw7f7T4fG8Hno9+9qUyljXbMxuNA6DQ7Pz4dEdWXouhX6c
 GhzxuTjkbtsxeEUk8euBg/CCcb6Fe+ZfgBuJtU/VEq6YAA5NGsT9oQjBXO376HvWh9jRP7MaRlM
 60kFx0rWoa5Y6l7WU5wuL2zWwFNhWetsqIOU8TkkE+gZ92pp9z2uRfTjo+97EOhXOxHiq7dcIt+
 imlrvv7M+liibjmXuMRiNDfaiZeox7DJhuoOrt64x7Lp4j1ZrAWRpIJkSfSwOY1FMK56s5IsQVM
 LvyF2eVubG//8gNXvL9o9f4Pf4nPDq+H0GXzocZaKonkyT0M75b7hHg1Ls6QSmy9pW+1RVVVgfz
 nNTA+/G+v57UzDnBuiX39+fqJErwofjbTpOrdgOXcuXIt+zsd9hVVIlAfKDmYbl4N4Qv0VPu872
 /YfMxQQgieXhzItgd6nbiOWbVfunTtIWGC2bYOtU0Wrl3Mzbel919zFnwhftgOJisPqG9evhgzz
 pczXvyfzoH0H/FUfWRWfps/6LDG9gybtVzcg44JQwxTLUM1kzdioIVGGJzGieOj6jHuCMqU8w90
 IozafB4Z0bUMyJw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable PCIe endpoint support for the Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index c08f64d7a825fa5da22976c8020f96ee5faa5462..dec5675c7c9d52b77f084ae139845b488fa02d2c 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -933,6 +933,7 @@ static const struct of_device_id qcom_pcie_ep_match[] = {
 	{ .compatible = "qcom,sa8775p-pcie-ep", .data = &cfg_1_34_0},
 	{ .compatible = "qcom,sdx55-pcie-ep", },
 	{ .compatible = "qcom,sm8450-pcie-ep", },
+	{ .compatible = "qcom,sar2130p-pcie-ep", },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_pcie_ep_match);

-- 
2.39.5


