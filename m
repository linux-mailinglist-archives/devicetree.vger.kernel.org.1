Return-Path: <devicetree+bounces-231930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E14C1318B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 793304EA2F4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 846971E9915;
	Tue, 28 Oct 2025 06:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qe0dxd4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD84DF71
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632205; cv=none; b=h14sRl3cYdFwI9pFLNK9Aimx7mWerEkpW23Bswoa7bKhCOo1B1lXDCDbarKxJUUBie/SThXWGTDFKFEbsvmQUIwK2fY4QmAtwfSLTr52F42aw6cnacl6V2n+RfGEVHm6lHcRjUdKeOWXhQ9jAHmK81rvqt145RxzU8OnFLfOYs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632205; c=relaxed/simple;
	bh=3q7vgrsEYAl/mHjsczJ7QlOK8tqZttVCqjidcksmLTU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hf5t7eNiTeCy9s32yGLo0jYNrv8Cv91aPCT66W2HwmJwkZhFgZGMWl3BwIp/onIgG3bOHW8wFhcdjHOs/2LOSrbh+9bTaxM0JZ0GRDvQNQ4N85jnDpxhED0IQm4lBph/JScTAuX4JDtzvs4GTdTJZ1WLHDz8LnPNAa1boroSi8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qe0dxd4b; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-294cc96d187so8634195ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761632203; x=1762237003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M4Rb55I5lLUug6IGvr+iG2g0hErU8FZ4QrrA0bkbgrQ=;
        b=Qe0dxd4bOtGxFZr9We/nGpVAMSGj3aNIzuMpH5JSeZ1Ui8Rmy1Lzp+LnRm6T+lcppp
         ayRAdLl+TT/O460oUd0rJss8wXsCJj6T4OSmoWzxXZtxiW/P8WhkNoIJ4JBNxGcjGEXU
         b06H3iTNcrUZSCLXIGbkFpPjM311mRIzvonN6FuJJSCPN0IlFqMLfYfdRYmvNNW6yArA
         I19TEExAK+P2HrqCamUrDGK/yfm8wyqT8uHbh1LsubfTAi8NNV8s2a8YKfndbIniueih
         la0jiBzo4ovi72LM3mH7T5MBa+cmziYbmiPOMjuN9URehvfMiS3kIjmduuIBujPJiWt1
         yklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632203; x=1762237003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M4Rb55I5lLUug6IGvr+iG2g0hErU8FZ4QrrA0bkbgrQ=;
        b=L+Nj8LpAHTqUlTRhawiAG8jJEozEqkApNkPh4Z+GxYMUso+q6BBTB05+NoISIBUJQV
         WHwJNLD49Co1LTR0dmz49JrfJPlJkmhBu0aioyja7Mv9hAikyuh6JI9ga0GQue70mzlJ
         dwn/c50WnuiJuMxK9fOf9KsRtQE7wTt/h2zN0nJEMdsFcgwBdlD/+hWK2sZ0vfOF1aUm
         6AUe77OHB+vqruABNp99fCJkCA1sTZR30j5YsSYZtM9aQ/dOFGCMnBVdhlZwsVvo5m3B
         ieVFfMqaJekaz5BSiKyBdSTCkPBKK3nvcwZtIaRj+JXyqdvWfeErZ7XKNj4o6f2AXDZH
         gz7w==
X-Forwarded-Encrypted: i=1; AJvYcCUKPZQhYPVHWRPsPllZLuQNZu1wgqR9BaPPDIsRhUWaO/UDKRxys+eEqg2oVoYIFVpKnqATyoASAhfU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3JAzuHcvANNRQ/gHN1UsQLuviyWNeoozNbYZq7IcXJ+TdF839
	IIDe1OM87MUZR7bEqP+UV8PXu18ztMblG7R76CXPg39zfjl+/RNupuu1
X-Gm-Gg: ASbGnctwgnwk5qKcAypjJNdOPtj/M/0uv7toEXa6eJzZ3wXqWiu5RQ8nUOzdjlBvL9N
	GmEDHA9iww+uVPKJ7rQ/vKFYfCZek4FlCgWyOok127D5ucw35LOhlJZid566Nfdp+4L0Uhh4Jom
	h0UpiCEcBOBvLYFhFumsQieIoVNqKypgGzSD/hazurinlSzZu1sKUfxJUsp+3zf3KeTrBRwOzC3
	N2LHemDx97+wZ5k7aHDcuT5nOO6EN25v7wyYmH++AdlesgC32k0edXC1kd176XY5jDRKL30Ymec
	Ew81ZDsDaRlYy3jrnCvn3niiEUVvatsQmv/ErGEFV6qj1xtp0HDtOhFlomg6nfTKxRXcWBjX8o+
	HKAYjVsOmaB7YRXeCeyxcp+qCF8b5muEDwnLxIFNv/qzEuH+g8NiC2pTlIDk2hahuzUm8LjLkZf
	KxP1r+YjagwDGPWJ9pZJMGNMcyhA==
X-Google-Smtp-Source: AGHT+IHTIhRQHTr/xzwx+z1LhLuPWrR6wig8oy0fi1xGmqNWoAym+r1NmbbRsmQoQzQAu6/rb28qXg==
X-Received: by 2002:a17:903:186:b0:267:6754:8fd9 with SMTP id d9443c01a7336-294cb507c55mr38028255ad.39.1761632203414;
        Mon, 27 Oct 2025 23:16:43 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e429d9sm102612935ad.100.2025.10.27.23.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 23:16:43 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v1 0/1] arm64: dts: qcom: Add dual-channel LVDS support on QCS615 Talos EVK 
Date: Tue, 28 Oct 2025 11:46:35 +0530
Message-Id: <20251028061636.724667-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This patch introduces a new device tree for the QCS615 Talos EVK platform
with dual-channel LVDS display support.

The new DTS file (`talos-evk-lvds.dts`) is based on the existing
`talos-evk.dts` and extends it to enable a dual-channel LVDS display
configuration using the TI SN65DSI84 DSI-to-LVDS bridge.

In this setup:
- LVDS Channel A carries odd pixels.
- LVDS Channel B carries even pixels.

This patch only adds the new DTS and corresponding Makefile entry.

Thanks,
Sudarshan

---

Sudarshan Shetty (1):
  arm64: dts: qcom: talos-evk: Add support for dual-channel LVDS panel

 arch/arm64/boot/dts/qcom/Makefile           |   1 +
 arch/arm64/boot/dts/qcom/talos-evk-lvds.dts | 128 ++++++++++++++++++++
 2 files changed, 129 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds.dts

-- 
2.34.1


