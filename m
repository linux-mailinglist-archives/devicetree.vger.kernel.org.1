Return-Path: <devicetree+bounces-99943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 794B596BA19
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02E3FB287F6
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908D51D0957;
	Wed,  4 Sep 2024 11:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zbwb7gY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14391CF2AB
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 11:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725448601; cv=none; b=jDOQK9zNqa2b7mmVskM1FrcX7hPOSlzpVbSDBuEk9+ViL1duYMffOkio4/vltrgcrAEPgKwwYEi1GOmwvwtDBCta3D5kufK3dkOSW+37vvs9jOFv0pIfg4B7CVP8Wq+8ljGUqkyaVUuVhQO/G6QVyNKp5klwrh5OSx6Uh6RNKG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725448601; c=relaxed/simple;
	bh=c7YFjQZQ9qFiuq/qc02UdppMtxArDtNb87IQeV7cXpw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=A7BneXyqIl/hso+k+bia9TgqBhZ7ktSRyRdn4gvoNBfcRuXSHiPu27dMc+1bLzHn6l5DLbJESkbe0HdacZcEbSKyI4iqZQ3XZtFa6zuqFNNTvz+860DDjJMOO6TB3i7G1JIvxpOV+41HY7SMuHNuIu6yTJxmpbW26/hO8AFtpOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zbwb7gY0; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7a843bef98so675016066b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 04:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725448597; x=1726053397; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oilg9tWKvEXxQ/M2O3r+jxuJg1mqd+S4i3tG0SK8JO8=;
        b=zbwb7gY046kxD1IavPkAO4+3by9K3XkI9OsNtC2+5SSD9OxBoGmpmQmnCndJTL/9bu
         UNC5GdpMMR8FrxDg7fJKxe3a5l1t3GgoXt8V7XSjuaVTbdY/lsEkM8dsP6OkiE1NsrDB
         UJMKa9c/qYwUqsYq9uGHySDRyIM9bIERyseQI13VmlatVskKipuVa7OWID4rCk4ud73u
         A6ijngLOzK5WHjQZexXFMuQp1yyCzzt07KNwitNHe1aEudNkGj1LcSn6tgFF+0gQ1jMN
         QusJYiWrWkttydtS8ERTbFNFGfFKOprxMCtMrpOJOW2M16l7BA8rZRFD36gq7xKWZ4s7
         DJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725448597; x=1726053397;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oilg9tWKvEXxQ/M2O3r+jxuJg1mqd+S4i3tG0SK8JO8=;
        b=V3Aah7hpjBEfTW00SyhPfTI9+1KDEKikcFXZLtPDlYZ0Dp6fHxiwQkZWSavN23lLql
         cDh3npOR61+QvF8Rnr8y519X9W5iYKNXnZjttbKbMRFp9Jkcs2dMjLCRHDlihtQbkeGA
         UJXp1wqoOO/mgUAETlUPdwZkXC3RQUG7axfaesBS26x+BOyS7dwccdLju0jpjdi06Hbl
         6H7Evu0nCxfyEUCNpQPVOor7i2qXLp8JWCGvIsop19Lu3QMicduzxpCgWkId/DjWIZLd
         yr6d8SagRZo7tlxhojd2ixGQpix8xRMk//2DcOruomSYElJX9+unsP0Jw1B31GTPy38A
         uEig==
X-Forwarded-Encrypted: i=1; AJvYcCUF8dzcWh7dzS8ZefWNNz3Qctd7jBA+Mq87U7t7+qDqBq/Z/qNLOJaNimu44PCLrNqBe6U5hnzYEKxi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0REZArIyejJXoQ7OeuHNvsB2PJdl47bCbOjPLwDEXK4plZMKA
	dy6zDWC5mLgGd2tMYqshB8r5RyoORD5rrvUJWP/93lwd7pPc2eng4mL48Y8kaFps29zAIo/CZnL
	Y
X-Google-Smtp-Source: AGHT+IFDLxf05mFn6Zpo7gPc8OHs5gmBfZ92hDGbPWWx24YvDxOHnYJCYJHl59RPYjBMZgwXa+f+Gw==
X-Received: by 2002:a17:907:3688:b0:a77:cb8b:7a2d with SMTP id a640c23a62f3a-a89d88494ecmr1086423166b.49.1725448596781;
        Wed, 04 Sep 2024 04:16:36 -0700 (PDT)
Received: from lion.localdomain ([2a02:8109:aa0d:be00::a253])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988fefc12sm793401966b.9.2024.09.04.04.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 04:16:36 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: rb3gen2: add second USB port
Date: Wed, 04 Sep 2024 13:16:23 +0200
Message-Id: <20240904-b4-rb3gen2-usb2-v1-0-b858e681195e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIdB2GYC/x3MMQqAMAxA0atIZgMxrYheRRysxpqlSosiFO9uc
 XzD/xmSRJUEQ5Uhyq1Jj1DQ1BUs+xy8oK7FwMSWerLoLEZnvATGKzlG6oSabmFpVwOlOqNs+vz
 HcXrfDx01coBhAAAA
To: cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=934;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=c7YFjQZQ9qFiuq/qc02UdppMtxArDtNb87IQeV7cXpw=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhrQbjpNzMsUjnfPSGo5sjz+mqseqyafq941JwfDifr+9Y
 tdzpzV1lLIwCHIwyIopsoifWGbZtPayvcb2BRdg5rAygQxh4OIUgIn0pDH8jzdeVsJrNUfzVPXG
 7X4hluk2V2xXzeo7ydCbk3ZLgIkpk+GfvStDjmfoqXklWW5qFvWqhTvPKp8qC+da7rVeg68iguU
 yAA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

Make the necessary adjustments to enable the secondary USB controller,
which is routed directly to a micro-USB port. This is intended for
debugging via EUD, and is otherwise useful as a host-facing port with
mass storage or network gadgets, allowing the type-c to be used with a
hub.

Peripheral mode has been tested with a network gadget, but I don't have
the necessary hardware on hand to test host mode.

---
Caleb Connolly (3):
      arm64: dts: qcom: sc7280: convert usb_2 to support multiple ports
      arm64: dts: qcom: qcs6490-rb3gen2: make node names consistent
      arm64: dts: qcom: qcs6490-rb3gen2: describe secondary USB port

 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 75 ++++++++++++++++++++++++++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi         | 18 +++++--
 2 files changed, 87 insertions(+), 6 deletions(-)
---
base-commit: ecc768a84f0b8e631986f9ade3118fa37852fef0

// Caleb (they/them)


