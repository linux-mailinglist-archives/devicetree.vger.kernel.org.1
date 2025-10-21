Return-Path: <devicetree+bounces-229421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E76BF74B0
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DCE214E20E8
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A3A342175;
	Tue, 21 Oct 2025 15:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eZ4FxT6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E76C2236FA
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060185; cv=none; b=tscBRQ7a05TYiSzBShUBayVm7f7B/0XwHWlU3bhI2AW2pEAB/8f0mLozbZmoGEKByD6KdJmjpirPfvE4dXt4C/rerjLK4biILQA8NpEbochkKwKTDYTxPWHTeCsyEe/XvDTArnbi2yxYvwYltWL8141c2+Jch9tfMOYGhgmUxxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060185; c=relaxed/simple;
	bh=GQ3ckhum8IdvzzEfZpff72BYrgiczqI0CxjLSfyEQoA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=APegdcqpXo4/G6iXfHFg6R79ewnXc9KtOJeFSgJ2Ia5R0eMfL817OHchC+eEqONkJkaSpVxcui5Ywi63O8cPM0v/tBpI270xMUjsuUlZGdVQM6TmGxHEI+szgYRPnqtAZHceuZyXFIYbAyxYFBPqfKkUA+/68qf0SsVksl9EGU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eZ4FxT6w; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b48d8deaef9so1122290766b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060182; x=1761664982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TMVheGalK8FFbFn0JWrh/VoA/5vQNhUL74QB4lSqKMU=;
        b=eZ4FxT6w997rHUrczmVrUqNk53JNKCSsVVt6mIb38l8yw+Gu78DVMlREwo73z5czyZ
         DFltY+qFFM0lAFyqbl+aBx0zN2bTUOuyzlXu2zVji+dTZXDggxv+L9234z/IgMT6wLYq
         MjCmgsR0FvTFR1QqKNXQX9oKjoOkpwNhRbXfid6qJ7LrD+RW5sZ2+NlEYtP8ojA4ENRp
         6Mvj+VB4W5zbYsxiRNv7rFw0e+4AhjG6bHDQVZdogo3oPtqLF9MH/SdZGEQqRZy0AOnG
         OfnLoK3zfKu8ZQI3XRIHeuyOK6tQL/YjQ4mjPUwcGGBLS666GRCsPOByWQESkStzOVqX
         oo1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060182; x=1761664982;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TMVheGalK8FFbFn0JWrh/VoA/5vQNhUL74QB4lSqKMU=;
        b=qdKmoCDqgfoyQijR47jZE8hQl3frRzfLSWvCI5Yo/5xIuDhWIpuZuekhiZjRXj0wnJ
         0N7nKwStMN/Dsu/lvC7xDFBnWPuYRobvkz4V4olHdckyYtQIT+hoNxm1Hur/HpZ55ATF
         na72yY3hBbrF9Tm/g8/USAnpyA3yNODX8HQExJ7uchj6n2KMt13RYVdpPw9WRNTj42Sp
         ggMEXhBvH8zr90E944xW7XbGKNl0wrSMvVlUgPHSbrU2oC8WVFuby6VDRpNtskqXEuYs
         7SzJyiPGh+yr+ws5XhOH+l7rk0LR5DvFtDLpW8obgjt2tqiExmeQVPNetRoFQxKhUwWA
         MPTQ==
X-Gm-Message-State: AOJu0Yy0S1kw+9cgw0JejOYVhHbo/Kr3C/CnWG3HSyQVCOwPVrxURS/o
	SILwL/oi2TdITrFWkt2Zz5fP5vCwy8/Bj9XE4RI6/SpS84Uz99yR1DgmhcDPh42/
X-Gm-Gg: ASbGncvO8KJymQRuae/6Levq+1VWQjMeY1MeRmty6hbQhv5MiBLFJsqVeDuKrKiMfCV
	9o34zlaVlH6glv/W6f9kFMfASt6npwzLj9D0cFkH6t+iOY68GIbEqKS6PQUgdJyzzq6khUZYgdy
	XrdFXFxsWERDu7UFgm/JBOmO0iRbirkkmwwwZbLhc2e/t8SPXP65y6egKCuOmZ7GWsQmNBtKv+O
	yW2ywCIwtNKgmdWz5hF4kT1RGNQIXirZ3jV3baQ6lXobFtDlR5i+quGTND7OlZzEhXuI61U0uLu
	Tq6uJT/PbEOAd/KeUFJjWIfqldXASY+LaIF75Xq32+MTAQ7NEBVh/TPxw/DZwbRXcj3g0JFGSWw
	1LS41Dl2E9/eaPgOdO3M7dQi55BkFbVPs23s3Mnj5VbZVJ7oWOoKRws/heUhmBYiQJ+22onvCE8
	28wQiQydL3Kv1vrWjSF+oIYG6cGgULR0vydAxj+g==
X-Google-Smtp-Source: AGHT+IFjAc5AXcoHcQ988nnPs6wGFM+kl8yEEIE8fwdc9oeO900YlPPXdG3f/j1Bm9ul8xq81jy+LQ==
X-Received: by 2002:a17:906:fd87:b0:b07:c5b1:b129 with SMTP id a640c23a62f3a-b647195b8c3mr2176066166b.1.1761060181709;
        Tue, 21 Oct 2025 08:23:01 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:01 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 0/5] Add Khadas MCU and fan control support for Khadas Edge 2
Date: Tue, 21 Oct 2025 17:22:40 +0200
Message-ID: <cover.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Muhammed Efe Cetin <efectn@protonmail.com>

This patch series adds support for the Khadas MCU and fan control for Khadas Edge 2 board.

The first patch updates the device tree bindings to add new "khadas,mcu-edge2" compatible for Khadas Edge 2.
The second mfd patch removes unused nvmem code.
The third patch adds the Khadas Edge 2 registers to the mfd driver.
The fourth patch adds support for Khadas Edge 2's new fan control registers to MCU thermal driver and the last one adds the Khadas Edge 2 device tree node for the MCU and fan control.
And the final patch adds the Khadas Edge 2 device tree node for the MCU and fan control.

Changes in v3:
- Renamed the compatible "khadas,mcu-v2" to "khadas,mcu-edge2" for Khadas Edge 2.
- Renamed KHADAS_MCU_V2 registers prefix to KHADAS_MCU_EDGE2.
- Used of_device_get_match_data instead of of_device_is_compatible to identify the MCU variant.

Changes in v2:
- Added a new compatible "khadas,mcu-v2" for Khadas Edge 2 instead of cooling-levels property in old variant.
- Added Khadas Edge 2 registers with KHADAS_MCU_EDGE2 prefix.

Muhammed Efe Cetin (5):
  dt-bindings: mfd: khadas-mcu: add new compatible for Khadas Edge 2
  mfd: khadas-mcu: drop unused nvmem code
  mfd: add Khadas Edge 2 registers to khadas-mcu.
  thermal: khadas_mcu_fan: add support for Khadas Edge 2
  arm64: dts: rockchip: add Khadas MCU and fan control nodes

 .../devicetree/bindings/mfd/khadas,mcu.yaml   |  5 +-
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 58 +++++++++++++++++++
 drivers/mfd/khadas-mcu.c                      | 58 ++++++++++++++-----
 drivers/thermal/khadas_mcu_fan.c              | 20 +++++--
 include/linux/mfd/khadas-mcu.h                | 32 ++++++++++
 5 files changed, 153 insertions(+), 20 deletions(-)

-- 
2.51.1.dirty


