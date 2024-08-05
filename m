Return-Path: <devicetree+bounces-91137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2A947FEA
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 19:08:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81B241C20D8A
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 17:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77F115ECCA;
	Mon,  5 Aug 2024 17:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="P/8Mg1KD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAF215CD74
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 17:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722877697; cv=none; b=RorL7dFPdOqMel7bYNe+FftICOpyYMoPvUmqVGCN/BHlB9+cjodLQbG5/8ZCiTXha+fnLMEShCRgcK/SKZ3bAHrTPzWamxmhkjRC5TER3WiAhg7ASQLZbHb7MGI6f4KtkNa8j7EC2wPmkQ7AXpVu9dFNHUrkl+lc2KYbsDCdhDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722877697; c=relaxed/simple;
	bh=lpu7I8H/UUtSbokfZ1Up75euXV7jZ0ArNZ3blAePYaI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YSZW47kItRUGOtD98XMPucTp8KEzg76bMVvYcMHtRmJFzJvkNH2uK7XC+qXEbJJBcjG8mraL2YBOHJLeyK9YcGHJUbxDyPHPVX+2yabLGUmI3DotF0SDaQyn/QJdsOI5+ZeQlmrylBhzy9/4EW044V7GzrrBW5tETn5LLbFS1u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=P/8Mg1KD; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-36868fcb919so5783176f8f.2
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 10:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1722877694; x=1723482494; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8uly+IqTLPSkpnVFapb7KGj1e49xFSvwdnr30WxfQZw=;
        b=P/8Mg1KDcBz2K3ZwI1CopoLA9l+QYXRwiKE1fFOHnEEydyE/3JJy84FcwNsWODtspZ
         bgDI6pvoP7E9jDXWed7Zkv6u7c7/GGqc+o0rCSel2kPoJUH7J2MRkdtxenlF5W/reoWt
         TfZTyQteS004/qxlZnRZiIu95NlDbfUeoDuEfYiaI0/O95D/M2dfPfX7FJ+Bp1iKuPXy
         1g79Bh0R5cNKztfJ9vqKRk8c9diFaMuWYdHS3uAgO38jM6GXCdNQlK/0/i1rPtQSriT7
         wOM7m6jgKY3uh8mK7VBWFyU9Yg0smRasVS4a6qgjK9xazCz/4B4DkAoiXBbeG9zmt99C
         NJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722877694; x=1723482494;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8uly+IqTLPSkpnVFapb7KGj1e49xFSvwdnr30WxfQZw=;
        b=XVigYppzTsTfstz6sW+BfvC18qtpW635NO5JNj8e/TBaL3FN8FpE44V+tH37nJjaad
         EMNLbdAdhOid7qa/YTk0MUo+nl2NtL/Y+YYyhnkHpmMaN6YdKRoSBiQYW60Dz8w1V2h8
         CN3MhJu/K4zZHmSrB2+e4V1WiQwriftiqnApFkoqMgzELIW90usgEEjUyxAaf1DPX7up
         xivnUwPDxRHAUJiRuaa+uCjQihzxGA4ebfJyMfwruCxlDlwdci/vS4LN6a4QyCoPZKIT
         Kjh0Eld+f2pCAIYDN8xNWDT1arhBLS7e5DdjZbhPhJyUFA5UTpfzm6Ujo67iklDES5Fl
         Lxtw==
X-Forwarded-Encrypted: i=1; AJvYcCXNVDVdeTj3u86tMhagX6ai2/fbO1e+psjhJjDzhjg0ul+2uO8s9DR6j7CLW96RTtne6SBWUuBB7DkYMgtZOcJpnr8w5HYzu7GmlA==
X-Gm-Message-State: AOJu0YyqYV9utJlTx0HF/ibfeeLZtZjjyX9XYj5S/yRccZCjdSgp7fBy
	ZHCx+NtT/77aGNdGQODdJYQ7wojhQK1AIxLdsMKehbyU6AZUDHYu6dlSHJEzspc=
X-Google-Smtp-Source: AGHT+IHEc6beAbc1AeLoAZgmhc7HhqdccyyJ0DR1HPklH3ZImt5wiuFN+vr2UrLKSKnMf5uXIPGwUg==
X-Received: by 2002:a05:6000:d8c:b0:367:9988:84a0 with SMTP id ffacd0b85a97d-36bbc1c2b01mr9001547f8f.58.1722877693862;
        Mon, 05 Aug 2024 10:08:13 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:1068:b792:523c:3f73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbcf1e97esm10356486f8f.37.2024.08.05.10.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 10:08:13 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH v4 0/6] arm64: qcom: sa8775p: enable remoteprocs - ADSP,
 CDSP and GPDSP
