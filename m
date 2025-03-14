Return-Path: <devicetree+bounces-157558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22235A61230
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 14:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 637E1880722
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 13:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BAF1FF60A;
	Fri, 14 Mar 2025 13:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wVYj66/h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672781FF1CA
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 13:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958053; cv=none; b=Hn/g5GZi21aj+JAOA76Zdt+Fy6fgyq6PVqGMQ4rky1g8W3Io3K5X+r/Af0AP1PPKh5/58hHaQsRnMhCuyT8Z6G5ArLr0/4fJHYFAQE5BaGiJI/P4N67xduVWBpVdZm8n5r7ct3zuTVmC/uY/vV66TTVuvnDCBe6zjEBtIF1kUiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958053; c=relaxed/simple;
	bh=USi+CMS+pYT7jjBnq4t44Ylq28DQAK3Yy74AlHQBMMQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VXJfmLq9d3Q3uhTgtrH0dq/35PZMDruFEhIM8nkGk7GZiaJzvvPLWuPrAJpJDAaORMd0h58EOyPCOMg9G9KW1s9ArufdB6twF3c12frQnqz18QP1dWpaDanj1D+0caRI55rc4NxyHHIr6T0NB/LLJqAjKfPjhqtUGz5y8zjSPuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wVYj66/h; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaec111762bso450060966b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741958050; x=1742562850; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qBxsh3MyztApzu3sfrmXdWbHDOZhz+WJuApv9phuemE=;
        b=wVYj66/h6qgzMME+pi8IAAukT3SuKvXeJSL4X9ohEpjWQjdvgAxyfXRllqSzX649k0
         AFNGc2A9yDyDEAOtpbNH5hBU1zXpYe01oVXYYKAGFuG95GWA9TIBEMmZbBG4ypuVwG88
         TkEE3SYed/fSfFSfOplV4W9nQKEi7BAWIvAiL+lweJoWa+w+pfIespLmcE9D7f/UN+P1
         NfNjiJLJxVcbZygKg4/v3nVn8vT7w24zBDdAJUEiBv427iLKqx4JlCxc2yT6pfYrgvwj
         wLXkbDpl1ajIi6rm8FT0hMsjVj1Mx6O20qkZEEhFiJTdJn2tmIV1hXGDWrerQeEYzGv1
         MOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741958050; x=1742562850;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qBxsh3MyztApzu3sfrmXdWbHDOZhz+WJuApv9phuemE=;
        b=hJj9YttlfUoWcD3/FHRcQA4aaLfDK4n4Uv6zgo0YYIGtPIXyroxF5K+ej5XB7gkWVx
         dSlP0XnVuLkB9rUlPms1XkZjd9srj8QfXWNqr2Q5m4ojCXKirXag/9SrZaxUGQYgG0AW
         EuLRVcCMJ1ElkNn8qjpw/Sd8OGvx4PBvjE3YmxEJWpli+0S+s6o88bEyrv4MNLiU9/Dw
         hTIUdc8rY9aMbgshCDn+HVsGrU3SAWoLOmvVnVxL/gcSbmH/1eo0TvwABdLkcFumSKaf
         twl+SRtLEzoDMC12utFAlQvb3N1TxZiej3UEvi+QeqzSS/btxTyQzr4encB33XwOnczn
         LhEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb00qBqB8gA48sWWd1RrrxUC///q/l7gXimG/JmJyEe4FdJ81gn4mU2APs2uD+xyhGBTawC5LTZR6R@vger.kernel.org
X-Gm-Message-State: AOJu0YyoLsBRY1hXkKrKglJpvB3I2ChRqHaYqhWAr1TdYID02WuMhzma
	NqqOuGRBHs4IeI+iyzscgOGdSqa3f5Fbw2QBOwBwzOO2dlqyFu0PG6xOasoS2fk=
X-Gm-Gg: ASbGncvqIQBKeR3TGYlhVuJ9fBTKVACyPY/WT/SfFtuZCz/9yrLxe9+Klgjj0Guj7S1
	KJF5U3Zz6cFswB3hikZrKeMiJfupXdV0JMlDWat0sZ9VwMNTeDPXcR7xv8C83XRfP5LzCyzkWUb
	+77ZWqW2uSGCCC2lG6NhmSPmbd3EwmjlYfbM3DVsC39cBxMqM5NqrxyadtYlxf+nU060UKIFdCV
	U86Ds9Xtb3kkdLARj/bVyTXSy1HOXtqMrZByrtP+6oZN+KFnm15Rl0ISJIwPmGBiJBkaviFlXE1
	wy9BJ/atU/EhuRARjwz8CcwemQg7YNLE7ApQdoy9S8iw0EmjwRHKO86KoWEEoVuIX6gEwLDaNxb
	XL4b6j1Nu4y0G24BKfH4su+bUnku4glBDDCujQ0xsYi0W4lKDolQII2scx4iVRW8o0++H
