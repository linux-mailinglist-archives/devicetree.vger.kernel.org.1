Return-Path: <devicetree+bounces-216129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4CEB53BA6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 941403A3DD3
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969802DC770;
	Thu, 11 Sep 2025 18:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zE0atjZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79D02DC765
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757615927; cv=none; b=hjr2KbU/P5VtPzyydT7ApuZVPcsINdaGPsc9swJqVHPXdh9AFCBlUEiPFjnh+va3817umQQPRZjvAxpGahTVCs5qeEXvOmK3Hi15OVXGi4mG2LvngQCHVaJnTZjL9bbg+HPiPj/5qLT1U43dweNtP4szLuHG5RjiLGHUmiUMTO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757615927; c=relaxed/simple;
	bh=cyIuzam7bLo5cww7G8I2d/pYlJRYJ9PIWcnedS7TTIQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NULaVEj5zpjuXGam7hBa1zFxX/DaOTHGOv8R9RiDIQQdYtHcXkX6TTuNkPihvmqTQ7kifo8s31D72Vf/NCKbAaGQuIOzxrWQwrubTbvUJs/Onaj7iix7lciYq/cNdJR0i3wzU/EzYqEg2hft2QZNlmWEDsoUrkc2M1C4Of+BA2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zE0atjZY; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-628f29d68ecso2180321a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757615924; x=1758220724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0CYEVlIhuAwsxdbPBZNCG41bzVEkVebpPHWLaYcA87E=;
        b=zE0atjZYipn90WxGbLefXt1sY3f137lxUdNoSXyZvR7PxxKVq1V1+dFkwTtjdkWI8n
         qXYaqVm9D4SrIodxMjUA+87exJqat0Vf912APScavIKFzfFxJRaVF+BcTtbAbGzoKFm0
         uUnKlcnqhB+aX9b/qaVlvTJotbwKl7aP+ha0rf3ycbWNusinDA52gfU01BdCj3US6d/3
         5qJ5qD9WRAPOC8D5TI91+Ri2AaBGjxe5suAtVu99mLvq6ZmGcCtH2UFjWQJrwf0yVQz+
         KBY7qV9ClHW1Ir5VNwKknCGPDd1AaJtV9xyt0BUKa0BWzI6bB2uDRiZr3sPl1Wt1Y9re
         akpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757615924; x=1758220724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0CYEVlIhuAwsxdbPBZNCG41bzVEkVebpPHWLaYcA87E=;
        b=XI9CaINdiYMP+/JmQ7nvj7seNDN61dwS7HWnF5CLagyTqPdazMksV/DZLgev6EXs5T
         RfZQ+6P5NEwMuJMG0sgYcAP/zeEMLraIBhWHxAAar+mrYAMgAOzEdPsEFVdAeX72CTpS
         k0cC7Hlenyf7qOGAg+xnOKD6MYIpL64EvQ7u4V2KzJ6eQ/yRxpDxHchSREoovQHZg2Dx
         xavqYo7sj8Ryd8uqmOYOhIDPdjrgsVPraEuvIY+sc88bwwsyJYtNYAPDkCoYSqshv9GM
         n17T4vXCPW6dKwGqIk5LhABOOdnPFG5OktkbIoSDfHzNrbTIBJOTP/FEUYLp3ibF8wC2
         3HQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpcWLcVI7jpivB5YBIxyMZDt0gmqxdjLd9Vol6KAdUt/PwKyY5sEjCzYRtZiLW/cQfi94wm13fJGwZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzdcsPgQ7Bx0M7GeLf215MVnSwSzlJQqqhdUASKTRnKWnGGLB88
	RKxxR6UNHxkaXQ2ikMWb/ViiGd4UBex6No94aXd2zqtaTb28MzMuPiIhpi37IvIZD7kG0lyKMqE
	F6i090uM=
X-Gm-Gg: ASbGncvtxyCiSR0P/qS3wtKUxfCoIAL3/vAG3lc7Lewba4fKt05qYhH8QtsGl7uIqht
	QmYzPGaOn+dhWaA+9X2bdyHmLqK/ARXPIhhBEzvG4pRSgveWIq4Flv8XtaCRefnO/a3lHJC6EXo
	240PvQ05Zw++x+xtgWa+c0O9bNqt97zH6ZDuawUR8jL1V2zWPFqbf+/drGCrJ8s9HTMv9Tarkhs
	KqTyebyytemNORPh8jGNvvbTQ/Jphwr4P5PtPHmondgN1PPbfgIigMJvMVpnyGJU4TahCXxT2GY
	Q2m7LgZ7mlMqN4zptjWYkl8CRXClQNT6BmFwRhn0tqU5/E4npOp3QWDDiHOt17etwYm1WJq3eFI
	3lCrTbm8kZpz6clUPUDqxA+WuLy0XyXnHQA==
X-Google-Smtp-Source: AGHT+IHuyID7DG1/KskiWhcy6TIsIYPl8tY5FAE3l8iO5JPheONXetmpMP+YXEkW+CxLttaXcg5qKA==
X-Received: by 2002:a17:907:da4:b0:b04:2cc2:e49c with SMTP id a640c23a62f3a-b07c35bbcbbmr17109266b.19.1757615924030;
        Thu, 11 Sep 2025 11:38:44 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:725:1e09:bed1:27ea])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31715fdsm183999166b.49.2025.09.11.11.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:38:43 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: x1e80100: Add IRIS video codec
Date: Thu, 11 Sep 2025 20:38:23 +0200
Message-Id: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACAXw2gC/x2MQQqAIBAAvyJ7TljNDvaV6GC61V4sNEIQ/550n
 IGZCpkSU4ZZVEj0cuYrdlCDAH+6eJDk0Bk06gktWllUV4mzDI+kDY01To3oHfTiTrRz+W/L2to
 HgGADEl0AAAA=
X-Change-ID: 20250909-x1e-iris-dt-eb0494a130ca
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Add the necessary definitions to enable the IRIS video codec for
accelerated video decoding on the X1E CRD and Lenovo ThinkPad T14s. The
additions are largely copied as-is from sm8550.dtsi with some minor changes
necessary for X1E.

The PAS interface used to boot the IRIS firmware is not functional in EL2.
The code to start it without using PAS exists already in the Venus driver,
but was not ported over to IRIS yet. Discussions how to model the
video-firmware IOMMU are still ongoing, so disable IRIS in x1-el2.dtso for
now to avoid regressions when running in EL2.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (4):
      arm64: dts: qcom: x1e80100: Add IRIS video codec
      arm64: dts: qcom: x1-el2: Disable IRIS for now
      arm64: dts: qcom: x1e80100-crd: Enable IRIS video codec
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Enable IRIS

 arch/arm64/boot/dts/qcom/x1-el2.dtso               |  5 ++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  5 ++
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts          |  4 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 87 ++++++++++++++++++++++
 4 files changed, 101 insertions(+)
---
base-commit: 8f21d9da46702c4d6951ba60ca8a05f42870fe8f
change-id: 20250909-x1e-iris-dt-eb0494a130ca

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


