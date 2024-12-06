Return-Path: <devicetree+bounces-127929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB629E6B6C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43DE91671DD
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B32511F9F48;
	Fri,  6 Dec 2024 10:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MO1o017h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02E01F6662
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 10:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733479983; cv=none; b=VsPAAuJc7I7ed64w/Iwu+myobxrW1yHg8ZOA3nymdahmqlqamQwo83KRALb5x+1qEfxBCo6cmSO5m/fhVsIfXmGxcEcFVnOeZcXaYy4xLXFEEOZCTmLiBcIOMrW34ep26+jVKZPJxBYUtOFBkHHNjbMaXKLPbOTcBbX+uw3S2N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733479983; c=relaxed/simple;
	bh=aLTXT61rTmgVxPxsy+mXd0EyHpcrcYrz3NaVLdehBQk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=f8pvbUUUm2Zx0h1Bqac5aIitXMZWQAvrBHNZpbTtKvZkBKmKirsydAD9ejKR0ZrVvJOb/UytCU6OTakwFGwkM8CmEFIW2xW61V1QqOEfULd1vRcScM74kVkZnLgPOgZOhsAEZTtoSNHQphD/7mPyzYY/bu+VecslslxDOzWC6d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MO1o017h; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434a752140eso12472055e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 02:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733479979; x=1734084779; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m18rDOaqOao4A+Gx7PeNaIyUNAB9PVzjYDlZdbjWkvA=;
        b=MO1o017hGrCE7x0ts+r+kypzuO4T+ig0oVGgjEtsZEU0A2alyyxlN4w0psLaKfVMNV
         oyRWHuwxU/a5a3pNE+u7cjps3ksRBFLx4Qeg1JQHopPhwhb9pjs/P2eYpJkDHrZVJWx2
         oUURr+akpNJcziKyFQUvyeb5aC4MPgkjFZqMsCKUaRiTNJy8hPxZuXTii6285e4uxS/+
         TLT9NEY9tDMitP85M1lJqjIoY3cmi8guwQT5ERtp/H0VnXCcPOXYcx85CNGoQEDiHEcS
         pDV3mzECoUiTC3491KoVzkthVzEQ1pYWy2ccLuzGzNgOWdJu70DcMhQU6WxTljeWi/Z5
         pWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733479979; x=1734084779;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m18rDOaqOao4A+Gx7PeNaIyUNAB9PVzjYDlZdbjWkvA=;
        b=bm7qqIE1uGn6P2TWvFLhRZI7LKV4iiC3JUBwLgPf/mIoz/Nza6WvNRGJ5YuO4e3Tf7
         wvtOUP8ZK8r8PKctKO/7ZC56WVR2ymk50BdcLy9m3QYICiXMd9GQlDOOlpnhV3Ld6kcy
         FpHQaImlW20/Ym6buJA+FsT5TLoN4YHgJB1tTFXQ2K+n8oEiSk09qLpNxOome0Yxxeay
         UxomGErORs9Gcm4v5a7uqR6HILhUMf/hZWtK2th/fUYO2CKI7tfBjMFSaAWSokkQh/Tq
         EOqiraNEbpocFNMWjm3UWYYtyU8+vAODAvaW4Vko7K099o9xj/7MY4NQJWMzxaXI5E4m
         7q/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWngxGZTf2XTlrcjTWeQnwTCrI7VmIyV/U3RMQ3SW6OwPYiSPBpzQHaNY6ql3bBQJV0c237bWrVcZhY@vger.kernel.org
X-Gm-Message-State: AOJu0YzEkjjg9VVtD6vaPkx+qX6/yASyV9N8vfjzyvV4Sj+1zTtZXfPt
	ENcVDjcNC27RSVmBebApLN7ohCuEoEZlo523x98r2rxXr/DqxVG8irw7wkfunrs=
X-Gm-Gg: ASbGncsgOP9zkgckAXHRqiLOTDTgljKkecLpJ/c389b8YjoFTa2UBmlvDoSS3dr5TCK
	FGq5y8hP0PMSpyjnKHvyw6V4a9yBAESI7hxRVwpy5Fn5iTA1kQAPThW4PUIsM0VkZ+F2Q0IHJ1Q
	4yMJvyUxf9ez7g5GeLSzBMQgnRCV3dl1hY+9Fj0emFBcjffz15/kcJl4xDChueVb7gnfb8LBEWH
	reT83sfK1UE38gnQDbbNpPqrnPurAH1HEvXWUXMu+kcCllhLj005ZP3tPu2jdlVW6pJU70=
