Return-Path: <devicetree+bounces-69385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A138CFBFC
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED8711F20F86
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F9969D31;
	Mon, 27 May 2024 08:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="xSG3NXNq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835BA6A33A
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799454; cv=none; b=IGqi9F03Jcy4WJGBQoULwYoidI/DA665MxoCcOmMXfTxUgzyacAqTJeICgOREHQjhGSu9E8TEfmoSbzr3hMAYz7GFBT5W2lj+47F/gE5NjjqUdaNjLWyPuP9rG3oo029r4HxuC2xuQO0+th36gInGQBBM37a+x6VNAe4lL39ZeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799454; c=relaxed/simple;
	bh=yShl8MjzatLpaUkL+LtamO0kwi5jdP9TdNAOUA2vhZw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Mb6yA/jAK5sUSavNfbqntJOz+trtnyQMy7KuivkTa1XQHQZlabOqykjryUnBFqtnV4tEC530iW47WRVNyJZ03XUXoRzDRcf1wONSaeIX0wYLctKX56yoUn9TRWX4LwRXnid2ndfBEMWVxSdXAXbx4AnPMFegFL7WtEyPpf+SIf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=xSG3NXNq; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4202ca70287so30829615e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716799451; x=1717404251; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WQ3DCBLj1ltVFhHC9umt9a5pdQk6fg3FYn6QQceaTjA=;
        b=xSG3NXNq2W8HNQ6iTpkHyGRX4NPTZY9u3XgH2dev3OBXG4N4aTt258ARHYremhjE9q
         P1luuzXMbX7BO7kKD67q3maueRIxXtvDkK7K/bMEh9qSIcVy++GONZ3Pjolt9QiGo6QL
         F1SiZ0e1UkTH6vPYM5iGokg+EdbhtJjI3hxuZq4EprJFD1bACpGR4vRL49KAEMK4Y4DA
         RXTzodfhvUGCFP9YDUf8RuAWHM8P05EpVV8MbVGuitL4vv1pHdrXV5KQ1YynGEMimwOM
         Lsr0nPPAjbWYPU0Fs0L2ii4CO1jD9MoDS+KyG+7AAOITn6GqdHhfcSbsjoqeVjtaRvng
         2XQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799451; x=1717404251;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WQ3DCBLj1ltVFhHC9umt9a5pdQk6fg3FYn6QQceaTjA=;
        b=KlUbt/nYrErNu6i6sgjZd1czg8lJ6E/eplvZXDkLcqMw5tMfDVJbHkA1CJQRkONei0
         XfWSDgXNGZXBfPNmnak3bNcGcB+M5NHOx60kOSn+RvYfDznpBpUv5aS2KR8bYdPkd+K3
         WOVXoXPdpdp+vLTJkBZAfuOEbi8KVDOtb/lunGs17A9Df1LDWkAC/p2JDjHiE2b+K/Vu
         NLtugtFIK/QiPk0jm/edtAPS0lNloHFhCOoPpvgDY0kFX7lUZ7U84v3zPmMCLe+YcPC3
         6GyLPZPSUFEb8Uaqjv/DBLMn7ZGywxwIF0ydZABuo+ATKtZ6eDAbLvfXbIkSShU9WIzx
         im/w==
X-Forwarded-Encrypted: i=1; AJvYcCXvt2qWX9BzqlV0AZzim6DfHshg1cESLl9XbN8v3zgTdnlzFvY+WOwM1a/4lo/VOdqPPpzbY0VqDL3zj6u0vrwn75yYc+8eLo39HQ==
X-Gm-Message-State: AOJu0Yyk5heR3BdQrrBNrJEWeYCOPILobWNr6jJw/4zd20TCPUscZ3RY
	VfvtbPvySmLivuXyPQFR+zgZnteisIkWjeZ+4qVCwkjJ88ejs7UpEKbSuyCkFME=
X-Google-Smtp-Source: AGHT+IFaQ0PooOmv8dR+W3Bvgay3MJRwZ6H83frgJJ4+v0ifb/G833kRttFTAQT8su8CbqpnD0plVg==
X-Received: by 2002:a05:600c:4f4d:b0:420:ffe3:8536 with SMTP id 5b1f17b1804b1-42108a17f90mr86967745e9.37.1716799450826;
        Mon, 27 May 2024 01:44:10 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:c322:131e:ff9d:ef41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42108966682sm101365575e9.2.2024.05.27.01.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:44:10 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH v2 0/5] arm64: qcom: sa8775p: enable remoteprocs - ADSP,
 CDSP and GPDSP
