Return-Path: <devicetree+bounces-68365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D748D8CC0E7
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 14:09:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27037B22542
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 12:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC79E13D882;
	Wed, 22 May 2024 12:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="YD2+rUmz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0968A13D603
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 12:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716379734; cv=none; b=DkgtwoJKNFs3jfa5dSvGiXPKIV8hYLjW+ASzeXYd5a7un78dGpzoIjXG2cRfOYXDlfKjXtqTMEHeupE59Cxe87U1dZYPdGo8y9JixpNqKOFXd8Z+Oo76klNkZZAVIjJsjnCPFG+E3iHUVIBlgKhjUdLmsb5XzLHnrdNmvUyvj7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716379734; c=relaxed/simple;
	bh=PAY2nxDq4Vc/7iZg26HbXCaUQhAbROhnrnMb1jRePMY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=C6sgbndTST/0REdXRIAauLuOFJbiCCuABXdGI0qVtD+Z2mucR7XVN7KlrvFJBzgIgHas80Jwb4iC+c8glFkauguutEl20rccyHaMhDOq445OTNDUJpfw54RnxqyZquMP8jFmo3xEGls/V3FW4zQXjF+WXUZWdgPSmIyDdv4EBjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=YD2+rUmz; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-354de97586cso573887f8f.0
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 05:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716379730; x=1716984530; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RnHqp2nf4a2ItyUP4FMGGtFN9AfHRLSfHaiybK1IKaM=;
        b=YD2+rUmzoK9aV+Rz9qV9MI95Re3ksLjiiiwS/rifAm0RZgeVfTyvSCj38R10bMokiB
         PAy2HCRqZWUDqbRoJraZP2jitAirvLoWoGAdG+CmKqNBo5WTa9ysmcfzKKyvmtObgXdP
         gCjpUKagrg0L7804nTZff400F8hKaFZhss1r+px3zXzVY8O7mf+RcHQMEIZXy/AvJ5no
         ckjB6x6hklsymUfcAWfxLz+53/UTDTN7ibtvcXimNd+RwX8hcOX2Qztqo21QT938H86d
         Vr+ds6fvesagskPoHO6/RxBe17my9QoE6s/hvZ0hFkU8Y5psjIdz2XQy3j7zE2slDp8p
         3AEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716379730; x=1716984530;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnHqp2nf4a2ItyUP4FMGGtFN9AfHRLSfHaiybK1IKaM=;
        b=QoZcGlxWBGxK6KX4nGlKKZTU7EbrKBNfQIbZfBW6bHsnko6B/bdZi+PHkiac8YGAzk
         /8NTfMKXKfzAZoOK82dIJlm4kMgq1fMEeP8ZniyxNp/WFfkqw2lsisz2ADgI813oWtna
         uSnIxmfQeHefVOvJDqdUv0+jKY7vMIOdz0AaRiI2H1TNRUoq4ZoTTwLwjEYCyDIPBIu4
         e/O5cuunAsrs5ts2hgJI2xLDCAOOuxsbNNGTnt16X6HEVy3CPfGbyAdQWWUkNaWfBLiZ
         jrcdWZ8H9yh+fGSQz2GEDcMIa2JOZVsTN7bIJ0MBnbMnrMLxVNb2kKeQo0agvOu85SZe
         3+qA==
X-Forwarded-Encrypted: i=1; AJvYcCUTdih0wKUdqHK5GuHfQY7BfOd0i1ZmURbz6ES5HpJPSFuAwFgFKhVuGyyrEvBIy5og4Idsioqun5Yyqeu40PK79NcUpw/H+q81bw==
X-Gm-Message-State: AOJu0YxBIsYqSvjyvLue+60hWBJWKozcMwIuA6q4p4DB2IYWJ4OUqF9N
	h89i2pYPOKKoiqW+15Mv2K0Ee4H0xz4bbEjevsIc9V2quBGUVEAnHS2MDxETDlk=
