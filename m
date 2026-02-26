Return-Path: <devicetree+bounces-268927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EZ6EN5uoGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:03:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6241A97CC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6EC63090A0C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 625CA3876B3;
	Thu, 26 Feb 2026 15:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jXcYJ7vb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D791389441
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120833; cv=none; b=A14tpegz7aJe/jFFKRThePkS3Bq8d1l8Xb7jJ1YC/FY8+3040alzkfWlx4yw/RvoFov/vL0urmajcIEeo2LLdxpeXdH1VQtLXSKlkxGuqB8KU+W/dNlUS+LgW3FHcY0yg6D+VY9VTOM/1SWzOQSgB7IySXHSSRbiNvdSBYBGAZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120833; c=relaxed/simple;
	bh=cANxC1NKxrkDZsONAMeTnAuC0KO2uEW0PF+2bF6R2Oo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HhOGlg6CtFixswJrGzSkWaQ2iG0s4QF99nCOEIAJRvrFBHBGt+AgFDApqwZ7qJ1sXEYxtZw2G4t+mOpqCAQhpbhqL3gMWBcNIflxzCL4MePHD1g0nyIecivohLITteROn3UnR+8tBPwl14S9b12AjOYvd9p9zAvfWcTGM91RIFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jXcYJ7vb; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so12027125e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120829; x=1772725629; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=voOK6OZwZEX8WOdHmmT2ZmjcPsrF9B+18Mhvcppjino=;
        b=jXcYJ7vbExaarzg/6+S5v98Vs6DJ4XKR6uL7dL7+5M/sjtjlaFZ9XpTrEiFpeB1BG8
         BZjoSVZItqQtcJtmtBfslDlUj45RMxoH/Vpom2LGjWlrYdEwYKr1/85v9w28GK+B++rH
         oIpxEyS4WfaTwuHfVSTIY03G29Ou/9a3c3TM4NkfNOhd0jTGw/Lof+Gb/2o7Wb1cjEKM
         8zXJd7xo47IVrVQsSLCBQ3vyVOhRAngjaep6mwVfGNeZnMr3zP7e25oVSfKuP5ptcHgA
         QTr3AaXQV+hQXj6Muo9Ef3CXk+fPsQfelNojNvZ8Y5tzz1dhg04ipTM/VdtG3MuLgrvU
         318g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120829; x=1772725629;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=voOK6OZwZEX8WOdHmmT2ZmjcPsrF9B+18Mhvcppjino=;
        b=ql7YE+IcTl1ZRID20SMZbkG0W7pgwtz9LYUmOcAMPMFUPMxL/5a5F6Ku/sgHAUDghK
         Thz+xOPbEgo23+u/wFwU/MBtspiUdg/lnoPakeR8OwYosF+pxA/bSEkCrTQfpXyzvNO8
         YOXxqmHSgD1JMkQHhQeX18pbY9ayNrCQucZMUF7eMrOkexfd3huaVW4TUYl8HfO/+W+E
         7NaSZIWBPOQfnOP518aoZ92vd/oADDATEIrGHHdbNd3UKZQerPGfT71wsH1FO8DlVnzZ
         inry9leAa5hOGq6drvavicPenAhBcGTA5m/mYZT6UVF34J1OrCqS+2srtY528RLa9Pms
         LFFA==
X-Forwarded-Encrypted: i=1; AJvYcCX7H8zVuHyw01qLOnZot5sOp6A1S+NkYqYKfeLpwzf0t3wgnsTZb46f3b+9ft98vHFWtuamFaiJt2if@vger.kernel.org
X-Gm-Message-State: AOJu0YxEd5k61Uk7BVTEtE7SaTjYYzeL1OsBbciDY51SPKYk/wSuxKJY
	W+jKN8iI4OOKomMLi38mKAiD03C0pEoUWOIX4y/c8h9XEP2bMbnOxP5znvdlb1v+u4Y=
