Return-Path: <devicetree+bounces-248630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B6ECD490F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3310F30080DF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 02:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED1583242B7;
	Mon, 22 Dec 2025 02:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLkHRC1E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C76B81ACA
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766371124; cv=none; b=KVKqA6atdCITlnmpcYR8KbQtXlMqTywxB5MGn75wHp/5Jzmy1ZAAb4IYHUXn0ebiWnhxgSpdk8ZiawHS3kDcqAZRu1qPXj4xLE9fLgeaPrQNgsvWZ09+py0a7KlTpZ/E6npN/2aj9r1yESMYraol/mQqmjDcyFDP45IBngogwkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766371124; c=relaxed/simple;
	bh=o+lo2R6VrD2l1K1wAu3s8Nm2uMhAoSvHCmKpmzcG7Wg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bZf9bEr34KQEwz74yi+A14fDhmk9pRXYCPExX07UI7+S//G6y7A3+kKGlpcss6RX0VkPSlaf36HlCykGJmpcjfEtAem4/qD7MwMoD6/46IqC4FvjXp+FsOQSSQpbD6APITDv0luuio6hcwNDN3DyJNagBiExAaPD1Qv9rJ83m0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLkHRC1E; arc=none smtp.client-ip=209.85.167.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f67.google.com with SMTP id 2adb3069b0e04-59425b1f713so184837e87.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 18:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766371120; x=1766975920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cKplcJB4INYhLUJt5K38fUJf5ua/a1xn8diyUX/jozo=;
        b=XLkHRC1EaGLPfW4YSiWEpiEasnVFGlWQL4lYG3DdVPMhd8AlNauIG12QYvia6ahQuh
         CxXI2Fa/8YLO1d6wq1YrmiwKJ5eKuW1fcr8fvEm7ah5l+/2049yhxXfU6IwMC2eLCiQU
         EClety32oaCOiziPJgq4NR75pvbkvjN6sjWGUMrIs50wVDGhDyR7NOuepaV8QmKYk5kr
         /iF06bdeYD4yBToGsOmJU9k/epTs2bNn0x5czMMzRTwWmUpcq5Gy0T7FquJ8jmApK/s/
         8eDkiqCs1rOgw9YrmVL/4gYDpc9cWP0XRsVxuO95yc+X86lzcrSz5oUcSp/tSLu5EOue
         pvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766371120; x=1766975920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cKplcJB4INYhLUJt5K38fUJf5ua/a1xn8diyUX/jozo=;
        b=jnLpD6syrBQyANF+r74NekwEgOdtEDnaEm/YFu9Kx+ObOzp8upyLY7N5IT1mBVg6i5
         1uFJdsPucEDNBB2BsP4sN/Va/Y4F8ZxFnqfpzxiRg1v3YYolVENtm7g2o2nmHGSotITL
         uQTnXOEwu96d62AYozb1LMxP2kEx5VNhSVKwoNI1XzM3KRe1ZBYXToV2yTcx8sPTQTSl
         jioTyVQ5kGwRNHF/WnAioMxvgATihjyO/LLD5qpXPO26w1v9KlqAwJZ3j5+5Ob7thWvZ
         lWO1LbAtp5/wlOkZ6AbRR4KGBpGxgry7LiLJb5dEQOohVBHbfDbvUYZR3lSM5dF0MFws
         2bWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxHLGdOj2f/tTEPc/xMMwpW9ma+uJUgGaP5NUfkuC4AGkFZzXy8429bJw5TDXKUjgMbTuwmirsHOtW@vger.kernel.org
X-Gm-Message-State: AOJu0YxO281ABrq/cQLQ4+mzsOg8yF192/Inn4G3hKRBPkt90si7p/Ik
	/1F4umQeK11TFg1n75NOEGx34ovA6IS5a4Mk69M5nj9IS+JtX+VXY2L7TIScyFFC5aI=
X-Gm-Gg: AY/fxX4/ga1m0ya3zZjSH46D7mo0nasVqaR71BZm7usIa1KVB8MD21TH98PVMAjVTTf
	isux+jgcR3eWYA/RaU/w4jgVZoF1hcpOQ5m3XQFFPkg7G0NaAJhBwbSDFZaARdOM/80d0Q6b51s
	j9ksbM12wHsKZig+EjAftnT5JEoSuowXldTvVHd6Jr7YUVj3rF/x3H048X7C1eIDs4IZH7M7vi5
	eSGrK8Af6AiQqcuSYaQZGJLpMJe0iwIEaaAVxnis+lX5oa3A3j2efWDoYvXE+oEKnQ+VzsHaI/i
	XjDzjnu5S3oArTbHWsEaBfH+p+sAlEouS+jWO4zLtSnBYeLFxhxQ6SRM8ksxH3+RIt9ejIrKDPi
	I7JMQg+eOVqPGwq9YHUTX5U+QjXCw453OpcdCsRIEqqGG2/sf1SxcpuMCxeMaWOpCmPEYvg/3Vd
	OaNHMFcGFz44/sl7mrGS9AfzSCH/zycP1CeKz5Dvxqr1jZJESjYY6OBw==
X-Google-Smtp-Source: AGHT+IHh9nsbdPcviX+36zw/EY+HxcRMpmEmVE4bG3Yo6GF15MCmn6yFnMTw4RnDESnldiSEuCzRjQ==
X-Received: by 2002:a05:6512:2350:b0:595:83c6:2228 with SMTP id 2adb3069b0e04-59a17d1c883mr1987950e87.0.1766371120394;
        Sun, 21 Dec 2025 18:38:40 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186282e0sm2778259e87.95.2025.12.21.18.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 18:38:38 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] arm64: dts: qcom: sm8550-qrd/hdk: correct S5K3M5 properties
Date: Mon, 22 Dec 2025 04:38:30 +0200
Message-ID: <20251222023834.3284370-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The changeset updates voltage regulator property names and removes
an optional data-lanes property of Samsung S5K3M5 image sensor found
on SM8550-QRD and SM8550-HDK with Rear Camera Card boards.

This reflects the changes in the dt binding documentation of the sensor:
- https://lore.kernel.org/linux-media/20251203040241.71018-1-vladimir.zapolskiy@linaro.org

Changes from v1 to v2:
* added gained Reviewed-by tags (Konrad, Neil),
* removed changes, which move status property to the end (Krzysztof).

Link to v1:
- https://lore.kernel.org/linux-arm-msm/20251203040538.71119-1-vladimir.zapolskiy@linaro.org/

Vladimir Zapolskiy (4):
  arm64: dts: qcom: sm8550-qrd: rename image sensor supply properties
  arm64: dts: qcom: sm8550-qrd: remove data-lanes property of image sensor
  arm64: dts: qcom: sm8550-hdk-rear-camera-card: rename supply properties
  arm64: dts: qcom: sm8550-hdk-rear-camera-card: remove optional property

 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso | 7 +++----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts                   | 7 +++----
 2 files changed, 6 insertions(+), 8 deletions(-)

-- 
2.49.0


