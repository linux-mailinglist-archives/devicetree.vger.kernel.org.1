Return-Path: <devicetree+bounces-222703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 486C0BAC1C0
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:47:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBEBC167226
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B96B2F4A1F;
	Tue, 30 Sep 2025 08:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lxf4ejqO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF8C2F4A06
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222013; cv=none; b=mAflthgtRE2c6HtDQgC6OAoEZPWH4UVO8PQ1yZpAwUloofLA74mNyw3GPG7MnQGtebbE2SvSX1zLtfghqHLCNGDIr7Pf7C2NokdUoBEnJjEE2VFLbcm+/RVb3bHctz6AJdELtjYiVLPf0wLbZtPyUuDFGOiO73MWST8LdV2XrKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222013; c=relaxed/simple;
	bh=Kx9E7uci+b63lQZhRViq5cTuJs8SyIKzf0cDEpj51Ok=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Z6Es4UjVdj44YyColxLJCpCIc/wR5NXE0hEKSEAkelV5ZkmEL3HWwTGgC1TNqx9v3TNjoiCa9NcSJD4gU0+gS8trHvIgiw8vTPITQP1+R8QGDtxurj/2mRT1Wr9s52g/nrS+BuEV7YIJaaL/78DGJAEOYVI6zNQ/wy6LlxPForY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lxf4ejqO; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so3752566f8f.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222010; x=1759826810; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fVsl8vGcfYK8AgATkYy0L7h3lyqmmijzRq6HHy2CfXM=;
        b=lxf4ejqO4xDnCAIVjwc9mV9zRWqn8PBjDQLtNn3mH0vTNnzGmGsWmJdLqSWJ83f4PQ
         sqlWfpCvk8ZbvzyUYg18wRgnqTw/cpli3/6ALit1V1b6RGPRmcD8bCf7/5I5GOAImLA2
         v48t9OGsaZKfOq3W9c2ijCu04Xbpp+Dsj+I08GI+6o+srBRgTd6bjGWUsAfGQuL7WuxW
         m9IW0gv2v/Sl0NmnaUZ2MdYY/iZOaeWitohUh4gqC1+C6HcxemWommmusZF12kpce3aS
         X80YlovevomUWIO+6ITjn2vPxIsezQ8VX0wNNGO5cOYjdKneTm6S4PVtB50VpGeWkPc/
         oWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222010; x=1759826810;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fVsl8vGcfYK8AgATkYy0L7h3lyqmmijzRq6HHy2CfXM=;
        b=W2OI9fsyURumZdWBXaGeXLc979VN7MyIoIEzjwljgPiSCcI7ZxEyAIlPqVX5xju5bS
         gTp6G1zY1D+STdaj2YcgHhRrfHlnfVqCc/mFVwJNxS1NIIsKNOTqSlRukYMxrA+Vs4o7
         0cpiG6nK6gJ56mxgrgg0qZ1TLlflidBXnwPB9XZ5NIZnFL8AuSywZuc0/CF/l2Ral4b5
         pj0dXVRLIvwfb3nlvKCBrRKug3+Jvmsfavft6toPlkFLEIJgQckJkySPqZwXxHkXD5Bu
         oEYL5MdEWd+4yS2lplLVP6IPp5kmFF8uo8D1DWQlB91XKkH4VhPBXEftwNN4MhthB/Dh
         57+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXp7kHNOn24px8HV9xMUhlI1TySh2gZgBlWxvIBHf8vL9UAi9kZonAJM33KN/OOtnTPrP8q/AyYkYlf@vger.kernel.org
X-Gm-Message-State: AOJu0YxVBVnz+6RHUIh2Rt1u1YWBgvPt442kQTvlguzF2bqia1kjSUtA
	aJrONpeLGB1AfWwvmaFkV58GKRK7ynSuf9SvrOOp3W2J38B+W7li943+bCR+HA==