X-Google-Smtp-Source: AGHT+IEJE4HY8vbF8eqbpLb6idJrfN6gqssIlZyu7EfgvyVye77dVXPyLh2x6a4m//x9d2hbn8HxAA==
X-Received: by 2002:adf:eb8c:0:b0:354:c8d7:e0af with SMTP id ffacd0b85a97d-354d8cdfb88mr1312143f8f.35.1716379730186;
        Wed, 22 May 2024 05:08:50 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:82c7:3445:3b33:6c0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-354e720d9afsm999226f8f.113.2024.05.22.05.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 05:08:49 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH 0/5] arm64: qcom: sa8775p: enable remoteprocs - ADSP, CDSP
 and GPDSP
Date: Wed, 22 May 2024 14:08:14 +0200
Message-Id: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC7gTWYC/x3MTQqDMBAG0KvIrDsQg3/0KqULGz/bAc2ESZCCe
 PeGLt/mnZRhgkz35iTDIVk0VrS3hsJnjm+wLNXkne9c70YumiTwhn2OmUULG3YtSKaBh6EbX73
 zUwtPdUiGVb7//fG8rh/WvRptbQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Alex Elder <elder@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1188;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=PAY2nxDq4Vc/7iZg26HbXCaUQhAbROhnrnMb1jRePMY=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmTeBKNwoLPXZ6lUjmPLe6mZgBxOVbu7WhiRSnr
 7bl6sbfQGGJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZk3gSgAKCRARpy6gFHHX
 ct7FEADhu0drXnugQBKeyOzdYNjPl+Qnp0nlginfDVDAthpHz1rfvSfKUPriVed75MAezR+rvsa
 qsX9ot75UOV+4RtiB33YjnRYpjrXPHw+A/CN7r+vrhZkO3zTddnsBM+oSn2IzbvyamjGyiOeuC0
 +BYzAFuQCJF5CmXPTeZ0M8sWFaeK1YiIMzChd2haj9hp78m0JRde4S2m8ThKYPnQrDhof5WSM3g
 V3ijYoizYWSC4TBvQD3QW336LwT5ysri7HamHfYMlAzgawK5qa70XhLWwdAk1kJNDhZgNF2nEii
 lRt4k41SEXXAulmU5bE6hIaFyWyyjisdHUl0WYhhrRzSobhYosWjwn+RJkneeU3uBfxcf0E2mlM
 766ryY3w1haOfRzEAdHImdOPgGNIcBXvDoxZwxseW8I6aBlTNmQ4xSh57x2O6yeYoppTUGOjsrf
 K3rXH6fzLsdG1K6aLcLAc7pduhHZiXk06JAVqdPF6E+XHdwcUMWL753Zeii/Z9oDVzzrEhdtSAs
 6UUlGo2+03pDmSgj8IF+rrzEiNiqwfKzE5JXV0jHuUAwquKvmtgkmEuyeFTi6FeS4czodWPx7v+
 Z94+7peBmITyZKD6KG1883yc/sNgJ+nMp1ngCcC176FXt2DsO6hOdoelvLWXQhLn+7yZ3z+LmKX
 qQYouXTJAkshhxQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

Add DT bindings, relevant DT defines, DTS nodes and driver changes
required to enable the remoteprocs on sa8775p.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
Bartosz Golaszewski (1):
      arm64: dts: qcom: sa8775p-ride: enable remoteprocs

Tengfei Fan (4):
      dt-bindings: remoteproc: qcom,sm8550-pas: Document the SA8775p ADSP, CDSP and GPDSP
      dt-bindings: mailbox: qcom-ipcc: Add GPDSP0 and GPDSP1 clients
      remoteproc: qcom_q6v5_pas: Add support for SA8775p ADSP, CDSP and GPDSP
      arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes

 .../bindings/remoteproc/qcom,sm8550-pas.yaml       |  76 ++++-
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts          |  25 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              | 332 +++++++++++++++++++++
 drivers/remoteproc/qcom_q6v5_pas.c                 |  92 ++++++
 include/dt-bindings/mailbox/qcom-ipcc.h            |   2 +
 5 files changed, 526 insertions(+), 1 deletion(-)
---
base-commit: 124cfbcd6d185d4f50be02d5f5afe61578916773
change-id: 20240507-topic-lemans-iot-remoteproc-6647b50281e2

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


