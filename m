Return-Path: <devicetree+bounces-141616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEE9A21A2F
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 10:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A19B87A33B8
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379C31ACEDF;
	Wed, 29 Jan 2025 09:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IfCsg9J+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D48A1ACEAB
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 09:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738143834; cv=none; b=RM0nOybzaeljX180yAmm5PEWsIVFoEMr8pHWDc82PrhFDAyRMoYd2tLjoIuv0qVqzEnDgsVHhVosxuHydcIcH2A6lbOicXI9bBnoeW6f0V5nebEhX9IXrskAHsJT5CwTDu7VW/299XLWqCrLKtIAJvS0TWo+SRE39lTwLNI/dDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738143834; c=relaxed/simple;
	bh=ugCDF6Dv9Q8sqod143tGq7270kNoZnBS1mNHNruR/8E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YoK2fuxXlxy3HeZ92F8zMbHlK4BtHHAZNkSN3PbDUUnifxjnnt61vQ3RsfhwTeZc92RJdO0zhiLY3XR8/cXoIOt9Djz2hl03FWsZjFZpiYerMylStAWtjf3ohEtk2azV7xthxQMu88jsHV+9Ph6jQI+KpP1j6B4FdRwUxbmLg1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IfCsg9J+; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-436a03197b2so44767205e9.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 01:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738143830; x=1738748630; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tJv6SQjdKtyJcshQfwJUf2NvnnoYjdpz9iZt36FY4rw=;
        b=IfCsg9J+CZJCVOlLh4naCtLtpFcJV6WwA7BYqK2xmdf9p/ST/Rt9ib8BsiLhno9u9B
         IoOdocfPn/743gAI6NDduRSsffj2yuJpyyH//OmRh/QzjSwXQUoPVaIFc1QdItXgo4DJ
         eSt5th3Cu08U2ibQeN0HCUOrTuCi8DCo8MJ0I26/5x49RouwtGLzUFbMtuRrjXTQWmLP
         DntWt1PH/1Gq/xHpUi7RghnPa4dRk+6VF5IgpfYSas1LF3nCuRjnlwlU1UV0tWcxwtFM
         /AfRgRJlaLwl+3GnzyoZOdcmpca5oX9KjvnVHvE3Mqb+Q3e92mIrqBpxtoaYe08y37xy
         S6Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738143830; x=1738748630;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJv6SQjdKtyJcshQfwJUf2NvnnoYjdpz9iZt36FY4rw=;
        b=gbgv4MrMnQQ0zOcWjOTNcTyhp+6VC/vdWO6NI/QpWTNSV6UdNVz2i3Bh9aPutShgRn
         pm8LL655jNLgAEX9TgLnDpuaPRKxiWjjb6/TvWuGI7fjwCdzVQCImQBn5vDmml2wmP/I
         Q/vOuPtJ4UBKv+Vp4Dz11iHHBQY1gr0JjI+QZQlC86XC/qc3GDXQpC19syR2bS1i64OH
         3R+dgHoBxG2mh5U1KwwNyjdnMsZbteazcrzTA/s3tCdHR9qx7OZAiC05KGJBh89SUc+/
         ezjabLDz+GpOz0qiCdafNyh0yUAK8ZoSGxxQLqnipTwGZNgb1Yr++Y2xTf/uG51fdgDT
         2zdg==
X-Forwarded-Encrypted: i=1; AJvYcCXw64TbVW90LGxXjGqpWkj9Lw2zWz4KQcNGfQgQDw6z3kXd+5PSaF9ksb7QbJWKVoqxnUNkYBIpcl6j@vger.kernel.org
X-Gm-Message-State: AOJu0YzerrXodYuMZqhIw3d8RRJjMj0BrE6UaZY2C4tX3OE1/PZigWxA
	3/bgatnOMyW5FPqtQNpyhWxv9VmuFTtoIAAqKZZSfpw8PhejiONQ/GIj1wzbNfo=
X-Gm-Gg: ASbGncseO7ZfrwsWL9tw4NkGcz4DruCbQOboaHvggR6LqprF307qOhOQTE01jmpX7i6
	z9up3Pf7m8kb1ZnW6qDSHBfqbiopeAQ2D1gSMd8iEI2huZW7wJGExYnhI8oob/v6t3m1ykhfQxF
	PBoruozvOAx4mf5gj9ny5x2Pu6G66CBc4zhOzlFJ29RoWF3LkMhao51djvH/Dk5j5U4C86Day24
	HbRXkX2rHQ+X6xc6rxCPEkkWFQB/vOfxIeYSn7vxNspBO+VX8Atr+M4egjps/9fSIpwRy/k5h2v
	KuzgaPQxyYOPkLvCrpQO3jUbpxYuZ8ndyBGu
X-Google-Smtp-Source: AGHT+IGiQNK+7Ixfq0M9hT0Djeca89SH/kFqdzg1paVvQepyh2muN14ywYijS2bShkit4VIr8tTCQg==
X-Received: by 2002:a5d:64c3:0:b0:38a:a117:3da1 with SMTP id ffacd0b85a97d-38c51946048mr1787919f8f.5.1738143830116;
        Wed, 29 Jan 2025 01:43:50 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc81589sm16035205e9.33.2025.01.29.01.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 01:43:49 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/2] arm64: dts: qcom: sm8650: rework CPU & GPU thermal
 zones
