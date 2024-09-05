Return-Path: <devicetree+bounces-100407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C9596D849
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0421F1F224F2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D5E19DF6A;
	Thu,  5 Sep 2024 12:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="xTMDpbog"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC8B19CCF5
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725538838; cv=none; b=Z2Yw/9aq5nhJf61OOy7MX93l8K5O7ZWi02yvJr4yP90SAhX+DQXK7Rx818V2hnrazuSCtQZnDi9BdS/xBniAFxEiNDuLqqPFpCPl1fI1Hc6Jjvml4foNBMKCTgFJvgcvi5/h99cAbeRpbWN3RqjSLlzY7VZgjP1DkMUl6Za8XKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725538838; c=relaxed/simple;
	bh=wgPIt3oGdrglQsk/daLP2PXTGy6JQOLFPbVxXj7RBJc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZNFnHUALS6dX5YUanbwWA/cI5CNMMks9B+3I718WYq/44A5P7r2FkvnGBx+kaxYolQoXMr+iVA4Rs2Wf9c61XV5SwyZJjU4Oq4WOfFqDQhM1NtgvUt+dPD7ORmUASY8rh1CNqtuSO0AYyacI+SDJaG7/IFkeFZbfqGGxQD0K7tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=xTMDpbog; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-375e5c12042so365481f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 05:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725538833; x=1726143633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SJMeF4U9u7YFDaBD7BHv/n2JoSc/K4mKc8ggBuLK6mo=;
        b=xTMDpbognhU+uDEkahaaOs2uhEMgWz2ePbbzArYLAd/AFd/OsymkmD614FY4vrAB2m
         zrpe6RRCLyhcFjlOoIAKnFlkr/8i/E19z7i6IfFl9cCRdojRlzmXTPlMzV4FXhqkkWvU
         LrSloob7YJr+sVSmFdwyBjPkZyZ7dogkioAUPeu+2naLkMmxFLd7QbqwV9qxFsOtjLK8
         hkSY5+srm5wO4WZ/c+srX3qP9DWNDGpsAFyEhWpK6C53TmOxJ0FOrBsqqRKm50vVmRZ6
         XHWu+nEa1GgEcF1ZQLRYMFAXCK5+1ewOCImA7rw0oemPVfOUF9ZrDBYQ/crMUJQ/uBkU
         WTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725538833; x=1726143633;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SJMeF4U9u7YFDaBD7BHv/n2JoSc/K4mKc8ggBuLK6mo=;
        b=We86yagwB8+wb1H1cgfR6uFX47dHuotwyW8V3dcJzOJRJyWn5EGiC1kdgfHvQIl9oE
         fllLlow0B6rk52Oyf4kNmKqcw9PtOPiRDbhikEV+XRBdPJ5bXaG/06kQqRjJOIMr6vTj
         bfTV7Fr9oTrLM/zb6Pz4Z57RjUYkblKr9VcSAxsago/BkRakTuO0jl+7LkkDj13eZA3A
         m4D3iJgaleqaI47203qPSNlh69e5M0gwl9R//lqSxRxkXjc2FSL5yytjdZRGqnrPxvpC
         UEIwR/vZIJMwMVYYG0db23YOQtYtG/lAGBgBDEO2rHHo7g/XlefhuVmgk+4+1/Fzs3HV
         BviA==
X-Forwarded-Encrypted: i=1; AJvYcCVxx945oZHguzk6nboCeSwRPal5OwwrqG+OIM7auporeX+nM6DYZRqNItQOFQoT514YfefpM7QTDZUW@vger.kernel.org
X-Gm-Message-State: AOJu0YwgmtbEUpSDxKTLsQwJuuQkGjcGrYNYsk9PjVzpysn4lMLadiYq
	8VxArDUajDhAF+dldUu/KfdEhNFNvKSFOVoSFPoBgReCo3OB8tU3vTup8lqHSgZ/WZp6WBMpQhh
	E
X-Google-Smtp-Source: AGHT+IFHmZDgUdG+ADx2aORV2a25XvnOq5NG5z5POfIwe6FUwmE75PwdrXAL8FzvGg8Clzsuhd/GJg==
X-Received: by 2002:a5d:6610:0:b0:35f:122e:bd8c with SMTP id ffacd0b85a97d-374ecc8f18fmr6982442f8f.17.1725538832026;
        Thu, 05 Sep 2024 05:20:32 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:cbe4:ce99:cb33:eb1c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374be2edf08sm14645764f8f.6.2024.09.05.05.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 05:20:31 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 0/4] arm64: dts: qcom: sc8280xp: enable WLAN and Bluetooth
Date: Thu,  5 Sep 2024 14:20:18 +0200
Message-ID: <20240905122023.47251-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This correctly models the WLAN and Bluetooth modules on two boards using
the sc8280xp SoC. For the sc8280xp-crd we add the PMU, wifi and bluetooth
nodes with the correctly modelled wiring between them. For the X13s, we
rework existing nodes so that they align with the new DT bindings
contract.

v2 -> v3:
- move adding the bt-enable-gpios to the PMU on the CRD to patch 2/4
- add a patch removing the regulator-always-on property from regulators
  on X13s that no longer need it

v1 -> v2:
- fix commit message in patch 1/3
- drop drive-strength from the wlan enable pin function
- drop the calibration variant property from the wifi node of the CRD

Bartosz Golaszewski (3):
  arm64: dts: qcom: sc8280xp-crd: enable bluetooth
  arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6855
  arm64: dts: qcom: sc8280xp-x13s: keep less regulators always-on

Konrad Dybcio (1):
  arm64: dts: qcom: sc8280xp-crd: model the PMU of the on-board wcn6855

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 166 ++++++++++++++++++
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 102 +++++++++--
 2 files changed, 252 insertions(+), 16 deletions(-)

-- 
2.43.0


