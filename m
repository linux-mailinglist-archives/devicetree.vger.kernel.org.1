Return-Path: <devicetree+bounces-253074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C911DD0720A
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23380302048A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0718D2DB788;
	Fri,  9 Jan 2026 04:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i/xKk4Wl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBA319309C
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933239; cv=none; b=f8/33NI+gs/V0Vo3Ggvpd9VKdI3cADDcrXYGWGWsr2TLI42JonSeWCnMPb+jdvvxQ9VqqJ5DtE0IFOiz0ENrWqks7mwsAhAMSjVjoQ6yMvCsmMEbllrK3v113VtyNrvPZcnRWCyOCDhY3xadTz67ICuKtwH//eIBbZPVzpugpUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933239; c=relaxed/simple;
	bh=1C+PvdFiKKdhkbw8LlbPmf6zveh9bKxFcZV76Aq4dRo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=at0M7Adx0/knv5pfjmEDI7Nhap7C0lzaryjCZN4MVru5ChwhpVP1K+FAu0129rK0+eFwFx8Y+4neeEG+xfdjIhqJdXdWjWSskFnIDNbox3AFBrLd+iA+9ZNCVULcXBFCRQy8Coa2RkswvW3VjzyRSxxovS74ZrF/FueQsZMCaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i/xKk4Wl; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-3ec4d494383so2893359fac.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767933236; x=1768538036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ARMHINrSmnJl3ZJvnfRUQ7ECH+zDHlfb74bSrKikwAA=;
        b=i/xKk4WlvKhA8+OzOg7PmKgVg1DGnQxOfmsyBgkcGFS7s/KL6WX+/FUw/HaPQQQWtI
         xkS07T7dZtLhMPI6Cferpm/2CC/NKwEmHUiRhrDadB3bUEramtANr4PYSTLrVeS3NJsq
         Y5y/npX7gAkhebxZJv9W751ukgJEfmucsNjFcmQXKbWb9EraQ3wghzXsyNFJXxXpbY1Z
         gXPRP5SZ2RIo5cbpx0fxrB2L1jxmfuCa6sJ3luctUib9dOifUFq71QYLmx5xPiNDfwB0
         VjWFvCpRDKXQ8aUOi1Ml18zSlZjX+uESmHGhht+ohujtAlKFrOr5wSbNny4CVSm04e6x
         Xu9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767933236; x=1768538036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ARMHINrSmnJl3ZJvnfRUQ7ECH+zDHlfb74bSrKikwAA=;
        b=u3X0uPMfvOvfBTBdXB9tarVjMzFyhg3teXjv7aApmYVrG3fgoug2Oz+J91nwg8XWbA
         avWtS/8GLBCeXXamkkf1xS+MKesFpjm2SUsA0yhq3uh92jxedvUpPb0MNxy7WwuD8Ll1
         MyTGOBrr7lBatzYJTuVr1vR6MRwPObqQTrWdIhcs9i8wcWZyXa6EevqjuuXz/sahUvm4
         or7LOlYBgzX8wkZrda1iOXfcPKAz8VBR2SLlKN0jhmimstsuSK6/qSTvv7MPUDAH6/oH
         469MX18gmn1wtq4aQ6bzngwgeKEYpq29Mc4I2s0WCjV0hZH4yvVeO0uZ8za3CENR4Wj4
         FiPg==
X-Forwarded-Encrypted: i=1; AJvYcCWZhn7mHieJETbBa2VgHEmeBAPYZgnxz4/p3jo8KDw8BOlP6c7eoGkF5XUR8V/kdhTYY2YukiZkOjVC@vger.kernel.org
X-Gm-Message-State: AOJu0YwhNK+JH+6oP1EdXrZdOFmI3SVC10Ey/bFf6JfnZVLYXWqMehZF
	uaTXOz+u05qiQb3tpNILryBB9SLg6xtkO6d4XpEMqmetqAebcPeLUEPe
