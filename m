Return-Path: <devicetree+bounces-67714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D818C95DD
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 20:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F8FA1C20880
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 18:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03256D1C8;
	Sun, 19 May 2024 18:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+amyodh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DFF6D1B9
	for <devicetree@vger.kernel.org>; Sun, 19 May 2024 18:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716144158; cv=none; b=RP9TutoPg1dfnZtI8zsoqQa6uOGci84duRm1rgzv5GDd+zk17h97ZzN6hJLskZGkKIhRwjOXIE2MYHZzud4YfLgOGzihPoiKg4vc1b/eQdFOPvzRgMWIt0MPMMe9xIMNPG+RIMDRuVsa8wSA0SdJi35z1ZPY1V2cngEAj1PHiCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716144158; c=relaxed/simple;
	bh=74vF+IoSfFoLMUH7RudSQwr4gdZA+l9TqbQpYx1aLQY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XF8O4128j2EE4tUXyn3yF8rX2dt8t/KaxEfpMHuS1kbICtYqy3iIXTsJdzQnrge+oNtSVea7mUwSNN8nBWG34iIeRm2vrITCY8MVLWzkX+MmgDlyqfOxK497azpSGbKvyKbcpOV65XmuJkx8auCRHq5B7/7ZfkKKzqBCUfxmL50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+amyodh; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-56e37503115so4554659a12.1
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 11:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716144155; x=1716748955; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m+HwIKa8QAruaHjDaMWv2MKCcdgE6o0aq2ewD+8PT4s=;
        b=B+amyodh1O0M8RSdHqDyY62zd8XkSs+NAbPKqwbmiOL/0zfop95JpF5sAh6guxmx+f
         b4nFfXLsGi32lrfosXyG8vpzOTChsh5gbE5zr9LT13wGRusWbxNLVvRTQA1cfFSSyvLl
         ZkuC9jZo/I9K9O+eS1UWznkOftKOEvY9urHBRktFaZhdVVEDcUC9pAvTWNzWn/UaYxTn
         sPJxlyPMOA38++p/P/Aak9P9XUKQhGXUZnGqEsbhBXktXlYzgmaNYiSZ7KK06G4JdaUZ
         7uOqXhC3aTH2Udm3Fdb9i5Ubx/HPfm54Y8+XO1CnH1AKOlEF3LLxLeqUP1d7F6fjsbHX
         lyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716144155; x=1716748955;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m+HwIKa8QAruaHjDaMWv2MKCcdgE6o0aq2ewD+8PT4s=;
        b=Uh1K1tkcSJpiFjFLSPc3e0KpiPivhoaw4eKk83K4py6PvdyjkKg7W5xruVz56olm43
         X1OmVNMuo3/1lWOQCQZSgdHNVre5DoXRlIkFfNfjgvOEqNKLHx80y8CCxESU3pxZg2Lf
         xP6cOdzeMZNkFX7NaLHkKbFT80o3II/Ufp4XH5T3ehuSY61/gcKJyPvlAzsHVz0QCQ3Y
         AVBdkRsj2V8jrj/DApxiHzXMNWnbWia6zFicWkmKsc20a/MhZp2G/9qvABNxPwxsXD3J
         TAIS+6Zs5V4NWIhe1X0H+kPMnuanrintAxKY2f7Q3mDUqfmYbSi44c7jDfKLZG0yaObV
         fx4w==
X-Forwarded-Encrypted: i=1; AJvYcCX8RLJZT/qfOwsr1f5pucSCV7MGDxdd4UjH0Eb++ng8unt3Fz31EW8lELhY8Wsrb08esCZT6xJHlHuINE9oiDvpQWMWEP/I9mmNbA==
X-Gm-Message-State: AOJu0YyILNtRrLZgXierZmok8QRUTD3IYbMdZw3RVykSbqXf8VRECweC
	TbGH4ZFtiNggIy+9XnFf9CxV8lfmIVVGgNmF5h8ur6T8nPwSI+P1eLsTJosO02M=
X-Google-Smtp-Source: AGHT+IGBFpqWhK0RMasalcUHn9CfY/XMaOeYt+zsp5+d2c3FSkiM5Pd4rESufwvDhyyTXCO7bUSzGg==
X-Received: by 2002:a50:8a8d:0:b0:574:ecec:187c with SMTP id 4fb4d7f45d1cf-574ecec19b2mr8805646a12.36.1716144154985;
        Sun, 19 May 2024 11:42:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-575313d97desm1789397a12.41.2024.05.19.11.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 11:42:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/8] dt-bindings: mfd: syscon: Document more compatibles
 and require simpe-mfd description
