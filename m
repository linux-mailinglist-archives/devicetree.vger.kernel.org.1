Return-Path: <devicetree+bounces-227766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF71BE4633
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E3BF9359E06
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70D8E34F492;
	Thu, 16 Oct 2025 15:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qecl9sbA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D812034F461
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630327; cv=none; b=UyZwLYwMZIrxB1CroB4Yz+PVxHwMsHX+a9Q8U+sq3kMRijxLOvoqNND3FbTT6X6B3UJTJxkTHft8gZN1OGIohmzZbTe4H/Zmp7CJLpMCGSr/bNoSFRVbn/+heBo3tVq9LXD2ka5nO4qb+JoEvvgl4KNHjdRBqBbEfU/O12Y9zEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630327; c=relaxed/simple;
	bh=4jQ+EIyiQVXkIlbc6gRNRqq+XDNXLeO4UR1HNWzVZhQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XujsPtvsG/VqqQ0hzcny+y4vJkOGYavqmD0nLIY6xqZ6/UgadXjYZMu6BNlPMA5CS6/ioywG0ZiX6gepLKhvExIikBiFEypL9n2tKX4TrAluxGu6y3Y+sYjLWDfsF2dJY47RlGo8IOoDCEJ9kc1Gl3OW5rtXHfA11Kt97hUtlHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qecl9sbA; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3dbf11fa9eso179672666b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760630323; x=1761235123; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gZIFtHvs7F/q+BdnxOwwAZugPQcTpk+W4nyCeOYTpMg=;
        b=Qecl9sbAF7PEhnB4tbgezfl0cYLkccGIhHhzUERCkFfP0gSCIhadvI10qcpJUTYTS0
         d4XjWv5ZgzxObokPn0mELPzzknYsiCvUGti5AWq8wwSMXJAkF2IiC848q/8yVRNsiFip
         3QiRpPAGmfE7DO/E1+MNDFEoAQ1tjPIucrL3NHsOFppHDdkDuhcX45x88JUIFbNwD6/Y
         CT1IpZZ5FD7z30eewDE+zBg7ZmVRK2ctaN6VOTjYQmShJcai8+yJp1Zs4242/NwYXc5E
         654UK6FNL2dRiPUR9IDUEuu/FyV0cOl7FRjRcW05KoN78MmZK6QrsX55IQu/YlCbo9F5
         nEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760630323; x=1761235123;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gZIFtHvs7F/q+BdnxOwwAZugPQcTpk+W4nyCeOYTpMg=;
        b=vz/+dXuIlUQmU5Ul/iWDqUeXZjivcFoddeXMEmY/qRBT97dcqBtq2+NnFFlGgnUQza
         EcTF7NWvFQcFpqw5gX4vHmNlHZ914sfWyqE5xe6gDjdIEIml+pgTSbUhokBTsC5beDop
         mkru5P/RTHkXXgTql132/oBqIA4yQiz7pfJVXuiMA3nG1HbnOb71DEnNxg5peIiv2rq0
         fAKwNQ0pzZjpeFDm1fjNug5lgmLBFKI2Ew08im7TqxqZ3VZkCQOB7fvY81nGhAHsDp68
         miLXsSNF6UMnoM4z3Ul/PVSlIvY44e3dqOae9RvsK/Kb0fOC1TWu3997D7YEJcA9NEX3
         EYCA==
X-Forwarded-Encrypted: i=1; AJvYcCUE8Rj6AhuKknWvyCGPf2WQ396+NYPGTaCx04P1fAl8SXuCtPWaf5VCVE4zjKhZWOX9YthVQS7LxH/h@vger.kernel.org
X-Gm-Message-State: AOJu0YwRgnfdGeSKIE16AyJvn8UXecMhVL64yzBtgfVQduKGf8hQUbt+
	plirQ8M4em39g2WUrYLaK4/jyQ866gXnFWlzmnCS9zuNVtfEsvgoGonIe/K/s3oIhTE=
