Return-Path: <devicetree+bounces-84401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 016EF92BFAC
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 18:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFF4F283A78
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 16:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D051A0709;
	Tue,  9 Jul 2024 16:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PRIbztU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0D91A01AF
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720542035; cv=none; b=el3opoAT4+LTo4UWPGg6EsZKgs4gL1sfLJ154gLyLF8prr0DaFEPjh1el8rosAHW0qu0TI5LSiwSltMP2UoqAOufGKU1eVc5ySz+ouFeaFmDFEAreHSUrFYIqWZPFfsoWWQdz2Jic10VxcycL1lBsvF4ZZe5+RMVvTa9dDkFbJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720542035; c=relaxed/simple;
	bh=5st73kOX6niI7dZR/91fmwwqnxTqrZu6i3fehCAZ5zc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OUL2fhrZg9lWzNZFoP/ii3tN9UDmV5GEFFskzcA4LwM5MwfidLqN3n9gTEkYoH5AlKMMYpr/9Lr80c4k6iUOWgpC+2dDss+j27heSk3U4bOWQ6PMhBdkOKzehtkfassq1JqariMmWoWYloL4LKn/wsVTyeKNBhTlv5mLbYcJCV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PRIbztU0; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-426526d30aaso29715905e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 09:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720542031; x=1721146831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z9DRYaK086JGmwgg9/og5NAl7NqfChxitmX14BDZNew=;
        b=PRIbztU0tbMxRl0zaoaTw4hCPAio8NOqfA4bAJSk+TyP85VQ8AO2syit4mQ+qQ5O/C
         Ddq1NPYlvt83LODkPD5PpJB1+w1477Ql9nwQIV28Dj+DHvDi3yMA3BuJ6Tnj1rgXRVWx
         gTNKSaF/seXjYPNrQrBcFqL8it8TPMoMEK/EPzBSfHmU3tS6SbBVHg1DB+Ez+EQioKXC
         Sb13pzknsUGJMqGYH4p8Neo1PzNYU8QcxbKFZR0qYYKHvKxYgUYiB72PsuqezrbYyTnd
         3DXThzKXRjo0sNWM7JLfN3sk+RiNjRfrQRXyloK8paif8fEI7lhNndHIG6GOp7/XO8+x
         YKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720542031; x=1721146831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z9DRYaK086JGmwgg9/og5NAl7NqfChxitmX14BDZNew=;
        b=FbdmzSajQ1qX61jE8L9qfezLp+NCRPTafYOx6/ignFUDw3nPsRVTgnuAUCZbxE3aS6
         3bv/8nz9kaKqFTits6ybR6fdX1xh1X4k4Tx6htE8EhajQ7ya/VwSQiSk97xlNKaF9j00
         PXZMKtpPry8c2qqFPETUOnFsnh1qUuoXg4LxMpnRbHFFpIp0eskU5xHP/SM9mB5DVdtz
         NGZG7G576t9aPnvRq4K8sT5anQoPGJZkztAaKKqmBQ2NNTZaJQH9eW5D6EWjrSEWHFpL
         LcHSxu+ycmKDjdH7wU6LtdG6fy79eCoDvhK+w016GH5TNg7w2qMiDXTTn15hbNw7aW9n
         06NA==
X-Gm-Message-State: AOJu0YxGw7tilY1ZFLEwaasFYsk6AKWWLcoRifKU2bN+EUMfOOhd8rdq
	KA1B8yTWvdtVZtEad0Fm3z89AVlLmeL6pLbHmpqpayD9BrVtSO7IeqYxt/0LouOMXX9lIbNZVA5
	l
X-Google-Smtp-Source: AGHT+IH20yAq+roBl8gRs1fFr53+7Ufp7oIBFU8tJB9uf/asNe3YYKfGca9kCcuwlS3kQ8aidhWhUg==
X-Received: by 2002:a5d:51d2:0:b0:367:8f29:f7ae with SMTP id ffacd0b85a97d-367ceacb46amr1892463f8f.49.1720542031527;
        Tue, 09 Jul 2024 09:20:31 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde7e07fsm2966955f8f.17.2024.07.09.09.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 09:20:31 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/4] dt-bindings: pinctrl: convert remaining qcom bindings to yaml
Date: Tue,  9 Jul 2024 17:17:52 +0100
Message-ID: <20240709162009.5166-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,
The following patches convert all remaining old text bindings for
Qualcomm pinctrl to yaml, so device trees can be validated against the
schema.

Thanks,
Rayyan

Rayyan Ansari (4):
  dt-bindings: pinctrl: qcom,apq8064-pinctrl: convert to dtschema
  dt-bindings: pinctrl: qcom,ipq8064-pinctrl: convert to dtschema
  dt-bindings: pinctrl: qcom,ipq4019-pinctrl: convert to dtschema
  dt-bindings: pinctrl: qcom,apq8084-pinctrl: convert to dtschema

 .../bindings/pinctrl/qcom,apq8064-pinctrl.txt |  95 ---------
 .../pinctrl/qcom,apq8064-pinctrl.yaml         | 110 ++++++++++
 .../bindings/pinctrl/qcom,apq8084-pinctrl.txt | 188 ------------------
 .../pinctrl/qcom,apq8084-pinctrl.yaml         | 129 ++++++++++++
 .../bindings/pinctrl/qcom,ipq4019-pinctrl.txt |  85 --------
 .../pinctrl/qcom,ipq4019-pinctrl.yaml         | 102 ++++++++++
 .../bindings/pinctrl/qcom,ipq8064-pinctrl.txt | 101 ----------
 .../pinctrl/qcom,ipq8064-pinctrl.yaml         | 108 ++++++++++
 8 files changed, 449 insertions(+), 469 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,apq8064-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,apq8064-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,apq8084-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,apq8084-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq4019-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq4019-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq8064-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq8064-pinctrl.yaml

-- 
2.45.2


