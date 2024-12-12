Return-Path: <devicetree+bounces-130275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 659659EE766
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 14:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12788165EFA
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB492144A2;
	Thu, 12 Dec 2024 13:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kM3M//hA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF4F2135B8
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 13:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734008928; cv=none; b=YluPH1dP5sQRIKQwFdjtbDUmGUQqnAqo2EZhajY4NxVItzDOsaS4EvGyvXYS51O8QcmfMgLQU77Jw6TsARltNQfnsMFwWS+4JZntiArXpD/xE4Qk7VCA/LNWlQRlaOPD7GkP7N2ppZqk73eWzOy5rCdVmHW1JBVkfZFaVk7xd1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734008928; c=relaxed/simple;
	bh=UFD28TkJljZHWIG/COEi/QEH0/KPejNH2q0f4aHxkrs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BrBKOd5eWNoPQwqw8Azt6IeRzGQ/4GVOZJ1v/MwYnDScmKoHoP8c8XnGiqS0eQtZxu7/kRH5NK0jbzRJH8Z4jSViC395DLXZ7aX4HnaTQ2M0eyFSrEsYjuNRrZBm4hbxW733Gqikll3sNGrB6SOCiwgHIuO7oj6mtNzYS48ZqVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kM3M//hA; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa6a618981eso89480566b.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 05:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734008924; x=1734613724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MSth3/irkWCqbGYvPdAI4UFQ10GoXyRIpHT4W2xQ1t8=;
        b=kM3M//hAZlm2x44xX8xrpQ+oJ55csQ/ML6ZrH4Gaph9xYBLgKRUH1Tv5PGnotU5tSZ
         bmTPu+mPwo8GId6PoVD5LQXE8B9oZxzFvshwpawfWNLOlzBk4A2x0T2QZ3EMhpfgk0FN
         jV3PpsW+HuXcGX1gvsctpJb7v9YLIbyCJrGMty2TQJEa5lWwohtPt27AGH2azq/rR3wW
         46+SI4dG+ehsP20oWIhFU5hR9QG5mBi9BNl6532VtfM5nyy/BVi7wdPobKwd56ydbTV9
         bAtOXy5dPB3i8xp9nwAoiy87FtnzyOa+6kt+Wz+sXDyHKg0/oSJxDO9+yhAw5zf5NK7+
         JSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734008924; x=1734613724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MSth3/irkWCqbGYvPdAI4UFQ10GoXyRIpHT4W2xQ1t8=;
        b=Mj+Av/3We+z7Bnfi3AvOdNGTqtmas81S/qoZCKNGAf5vbH7YsN4H+t9emlJHpQKGpd
         xNgW0dejNH0VFK4pgi+CwntjMZ+60YA4xKo8dSFhyOFlY9oh5XpLFrk+2zMxmgI15tvd
         Nq3/qtTvBGPmMpruBZliBzSPlaukZ2pL/BnhOiB1Kyc9CC1tD+FFOp8b+egzBhSMX6vs
         1iNb5eOugcVOk+7hum9DbXUttY1UV+OvXbCGzV9QDl9fM39SHOWfH1lyQP9WwUQJw+fw
         wikLqnOiFr+rcJscYpzmDO8pUNE8IRZRcKJJ1b1DiVCZ/pPnmEDRQL9M/rHMD0I8Rb+m
         7Hlg==
X-Forwarded-Encrypted: i=1; AJvYcCXy/I72AXrHnhHzk2pwUI2yMFLiR+YH2ewjfBucidj3Vk+aZrturexeE1FhI1X21VufziVf2qqZJ8xT@vger.kernel.org
X-Gm-Message-State: AOJu0YynbYXyZFuo5eyO2yDolQCZI6Rq90rFWbkbGNUTGl4YVytoGj60
	QAPEO3/uxvdB2SSlSximrDUt/vbHKKtnikEwtRJTJ1IXoGbd4lh8LAsQ30fhgdxYt4/EpMI3fpl
	FS5E=
X-Gm-Gg: ASbGnctdbY693A30VHjB6PGEV/zEGsGBOZ3l1FavlKsr7lmWsq3pdrWjg4+6Vtns9m9
	aLPlwWX5ejJMsI8iYzxAgGmfg0SEwhNFxtKsoCSp1UIft+GR9KYObNZL+M7Ig/1hg+T/Ar9ZJH4
	2Ablah3s6Goo+iigLCNqgb+6NhFsSvOIldJIbX/tNIwxFy/sSvgoDme6GD6FPbcnPXLixku+2ET
	LmP858EEq1o0lZ5PuPM9vZfGFZhCADAQwjDhTs8jh3ncSdXLqiN+aVmYF2nrvq6nOO2CQ==
X-Google-Smtp-Source: AGHT+IH5HnspAa4JrCnVw3hwDOXAnn4yvcS0nZlULcM6v3q4z8daLlH1OPoEy+LFJrd9QTFOsOaImg==
X-Received: by 2002:a17:907:3a57:b0:aa6:6331:936c with SMTP id a640c23a62f3a-aa6b13f8d18mr561440466b.59.1734008924498;
        Thu, 12 Dec 2024 05:08:44 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:3c0e:7a2d:e7e3:9cf8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6845ab4absm605843366b.73.2024.12.12.05.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 05:08:44 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/3] Add FSUSB42 USB switch and external DP for Qualcomm
 X1E80100 QCP
Date: Thu, 12 Dec 2024 14:08:22 +0100
Message-Id: <20241212-x1e80100-qcp-dp-v1-0-37cb362a0dfe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEbgWmcC/x2MQQqAIBAAvyJ7TnAlQ/pKdChday9mCiFIf0+Cu
 cxhpkGhzFRgFg0yPVz4il1wEODOLR4k2XcHrfSIGlFWJKtQKXm7JH3HGY1k7OT2AL1KmQLX/7i
 s7/sBgh0rN2EAAAA=
X-Change-ID: 20241211-x1e80100-qcp-dp-dc521e586cbf
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

The Qualcomm X1E80100 QCP has FSUSB42 USB switches on each of the USB-C
ports that handle orientation switching for the SBU lines. This is needed
to enable DisplayPort support for external displays.

Add the onnn,fsusb42 compatible to the existing gpio-sbu-mux binding and
then describe all the necessary components in the x1e80100-qcp device tree
to make external DP work correctly.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (3):
      dt-bindings: usb: gpio-sbu-mux: Add an entry for FSUSB42
      arm64: dts: qcom: x1e80100-qcp: Add FSUSB42 USB switches
      arm64: dts: qcom: x1e80100-qcp: Enable external DP support

 .../devicetree/bindings/usb/gpio-sbu-mux.yaml      |   1 +
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts          | 178 +++++++++++++++++++++
 2 files changed, 179 insertions(+)
---
base-commit: 3e42dc9229c5950e84b1ed705f94ed75ed208228
change-id: 20241211-x1e80100-qcp-dp-dc521e586cbf

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


