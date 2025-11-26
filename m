Return-Path: <devicetree+bounces-242504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C90C8B323
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7C803A48EC
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE2927EFF1;
	Wed, 26 Nov 2025 17:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L/llcMVL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33D026CE1E
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 17:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764178102; cv=none; b=JEs5/JD/InCHc8NE8ib2KD2rfEjTpquBd8qPZZ9/UYmoyT9A7lsTu4ER2jA/CMt5nx1WEBEu1yQEsrm2XYdRLdk7U2d2shty+vbWHbbeLZ8roS3l6+/TDW1sQzFBTXC2DI7Aw17371sFagaGcQsjEHtYe1LCFhWL6VdPfrpqR5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764178102; c=relaxed/simple;
	bh=lsSHuC069xpQipphElBW/HG7hp8LOPDCQOeided1vIw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GsUb/3v99HARpI0gqa3c/plkESIHysBPCvWnEGuuQJTH5ad6saZNcOB9eCYyYXkb9c2kNDf7Kj7H5MUp6p2zv7YdVg7S2fNlHEwoUrdSgwe0baNLk6kp2jdz6rK5DdeRvMZHsjUe8R4nxQd3ePpSYIJHZrDq6hMB2CcE+mAHc90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L/llcMVL; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b2dc17965so68529f8f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764178099; x=1764782899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5iIZajcwOeO3JlEw92TE30lt4StjWSsYhVcOwVzrTLk=;
        b=L/llcMVLHHt9R8+HFYf05tNHrH/UkHI6bW3eI36vfXjXESdKrWOJC2ABSPkLuBS0z8
         zmgEIBW9BlA/b8DZ4juOLGECL5t/TPCFbzDQKMcQP3HZcu68WCA81ocge2h6dJ4XWTqs
         RxnMpRu/BaCn9sE8rVubFZI2pAYHWM2jUvrCI5N9fqZuAUWCaMID/pciYSrH3f700vMl
         7mQbVa+QkANrYcaYf/YOB/vuSelCWegLVo/Y7VTb3YtcC02uM+eGnpAFQZKmjoMUfVqd
         IjvNSqnHzdp9PFxYMn8t0z4tPqI9da9CDMz5cZ0F/zPx9GWB3uxD4i11V+sDqQC4L+XX
         UaHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764178099; x=1764782899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5iIZajcwOeO3JlEw92TE30lt4StjWSsYhVcOwVzrTLk=;
        b=E8ZYe0Uokt//r+SlEOfpcYNkNaiKZMH0LGhOqkstz4+yXwsvkUFk9akyieG5OLH5Ve
         8/Or8tjqxMZjRHeo3uvf/zT6RdXTdUISIyxGNs6X+GRGkBhg6xelpv8A64LpU6XWH6AF
         PKn/l1IzCbooUzysVuyr4cAZ8tG5IS/rxh9r+R1jHXL86jeK0SKFxHn55HPvv9c4g6Y5
         KxUIchHUMB+PGCB7CFqagwKNqcE+MSug0Sx+czp8dC9rEg72iO54Qb3sMc/yTgvLsjEJ
         /IyEVbclA7Bs+yqQLfVsvrdiEzbLEGoDx1BvNFK+WM6wJkuUsBdn1xBMJi7/3ToJWivf
         1rGA==
X-Forwarded-Encrypted: i=1; AJvYcCViFbc6k3W/ODl7E5YDXg/9eBvDjSX09VD0GkYC2cEJyI/tj7ph/8F12FE8s8plE7FH/b20DmlblqmL@vger.kernel.org
X-Gm-Message-State: AOJu0YwO2GKFUVAKrFfFIDHs0Xgf7ePg8LGOJFXQmTqUafeNMmXnqQeh
	VdBQ4b8htp7Se3C0Vy8CD8tbQAZEiEKpXm94ju9hEJAW2id8P80DbrkH
X-Gm-Gg: ASbGncvjxi3Me+0YszRAIa12alw2CuBOakFumO8w9kB44n6hb2hAi6BVAPeLJ8QLI7s
	s4cdqftjnosn8RcBiLyk7y9FOaYCw7Ro9/4PjEXPAcjkhSZ42MVJLq/fyNk9eJH9tXwL/oYLFCp
	ZD7PIIjYRiX3Z2FmSBOrBbOCjlIl7CyRFskI/titqBWJVjII3Vm0XKEQhSTRFLhmaKUBh5NYgP7
	QR+tEtREc3CftQLNOCio4lldeJjZmTmNMwHbw/k57ngciyB+G147weVPK9oiD1ERH8dYfF1Djcb
	xUp9suAwLpLUSIht0W/fT22uBVCbRR3GTF0O2j5JWSUxBDA5R9SCFpDHOmG4yn2mENuthCvq+kG
	kP4a1/uvq8qC7IZpbnxxt2ID9tFmqp4cW8ELZPonRh7Pxjtnv3zZ3HnL0VbFGjv1P27tHsOS3nK
	ga/qx3LdpRJ623DxKPt+bluP2lp3Ne+XzTXfKqbPkvibZKlmmOgKjXhrg=
X-Google-Smtp-Source: AGHT+IHkE1xTyUwd1e1nQxaACHjDh3t9YedvuMNt3v7wo3xJTnJ11as69WRfu3TcTpDawcaME3AxHA==
X-Received: by 2002:a05:6000:2881:b0:429:bc56:cd37 with SMTP id ffacd0b85a97d-42cc1ac9ce9mr21647296f8f.6.1764178099006;
        Wed, 26 Nov 2025 09:28:19 -0800 (PST)
Received: from dev-AI-Series.. (bba-86-96-93-57.alshamil.net.ae. [86.96.93.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f34fddsm42423862f8f.14.2025.11.26.09.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 09:28:18 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: inochiama@gmail.com
Cc: alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	huangze@whut.edu.cn,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	looong.bin@gmail.com,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	sophgo@lists.linux.dev,
	thomas.bonnefille@bootlin.com,
	unicorn_wang@outlook.com,
	yu.yuan@sjtu.edu.cn,
	"Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH] riscv: dts: sophgo: cv180x: fix USB dwc2 FIFO sizes
Date: Wed, 26 Nov 2025 21:21:16 +0400
Message-ID: <20251126172115.1894190-2-stavinsky@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611082452.1218817-4-inochiama@gmail.com>
References: <20250611082452.1218817-4-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I've tested the current dwc2 FIFO configuration and found that USB
device mode breaks in ECM mode when transmitting frames larger than
128 bytes. For example, large ICMP packets or iperf3 traffic cause
the USB link to hang and eventually disconnect without any messages in
dmesg.

After switching to more conservative FIFO sizes, ECM becomes stable
and no longer drops the connection. iperf3 now shows ~130 Mbit/s RX
and ~100 Mbit/s TX on SG2002 (MilkV Duo 256M).

Fix the FIFO sizes accordingly.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv180x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index 1b2b1969a648..06b0ce5a2db7 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -438,8 +438,8 @@ usb: usb@4340000 {
 			clocks = <&clk CLK_AXI4_USB>, <&clk CLK_APB_USB>;
 			clock-names = "otg", "utmi";
 			g-np-tx-fifo-size = <32>;
-			g-rx-fifo-size = <536>;
-			g-tx-fifo-size = <768 512 512 384 128 128>;
+			g-rx-fifo-size = <1536>;
+			g-tx-fifo-size = <128 128 64 64 64 64 32 32>;
 			interrupts = <SOC_PERIPHERAL_IRQ(14) IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&usbphy>;
 			phy-names = "usb2-phy";
-- 
2.43.0


