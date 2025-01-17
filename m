Return-Path: <devicetree+bounces-139365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C6DA15554
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 18:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11599188AF4D
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E6B81A00FA;
	Fri, 17 Jan 2025 17:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mKCKU4TN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2057C19258B
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 17:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737133801; cv=none; b=qtBKMMShXcvHIht8I9+yuyeMJi6zY0Poa5DaMBjg8q6QFNjss6FBpuOPhPfZjJptTufz0wGXgBtHAYnGZwc/RYh67SCwTHQzcNvEsT6KsTOD5yhKyYxpCQuB+ZC1b5HNOK8+DNeon+5gOAi2XB39B1Zx2mJWmy+z1Kww5QQNcv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737133801; c=relaxed/simple;
	bh=7ANeKR3v+yRKzyRqPitJHgvF8fJkGhtW2OO51o2J7Ho=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NwGyTj+MuFOKfAZq/E64+TOgUpPZhcm/EkOoMxT8nX23lyA4hnq93oEATF5nF4/PDOJSQEcqWcpXhBddE2snGGcdHPJDjKyqxA+D26nZrg1jcHuZRdRBJ0Iry3c6X0676H2FsDofoUotzYE8c8u2jz8rX3pU9hJugHvRWWIWOUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mKCKU4TN; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaeef97ff02so399966166b.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737133797; x=1737738597; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VpofVFRqOOEG6qf6RBN58H/+7B1FAaQ0YrVaEqz5D7g=;
        b=mKCKU4TNYB+1z6wfvIv+Xx+1nYC4LTkZok5bfAIfVlQWLPSVtwpLC8/D9h75JTh43I
         eoMWNHZGjog7c2CeWYFZ98zWLL0XTgD1wIxq9WioiYkKWi51Xz48kWc/MAOGy8XG9zzn
         phGjXg6fJa+8QR2hYt5DwosZ8CgvjVPWXpA0AiPZOWHBIImZDJOobgTx8jkuWQ2+yVuZ
         tUWJSqFyd7Yf/VlCr5gFVfaonbjtQFsHsoIkpUjvYeGztOLsXUzW/XCuR1B3+/t81kqE
         dmk8gLce2ISdeCTWPY+Ht//lnNSS3efkBtQnp+ZX7TR+kVzYfDDbCcIsMnCvzc9v3oZ/
         pdIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737133797; x=1737738597;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpofVFRqOOEG6qf6RBN58H/+7B1FAaQ0YrVaEqz5D7g=;
        b=Psld9BVQib3y076r9ju2WsjAcXEEihjulA4JG5FLa4EX88TWPYXjKryA2KVfCaynfO
         q9KmjJrkBDRj6p6m4claCQcXlzw628xf3UUJIJ9XBJgVaz9pTeQXdaHpXzqbG/9N/RK6
         RFBrsoI9WpfOv7nSZ4+aHUR/rk1Gbntdszs65aD6c2D+v4x9434cEQ2G/aQ1Z3DLF2oH
         zEKbP1IvseSkQn6deKVXAfleYIQmLlItxuB/gatZSqKD5iLurMmVdVn1NzlwkAkkMy8g
         s/F8k54H/O0YtzkIYorBTNKEuMYcC9E/M+/LwdK6pOaRRXdjJNMblWRQyUuhfy82YUE0
         mslg==
X-Forwarded-Encrypted: i=1; AJvYcCV3miQ7ldeM2tK5U69FowvAmeHbv7J6kSe4EUMkG6h79XHm0C48AMXxkfV8Y32Jp3TIfrXDXY1SfWPs@vger.kernel.org
X-Gm-Message-State: AOJu0YxsxlDjDpCCzyDH8XIAtfRkAEiS97q135QlZ8CUy+QP7/Dvuti/
	a1eqH4LJmx9gVAKHPps8UAGsCtRszdwrEmZSSNkCmVVjZ0LqIsYDClMs5hFfg9g=
X-Gm-Gg: ASbGncsymse547ALikKKV2RC0eMQ8YCiYrjbXAauEBnDndxkC/zFjSI1ymkx1iCl0yy
	Mo1bhq0dhzhsVdgvdAPo9Ueij9CU8ob/1s4fHCBrg9nn7vI3ro8AwE7XhcflRO1BZCtOo/ubrFW
	zMIzD3JmJqD2LqOmm1vV5+GfLSPkFDlmu1uHvVx2qRhhZFnCKDjtqJgW6H4XpO2N6KJurv+tKTf
	RlR/WoQO7IglWPvdRRUxm+Hy32+cIBHuXFH63OkJAaLpOifGjpmM/Foit/o7sAeLzUv8oQJVDAL
	tOw10VhP7KKHShEIOXwS1nPYcOA0wSEKx0kbBJ06
