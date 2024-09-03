Return-Path: <devicetree+bounces-99375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B661969966
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 11:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA9EAB2754E
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 510241C62C6;
	Tue,  3 Sep 2024 09:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="vrieUW9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FEF1A0BE2
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 09:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725356204; cv=none; b=f9H4AOHYBT87Xx27ASE2O18AcmTHhhhWOm6ICe1/LzLA+7SXWS5zMddf0C/kpUrKRbzWpnMsu97w0w3LokAldA1crLHxt9vxIbuZ5qH+R32474HzCwWUZdV9xoyg991T/jzUbsQZhj8rrcSriY4/ttNycVkgxg9CoP+ITUYQ4RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725356204; c=relaxed/simple;
	bh=l9la1v0zUehD2cTbZj5grL20PvMsJjIx3qzzkBecL00=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YoVyEwoUOXqRnrPnBD4uyAcAqVQ9RxlzXlLE2ipwx96Yt5LP77a5BqkY5vy3bf3u2FsFkBCvRreDp1CYGfGX3E7tW6YYmlbCAdtDRMH0yxK3yf1rjHOfYwvczGPII5lVrLfVXLzIEaR9fg4lC22kGBXBOBtAThTpSbusCxEF5yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=vrieUW9k; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-374c3400367so1837496f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 02:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725356200; x=1725961000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DUig6PMN77FfWMVlDW1tFQu8YNW+SV2Jr7UO2hwr6hE=;
        b=vrieUW9k+uqWKnVm1UuWrKN9O0+htRt21pVCG693wC3BVMOX8efDkRuYXGLeoZ0AXj
         1E8UnKkLgHYMj34dWNHgHjPhBsnSUs4/4ID2zC2BrC3UQCgrGhcMJ90LAUNu5vn1hOmW
         Ls9iokxp/4HwkE6mOwMkFcT73VGph9M4l2dPPjaOn2433Aa+1Qnlpf+H8Pqt0r4m4rIS
         Y3vUD0dywkV9JtpICHJPOvUi9jtEaibaxwvaH8i+dFU+2wIfOV3E+DPZ/PBUbLJRYkN4
         CAmWpS5bqlBdZBA2RkJ6nie5eUF7p2wkBvGeXSyVpJWmdUILEjzxu9sORi0EHMwhMSHs
         c4aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725356200; x=1725961000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DUig6PMN77FfWMVlDW1tFQu8YNW+SV2Jr7UO2hwr6hE=;
        b=GRcoB5pM4LjfA4JHKYa4HFKMV+1MkPwbGlk2t50fedwlzpUbDu0D0Z8MWAH9k6HhVd
         d8iNfL1suOAQkAdmPs98yWw+5yeNmmPnOODe0Zq4DfxEYfLuHAMzq1eFJs2hmN9ya9rQ
         YGOTAkg7SsI2HLLukAxp85+YMiV6wUSGCBrisYf2MrEC4+QdQOdtIvYUyOS51fcXavvS
         ELuMtyUTsPvJpBMm757Y9Yu4KY5jtggAnvQB0byE+VbNeCC646+l1+rO5x6u3/xD5zpc
         AY2GKSqKwyIDxfXY3TfdqQ02h1RtT+JY8k86T/5PXIQRiEW0G3yPDRYJe6OqCjo/EoDO
         5lFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgI7eJ+RPXFBQd379vXPyc2SlehP2Ki/AbBkE6D1/96ca9EYsdQt/LY8UxSXU5Omk+0RifuHclOc5o@vger.kernel.org
X-Gm-Message-State: AOJu0Yy49evpJSrB9Qxv2GwnrKzlpSSE6ShRR2Bhz8R5ATbwfMb6Ubxp
	9KjEcdDIOdFMsy+9QkmMuaCwfHcB7w49pOr3Cs9Uebq1sCgF3JUFQItY5sR01McQ80oMvtS/HF0
	e
X-Google-Smtp-Source: AGHT+IFC/d7s36B8VDRRB0siJljwsah44aMKCzW17pW4yn2cf6YkAVprUlhE33xt5YCFHls4D4CBZg==
X-Received: by 2002:adf:f892:0:b0:374:c64d:536a with SMTP id ffacd0b85a97d-374c64d543emr5427571f8f.27.1725356199126;
        Tue, 03 Sep 2024 02:36:39 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:e61d:37d0:a59f:d06f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-376914bfca1sm790793f8f.18.2024.09.03.02.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 02:36:38 -0700 (PDT)
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
Subject: [PATCH v2 0/3] arm64: dts: qcom: sc8280xp: enable WLAN and Bluetooth
Date: Tue,  3 Sep 2024 11:36:25 +0200
Message-ID: <20240903093629.16242-1-brgl@bgdev.pl>
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

v1 -> v2:
- fix commit message in patch 1/3
- drop drive-strength from the wlan enable pin function
- drop the calibration variant property from the wifi node of the CRD

Bartosz Golaszewski (2):
  arm64: dts: qcom: sc8280xp-crd: enable bluetooth
  arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6855

Konrad Dybcio (1):
  arm64: dts: qcom: sc8280xp-crd: model the PMU of the on-board wcn6855

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 166 ++++++++++++++++++
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 +++++++++--
 2 files changed, 252 insertions(+), 12 deletions(-)

-- 
2.43.0


