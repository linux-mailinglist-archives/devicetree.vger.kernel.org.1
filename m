Return-Path: <devicetree+bounces-171786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF0EAA0323
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 661C9188845F
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BB62749CA;
	Tue, 29 Apr 2025 06:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pxPPNgVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA0317C21B
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745907586; cv=none; b=JFhVXBxwsXlSzE2IfxLbW5SG2B9SilN1blj+OHNdY4k4fcgqBLBhhFtZKvos8x+4/EFH9pGPCSbIykGpGoexs7Eng+ilkaz4QnwzIz6swJjekVg9vMzNuirIBmosIxZrJcxwyxhrih/BAUcyvQqN/hxgh9E4nZcsEhZqpgYpJk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745907586; c=relaxed/simple;
	bh=RuZmshfx0WMimIm7Tn9iytcwybbaUd3KhINLT19ml28=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AOyh4Tr4lvrn7zxzZeycUDdqR4sL3zuUyaDeH8ihb4VgDMuDomreGvCi24/WrDYKmuBTd/gKpqrgideJKqEutMm4cgzqPoJ6+jBhENzVZTcwOJfpR1VDNUytnyUVo01y7ekyWUXhO49jk8Rno9h1OjL/BK4y/0hTXTfvnhCL2pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pxPPNgVk; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c31e4c3e5so3489589f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745907582; x=1746512382; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uFyZjvPBAmbsxn7nEC7C02rpwZ1NH2zXCqf0IPWpsAQ=;
        b=pxPPNgVkKXp4UlS3/CiuLXny6rHNv5fd5eVuMa5NT7JcmWKBXrrF67D5uDTlnaO9Ug
         R4I91r7tG9cVv2pUfiTbl/GXfWsSRLVpwvZl9sYiyngQzcbNzdB/0k5nAYGP5dDCxAlS
         MNuV6+29PjtviSfNCZAU1+QOIi5Hp8+XM2hIoxaWHH18Edv/cVJgybV/DGBntkX1ZF/3
         2EbNWP+Lt154DXmQWff3tUb7SF9vJZBWamNnW6VxOjB+bmLIAPdz3CvyUXz4q95qpFZV
         ikiiWSICsOGHT/9YDzICXUHmjhPJC/fcZBojCTvU7Ui8eaORHUIJ41hrDRQGfltXojm+
         KqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745907582; x=1746512382;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uFyZjvPBAmbsxn7nEC7C02rpwZ1NH2zXCqf0IPWpsAQ=;
        b=Rxo5ENjzY7WKj7iUjJi7NHQTyA1ffHoC7kPe/YqQHtnhJ0hrdArK1KmxzjjoSnCMV7
         JRBXPv/1/F7ggHvTFbVOJtKi6V2KHIQGZkMDQGzBAc76ZMXpX7dlsrYLWvA8ZV7ndx2X
         e9uL4aR7iRTqemZ30wxC+V+SWVLhhTFx6iiFRhTAm7oo+pbEVOBR0ngah0BMmKQGfR0X
         Yk7WF1CB5B490OVtBjnE1+GtuW6ciNgZClbB9X6tREuxJ02nkQhVjJLnkBJizhCeM8MI
         gpAddKPyslwe5gIFCWdu1YqdTl1a5lJWpIEWcvTBTbh+FH4V9wRhpM5irKlIGCh3XkSd
         LKcg==
X-Gm-Message-State: AOJu0Yy7irDCCFc2dfIOb0UFE7iVAa64VJb0hbunDUvu03Rkq38ppx40
	ikso1ePG7wAAxCZdNhgqbCWyHX/D6DD/I9NDXzMZuIAzgpAdMa35UlS8mOvpJWk=