X-Google-Smtp-Source: AGHT+IGPdfX1Mu9cvj10FXXeb/ceyflrOXsofi/MqYP4sKQpRldQ7A/ZlqYcEfWkAfIYkdCTa6Zoyw==
X-Received: by 2002:a05:600c:4f08:b0:434:9ef2:f6dc with SMTP id 5b1f17b1804b1-434ddead3a5mr20627325e9.13.1733479979354;
        Fri, 06 Dec 2024 02:12:59 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52c0bfasm91092035e9.32.2024.12.06.02.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 02:12:58 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/6] arm64: dts: qcom: misc DT bindings check fixes
Date: Fri, 06 Dec 2024 11:12:52 +0100
Message-Id: <20241206-topic-misc-dt-fixes-v2-0-fb6b9cadc47f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACTOUmcC/32NTQ7CIBCFr9LM2jGAiD8r72G6oDC2kyg00BBNw
 93FHsDl916+91bIlJgyXLsVEhXOHEMDtevATTaMhOwbgxJKSyU0LnFmhy/ODv2CD35TRqPN2dv
 LyWo3QDPnRFvRxHvfeOK8xPTZTor8pf/3ikSBxh+UGIw+ajK3Jweb4j6mEfpa6xdo7NbutwAAA
 A==
X-Change-ID: 20241204-topic-misc-dt-fixes-6468da97a4cb
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Douglas Anderson <dianders@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1520;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=aLTXT61rTmgVxPxsy+mXd0EyHpcrcYrz3NaVLdehBQk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUs4nSTvsH/dAGcwrpB4ROkgsMOu/tb+bbe/us9h3
 rAk8YHeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1LOJwAKCRB33NvayMhJ0QPZD/
 9AUFdATV8PYJb0DKu8qozSoVuLQ3bl94yZqP3jlH3MQ2MCvYYA9viHVC8vCfLF1X2QgjPKHFDaMNj+
 S3/KxIprMvX3HatLDDxuT2azotssT37ryP90wnX187qdyYYpL29+L/MwsRraL2EppgdxCH3xz8V72B
 oA/nq3345fVnxHLQ9rm/dZ0unlJ3DFMk+ob2m8HdUqeYJK30Nfx267MyQnOilnZF+0KiAdM5Yl/Ivk
 65WmEfb7XJ7bOHqeDd9RSeRwVhCENpImTzCPMl1Iin5GUBornFSHpvM9UboEuangBQplSlXkjNl6ML
 M9eLcS/Qh8Z2AvwfRggvtlRbDyFK4erN9cWF1THNTY9l35S1meReCcyY/ze8zN5TM1EN+y1T/dmjOU
 F+ghuUf0B9sXFwPCjw86ES1hTQEpl1A5klj+3ZMWF6dttUdzBa1vdD0BpeW0PqQWjmHQkgBDG7NVgN
 HoEhZzobWcYC8AVYlSgr7HGM60m4am6fFIUkVCXzbhQ+E9kB7w3hieTJrcsDcoczCcMUzOLlh4JOT+
 lJiGmy9R1xxy9vSC8wMQt6CKNgRDItctxYtR+J8MZc15uV+UGu+rLrNkXfWBLleDrLmzRJJvnDuQsh
 iANsI5rQwLnwwm90cdYTSfNLnOoIMP73QaDoA822B+6kHTiVWBBhi/lm0ZhQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Here's a set of DT bindings check fixes

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Collected reviews from Dmitry & Doug
- Dropped camera support entirely in sdm845-db845c-navigation-mezzanine
- Added fixes for sm8150-microsoft-surface-duo
- Link to v1: https://lore.kernel.org/r/20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org

---
Neil Armstrong (6):
      arm64: dts: qcom: qcm6490-shift-otter: remove invalid orientation-switch
      arm64: dts: qcom: sdm845-db845c-navigation-mezzanine: remove disabled ov7251 camera
      arm64: dts: qcom: sc7180-trogdor-quackingstick: add missing avee-supply
      arm64: dts: qcom: sc7180-trogdor-pompom: rename 5v-choke thermal zone
      arm64: dts: qcom: sc7180: fix psci power domain node names
      arm64: dts: qcom: sm8150-microsoft-surface-duo: fix typos in da7280 properties

 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts   |  2 --
 .../arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi |  4 +--
 .../dts/qcom/sc7180-trogdor-quackingstick.dtsi     |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 18 +++++-----
 .../qcom/sdm845-db845c-navigation-mezzanine.dtso   | 42 ----------------------
 .../boot/dts/qcom/sm8150-microsoft-surface-duo.dts |  4 +--
 6 files changed, 14 insertions(+), 57 deletions(-)
---
base-commit: c245a7a79602ccbee780c004c1e4abcda66aec32
change-id: 20241204-topic-misc-dt-fixes-6468da97a4cb

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


