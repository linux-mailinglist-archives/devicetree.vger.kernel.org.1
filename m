Return-Path: <devicetree+bounces-234232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D68C2A7AD
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 09:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5CC9E4E50C2
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 08:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7A02D73BE;
	Mon,  3 Nov 2025 08:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SSHbw1X2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843642C15BE
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 08:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762156998; cv=none; b=F+L5Xxd0nEsl98jdy50PTrTjiC/a81Vq2GFCcgU9RXv9C38FzkxmZcZRj12PmbYNEufGTQGTYxpbe52K7cCRdpDmQv2voUawKmGxppYpfd1mGqvCjCXvBe3OUYjFgbFwuavCuWY8Ik6KzyJ3rN+PGSWpDtCcldYz/Ch6kAlDzXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762156998; c=relaxed/simple;
	bh=coLNq6UgBEJ54vtaDH5/Y+99RZcuZu3NnE6pznoVHXw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bLiUWnvo8Fp2ZYVjs7fbVsi+tY4CbL3tNqcS/yIDXFedbvRdmm5k8MT/AIoz5vBTL3ByOFRzyoOBtPGKJiRnYvrx9xcLX8WNOaHFHMjn6dqDmlnXhknQaV+X6qkUJaiVfW+EuLveAi78Za/MexQjUBPIY5NTzencJe6N6P1xzZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SSHbw1X2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-475d9de970eso27423375e9.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 00:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762156995; x=1762761795; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L/IH8GWzke7o+9XH2ahN9Fgm4JRQMZZpkq9Zw8W23zk=;
        b=SSHbw1X2RtzkhYntcAWQDDguOO2al/S0gikOslZ4qGbgQiQGGNhHL3bor2Kl/5YL3M
         Csr8yCTqvMoYt12Rx+yOD8SBAJXSt45vxgfl1zRk+BGbi7in8/AKJijjobxFtSMpTr0S
         TEVXEVASRCReh/VrtgROhS4enVC18y0W3UWAoOaEScHWeN5bwUsLD9mlnOmkThUNX4uG
         KxTU2WW6MfwATmXeG0oeEz2M7SKmSnLAxjxgi7O7hEOu/OhZ1BcKIB/TwSpDfv8J4mg/
         WTle5l+rEv6dqQngfdL0+tt2a64qs/WkFa7fWgFn+7B7x04WqOLB+/ffDNnlLvIJZkhH
         dj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762156995; x=1762761795;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/IH8GWzke7o+9XH2ahN9Fgm4JRQMZZpkq9Zw8W23zk=;
        b=xF4idr7obk+05JCTgDF4lhcyVFQq4+Q4/1AwX8GaOJhTJOJvOMTW7Hmi/Dyz8jP7p+
         oDV7A0bf6rmPKwkjUqPuHSQFkQ4tUdNXdKowbAGruNm3LgT/u0J3elVmIfwHlJ0pE3bS
         ZZcRKK0liozB9eeDNCqnas4H3b7ZPbuAapus0OTx5QaHiJNoqpz137lbfczGhEBcPmt5
         8GLqRm4w3U7ft2Blj1EL0r5lELlXPMwSs5pH3yfnqDaGcQj8B8+JkU/IW/R+wgD76VCr
         SSWcMR8axcKJ5pMCVHVKUoWk6dM8u8O33Q6dYg3isxcfFtuyHCsuUvmIuxHoXkstE8e1
         sOEw==
X-Forwarded-Encrypted: i=1; AJvYcCV6tXZgfcTjI8sy6ASvbCc6/AerC9G+DxGHmoHJo0DNSWJ9mZsFCohOth/sYvESP5IdzehZzE1QHOyr@vger.kernel.org
X-Gm-Message-State: AOJu0Yydoyj3AR7LzJro+23SEg9zMLh9jfVZaqTpdBENm/2ENUcIDDNn
	zszD4Mci5hlLzEla9L99AwGv0owWLNzOMfnS4v8y9W1jbvP6Y+xJYtEWb5Fa+S0CkL8=
