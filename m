Return-Path: <devicetree+bounces-70710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD978D4204
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 01:39:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABE62285E33
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 23:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A3E200101;
	Wed, 29 May 2024 23:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jblloJuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB017B4F2
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 23:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717025974; cv=none; b=N0fDilU9Wn8eOisl7fBBE2T2hbdgzJeVO0B+v4GKeiBXUh6zPSNfHseZm+LYUk+eyxJL6UcLPU8A7nVx/EJGGxZGbbzzRAS5X+i+PrNX5uF+0WLPG7AWwhmljBFtxp/7wbru8/C9ipADjVvHkj7rPQp6P0Lba/6GVhhgTIjm3fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717025974; c=relaxed/simple;
	bh=8awMhfh+EooDyyG77D0x2IEYHXjNwY2rq0QQPZ/UDew=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KuSj1LFuTVH8KDQKiwC506vUe8fpD8d+rOPf7f2KAfsdck3ahNaiBIqyFeH5IcFnCdIr4j0HKpkcXt7c4S3VQFvoot/wi7u/rPVGJKtDruapnJeVqfKFi7bsqNiKmAfYoU2ZpyVAwSlG++8CkKE17Ytbi3bk/2/r9FdfPEM6kpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jblloJuA; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-5785f861868so253720a12.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 16:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717025970; x=1717630770; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5I0b3/ox7MmhZc36+ZmYiuYZWHtorfeiNRM4b5O0zwA=;
        b=jblloJuAxELM7MD1y/mXaQ8x5rnP+1HG35PqgIc+FIBF2OB00+HRDPgOTROBQPGGRa
         u8wtDgj7MV8pR74MAnE13w/HNdULXZkEv2DUmx3MSndJZHptHTs2o8oRFcHYNWk6LASy
         1/No2CXN/D2d5VIp7jpYfw/eAsuVIrQmH1CiRRzjf6E/56oZAWXcK0KvymRsID2n3lpq
         JpHW2i7SkRi0Nf+HRI5gDcCs1LG8sWvtLQvkxi8aLD3gOWYT0F5KtZyinUEzl2UEPGoR
         KdfjW5XpH+QP1FZYzNWKG2wHH4m4ZIpbMdldvVZyIM3cZVs9NAksnENzlMLeLBoAYG2m
         nxLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717025970; x=1717630770;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5I0b3/ox7MmhZc36+ZmYiuYZWHtorfeiNRM4b5O0zwA=;
        b=sLeaJ+Z/gyjAZox5sPHxjtRLYyRZza9gqhOebxE94AZweg/YVplAnwA0fTCQ1M+XAY
         Mmk+gQkv8KFN7k/WuEJxZS/N5YGq3YbK6058IXa7ehYgANo7v4qTtkxQWbdGoIFZDGjX
         9Nl2Ih2WumqBkgYHOCoYjePenkpEOD+Ov6V8TZD46q+ClzAmLSzjwvpWyY0gYhlpmZXj
         dbjNnqBSz9dnKmbXL1vu+HGkwi4voMA7yucZTqMTNmn0mAUV1C6pkops0rRmIXt8QbJD
         YV4stktmmdCrGLz1voHSbcvxP6GAP/qTWczen/kv+Qsoq1AAngdbejmoo92iLcUs/6qK
         n1NA==
X-Forwarded-Encrypted: i=1; AJvYcCVX6jEa1FpsPCASAls2I3YZ0hEBG9FSxi/PXyV0FepBDAA9jzCJtLCV/Ln4Bp8ZLS4wPpN1MEdidb/KwdQDFY9oOVzHfaNvRkHRpw==
X-Gm-Message-State: AOJu0YwUIyr3jzGp1YuUNBGez3cuftwaJeOFlcXhWt4P/ixZJmzF5+7j
	gD2IoXvk6qiOJ4avj1BKEJr8d/Q+e7fivwLfjCtm43qQVByoSm+GWFCoPYUf7To=
X-Google-Smtp-Source: AGHT+IHGn7D6DYGbQOrty2IQmBKv3oZoLicLkP9rmxs+PJhoevUo88yE8VS11QNFsXTmdkO5zhXYFg==
X-Received: by 2002:a50:99d9:0:b0:56c:5990:813e with SMTP id 4fb4d7f45d1cf-57a17810a3fmr295520a12.13.1717025970576;
        Wed, 29 May 2024 16:39:30 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::8bb3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579cec28c0dsm5129759a12.66.2024.05.29.16.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 16:39:30 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v3 0/2] qcom: initial support for the SHIFTphone 8
