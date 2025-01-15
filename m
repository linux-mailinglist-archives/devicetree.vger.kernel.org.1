Return-Path: <devicetree+bounces-138840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C5AA1286F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 17:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8C293A97F3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0C11A76C7;
	Wed, 15 Jan 2025 16:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z9DtDpMH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8721A0B13
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 16:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736957474; cv=none; b=j0UutA5+U/m4jqHZOSJXrikov0SHnvOZ0O9Yss9GmpQH8QpHszH79IHtitVlZ8lYi5j64Fv3iyX+Zny5nd2WYh/2+Wm4lFkYMs9FSLAp58/E+wj24XbKEqCiSFzCHwpOHKeaHWQRX0jE2qd9bZamA3bIV8txt0nahYA4lh0XLjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736957474; c=relaxed/simple;
	bh=k+hHpVP5M11rYH3mSWCj3DR31urk8Ai4nI+3MIHIp7A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HtesaxRSGEiWzaiALWdHhlPzr9GIcW6PuP50F6jcZUrbRO7RYFn8XgghNm6Ad+Hyr2CLHGejxDw/H9SgkbowTY+UZ8lSrZBr//prSdKdMxOuMaZDX6oqi2IofzD+WhlPlTnsLmALB1Co3NOATjIdm660Ninp+WqUsPiYyqDhkCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z9DtDpMH; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d9f0a6ad83so5440701a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 08:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736957470; x=1737562270; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sk8XcCPQk/QfLtG6UwXSc1dy9JRT7qUXdhOLuEZAWNU=;
        b=Z9DtDpMH4my9K7mbu5pYPqyu5PMsZB62t6/wEKHd01qX4Eb2icvqHFRjiX8+/aL4cx
         ju4iAzunirwuRb9mGgV5H/HK/vCaSMybzaGti6cSbw+K5C1h5MZHbO8Wx7zNE63CuZZ3
         YkPE2/POaK9xX7daxaFo0hHSqTYcjduvj2nDSziyWklcpzlpICcZtRy/+cSUUv4+HHq1
         /+kCoapCD16TeeufMmE094/SnlNq663lXbuS6y5rMApGbdGbUJgiNI+pOZRYMH5/JrF1
         ilX+UUJDP2O8Q5paqn3gp5KWyY1sOj/UpXXJ1ugT+6DlyQu1vJil4XdGbJ/p/bdhdJnY
         JvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736957470; x=1737562270;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sk8XcCPQk/QfLtG6UwXSc1dy9JRT7qUXdhOLuEZAWNU=;
        b=MuxUHfzvBQeGHJOsdHyvMhSIQYAoc2q6cSkG3YYoxSsm1jqDEK3wpx9sfBNomwTzHo
         Eg8mI8NLIwP/bUqQhvzQUsvBjatEVjx952eDfc9eYItoMoc8WcH4ZwUzvSmwNvN1zLVj
         CV6LlbwR+cCz0Z2U17CxV4b1QTP8TNX1ztIQijJBWLQbD20eeijmMqqIkde/BS1cg4nu
         KrWEHYhpxe/78OI9aqFG2hSH9q0PIcdbWQWMcl8uBQUcV4s0nGLOhl2voGdSEAR3mYqL
         8x7+SOnw4qCGi32dXCfZxvniScMhLfPVy+pw2Vj9nz+cOzUHdhLYxihk1+dd3TWpb9nk
         z+NA==
X-Forwarded-Encrypted: i=1; AJvYcCVuMoFAumIswPHoZO4H8RFI3pn/nQ1W3S8cC4UP+RmVbw/i6R6pkZr3dYycSNRvSws8so11sO8L0Lug@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe+Lsf0r59xF0FapY+7aGnekZsGOiF5v5Gm95+Mvg7RGPu4glW
	pwB8VRmxsWzdb8wFCSzX2+m2cDf7l0EqY4Mrt50nRz+qBAqjlTQearM9LhqrxBI=
X-Gm-Gg: ASbGncv0K/3BRx4WByggyC0AGegGwIw8/2EwI+3Knoms3bPrzjBmXqb3n7N3tVY/Km+
	tA9GvNNAHPSGXtgxR+aH1zzX8DadxoRh3WJa01y3vGvjZ5PfRiWQkrQXDN8EbGRX9GWuWn8Xh8x
	qW1/83W6yLtuGf9vaymALdOKXcH4p4aZ85qyrjN6trg5f/SNJLO8rxWzul/+fApcRgV99BMbiTY
	iIrYD036E9A1CbYXZKkoc0w+aXqp44SgmUC1ElQ/csTUBbocRpjX9RPNhvmNWLlaZ4N4UxnVmg4
	GboG4yFERbH8Vh1vDKpwEs2/YILOKHEyS64LHfg5
X-Google-Smtp-Source: AGHT+IG8jwVgJoqsILMY+vI3oCTtwUoVhDSB7vFI/n6QxjmCcZpiS0jPwfBOjTCKizLFXRVYFkMgtQ==
X-Received: by 2002:a05:6402:2345:b0:5d0:b51c:8479 with SMTP id 4fb4d7f45d1cf-5d972e0a087mr28935550a12.10.1736957470374;
        Wed, 15 Jan 2025 08:11:10 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9904a55f9sm7416232a12.81.2025.01.15.08.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 08:11:09 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 0/4] Google Pixel 6 (simple) framebuffer support
Date: Wed, 15 Jan 2025 16:11:08 +0000
Message-Id: <20250115-gs101-simplefb-v3-0-52eca3a582b7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIABzeh2cC/3XMQQ6CMBCF4auQrq2ZGYgUV97DuChlgEkQSGsaD
 eHuFlYa4/K95PsXFdgLB3XOFuU5SpBpTCM/ZMr1duxYS5O2IqACCU+6Cwiog9zngdtaG2vZAJW
 Gm1IlNHtu5bkHr7e0ewmPyb/2fsTt/ZuKqEEb52yDJgcyeBlktH46Tr5TWyvShyf48ZS8Q7Cmr
 biooP7y67q+AdUc+BXtAAAA
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