Date: Mon, 05 Aug 2024 19:08:01 +0200
Message-Id: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPEGsWYC/33PwWrDMAyA4VcJPtfDke0o3WnvMXpwErkVtHGwg
 1kpefc6JdBthR5/HT5JN5EoMiXxWd1EpMyJw1jC7CrRn9x4JMlDaQEKjLIK5Rwm7mVyLaKdJId
 ZRrqEmaYYetk0BjuroK0JRCGmSJ5/Hvz3ofSJ0xzi9bEt1+t0gwE2+EwXN6b/bq6lks7vveuwA
 /Tq68yji+EjxKNY4Qy/MXyPQcHaAQxpo/aD8y+YfmKNsu9fzno9zWjU1nZtj3+1ZVnuoMFjPGM
 BAAA=
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, Ling Xu <quic_lxu5@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2458;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=lpu7I8H/UUtSbokfZ1Up75euXV7jZ0ArNZ3blAePYaI=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmsQb4qQdXTZhl+2CZDmjKyu4WRjwZLpL4JqM96
 bf91eb/XZuJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZrEG+AAKCRARpy6gFHHX
 crhsD/0ZVz6vuYUiDEGFSBSne2/BgfoatTte5ILfVJftsFWUgl/g5oqAgS2DJ3M7zyar/o6D+Y2
 XjEaGbAnd1wCbHk5JD8i0vyGih39k7vRfPmEGc0enskL/PjjqruCHGVQSr89JfLbTNPvuSw4DRz
 qLPIXUriVmT4tGE46QwHumOF+8s5RBPKXKlUpQ9wwdx4QMs5PojApEtmW7XOXL7ZjO6tc/n0Hkg
 St3LERpnKJe/wXXNgF5J1YJj4H++arD/G516rD+FqO6/lMMHnmhYjEjdFGG4jybJ1+PLC2uf+mb
 lgGS16AfxrHN/EgNT9ElW57jE4RhnG3I7UZe2pwfgvEY6zhqgEq4kmWVF7U5X6fTI8y0nLlMpHV
 dY+W9AHE8iplWxTttlfv2yTALAUM/PWWEv8K2zh1sy4sb1QWKnUcqwD1VC+crWEfKlAEesV/WaC
 sFVWXAAb5auPbLI4lkyCUuS+1lE2dyNx6IWJ9jz2biHrSSl2/vc6YY7QS6b/HCbmt17QwgDMtBK
 xGb7i8XPwElbt9j8Faa7xx413mG3I0kgTSzQwFxO2p5RDGChjySq+JaEcbsore0KlMPabYAeO10
 psFEsmLoDfEHm4CRvpzMd55PHmePL/hR9+U94Cq4p94bZ4X0IZ8jMJnottWyrYYl+cK1SAwTGYi
 vYfixyPHER4nbjA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

Add DT bindings, relevant DT defines, DTS nodes and driver changes
required to enable the remoteprocs on sa8775p.

To: Bjorn Andersson <andersson@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-remoteproc@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Changes in v4:
- add the fastrpc nodes and relevant driver and DT bindings changes
- Link to v3: https://lore.kernel.org/r/20240605-topic-sa8775p-iot-remoteproc-v3-0-a437355b8c7f@linaro.org

Changes in v3:
- Unify the nsp power domain names across both CDSPs
- Sort out SoB tags
- Fix firmware names in the PAS driver
- Fix cdsp0 name in bindings
- Link to v2: https://lore.kernel.org/r/20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org

Changes in v2:
- Move the DT bindings for sa8775p-pas into a separate file
- Link to v1: https://lore.kernel.org/r/20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org

---
Bartosz Golaszewski (2):
      dt-bindings: misc: qcom,fastrpc: increase the max number of iommus
      arm64: dts: qcom: sa8775p-ride: enable remoteprocs

Ling Xu (1):
      misc: fastrpc: Add support for cdsp1 remoteproc

Tengfei Fan (3):
      dt-bindings: mailbox: qcom-ipcc: Add GPDSP0 and GPDSP1 clients
      remoteproc: qcom_q6v5_pas: Add support for SA8775p ADSP, CDSP and GPDSP
      arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes

 .../devicetree/bindings/misc/qcom,fastrpc.yaml     |   2 +-
 arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi         |  25 +
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              | 548 +++++++++++++++++++++
 drivers/misc/fastrpc.c                             |  10 +-
 drivers/remoteproc/qcom_q6v5_pas.c                 |  92 ++++
 include/dt-bindings/mailbox/qcom-ipcc.h            |   2 +
 6 files changed, 674 insertions(+), 5 deletions(-)
---
base-commit: d6dbc9f56c3a70e915625b6f1887882c23dc5c91
change-id: 20240507-topic-sa8775p-iot-remoteproc-6647b50281e2

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