X-Gm-Gg: ASbGncsVxMyj5Tp7ndBZsSt6PsN+WVKxpib5II2/pgT1fBMLw+Csvi5ldUCeDlh8sO3
	/Eo0iAo+MTghHB7ELt0jjudTToaw9QBoZxMOCruvepwehGJ1uazNtwnVe+0GsRdH/bnf6CNHcwj
	h/KmBBXaqvq2vT1ZV7ss4vC+jZmpPiZvL19E4wnb7B3mYieiNtI785O/g1ERqX3CSl2HdHBTkQm
	VdxnshnBzcHCv3dtWlNxzzc/ixoRd5yNU9SdEz+ZVvjABdcNaKkMDUL3ELMP+4aPNDw7ZiK1una
	XE08h1a/4d8ktPr3oBVXLvS1L+jjvLbZMOSvjLl+5s+w1t5fOo7jhXLzNXX7AXh9Z7ZUlwTwVjC
	0pnLYikFhU8Mt6PH7fv3V6DZf/AqCM+aLKdxPYMKtK0j7+Y8rKZ6NxYsfM+dCj/S5MzAECLMMl8
	pvw/4KagHXhGx2BNldwfSNKnkwJ6laVHVirF26KnEGY8/BpoWf9R2mOoT6HddZQchI9w2c1oo=
X-Google-Smtp-Source: AGHT+IG4HRaUmyVAr/Y8mfqN8pN0d3XueS9onISZHfbE+N4+RTdShVGlTthizBkJnoAWjpKCiPeqBQ==
X-Received: by 2002:a17:906:f589:b0:b04:61aa:6adc with SMTP id a640c23a62f3a-b647195b6c9mr48758066b.7.1760630323195;
        Thu, 16 Oct 2025 08:58:43 -0700 (PDT)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb4811sm549021666b.56.2025.10.16.08.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:58:42 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 00/10] pmdomain: samsung: add supoort for Google GS101
Date: Thu, 16 Oct 2025 16:58:33 +0100
Message-Id: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACkW8WgC/1WMzQrCMBAGX6Xs2cgmja315HuIhzR/XZCmJBKU0
 nc3LYj1sjDLNzNDspFsgks1Q7SZEoWxQH2oQA9q9JaRKQwCxYkjcuYTL3cyzEiju9a0qM4Syny
 K1tFrS93uhQdKzxDfWznz9fuNNL9I5gyZQ92jRm5V218fNKoYjiF6WCtZ7M1uZ4pi1k6qxvRCu
 br7M5dl+QCIJ7682wAAAA==
X-Change-ID: 20251001-gs101-pd-d4dc97d70a84
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Hi,

This series adds support for the power domains on Google GS101. It's
fairly similar to SoCs already supported by this driver, except that
register acces does not work via plain ioremap() / readl() / writel().
Instead, the regmap created by the PMU driver must be used (which uses
Arm SMCC calls under the hood).

The DT update to add the new required properties on gs101 will be
posted separately.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
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
      dt-bindings: power: samsung: add google,gs101-pd
      dt-bindings: soc: samsung: exynos-pmu: move gs101-pmu into separate binding
      dt-bindings: soc: samsung: gs101-pmu: allow power domains as children
      pmdomain: samsung: plug potential memleak during probe
      pmdomain: samsung: convert to using regmap
      pmdomain: samsung: convert to regmap_read_poll_timeout()
      pmdomain: samsung: don't hardcode offset for registers to 0 and 4
      pmdomain: samsung: selectively handle enforced sync_state
      pmdomain: samsung: add support for google,gs101-pd
      pmdomain: samsung: use dev_err() instead of pr_err()

 .../devicetree/bindings/power/pd-samsung.yaml      |   1 +
 .../bindings/soc/google/google,gs101-pmu.yaml      | 106 +++++++++++++++++
 .../bindings/soc/samsung/exynos-pmu.yaml           |  20 ----
 MAINTAINERS                                        |   1 +
 drivers/pmdomain/samsung/exynos-pm-domains.c       | 126 +++++++++++++++------
 5 files changed, 200 insertions(+), 54 deletions(-)
---
base-commit: 58e817956925fdc12c61f1cb86915b82ae1603c1
change-id: 20251001-gs101-pd-d4dc97d70a84

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


