Return-Path: <devicetree+bounces-60490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3398A973C
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97EFB286297
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144A915CD4A;
	Thu, 18 Apr 2024 10:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vTGzOFFb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611B515CD44
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 10:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713435759; cv=none; b=EVdCANpgKDNE/aqCzpab6kz6eftGzCW+qAdC4o725RgpJ2uJ87cxxvTYFCjHAy866sAOhPhl0vl8C0r8HaKM7DmzTNshTeZlJgmGMswiS7MIHkf6E32XC9E1Fwh6dahiUa62j9lME8EzBG3Mn886clQwnR8jNxbbzQXSGyPKhZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713435759; c=relaxed/simple;
	bh=g88ezTfAckaptJZiToK56mT5BjIsikVqvolo+i3NmL0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=vEpSE1oGMxwItKzszsrJBjDPPcWzB8umxJiIGOiLZOVslFBw/PtPPlAAuSw0rTqwWmdqogzWD0ycSW57/VLfjiM5xU0aT0mtolJ5hzcO2v83hMztxjE/uf3+olqFIyH59KeaJ7plKC+JwM/f2/mvPq2ACR+nYoyTfQ8/ibOJ3eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vTGzOFFb; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-349c4505058so467202f8f.3
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 03:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713435755; x=1714040555; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vqFBnUYqWjHtuRBL7UFjmbmXzv3dRjGPkMqRE6NGT/Y=;
        b=vTGzOFFbpRXgM4RKBXfgP5buoLkjNJBgEEk6wpg7hHf/pIuDWtTuIuqYYiNKmVSFgh
         s/ALKbsOjJPSPIMoh4owIQacspa0cZrTn3I+KDfgfEglHijwTHPfq74A/kg3z6auy9DY
         K09dZdap4WuEWm12pWY8eh+n11Lu3zvWgo3n+R0CzXdfbRdDSlDhcV2GMOfWtd3f5NeN
         gwNN3Q8zc0QW+XtOg568jnJpFaRzo52f3e1QkmFEc3e6d62k6ROQKgXcxYmxvm8l/5RZ
         Cr9BOA7hKL4RrfVu/uLyWMd9QXBXfbE0TQOUPWHoXuX2wDpUFzx0lmb9IzOnbCP8Bivr
         L7Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713435755; x=1714040555;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vqFBnUYqWjHtuRBL7UFjmbmXzv3dRjGPkMqRE6NGT/Y=;
        b=VeYWysVKX4+ICCVVSCEwywLgSIKaucFhx/5zRPt1ETzlHOALdZsKWA2STYTFQcIGwC
         4pGGdHdUyMqYZf3CG2hDsG0sg3e1KTwByavl92UkMRFGbTSXzoJQRXAivdl6eMb0WPuF
         F54qH4KyJBFpKb7CQaNKLx3j6hmm8zmkG8abX3m+AcGc/MXKMOfyHX1TGfF1KboKdIen
         e3nVmUvvLukJYUg8qDY3FHMEpCw09q7l0X6DrrwAbgWXK++2itGobIJGQUBe6jAfBsD7
         w/KGEFKcpCjeAI/yxi/YreC8uL3obwJnSYMelv6Rx4AEtqiZVeRXt/Duh+vImRgJyApO
         wsrA==
X-Forwarded-Encrypted: i=1; AJvYcCU4Hk7ZpxiSFJsqMIv0Eivc8DrXWei6XZrTeTZWXvZFeb/bCich3H0mtOvi9gejdeMaKL8tiyHS9DspESSrD2MPy9j2ftuHsdsPAw==
X-Gm-Message-State: AOJu0YydDjNXwgmOjlRiKBjhxqW0X16ElZ7TZoBEhY1g8AOJBNpvxoT6
	M/FINf49xBJzlrLsYcM7HgGAdgYSqXBSIFVP0Ayx+m4PT4nq0RYtik6qnyzJ0VU=