X-Google-Smtp-Source: AGHT+IFs8RJ3NO2OT33SRqFUyUB/tvu/B+LNlrcE6krOU8A6UpaUH6OiJazjufKRn27kaO1pthKstw==
X-Received: by 2002:a17:907:72ce:b0:aa6:7df0:b17a with SMTP id a640c23a62f3a-ab38b29b08dmr459543766b.34.1737133797425;
        Fri, 17 Jan 2025 09:09:57 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f87065sm199197966b.133.2025.01.17.09.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 09:09:56 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v4 0/4] Google Pixel 6 (simple) framebuffer support
Date: Fri, 17 Jan 2025 17:09:53 +0000
Message-Id: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAOKOimcC/3XM0QqCMBTG8VeRXbc456g5u+o9oos5jzowJ1tII
 b57UwgK6fL74PefRWBvOYhzMgvPkw3WDXFkh0SYTg8tS1vHLQgoQ8KTbAMCymDvY89NJZXWrIA
 KxXUhIho9N/a5Ba+3uDsbHs6/tv6E6/s3NaEEqYzRNaoUSOGlt4P27uh8K9bWRF+eYOcpeoOgV
 VNyVkK18+nH54CY73wafU5sdKpzRVXx45dleQNfaq6rLQEAAA==
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

This series enables simple framebuffer support on Google Pixel 6 and
Pixel 6 Pro.

Even if simple-framebuffer is deprecated and DRM should be used
instead, having it available in DT is beneficial for several reasons at
this point in time (the phone uses an OLED display):
* energy consumption goes down significantly, as it changes from white
  (as left by bootloader) to black (linux console), and we generally
  don't run out of battery anymore when plugged into a USB port
* less of a burn-in effect I assume
* phone stays cooler due to reduced energy consumption by display

Since Pixel 6 and Pixel 6 Pro use a different resolution display, this
is the time to separate them into their respective DTs, and provide one
for each of them. There are other differences between the two, like
battery design capacity, but they don't matter at this stage due to
incomplete upstream support.

* dependency note *

None (anymore) - earlier versions of this series had dependencies, but
those are all part of linux-next already, so none remain.

* dependency note end *

For those who want to try this out:
The stock bootloader disables the decon hardware trigger before jumping
to Linux, preventing framebuffer updates from reaching the display. We
have added a work-around in our Yocto BSP layer for the time being
(until a proper display exists upstream). An alternative might be to
port and use uniLoader from https://github.com/ivoszbg/uniLoader, as
seems to be done for some other Exynos platforms.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v4:
- fix an unintended whitespace error introduced in patch 4 in v3
- Link to v3: https://lore.kernel.org/r/20250115-gs101-simplefb-v3-0-52eca3a582b7@linaro.org

Changes in v3:
- back to using separate DTBs for Pixel 6 and Pixel 6 Pro (Krzysztof)
- update name of common dtsi file (Krzysztof)
- use 'memory-region' property from the start in patch 2, don't
  introduce it as change in patch 3 (Krzysztof)
- Link to v2: https://lore.kernel.org/r/20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org
  and https://lore.kernel.org/r/20241220-gs101-simplefb-oriole-v2-1-df60e566932a@linaro.org

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
André Draszik (4):
      dt-bindings: arm: google: add gs101-raven
      arm64: dts: exynos: gs101-oriole: configure simple-framebuffer
      arm64: dts: exynos: gs101-oriole: move common Pixel6 & 6Pro parts into a .dtsi
      arm64: dts: exynos: gs101-raven: add new board file

 Documentation/devicetree/bindings/arm/google.yaml  |   3 +-
 arch/arm64/boot/dts/exynos/google/Makefile         |   1 +
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 267 +--------------------
 .../{gs101-oriole.dts => gs101-pixel-common.dtsi}  |  22 +-
 arch/arm64/boot/dts/exynos/google/gs101-raven.dts  |  29 +++
 5 files changed, 58 insertions(+), 264 deletions(-)
---
base-commit: 4e16367cfe0ce395f29d0482b78970cce8e1db73
change-id: 20241216-gs101-simplefb-8aae80278ed7

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


