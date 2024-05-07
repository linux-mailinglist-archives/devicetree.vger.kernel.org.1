Return-Path: <devicetree+bounces-65613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBDF8BF2F0
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 02:02:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A72D6280E12
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 00:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828F012F38B;
	Tue,  7 May 2024 23:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l4WaEWPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B275D12DDA7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 23:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715124540; cv=none; b=kLqbpp4g8ooAf6UHyzL/5yJ+Kz/JBluSD29FiwWMc9bqIjHyYmYKSKGy+rDPTiVakmsHvojJcElacqpz1952RNkFoXGVW4ajbfXKWY7WjK1zkY6z9dEUb49elt349dTn6M6f+SARZopWgin549zj7N7MaiN0M5shDzx+onSznKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715124540; c=relaxed/simple;
	bh=6N7YQ0tqw4GK3rBRagXlWIy9Y10OPMOiuDCFV37xTOw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lGy5jx6IP2nUGRRxYxMOVIiBhh8vkHQxGLEGrP6ZCOAbXa73vaQGTfTVQpmRVZRKO3IA8RNRb+OKmiO5Xk2ITLCX9WR3tSmhYD89tgdBrDlrQoQuMUrBmnPi4isIw8GwKxBkgWY9+FHJUCV5XUIMyRmeHywJQuVqLunwAMBue+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l4WaEWPg; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e3fa13f018so14694511fa.3
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 16:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715124537; x=1715729337; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SZnivb6l1xDPNW5GpJEM2VTzatebi8iz4jebWhunJco=;
        b=l4WaEWPgsGXjk/8nafmVi310JcynF/KQatFvGiz6/dON5rfOjLwPgioNNbG2ftga2D
         0YceC5cqb5Liwh5wfwxFRkkI8CIiWLTG9cODSp5uE1nP1VjG4kY7LpJP08nM5CPBDWk5
         xZWMYqisdYMo5O2sZ3Dp+zKD3rqFTwsfDl6Gpuv/Y3LKRhQWKwFvHXoMZKeISmcJCg29
         FZcj4lmmxDmiiSUYL4DR+HWNApwFb4Bkt4qi/x6lBVQZSsZcQuUnvv2HIhFdOllN+ZwM
         aijbe2e/GfMhz84I2tKd9hI5jDZAFdvZ/3I8zhupt9h5YECXN3VBBzVZtmf77oSKQQa9
         tu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715124537; x=1715729337;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SZnivb6l1xDPNW5GpJEM2VTzatebi8iz4jebWhunJco=;
        b=OMnrhpcn3KL9FstAN4bpFFoL/yfFAI4Mb3hH81eDVwlEowWs7n1yzWoKlJarne6kV8
         PwUccsCpbwzEy0Bc/GR0iJ1h6sYPSvO6XY8I7+UhosJYJRLp7aKYz5s05oAZeVlJAI09
         pWDpQ4ZLknorBTPufo1QWQ14bXeF7JuojUpxFSium9Xh1c0bCnB6Q43C6/DkOirZIigU
         NsfslTJy+QqCIMV1vi7x/bi65DUrG4da/Ms+5wKGbYs4v2JWI+1jBRj7BOfnxMqgtqjd
         XKD34SWtQH/4WZNyusvm+wjlaXIDgGR207+OyQBIOe0oy04AosemReQEPOaiHf5wZ/wf
         ZtyA==
X-Forwarded-Encrypted: i=1; AJvYcCUzKdRD9HmQ4I0Szxk0TTBmDODD+P7ffs7LSXq5mTqbebhAJtr+TcW10mU/vmDvWHVvJrYA7gk++m57DGd9ZEpzlDDZpcBe02vEGQ==
X-Gm-Message-State: AOJu0YwQlK/yl/ARaWoUeGHn8JhkjfiKk5XL8NNIV5LenZyvYCVjiI1x
	aTIgVf2G0lWUpW9+Wbqchaz2dwR4i5IS0c3xLk1QySI0kFxRZby0F9/uYgqXId4=
