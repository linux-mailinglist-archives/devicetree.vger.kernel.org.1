Return-Path: <devicetree+bounces-226289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C97BD6CB3
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC58D4F0787
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 23:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A552EB856;
	Mon, 13 Oct 2025 23:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vHZoBipo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183B92BF00A
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760399717; cv=none; b=GdXQTH4V9M2641jsVZiirHd81zAcudIIqZCw9NYkZL8/kPo0R8fRhdFhktX0ERwaUYjdv9znZ4fdB1/YW1h7F8NsNd8bIhSmAyHskZ6curojYsv+z32ABwSCSMrQFsDGrG52qXXpqvj0WYoX5Oe+IVh+VaWND8YJGIJt/JcZz5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760399717; c=relaxed/simple;
	bh=HhRYL6rlReqb27/hQPFWHAL5ZmjaPicZFSs9TYaGF+A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UVgoUsFs39xxxsz1KRFk1v5W5P5Jn+6i0u49NtXm0baHvOwB0OQS6cz4EeM0Z/gWAvypCizgCFQ1QD+wyUbCRDN+irG5TmrK40Ig7XV3OkQdcTQpSdpdJkGug4qC0JSNtnM+coY6t1CQ/btMb+XIbGlyrk/X7a7tmUjmy54enhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vHZoBipo; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5848a2b3c8aso610476e87.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760399714; x=1761004514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DZlYl53Gcs+YvKW5ySD1AnjPHaH1uxGA//YHBOMWxWY=;
        b=vHZoBipozXBjTKgvM1uMCOWIa97aPdpKQJyTpqnA5fZQVLcMVFwJ5Tk1u0MEfUEVua
         6HGhDUn+HPDS85bXS43QIppoI56x/JEJ8c/EbFV3NxhFj+pL2Qs/xZw1E4eZNAqORUB8
         w8k5njR8mNay38Gtdtd+AI2H8yuPKH5SGOKeoqbj4StuUhowjPMWbWk4fEpc3yyR69CT
         OkIUwRwIIrRKjUyt2qhsflXATQRyE74ARXYGu6YHHx+QN0xYuaFxjT8VO2k+YIcJxRRB
         gBbNwn8JXGJg3qI57v14rxGbjnGLMXgSjMZlCT3cSitmSZhjCU0wzcxTc4zX1vzB4DZf
         Nn5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399714; x=1761004514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZlYl53Gcs+YvKW5ySD1AnjPHaH1uxGA//YHBOMWxWY=;
        b=Ydjb+ukHQnTdxqHuizkkH0IVLisD+/Cjii7X6BenZAeXH3LFMqAQ6C2Hg/rqCjcB8r
         xdOHo0YaWV/7IL7V5orNTTy2/fDp8uznWDxxq6g6h8SV+kt4Iwntamyq4JvQ+5DFEIeg
         +L9kDeLYYlwKv9yiwblMXpbXNewjhQeZBKAlwxGeb/sFotyEDRz74BfqBKNvMV/1KXHS
         yynThK9mdIfaeveoDKWIkWjPXfrGSCjc2lOdhHmFeiJGBubmqFA5Cxb32tZL+dGytMGD
         dwofXW/PQ/4RH7+IPSLaVreqRvTDCBYGepNJGa/M0bMlLiFLe5z0C90BlxQKza034cD6
         6Xfw==
X-Forwarded-Encrypted: i=1; AJvYcCWRgDY8qTzdxOSQIt9x/N3UbTgh3M25apUDhRBWR9oVsADDwIrkxatkS6GMPZuSN1jaFaSXxDjUzWXq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd8LWRi/5v8o6AJde7FbZBnECseie8Mwqk6DC1wNEoVEzjMuoQ
	b3XOz9ZHPAeo50Gbc3HZlMF21t9D6SKW1lisXZ2vIZRSHeYaSBcePcPy+IuAihEdKe34uoYnH8x
	6thcA
X-Gm-Gg: ASbGncs7CWB5QGUQHv5LTD8bFvMxAG4PtEZYbVCK2VLpN3230orZJX6+omOUXLe5rVz
	Fsjhu0ma+P/pNgkZlO5TtLMfGDzNGENp8pEhxhKIaZnH4lk/VKWk04kxmprYshsYjlCBVOj/qvx
	dIqCRkaFm6sx5azCJUxBMqi12w/GKHQJDQwGLtkW4SUwMAHzrqZ1kKSgJozagFlKndnx8Ldk5hT
	PqChYzCFL8L5OmC2fYJUkvzD0pGHz/NyGCPme0FxDocjnqt8Tylv4ENVufmKr+XHp7NTHU+620p
	7/E1lw3oXDTGUmRqSSTrXivo8g4Gl14vui+lqzSvEgF/7FglHvMbsYm3hjYS9GbgtgXrQKNS8SG
	me5f4r3O6oP0xrfQEN0g4t/j2Yhmcyp5K4NaI81xdAgUPiksrMPRZFts4PYokNpFoG4rKt7PUa+
	dasLpoo9mTOmnqTxYbYDi0C3Y=
X-Google-Smtp-Source: AGHT+IGX5VxUYMd2LCPzmtwRFhUVLS4cGKSRTteUm6SGnJB7AzUvE8heRVPwTEgIe5Q1QgCZVvvWdw==
X-Received: by 2002:a05:651c:1547:b0:36b:d9d2:7357 with SMTP id 38308e7fff4ca-37609c974damr33030161fa.1.1760399714145;
        Mon, 13 Oct 2025 16:55:14 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ee2asm34880741fa.50.2025.10.13.16.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 16:55:11 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: qcom: sm8550: Enable S5K3M5 image sensor
Date: Tue, 14 Oct 2025 02:54:57 +0300
Message-ID: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable Samsung S5K3M5 image sensor on SM8550-QRD and SM8550-HDK boards.

The compatible property of the S5K3M5 image sensor along with the driver
is added in a recent changeset:
* https://lore.kernel.org/linux-media/20251012231102.1797408-1-vladimir.zapolskiy@linaro.org

Vladimir Zapolskiy (3):
  arm64: dts: qcom: sm8550: Add description of MCLK pins
  arm64: dts: qcom: sm8550-qrd: Enable CAMSS and S5K3M5 camera sensor
  arm64: dts: qcom: sm8550-hdk: Add SM8550-HDK Rear Camera Card overlay

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/sm8550-hdk-rear-camera-card.dtso |  91 +++++++++++
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts       |  46 ++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 144 ++++++++++++++++++
 4 files changed, 285 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso

-- 
2.49.0


