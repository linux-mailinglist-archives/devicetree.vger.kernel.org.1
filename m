Return-Path: <devicetree+bounces-133042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAA49F9146
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FDAB7A3CD2
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F561C5F31;
	Fri, 20 Dec 2024 11:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oXx5tpzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12831C5F1D
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734694081; cv=none; b=uE7ITeow83NMA5QB/GLBz5toseS1O+6DXfTuubbSP+bjBPUv3lYUdUB9zjeSeLYAAM6qvY1qDFKiWm5KCv4sgCphjYJswOpbehi8TFefiYWx8siUWhtawhxhjHqs6JVVLnL/K86oGGNG7IHvU/adI4Xm8QV3rPZrIzBGw9513hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734694081; c=relaxed/simple;
	bh=LW9NlVQ1ZU8KJiqYxsvxHLTdhOAcCb8IC1f+fzi3wEs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=vCRYmfG9LfiPpfEHZB7tr4XktQaG60Z6eXl+1XtKmgNLUYQ6ffdIMgYDtC+tQy29+sIHWZ2MqL9NmDTDaRZBsLZzb665yLjwKfWT6+4lttyfGuvQY0zISbOd5NzmYIvvezww2FQVVRQH6mJJAJvRQpoXQPjejLE4Ak2WxitcWnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oXx5tpzD; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d3f65844deso2711390a12.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 03:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734694078; x=1735298878; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fPnFnnIbk1GG60/+MNJYGRtUv6D7I7cGesD5TPc/BLc=;
        b=oXx5tpzDNeers9c36bmjF4PqNIqWV5AEYjfuHoe1rn+FVWpDFlfyb6NfzTTTQxn25u
         IsW/H+PUFKs4KWonMiMLI2TTcXPt9Lo02lW6NWXYf1bHtMo/eTbjseW8N/o7cq4SBnAp
         M3lfdsU869nDgzHMfMzg1lQEY5LCOY9JhesPWsQB5UE71iZqgc7QFrEsat4rYICxn+tR
         /x7baDihng3x7zjWWVfHbkDe8vMzhjxzrHjh5jAG8f6SYSl34hPz0uGLgyz3mPo0HHeD
         HVaCL9TKu+KPCeNNuycZi5j5OuHVUYJA6OzGR2eWcLh4G+zCB4W5+gTm5uClJMTizQcS
         vgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734694078; x=1735298878;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fPnFnnIbk1GG60/+MNJYGRtUv6D7I7cGesD5TPc/BLc=;
        b=Tc01Ks7KBM0t8CcYWhMBAGf20TbsS54E2bCpgaR3Iql+RlocOPOGcub2lJII9Xo6mP
         BHsGGbvXNBipukIA/sqemV3/n5PG4C8UHJBjbKe0aOT8GlBYvy4C63QXXJoyrmHhuxBj
         tf0vSYHGcz2BPVLoJW73ACUP2Iz1BZFLyNC3RAY5En2gRScLQX6zFFljp0866O191L+L
         YHm3+S8hfB7NgOLtbvjYMFAsjQtHiayeA0YnjWrG43rmt++ejELe6pzimLD4Ozt+EXbj
         MMmCYaldKuopNzFlzNGhJhwqBZQI/EHcH/tvroh89r/Yu3ShhKAhdIvpdDyvxGHdfSBn
         w7Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWd9U4W7k90LAJbrdeaQVvAV3PnL8GqOe8/ahgcquNII7WsBAQuK0AQ8wUAK333u8uVv+lCHtifL41T@vger.kernel.org
X-Gm-Message-State: AOJu0YwxEG0E0KSmLYLXx2TbogGlmzKtJYro2Hp8qyFv+aUwuAB6bP++
	FXrK97HjQVYmyffyXJvbbwKcvThLxLvEYqSRU2WNpOlCYTQVRQ+ZzXCVEembSeM=
X-Gm-Gg: ASbGncsxJ/UoYxUmde3oKGNMAuh+9Ok9q85MUCokoLxeDcjPvmtDzJrchtvJs0lZlNN
	kqef0zewqJWd3PsK1EsV6diqay+7aPa/KkAKr44HGq2nnmtbSt172jQFvqcuy1WE3O1FlyWi8dn
	IwBR7U9JCdbPS/3UcPc3fd5TfX8M9E5hCzs/C9xUpbqIlerBScENLCQqrjlhJQOB1XwqbVcib7I
	gxOyl7sYGOqKt8te58kwu3Jb691P9Y9Xr+HeRFVxzVjjtsiFlzbAv2DSrMT0p08/MVcCxGWM9yp
	V+BC09utn2gwkrY5Al7hWn32Gkz0BV5le5knxgZo
