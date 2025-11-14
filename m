Return-Path: <devicetree+bounces-238587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDBEC5C82E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E7D53AAAB5
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B388A30EF71;
	Fri, 14 Nov 2025 10:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nWs27VVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9FB30DD3D
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115237; cv=none; b=CV9n33mUUy/6hCe27lpgDsMDd2ovo79xlH13P3u4dig3bVkuoGwC1Orq1OHvuCSNOIAakFmtdpXQucllSlPMz5c56TuZh9xELcBq20EkP24WejezFqyhUvu47QZI9ePZzm+uHw4f4FK0KC2Ra2A0K1J91fHMib5WQbaV4/p7LHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115237; c=relaxed/simple;
	bh=AGIsbm6krY8lqvi3hVw0dRTvjuba8EouWGVchQk3BBs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FOhZXYW0zqcE2spbIy23zGBP4I1yGYTRk0gpe7TTlV+lphQMjkaIFHhma24JDpzbmDc+mrpKYtZXgQ7sqVZo8rbKK2TmOkwrywOuKmt1r8pYWZpT5SRxsGgu3W0nxk4bONMAajgPRCLGE5Ba70cq6yNv9xhHuB0J8+e8rJdMe4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nWs27VVx; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so8828455e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763115234; x=1763720034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tN4gmTZEy2rCK8hipxGYmBSwbAeHP0MAgwlWW1zw7Jg=;
        b=nWs27VVx1n5J0TDnZc8bCV40I903n7S7iZ226nm04gw/sUw9RBwzJ91p1qvR5qWz/V
         3aOM5GIOWxIBGzpvQwaoUncN17pSZaD9rnyvoL/rTa15huyCA5CCg1FHjhrMB5NkQ8wy
         PZrHrwQFdDnqbF2dBCmmPeivCJmYqftgIIFQEvpwzBkRRe3TGd77dBNPoG7JBh9qKWkI
         1tD5EynRmDB4k1yRw30VagtogUrijQbHT103MYjgtNwkZvO+hRtL27vezKWnL2zGD5mT
         pP3W+J+kb4+qxTSxMR7rPwn1aQNWmwnRjCbpmYcm2LDF5HSDMoP+HKpjHXkBxjbU01JY
         JMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763115234; x=1763720034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tN4gmTZEy2rCK8hipxGYmBSwbAeHP0MAgwlWW1zw7Jg=;
        b=oqwgQ+pyfn8sJ5RHvb5XlH+NWYuCNCK7G4wqe7XBExfq36uk/WrKdqsI4nxonu0LBD
         /AKrX5Mb4MqLPeJoN68pVe/fApgQ6+z9OTOI2MZY7ak8iSkSGrzQYCDsK4tPSxJ3oM6/
         goEDZ/JweoZiMx2So+p+yEPsZ5OkEOLL0eBWRguast+WVtqqvBaBbbPgBUVYDqPoZ+eQ
         0c6FoTOJ1cpETnOsur625K5DW5V2lPEJ0XnJVijieEYhy0zZN9muRLlSWcVcREnH1v3Q
         9yIAteAUOIVCbkhwRbpuilw+Bnp2d0peFDjlacxitHKdnZ64kqOPe+LORcid245uu/NG
         gL7w==
X-Forwarded-Encrypted: i=1; AJvYcCUwNs14Vgi6espZWURYLB77pRAupCvjtc4AMJLqI5EMMnwn/m3VtOnncABsiPO2nOwpXZEEE569SUKK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx08YkbJM/p88BV0e8zw3wZlniuXYy1KzZYiOkxp0lbyMTA6jjy
	RjbdmzrDptSBVZzwZQTT7nHp2cjIRHkXSJ9YQu2yh7rPEdZTw5A0c/io
X-Gm-Gg: ASbGncv8v50Kg+3J9UH5jupPrTaBskWiJafN9sBM5PO3CAZzTUEQfdEt4lANbczFzvy
	THBxY5Q/ilfIWpqKxfvPDcJOdYAPd9S9DfpHQ6lWmNJVPlRbtAp6R/Gjy5vaXn1gLY3/zZzWUBB
	hICd3lRp6C6MAHcNnKV+kyfOAt6UWppGznyaeb4vnrGM8cCjuW/fpfr9VGEE7MmuAWCaXiz2fZq
	7K8swmV6JlU7JdpSuKy3ds2NGamS9bbYHRnjDG73HGpMRz++UV1k7M9eQCc6VUp1Bm8XpJZWmeL
	nUTLbHj9aYZwsWgGqFr5k+7bLbFPZDDlzCtzW6FCTZe01YwE1wWC+LB1Tthxz/61VnKIt5MliaC
	bGmhUI0Al4QTPUEdOWtjRMQUCLBijjmt64r+b2OB/FtEatPowWSMmx+pnKLgahxdOrxhaHDpmY2
	028t2L9DPA2VZ9VT2a8G7RqsnX9u+3iT6zn84JzSOknJ+2fBsWpUD2GioqAeo1spmTmKblHlgtU
	lHSa6n8lsASmqX5LWnBH4Bd5LY=
X-Google-Smtp-Source: AGHT+IFb5uJ3ADa7QhVVgmGsouQR2std3WNjH5imD1O4o8kNTuqzh+0zQ53GCgN1baLsa0AUm6yvXA==
X-Received: by 2002:a05:600c:8b4c:b0:477:7f4a:44ba with SMTP id 5b1f17b1804b1-4778fe60072mr20755635e9.4.1763115233940;
        Fri, 14 Nov 2025 02:13:53 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4778bae816bsm40685815e9.0.2025.11.14.02.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:13:53 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>,
	stable@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/2] dt-bindings: serial: rsci: Drop "uart-has-rtscts: false"
Date: Fri, 14 Nov 2025 10:13:46 +0000
Message-ID: <20251114101350.106699-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114101350.106699-1-biju.das.jz@bp.renesas.com>
References: <20251114101350.106699-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Drop "uart-has-rtscts: false" from binding as the IP supports hardware
flow control on all SoCs.

Cc: stable@kernel.org
Fixes: 25422e8f46c1 ("dt-bindings: serial: Add compatible for Renesas RZ/T2H SoC in sci")
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * Added Rb tag from Geert.
v1->v2:
 * Updated commit message to make it clear that hardware flow control
   supported on all SoC
 * Added Ack from Conor
 * Added fixes tag
---
 Documentation/devicetree/bindings/serial/renesas,rsci.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
index f50d8e02f476..6b1f827a335b 100644
--- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
@@ -54,8 +54,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  uart-has-rtscts: false
-
 required:
   - compatible
   - reg
-- 
2.43.0