Date: Wed, 29 Jan 2025 10:43:44 +0100
Message-Id: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFD4mWcC/43NQQ6CMBCF4auQrq3pFBHqynsYF6UdYBKgpMVGQ
 7i7hZWudPm/TL5ZWEBPGNglW5jHSIHcmCI/ZMx0emyRk03NpJCFAJHz2U1keBiqcyH43KEfdM/
 N9Eh3PXJAUFCBVie0LBmTx4aeu3+7p+4ozM6/9ncRtvVfOQIXvNEaGgGAxqprT6P27uh8yzY6y
 g8OxC9OJq4oq1LbUum6rr+4dV3f4mWMoRoBAAA=
X-Change-ID: 20250103-topic-sm8650-thermal-cpu-idle-1e19181a94ed
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2506;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ugCDF6Dv9Q8sqod143tGq7270kNoZnBS1mNHNruR/8E=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnmfhUP/iOAjX+EqgkLby/hcXftgvXzXCEtniPfz1u
 k9xwfi+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ5n4VAAKCRB33NvayMhJ0cwiD/
 4vggGiUHxgooEjev/0gRZqY+kD4T6OUv9jNrVGlMcWmirNG38q8HRx3uBLjQ0Dbx46ls1it27OxDbK
 Fsv5NIgjVEx23IMGpYxJ9+MliO2cKz82YFMz9VDKJ1kJZiAcOBz48cVUrcSsMUf5Oh6gzJel3HjP11
 IlSjuBoosTnBV5TWYT8lIAUm7D2xd1YXOWaBmkWhCAk2d6eDo6ARdAZcGkjH8wYQpA01h/qgiPt3nx
 Iu8CNazZpeXLSUOZY5DtGlCP7/bGeLM/3S4TF94HbWbNKAoUm5NXh12siAKVZA7JwpPLDNHH7acjtj
 I7qbbgJbMlyPPVSnY9LlOyk+tlEJ4/SYoBXZo6oJPEXBnXS7JQVCN9Y8aD65U6wKeiKCMgmApuz2ZC
 YNPVjoBD5riIkNVs8w9BI5hKak4xtrj1vEdhSyI28uXIyNCzn+2tYX3rw+SAMbFtWrs9x8SwzaFwmE
 ngxTnRn0FEAc4qCi1rwQd5ximBNlmhF7PataiGV/LSRIn0IkPsQAB11mwkPjNYBSfOJvThvrKDXMBu
 3otzxv1s2bURzc1hZs5iy4+WnmD5TMvRqygVCROJPXKplCgBLNeOt6WyM5QX9ROez6Zkoz4XHRDTKh
 JBsTJ/Mbmsk93H2cTRkhbC0vg8OKAXAYVw/FfiRk237S92U+QU+kQ2h1XbAQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On the SM8650 platform, the dynamic clock and voltage scaling (DCVS) for
the CPUs is handled by hardware & firmware using factory and
form-factor determined parameters in order to maximize frequency while
keeping the temperature way below the junction temperature where the SoC
would experience a thermal shutdown if not permanent damages.

On the other side, the High Level Ooperating System (HLOS), like Linux,
is able to adjust the CPU and GPU frequency using the internal SoC
temperature sensors (here tsens) and it's UP/LOW interrupts, but it
effectly does the same work twice for CPU in an less effective manner.

Let's take the CPU Hardware & Firmware action in account and design the
thermal zones trip points and cooling devices mapping to use the HLOS
as a safety warant in case the platform experiences a temperature surge
to helpfully avoid a thermal shutdown and handle the scenario gracefully.

On the CPU side, the LMh hardware does the DCVS control loop, so
only keep the critical trip point that would do a software system
reboot as an emergency action to avoid the thermal shutdown.

On the GPU side, the GPU can achieve much higher temperature,
update the trip point with the downstream implementation as a
reference.

Those 2 changes optimizes the thermal management design by avoiding
concurrent thermal management, calculations & avoidable interrupts
for CPU, and allows us to use reach higher OPPs for the GPUs and
squeeze more performances in both cases.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- The GMU doesn't handle temperature, remove it from all texts, just bump the temps
- Link to v2: https://lore.kernel.org/r/20250110-topic-sm8650-thermal-cpu-idle-v2-0-5787ad79abbb@linaro.org

Changes in v2:
- Drop idle injection
- only keep critical trip points
- reword commmit msg and cover letter
- Link to v1: https://lore.kernel.org/r/20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org

---
Neil Armstrong (2):
      arm64: dts: qcom: sm8650: drop cpu thermal passive trip points
      arm64: dts: qcom: sm8650: setup gpu thermal with higher temperatures

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 228 ++++-------------------------------
 1 file changed, 24 insertions(+), 204 deletions(-)
---
base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
change-id: 20250103-topic-sm8650-thermal-cpu-idle-1e19181a94ed

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