X-Google-Smtp-Source: AGHT+IGAHvzcGzmRRyhOQBjS41OZCHYaqecqpSueuh/ovyYaA9FLKDO6h23ifUgrFUnPs1Ko46jLWw==
X-Received: by 2002:a17:907:3d87:b0:abf:6389:6d19 with SMTP id a640c23a62f3a-ac330258bcamr267372066b.15.1741958049473;
        Fri, 14 Mar 2025 06:14:09 -0700 (PDT)
Received: from [192.168.178.107] (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a3fc0esm226008566b.137.2025.03.14.06.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 06:14:09 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v6 0/5] Add dt-bindings and dtsi changes for CAMSS on
 x1e80100 silicon
Date: Fri, 14 Mar 2025 13:13:58 +0000
Message-Id: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJYr1GcC/52NTQ6CMBSEr0Le2mda+iO48h6GRYECL9HWtEhqS
 O9u5Qguv5nMfDtEG8hGuFY7BLtRJO8K6FMFw2LcbJHGwlCzWjHBBfYSH+TeCZ1NK9YKmcASj2s
 kTNw2jDOGg3nGiFwxPV1k34/CQDl8BTtROmT3rvBCcfXhc7g39Uv/0mylxEbqoTVatsI0t7I0w
 Z99mKHLOX8Bn977SuUAAAA=
X-Change-ID: 20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-1506f74bbd3a
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Changes in v6:
- Removes 'A phandle to an OPP node describing' per Krzysztof's comment
  on patch #1
- Drops Fixes: from patch #1 - Krzysztof
- The ordering of opp description MXC and MMXC is kept as it matches the
  power-domain ordering - Krzysztof/bod
- Link to v5: https://lore.kernel.org/r/20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org

v5:
- Picks up a Fixes: that is a valid precursor for this series - Vlad
- Applies RB from Vlad
- Drops "cam" prefix in interconnect names - Krzysztof/Vlad
- Amends sorting of regs, clocks consistent with recent 8550 - Depeng/Vlad
- Link to v4: https://lore.kernel.org/r/20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org

v4:
- Applies RB from Konrad
- Adds the second CCI I2C bus to CCI commit log description.
  I previously considered leaving out the always on pins but, decided
  to include them in the end and forgot to align the commit log.
- Alphabetises the camcc.h included in the dtsi. - Vlad
- Link to v3: https://lore.kernel.org/r/20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-0-cb66d55d20cc@linaro.org

v3:
- Fixes ordering of headers in dtsi - Vlad
- Changes camcc to always on - Vlad
- Applies RB as indicated - Krzysztof, Konrad
- Link to v2: https://lore.kernel.org/r/20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org

v2:

I've gone through each comment and implemented each suggestion since IMO
they were all good/correct comments.

Detail:

- Moves x1e80100 camcc to its own yaml - Krzysztof
- csid_wrapper comes first because it is the most relevant
  register set - configuring all CSID blocks subordinate to it - bod, Krzysztof
- Fixes missing commit log - Krz
- Updates to latest format established @ sc7280 - bod
- Includes CSID lite which I forgot to add @ v1 - Konrad, bod
- Replaces static ICC parameters with defines - Konrad
- Drops newlines between x and x-name - Konrad
- Drops redundant iommu extents - Konrad
- Leaves CAMERA_AHB_CLK as-is - Kronrad, Dmitry
  Link: https://lore.kernel.org/r/3f1a960f-062e-4c29-ae7d-126192f35a8b@oss.qualcomm.com
- Interrupt EDGE_RISING - Vladimir
- Implements suggested regulator names pending refactor to PHY API - Vladimir
- Drop slow_ahb_src clock - Vladimir

Link to v1:
https://lore.kernel.org/r/20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org

Working tree:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/arm-laptop/wip/x1e80100-6.13-rc3

v1:

This series adds dt-bindings and dtsi for CAMSS on x1e80100.

The primary difference between x1e80100 and other platforms is a new VFE
and CSID pair at version 680.

Some minor driver churn will be required to support outside of the new VFE
and CSID blocks but nothing too major.

The CAMCC in this silicon requires two, not one power-domain requiring
either this fix I've proposed here or something similar:

https://lore.kernel.org/linux-arm-msm/bad60452-41b3-42fb-acba-5b7226226d2d@linaro.org/T/#t

That doesn't gate adoption of the binding description though.

A working tree in progress can be found here:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/x1e80100-6.12-rc7+camss?ref_type=heads

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (4):
      dt-bindings: media: Add qcom,x1e80100-camss
      arm64: dts: qcom: x1e80100: Add CAMCC block definition
      arm64: dts: qcom: x1e80100: Add CCI definitions
      arm64: dts: qcom: x1e80100: Add CAMSS block definition

Vladimir Zapolskiy (1):
      dt-bindings: clock: qcom,x1e80100-camcc: Fix the list of required-opps

 .../bindings/clock/qcom,x1e80100-camcc.yaml        |   9 +-
 .../bindings/media/qcom,x1e80100-camss.yaml        | 367 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 352 ++++++++++++++++++++
 3 files changed, 724 insertions(+), 4 deletions(-)
---
base-commit: 9fbcd7b32bf7c0a5bda0f22c25df29d00a872017
change-id: 20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-1506f74bbd3a

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


