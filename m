Return-Path: <devicetree+bounces-93408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27257950CCF
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 21:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C62001F24858
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 107431A3BD6;
	Tue, 13 Aug 2024 19:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="FEPZD3Mp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899121A3BC4
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 19:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723576007; cv=none; b=PYf1fSek61yJUJib3HS7oGnuh66StLvRn3xPQbv0olQmoE18nBo37VKWwDplb/AsV5gbA8GCoqGa2LtAOas+7K3Kh7d3dsfuHzVuzh9ldEEnm4d/8yDYVdUy2s4nb6Gqfw7s3MroDvZfgyzm1AG4ImVzxQfNLuYTQQRD2xl9sHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723576007; c=relaxed/simple;
	bh=TSEwgRwPIrPMBiArN2FuAsHrjp4n5h9ROyQjarPhdBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rn+pKvyO2xebtTSF3bdNwcRkMOppDwEZrCyhXHCtL72zfYQjFE+lgbkihr0AJtqO43xi/EkVOn2CyQ9pRmNFrt+vf4fLG84X2Z6NDW3hF5jOs0wUf+FPoTfhOR5vlCsd3FCt7JIc7s76Tql28ZSdHPXxA1GHKvDb8o1bcfjTgu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=FEPZD3Mp; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3687fd09251so3235513f8f.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 12:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723576005; x=1724180805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=twlzRsxhGxt1Uh2mIjQirdrkh40+b4DDoB6rlCNtUik=;
        b=FEPZD3MpodLBk8luCtL4WBDHWo/c6lKbah01Ey2cYASgv5YtA0IwtC04PObhTgUqOa
         F387JOaJBQsnxzKN10b+1o4CfIeqp993D1OrhG86HuW3aIOiGRp8L1KPMfB1x5eUEirS
         DGEwfzJTDDRlvrEXCkmNkrNwnP9HDAv2eT+bySzHtP+Yucm/OvuULytiKuMDxcB7NO8v
         CG0Yn54keiGGnmJx2IrnqJVRLRMfFh2m2O4EOcqn2Jko0c2jO4UtUf69tdmWqW1pKn6t
         pOw79hMxi8HEUaoqAwEGoyNOPyVCFd2f79Hb9JA2YtrT8lgM3aOW480+0A6M0nfYKTSV
         84Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723576005; x=1724180805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=twlzRsxhGxt1Uh2mIjQirdrkh40+b4DDoB6rlCNtUik=;
        b=VgWM/Al6/igz0oYDXguLf1Gf95GEjQ+vnbps0HHZwihzGXM72UoYLd4mUNo//l2j9c
         93vump7uyFQlnuCVZMe3VR17XMJMQGxABtKuzHLLdKga8b9VeVCZVsPPWX0fidGn2SZr
         dU3+B6eEAL2cH9g43z1a12cD+9KTmYzKe7lfaHToTJR1qIi4a5vOin9j61c817y2inrq
         bQAoM5TpIzgFpuuv290yOMteR4EYNIyHcyP7xjgd5HmEoVVIl64hNYweOxDKv0dTDven
         XRCP+JohigZL5vcQt6zS07t7VzziMFkn5oY6J73dYozrKQKsq8Sk7dUv8J3evzKobaSm
         HBAg==
X-Forwarded-Encrypted: i=1; AJvYcCXqsgRr4eqzvAnvFZ7KkXNEBiWiX1CFHXZX1PDnr5J9CR/i3e3L0HYtUC4Zm7Xoa/6Bj9tUP+UimJa90ilTtaM7bGosyes9xaYkbw==
X-Gm-Message-State: AOJu0YwUqxForgFmZLhSgsg8l5goWBjCRCKbAA9HqnOl16hRq8L8Iw5F
	W1PIsjf6sw7b+NPDerl6RK0aUC+9tkvbA/4JxMsIULVqrreI3cfvkRP6o3wJohw=
X-Google-Smtp-Source: AGHT+IGY7TCbUZP6jI0dAeG/YaIQcd1t/YiOug8W60mEYlLwrh7VrBXq5Zdhas/JQLtrOnmTUROyTw==
X-Received: by 2002:adf:e98f:0:b0:368:5b2f:67b5 with SMTP id ffacd0b85a97d-37177764830mr479002f8f.20.1723576004639;
        Tue, 13 Aug 2024 12:06:44 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4c93708asm11119358f8f.29.2024.08.13.12.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 12:06:44 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: sc8280xp: enable WLAN and Bluetooth
Date: Tue, 13 Aug 2024 21:06:35 +0200
Message-ID: <20240813190639.154983-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This enables WLAN and Bluetooth on two boards using the sc8280xp SoC.
For the sc8280xp-crd we add the PMU, wifi and bluetooth nodes with the
correctly modelled wiring between them. For the X13s, we rework existing
nodes so that they align with the new DT bindings contract.

Bartosz Golaszewski (2):
  arm64: dts: qcom: sc8280xp-crd: enable bluetooth
  arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6855

Konrad Dybcio (1):
  arm64: dts: qcom: sc8280xp-crd: enable wifi

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 169 ++++++++++++++++++
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 ++++++++--
 2 files changed, 255 insertions(+), 12 deletions(-)

-- 
2.43.0


