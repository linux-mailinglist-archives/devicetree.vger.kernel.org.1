Return-Path: <devicetree+bounces-260519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGD4MOM9emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 152DEA6244
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56435317D8E7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A843930DEC1;
	Wed, 28 Jan 2026 16:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kUmtfpGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8AB30BBBC
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616656; cv=none; b=NNEsOULRehxp9SKItbbTQa5RgihtdpAR3zoz9aiWvy2YGH2YSWfjR5v8LSG/63f3bIyUguv1eidpGnJjl/ScTy/rI18ci1zoxve8tbArqegsTkvlqi+X0pyBgsbkXlrYeL2JaDp3jUdX5TY6VFIZwf02u0kkeKDO4Izn8XbFRoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616656; c=relaxed/simple;
	bh=N4JpNWAJ8z+Zh2xDD+z/ESazuy8Zh1rNG2zbFITp4kY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=D7hbXFas2yth/V1dMnPQKVvBra7iMnKRTLjTTDNM/ID/tc+BTUs02LsDz/sBxhi+tCS1yej5r421jHYpL7B2eruUVm2q2n7p9c/xEHNuoYv8xAqiPyBJqwVOMl+pbXiqiHao45II6o6PxCTSmqqJDwgBH1a6s3/mdOP2r57UFdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kUmtfpGk; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b883787268fso1101072366b.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769616653; x=1770221453; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZNtEsD/7Ir/dUUyhxp9vhIGp+bMH6wePQ4vuvyFT4dU=;
        b=kUmtfpGk+y1Po5L9WbRjGjjeOS3zyaluAuOecDHbQL39C/3NQ90m10XsHMeJWgMtic
         WXjXVMbyMmzYXzv6wlCiDIjbxGFC5BtFthpf/fw9Nqv0i+em9/PGKAq1M9kXCWEw2aQ4
         RW/PtGBL5NweHquSZcl+5N8hWTKlBtclwkuH7NyDAOpNASYqpE1dcRCZmZ6BmlRoMcNK
         KAu/GhbUd4pJx43Qu2w6ggvqZHdGMMH7FfeoTxKWBZp9UJX3PtcFBxuOdL/VjgHPQeGX
         /XM7N2fzXkVv1FYXbiQVij51fsBRSc8zrXwBYBcfvdsdWguY+5leziE4CDiB6YM5KCUK
         Opsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616653; x=1770221453;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNtEsD/7Ir/dUUyhxp9vhIGp+bMH6wePQ4vuvyFT4dU=;
        b=TGEZhm5cAn83NLgWcxfzpj0dRdC+CiHYVk3S0Xb4VLepaH6I9MgzcGou0Uql3iStG3
         5Lbm2Xto8rCP9ZxYUHFCnzy9it4FPyVTFQDCqS/gpYuzl6/6HrrQEyGOTUqk1jT7/hhX
         qGby56M2aSqqkcNlJsyr3klzdRavghesfMo6b6NZL9Jgy5o08Ac/HN3LdbntrJ+4l5b5
         k8+H8TxyeHuc4x1AR4RO86rB4xBW3M2aD7oTdV2a2kiLo/vpL8QSoNcAM67qjZuihzd2
         8f4C0eg53kmm2cA5W9uZ/lf9LOo3I8eYyfU1+U3byeisA3vyYB4kZ5CuJZh4eqT5ClCw
         nIzw==
X-Forwarded-Encrypted: i=1; AJvYcCVZ5p+h5kX1o+huVQVlwMR14ID8t7ieivXbFJtiTcx1LOUrDn3d6otb6mlRxGMYJlxpkGiRvrPPHCL2@vger.kernel.org
X-Gm-Message-State: AOJu0YzWRVr3UyslSvZxVQXiPkZI8Rg0C1jD5Yc1i689ZbkXNtnFiCAR
	PXjh9k30ncxAewUOsVKH2xpZ+Q4H3nI9KmoWgaWWcl6JfSvd/uAN3ZIlf7x8xHcREsY1nLYG7fY
	bHkbnfLo=
X-Gm-Gg: AZuq6aKZTOr7PnPiSqUszesiYVcY1U3PKKQaGlleFaM2YVrWWSN2A54M/QnctAS5MgB
	GtmKCK0aHfA2VHcYw7gyNKAZMUpVWvUuljOQey6YWNmZWVIFXg6c4iXDUqty+wOH9SJspRgxE8w
	vZCp+gv7yzum47Rrnk3S7zr1APASMkqhZpWRVbL/D0ocLeXPhCY4uFZqC87wec7n/Lz7bSL5UOJ
	xZLwlQDms69LMmCNKAK+DMsM8iFTvNlFP3I99sypJGZl3s+xWw0hnMuFeYsqlVfQK+oVnagUkhf
	MHJXCFP8NufJ0Yc32mOcO6IsOKq8uqlxhKuO78INtqnrU1QYO2g95CBFj4y2d9Jrjh0HpfCwVRz
	W4vouX/jJn+oect6Head+Tcl5Tuo4IHHjCsclL+nMWTuxSbqHmk5gjEYDbZOyr5nlREV5zd5RDT
	PFymwLAfa/zyl0h0KhAcbXFLfAJ6xStpA+EZF6QIKee60jmxw99KzhwrO+OmVyb8U8scunmlEcj
	WV68g==
