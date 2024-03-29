Return-Path: <devicetree+bounces-54711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 612338924CE
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 21:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 026441F22743
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 20:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373DF13B5AC;
	Fri, 29 Mar 2024 20:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LowCmwZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B066713B2BD
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 20:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711742724; cv=none; b=dfZlfu1GK7to6Yi8ZpCCWj1YAOzGdBq8AA1wgtC6rMUKeaH63727HkCozhQrkfMH69kxzIlZz0TugsmoKJyvFgzGc5e3pnU182qoHR/IXko6EOdMAg49a0cOUw30oKyquz1trNVTHLSyiLttCleRQP/N1hD5R+sVQS3cHNuLQbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711742724; c=relaxed/simple;
	bh=hT9xAw5IxdPaXu/5nnI+E2HWfqwsj6jyKMGvFE17uRs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k/wD8vRovjUO0IBt99vRK9AjP7j53Dlx3eLhyi9z3D/1PNW981b7mUjsE/ZsTpTNo2KfeodWOxIhFYKa+jMiTU2Z4o5/q/ds6JGNUWoKKUzw4iQ0wArk5bwMZC8Ww1dWAKxLpNcOuKziMMrgFbgKnUtOzNgQ6+FypNxYNDvK2Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LowCmwZ5; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1711742721;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=chv79W8KZV4FF91RJrZsjWXi3bo0UlBJqJ+YGhV9vI8=;
	b=LowCmwZ5JiwihK45wN6TYIqI4HrLr/XmsOeK9bCMlqraRwdQmmcaVX/IlyTCUk5mqy0sBO
	Kqp6eb8sHIfDra5PTMIGtB9subnv++B+HmUS14N98E7iMj8nWhpx9MLBFUrkGpYbrwefS3
	bn+SA/bzEhr+FlXGz6i8jlnEhlNmW9U=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-tO2whYi9M2at_SZqKTwzYg-1; Fri, 29 Mar 2024 16:05:20 -0400
X-MC-Unique: tO2whYi9M2at_SZqKTwzYg-1
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-29c7744a891so1805332a91.2
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 13:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711742719; x=1712347519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=chv79W8KZV4FF91RJrZsjWXi3bo0UlBJqJ+YGhV9vI8=;
        b=MH7oVtZJg6PvCSfCsU0zWon+YKIkhO0NvgncA2BsWBnQRIalmLtdXf80U2/bRTJ0Dg
         RARMdKzvS13DBC0G8jcTnnQ2gBep/RC/EBZz1uQvc/3zNT7kwuOuDhAniR82D9zAWGu3
         rN6Tlaur3dMT3p89H11to02QUeWtAcIUKmz89e0q+yL+TnSxIhUKv2wvTjNnPWpa7YaQ
         hjzd3TZgth/x7myWMB+1/rHW/zyzydTMhk7hh5Onat1uQ5stiqCqhMGjy/QCH1IeNG9j
         TDwMhSadO8Zrm7VzF+YbfXHIvp9IuGXxmqGucqGAfwbA3rUalG8s6FcD4qpfiz/bhNiv
         EI/w==
X-Forwarded-Encrypted: i=1; AJvYcCVwrKlKVpPxsscQlkIfB8JEBNMWo/jZDTDcMHou09bbV+jlMUDfCLBGI3cMZzTPtLO5YKXVwQKLE+FoaXgMOerPHuLQoRUoiEWMWA==
X-Gm-Message-State: AOJu0Yx9JTd6XBrq7/WMfKJs2qb9HPB2UTHCbxiAJyTgg8v7rTs29PQG
	93e5MlilCv63P1MDupCkNKCjbhC6TDgUfs9qaUKc6my8C5n10m/xZ5qS+7WLoosa1Y0zXb4/4FW
	7jZ6h0ucX3L2L6vQbk2/kNdqT+YJPQQqxtSdQhtniRGQgeTj6FZE27QP/Wfw=
X-Received: by 2002:a17:903:2290:b0:1e0:b60e:1a33 with SMTP id b16-20020a170903229000b001e0b60e1a33mr4229123plh.31.1711742719445;
        Fri, 29 Mar 2024 13:05:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/BF0Y8M4+Q3wp921xNHu7UI9MEHoFLlOewsMWLujebRJ0bO50WafD/lpdLCKxaYaACz3mXA==
X-Received: by 2002:a17:903:2290:b0:1e0:b60e:1a33 with SMTP id b16-20020a170903229000b001e0b60e1a33mr4229084plh.31.1711742719151;
        Fri, 29 Mar 2024 13:05:19 -0700 (PDT)
Received: from localhost.localdomain ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id e4-20020a17090301c400b001dd6ebd88b0sm3830017plh.198.2024.03.29.13.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 13:05:18 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	guoren@kernel.org,
	conor@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	jic23@kernel.org,
	lars@metafoo.de,
	andriy.shevchenko@linux.intel.com,
	nuno.sa@analog.com,
	marcelo.schmitt@analog.com,
	bigunclemax@gmail.com,
	marius.cristea@microchip.com,
	fr0st61te@gmail.com,
	okan.sahin@analog.com,
	marcus.folkesson@gmail.com,
	schnelle@linux.ibm.com,
	lee@kernel.org,
	mike.looijmans@topic.nl
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 2/3] riscv: dts: thead: Add XuanTie TH1520 ADC device node
Date: Sat, 30 Mar 2024 04:01:25 +0800
Message-ID: <20240329200241.4122000-3-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329200241.4122000-1-wefu@redhat.com>
References: <20240329200241.4122000-1-wefu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

Add nodes for the XuanTie TH1520 ADC device node on the XuanTie TH1520 Soc.

Signed-off-by: Wei Fu <wefu@redhat.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index b7b7e950a7d7..cd6bc89a240c 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -417,6 +417,16 @@ uart5: serial@fff7f0c000 {
 			status = "disabled";
 		};
 
+		adc: adc@0xfffff51000 {
+			compatible = "thead,th1520-adc";
+			reg = <0xff 0xfff51000 0x0 0x1000>;
+			interrupts = <61 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aonsys_clk>;
+			clock-names = "adc";
+			/* ADC pin is proprietary,no need to config pinctrl */
+			status = "disabled";
+		};
+
 		timer4: timer@ffffc33000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xffc33000 0x0 0x14>;
-- 
2.44.0


