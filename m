Return-Path: <devicetree+bounces-188988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6388AE6402
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:58:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D19204075A8
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C15291C08;
	Tue, 24 Jun 2025 11:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="kb9zP2YH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6280F271466
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750766300; cv=none; b=D7UmH6Kew0Zo9vPqDJTJLy+uY65WuR2pWJ18z1Hwu0Jstpuggwbf7BTk8ApHEWp7u9EfJ1QFtwQIRkNexvvwTd8ZSosa2RPYRwhFdLbsF4G/yfbOg5kkdtJfL64T+TivjYktVe5AbhQCvIo1A+mwckhYV28h93RImI8XZGeZbsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750766300; c=relaxed/simple;
	bh=xXOn0HsXOLMhwrK8hxGYgemk6ajiFApPGs1BV9Yy8Ao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HAnngeXUJAQ7nm4AyfsD/uFAaQFSn2zsItWKBbT24GhxSIwiM9e0TiSoWP2LVo4iQwZkDQ+kHEM1PCY4jUeiDBvAQnlF+VFszxjj2c9BChB9DJfo11s86i9RKWpDTZx7GtK6GSGn2NbsJ8Ed7NWYT9kZRevum4l/wzsknJyIy28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=kb9zP2YH; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a536ecbf6fso228492f8f.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 04:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750766297; x=1751371097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGE4KFMiA3w+V5SFnoNxn7J/yaSX/gETYA3wlTGQnvE=;
        b=kb9zP2YHWQZ3aAdo9N1O+bDkRvtT8TrGzuLyCzj9cU90I7ROghIGzBR3sVllElNOoi
         NcRvTwSg9aBEec/V1aKjxmfdWhU3mCiD7zdiPWjoOD67349MN6Xz2oDp8lA7m7iJTIYb
         ZCF3Xeo8g9IwOnvN2ti19UTeLBCVo+EwKUHpN5Do+ExkAhNOZrFQsBHFQOuSuwAwcL/L
         9wrLH4kXp6NtsZsNxOOLzXsesBBLx8MhYbLm/j3T08ksVCzMzE6/o3kQu5hIoVWqeOr6
         3k+Y51gS9JApZnRrX775GqJl1MWXGDQmvOKzLgR8M4aLCixqLLWVX3IU78PcooqZncSR
         BIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750766297; x=1751371097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGE4KFMiA3w+V5SFnoNxn7J/yaSX/gETYA3wlTGQnvE=;
        b=j5Ze3/zzwJG6B5xRrVqhSRsgBHONdwkRCcJRJyi3y6/kXd5LZbqpptGkeLVzYW7T+n
         t806UjMAtAgGiJNvqZEYgj8EtVpp0M5lqBWBHOEjnQ2IZzWjurX6/33jqHzKz+ADF6qn
         wj4XqBuZeZaI+YOORAbdtg+OjT9qa9eqCe+Sly9P78799hEcs3kI1kuKUQbB40fO44Qd
         jqF1Wk6oxtxy+i7ZlXAc6NKhLtaSkSIQkI6PNfOa4MOWSZ4AGdQDQibxtHpryDdHzBBr
         otcInewjmV9n9HUSnKdacB4iVWJOYhKD7FKuj9mM3YTMtudBYfapVWEKOibryKfmoEp1
         Udfw==
X-Forwarded-Encrypted: i=1; AJvYcCXgY4SnQ5lPc1LpDVWQQZ55GRqARwrzWlv6PDgSMkEHUq2zfl/izsCVRDuVRLQMUKkSgx5f41eVrF4j@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg/08jcUh6PNBV1nV7teZU5u+k0LPqQTzi7UDPgC7BUr5wqCH9
	d0loXUf8kR9o1FXL7rdOUrYWvs6A0xSG1ycSZnLLuFYG6kqphZ4qxLv4FCMm34dcdqA=
X-Gm-Gg: ASbGncsoPMY47LOJHTBtf60EDu3KtAtw7OHiO11rlhA53pGEdHh/5BDyQF3sNeQW0Uj
	IyVADnOesm9s8gRDtIWMXvkWe7ZXOQSG4YmrFHjPX4mWsxK8SPYrUbiN6VAGtZVDRYMwSF9cqSf
	SaX2kP2HUjeZBjLMPEUS/BpoI/5qRSRgrpnfY2DUqeo+jfYCtvV9GN7+z8VoHX++Xr2Mriqo9ua
	XDnNS7oHhhrnOoLhGOJ9ZfsUQn7dW93nDEFi9tDOkdcTjMq3hiX98o7KR+ANui1OpYtv3n4o0Te
	dRKV2ONKLZHbT6RqAgGe4jvstr0d4YreyO3UWSbVER4S7xPZOMRh/BIS7ar+
X-Google-Smtp-Source: AGHT+IFubDJTKHj661hLTfHQAJpwAc5+Zi+823QflKwgRA6BrUCM8dJiTGs0dTErPXPjhxnZj3//Jw==
X-Received: by 2002:a5d:584d:0:b0:3a5:42:b17b with SMTP id ffacd0b85a97d-3a6d1322b83mr12410677f8f.29.1750766296603;
        Tue, 24 Jun 2025 04:58:16 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:d834:684f:62eb:5df0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ead2a5fsm173860985e9.34.2025.06.24.04.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 04:58:16 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v4 3/4] MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
Date: Tue, 24 Jun 2025 13:58:09 +0200
Message-ID: <20250624115810.37851-4-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250624115810.37851-1-ezra@easyb.ch>
References: <20250624115810.37851-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Most notably, add the mediatek,sysctl phandle and remove the redundant
reset/interrupt-related properties from the watchdog node. This is in
line with the corresponding devicetree (mt7628an.dtsi) used by the
OpenWrt project.

This has been tested on the MT7688-based GARDENA smart Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 arch/mips/boot/dts/ralink/mt7628a.dtsi | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dts/ralink/mt7628a.dtsi
index 10221a41f02a..5d7a6cfa9e2b 100644
--- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
@@ -134,13 +134,8 @@ pinmux_p4led_an_gpio: p4led-an-gpio-pins {
 
 		watchdog: watchdog@100 {
 			compatible = "mediatek,mt7621-wdt";
-			reg = <0x100 0x30>;
-
-			resets = <&sysc 8>;
-			reset-names = "wdt";
-
-			interrupt-parent = <&intc>;
-			interrupts = <24>;
+			reg = <0x100 0x100>;
+			mediatek,sysctl = <&sysc>;
 
 			status = "disabled";
 		};
-- 
2.43.0


