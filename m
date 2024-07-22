Return-Path: <devicetree+bounces-87256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4531938E45
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 13:48:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80DCC281D9E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0676A16CD32;
	Mon, 22 Jul 2024 11:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yzFgnC0h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF181640B
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721648918; cv=none; b=pkfPCD4JfHHuSs4Ff1UYGPQOgoVO8n+x6G4ff6vxb/H4/Mpp3Fle1CGNeAO1AB/03jFS44E6J6CV8WudHvSq3yK/OKu5mXYwrnUzOSjSJseGGIXa3FIJfPXQaSJ0YlxIgNQj+3/1il4aabiI+V3haYTsb0wOeaB+MMT/q7p5h0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721648918; c=relaxed/simple;
	bh=+PquDOHITPa6r5CwMnMw5CERKtBpvJTN4CrWndBBerw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oJKAJXDR1garsqBuFzJQYWUlc8Ul9WyjMr3dhS0NW/r+G/sf9M2gJjw3Wwo0jDqZGwX258N5WurdWrnIBLA3CpssQb0dD9fqHW+YikmrNq9YS4VFf6W8zu70EFj/5H36ukme1qQJpJuZssWE6h+LhnGpKDxDAkqRvUKaubZ9Yu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yzFgnC0h; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4272738eb9eso31488975e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 04:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721648915; x=1722253715; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=St9kGX9OtsS8CFAu8UbQinJAqYBS8p8LIz/6Z0WGcQE=;
        b=yzFgnC0hcVOQ9AlS91IdHiTydv8Rsun4d8NCuEb2tWyZe2j6DA5n5VeoD9HD14v9hX
         Wv7Pe7HzfETIothAsLPjFvxckx43tJfBLWZQLnaZl66s+23mtfELJRjEp9jgjseJDK9D
         CDWEirg4CrtEoWtsbTui9J373qIoj+HKrjsYxSipWKQeHt/DP0OslzTdog8mtmA7Kiq5
         C5BbxuBir/PgwjEpT0IWE4hPTgXZqfEVOISfMMJws4aexL4aIUAzZmACkbEE+XxBkLWD
         T1wN2DVFRvzDfYeDLRDm0ianUT1StePL6CyocViRWhxdvzQMBnJKmpdF0ioRpeho5KGU
         Nzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721648915; x=1722253715;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=St9kGX9OtsS8CFAu8UbQinJAqYBS8p8LIz/6Z0WGcQE=;
        b=jQ2AKJaeZqdHFHA2+56F0ysnRmRKWfmHrMjhr6PtFofg5P8M1g2YZioC39WM2fXEbT
         Dp4o+UkyhjnvhNe9aZsSV/KL6GU15bnBU849YixMdHWtxOs2knH/XiJwgFO/46o6KfJJ
         2aqxx8UcNo+H3XGyxeuhmaNixKAocp7lVce7wi5riVWH+5Vr69pidFCKKMqOY8cgoUcW
         nQFA59REFLj7kcBdAhwsKeh64aQmrnWBnZPEVZSngOpi3kJh0GxkDhBUWeZpYJdvWOoj
         d1lZP5fFL4ASoim4Zb5Z9cBgMBK34Gsqq8lQoQrYuF86a7gF68/fhbZNDcp6kmrjgiuQ
         RmnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhhiDfv4pc8szRK+aRss5Gi6fB2FyEAg3wT9GKAlUAWJ2HA7lMmYISSC+eDleLXzR/NWGcbV7hHHUYzAZKJFKn7Ewnz6Ali4wAWA==
X-Gm-Message-State: AOJu0Yw9xbdOMNWzYIEEWIDfRs9VUdHifjmfUa9iwrK6BzlkrwFnG1Ci
	/Im3Y416L+Aje3uYRsZ8he8HfMxgOa4dv1ylypHMjWvD9drHfe/D6kpDzRW56FE=
X-Google-Smtp-Source: AGHT+IGIO5Dn01q2v2wuXKmIKxhzHPxVVWVvt9xbD5rjykTP/+niBwSkvcQdQ8ZvaBFjgZ7xQy2sMw==
X-Received: by 2002:a05:600c:45c9:b0:426:5b51:109d with SMTP id 5b1f17b1804b1-427dc568e7amr34941025e9.36.1721648915619;
        Mon, 22 Jul 2024 04:48:35 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d68fa17csm125681235e9.2.2024.07.22.04.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 04:48:35 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Subject: [PATCH 0/3] arm(64): dts: qcom: fix dtbs_check warnings for
 qcom,spmi-pmic.yaml
Date: Mon, 22 Jul 2024 12:47:54 +0100
Message-Id: <20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOpGnmYC/x3MQQqAIBBA0avErBNUMqOrRAvT0WaRiUIE4t2Tl
 m/xf4WCmbDAOlTI+FChO3aIcQB7mhiQkesGyeXEtZQsXWTZQdFRDIVpNTuvFuONUNCblNHT+/+
 2vbUPVgTp0l8AAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=981;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=+PquDOHITPa6r5CwMnMw5CERKtBpvJTN4CrWndBBerw=;
 b=owGbwMvMwCXmtuJiX/SRuS2Mp9WSGNLmuQvtlrDT3WX4lX2hxEEp80n1fUnnqnqnW93gcTW29
 syfnaDTUcrCIMbFICumyHK46cua19udhK5srzoFM4eVCWQIAxenAExk32WGv7LPcpxO7PnvUaG+
 bW/1rz977i+6ZGf7s+fvHcPwxWuf1BUxMpxcXXO3ZMunk076N4xTWAxeyh//+F+sbtlNB8fqFew
 pUxkB
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

Hi,
These patches fix all [1] warnings whilst running
make dtbs_check DT_SCHEMA_FILES=qcom,spmi-pmic.yaml
on both arm and arm64 qcom device trees.

[1]: There is still one warning left that was fixed by an earlier patch
by someone else, which has not been picked up: 
https://lore.kernel.org/all/20240606181027.98537-2-adrian@travitia.xyz/

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
Rayyan Ansari (3):
      arm64: dts: qcom: pmi8994: Add label to wled node
      arm64: dts: qcom: pmi8950: Remove address from lpg node
      ARM: dts: qcom: pma8084: add pon node

 arch/arm/boot/dts/qcom/pma8084.dtsi   | 14 +++++++++-----
 arch/arm64/boot/dts/qcom/pmi8950.dtsi |  3 +--
 arch/arm64/boot/dts/qcom/pmi8994.dtsi |  3 +++
 3 files changed, 13 insertions(+), 7 deletions(-)
---
base-commit: dee7f101b64219f512bb2f842227bd04c14efe30
change-id: 20240722-pmic-bindings-756df58afa15

Best regards,
-- 
Rayyan Ansari <rayyan.ansari@linaro.org>


