Return-Path: <devicetree+bounces-234813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E086EC31131
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6000F4EA482
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBDE2EBDFA;
	Tue,  4 Nov 2025 12:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eNOArWOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3534E212542
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260695; cv=none; b=LzUGzb7Gq2PDgFBTI0Us7Pf0yC06VPagEFDpWM6vaVY4gouasEv1ixnHm7BPrWIyK22M77URDxDABx9sx0BFZhrepxAsgew73DpHi7iu1ZBcwjAfn9umE9VjPglUNvv/o+/YSkm/1LMMIPe83eKkss4hIzao25ZnRZP/r5gTzRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260695; c=relaxed/simple;
	bh=P0P09KrMQw7iDL1Zgyz7Mj/ducQCpx8Q4fKXzYK04mE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=H0KHDPxIFRS0sgLtPgiup6/lDxRNjW/lZB/fXwHvxtVKSIyfge/z/DMhvzQWion2bocJfthvGfYu7FILW6FIy4dNJPrOIatM71ZmQBxeXnWTXw/UEVdH/ZY7L8FovJpxu1adqzvkuwImMDFAlsrfRHsVJ8rFNwQ4uAcjZJh4ELw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eNOArWOE; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7833765433cso7139596b3a.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762260693; x=1762865493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZEiQIKJ+ye8rmj662E4uTeZxFBcM5WtKqV1kS9+TQCY=;
        b=eNOArWOEsY+6rvu6ik7GQ5VpxizTdXOLVWDx9XJNubYhE6m60kvQb14qbRgVEs0gHi
         Ky9LV34b89G/5pj6c4H8h6NQsAnO3gJEfyQiZCx+T6ZCBqmiOLHjiDTe+IWE5lRCW/v4
         +l0a5j2KXn2QiZGPWLPhGucHxIzopTKtwDTHNS42VMU8XoQvSShaosqPwQ5yVnEOC45n
         ij57WNJ7rvwcm2RKIxPx+w6EgMxJREzf1OW7ZNvE7TM27jXEBnHxeLxYbS9apzE3NHFK
         tbAYB98S4z7zbxQQ+Ih4Wu/+L+mFeCS4/ihV8WHsl+TI/01TCdKhx1tSpq5Y6/f4n3z2
         vwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762260693; x=1762865493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZEiQIKJ+ye8rmj662E4uTeZxFBcM5WtKqV1kS9+TQCY=;
        b=LbMR6h8u5vNH2pGLxwdQVi8pVeZMt36d5WgFvx9+1AUePIgA8cqS0deXkOIV8VtXPp
         3kP9K8zfElhU7eG3idzUQB3xBeD/U9Dag0ngCz0Ux6buDzMN+wb/LeM/+1BR+5hLqmeD
         Ere8vZ0QuQ+Pw4vuoaqUxBTmIHPdGVLyIX4YU6Pk0HyzdoteT/oyFXvrESrMaYpOjpQM
         qFNMAOEwLqn+3d/Q5JTl3VGD0+4+bvTNwogMoBx/UwPd9l0Cc/usN+6QOFEZazVGKmW7
         jqdxYHfHilBuaGEoV4cXS7w6N95n6AT2uJjIjDGnna6v+my6lor3tnZTi18WgNy0NcLz
         40kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfLeQFE5+/86xNgdfnLtCK1jJJ+1GrbyuRLBceQc8iqtyxE3XzVizOtHBtP+oi1D425uXlxcDAlWSu@vger.kernel.org
X-Gm-Message-State: AOJu0YzCrIWv5d8YVumfXr4TkI3mWrQm1rjhSVtIdUdyP+UY7yWDdA+x
	dpjj6z8cfex3POkwbC0nIGyuYX6/8Jv7K32IX/ZeiqOfyljxCQwsnGzU
X-Gm-Gg: ASbGnctThdCQydXFl8sBiMpTXXxvV7toc/TOfy/kq77sCd4KhcAV0O1x2cdyA2Y9GHN
	r3F9Ve6zcteWYnpfABuooUbURaWbIroc4qg6LZvyfGg0QwYCIS+/hZx51TYKvetPls+HkOd6Umf
	5R30z3yq4yJRTX2bGeV7xRR7f+bReBo2Alxt6GbYd+SCNRAw5iLU9X9KUZgn/f7G3bbpjfWzJcY
	xK64aqk/Cx1cqFaubqOmMJTgdLZ9vNE24gx93peACrID4b8y3xHuef4c5t4fYXl4/oGgunD1VEm
	IOjca+Yw63UiIC/Gsjd26jpZ3WEyYFz60IvyUNNtX8plWN29FYmNVMkRL/ATJSF3oXt2GFiztzP
	r5pNYiGvaggNTHTUG9ZpzFFRCKt0A4iig0DcX1ZwfRxirVPIr6DfkEWUeQv0WD7/ZWplaE+06dr
	qpgWg2AuJBtyr7AKyTcma5wyerJQ==
X-Google-Smtp-Source: AGHT+IGANTE1PAot3QI3qrV6KnKmOlu6RAZN/pN1lxmSwTfpebaHhBK2S3CD8RB0Tducwg7ma+w5hA==
X-Received: by 2002:a05:6a20:49af:b0:34e:959d:e153 with SMTP id adf61e73a8af0-34e959debe9mr2135074637.15.1762260693540;
        Tue, 04 Nov 2025 04:51:33 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f2a80459sm2338616a12.15.2025.11.04.04.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:51:33 -0800 (PST)
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
Subject: [PATCH v5 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC support 
Date: Tue,  4 Nov 2025 18:21:24 +0530
Message-Id: <20251104125126.1006400-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

This patch series adds device tree binding and board support for the
Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
QCS615 SoC.

The first patch introduces the DT binding entry for the Talos EVK
SMARC board, and the second patch adds the corresponding DTS
files for the platform.

Note:
USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
is not connected the switching cannot be handled from SW.
Hence from SW Host-only mode is supported on Linux boot up.

Changes in v5:
 - Updated commit message. (suggested by Krzysztof)
 - Introduced generic node name for can, dp, hdmi-bridge. (suggested by
   Krzysztof)
 - Introduced talos-evk-cb.dtsi, which has common carrier board
   interfaces.
 - No functional change in bindings file.

Changes in v4:
 - Updated product name to full form per Krzysztof’s feedback in
   dt-binding comment.
 - Hook up the ADV7535 DSI-to-HDMI bridge to base DTS file.
 - Add DP connector node and MDSS DisplayPort controller.
 - Added USB note in the cover letter for maintainers' awareness.

Changes in v3:
 - Addressed comments from Dmitry regarding USB1 `dr_mode` and 
   added a DTS comment.
 - No functional change in bindings file.

Changes in v2:
 - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
 - Merged enum entry with existing `qcs615-ride` block (Krzysztof)
 - Fixed subject and commit message to use imperative mood.

Thanks,
Sudarshan

Sudarshan Shetty (2):
  dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
  arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi    |  56 +++
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 442 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-evk.dts        |  87 ++++
 5 files changed, 587 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1


