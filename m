Return-Path: <devicetree+bounces-178940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2466AABE1F3
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EC843AE22A
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 17:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F4B27B4F0;
	Tue, 20 May 2025 17:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="ChzYwes/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94ACC1A83FB
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 17:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747763024; cv=none; b=hlWLitxU0WtWT+jpNJjuZnDoRsNnM+9vK49C+GaSC7ckfR2ZX89kpCLQZUFf0pTAOIBBu9BuY0FpKacMZNqNKHr1WA++t+IQJKl42gvn0TDm5upC3W5wgAluZyVx8CwP7Oc5wjbK90dPWzr//w9cf7gkFTPRHmlJUAbeAQnR8Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747763024; c=relaxed/simple;
	bh=yeqxdYgDP/mwIyxs/1rcj9YB1LowK4KlQZ4Zwsqf0Q8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NMSNVCWrrdkoVqNhoNstLHZ5eKhiNeUC+8okt0eT9TzepiNJEbzJzfiA1hnWuYImyfXdGJ4krSw7GXKfx5hjsTH2sBZLbDj4emOE2ncsfhtteiQRRsTOMVHkLXa4st0Y1jD91MYJdm7hGW9F9tW1v4oBUJ5CUGvrNrUbK0TdAOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=ChzYwes/; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-476ab588f32so86394361cf.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1747763021; x=1748367821; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uEVyBoAEqxAn/2eLRcFtZIXRt97TuO35d71JLM0GfEs=;
        b=ChzYwes/t5fTXjSq43Th165DDGy4vPOJ5K1jml3D2ioY3TsbQ5WlYyt/udSqBdVBK0
         sKSBOto2u9fz0TR9p/po3ZEMlLp7QEy2Knn8+SIjAYYVa/ywT4/2qB2ZxH8ZCrfwBST7
         VWcrwB58vGmt8cpiRmyI75Duz7jjVK6ShIyjbeSPiouiFrIdoielPYEoVOZmOZUBYCM1
         Bj2nGimpH1zTEMgf/KrgnjUqGTn+J6ysmeBIFNiHAcEmsxrP88iX6ikowEWHnPPJ8iVc
         1rBTlulI+3VxAgumYL/h7uViFpzUF7gn0wrccbNqXmehLhembeIo9Pl8f4yjM6SazzYY
         09lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747763021; x=1748367821;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uEVyBoAEqxAn/2eLRcFtZIXRt97TuO35d71JLM0GfEs=;
        b=Ouuqw/TSxzNgvAwZPFFG7R/t40w2A3bWcRNDLUYoUtAmwn5vkm1w8qIJmXI/XOdKxk
         CQ/DVxbzp41lgJCLidkaUg8BxYmAmY7mKvXxqZYU6iUgo49YbiyGOioWN21uU6WdzDi1
         Ona5k2DUPhz9CEhDonAqkpyhnyBelsRFlxHmN7QWPObNfhSOV3Qt+4wb2lLmnzy76OnX
         RhG2iaFfSbvF8junWPlZe1X5ViKH//Md4BKD97Uzmug55pACS59bkBHKBa1X7gm2fVE1
         rGWUEJKnMeNjHlow7oleUAfPrlwFjrrZYOeCxHILqLJkAa89UBQhHkFPAVG21iWTkrBf
         VCeg==
X-Gm-Message-State: AOJu0Yxclqck5WC1Z3gagZvPB+/9UZ+zVYBZAYP/93XRADW1Rzji05Vd
	YztbkB/8AvWdNwUAv93+yTaDb+ovu2d1ZXIdYp//3Ruq040WlQRsxS43AzK5a/Lj4Q==
X-Gm-Gg: ASbGncsQ4K12iZIq2dIVYVtsNnu62m42OYLrEQcm9KggGeTlhw2JYD69cRbu7mAAt5T
	MNW6r+sokPT98Rtq6WwtJE491+DXoR7OjyMKYTwfJopwn+ouummF1AXxKuR0FoRPs4YLE2NF4pw
	hXhTmJKsXxQ9Rnx9rnSQTJt6QcuByvxbUk63fDwrmyLUfKYBinJpr0RAwjeJE8gRYiq0VL5SsQ3
	gNWGcE3RmAJAF7Po3yKMea37UlVAILtIdxUdEAwQOEEF+IGou+qi+ZKz8V2MlTVSIJIs/sbgNEc
	98Ztf1LBFoykCuFfDgYhqqZM3CSAzKEYjYYtO+Fgy3xXe0NEjmxflTaWDoLQ6NRuPin5NX6Ah35
	QTkNUSIR2YNMRYk09Hw/g7RHQLQ==
