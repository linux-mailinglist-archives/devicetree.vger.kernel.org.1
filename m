Return-Path: <devicetree+bounces-140227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042CA18EE3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 852F87A1D8A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65A7211283;
	Wed, 22 Jan 2025 09:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XFrWd6aE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048B22101BE
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539727; cv=none; b=Wh/sithK6vbZnPAR+aTjIhDfm8HmScjD4UH4yLh1SWevsNUHcGADO4FHEovsJBoiTZ+d0tDYQaazEilS3BjWYd+rgwJkS+MmW6NAoGBaqFTkajPVloh0EGNhzvRMGkIiGy9p2t4wap+vdADVzrolw8vy7tIUb7TkC0b7Ht2OV9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539727; c=relaxed/simple;
	bh=4C154e84jVK9Fewi+rzQJ/XiJhKCIZP2v15K8Dx59sY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MQsUTvu134Vs7YNJoeoMB6KOEl2lewvry+j1vZxnVmaATCxeRUlh51ERyYvn2fF12z6uoNoJXKUO18QecDH/6SFJoUorzV6vRrI3TSv5YCZVGUC06c1shFpURCIDQ/HQm85Uodt9pmjZUzADOJ6G62oV60+hWb31cmabJ2LfS8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XFrWd6aE; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-436a39e4891so45687475e9.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737539724; x=1738144524; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pOVg2aiPcPsDk/zFMRyqsZSvGPQno8/ayvFwGAKvNig=;
        b=XFrWd6aE+0r3QmVpGIaYbnR80PkxnPabi80awjBw5/dacMR9kGLk3C8/m9RxgOCX/7
         YV3pCueFwzN3cvDfofBRqOsfZhhsOrRdJvW77iB3srkkTb8MMTkp86U9Rjz/rTiG1C53
         fyRwXTOeSx1tyysDxVZPtbMhlduD1ya5tnnneMS3YSBFIiMu5G0I10oH8zvv14ebdprq
         6z2Aovk8ywBsTeQICVNOEWfi/WmexaxRMUbuwe2wJPAqMpwouMGSZ2EpGrJWbNWNWJlW
         A/lS8lgWMGD+MK/ZT9sXr8ULz+4qYbSmS8C+33fBVL4CDsJiQVNoUxSodi6kSNmVA5dK
         LFUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737539724; x=1738144524;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pOVg2aiPcPsDk/zFMRyqsZSvGPQno8/ayvFwGAKvNig=;
        b=FStdgwQ/af17+SeL+AkpHDs9nP9m9HMaN22KiBxDDPenNPvcSi4jAiF7Vi5ZSEMHld
         +RTmreNrvzNbX+VqZ/gjWggrIdS7dq/Psom2teBA/8vuz3SqupXkbddpe+NpKA/hIERz
         0Y0w+b4R8X/NEZQn7Zup3JQZowFUgKjHZ/ZWZyoBRMrlJ0IYqcgUJ/CP8NzcidEBDnnw
         nFcQHd6liL9OKDm9Ic8Om+hgcqCUyl2JD9AVvd9p9KUrRhMFBJaW0YavGoi9KDPWi1bP
         //7P1rTxxfR9bYFiOAZR4kOO/JxBd22DTmXT+aAu0T5gz6AUfnODHIQxVJxzMet1EajX
         XtGA==
X-Forwarded-Encrypted: i=1; AJvYcCUnoD7QbDQjW2KC4mnDE0GbILnyCzPb+NbTu4LhG3+UQj7BQPwIh5t32r0XghZu859pH6Z6RVq1vEJ4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi2jvvW0IXGgtZwkCO5uW2sp65zE3iBbmLVsQ51SJtaAe38H8o
	eWychww61UDGc9boIyig5b55L9z8HrM9j1xsRkImM85QuNi30omDuMyDL3PX6wQ=
X-Gm-Gg: ASbGncuR7U5jSdH7TA6FTPh2kz6Wn2bxGyhedQ6y1sL2qFWirVVq0e21d2f+3b3j30E
	uQ+sxbTUyPeLRAfDuitUkZPRURxaL1N9pZuKNNfGLJzXQ2Nr5K7IwgWUuoYOeoWYV33xX/Zawop
	8gnhSXwjUIDIn5JPawet/1LVB+mdYhX5PQ6FQ0guhgGByy+QMcPW9nPfma5dQ+OqwtWYNyBQsj2
	czEpny2fcx7xQiHXaLAS0sFabKbigIvBKpEDjvEJrWP4WR7qlxojQrCB124086eR+o=
X-Google-Smtp-Source: AGHT+IFnvm/CFRqfIFTIUXUXtoh2Q7PT5HxV0OvAXIKP72tokUlzPkbhq8KLMUJ3KzVCF9+2yyxIkA==
X-Received: by 2002:a05:600c:1389:b0:431:52f5:f48d with SMTP id 5b1f17b1804b1-43891460bbemr214978685e9.31.1737539724275;
        Wed, 22 Jan 2025 01:55:24 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31adbccsm18394995e9.19.2025.01.22.01.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:55:23 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 10:54:50 +0100
Subject: [PATCH 2/3] arm64: dts: ti: k3-am62a7-sk: Add r5fss memory region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-2-f74835b91da9@baylibre.com>
References: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
In-Reply-To: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1193; i=msp@baylibre.com;
 h=from:subject:message-id; bh=4C154e84jVK9Fewi+rzQJ/XiJhKCIZP2v15K8Dx59sY=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHKj/Pmv+2n+P4ruO5kqXSWywLvny68Cbq5rnxNZP3
 TdB/x/7wY5SFgYxDgZZMUWWux8WvquTu74gYt0jR5g5rEwgQxi4OAVgIqKqDP8rNCLusryfaaxe
 /TRkjb7ds1XLrrRl5PSkXfWyqDmY/Fmf4Z+qzpvvJ5P/XV74z4hfayLLgqdctiwKi1ZYr41oqr/
 UdZATAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the dma memory region for r5fss and list it in the wkup_r5fss0_core0
as memory-region together with the other already present memory region.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index a6f0d87a50d8a7ebdb61e609e8071d6681dbec9a..627b045e3056661c11e1e72bc955c6368094c973 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -61,6 +61,12 @@ secure_ddr: optee@9e800000 {
 			no-map;
 		};
 
+		wkup_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c800000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0x9c800000 0x00 0x100000>;
+			no-map;
+		};
+
 		wkup_r5fss0_core0_memory_region: r5f-dma-memory@9c900000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9c900000 0x00 0x01e00000>;
@@ -737,3 +743,8 @@ dpi1_out: endpoint {
 		};
 	};
 };
+
+&wkup_r5fss0_core0 {
+	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
+			<&wkup_r5fss0_core0_memory_region>;
+};

-- 
2.47.1


