Return-Path: <devicetree+bounces-177065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D59FAB65CF
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:25:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAE94189565B
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E38D621B9E4;
	Wed, 14 May 2025 08:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GXuW66rR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F610156F45
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211114; cv=none; b=l4UOOIy636laP/ZESO9lnDqD2x1KgYceUYuZxcspmHzYuQMz3skk0fqtZ4GrcO4VVxu48/nxhzalvNvh/RKT8iDO1+XI7gOIe72UhxzrQBRQfBUb3Le78Bsg2uboa2QMHWKgT8DbRICbtIaC0ipVr/glngXxVjdtV0Te1CBFYFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211114; c=relaxed/simple;
	bh=qc/nsUTYkyuzCMF1Z93QgX0RM9mLg6+yezxc1YMOKms=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CZl12dXV28L9/CflpN8Wb9iVUCo9VmLAMIL3vzkYdRLODjq6D+UZpjmyk46eWl9dWLRfWW5QkiYMIn1qRl3IF2bPiKFSDXLwAC2zoMToqk9hp18VJxQnvs3WtAW/EIAhkpd/urcNaJu2IrAZ246KCPeRFxrYsq363vmKrpXVSUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=GXuW66rR; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so74975485e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211111; x=1747815911; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Klj8NdPC9rX4nFDMdyr+gujv99cd2TFqTsaOoeEged4=;
        b=GXuW66rRl5HRZK6+HmBde6lAaByu6v2rXNQzL1341eY8aJITMinoNQYTBVQavz9xuh
         svrrpag6qrWdcnes/rQbTmKGToGUR2PDD6gj40VV5hgCH7QTVRoB/Od61ItDhZ3YfXEZ
         wyRWvZTb236F5kHBVbdjLNMZcpAAIawi0o90k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211111; x=1747815911;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Klj8NdPC9rX4nFDMdyr+gujv99cd2TFqTsaOoeEged4=;
        b=MssunO3qm1PIgjPsXTuVqz/XD8EGlNzM8AFm1NQf7nG5hJGHEdl+BYemZo5qhXBZJM
         Qd787Kmkghdl4bOsAZX118rGIDLe3tkO+nfbTOf66OBt3/94+uz9qepfygOv6XjAByq2
         rH6FJYTQnemfQEXuHKSUxbTk/c7jONe82wMxrkFRwlYI8GyOmn9KG9OOBM/bFXiOoliI
         wXZ0BNClTYlDSRVgr0wBWOs3copfcQL8Ndp6L/3McdnyPkeMNi2N1MUZ0+iGL6BNgk51
         8xjlgjcTahCULmu6871mpKyFH3t6Y5+5p31MmeboaI+bk+hIQsKApAxDXjvJ8Bs/YoeU
         HKiA==
X-Forwarded-Encrypted: i=1; AJvYcCXqxJxjo5VBoJpQ/ZVaPbd7OSo64K/+MOEGdPI/eP3CTxF/25fzc8yaEmvUWqgSXSmOrShMyNbYMymY@vger.kernel.org
X-Gm-Message-State: AOJu0YzO5dpyWYGPCBeI3L6b8FUci9P3whBrQfqJI83CV21LXeujw6uX
	+yc/py1CdMQK25DFyNrp0ZCo5+KUS35aS/CkoKWhaU7xXHfRXd9CPFfFjGQeAYE=
X-Gm-Gg: ASbGncsWOz1XUdshVWADNhaslY2DLA3i9o3xxEwWwdb5vZZCU9Th7hOIM3AMXSdE91i
	kqVq8f3llpbY1r/zfInSpeHLyhANnRa1cEj25GHGsb2QCPlmhC3jLTmNGtnQEy1MUQJXTNaQUy8
	FapQC3DtHs5Tg3wxmgcKJVtxGPuoAUVcBr54q+KnBYiO0ik27AF6mRcfunm7H+qoVd4ZKgXTWXu
	x31atNpNq5VQklaayqr+AAsekF2chN7rir3aYBL7exSr8HsRkjeYBSz2ha8JxGcEwztk/hRRUD6
	VMTTdUFbPBQz9teST29XoCGgpFURg+hTQWfhHwB8kV2yXHcxM0/a8BF9sp/NKoMg/P9+KD5p2OK
	k6ax3g/oEe2wHc0TVOrjiWh1Y/C1TO97+SuS+iVFVI+A=
X-Google-Smtp-Source: AGHT+IGa+UmxR661YRcC1N4UAkW8IE0iPci8H8/AjxxIIiISRrbp1i8SREEO2kqtiAg1FYOJKvF4RA==
X-Received: by 2002:a05:600c:1c14:b0:43c:f895:cb4e with SMTP id 5b1f17b1804b1-442f210f6f4mr22958705e9.17.1747211111376;
        Wed, 14 May 2025 01:25:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:10 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/9] DTS updates for BSH SMM S2[PRO] boards
Date: Wed, 14 May 2025 10:24:54 +0200
Message-ID: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series aims to upstream some parts of the DTS that are currently found
in the kernel used in the field. This is the first in a series of
activities intended to eventually lead to the use of an official kernel.


Karthikdatt Anantharamrao (1):
  arm64: dts: imx8mn-bsh-smm-s2-common: Enable GPU for smms2 and
    smms2pro

Michael Trimarchi (3):
  arm64: dts: imx8mn-bsh-smm-s2-common: Define suspend voltage threshold
  arm64: dts: imx8mn-bsh-smm-s2-common: Leave regulator under hw state
    machine
  arm64: dts: imx8mn-bsh-smm-s2-common: Keep wifi enable during suspend

Simon Holesch (1):
  arm64: dts: imx8mn-bsh-smm-s2-common: Pull Up Console UART pins

Wolfgang Birkner (4):
  arm64: dts: imx8mn-bsh-smm-s2-common: Set minimum value for
    VDD_DRAM_VPU_GPU
  arm64: dts: imx8mn-bsh-smm-s2-common: Set minimum value for VDD_3V3
  arm64: dts: imx8mn-bsh-smm-s2-common: Increase drive strength of pmic
    irq
  arm64: dts: imx8mn-bsh-smm-s2-common: Disable PMIC SNVS reset target
    state

 .../freescale/imx8mn-bsh-smm-s2-common.dtsi   | 31 +++++++++++++++----
 1 file changed, 25 insertions(+), 6 deletions(-)

-- 
2.43.0