X-Google-Smtp-Source: AGHT+IFCw5/PULuUVcI3llc0y1a6yuLGG1HzrWtHK+9OOBjslUtrFHMO2qLGPE6HaWlamqpm+rB8Qg==
X-Received: by 2002:a05:6402:501b:b0:5d0:efaf:fb73 with SMTP id 4fb4d7f45d1cf-5d81ddc3ca4mr1883854a12.15.1734694077983;
        Fri, 20 Dec 2024 03:27:57 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701abd1sm1632634a12.76.2024.12.20.03.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 03:27:57 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/3] Google Pixel 6 Pro support
Date: Fri, 20 Dec 2024 11:27:23 +0000
Message-Id: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJtUZWcC/3XMQQrCMBCF4auUWRvJRLHBlfeQLmIyTQdqUzISl
 JK7G7t3+T943wZCmUng2m2QqbBwWlqYQwd+ckskxaE1GG3OaPCioqBGJfxcZxofyjpHVpveUui
 hndZMI7938D60nlheKX92v+Bv/UsVVFpZ711Ae9LG4m3mxeV0TDnCUGv9AlSb5nWtAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series enables support for Google Pixel 6 Pro.

Since Pixel 6 and Pixel 6 Pro use a different resolution display, we
now need to add explicit support for it, we can not piggyback on the
non-Pro version anymore. This means having to separate them into their
respective DTs, and provide one for each of them.
There are other differences between the two of course, like battery
design capacity, etc., but they don't matter at this stage due to
incomplete upstream support.

* dependency note *

Due to the renaming of the gs101-oriole.dts, this series will conflict
with any pending patches touching the same file. I have therefore based
this series on top of my USB series from
https://lore.kernel.org/r/20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org
and the patch enabling framebuffer support for Pixel 6 from
https://lore.kernel.org/r/20241220-gs101-simplefb-oriole-v2-1-df60e566932a@linaro.org

* dependency note end *

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- We now have a generic gs101-based Pixel board DT, which can work on
  any Pixel 6 / 6 Pro / 6a
- Pixel 6 (Pro) are overlays onto that one.
  This has the advantage that all boards can be supported without
  having to have a full copy of the DT for each of them. We still
  instruct kbuild to create merged DTBs (in addition to the DTBOs) so
  that existing scripts can keep working while giving the option to
  just apply the overlay before boot (e.g. by the bootloader).
- The binding has been updated according to the above points
- I've changed the simple-framebuffer node to specify the memory via
  memory-region instead of reg, as that avoids unnecessary duplication
  (of the size), and it avoids having to specify #address-cells
  and #size-cells in the chosen node (and duplicating this in the
  DTSO), which is otherwise necessary to keep dt_binding_check happy
  and DT validation working in general.
- sort overriding/extending nodes ordered by label name (Krzysztof)
- format patches with diff.renames=copies (Krzysztof)
- dependencies have been updated, see below
- Link to v1: https://lore.kernel.org/r/20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org

---
André Draszik (3):
      dt-bindings: arm: google: add gs101-raven and generic gs101-pixel
      arm64: dts: exynos: gs101-pixel: add generic gs101-based Pixel support
      arm64: dts: exynos: gs101-raven: add new board file

 Documentation/devicetree/bindings/arm/google.yaml  | 18 +++++++++---
 arch/arm64/boot/dts/exynos/google/Makefile         |  9 ++++--
 .../arm64/boot/dts/exynos/google/gs101-oriole.dtso | 33 ++++++++++++++++++++++
 .../{gs101-oriole.dts => gs101-pixel-generic.dts}  | 24 +++++++---------
 arch/arm64/boot/dts/exynos/google/gs101-raven.dtso | 33 ++++++++++++++++++++++
 5 files changed, 97 insertions(+), 20 deletions(-)
---
base-commit: f70ddfc479f2fac1d0b744148743c25ce1778f01
change-id: 20241216-gs101-simplefb-8aae80278ed7

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