X-Gm-Gg: AY/fxX5ZqcXfOiQAncNQhF2cCCI7wOHVDcNMtTPs1pv0/KaFsQGH2MTrQfogp21tPA3
	ZhofCQ+QttCWgKaQ/5dYO95MD4NxQLVurtJirVz08gyi36QF2bcmNxVDV8EpuUIrlMJ26kjErDo
	btIoBzUiv8jwd6xGWjV3/cnYj9RijJE0dCNa25FVGzDCcinBeCQGWIDO1NumxVX0DU+8B4xLL+g
	b67k049a9VvLTDvxMmrab8zcMG/tldSjzEtyv2csicfX0XTjBzxOIi+seF+YBBVcXbVqKypiBdd
	jDkeBcTfk1ubY2QvZEQYuIlCScUbdexyq/iCk1K70wrdo/Zvtf8hF9/KZuyRf76ozlNQDWab0wO
	psuv5CqHluwu1XL74y9OP9ShSZQ6UXpPSXeFKZoaa2O1E4j0KMajnqKtnEMOkJPx5GvCyTylgYH
	oIoaPrbOe6OWTA8kniuPobYrAb/SFh46sXfakGYs+Q6mtFq/cE7fOTkKAq3rPiCuex7qwcg3n/+
	2YpB6CO0uCXVE9NosjJAKSt6TE1
X-Google-Smtp-Source: AGHT+IGTmSXT7Jbm3w9CjpQStDKE+n6cG7IGHjVUtrf2FQ6pDXUChT4pa+dFnj0OVpaHTZmCdeK8Xw==
X-Received: by 2002:a05:6870:16ca:b0:3e7:e064:c264 with SMTP id 586e51a60fabf-3ffc0967c3amr4057156fac.12.1767933236458;
        Thu, 08 Jan 2026 20:33:56 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa515f4dasm6274421fac.21.2026.01.08.20.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:33:55 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: andersson@kernel.org,
	krzk+dt@kernel.org,
	mturquette@baylibre.com,
	linux-remoteproc@vger.kernel.org
Cc: mathieu.poirier@linaro.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v2 0/9] remoteproc: qcom_q6v5_wcss: add native ipq9574 support
Date: Thu,  8 Jan 2026 22:33:35 -0600
Message-ID: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support loading remoteproc firmware on IPQ9574 with the qcom_q6v5_wcss
driver. This firmware is usually used to run ath11k firmware and enable
wifi with chips such as QCN5024.

When submitting v1, I learned that the firmware can also be loaded by
the trustzone firmware. Since TZ is not shipped with the kernel, it
makes sense to have the option of a native init sequence, as not all
devices come with the latest TZ firmware.

Qualcomm tries to assure us that the TZ firmware will always do the
right thing (TM), but I am not fully convinced, and believe there is
justification for a native remoteproc loader. Besides, this series
has improvements to the existing code.

Changes since v1:
 - Improve bindings following review feedback
 - disable clocks on init failures in q6v7_wcss_reset()
 - review-suggetsed readability improvements of qcom_q6v5_wcss

Alexandru Gagniuc (9):
  remoteproc: qcom_q6v5_wcss: drop unused clocks from q6v5 struct
  dt-bindings: remoteproc: qcom,ipq8074-wcss-pil: convert to DT schema
  dt-bindings: clock: gcc-ipq9574: add wcss remoteproc clocks
  dt-bindings: remoteproc: qcom: add IPQ9574 image loader
  arm64: dts: qcom: ipq9574: add wcss remoteproc nodes
  clk: qcom: gcc-ipq9574: add wcss remoteproc clocks
  remoteproc: qcom_q6v5_wcss: support IPQ9574
  remoteproc: qcom_q6v5_wcss: support m3 firmware
  remoteproc: qcom_q6v5_wcss: use bulk clk API for q6 clocks in QCS404

 .../remoteproc/qcom,ipq8074-wcss-pil.yaml     | 268 ++++++++++++
 .../bindings/remoteproc/qcom,q6v5.txt         | 102 -----
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         | 101 +++++
 drivers/clk/qcom/gcc-ipq9574.c                | 378 +++++++++++++++++
 drivers/remoteproc/qcom_q6v5_wcss.c           | 398 ++++++++++++++----
 include/dt-bindings/clock/qcom,ipq9574-gcc.h  |  22 +
 6 files changed, 1082 insertions(+), 187 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,ipq8074-wcss-pil.yaml
 delete mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,q6v5.txt

--
2.45.1


