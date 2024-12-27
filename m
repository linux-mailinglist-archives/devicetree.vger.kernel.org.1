Return-Path: <devicetree+bounces-134374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6034D9FD4FD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10E341883813
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8CD18870C;
	Fri, 27 Dec 2024 13:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="cWOY9//L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5CD192580
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735306477; cv=none; b=kmeO/icwURSNy88jVlJVqep+Z/Qi4X47kcIJAX0eLbxTxkkthxrRyan6Qf5SSfRzGt/wfGk2UlCHF7SxNT4NEZ5xEMbVVqlpcsj8SoTa+HwQSuCL6Z81w+oA65T2TBK53zeW1/8TLnJfl55kQQkAum0Q9+24D8SuUpk/d3FWWjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735306477; c=relaxed/simple;
	bh=8kjqXPltS94c1S7IPOGP9fskrMMpPFRRdFiJifKh0YU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kMG6ZaLwrkzlSPOQ0ovPNQC/Qj1EEg1bcRfYSSuW/7fNJJDpkxfqZHcQQQuy9IvADEhznd8tNtBVpzsmi3dpPg5odhgCy+olBASj3LIi0EmcQwhDVR+L5tteIi3KZz3QglbRAlnni4M4+IzliSfqEjSiVayH6iP8agv3W7nT4Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=cWOY9//L; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2167141dfa1so85948855ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306475; x=1735911275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYjnhMa2oZ9Lj699gG71FsVduTz2eJUc4klb/tcF4uo=;
        b=cWOY9//LzyvDrcVQcItNa9A1/ilmtR8JazON2ZKe5/JAg0Jf8OLphPexd4pRYUNBIU
         OYMfLTc3vW/0Y6zWDQVOSdOI6Tx9JmH/JXqrTXV7dxItQCi8FtS/iX950cdE6Yj/s2Oa
         u0DErhl1GfCDKR5OcPSOgiS6Bb1y3nHChDq0XCsDwMM0AkvkdJgNJtY/Dh8iW07uC2oP
         UeRNZxzmt8IzsoV+ZQUofueTFTVHnFSmQZ3rA+cXU5eEkuhdds/gbg/TZnzKvxgk5Le8
         lZLIajkgbdMqE2mBj7cWgYGgR6BoHLrnte1LskSKDaIIa+l/WSJzEFWZNEw6pTXJYd+6
         /r5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306475; x=1735911275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYjnhMa2oZ9Lj699gG71FsVduTz2eJUc4klb/tcF4uo=;
        b=bfZ6jOUQXtxmvRCdXvu+yC2BYwaOMCoeQDNSwqH8xvUUwASXcHUf49lZqRbA6vDfhd
         1tKn/muTrzNrISNRFrB5I7BzP9sfXFRb9NdzHYDFfKVYN6D8pdY60sNBiV5dQ9VGRrUt
         OF27aoxvDnih5zRktAzcmn5WazRwF7+YmjWx79wuQwwL0VOnUTZhvbevQeduR6S2T6ww
         M33cEEmpp4GWyVZrNGa+qtb+kOes8SnS6ry/jhUp8myxi/F2oNyFqRWvYypZYKOl2IIA
         9OusAKxkG7NIXJCkE3MZPPQy0GsXrIe91plOTqmLs+5Ygj/Vbnhqj1c/d+Fs9jVsw47a
         jOvg==
X-Forwarded-Encrypted: i=1; AJvYcCVWgmitbNTYdqvZShdqFayG15AcLBCgTBFXrn04C05GD5+4PnzpH6Bdkor5Vkk+f/lHJtep6XjAFn6t@vger.kernel.org
X-Gm-Message-State: AOJu0YzNMDT1UIG5CGlI4/tnonV8S050RMBqPAvi08hnMHE6ns4kIMyu
	3Pg7mAX5qrS/SKweIBCHMwkGS2L6AnjhTAeNhY+DhP6UeZ2OVJ5NL7kZqDYqb0s=
X-Gm-Gg: ASbGncsnFxNomsg6mdmsg6Q4/faPlijR3EeQj4eHyGsJHqhNBQZl+EhhU0jO3V6UnIJ
	P65o7wlcF0Ui6szfLIhDt2lNJ+HOKAwaadOFpx9nckVN0VglehyYsB1EGXsLDaFlJSvkcowMbFA
	D9LdEE8VNWB+SD/jR0BizlCd1PlDBc9ORnhicH5qRbPfbAy9PtAF3fiCjjIyYn6YHzYsF16bKwT
	YQ4HhF5LWc7BY64n8a4RqrINSiAf/5doeCdD4epba22W2nvvxjTU1P8/kDZSX0bNSNiMHU=
X-Google-Smtp-Source: AGHT+IFo1AIU+xmd/BjroiPxEBcqjrSTp4da67TjD3QAhh8/9xojEWMz65v0ommdo8FpLZv3I8JTfw==
X-Received: by 2002:a17:90b:2545:b0:2e2:c2b0:d03e with SMTP id 98e67ed59e1d1-2f453633e61mr35833720a91.5.1735306475305;
        Fri, 27 Dec 2024 05:34:35 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:35 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add Edgeble 6TOPS Automotive Edge AI Compute Module
Date: Fri, 27 Dec 2024 19:04:19 +0530
Message-Id: <20241227133420.169714-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Edgeble Edge AI CM6C is an Automotive Edge AI Accelerator module based
on Rockchip RK3588M, operating with -40 °C to +85 °C temparature.

Add DTSI for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c.dtsi
new file mode 100644
index 000000000000..92049540c20a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c.dtsi
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+#include "rk3588-edgeble-neu6a-common.dtsi"
+
+/ {
+	compatible = "edgeble,neural-compute-module-6c", "rockchip,rk3588";
+};
-- 
2.34.1