X-Gm-Gg: ATEYQzzd+Yn9v9Hno7UzCu5cpL/VSxiC+3bpMrhQoaIotoDPbGBwVso7fHMz5X1dxdZ
	xI0PXqqo4OVGYVygw2BYrCi9ulmoKydQfem4vEHMEgmsTqnlDA72TuQbO6HCDRy4BE2DMAU7mYB
	hdSYu9n7qYpMCP/wVPj8e3b6UQ0K/y29PmaRjJ6/X5cv+aESnyfmV3A6gfz06wlSBhcKjP8JtmV
	56Bs38+8VBYZmvyER3UOTqqpjH7dORze5XAhDpYz/mKzv85pOBiEJRB+UW7lEx78xt+t5P7t4Cg
	UIYZu2naq81yjkb7qX1x8HS8cZV0Uaa616mPaS33cgPLsFZmZp3eL3DMktNLTsIogZctDRx1+h5
	wdJfGnPjkArzPoyhsNU7ZMv32kngI/6gIEZwBPJhfw/Gy+oDiXy500L5kmhLGZZ6yYfXY5BZUqM
	NI8am0v9QuYO1r1qbP6pXTgvHb5xICDLXIHW5jdc7/W9xe/4lExoOdb7EBInTZ7TLC2LY8hXG8w
	7nPBmEWo6vjaik=
X-Received: by 2002:a05:600c:8211:b0:477:76bf:e1fb with SMTP id 5b1f17b1804b1-483c3de3dd6mr48592575e9.16.1772120829407;
        Thu, 26 Feb 2026 07:47:09 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:08 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [PATCH RFC 0/8] Exynos850 CPU hotplug support and pmu_intr_gen
 cleanup
Date: Thu, 26 Feb 2026 15:47:06 +0000
Message-Id: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPpqoGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyMz3dSKyrz8YgtTA93kgtKM/JKCnNJ0XTPLNENLc7PU1LRECyWg1oK
 i1LTMCrCx0UpBbs5KsbW1AF9OfzFrAAAA
X-Change-ID: 20260226-exynos850-cpuhotplug-69f1976eefa8
To: Sam Protsenko <semen.protsenko@linaro.org>, 
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268927-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: ED6241A97CC
X-Rspamd-Action: no action

This is RFC series in order to understand if it is the correct
direction in order of moving forward enabling support for CPU
hotplug on Exynos850-based platforms.
First steps are generalisations of similar routines and device
tree things for gs101 to make them more "Exynos" friendly and
last commits add actual support.

Tested on Exynos850 WinLink E850-96 board.

Some commits need to be squashed together probably but at this point
they allow to better understand the thinking process.
I was thinking to merge deprecation of google,pmu-intr-gen-syscon
into the previous commit and renaming of GS101_INTR_* registers
should not be a separate patch.

The {offline,online} calls should probably be moved into a 
SoC's DT match data since they look to be SoC-specific at this
point if we don't bump into any surprises here.
Please also advice if, for instance, gs101 calls should be moved
into gs101-pmu.c or exynos850 calls should go into separate file.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
Alexey Klimov (8):
      dt-bindings: soc: move and rename google,gs101-pmu-intr-gen schema under soc/samsung/
      dt-bindings: soc: samsung: exynos850-pmu-intr-gen: add Exynos850 compatible
      dt-bindings: soc: samsung: exynos-pmu: add samsung,pmu-intr-gen phandle
      dt-bindings: soc: samsung: exynos-pmu: deprecate google,pmu-intr-gen-syscon
      soc: samsung: exynos-pmu: rename GS101_INTR_* regs to EXYNOS_INTR_*
      soc: samsung: exynos-pmu: generalise GS101 PMU intr gen for Exynos SoCs
      soc: samsung: exynos-pmu: add Exynos850 CPU hotplug support
      arm64: dts: exynos850: add PMU interrupt generation node

 .../bindings/soc/samsung/exynos-pmu.yaml           |  24 ++++
 .../samsung,exynos850-pmu-intr-gen.yaml}           |   8 +-
 arch/arm64/boot/dts/exynos/exynos850.dtsi          |   6 +
 drivers/soc/samsung/exynos-pmu.c                   | 137 +++++++++++++++++----
 include/linux/soc/samsung/exynos-regs-pmu.h        |  15 ++-
 5 files changed, 155 insertions(+), 35 deletions(-)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260226-exynos850-cpuhotplug-69f1976eefa8

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