X-Received: by 2002:a17:907:da6:b0:b76:b632:1123 with SMTP id a640c23a62f3a-b8dab33b16dmr439788766b.42.1769616652975;
        Wed, 28 Jan 2026 08:10:52 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c021fsm148553366b.49.2026.01.28.08.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:10:52 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v4 00/10] pmdomain: samsung: add support for Google GS101
Date: Wed, 28 Jan 2026 16:10:49 +0000
Message-Id: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAo1emkC/2WNSwrCMBBAryJZG5l8bIwr7yEu8m0D0pREglJ6d
 9OCGHEz8IZ5b2aUXQouo/NuRsmVkEMcK/D9DplBjb3DwVZGFOiRABDcZ1LnZLHl1khhBagTR/V
 8Ss6H55a63ioPIT9iem3lQtbtJ9J9I4VgwB6MBgPEKaEv9zCqFA8x9WitFNqasjFpNZnnqrOaK
 s/kn8kak7Q/WTWFZiCkYLJz4sdcluUNl9IgBxUBAAA=
X-Change-ID: 20251001-gs101-pd-d4dc97d70a84
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260519-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 152DEA6244
X-Rspamd-Action: no action

Hi,

This series adds support for the power domains on Google GS101.

There are a few differences compared to SoCs already supported by this
driver:
* register access does not work via plain ioremap() / readl() /
  writel().
  Instead, the regmap created by the PMU driver must be used (which
  uses Arm SMCC calls under the hood).
* DTZPC: a call needs to be made before and after power domain off/on,
  to inform the EL3 firmware of the request.
* power domains can and are fed by a regulator rail and therefore
  regulator control needed be implemented.

Bullet points 2 and 3 are new compared to previous versions of this
series, and related changes are in patches 1, 2, 9, and 10. I can merge
patch 9 (SMC call) into the gs101 patch (patch 7) if preferred, but for
now I kept them independent to make it easier to see changes compared
to previous versions of this series, and because patch 8 actually
applies to not only gs101, but to many newer Exynos SoCs, and to make
the two patches themselves easier to review and reason about.

The DT update to add the new required properties on gs101 will be
posted separately.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v4:
- drop unneeded or already merged patches
- drop patch "pmdomain: samsung: convert to regmap_read_poll_timeout()"
  as Marek reported issues on some platforms
- rebase
- DTZPC related changes
- Link to v3: https://lore.kernel.org/r/20251016-gs101-pd-v3-0-7b30797396e7@linaro.org

Changes in v3:
- use additionalProperties, not unevaluatedProperties in patch 2
- fix path in $id in patch 2 (Rob)
- drop comment around 'select' in patch 2 (Rob)
- collect tags
- Link to v2: https://lore.kernel.org/r/20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org

Changes in v2:
- Krzysztof:
  - move google,gs101-pmu binding into separate file
  - mark devm_kstrdup_const() patch as fix
  - use bool for need_early_sync_state
  - merge patches 8 and 10 from v1 series into one patch
- collect tags
- Link to v1: https://lore.kernel.org/r/20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org

---
André Draszik (10):
      dt-bindings: soc: google: add google,gs101-dtzpc
      dt-bindings: power: samsung: add google,gs101-pd
      dt-bindings: soc: samsung: exynos-pmu: move gs101-pmu into separate binding
      dt-bindings: soc: google: gs101-pmu: allow power domains as children
      pmdomain: samsung: convert to using regmap
      pmdomain: samsung: don't hard-code offset for registers to 0 and 4
      pmdomain: samsung: add support for google,gs101-pd
      pmdomain: samsung: use dev_err() instead of pr_err()
      pmdomain: samsung: implement SMC to save / restore TZ config
      pmdomain: samsung: implement domain-supply regulator

 .../devicetree/bindings/power/pd-samsung.yaml      |  29 ++-
 .../bindings/soc/google/google,gs101-dtzpc.yaml    |  42 ++++
 .../bindings/soc/google/google,gs101-pmu.yaml      |  97 ++++++++
 .../bindings/soc/samsung/exynos-pmu.yaml           |  20 --
 MAINTAINERS                                        |   2 +
 drivers/pmdomain/samsung/exynos-pm-domains.c       | 254 ++++++++++++++++++---
 6 files changed, 395 insertions(+), 49 deletions(-)
---
base-commit: e3b32dcb9f23e3c3927ef3eec6a5842a988fb574
change-id: 20251001-gs101-pd-d4dc97d70a84

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


