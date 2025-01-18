Return-Path: <devicetree+bounces-139419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B02A15C5B
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 11:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E2B93A8CA4
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8DD18BBB9;
	Sat, 18 Jan 2025 10:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mOBkEemz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B5E1898E9
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 10:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737195775; cv=none; b=E9LSb7w0DPPoPLLghtPwZ+JqsgA6rtcbJy8aa7/3EeRH3xW24CkQn5Rc3NfhVv3qphcVpr6w9tIh0X/qGRBVCZz9QuiiUok1geNAQ9hVqDECpeA5ZHtvqCo5MKeZ8lFDlDprBCfFy5XeqLyISFg5Ctwpq10fosb/VFaZdVCXUpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737195775; c=relaxed/simple;
	bh=yS7pWviphHy+/VdDE11hkp8/AvafePpNz+xdvm7EzUs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cxZQgteldKcWUvBOWRI0O8KiWDMBZOA9ObretBCk/mhBDHszAfYZidg9GtBa7WhBZMnnA64CGJDbk4YQnUzdOw3+DGmG7ODNyzpRDHT9WNlOyZ+4IFuUcGnqT4vMk851weuO2qpXXqj161VXo5/nfVPzrIaO8pA9Brh7sxJRvgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mOBkEemz; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-436230de7a3so3950985e9.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 02:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737195771; x=1737800571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ai7J+oOwLe4ZK3bYBh9HeL0ebyU1yyHCgDQF+TliBfk=;
        b=mOBkEemz16UNRUh3ucbJZ8bcoqfn4QD/q8N7lALCltMAZCm568wrT8h4yJGKIJfxT/
         96PNKxo0ek2XbMpt25k+b80T7SqEc58pa4+4+huHq2orDm13EtVoDsAcs9K37foQRK7+
         09BE3S3GsJjQcPC3Ljs09RcPxQ6UbcTIqfkR4kpyDJpNal9xk3jb6VIuRFXInuf0bx0T
         1jgEx5A82Ho/G4xOXIRJIbLIgg0Ack97jszNhmKauPgsawa5MJYsI6Ew95Ky5rNSwTzT
         s4hB2hfZErks/Wogw+NlMXcSLCDlwA9UTXi2TtjkoOK6NTSNX6toyojsucnCIqVZgTHE
         2NwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737195771; x=1737800571;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ai7J+oOwLe4ZK3bYBh9HeL0ebyU1yyHCgDQF+TliBfk=;
        b=OpTn5s1+YH9gK8KPjiVZoM4cJPNgoQkABfjkr3OgMLE3bDDM0QO19tCbzJA007KMrO
         bdi6MgyEaizl/vpFvmHB5bKYUtdL8bTWbQncdWzVsoQVOm6i/BvrLEZGj84q0EWxUaDY
         IN/idBpQFKdrWllMGGJjvIgnkA6c+JzjtEqDIFo0J1Bl0JcQfGJC9QoBYKgIJjVpeLq/
         IUbaZv03ZBz2wgEdXae+tao2JtYYE4mj0xLvbAE0ThE0ko1aYZkqE0VWhzWEhYEOUQhk
         igBGxz1iV5xuFNVv6XxlRQCphESqw13Bxo+nmythWJWpTnckWHxD0FapMu9O2ovkZxw0
         Wxgw==
X-Forwarded-Encrypted: i=1; AJvYcCVU/WY94lFb4b1bpuLns4F0mzxWGv95ZscCRfjBH/AQTnKw+qNR3uChPOibdE+3OmrM+zlhp6XJ/bgU@vger.kernel.org
X-Gm-Message-State: AOJu0YwtHurnGwz2kSiapwjc1PEDI3KsklE2Z2VbReF9JmDsDJRmkNCe
	NVZpzT7KqHvEqhHoClqi6LzV6C26PKAMFEA0dhm6sswO1THQ4dQkn2TTI2fxkgM=
X-Gm-Gg: ASbGncsgic7ZrYpSiABHCt4BtBQd93IargF/42KIjPC8lG3d6Wm9wDNe5clmcqMNYHb
	ZKOv12hNtidN7NtDtgoiC8DvZ538SOBkn5kJJu133LEk+UCtNctozppJszCkj7pq6G+YlQkKpgg
	oFDTq9fYP68C/Cue6CPjXJ/DYjR3x31FTTxNDhYOLcpzjhoGdtn4D1TVbeWhV58b3dQVlf4wxT1
	IZR+lou0Vh2iVmBKCeUL+yVu9E6S3dNSrZMAbMsHhK5P4l8XV1BvIK4QHEkYnVKH+8x7IEVn8s6
	/fb1or4A
X-Google-Smtp-Source: AGHT+IHm+OZqwXmPFe4WpvilrYJ7teY0b7MKb/c/rNsuT8ZHOqoFtuFSrLMWBJVR6LEQNLntZ0SqBw==
X-Received: by 2002:a05:600c:4fd6:b0:434:f1d5:144a with SMTP id 5b1f17b1804b1-438912d37d8mr22227515e9.0.1737195771221;
        Sat, 18 Jan 2025 02:22:51 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3215066sm4911244f8f.11.2025.01.18.02.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 02:22:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] docs: dt-bindings: Document preferred line wrapping
Date: Sat, 18 Jan 2025 11:22:47 +0100
Message-ID: <20250118102247.18257-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are some patches with long lines as a result of checkpatch
enforcing 100, not 80, but checkpatch is only a tool not a coding style.
The Linux Kernel Coding Style is still clear here on preferred limit.
Mentioned preferred style of wrapping long lines in DTS, based on Linux
Kernel Coding Style.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/dts-coding-style.rst     | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/dts-coding-style.rst b/Documentation/devicetree/bindings/dts-coding-style.rst
index 8a68331075a0..4772ded8a987 100644
--- a/Documentation/devicetree/bindings/dts-coding-style.rst
+++ b/Documentation/devicetree/bindings/dts-coding-style.rst
@@ -162,14 +162,17 @@ Example::
 		status = "okay";
 	}
 
-Indentation
------------
+Indentation and wrapping
+------------------------
 
-1. Use indentation according to Documentation/process/coding-style.rst.
+1. Use indentation and wrap lines according to
+   Documentation/process/coding-style.rst.
 2. Each entry in arrays with multiple cells, e.g. "reg" with two IO addresses,
    shall be enclosed in <>.
-3. For arrays spanning across lines, it is preferred to align the continued
-   entries with opening < from the first line.
+3. For arrays spanning across lines, it is preferred to split on item boundary
+   and align the continued entries with opening < from the first line.
+   Usually avoid splitting individual items unless they significantly exceed
+   line wrap limit.
 
 Example::
 
@@ -177,6 +180,9 @@ Example::
 		compatible = "qcom,sm8550-tsens", "qcom,tsens-v2";
 		reg = <0x0 0x0c271000 0x0 0x1000>,
 		      <0x0 0x0c222000 0x0 0x1000>;
+		/* Lines exceeding coding style line wrap limit: */
+		interconnects = <&aggre1_noc MASTER_USB3_0 0 &mc_virt SLAVE_EBI1 0>,
+				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_0 0>;
 	};
 
 Organizing DTSI and DTS
-- 
2.43.0