Date: Thu, 30 May 2024 01:39:15 +0200
Message-Id: <20240530-otter-bringup-v3-0-79e7a28c1b08@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKO8V2YC/13MSwrCMBSF4a2UjI3kYZvoyH2IgzRJ2wuSlJsal
 NK9mxYE7fAc+L+ZJI/gE7lUM0GfIUEMZchDRexgQu8puLKJYOLEaqZonCaPtEUI/XOkUmvbSWO
 UNTUpzYi+g9fm3e5lD5CmiO+Nz3x9v5LeSZlTRq1mykl3lrxrrg8IBuMxYk9WKoufXLB9LkruF
 FeOO9M2rf7Ll2X5AHOkgljqAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Martinz <amartinz@shiftphones.com>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Caleb Connolly <caleb@postmarketos.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1621;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=8awMhfh+EooDyyG77D0x2IEYHXjNwY2rq0QQPZ/UDew=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmV7yxWiRQhSsrmJ0BAw0120AomnwdJOuQKxX/1
 zxBIFpz2POJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZle8sQAKCRAFgzErGV9k
 tp87D/9VMtaFrW/ML/Yj0lsX+PpDo1F2FhW9EDV5+fQUbA5BXlPXFAi/xAaRdB9ZMucC9/iWdut
 TkRYMN3JjXq4qCG9xqPPDJya8DnMO0R+NLwhxPQz5MdEmJnbQgO3toqSiatjbKxum/Az/JD25dt
 johWicLWRlBnzja/B8oDrFrN2WflV/eSZbOpkiAWVLCELOZFNq2Lq4RBbg9a9aNjDwheaA9P5ZH
 u3JV++irmz+UvpXpKeTSNkqrzCeYd4lSn4v7DPbXMByb/ushbc+3M/CPcwwijYJgFwfWXu82zz6
 5zG469CWq4sVlRtF4R9coOoSIY44bEDmqCtkKQTJrOMjB8nTRFATGVZoqtHFHwz4jxDzKbOPemw
 22qz1bEcvz5EZ/Fb1pXRIPtvHV5+14wl8cfhFFBFniTeuDexFhfiBUA4pOcJgBJ+W2qhVTOyNLR
 lOSyKCRh6oVdWb2eJBwHg2FZDQOTSdvwiPIpc63L1DGXiXvlBhPAAxceUmdcum+J44GNyIz/pJT
 HKNUikUmtFe04uOcLb39zFS7dd2SEA8Vn0vyjeMXCwC5zQqQqWX3jwMgv613DIepBBb9hZRpBGY
 2LiuRUoNGOVuGpokX76S4ngUW1lOB76eiWxmiFdb/DdffnJieECoKO4kbLWgd/5C6fZXpaj+IiV
 +LA5nBMR1K8qFZw==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

The SHIFTphone 8 is an upcoming QCM6490 smartphone, it has the following
features:

* 12GB of RAM, 512GB UFS storage
* 1080p display.
* Hardware kill switches for cameras and microphones
* UART access via type-c SBU pins (enabled by an internal switch)

Initial support includes:

* Framebuffer display
* UFS and sdcard storage
* Battery monitoring and USB role switching via pmic glink
* Bluetooth
* Thermals

Wifi works but requires some commits to be reverted to prevent a
firmware crash.

The serial port on the device can be accessed via the usb-cereal
adapter, it must first be enabled by flipping the switch under the
display. Additional info can be found on the postmarketOS wiki page.

https://wiki.postmarketos.org/wiki/SHIFT_SHIFTphone_8_(shift-otter)

---
Changes in v3:
- Enable wifi
- Fix protected-clocks indentation in gcc
- Link to v2: https://lore.kernel.org/r/20240520-otter-bringup-v2-0-d717d1dab6b8@linaro.org

Changes in v2:
- Fix authorship
- Address Luca's feedback
- Link to v1: https://lore.kernel.org/r/20240508-otter-bringup-v1-0-c807d3d931f6@linaro.org

---
Caleb Connolly (2):
      dt-bindings: arm: qcom: Add QCM6490 SHIFTphone 8
      arm64: dts: qcom: add QCM6490 SHIFTphone 8

 Documentation/devicetree/bindings/arm/qcom.yaml  |   1 +
 arch/arm64/boot/dts/qcom/Makefile                |   1 +
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 926 +++++++++++++++++++++++
 3 files changed, 928 insertions(+)
---
change-id: 20240507-otter-bringup-388cf3aa7ca5
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0

// Caleb (they/them)


