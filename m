Return-Path: <devicetree+bounces-58611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C62878A28BF
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:04:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FC3DB25856
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3658453384;
	Fri, 12 Apr 2024 08:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NjEd6huc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51D553378
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908993; cv=none; b=h+t0GcC8fAYh/O6b/EhvoTRUgOhUED3VgoNDr884rLqDJNwFLGk/idvwGxgPdDP0rbxxwtyAncHZ13wjLT/YtLEosaNNmUAOQOGYPYEmIia6j2/QMRu5zfISnFFN0/ggi/1VkjRFqTZVOrbJ8y0zUrVm8u/cEjxnGmOu2Ugd4GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908993; c=relaxed/simple;
	bh=7c1RQocUPxtNkMUYrXuz6Z5XrMBoGDR/AzBjy6t0JNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dv7s4Z2xRjTvjsjpoxybjwoZ0DjwwDP8C0ZdmVr4XwfIKqRnduV9Df7p7v6LxT6xWqwyEs3/ssTRfrSmhmt3qnh9Ez8pfEiBjNnCXgD5rIqjylX1gTjbQWX57zExCvtsZLSk55GexdX51pxr+Spal2w33oBQ6QzEBLqIQTlo7Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NjEd6huc; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712908990;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PNPGi/LJLZ1f/UWkNAkdI7gt1aIfJVZxqk0hEY+zuuE=;
	b=NjEd6huc19pviT+tbLzv1wpA5c/GWissv+h1ozZZmNuzxBNQOnCSt6roLoJBHxMoOpfgzH
	fe+sc665ZNkCcn9RCTNtZa+VHyIGseGnxHEvBd88svH+Ls/Dq1T7DqC4vZ1/E8sSITFHRD
	sXQtPsUE1rIzJ/1ItIKIgxX+/ViD9uY=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-578-pO9o17q-MSGOXu0BtLrdZQ-1; Fri, 12 Apr 2024 04:03:09 -0400
X-MC-Unique: pO9o17q-MSGOXu0BtLrdZQ-1
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2a6f2c7c1b8so375945a91.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908987; x=1713513787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PNPGi/LJLZ1f/UWkNAkdI7gt1aIfJVZxqk0hEY+zuuE=;
        b=KBEoxQ4UqWe0ZOTbBZAgrGivp8+VPHO7QHJjZ475sA/PQmsn9WFkoovcMURFZAU3SQ
         m9vTo7WUXmv2z4h4lj9Jksq+awqaz1UVvheq12PGWPUUv37uUWZmiSMA7vcoGQlz9jFj
         QWmOaiNXf9FatZPIVtzQHiQXQYjUis9pPI1I9Ic2YJkc0dO14hXb+mfMPnHoAorS4Jtg
         mr7dePdpfHkX/6dznp6PDdCu386Zq/y7voAgUOuhM4bcJvhCN1pOfAvjtIug//AEutmX
         ULbqf8o/1Eyq51oEebSERizolfBzAOxHdTaVjJKyKGvFStU/Bxz0VxgIfBWq0h/YFMfq
         rCVw==
X-Forwarded-Encrypted: i=1; AJvYcCXbeJ5GPZfEmdCdCp/LDRlVW8urxEin6bLgbLxWzKBW1U3gh7Qwj8kbNN6uZspfQDlRDHB1vugAqYnPnTOrzc6hn1FyebbUJisR7A==
X-Gm-Message-State: AOJu0YwhR7yeY4onrUv6ImoGs5b3eU4SSTsBRlZQxEf7BsYx7to/+0w/
	oNc/di9lovarkR02txSU16fMvjK7C3kGSLircHztgIVupQbMpWHPM29hboQaxXAIBw0WFOzh099
	aCYAmOA8nMgYzOMnCtEqotYtQmciXs+A2y9QWV9WlKQlIw/6BMLpdBVlNpmELGPduJF9T4w==
X-Received: by 2002:a17:90b:3597:b0:2a5:5334:e223 with SMTP id mm23-20020a17090b359700b002a55334e223mr1616961pjb.24.1712908987667;
        Fri, 12 Apr 2024 01:03:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEXR+HX46H9j17BcJJXoxM6E1KRCiVCkfSB10IGeNquAnS6am5GYCSSbFBeb4H+vygzWBIgQ==
X-Received: by 2002:a17:90b:3597:b0:2a5:5334:e223 with SMTP id mm23-20020a17090b359700b002a55334e223mr1616944pjb.24.1712908987375;
        Fri, 12 Apr 2024 01:03:07 -0700 (PDT)
Received: from Samantha.redhat.com ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id c9-20020a17090abf0900b002a610ef880bsm2601514pjs.6.2024.04.12.01.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 01:03:07 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	guoren@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 5/5] riscv: dts: thead: Add XuanTie TH1520 RTC device node
Date: Fri, 12 Apr 2024 16:01:47 +0800
Message-ID: <20240412080238.134191-6-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412080238.134191-1-wefu@redhat.com>
References: <20240412080238.134191-1-wefu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

Add nodes for the XuanTie TH1520 RTC device node on the XuanTie TH1520 Soc.

Signed-off-by: Wei Fu <wefu@redhat.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index cd6bc89a240c..62e588dbc942 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -463,6 +463,17 @@ timer7: timer@ffffc3303c {
 			status = "disabled";
 		};
 
+		rtc: rtc@fffff40000 {
+			compatible = "snps,dw-apb-rtc";
+			reg = <0xff 0xfff40000 0x0 0x1000>;
+			interrupts = <74 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc_32k>;
+			clock-names = "osc_32k";
+			wakeup-source;
+			prescaler = <0x8000>;
+			status = "okay";
+		};
+
 		gpio@fffff41000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xfff41000 0x0 0x1000>;
-- 
2.44.0


