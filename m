Return-Path: <devicetree+bounces-140248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECD2A18FAA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 025E516AFD3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A1E211A29;
	Wed, 22 Jan 2025 10:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GTyru/vm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F1D211712
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541515; cv=none; b=If7tC2gWBdg067JD32BYxatep9v9QmOYX6TA94PXMA4n7oBDD619UrbXdKOrjEFXiiV6UM6txkJMlVaQhTOGbqU41UuGzRPxhq0vafoQV+IAp5SJyp7zT7ZNGuEuCR4EqAXfhSWjbDSXBQTOC654jpe08HNGtVIP715zeDRJCLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541515; c=relaxed/simple;
	bh=mKVbeLCZ5Zhwj38zZ5+OKDCOtAlsP8KiPIVX5xjl0ek=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WtXeefhuX+H0teixbvnke62TnLBh4aSx3EVq2UtX7e3ZzrSpJgjklJ91D7PiPWHRJwH8RTrC//WLw7Y6r4pz+WL+YJNsP5mfKvjhqBtEcqA3gG+FzXk9KjlDe+2ZFNW+Zp2xGt0zVt5p0gY3jJZOgrdM+dnvKdqkxxM5vma/NFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GTyru/vm; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso46637355e9.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737541512; x=1738146312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RXZQ3iTLaTcFIc0MIbkuKG0+bnWN6S1esvXMq4e4+0s=;
        b=GTyru/vmow4cxOOR5xOyqjBGlE13YFo8dkAlKlckzenadrHMhLlKleOHKWF7R7rwWk
         vnoAhCEUgtMhmmHa8di43toyzZsWbZynUvmmbyXW8eR/ARSzfvx946ILPEFWb2eIZi7r
         Uh3qADYwPJ+d6y275Xbf5wf4ZRVFGCJCpKbYvrIi/ZH6llU101K/X6lBM0OI5ttar3DN
         KXqhQYqO4K2pnEOwZRiCoE471KPKESCNi4sRgYbEhmsXO1r+V1lY1D6QuWVxU0RKgvqk
         3vb9812ZEAmS2B2L2Z9QNP7lR+I1Iivm76xB+6VUh00ZlUhX3O4tQ/avZilDDaWppT8L
         e1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737541512; x=1738146312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RXZQ3iTLaTcFIc0MIbkuKG0+bnWN6S1esvXMq4e4+0s=;
        b=vGDYJwH4FE4An5mPJpotaW60bKkJ1QyVUjDduXnSvejejfGGLZjAghOrtsjI7GZA8S
         kTphjyZ5jYRXyfjw/m+aQMYy6CVO5OIBD+USTO5hH5ffp24a4fU7HGuEqp57uk9B+Q8p
         qag6Um1YS75ZsjUn+GrEcRev5rUIGvbG9Yb+Ljta6/zxar0jCoGeQjji1URTUe8GLCzn
         wJmOY9dvuH7HZMBJuV0JRqrQbHOO5+anl4L9O94LLAUBVpGLb/mlJ9APrjq4YwvDJ51a
         IyDzdl+Ncb4GDX27Uni1y1IWYEg6yHg7yxcpvSWDcLpU9+P2h8OPrD5PwhkTP8ZW7oBA
         UCbA==
X-Forwarded-Encrypted: i=1; AJvYcCVUMrzpCdQ3bSahXemry0i0a9CmriTyTj7AmY0u/2snALwJ7AubH2Qz4HL1TzKGLOtMhQ12sX2A2z60@vger.kernel.org
X-Gm-Message-State: AOJu0YzlWKZ69AhYK8s1rwV7n51o+8DTMce4ShPb7XRFmlqjMgGdihJu
	RzvCCzFH7jZazo7AV61VbU7dMfnW6+5inBguIh7uh0Ikl9gVENhl3GXni4n14dCMPXhYTy0yf5/
	d
X-Gm-Gg: ASbGncsBNAEuxNxgbEkMfo26pt//aHnFdc3Ct2pLuxCoHxGUgVfdErw5mbinris0Xlg
	7tuadfG+P1g0wMxO9xJRaoiG7CM2B0rPS02/M1EHjQqoF/whaMtdYAY99jgvrxqKCCyFOoavGI2
	SJbSK2H2+wdtUrVNAmMf00w/GlGH7yl2yU2ELDNAXCaF7UffuhkwxG8NTQGIjBhSfNDmkeB2aYa
	fRzz/wL6yBZrVWDZFg1GlW31whoeO9Mba2k7sQqlvV+Zh/FJhF0eAD9gRHjdjR77Ao=
X-Google-Smtp-Source: AGHT+IFcdjMkbBVSBvPBcUMc6AIbuC7ugMJHA3X8FNx9ozrzI4NtnIr1pvfbPlrQNAdMI3bs+KTBkQ==
X-Received: by 2002:a05:600c:3495:b0:434:a315:19c with SMTP id 5b1f17b1804b1-438913bdb0emr187626515e9.3.1737541511808;
        Wed, 22 Jan 2025 02:25:11 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31a1e69sm19459595e9.11.2025.01.22.02.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:25:11 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 11:24:36 +0100
Subject: [PATCH 5/5] arm64: dts: ti: k3-am62p-j722s-common-wakeup: Add
 ddr-pmctrl, canuart-wake
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-am62-dt-syscon-v6-13-v1-5-515d56edc35e@baylibre.com>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1091; i=msp@baylibre.com;
 h=from:subject:message-id; bh=mKVbeLCZ5Zhwj38zZ5+OKDCOtAlsP8KiPIVX5xjl0ek=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHK+adOnjcd2UZTr56pOKd2zOl3dUPlBr4q99Wetyy
 7w/a9a+6ihlYRDjYJAVU2S5+2Hhuzq56wsi1j1yhJnDygQyhIGLUwAmUsfPyLDw+WttJy1+tr99
 dzSrZwsxH9jckPb5WdzmBE6LUF7mtqmMDNvC9OKt/t86fkpoR0yisVH3jj7BxZaTJ4ipL3B4PJl
 nIT8A
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Within the wkup-conf register range there are ddr-pmctrl and
canuart-wake control registers. Add dedicated subnodes for these.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p-j722s-common-wakeup.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-wakeup.dtsi
index 6f32135f00a551cfea4cc896fc03147271eab9b7..3daade3f4ffcfa669f109200e86c3e11da34e70c 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-wakeup.dtsi
@@ -39,6 +39,16 @@ usb1_phy_ctrl: syscon@4018 {
 			compatible = "ti,am62-usb-phy-ctrl", "syscon";
 			reg = <0x4018 0x4>;
 		};
+
+		ddr_pmctrl: syscon@80d0 {
+			compatible = "ti,am62-ddr-pmctrl", "syscon";
+			reg = <0x80d0 0x4>;
+		};
+
+		canuart_wake: syscon@18300 {
+			compatible = "ti,am62-canuart-wake", "syscon";
+			reg = <0x18300 0x44>;
+		};
 	};
 
 	wkup_uart0: serial@2b300000 {

-- 
2.47.1