X-Google-Smtp-Source: AGHT+IFXZ7YXoRgCP1iWcGdKBbqM9UFlgIi18ryOD2ALUlsiaRsaFpTB9VFjJh8xZMUDnOmM2EYDLw==
X-Received: by 2002:a05:622a:5c96:b0:476:91f1:9e5 with SMTP id d75a77b69052e-494b096c63cmr355564001cf.50.1747763021408;
        Tue, 20 May 2025 10:43:41 -0700 (PDT)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-494ae528553sm72660101cf.68.2025.05.20.10.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 10:43:40 -0700 (PDT)
From: Job Sava <jsava@criticallink.com>
Subject: [PATCH 0/3] Powerbutton driver and powerdown request for TPS65224
 PMIC
Date: Tue, 20 May 2025 13:43:35 -0400
Message-Id: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEe/LGgC/x3NTQqEMAxA4atI1hPoqC3oVYZZtDVqQGpp6g+Id
 7e4/DbvXSCUmAT66oJEOwuvoeD7qcDPNkyEPBRDrWqtWtXgwmE7UbJ1C2GOYnTXYjyS23JeA5L
 SZvDeG0caSiQmGvl8B7//fT9p5Db+cAAAAA==
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julien Panis <jpanis@baylibre.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, jcormier@criticallink.com, 
 Job Sava <jsava@criticallink.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747763020; l=2045;
 i=jsava@criticallink.com; s=20250404; h=from:subject:message-id;
 bh=yeqxdYgDP/mwIyxs/1rcj9YB1LowK4KlQZ4Zwsqf0Q8=;
 b=0mQyiMtS10+eQAOXVRfVhl1B94z6lzdx7XMoe/eb62Plu5J5y2Oi8RlHZ0ZeBrgdC9Wy03jPq
 FvUpzzVYBLaBVr+qVAqWI4a1d8RN8Hr4QGgkRlwRejow0fh7il0FPtn
X-Developer-Key: i=jsava@criticallink.com; a=ed25519;
 pk=DPPriJ+pziqtCZ0EIomf/hKU23s5T1u4WOQaT8BpQSw=

Hello all,

The following patches were created to get the tps65224 PMIC powerbutton driver and power off request working on the MitySOM-AM62PX. The patches are as follows:

1-Powerbutton:
Full implementation
TPS659224 pmic push and release interrupts are now handled by the powerbutton driver. These events now issue a power off request that puts the PMIC into STANDBY mode. tps6594-pwrbutton.c is modeled off the tps65219-pwrbutton.c driver.

2-OFF-request:
The PMIC will now respond to a power off request. This is done by sending the PMIC a command to enter STANDBY mode. The PMIC will then turn off the power to the system.

3-Device tree bindings:
The device tree binding for the TPS65224 PMIC has been updated to include a proper description of the power button functionality.

4-Impact:
Button presses will now be detected reliably by the newly added powerbutton driver. The `tps6594-pfsm.c` file will no longer handle push and release pushbutton interrupts. This is because the powerbutton driver now manages these interrupts, as intended, which ensures the powerbutton functionality operates independently and correctly.

Regards,
Job Sava
jsava@criticallink.com
Critical Link LLC

Signed-off-by: Job Sava <jsava@criticallink.com>
---
Job Sava (3):
      dt-bindings: mfd: Add power-button option for TI TPS6594 PMIC
      mfd: tps6594-pwrbutton: Add powerbutton functionality
      mfd: tps6594: Adds support for powering off the PMIC

 .../devicetree/bindings/mfd/ti,tps6594.yaml        |  15 +++
 drivers/input/misc/Kconfig                         |  10 ++
 drivers/input/misc/Makefile                        |   1 +
 drivers/input/misc/tps6594-pwrbutton.c             | 126 +++++++++++++++++++++
 drivers/mfd/tps6594-core.c                         |  49 +++++++-
 5 files changed, 199 insertions(+), 2 deletions(-)
---
base-commit: a5806cd506af5a7c19bcd596e4708b5c464bfd21
change-id: 20250403-linux-stable-tps6594-pwrbutton-e056dccc6be5

Best regards,
-- 
Job Sava <jsava@criticallink.com>


