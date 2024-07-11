Return-Path: <devicetree+bounces-84961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCB192E563
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:07:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A704C281AA4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76CA1591E2;
	Thu, 11 Jul 2024 11:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jZKWLQib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E20156237
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720696032; cv=none; b=UjnW3jPxsD5OZAPU1CKIGFwfUtDsb99KSW9KafN1Qfzu3oKo7oF/AxoWAMYbaR/OW8WxcOjtz+qwEMP9GjXmY9SE7UaMqTT+wk1dkmLcTzQIb4nnnHW4FVJgWXyAlBxdJzEUR0BzDd9Pf5lXQ2YqlAajlGNk/s2RhTvmnnMBXB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720696032; c=relaxed/simple;
	bh=DXiyJvnZaoXMSX7dmB8Mx+Bw81ZcG1UbxSGB35kWLl4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TitS4T9Che2oIWwUp8SRH3Rxkh0NJRiX59NYk1It9ehTvCWXigGe7DVRN6NzXmvX6ln+oNfGsS5sh/7uhxNkAR8WNZMtdZTrUdhpCgFqrWpIslaN8hYBzceR9ZQOQHPen7s4vHI9vNHRcL1Lhh8mPBMPRy+qmYP/s40Nx6uvu8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jZKWLQib; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4265b7514fcso10952465e9.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720696029; x=1721300829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YAbKmOiNIkgQtdozoam3aD9572Bcc6PrMc/2R0CeN18=;
        b=jZKWLQibqPe7CHxoj7mOuKWn7d5GQk2nNreRn8YWzedXuH/JqZGtGpnSTZHnuIU64X
         5v/dZVJuPihZ34hc0Ca3gGIE5qshBwWt9Roc1w7KGjcZOV0hBCU+YOzJaFdOS30byzOm
         u0hjdo8TgvUGyC4NjgSRhxM+ADXxWxBMH0MDPIQH7g3r8wEEvT8vpe1XxFBgXpt1BRqZ
         QKoT28zYrLa9jkmOvgVA8GESoWtzn8JYwiNZbk+ENUXEMutUw5lmIfH5SGZ0DgLZ+8OR
         Eg04JXZpN3O4TV9bmGVkg5K6AnAhoq44SNyEhQWClDhTLjP26zuGxST6tZSHe+RGk206
         7yLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720696029; x=1721300829;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YAbKmOiNIkgQtdozoam3aD9572Bcc6PrMc/2R0CeN18=;
        b=PtIpxpbIQl7gsK/eoQZ8OiSqEctOW0ROFMBlAO8K3xbLkAlSGTiCvULtNDah2Iz7xe
         X1FgA9fb+cBHsVx5Qyd8Nlq4w9pjt5QypmBLVws/2ulmi6cTIl9GIWUmURR8nVxMr//Z
         3sQmxy0RqNw0qcxRkRTeHit4FtvFyAkB5VNTFG792EcNa8pVgV4DxOHqlSQOfhlygZzV
         iPfEhjVIX7KPLaza4Cq+37QfZQ/V8WOH5QBUxDdwINQ7y0kuO717oX7UPit8Z0pWu5AM
         LM1hjJKR9HUvSUPe9tbnrJ6cx7ZiMFHk9/N7H2AX21jrMV8Ggq7q/4n8CRwtTKVSHSAb
         gmAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUg2MKBeSIMoAP72X8TsqL7KBLff31ai8v+gaCibEeUI/FWhG7iOv9v3E4K2kbI0qUwfXYvwo3vzzdi+OSa4sTY9G/A09a5C9gUg==
X-Gm-Message-State: AOJu0YxPjJcXSR9yk5+ofK2DoUlv0U7npD2nAxKsxXbuF0y5EcdjVIwL
	erVJ6MtExXUrIlA7zQi8xZtcgOVLPClX9KH0OSg33suNDnxq4sUnYIyBYJpeOhM=
X-Google-Smtp-Source: AGHT+IFojqfVrVy4buGmCYzQG8sYbeFjwl9PTyhMXZHY8rqQdHfhqHTIZrZEeL+UTqbEW2AI511d6g==
X-Received: by 2002:a05:600c:1c99:b0:426:63bc:f031 with SMTP id 5b1f17b1804b1-427981b4c8fmr20806045e9.1.1720696029395;
        Thu, 11 Jul 2024 04:07:09 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6e097bsm115686685e9.6.2024.07.11.04.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:07:05 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/5] ARM: dts: qcom: adhere to pinctrl dt schema
Date: Thu, 11 Jul 2024 12:01:37 +0100
Message-ID: <20240711110545.31641-2-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,
The following patches make the device trees compliant with the pinctrl
text to dt schema conversion here:
https://lore.kernel.org/all/20240709162009.5166-1-rayyan.ansari@linaro.org/

v1: https://lore.kernel.org/all/20240710084250.11342-1-rayyan.ansari@linaro.org/

Thanks,
Rayyan

Rayyan Ansari (5):
  ARM: dts: qcom: apq8064-pins: correct error in drive-strength property
  ARM: dts: qcom: asus,nexus7-flo: remove duplicate pinctrl handle in
    i2c nodes
  ARM: dts: qcom: apq8064: adhere to pinctrl dtschema
  ARM: dts: qcom: ipq8064: adhere to pinctrl dtschema
  ARM: dts: qcom: ipq4019: adhere to pinctrl dtschema

 .../dts/qcom/qcom-apq8064-asus-nexus7-flo.dts |   4 -
 .../boot/dts/qcom/qcom-apq8064-cm-qs600.dts   |  25 +-
 .../boot/dts/qcom/qcom-apq8064-ifc6410.dts    |  25 +-
 arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi | 362 +++++++-----------
 .../qcom-apq8064-sony-xperia-lagan-yuga.dts   |  10 +-
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi      |  34 +-
 .../boot/dts/qcom/qcom-ipq4018-ap120c-ac.dtsi |  34 +-
 .../boot/dts/qcom/qcom-ipq4018-jalapeno.dts   |  27 +-
 .../boot/dts/qcom/qcom-ipq4019-ap.dk01.1.dtsi |  26 +-
 .../boot/dts/qcom/qcom-ipq4019-ap.dk04.1.dtsi |  14 +-
 .../dts/qcom/qcom-ipq4019-ap.dk07.1-c1.dts    |   8 +-
 .../dts/qcom/qcom-ipq4019-ap.dk07.1-c2.dts    |   2 +-
 .../boot/dts/qcom/qcom-ipq4019-ap.dk07.1.dtsi |   6 +-
 arch/arm/boot/dts/qcom/qcom-ipq8064-ap148.dts |  11 +-
 .../arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts |  76 ++--
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi      | 114 +++---
 16 files changed, 309 insertions(+), 469 deletions(-)

-- 
2.45.2