Date: Sun, 19 May 2024 20:42:15 +0200
Message-Id: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAdISmYC/x3MwQ5EQAwA0F+RnjVhZhF+RRyWFk0omYqsiH/fi
 eO7vBuMg7BBk9wQ+BSTTSPyNIFh/urEKBQNLnOfrMgrpAN7URKdDNeR0C4bNkXbFznQV+x8XZe
 F8wSx2AOP8nv7tnueP2KjNbluAAAA
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3403;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=74vF+IoSfFoLMUH7RudSQwr4gdZA+l9TqbQpYx1aLQY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSkgNECgP7nhUrDjjCAV6sziyTN/z6FdpJw6+n
 O76OPg36LaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkpIDQAKCRDBN2bmhouD
 1wFnD/910Xe1MkF3fmCQCzKEKdW2xCOK0f8FSyuRvHro+0QKHjH5momKKqzOXtAPRZm7nzXmgQq
 ZSQR5V8q3OALE6XefzeXf8jyfJrDGyl2f9ebjTlIIRlRIld2cVpKK9DCKlScVNriDLnT5Udfngm
 QEC39hCSZu9JbNAFCAmzpP2AF8mP1UOz1UrRJ6fBhYEB4aihn8T23agzrIq+IVgA3NqEGEIk9sc
 RlJG8G5a9nA68PTX/Y75Z3eUtkDD84BlC8JPJN751MHUB7XtjSMjouLU/k923WS8B5ebTeCZKkw
 XpA0tvfxHb+SgXtN8rDXelwPXtLoweDbrdmZVOKFyF/6M58KCGHj692p2Scb9yDCUp8834nuQ/2
 N8HP0VDobIbw+lHKzLcGtFngxkmULJ2Oy84z+fV+hjzgXSZeJEW0VAaFz43YZt6thBUdcQPZrjr
 DEw09N21D/07IUSBUmgolRfzqVPdddyxMxreyQ2wMewXE7OtjIw1S9LBQCU3dNWYn5uZi6AWHOm
 KlB21MfTO8Invpc1xGovfDtW0VNt3zyXWORgKqJSf5fd7E8GJE0m9NOEQbf9ldNwidy1b06AvFX
 3/HsjPHeEGndsEGtwdhneLPP4GAKxA/erNnfhHEdfy8/Zqh/GgwnJL5G0RZtpt2K+HWFCngv2U4
 OKMbB87TmI3MJqA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hi,

Dependency
==========
Depends on https://lore.kernel.org/r/20240510123018.3902184-1-robh@kernel.org
because it touches the same lines.

Merging
=======
1. Bindings: preferrably everything via MFD tree (file/context dependencies).
2. DTS: via subarch maintainers (no dependencies).

Description/problem
===================
Simple syscon nodes can be documented in common syscon.yaml, however
devices with simple-mfd compatible, thus some children, should have
their own schema listing these children.  Such listing makes the binding
specific, allows better validation (so the incorrect child would not
appear in the simple-mfd node) and actually enforces repeated rule for
simple-mfd devices:

  "simple-mfd" is only for simple devices, where the children do not
  depend on the parent.

Currently the syscon+simple-mfd binding is quite broad and allows
any child or property, thus above rule cannot be enforced.

Solution
========
1. Split the syscon.yaml binding into common syscon properties, used
   potentially by many bindings, and only simple syscon devices (NO
   simple-mfd!).
2. Move some known simple-mfd bindings from syscon.yaml to dedicated
   files.

This patchset might introduce new dtbs_check warnings for devices having
simple-mfd and being part of syscon.yaml previously. I fixed some of
them, but probably not all.

Best regards,
Krzysztof

To: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
To: Steen Hegelund <Steen.Hegelund@microchip.com>
To: Daniel Machon <daniel.machon@microchip.com>
To: UNGLinuxDriver@microchip.com
To: Nishanth Menon <nm@ti.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org

---
Krzysztof Kozlowski (8):
      dt-bindings: mfd: syscon: Drop hwlocks
      dt-bindings: soc: sprd: sc9863a-glbregs: Document SC9863A syscon
      dt-bindings: soc: intel: lgm-syscon: Move to dedicated schema
      dt-bindings: soc: microchip: sparx5-cpu-syscon: Move to dedicated schema
      dt-bindings: soc: ti: am654-serdes-ctrl: Move to dedicated schema
      dt-bindings: mfd: syscon: Split and enforce documenting MFD children
      dt-bindings: mfd: syscon: Add APM poweroff mailbox
      arm64: dts: apm: Add dedicated syscon poweroff compatibles

 .../devicetree/bindings/mfd/syscon-common.yaml     |  72 +++++++
 Documentation/devicetree/bindings/mfd/syscon.yaml  | 222 +++++++++------------
 .../bindings/soc/intel/intel,lgm-syscon.yaml       |  53 +++++
 .../soc/microchip/microchip,sparx5-cpu-syscon.yaml |  49 +++++
 .../bindings/soc/sprd/sprd,sc9863a-glbregs.yaml    |  55 +++++
 .../bindings/soc/ti/ti,am654-serdes-ctrl.yaml      |  42 ++++
 arch/arm64/boot/dts/apm/apm-merlin.dts             |   2 +-
 arch/arm64/boot/dts/apm/apm-mustang.dts            |   2 +-
 8 files changed, 365 insertions(+), 132 deletions(-)
---
base-commit: ca42fd4fd365cbaf798f17f655aee3d8192829f3
change-id: 20240517-dt-bindings-mfd-syscon-split-37e23996523d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