X-Google-Smtp-Source: AGHT+IGRk4TcsdmzUU3S4KO9/Z9b3IiVV0MPR3zkJ8KLS2qeob3FXNCohxO17ohfXp49ed6JbTdKKQ==
X-Received: by 2002:a5d:4689:0:b0:346:65dd:55f1 with SMTP id u9-20020a5d4689000000b0034665dd55f1mr1214547wrq.31.1713435755394;
        Thu, 18 Apr 2024 03:22:35 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.100.236])
        by smtp.gmail.com with ESMTPSA id e32-20020a5d5960000000b0033ec9ddc638sm1472731wri.31.2024.04.18.03.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 03:22:35 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: x1e80100: Fix the data-lanes and
 link-frequencies
Date: Thu, 18 Apr 2024 13:22:17 +0300
Message-Id: <20240418-x1e80100-dts-fix-mdss-dp3-v1-0-9f8420e395d4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFn0IGYC/x2MSwqEQAwFryJZG0h/BJmriAvpfs5koSMdEUG8u
 43Loqi6yFAURp/mooJDTf9rBdc2lH7T+gVrrkxefJToej4denEinHfjWU9eshnnLXDyIXZAAPx
 Mtd8Kqn/fw3jfD0+Nig1rAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=961; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=g88ezTfAckaptJZiToK56mT5BjIsikVqvolo+i3NmL0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmIPRdcE/0l298JORSkNny351yxby0lPLs2h5fC
 gVOqXhhwlOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZiD0XQAKCRAbX0TJAJUV
 VimDEACysaNZ9He02cR2cVVLph8XbdGqGwZYoBbWKQDvfJGZful45d/hh1584iMxlKJGcIdnThU
 n+1QXUeyBtg5yJ9X4Zxv5IzyzXPueDglUEi2TOiQwiniSpyY63RCvgmX6+DVCtKlj+fjCOWNZdm
 6ShdjE41PUagfi+ONcykGeRrPwneTsXIQz3DNqVubySUpFHg6EyNwgcLiiSSeEf9CDS0WRzyXGJ
 vlUiZgm1rBZ29EQBdS/Ih0gv2pnGXjqcgaSjadMV3nP/7q0Ncq/dai8mKmgk4+zXTgw6w4KIo/v
 iofLse0atFj+ZZj843YqvEazZmojlMb+xVZzLuGnKP2w1kjJveaenOy2xmdGMQvg0BAxoheRmvE
 t8BRRO1lhCXs+StIhTKmeGSboBMLZi3ArxsjG+nZFScoMd3nac+gCkdsSMd3LzZA0Jm9/FA347m
 rBRkiPnOnXjyFYNuRKs0xfKV+noM4yC9+Fs0a8VZamLvzZRwHFJ/vBj+ykfAG1B2HpNWoitJa8r
 OMRNIx+UDukSz6Uz7ShjWiZk3C8tRfrXL0WdlBt/GGdoPp3uLeubTbMWj+v7PTPspwJbl74C0Fb
 e+Ji5kQXYsot3JIB+rWlewj8BEi5PycxmWBnZcuSQRCMvHACvO17H/inkAte+EIvrx9Xippv8cA
 AB6l04HdpmLpSjg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Both the CRD and the QCP have the data-lanes and the link-frequencies
for the DP3 in the wrong place. Both are properties of the out remote
endpoint. So move them to the mdss_dp3_out for each board.

Without these fixes, the eDP is broken on both boards.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      arm64: dts: qcom: x1e80100: Drop the link-frequencies from mdss_dp3_in
      arm64: dts: qcom: x1e80100-crd: Add data-lanes and link-frequencies to DP3
      arm64: dts: qcom: x1e80100-qcp: Add data-lanes and link-frequencies to DP3

 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 5 +++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 5 +++--
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 1 -
 3 files changed, 6 insertions(+), 5 deletions(-)
---
base-commit: 4eab358930711bbeb85bf5ee267d0d42d3394c2c
change-id: 20240418-x1e80100-dts-fix-mdss-dp3-c2345ee3ee2f

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