X-Gm-Gg: ASbGncvrocvqPB1VDnsMquQ5CkTC9N1q5+QRYWJ7K+88HlqLYbMukzIxqbwHBFQkVP6
	rtxy/2arjeecqfJMeJnbkxT7s/jn/ybtZbi7SWC5c3rD2UrsXaRlB13aWdYvrRQ7f0jsWWan6JI
	VPKkdkqURVAtzrMdoiZu+rY1gwVb+0D57M6Mm39OHOfpb6uTYFpvdCFx2yJB9Q8TuB3ZFcQ72We
	/msLXPJpWM7mTh5TeRSYJhEaWfvJzKjg5rTg+R7kvsqpvHd6NtacFETTRQKZ3w6cAEhLL7y5rrF
	r9DVm2AIPNHUCpO+KEEp6o47BtG+R75cYfgd0pU302xKbEq4bF1JvnG/YRseNyEGnJGqYgs=
X-Google-Smtp-Source: AGHT+IGzg8u5L2WOlzYwTof6+sSIg8lXFgr3pYwOWiVWKlAozVNfU+0kERbCJNCsNMAIv+NpvoSqVA==
X-Received: by 2002:a05:6000:4382:b0:390:fe8b:f442 with SMTP id ffacd0b85a97d-3a07ab8c463mr9060355f8f.54.1745907582493;
        Mon, 28 Apr 2025 23:19:42 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.90.246])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073ca4e50sm13302616f8f.30.2025.04.28.23.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 23:19:42 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v3 0/5] Fix gs101 CPU hotplug support
Date: Tue, 29 Apr 2025 07:19:36 +0100
Message-Id: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-0-1bcc44fb1d55@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHhvEGgC/52NQQ7CIBBFr2JYOwYGaq0r72FcINCWpAKBlmia3
 l3axIVLTWbz5ifvzSSZaE0i591Mosk2We8K8P2OqF66zoDVhQlSFAwZB+XdGO0dQgcqTND7MQx
 TB2lKwTiNUT6gtU+TIDNgbS21UKJqKCPFGKLZtiK83gr3No0+vrZ4Zuv3v045CqrGpj61R14zf
 hmsk9EffOzIGsr4kVdUYPWbHIu8ZRWn2jRaCvySL8vyBuHNM4NEAQAA
X-Change-ID: 20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-1f7ad4c45901
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4126;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=RuZmshfx0WMimIm7Tn9iytcwybbaUd3KhINLT19ml28=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoEG976bf5mwHz8je/RtwgP6enUETGQ+/11sFwd
 G9ztnqgr0yJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaBBvewAKCRDO6LjWAjRy
 upJED/0euGHEqK1Y6ppKAivCbCa/3MatUq0YyXDb0CCelsbCJFnbI1Pi6hWJExhx5UYK64lvIMW
 GmFozjAZD48cC9MBvoTweUds2QFBKToCjzMvhHlIBIjUrOzogPze9Uyr9hSD4miZCwu8+gqY5f+
 FTK/ZJRKVMQ6eLEb+cACcLWHIC6TEaNRnb7XpjDmkPbNOPzGmIq+pTruJDRPiQwEVGMX1TOUukJ
 r4aAZOGtcgGcXUk6XJ86OYx01cNBYkcSSaxHffjFJg0EE31laGnGuQLNP6JRPUzsa8Bc9vHclp0
 awLE9X3ubQ5CRXHiSqh5ahOt50NNIdnoBBImX9b/3Xu4p8elNQjcdyzQAuFpQDEYHdfDWL3Y6x8
 6yAWT6PX7j/HKWF6D8ZwGTFGI8ymfQZgjMRYLFHwHVxnJKBIEq7UKpLPPh4UNElqfZKMBMlB6KZ
 YnwwMNXF+dn0fQWSbr0HRhBav1uU1Ei6nuCsZ7h6ajZRo8YcUZLrPa2lBGOyoYahi/NdLp1cCZN
 OSuT7Q8tIypLXtfF9hOBs5wpBfg2Y/gV7aDDs+VlK5kOZdhgaPgM+Fzntl9nUjT17S8kovnIkhJ
 SsOQKQ1uuZOtyg4Mxo6pT0z86yCQqLIG52iviGixThe3BX2h512A4H2lkWvBXK+QkrP9xORYnV2
 NI4mJ1dZYDEAjtw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Hi folks,