Date: Mon, 27 May 2024 10:43:47 +0200
Message-Id: <20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMNHVGYC/33NQQ6CMBCF4auQrq0pE6DqynsYFgWnMAl0yLQhG
 sLdrcS1y/8tvrepiEIY1a3YlOBKkTjkgFOh+tGFATU9cyswUJnaWJ14oV5POLsQNXHSgjMnXIR
 73TSV7WoDlxJBZWER9PQ69Eebe6SYWN7H2Vp+158L8NddS22081fvOtuB9eY+UXDCZ5ZBtfu+f
 wB+6iZ7xwAAAA==
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
 Alex Elder <elder@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1371;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=yShl8MjzatLpaUkL+LtamO0kwi5jdP9TdNAOUA2vhZw=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmVEfUUSoOSnd4Lg2WXapEDvJlPvhJL9WnYSNLV
 39XOGrG8PeJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZlRH1AAKCRARpy6gFHHX
 co+nD/4yLxWTvxT139Y/T6PIgSgnJzMWiDpPVULWixjcf7St3IUskTd4CqVWRBzUS4IsZAU6fBl
 TK15b4kVvCaDyyxZTKfGvpbDXci5H2IkIgLCp8Sg5KsCluJj0onru5j9pzJaGN3Q29hZqXpBYR2
 TRJtQDBbkg9IOJBVdW8IQ6Cq2pjeGhOpQiLaW0kfWKb5QuGFvmhJ/Zv+Ab3YrHzL2kjDF4hDlqS
 hdhZuWusgFcimvxIbsUL6sVgdRKePFTX7z2/ofq9FTwrgeVCJsBzUNjW8Sn8f3dRqvHWk8yzXaD
 qu8kYSHZAlvupAHC1k+UBNh/q3ebCN92XSy4mxMKjUc9UoFEnErQQPWS9apR+Yj1t/o63Yt1ML4
 gi5x7JN0R88P1P4Yy0daYJA/RYokbvuSIGBIm6tmY5WGyRwwfjWFfKj3kQXpnwFQnfvIcN3pjkc
 Vq/3ZBi68yyvPIQhEYi5Xh5Zu2Bzp8croZzPrrW4g+R3SmSsh7mTshLSgZN5gYVbL+oHyiG6yIT
 jj7QGyTqFWHlHYlN/I3JYEPsV3/Hd+werpeRjzP93DlRTkUdDoRlcPD/sHOv0Fueaw4lv3N7M4r
 +uAkDdK1PC9U6hA53tZEqwWDLs7oCBjvqFsibvkqkAeLfDbViqfJ+lMdkspYJYfj0mjW8pMmoh9
 BPcfVZlIIEzxSKQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

Add DT bindings, relevant DT defines, DTS nodes and driver changes
required to enable the remoteprocs on sa8775p.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
Changes in v2:
- Move the DT bindings for sa8775p-pas into a separate file
- Link to v1: https://lore.kernel.org/r/20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org

---
Bartosz Golaszewski (2):
      dt-bindings: remoteproc: qcom,sa8775p-pas: Document the SA8775p ADSP, CDSP and GPDSP
      arm64: dts: qcom: sa8775p-ride: enable remoteprocs

Tengfei Fan (3):
      dt-bindings: mailbox: qcom-ipcc: Add GPDSP0 and GPDSP1 clients
      remoteproc: qcom_q6v5_pas: Add support for SA8775p ADSP, CDSP and GPDSP
      arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes

 .../bindings/remoteproc/qcom,sa8775p-pas.yaml      | 177 +++++++++++
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts          |  25 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              | 332 +++++++++++++++++++++
 drivers/remoteproc/qcom_q6v5_pas.c                 |  92 ++++++
 include/dt-bindings/mailbox/qcom-ipcc.h            |   2 +
 5 files changed, 628 insertions(+)
---
base-commit: 3689b0ef08b70e4e03b82ebd37730a03a672853a
change-id: 20240507-topic-lemans-iot-remoteproc-6647b50281e2

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


