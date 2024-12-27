Return-Path: <devicetree+bounces-134372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A299FD4FB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 871EA16167B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5320F192580;
	Fri, 27 Dec 2024 13:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="Zh9h+kGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C2C15665D
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735306470; cv=none; b=H5wsLUQt8NOxbcCTVbJW75PC4qjFSpF8PMKztdIqdFfhnIhdQz/cfXkytXuNBiCi/r+lp+vebGbpPBJKBbQDD1nGHo4hG9cV79I6Z1pVh2pB9dfyXISg7f/1UXNu5ZNeP8bUHZbgmBpF45AfgfARy5KvSoobTkFGRDQJaXfISKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735306470; c=relaxed/simple;
	bh=yL/tRED+4bpMH/ENMt3/jxoZxHbY8BC5TG/CpJyMq7o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=PxZh9Pkh6GaKFab/hoRwfvRLN9xGAQ4yjlMomxORneafzbHTEnKPQulRgYOk/lGUo+Sw0zmmHHIawPjpFY6mg0njfK3RgzbmDCv7Mqdkm2IM59vWGFabAkZjhzXr5xgxifpZ0YL7KNiM1GfUjOSNCXZnOX6PaLod2Fr82y4nStc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=Zh9h+kGk; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so7466568a91.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306468; x=1735911268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gbjXz8a2aEevt71JmvcBPYww5A/leuvh+vbR5ZRlWQM=;
        b=Zh9h+kGkgJTcMOUKWM28wKdYtqWYVYQZv9/dN0nrkBaOAJjEpLih/Kxk0aDlFJEUoR
         Jy9knFrp9YIlMGn/YMCnLH7ap655Y7HO+xxKv9oFm8F5J3/egV6wLZQH5CRQUuBPz4oQ
         2Pge91oFkF99xHRtB6yEJt1baE4JgxUAybvenuxfqlV9L5BI40ILNFXyfuYBWG5ZP4Zd
         li+O6RxJLXTBz84KsYWlwdk9mJiGuYHa2ToFvszrpnLUqCfK2Zoa7+PEBHNIhI9Z7GFw
         +GucU5w637FuogYKK8m+UJlUaOxQU1N57jdTvdcm1spQ7tEctQCMopaQ9q1T3aQN4HjW
         DqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306468; x=1735911268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gbjXz8a2aEevt71JmvcBPYww5A/leuvh+vbR5ZRlWQM=;
        b=sAbUfxVZGAecY5/auwkU0r7HVYkKqcbzg/WYgw4hl6JmDIL1n2H2hz7102VrZ0c2o1
         vp8cEvt4DcpJw0r6XpPT+Ly5RZxF5BBXcx8yMB6IZ9A8MKacRysby3H07ueVQsjRhneV
         289fN6DukXUEo5diPCzHmcd4kduXOAGsz4aiJIHXsdMOL5+DCkVj3SZpsrnxTTVI7gER
         QViAqPGu++fFZR1Je+socgBFHdye+vAlypT8l9tgv22ppGqiNtaq9z2MJbdnDIhNVUyN
         8rsrlSFzcmB8bmbJbz7/a1uPbclwNrSXdMVZ3VN3+Y65mnBuL+dJoj3fk9+pCRiyJpN/
         lIcw==
X-Forwarded-Encrypted: i=1; AJvYcCUJy02Ewcw1geEEd+JZdYwnIgD3CJWH9lxl+S857PoW9Ud8/Et1yuB73d4DqeHmduAalS44euia5r/5@vger.kernel.org
X-Gm-Message-State: AOJu0YwEHaHMQw1nfJ4zY2tibWyDY5lTCGZVozigsHnofs0GKHTpOJUc
	wIxmEPzA93r72MvvTuq5H6YN5blB9FdJmeYYNXVyq+RKGxElAn9+WjWZMUyswQc=
X-Gm-Gg: ASbGncsSXG1Vc2lnIn/UIAPS/srXne90Fw4jllXDrYZshTXPUcNoLvVfxZMm1cFk23Y
	fjRVDGhx8r3Te70Ypq8D34bXVIb+j/k8b9Fqn7147VTCqF1gL7o8Eekd+MERLrvMKGbDehGu3HZ
	jdkVhW61VjSqTqIgnBaX6uzq+MU7aliJWIy9BM7llCzIZun96ljKdzR5mez6bPH9MbdI4PPi2O0
	dlrn8IXMX3h9xhHw/64EO1Crg5kow6FjXCOLlUxJiqNNVN7BSMiVtDxuwkl7yD9dT0AsFI=
X-Google-Smtp-Source: AGHT+IEt7gViFQxiLT8qwFNX3IkYH9GYMt+Tf5HsK27rfbJpvt2pULbbxU8yBcFgcbRCDwUYnWnfew==
X-Received: by 2002:a17:90b:5487:b0:2ee:d433:7c50 with SMTP id 98e67ed59e1d1-2f452ec360cmr35336365a91.23.1735306468234;
        Fri, 27 Dec 2024 05:34:28 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:27 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
Date: Fri, 27 Dec 2024 19:04:17 +0530
Message-Id: <20241227133420.169714-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Rockchip RK3588M is the automotive-grade version of RK3588 SoC and
is operated with -40 °C to +85 °C temparature.

Add rk3588m specific dtsi for adding rk3588m specific operating points
and other changes to be add in future.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588m.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588m.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588m.dtsi b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
new file mode 100644
index 000000000000..0bbeee399a63
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+#include "rk3588-extra.dtsi"
-- 
2.34.1


