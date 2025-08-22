Return-Path: <devicetree+bounces-208146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6DFB319C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8144B7A48A6
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D283128BE;
	Fri, 22 Aug 2025 13:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MdpWcKa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00992727ED
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869664; cv=none; b=iz2gylZTDLKHk1AU8iSpdExZ7YYsnTgDZAtEI0m4yYiB2Z0WGxrcWi2kflywoGmfjvXTRwh9SasvaPLwQIDm1TzZFC9LuWdpZY/mbCCU/8EbzY+glFJseVoK4nr10xQFukdUDp3vKkE6L6k5H0jLjNnegDnsrPcjz3zkHFFL9R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869664; c=relaxed/simple;
	bh=P47bQ66XSEuwS8+DFMM93nVxZerAVXIoifPVvrFQeRA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QuP0kbYOR9ORSWzmcLLfmecqlTWtO6Hxddp7QinMQfUbopM3xKjFObuZcLIXy9bKrRoGOXqscHfxOSYns0UAimg8q+1aTeMBfQERByvnpyNJcyMXXVVhIgN3mF8jqyNNatmsrNZIbJDc/hDp6yYqGkZviGd9gvVRWt5V0d0ut+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MdpWcKa2; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55ce52b9c8fso531751e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869660; x=1756474460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=81ejwExAEM46c1Tf2YMso6BqkcjZQkdPwjV0a8IrBok=;
        b=MdpWcKa2lbXkIkiG9WBCgvRFfyN/2KnVvjJimsuQPlGZoHob42Xs2Ka4mf3UuKVu2Q
         4AhdyXC7RU1Z7EUynAl2ZlQcCeciNyJOATZD+VB8h6Wx1WqIcmj0R5jQDWFPW+r1IZRC
         LkAbIj0I8pwRuC0cGqtDy2PkMBrum3uGRM8irOtI0L8UJ6r7WP7G5c4fNQNiBWvYmLcp
         5y+vQR8G5qFQIXBlHLcQjNxAJryx5GwETRwX3YlVgh/zYhc0PMmempgivuDWxMfZde24
         zqStD6ewKbTQWKfyijPLn59DH6rV3etmyfCV0ARECtyrySAaVty8s69qUVcP4vfUhfOn
         pN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869660; x=1756474460;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81ejwExAEM46c1Tf2YMso6BqkcjZQkdPwjV0a8IrBok=;
        b=iqZCD7ZBza+TQLqJsEzQb3nM9su7/CasV91euCqEBEgMCJ4rVJ0JfJiHKHI96e8tjW
         hGlzdr/Q8WV0+OejVBKH9t4+DuvUbsCHZb4vM6HXosMD1Eoaw8sPJe/ZdDrqV+F4nkQx
         sAfbDTZI4Q6T8MTHKrj8jXnA7R/iBUknS6ycRMrub+8BsrJtisOMl0Celv+RlbNcgIxB
         XQYxWYBSMXPjjyxI3+2JUmaBBDTBdriij7yV6gf2e8HmM4IWXjzVkWaVV+7PUXa7iTeM
         7TMOALB2LtXuWgNHgV/erJAWP1uEU0MnUz2qmMGNjWh0AnZJrm6icUdizj9yqQTZvUy/
         xjCw==
X-Forwarded-Encrypted: i=1; AJvYcCUMQ/f+BnrLurEolVO6FkqdWDLfI6olzxmjyRc7vsN7J89mJudl2fJVLyJF/AQtPB2xnAqTw9PSl7Lz@vger.kernel.org
X-Gm-Message-State: AOJu0YxRrk1ErfjgWfeuWz6Uxkal0Vk+7L9clbRIk1+zI7NvMsr/lTjm
	JIbzwHsgiX1KRmqsNnWyZp30Xy81QpKu9qJ/UWt1Ts+hh3nMzpuBFO1grLC+cO6vlaxToiSrieG
	vBc/K
