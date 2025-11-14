Return-Path: <devicetree+bounces-238658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D496C5CFB9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:01:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B4CDC359830
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B593168EA;
	Fri, 14 Nov 2025 12:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wimegOr3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C74313295
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763121639; cv=none; b=pzsZMC4pW14afqF+QykJlNtuv09Yf0dimCRTbod9gEUi1sBMADE1remIVIT6jcGq4qnlrbWDyd546JPC7rhMAaiceD9QmFJwBr6VYXWS0VBzdqpLWrl2QDLH9YsR6ZJrGaNvlIHpo6NS5J7+Sxijq/hERL6mo9YH7mb5O6ssyPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763121639; c=relaxed/simple;
	bh=ZaIyBTnwagX+mg5Fm8v7qCDLfAe76rRU3qsBSCjnAxg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kGlhCCss7zyOSks6ql02JVVfc0Vxu44KrnIbraUb4j9272xw6ACZeMR7bd1zNaVTOyoZPDNAChSIt/1bWFkeBjnPOGpB8FSN7M5aBdJpTqq0kw2TSpKfDJUGcZU01XBsoVi61ePVLXok4iIOHDWjoZDAJBFCQ3heAvtDNqbZLUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wimegOr3; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-429c4c65485so1601093f8f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763121636; x=1763726436; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DPjgwRy+onJPS+IqkIcaIi3lzoC2BxsDCzhVvVFR+2A=;
        b=wimegOr3jyPK2z4+3HY6sYSZy9n4HsF4FvXPc3yHiHTfGRfFtZ9MT1VCAEDA6VHluQ
         VzjqxuWa7DKh3EklWUJmQuZkPnrdyuqj5Je3j3XdexLd+grlyA1hGmOh1889GFSaikjr
         sYjJnxwkb8Vhv4HQzfiRnFGhsdTX5scj5dsNf3YmGV72pBH4JHVEljsZzoAZ4ZwA82uI
         SpIkXtumV9s3UhQppz0wuyDe8zTlLMXPwimW6pqi9GHJSnTWpkYIqjXanMuakgHpV7X6
         sm8cdk6ZxbHydgfFVQEHCkGHINb7YMeM6QWGfk5MVeq4qZ+Azbp92xQgtg4gJTPmB1pE
         67jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763121636; x=1763726436;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DPjgwRy+onJPS+IqkIcaIi3lzoC2BxsDCzhVvVFR+2A=;
        b=EpN0I6Uz2o/a5YpLJoHDHWm2U+2fKJHtLMUkNN0hqG8aSIefI3CeogSh0IP2yVZQcS
         rj/R7HNaUxdrQ39bKFRTknwyJSqphrODyk3ipahVLXumlToMTa31XxRlY32eTRRuosb5
         TTytsWpwVWNDez6KpLECzEYHgSG3HsGcKuAoBOlHeax6yNhCDEemJjzn4j3QydfnoIsM
         UGd6mK2RmClGvH/bRX04DAJ3fsqvuKKFb/myivn99qQDS5QUrdrCoIdLwARyDOSw3mtx
         fYYrKTYN557LnrY1Tb4OeGPeYUui4XW71YtVjc1y48AONrCpLT71XpOFFJpODK43XjvX
         1+fw==
X-Forwarded-Encrypted: i=1; AJvYcCWr9s801MtfFlZoeskr62nxEE4EL+xNVK5lSnPOZBM0mUE4VFSlJQC+gw+kikw2hymVK0Z0EE+mPWxt@vger.kernel.org
X-Gm-Message-State: AOJu0YwUENJ0mlKUYJggEf2YumkAGrNJ3Ug9vK6RbX1pP1ytShJUOJed
	3m+fovESgxeP0zYZt22TQqdnozT4W5xC5L4X9zOC6EATJaloHw3XwkLLBju1NASZ4YE=
X-Gm-Gg: ASbGnctj5KmzNlYwhn4aoTf67+e+TIAVn9EMXhP7SV7SxnQ6YpQyACvMoiFVrnbTrOr
	24VkwiZ9I5vFFFhUvD2VS1oj8sfdzyNUXrTDM4RW7U/BMh952TKnWT9z0K1eBVoVILNULMcRDVZ
	HI0zhqDJdfVXDa96aJfcG9t/TBdYRIs3RRjM2mIgqRfiGpu38wM5DRfhLfdF7RNcmTPXgYnIzKJ
	2Wzr8iHIPXrU4ARLX8+T8wx1Gicq0CD4Gasj5xTi4fBSn7LePfEaXxysGhBCDUimFpG0MpKxWQe
	id1D9BSRJzpLW6q03c/3Hq0Me9+t2JLBFBlbktr7x2lYFvYGFjhMsq07xyJL4jsV1B7Yk6S/M7G
	+4JlE+g9YQM31RX8ADiYETp51ofXYlXsyZdDlvI+eCspjtcOY8XpUd56Pv10ot577+/cfSVmXq6
	OnxXbrBTIonQMQqI1nH2cbgdTRkBCdIQ==
X-Google-Smtp-Source: AGHT+IHX2390ivkvLs2uDJJ/4xAE1crzQXympMenKA3YTmHg28FuFzWNtXvAz1hi1yPzry+bv5rDqw==
X-Received: by 2002:a05:6000:1ace:b0:3ff:17ac:a34b with SMTP id ffacd0b85a97d-42b59383b2dmr2998163f8f.42.1763121635434;
        Fri, 14 Nov 2025 04:00:35 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.83])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae5bsm9487578f8f.8.2025.11.14.04.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:00:34 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 0/2] Remove syscon compatible from google,gs101-pmu node
