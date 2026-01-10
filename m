Return-Path: <devicetree+bounces-253514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 767F0D0DD15
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 21:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB7783010CD8
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 20:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75DFB29E109;
	Sat, 10 Jan 2026 20:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="OuOvzPmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B962BDC10
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 20:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768075488; cv=none; b=fFsjRXPSSdJy/w0RMpiGDBQ4UK3/ehA107vIOHb7G4SmkTM9CBKcZhuXGSJ+tx1VT5wBltyUcPVuORnlLcPlTBUSLlQ/x8vmiFkskuSGX75HD7tapdvfR71WGGmxe6CgqLbme6kpaTtLzICWhhV312hUbV7Ki53apuFygGNw5Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768075488; c=relaxed/simple;
	bh=1fOQsbmvRPFp7RB4YOL01+JCT0UDU2vYmzQ56+LzqTY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oteK/6NH3Jm/AZtZfrHUGpa6viUWA7JvE3WvuOgD15Urur8vKFoLZyQ4IzT7Q1dN+vsfUUIYdXec2BW4xo5C9bwSiG4sH7ODykBeT5QY08Lfn4F+y9x4vZsNbjfnqf8af1bw7mE506nFlRi157bGRWVUzApPYVL02Se89oNqfl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=OuOvzPmQ; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b870732cce2so17280766b.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 12:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768075484; x=1768680284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AXLLlxs4qW1+ZesmiLUyjALqG1DyG/LyhBi2azmiHI8=;
        b=OuOvzPmQUY7iVBM+IjDvh1fPukxDxDpDiEPDSdYL+iqw5wZyVf1UsQUjzYJoG5+8ke
         vb9ofhsjQzzQotEyef28ttIpPa1+hBhrk2/6rysvaC5KVFvUoYmYar4W+9KP8rKi5eKw
         c/kYHwpmJzbBWeYNOn9MJfZzH6GmLc7FESznm/Hz7s3IHsY9JLF+wTX2H68OwFmcHmrh
         N7eePJGm/BUFGk02tx+meAg0DULEKMgC0V/2MtOcJ1z2Gj7n/67dEj8ABhQc3zzBD0jV
         5kyih1GqBwKmENQ7zr5Qinoymg4Fv+jFSNx+HM+G/C63F+l9Vj/Yb6RMjWgYfhuGXRuX
         SmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768075484; x=1768680284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AXLLlxs4qW1+ZesmiLUyjALqG1DyG/LyhBi2azmiHI8=;
        b=F2wCvskiBnUOpYLLNUv6SN75ljF+RQ5RFN8iX8NFpMDQld9oGq8XgYjsS2IZl1A2i/
         lIZ2SVC23PmtlkCY69TX/P2xyD1eVDc22reCC/EBbfVYclhJZv+n5GHBuoSaoxGwTLMU
         ZNPy9YbPbd5TGeNC09umNbFkXVamFT9MCg1lpqKdqtb/JZRKNFYHoG30YoebA9zs5Kjv
         xcQvg2Q4jMhCFVLmw8S0FddjzYaw7xsHUZynaCt6Ua2lVViIdqvkMN371AlVZgp7B25k
         j50UAO5VwenhEsaioTW2JuhFw8PcFvh9R3sd9bhRySGnp/dOi2cVZKyonAW7DkdHoSDM
         sA0w==
X-Forwarded-Encrypted: i=1; AJvYcCX5J+LHuaGU20p4Dn0o4KjKU107stZ+lNNqEP4/lFJr4R3dT37gyLFcea72gouuNfQCqtFX6mkP5RSB@vger.kernel.org
X-Gm-Message-State: AOJu0YyRJPYG56iMNGUjMS6qaK84OTMJq+chXF7bDDZ0iuR6nrzseTQi
	dzJ3aOQmSptgVflnVhY8Nkzf4Z2z/EJJbbq/ARxeSkdox6Pcd+7ezESC
X-Gm-Gg: AY/fxX7jvB7esFvcNM2It5W9mQS/g9kAu9hXAfTSc/SIUa02zVai0Enu4jvESeL1uk5
	XfwXVuxskVCzjR8MwjG9Dbl05qnTE/XJrLtHh5nQsnC64Hz65JvtCxUEraQqL44oHPSWGIjx1ue
	cg+pFVwzLIeC8v9+mJ7aDFMuhXzs2NYS6k18KpGYgH+bSZWXqqJa4qmVgZ+qB80o8VRJy2PZI2B
	86r3gkzc25UlPmUl9Is1lT95eKnXPzwG4Q/Q3jH4VerzeiF8lT8ba5SWEEDH9HBKouHP+XoecUD
	jgqWpMbM3fKfT043MQgFR2aMnpnp0K1d5LtS5K0JFlTTcR8cYRj5PdE/dABbT62H0MxGrjTmTP8
	woVrHTWIFSoHwHOIGQp5etZSz0pefeRXTGx2LJSaB53KG1+kHpusfkOJYB/ViGAR5vlULTAerpG
	bHgW/bRGmm0pkEp6HsnlTrRSVV8wnNAwR3WATK2/EvnEmQq9dODYTOQsU3Jv4YPyzGXt1YxMOyo
	kTWcaWdaefnoYhuYdXN0txmegmi8Sf1iTd5q3uTnHU=
X-Google-Smtp-Source: AGHT+IFIiQoUtSeyn9mIBbOOpJhcZYBlr/ord7EW8wnXlRpW5UAw9sYZWgIe46tbc0kW+YaZ+jiBYA==
X-Received: by 2002:a17:906:fe0b:b0:b73:6d56:f3ff with SMTP id a640c23a62f3a-b84451d416cmr1398267566b.20.1768075483987;
        Sat, 10 Jan 2026 12:04:43 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-af95-6f00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:af95:6f00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b842a56c552sm1483591066b.68.2026.01.10.12.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 12:04:42 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	adrian.larumbe@collabora.com,
	steven.price@arm.com,
	boris.brezillon@collabora.com,
	robh@kernel.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 0/3] Add Mali-G31 GPU to Amlogic Meson-S4
Date: Sat, 10 Jan 2026 21:04:23 +0100
Message-ID: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series add support for the Mali-G31 GPU on Amlogic Meson-S4 SoCs.
Overall it's similar to Mali-G31 on G12A:
- both are using two reset lines
- both share the same OPP table
- both require the same power override quirk

The main difference is that Meson-S4 gained a second (bus) clock.

This series updates the bifrost dt-bindings for the GPU on the Meson-S4
SoC, wires up the quirk in the panfrost driver and shows how to wire up
the GPU in meson-s4.dtsi.

The .dtsi patch needs to go through the linux-amlogic tree. Would the
dt-bindings patch go along with it (to prevent binding validation
errors)? If so then only the panfrost patch would go through the
panfrost (drm/misc) tree.


Best regards,
Martin


Martin Blumenstingl (3):
  dt-bindings: gpu: mali-bifrost: Add compatible for Amlogic Meson S4
  drm/panfrost: Add Amlogic Meson S4 integration quirk
  arm64: dts: amlogic: S4: Add the Mali-G31 GPU

 .../bindings/gpu/arm,mali-bifrost.yaml        | 20 ++++++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi     | 49 +++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  2 +
 3 files changed, 71 insertions(+)

-- 
2.52.0


