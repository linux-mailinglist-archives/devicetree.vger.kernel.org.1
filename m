Return-Path: <devicetree+bounces-129129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3FB9EAB52
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3369A283444
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7461230D28;
	Tue, 10 Dec 2024 09:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jt4sFBHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18071D7E45
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733821676; cv=none; b=LCt8Aa6mWqsByxMuEiSfOg8CcidFHQuiGK9QszmzQitl3DGEyHZuo0Z5g/Spz5Vq0Kd4ktjclU9eqNkjcYxBW6ahdtHve8B8A4776p6Jb0i7MHCQw3Md3mp7K8seSXAPZUBAWMiatNjPPMcpMPDQuCMbgoPIUJETBebnan1Qhs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733821676; c=relaxed/simple;
	bh=utGeo5grOxupuEJELa4p53Y7DuDUACjhO28MS7CTAqY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DFjX/m2Qo/j/zCy8xE3qUDbcMAC4A9DMgiL7lU4LkcosMi2BIZQCdhIvNdoe21VQoGhJhbBg5mb8FxL25iigSs/2g7DxzPRpsGmqKv/fQdpbBRJKVXBJuONSTKBEJw9HCXaeO00qCc4aV+mfSYgogrXDhnAv2eW6QIqsYSoHsb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jt4sFBHO; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434a044dce2so57959125e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733821673; x=1734426473; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wf+gnYSIymugKuSSyDGJc6b7yGexXPwvrFmMRZo5fdI=;
        b=jt4sFBHOKmues3VIeLGaPpzKt8m4n+u4suTWtsqjAshwwa26oFnOFPEy/EvdTwEJJ1
         O8qptTYYd4zLtqb1gTtfD+j6p+WtmlreL2cSJF2e4/L7yrhRsW6yPuvfPQ2pcKCyO61r
         vezCwOEUZiQ8asoutIDsIg/Lng2FTVR6Ezk5bIuoEs5TtgoBen7eCwZdWpuveHgXN3OW
         6oMBKliiLBuhUcRg4K9HnaP3yDvcB0AslSCK7jlpPg2YrWvA2UAeC51nE58KSwW+tOM3
         JTi1bpQjZzIyBmm6aKln9nHVGEw4Lv1IK1F5+6nNG8zVI7ze+/sFBvzx0fbkqQ/kH1GN
         SSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733821673; x=1734426473;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wf+gnYSIymugKuSSyDGJc6b7yGexXPwvrFmMRZo5fdI=;
        b=AY/dSqN8Ck+Rs3k16OW04rFvIlKh5oB0Rx050cvGg9ka3XCgQv8mxKZsnAol2nZuF3
         9T1vptjva3xJdvTFjAyER5uvRhNorh5IDrQQccQ92RQOWOuaCKfEcqNgiHf0v+1Ay0mj
         RXGrCoSN9K2V9MpI3l2fI+UcyOSlsfI8+lN5rivLnqx/4DdIKE7v9clnQa36kShd1Lqv
         u17cCNQSAwAA/HIlgN9ZUyDnG+VPtIpZrpPNVW9Cy9tZ73vCUJ4chGrkZLw2/m+iR7HU
         m5chXDRxCd9A/YMbrN3QHpY5Dn7RJeTz0lTD6Ulyhx1FB6/kiIvNNrkgO4TIZaxthGlP
         Dntw==
X-Forwarded-Encrypted: i=1; AJvYcCVgYwKsUUXv4cESXFutR93s9N7aiqEwBeRdXKcl034QLOKNdRn2AEbgdxpKWF+4V92pamp68lRxbU7i@vger.kernel.org
X-Gm-Message-State: AOJu0YyxbaMOca0E/0g1EndaVvsspH9SH4pfTZI57Gi7FXPmDDQBc0qe
	oERpKoeqnbPdsYa9vFwdVkFCEyftaVRt/8TKuUBdB5Bf+qd/Wu9eKyxUSgNn7e8=
X-Gm-Gg: ASbGncsSwRZhpARyrwYe+VhR8i4zSf5t6w8oxC5HNvPjz8rMnbP7+bZQbwsFijPD7Gg
	aiNZdVYGHPLmy4HYwPg5lwFNZhjUm0OurVVsy0kwb9Np4nyEoZZHF4yQBxSzQBP/QKKF++IXzvU
	ypU8XwO0xr8DPpFv9uGn4kcgRUzIwERL+2/smjKNVfPlntRr4Y5T0X5F8egHdr5nvUUxYwes6nR
	N43f4gSyRP15spjmo0gOEl4cn2WNAEYEEv0MLUm4jJxfhjTvkf83qG4XJOmEYigmss=
X-Google-Smtp-Source: AGHT+IHyAVrXl61ELMM28zcj8CVjXGQo043sNrk+HcI0seE75ksA6VNRohhC5vPwmPU+7JBUwerRUw==
X-Received: by 2002:a05:6000:4705:b0:385:ded5:86ee with SMTP id ffacd0b85a97d-38645400e6dmr2986309f8f.57.1733821673273;
        Tue, 10 Dec 2024 01:07:53 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:6709:8d26:5167:3c1d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa699618041sm173148066b.81.2024.12.10.01.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:07:52 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/8] arm64: dts: qcom: x1e*: Fix USB QMP PHY supplies
Date: Tue, 10 Dec 2024 10:07:31 +0100
Message-Id: <20241210-x1e80100-usb-qmp-supply-fix-v1-0-0adda5d30bbd@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANMEWGcC/x3MwQqDMAyA4VeRnA0knWWbryIeXM22gLra0OEQ3
 92y4/cf/h1MkopBW+2Q5Kumn6WA6wrCe1hegjoWgyPXMLPHjeVGTITZHrjOES3HOP3wqRv6ELx
 c7sN1JAflEJOU/L93/XGcw4+1tm0AAAA=
X-Change-ID: 20241115-x1e80100-usb-qmp-supply-fix-5cc5e39a7d02
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Marc Zyngier <maz@kernel.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

On the X1E80100 CRD, &vreg_l3e_1p2 only powers &usb_mp_qmpphy0/1
(i.e. USBSS_3 and USBSS_4). The QMP PHYs for USB_0, USB_1 and USB_2
are actually powered by &vreg_l2j_1p2.

Since most X1E device trees just mirror the power supplies from the
x1e80100-crd device tree, this series fixes up all the X1E boards with
the same change.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (8):
      arm64: dts: qcom: x1e001de-devkit: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e80100-asus-vivobook-s15: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e80100-crd: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e80100-dell-xps13-9345: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e80100-microsoft-romulus: Fix USB QMP PHY supplies
      arm64: dts: qcom: x1e80100-qcp: Fix USB QMP PHY supplies

 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts               | 6 +++---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts    | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts                  | 6 +++---
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts      | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts   | 6 +++---
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi   | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                  | 6 +++---
 8 files changed, 20 insertions(+), 20 deletions(-)
---
base-commit: f2b086fc9f039773445d2606dc65dc091ec1830f
change-id: 20241115-x1e80100-usb-qmp-supply-fix-5cc5e39a7d02

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