As part of an effort to make suspend to RAM functional upstream on
Pixel 6 I noticed that CPU hotplug leads to a system hang.

After debugging and comparing with downstream drivers it became clear
that some extra register writes are required to make CPU hotplug
functional on these older devices which use a el3mon firmware.

This series adds support for that programming the CPU_INFORM register
hint required by the firmware and also adds support for the pmu-intr-gen
register region which is now modelled as it's own syscon. With these
changes CPU hotplug is now functional.

It can be tested with commands such as

echo 0 > /sys/devices/system/cpu/cpu6/online
echo 1 > /sys/devices/system/cpu/cpu6/online
[   15.880597][    T0] Detected PIPT I-cache on CPU6
[   15.880638][    T0] GICv3: CPU6: found redistributor 600 region 0:0x0000000010500000
[   15.880685][    T0] CPU6: Booted secondary processor 0x0000000600 [0x411fd440]

This would (prior to this series) hang the system.

As more of a stress test, I ran a script hotplugging CPUs 1 to 7 in a
loop 200 times which also completed suucessfully. In addition using the
recent fuel gauge series from Thomas we can also verify that the power
reduces once the CPU's are offlined.

Note 1: It is highly likely that similar changes are required for other
Exynos based SoCs using el3mon. For anyone following along who is
accustomed to looking at downstream Exynos based drivers this replaces
register writes defined in

drivers/soc/<google|samsung>/cal-if/<socname>/flexpmu_cal_cpu_<socname>.h

Which are used by files in the cal-if folder and exynos-cpupm.c driver.

For the moment I've used the GS101 CPU inform register offsets directly
but these can be moved to driver data once we've established other SoCs
benefit from this.

Note 2: To ensure older DTs which don't specify google,pmu-intr-gen-syscon
phandle still work. The driver only issues a warning if the syscon can't
be obtained, and the behaviour remains the same as today (system boots, but
CPU hotplug will not be functional).

Note 3: I've added the bindings doc google,gs101-pmu-intr-gen.yaml in a new
google folder as it seemed odd to have it in the soc/samsung directory, but
it's likely this may be re-used by other Exynos SoCs that use APM/ACPM.

kind regards,

Peter

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v3:
- Fix  $id, relative path/filename doesn't match actual path or filename (Robs patch bot)
- Link to v2: https://lore.kernel.org/r/20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-0-f1530de9da42@linaro.org

Changes in v2:
* Use BIT macro (Kryzstof)
* Use gs101_ prefix for cpuhp functions (Kryzstof)
* Model pmu-intr-gen SFR region as it's own syscon (Kryzstof)
* Use regmap_update_bits() API (Kryzstof)
* Program hint on current processor (Peter)
- Link to v1: https://lore.kernel.org/r/20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-0-c72978f63713@linaro.org

---
Peter Griffin (5):
      dt-bindings: soc: google: Add gs101-pmu-intr-gen binding documentation
      dt-bindings: soc: samsung: exynos-pmu: gs101: add google,pmu-intr-gen phandle
      MAINTAINERS: Add google,gs101-pmu-intr-gen.yaml binding file
      arm64: dts: exynos: gs101: add pmu-intr-gen syscon node
      soc: samsung: exynos-pmu: enable CPU hotplug support for gs101

 .../soc/google/google,gs101-pmu-intr-gen.yaml      | 35 ++++++++++
 .../bindings/soc/samsung/exynos-pmu.yaml           | 15 ++++
 MAINTAINERS                                        |  1 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  6 ++
 drivers/soc/samsung/exynos-pmu.c                   | 80 +++++++++++++++++++++-
 drivers/soc/samsung/exynos-pmu.h                   |  1 +
 include/linux/soc/samsung/exynos-regs-pmu.h        | 11 +++
 7 files changed, 148 insertions(+), 1 deletion(-)
---
base-commit: 393d0c54cae31317deaa9043320c5fd9454deabc
change-id: 20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-1f7ad4c45901

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