X-Gm-Gg: ASbGncskaiYe6Tw3iskMeSogVLJWn4t+3/PU5TIfG8KaIS2wgphpVsYCWNl1ur71/mD
	nu67IYkB3mjQG7j7WAnGpqS/HSk39X7X390KF1EJnKABWF1eIdHqPa/SwgrmTSbJ3JI1qR6HhpU
	Z/DsomkevKBQYorEPwPeN1e4vl2Tjo4mPV3/KDLqEun1CMnZ40OXI5Ecxs77m9JJorZpRkdYidd
	9MzTgTMuCr4I1WzNoDot/yY2OTPGMVMdMKhtr5qQ2wopEWXM+xUJmVHgNZPVVOCSdjwyDN4/oSu
	xzDdbZ4BfvBVrhNhhWSkowp+zfk+cpEE9dkAw2WloMzRg0pEkFJrbUc+tDwR9dMJksejsVF+toM
	/9OFmFhGI7QjMDSz941PjQWls1hLVXIAh1xF7GBUcm1DL1hQvT3vAZHksPEshVQEs+Echw9+Kn0
	rv9xr0CpSHwE+cc1G3i0zZGO+Ta4iIPoSONV0liLQCAF5PIXUBCwUoH5uAGoAvDQ==
X-Google-Smtp-Source: AGHT+IFNKqn3I7Ak0yCQK65+PzvDoYV8kvut0/aco1wX5M8V/khPAzAoVBU1h3CVCUW6iDQw7YuIxA==
X-Received: by 2002:a05:6000:178b:b0:3b7:9c79:32bb with SMTP id ffacd0b85a97d-40e4ff1991bmr19424072f8f.44.1759222009713;
        Tue, 30 Sep 2025 01:46:49 -0700 (PDT)
Received: from localhost (2a02-8440-7149-a758-f461-9bc4-1c75-ebc1.rev.sfr.net. [2a02:8440:7149:a758:f461:9bc4:1c75:ebc1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc5603356sm22122689f8f.30.2025.09.30.01.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 01:46:49 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Subject: [PATCH v8 0/7] Add DDR4 memory-controller bindings and factorise
 LPDDR and DDR bindings
Date: Tue, 30 Sep 2025 10:46:43 +0200
Message-Id: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPOY22gC/3WNQQ6CMBBFr0Jm7ZhSaFFX3sOwoMwAk0hLWkM0h
 Ltb2bt8L/nvb5A4Cie4FRtEXiVJ8BkupwL6qfMjo1Bm0EobddUaXY1EEZ14Ej8mbEpbcsWqG4y
 FvFoiD/I+io828yTpFeLnOFibn/3fWhtU6CoirdjU5Ox9nDt5nvswQ7vv+xcaQSS5rgAAAA==
X-Change-ID: 20250922-b4-ddr-bindings-7161e3e0af56
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

Introduce DDR4 bindings, which is the first DDR type to be added.
As the DDR and LPDDR use the same properties, factorise them in a
sdram-props bindings file and rename lpddr-channel into sdram-channel.

Changes in v8:
- Globally fix typo/grammar in SDRAM props bindings:
  - DDR4 bindings compatible description:
    - s/lpddrX,YY,ZZZZ/lpddrX-YY,ZZZZ/
    - s/in lower case/lowercase/
    - s/statis/static/
    - s/~/-/
  - Add an "s" where a plural form is used (e.g. registers) in the DDR4
    binding revision-id description
- Fix the number of chars that an SPD can contain in the part number
  field.
- Link to v7: https://lore.kernel.org/r/20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com

The v7 is a subset of the v6 and other prior versions, split to simplify
the review and merging process.

Changes in v7:
- None
- Link to v6: https://lore.kernel.org/all/20250909-b4-ddrperfm-upstream-v6-5-ce082cc801b5@gmail.com/

Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
Clément Le Goffic (7):
      dt-bindings: memory: factorise LPDDR props into SDRAM props
      dt-bindings: memory: introduce DDR4
      dt-bindings: memory: factorise LPDDR channel binding into SDRAM channel
      dt-binding: memory: add DDR4 channel compatible
      dt-bindings: memory: SDRAM channel: standardise node name
      arm64: dts: st: add LPDDR channel to stm32mp257f-dk board
      arm64: dts: st: add DDR channel to stm32mp257f-ev1 board

 .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++
 .../memory-controllers/ddr/jedec,lpddr-props.yaml  | 74 -----------------
 .../memory-controllers/ddr/jedec,lpddr2.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr3.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr4.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr5.yaml       |  2 +-
 ...lpddr-channel.yaml => jedec,sdram-channel.yaml} | 40 ++++++---
 .../memory-controllers/ddr/jedec,sdram-props.yaml  | 94 ++++++++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts          |  7 ++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts         |  7 ++
 10 files changed, 173 insertions(+), 91 deletions(-)
---
base-commit: 30d4efb2f5a515a60fe6b0ca85362cbebea21e2f
change-id: 20250922-b4-ddr-bindings-7161e3e0af56

Best regards,
--  
Clément Le Goffic <legoffic.clement@gmail.com>