X-Google-Smtp-Source: AGHT+IEPiXoxSzLzRXgrv9XDV9vtUW/h06YqEXe8uksqmJa5e8EscDHKjV8RrPV7tXMeqhjdWBg8Yg==
X-Received: by 2002:a2e:97d7:0:b0:2e1:afa6:9291 with SMTP id 38308e7fff4ca-2e446d7a622mr6991041fa.8.1715124536837;
        Tue, 07 May 2024 16:28:56 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::8bb3])
        by smtp.gmail.com with ESMTPSA id f20-20020a056402195400b005725c56b35bsm6851841edz.71.2024.05.07.16.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 16:28:56 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH 0/2] qcom: initial support for the SHIFTphone 8
Date: Wed, 08 May 2024 01:28:46 +0200
Message-Id: <20240508-otter-bringup-v1-0-c807d3d931f6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC65OmYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUwNz3fySktQi3aSizLz00gJdYwuL5DTjxETz5ERTJaCegqLUtMwKsHn
 RsbW1AHe6n1RfAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Martinz <amartinz@shiftphones.com>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1280;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=6N7YQ0tqw4GK3rBRagXlWIy9Y10OPMOiuDCFV37xTOw=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmOrk2B/4XeVkV74lSsQlHo/KIqvv30KzVQVOou
 8C7/EL5ezKJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZjq5NgAKCRAFgzErGV9k
 tpPHD/9xh8ILKiI6drHKQPf2GAlPWWACEWKpC70RqEBfpRSwCzDoC3nh7TupxrCt1UdFLeoN5i3
 rGDTOxM+BwP8AcvCIyVw6FUetbNQG0tm4BIgwFx0vNFi2znWY5TTm6rsuJh20C8Rd3x0fkN/ydf
 5arNFbKWVJfzfMkeRKqfE82ApbS4LMcOAcLTEq90Im7zJntJR/zrAPe0viHd6WBbBVx2NDMxYer
 niIKxCrCcZ/7O3AAO4UxHo2i0o7/SSBtauMKRHyGBLCg4IM11WTtp4yove9l72zncqMeRcPql6K
 IaIkjikjo/5mWnknEZ+G4/XOmpXaj0GfFhAZaVRTLagtG84Vs30C1AgzWtx+yBwRs8NmNmiMYxj
 v1cwR/3PaWllWKaG64ed7rn0Xph9OcabmLCN3S/ZiHaUjCwRY6DiWEDIPjrRpbDgCvTN54y6y6r
 g/6yeidUpEem04gM9N21mKt4mslDxxHNnrBwNebbV7GmqzrAH1j/WjjmPKFYORE58e98SAxxFRJ
 Ovn42MYMVniMc5q8X7fCsNxTzklVq4TpiuwQcspxW0L1b8MfXdN4IuL6zOC5VvwQoXihzE6cESV
 zGScL/5KTnRK+Wq8HLUlPGA22Mrr97xC3kPERcGAHKLXSzFzjWM6F2JJyHi7CvyU+lVF/jXKL5n
 5v73LqddEtOiaxA==
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

Wifi is not yet functional due to a crash in the remoteproc
firmware.

The serial port on the device can be accessed via the usb-cereal
adapter, it must first be enabled by flipping the switch under the
display. Additional info can be found on the postmarketOS wiki page.

https://wiki.postmarketos.org/wiki/SHIFT_SHIFTphone_8_(shift-otter)

---
Caleb Connolly (2):
      dt-bindings: arm: qcom: Add QCM6490 SHIFTphone 8
      arm64: dts: qcom: add QCM6490 SHIFTphone 8

 Documentation/devicetree/bindings/arm/qcom.yaml  |   1 +
 arch/arm64/boot/dts/qcom/Makefile                |   1 +
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 938 +++++++++++++++++++++++
 3 files changed, 940 insertions(+)
---
change-id: 20240507-otter-bringup-388cf3aa7ca5
base-commit: dccb07f2914cdab2ac3a5b6c98406f765acab803

// Caleb (they/them)