X-Gm-Gg: ASbGncs4G1jWzHLQPiS+dXHIcbclApdUqJBoq5izlVwRZtEFbnHCMUQHyiudcASYrJH
	6yViYez2Bf5zbUquYJ5pNkkxgIBIdonV48WPryf0LZlkcq25jIVIjpOPO/vkNkKjYgIXjyazRcb
	Rv1yYVs+BrZUabTCCS04x97M+3imIGb7Y3AHe8DtwdTEJGarGBlsE5MtggP4VS590jhCTin9Ssy
	VW4BCAoK7uV2RumPE4HmwS6wOOp0KBHJquGTDua3R5lZNGzHIZPqawUqvrL/1LrC9lga3Yv6Hey
	n3j8+AKeWrk41gxHSWFac9VA3wRyELrUt8IyRRzyQqrQdgoTNubrWZHB3EmR1juFfU83n566jYe
	G2ZDFFzy4o8VIx5Zb6t/4iWUlXARdIDDP5pK+zIH4N54TN3SYJoPixBjCR4STTihz7JZVtMuJYo
	hkuhDGwpCDmcvNDsUoQ74qIjjz2U2IdQMBX245Md/afw==
X-Google-Smtp-Source: AGHT+IGE6c8H6wBz5xIqW//ZckvXkI1XYLT8wk/cpBvfubK8j7fG5RuGuBsFSian/icYU+pzc/KE6w==
X-Received: by 2002:a05:600c:630e:b0:471:11a3:a6a9 with SMTP id 5b1f17b1804b1-477308acfe4mr107228955e9.37.1762156994866;
        Mon, 03 Nov 2025 00:03:14 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c4ac5d6sm142336215e9.8.2025.11.03.00.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 00:03:14 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 0/2] Remove syscon compatible from google,gs101-pmu node
Date: Mon, 03 Nov 2025 08:03:09 +0000
Message-Id: <20251103-remove-pmu-syscon-compat-v1-0-f2cb7f9ade6f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL1hCGkC/x3MOw6DMBBF0a2gqTMStkyRbCWiMOZBpvBHHoKIE
 HuPRXmKe09SVIHSqzupYheVnBrMo6Pw8WkFy9xMtreDMb3liph3cIlf1p+GnDjkWPzG8zQF97T
 eAZ5aXioWOe71e7yuP+t3HbtqAAAA
X-Change-ID: 20251102-remove-pmu-syscon-compat-dbbc492a4eea
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dan.carpenter@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 dan.carpenter@linaro.org, arnd@arndb.de, robh@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2137;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=coLNq6UgBEJ54vtaDH5/Y+99RZcuZu3NnE6pznoVHXw=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpCGHA6lXimYaS+RG+z/Z/H8ogsAabnPPFrp2CX
 MJNuVr+FpyJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaQhhwAAKCRDO6LjWAjRy
 umxNEACX503fKhg2AMKQRDibcYgVMIKHsDkrNclZQSBFNFA7K4CQBm51QUnarXNgC1NXNhqPlF/
 RL634e3JtP3iRMQFBRP/CMwebcUNX6cdYPjczSwB1fmekHQN4RGOWsoDilTyFLS+UyC6Nyrmx7e
 8Lhsb/UkQnr5i+P/plM1hQ4J4bK+whwURLEJdWDQU/j4gCFQh7PwEfhRCTy2KTv9vvkebYbXGSf
 Abz5lHMcPnXLH2k6i5wYJxvmdMJXjt6TN7nymfu78Ijqtk8xw9wtv7ual4qkskjjIIG3L+b1gui
 qOq8lVi3LVDMoztzyjfY/8UFg8p9XfEPF0rjYmbTnVVXyxtTHaYVY4hgN/o8fvjxYZ8T5Le4/U0
 D0zz7f5isA80epzaimEssF9zKMZ6o1dcUmV/Bz3HBNvN6MzFA67tJLmi+ugxsO07pN2CPTCqkPw
 ReIEC958wlTLWcIHJFRiPAnFrQSC0p2QlDO43eTKasr8DOwHs7rJlqlnQASpT5YQHDONAN8XfsU
 5rOG/t5r6ix9Ej+83KS0vL5jLrxWtFjD2Bk9N69hzJXoxTr4plOhY+/fvoP/QCoquV/dVeSGE2W
 BtQwSERkicsEdIEyPibIgTxzDKNrXxChqi7c91O3YStuxyeMslAOCOlcoPLd2PmTq+FUKojLRDV
 Drq/8JU7jm6VIHg==
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
-EPROBE_DEFER.

regards,

Peter

Link: https://lore.kernel.org/lkml/aQdHmrchkmOr34r3@stanley.mountain/ [1]

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
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


