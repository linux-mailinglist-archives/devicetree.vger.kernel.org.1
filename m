Return-Path: <devicetree+bounces-162710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 578F4A798EE
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 01:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17B323B3BA2
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF1B1F8BC0;
	Wed,  2 Apr 2025 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qZj/5GnI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC8B1F891F
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 23:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743636893; cv=none; b=qmt+90wbPHoDP0Pb9aK7zNtKdfvoSGyinD2ra4aZ8uhX88ynd/cNU9FcWZTh7vRBK+XAOmJ4KHCCSIN58yIYwzyRrmDpOPRjaTiQP8hvWEooQKhnn/Q/hR5UtcIHbx2ab2RYG08SHy2ootz1NEtoOHEfWqB9Sz+zencmXZzJE8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743636893; c=relaxed/simple;
	bh=KGOLMUoqhgT8o6lRGzM2BT8QYWSv9CekKOeXvgxXs90=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=JIUwF9TjzMf1DlyCkfaOnFoxKriEIaE9gSU+lljeNwxDW274WQYjkp6zrQfDzzONUlC1kCMq9tgo1ppN+27FRq40X69so7rZUF/mryQg9ikFjXRefdUqusM8V9pHuABUBcJBVRLEQGESHSIVL/0sA+QwIrG8pXFC40dM+O1CGVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qZj/5GnI; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-3032ea03448so275130a91.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 16:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743636891; x=1744241691; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5wAloBg1GSJoUoSs1Fe6e5szwOsXLtBgN31oDTUHQ8I=;
        b=qZj/5GnInh0GgTNYDlKb2m0KK7/rDqyB+1B/5hXyaPLCb/ZDJ/QK5v2gotsKijJTv0
         s9qub8gB7K7vWPkMG6PZ66PB37ZOnMIhOiWzbdYSOZGF/JNqoz53uMmQXgHQnyXGd/AH
         RFczcp228DqsEYLQ5xOqRw1Aa+sQLzyc0Mo4IZ7gge01nwlEgwenSP4T16Uwj6GLaRJ8
         7C2QA9d4CXWyWwugh2xNfuJHtHOCfzIRoRdurQMxHmBsSP5gXcY3QHs6G5mCQGzPR9aK
         OA8em3la9dbRgxyfXS8DCOxxcfmoxH6EYY6w2NMpsd8S6x7KgzKFopgL53wLsVQ1cLxb
         Sj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743636891; x=1744241691;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5wAloBg1GSJoUoSs1Fe6e5szwOsXLtBgN31oDTUHQ8I=;
        b=Th6M4SNax+iKdhaSopSBRZpuNqqbPwVp3KDys4W4b/zppq3YCZXj47CTsUZnY48b++
         9izC9ps23ZgXM02Lo+AShmlew0Ftxkbuv7q34zlfdNWdTE9Ui9spnODI3y8sz7r8xGVD
         wPFnj/V5C7y7fcjXOk+STT9kjFop6CmVP2GOkJ34mxL1JTsYUOcGc2i+TpWafToQHOSh
         M8fnSCaMJnyWhrmB4CdSKnr9s1Kpfh+jd2/UVcFzSV7Os47m/Og/6kVlZetHiDrd5hIu
         hrhG+SIW0k9dFPbeclXvZGJXdCN/BUzsjVACe+CTGTQBMKnJGrRWGKPXdR3LfyyEEoQn
         bT0A==
X-Forwarded-Encrypted: i=1; AJvYcCWvSbFODymzCK45OK/TiK3TyGOpRy7FDchv3psZh5BZPX/BnkpCYY3Pada/gtJkX5J4Q9LpwEn46mWH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb9HtgPbskdo4H98dL1gy+DSKuqQZG/JzlHrqmGR5gQIXbhfwT
	bZW9HUpUJZqs5e4Dg/qc2UOxEioxDUHbpdNwW+QX2WB7CfpjinWGdSKSFSCi2yrBPsVugM/XYRg
	vT2RUn73LIK/YLup5LC/wFRbjgQ==
X-Google-Smtp-Source: AGHT+IEiKn3CQVmPMTLKprEJLyfSe5jv8B99g5wOxhodbCJvNHuufgRdp4KFjo2AWb/3XvYfkZ3bTBmaSOWf4m+NNUs=
X-Received: from pjbqn7.prod.google.com ([2002:a17:90b:3d47:b0:2e9:38ea:ca0f])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:2dcd:b0:2f6:d266:f45e with SMTP id 98e67ed59e1d1-3057cbcf16amr864128a91.2.1743636891016;
 Wed, 02 Apr 2025 16:34:51 -0700 (PDT)
Date: Wed,  2 Apr 2025 16:33:55 -0700
In-Reply-To: <20250402233407.2452429-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250402233407.2452429-5-willmcvicker@google.com>
Subject: [PATCH v2 4/7] arm64: dts: exynos: gs101: Add 'local-timer-stop' to
 cpuidle nodes
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	Will Deacon <willdeacon@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Will Deacon <willdeacon@google.com>

In preparation for switching to the architected timer as the primary
clockevents device, mark the cpuidle nodes with the 'local-timer-stop'
property to indicate that an alternative clockevents device must be
used for waking up from the "c2" idle state.

Signed-off-by: Will Deacon <willdeacon@google.com>
[Original commit from https://android.googlesource.com/kernel/gs/+/a896fd98638047989513d05556faebd28a62b27c]
Signed-off-by: Will McVicker <willmcvicker@google.com>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 3de3a758f113..fd0badf24e6f 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -155,6 +155,7 @@ ananke_cpu_sleep: cpu-ananke-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
 				entry-latency-us = <70>;
 				exit-latency-us = <160>;
 				min-residency-us = <2000>;
@@ -164,6 +165,7 @@ enyo_cpu_sleep: cpu-enyo-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
 				entry-latency-us = <150>;
 				exit-latency-us = <190>;
 				min-residency-us = <2500>;
@@ -173,6 +175,7 @@ hera_cpu_sleep: cpu-hera-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
 				entry-latency-us = <235>;
 				exit-latency-us = <220>;
 				min-residency-us = <3500>;
-- 
2.49.0.472.ge94155a9ec-goog


