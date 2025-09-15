Return-Path: <devicetree+bounces-217584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C86B58599
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 21:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03994208AA9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 19:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC555293C42;
	Mon, 15 Sep 2025 19:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="RFtNbGWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF0528CF5D
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 19:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757966040; cv=none; b=oRG31IkLC4vqT3Qckllj+gDAb8pmSFt9WIJqaR+QAlW+ftO0G6edczfpdt2uyolKV1PxraHVNYU/oUzLDMha59v4chSBriyUZG7th01nfsbOUdpfudOonMji0UNmJcnjTMq4pUxUSbD9/l0beiJCKl+rPce6xwd74ag/lYYgoOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757966040; c=relaxed/simple;
	bh=jH9/bubhcWhRpYTPmVEynThTP5AYOEziuVsPlmZV1kU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZtnzjcfUpuR4FJaLXyIx4oZ6HTGsdWHmRIaQ2AUqtKucmRRBXgxmdHfosO9EKaoSRcazhHZWFGH6gZEQLoR8MATYvfXod8+KV4UhCYZ6ee1cNkcQKqDNNkNxXQuJ/TskLSbrc1Fl4+BgmD1mfuEoCN9sjKdHjVq0MWcS/H2UeLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=RFtNbGWU; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45f2fa8a1adso9238235e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757966037; x=1758570837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JYpBInbhYba1I5IFzkBXif3pXoZfr9uL09LB08J1+iU=;
        b=RFtNbGWUsyQeOfrVcRCSlKAFl+Ipz6TYVd7rh8UOCcEnvnpICMOdS+Ejd/bnfPDK4L
         BrRHDYMVQWkldkgrn7DMVRgkGClx6S5yuM/EB03BWSJ4sfMEPKN9KW72otV/a3+SVL26
         RVazHba3veFmYefqg8e20jjlRr8q9BDL1BShg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757966037; x=1758570837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JYpBInbhYba1I5IFzkBXif3pXoZfr9uL09LB08J1+iU=;
        b=mftLj+cyb4NavzaMpxuqKX9tzRt225RPtHt2Hh8/vBMrZevmyqGus8sxUAFM9HTr2t
         b2x1j/DrS0snfJkd4QNZLQWM+rxEyFFS0Cg4KfPjRl+IZoGmBXDysydRUn7iC6FhIZhQ
         0d76rSd/+JKL8BC+iCfO6VGv0WAKFV/utz73z5GfhgUeWOFs+XWqIeoe+ETqAFSbZms2
         dNYm2wZKACby27begCX3vsOQNCnxDqcBsLzCDgF8ozD8AaEEu7srnufvvCyiUUvfdqRX
         JH7hk0JThj+3JjR6rj7fZ+weXZRkIhY1oNZ+lzFDgwKLwgOb0V3YEOTCSy+XPeM7AdrQ
         yn1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVVeizx+M7Z0QMj7M4eyDHQh4/WWtLq96RWX/S4dEgqDhznPoEsSk937YLu0IuVuv+EDymTGjD8DjOB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywulw9VnFuXkwvCFCMX0bl2p+pBeGEyW8MTuCzN/pDu5/p6tBeP
	ptQ8bT7wx9d3dfcEL2olgahSZ4YeM+akYvxXXccR4oufQYWijoweRqPMmVBrr/bRh9E=
X-Gm-Gg: ASbGncvAkKm0z67ikz/QlJc+80LldR9dmVySgqf5H6vAC4KckB2L8B4Qg15OSnx0Lss
	WSSDjhO5AEurNFhTEGfnnSDhfC6hQ5VxNG/A4niWVblT5fCYdzFC7VQ/m3B+vbrc+dD51cS+uLE
	rhwphGTgatA54KOFc1j18x7dNB2Eajwgpv9j68OVhCePaU1jiPho6vkVvtUz7L/E5baOqpplNDq
	d3LyL+6ZTQLoMV8uWpcwnERkAy0PmEI469Mu9O2J5CdXv/IvZKIphXbUP5VaHRYpJAgoq8ouSGR
	p81Lf1W5VvCabf4LXeik8YO1RhZS3XMyGkK8ayWyl9P6F2gi2oJ6K6s257k6hrQeKxzSgkYwnld
	o5k8qfpyYG23BYc9BpDi210RLIJOkPwARPVj0FYmyK5ACquPkApeFRQD8W0Wg9HY=
X-Google-Smtp-Source: AGHT+IGia0IZ0pDiz5Yw5I2pPYwxxrez1ql7kM6HUI8y8toQ7q5lIloMT59fhRpk+Z7OXMtwBgr0pQ==
X-Received: by 2002:a05:600c:c8d:b0:458:b8b0:6338 with SMTP id 5b1f17b1804b1-45f24060698mr116466355e9.6.1757966036748;
        Mon, 15 Sep 2025 12:53:56 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.230])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f32640f49sm530985e9.9.2025.09.15.12.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 12:53:56 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH v3 4/6] dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
Date: Mon, 15 Sep 2025 21:53:06 +0200
Message-ID: <20250915195335.1710780-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250915195335.1710780-1-dario.binacchi@amarulasolutions.com>
References: <20250915195335.1710780-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support the touchscreen-glitch-threshold-ns property. Unlike the
generic description in touchscreen.yaml, this controller maps the
provided value to one of four discrete thresholds internally.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v3:
- Remove the final part of the description that refers to
  implementation details.

 .../bindings/input/touchscreen/fsl,imx6ul-tsc.yaml   | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
index 678756ad0f92..6214d8be5a99 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
@@ -62,6 +62,18 @@ properties:
     description: Number of data samples which are averaged for each read.
     enum: [ 1, 4, 8, 16, 32 ]
 
+  touchscreen-glitch-threshold-ns:
+    description: |
+      Unlike the generic property defined in touchscreen.yaml, this
+      controller does not allow arbitrary values. Internally the value is
+      converted to IPG clock cycles and mapped to one of four discrete
+      thresholds exposed by the TSC_DEBUG_MODE2 register:
+
+        0: 8191 IPG cycles
+        1: 4095 IPG cycles
+        2: 2047 IPG cycles
+        3: 1023 IPG cycles
+
 required:
   - compatible
   - reg
-- 
2.43.0