Date: Fri, 14 Nov 2025 12:00:15 +0000
Message-Id: <20251114-remove-pmu-syscon-compat-v2-0-9496e8c496c7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM8ZF2kC/3WNQQ6CMBBFr0K6dgytqMGV9zAsSpnCJNIhU2wkh
 LtbSVy6fC/5768qohBGdStWJZgoEocM5lAoN9jQI1CXWZnSnLUuDQiOnBCm8QVxiY4DOB4nO0P
 Xtq6qja0QrcrzSdDTe08/mswDxZll2Z+S/tpf9PQ/mjSU4I1rr762HV78/UnBCh9ZetVs2/YBQ
 1IRWsEAAAA=
X-Change-ID: 20251102-remove-pmu-syscon-compat-dbbc492a4eea
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, willmcvicker@google.com, dan.carpenter@linaro.org, 
 arnd@arndb.de, robh@kernel.org, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2515;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=ZaIyBTnwagX+mg5Fm8v7qCDLfAe76rRU3qsBSCjnAxg=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFxndB6OL9nN24aNIm+o9cKItyW9b1+ko0K+Iq
 yFeHy0GxaOJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRcZ3QAKCRDO6LjWAjRy
 uhmSD/wPTru0lXRPUMWeofXVH/cZCkVFn8jaWh/YseuFJHZwg1JWLdjRynJqe+K3kJIBZ27WWcW
 TcW86aJ0UT1oNYmV9Wd9czCKPp8Lnon0hVOTXVgnUU7/cmg+pq9vLu2uAJvUb45sd60K/WffmGl
 DnNeWABUDi21VZLU8hXysxShZh6SIZ5E7euBcq/Xktl1ffo8vcjsFuyFCPvazTlDdiSrkf+HtZh
 cwDZLR5loTi5ATtShLh0YEPZHkFn4KIlMZQTA+Ts2zdjEiNZ7VogsSV/ns0ECAi19sHE8dz5s8t
 H+UgJAQcNCoCrl4x4ti9hfTsFWZu5c3gZ3cORU3orEdb0Qo+J8kDfPopMwsZbTzoSoZNoTqF86W
 kEqnSqFQgFn4j0rkgYKyR48D82z5T+8DClouk2bHmFJqyWcAh2e5AvG85z+FxoZLcfRJOR2OBY3
 9Xvl1elZZJcmuNSj48UnXO+tPtVwWKii/KaNNtY05tfiaQD/qyDmSF4N++1Tz0bYZzX5LcBwvaT
 u2NOYKdARwJ77m9Ag2pQhOq+jKr8iapK0PlZFwyqPRj0ZGccZT2dneqccGmyyXaGhGFqDfL78yJ
 n/SCRenDrP6MXRUK6LVM3yMDbw5OSb5WDFkEdw7uablX/nVwpRTB5vynh7Kv5HUyRMeZ6FwnyIG
 Ckhc5SWTFM3b1gw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Hi folks,

This series removes the syscon compatible from the pmu_system_controller
node, by updating both yaml bindings and device tree.

Since commit ba5095ebbc7a ("mfd: syscon: Allow syscon nodes without a
"syscon" compatible") it is possible to register a regmap without the
syscon compatible in the node.

As noted in that commit, it isn't really correct to claim we are compatible
with syscon, as a MMIO regmap created by syscon driver won't work on gs101.
Removing the syscon compatible means the syscon driver won't ever attempt
to create a mmio regmap.

Currently we rely on exynos-pmu running and registering its regmap at a
very early initcall level, so no mmio created regmap is returned. For
pinctrl driver that runs at the same initcall level as exynos-pmu today we
have a custom exynos_get_pmu_regmap_by_phandle() API that supports
-EPROBE_DEFER.

However with the changes proposed in [1] -EPROBE_DEFER will become
supported in the syscon driver directly making this whole approach more
robust especially in a highly modularized system with other drivers at the
same initcall level. We should also be able to remove the custom API
referenced above.

Technically this is a ABI break but no other platforms are affected. With
an old DT we will have the behaviour of today (rely on early initcall
levels). But once [1] is merged, with a new DT we will benefit from
-EPROBE_DEFER. Additionally PMU write register access was never working
with a mmio syscon so the ABI break is justified.

regards,

Peter

Link: https://lore.kernel.org/lkml/aQdHmrchkmOr34r3@stanley.mountain/ [1]

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v2:
- Update commit description (Krzysztof)
- Change Items to enum, remove const (Krzysztof)
- Checkpatch warning commit msg length (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20251103-remove-pmu-syscon-compat-v1-0-f2cb7f9ade6f@linaro.org

---
Peter Griffin (2):
      dt-bindings: soc: samsung: exynos-pmu: remove syscon for google,gs101-pmu
      arm64: dts: exynos: gs101: remove syscon compatible from pmu node

 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 3 ++-
 arch/arm64/boot/dts/exynos/google/gs101.dtsi                  | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)
---
base-commit: 72fb0170ef1f45addf726319c52a0562b6913707
change-id: 20251102-remove-pmu-syscon-compat-dbbc492a4eea

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