X-Gm-Gg: ASbGncvdkuMOcTT2MFpCWcyoENMYwLU9kpHYroST4dQUIZngNloDwO4LH7qQRQC8anr
	6ZG/cjP4svRA6mMRFSIvv4b/j9MivtLnchOVioFS8uhH6msTxPmepBjyj1KmPdWUIdUaXvfPsSI
	PxOuXUj6E7DZmU8FtMmG2l+3cwpQp1XX3s7xEyY7Sdzb4d92pdTtYRahM+97NA9pNQqPftIuKrd
	Mo7gtMGrSI3gf07gzoZnw+Y95NwwWDy1Wnw2yLrjM7FJw+1P29MXffheaCiuO6Nhww+a0MqSqM+
	g30GC5GL0FSTXie3zGdeCYMHp9p7aY3orAssulU44cfP7WwugkXEoXole6O34cJciJgufVfH+C2
	bWMxsnGGoIjh5I4P0wF/4sljyEBOvZGqSxQ==
X-Google-Smtp-Source: AGHT+IGba0Ybvo9veKY/hDHLWA2qA1dWPIhW8WvzOmbixdwfnEXY42kkeXuLBFCpk9t4v7aF3gIfDA==
X-Received: by 2002:a05:6512:3c98:b0:553:2480:230a with SMTP id 2adb3069b0e04-55f0c3ea828mr570995e87.0.1755869660167;
        Fri, 22 Aug 2025 06:34:20 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef459facsm3556420e87.157.2025.08.22.06.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:34:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Khuong Dinh <khuong@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: apm: storm: Add default GIC address cells
Date: Fri, 22 Aug 2025 15:34:17 +0200
Message-ID: <20250822133416.312544-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=P47bQ66XSEuwS8+DFMM93nVxZerAVXIoifPVvrFQeRA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHYd6zkEgJCRnDIEPOewyB0q7QxAOC46A/Zu
 +nIQX2S9Q+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhx2AAKCRDBN2bmhouD
 1+7bEACX1nv4HM3jtuZ2d1fJYtTyID75QnLGfWcFJSoOxiotKnNJVbGWuD7v2qviIUdDvlnwyyd
 526iQuJYn+IJkIsaInLe3+Kj0OGoR9QWAul0JUAzHPFreQu3AmFthp5hOJIBN0PmmionZqJTMf2
 JfJo1Tsg9nO9QNIRGfaBO/i1hBR5k4q9CcrCL9dKkkiZFjNXo9qxjGW8BTjUmONnwFJAJaiR322
 xv9SmtHEOLzJYKnWRXYmfmvVVZbMsZ152iWRCLn+aLdup7wxfEumKnGQ3JJgUIgilFVzQ5AaL1+
 96Wksfq1YtlAP68xbCAHBhOqXCSFq7XED1smwWhsYBlxv451G5A+jUeGm0pkj5DvZc9iwxw5YCA
 mQQsPAuH6ZFU+gGjPdWLAY3U1Lt1ljuUTWI7dYXNptcriTf/QRZY0fa10nZhJrH2VAqQEJNtrui
 dQIzpClGFYKyfBUkJOn87ZHA+lg3tuCLWzQ7jhs4F1iAT2ZaFBQTyRtlyCHl5PCXMNhIr7AqRJf
 JJAJTcINNrbNS/zETeFJlHvktPo2XagRHZSe+/EMuxv+/p1G3MZUlyJnWLyiuM67tuNowCCI1rD
 rizq2UqvYpje3TAgu/7Lmk36HuQrTwGRXz4xjt4NR6Wq1RDipMeMqF7OKu0wF+yLOkWOqJHLZAz kPeYhM3+lkfC54w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  apm-storm.dtsi:636.4-639.42: Warning (interrupt_map): /soc/pcie@1f2b0000:interrupt-map:
    Missing property '#address-cells' in node /interrupt-controller@78010000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/apm/apm-storm.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index 872093b05ce1..1b9588f7536c 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -103,6 +103,7 @@ xgene_L2_3: l2-cache-3 {
 
 	gic: interrupt-controller@78010000 {
 		compatible = "arm,cortex-a15-gic";
+		#address-cells = <0>;
 		#interrupt-cells = <3>;
 		interrupt-controller;
 		reg = <0x0 0x78010000 0x0 0x1000>,	/* GIC Dist */
-- 
2.48.1


