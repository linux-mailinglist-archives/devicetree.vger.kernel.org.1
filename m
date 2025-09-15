Return-Path: <devicetree+bounces-217453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AE8B57D1A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:30:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 439E24C0292
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62951313534;
	Mon, 15 Sep 2025 13:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nrgbE7Xv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30034313286
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757942936; cv=none; b=Dfj2ik6Ujy2MueoJKqm43p9jCzaCcVqXp1S4BKKWUgeRGx10oLI+baVBrav1CO6vOyb1/6aMYAWsPT3FAAMmM3q1s9fl4+tMnnQSfm6VeORwOGSzV29/tu3L1cQh7bDIIaTJk25khHpzaCf5bVZxyJ4BXBVrFEykCSeO18vmyj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757942936; c=relaxed/simple;
	bh=xEgvgp1w1rmeywAOVMjlCu8mw7ilAI0jVsgUn340nr4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=WiPoWR2EmzrJoXE550SmhETRwPDvUuG4fE3PT7r35ikRovMOUMrPIoq4pW16y3pNZlzHD7CG98pg40bM6nZm53EcUQjljNLRChUbO083sASQkVZkRE07eW3pZ7QlvFirCW7ZWUBjgDDkjRv4G55hAP7Jy9BURPrvwLd+K9NDA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nrgbE7Xv; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45deccb2c1eso32172895e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757942932; x=1758547732; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E64EnDDoUOocvbh8uugNWKeoaww3AkFSaRKoHulwLmQ=;
        b=nrgbE7XvEID0Yju47ylFelyaSgKwRjFDNdtTH9r5ZEFtndr0BODbIooSPcabYXplaE
         E/DQDT+OnDxOxMHUnPk3gWKAQAp4p6Q3Nu2Mm6x99ZgjvMNAjYRXD7M1JM/sB94JjUKH
         elR6lnOPdOuW6h2/t8pv88Sv6HoeKoXk3Gc7ExIbNkWsz2yOA1R8S0nhPOvx9t3J9pP0
         ASD73GG3og6N/lHB6IJBMTszg/T/Bbci4ZKT/2pn7phJ/AzKmHPDwXKBaNG1UtAMteSV
         MApAgRtCb+vZH9rkzD/Cs/ekKEl+mISkBK5+J6VrIh3FHIz/4KRKpYr7gaO+Hezg/N3b
         C6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757942932; x=1758547732;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E64EnDDoUOocvbh8uugNWKeoaww3AkFSaRKoHulwLmQ=;
        b=ATndqiohR0kH2aYSGZ6wqmzeqjYj+5GyEz6EkfOUATX4SSQ9Z9diHgMGwATz7kb/Nw
         sLxNPLf1GOVHjQGUoPHFJtz869sb48MgMO8/tfivhgeh4VfxdaTGCR77S6/6noDa5sIF
         HfICtSpbXR9JLBZUYNeNx5FAicwDwWKCoaJ3g5V7TYHpXaCO+WLwg1D4U/op7jADioK8
         R0Yu1yVpV7HcNT2mHxHhXmgREe2cfj1dJVi0F7rwNO/JfH3WjlGX0ls8EFfXkFm3NKWY
         Y9lQmTacqlViPQIOVEp7kLH3vSUnH8ejuGm+fESFFb5BzRfwnbpriI1GRYzVWYUOmnfT
         FUEw==
X-Forwarded-Encrypted: i=1; AJvYcCVkkCJzAlI7m8BGITBErDzqCeqaReafxsDI/HVeBZM+jMjCWUGfpTRe3U2LgmPedvvS+LzIqj8ya2rD@vger.kernel.org
X-Gm-Message-State: AOJu0YxB5eYQ38elvej378Kc5Mb5viEX3c2XOZxaVkFaUVxHNtesRQyP
	mRCsKF8qXv42RUxaM3RrqPIvNMAKDexsQ32I47Ab36cqrIsnHgdmvyRkRe4ETGIlHK8=
X-Gm-Gg: ASbGncsDf+mnvyhBt37YXShi0sgnyYxVt5ZoewD3tfJRDnLTaRGroaRFiiEJp+m3Jlh
	M2nERp4x4BEHvVziA7EqabNTHnhUae6v1/V1lvV+CgXQjKXMvnRj4eCnxL4nemOtu4pImYHvsfp
	7J3dtL31LERh+a8okYNTQ3PB2wSOHZGZu4/AmFJute1i1UpYLc2yzTFQAXvEE85EslYU+uB9eiL
	ofsLKNkPd2tIFU+ccLvacbSusShE2s4z7GDE/7SHt50U+uVz0QwKYO0ohJ4fq+cgkrxP5w55cSx
	oq5zE6Hsghey/ynoWBEMr2y3MJqPTcEN/0vcwgVRYAKmz6+FmQl7iJUylQXf21g2OT6zCLUJg/E
	aEL3Pjm9z71Wt/wSNcZa5eLdc5CSls4D09lTglfVAX1VzHw==
X-Google-Smtp-Source: AGHT+IGMJiALjnpkCZFxZk9BbN00L9xwO5fbJ1orbywijGyhwDs/6vzS8QZBYd1u/SfOaaq9fQHVyQ==
X-Received: by 2002:a05:600c:6c94:b0:45b:9afe:ad48 with SMTP id 5b1f17b1804b1-45f211d57e3mr101731705e9.16.1757942932310;
        Mon, 15 Sep 2025 06:28:52 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9fd89af70sm5978874f8f.43.2025.09.15.06.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 06:28:51 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: msm8916/39: Add missing MDSS/SDCC
 resets
Date: Mon, 15 Sep 2025 15:28:29 +0200
Message-Id: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH0UyGgC/x3MPQqAMAxA4atIZgNtoGq9ijj4EzWDVRoRQXp3i
 +M3vPeCchRWaIsXIt+icoQMWxYwbUNYGWXOBjLkjLcOd90bbyuMrHwpOlqIHVWGxhpydEZe5Pm
 HXZ/SB1cE2jRgAAAA
X-Change-ID: 20250915-msm8916-resets-52f2e52602b7
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

Add the missing resets for MDSS and SDCC on MSM8916 and MSM8939 to ensure
that we don't run into issues with the hardware configured by the
bootloader. On v6.17, the MDSS reset is necessary to have working display
when the bootloader has already initialized it for the boot splash screen.
MSM8939 has the SDCC resets specified already, so that commit is omitted.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (3):
      arm64: dts: qcom: msm8916: Add missing MDSS reset
      arm64: dts: qcom: msm8939: Add missing MDSS reset
      arm64: dts: qcom: msm8916: Add SDCC resets

 arch/arm64/boot/dts/qcom/msm8916.dtsi | 4 ++++
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 2 ++
 2 files changed, 6 insertions(+)
---
base-commit: 62a9be0b3388d1026117de536f6c81e09ba219fe
change-id: 20250915-msm8916-resets-52f2e52602b7

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


