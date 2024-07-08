Return-Path: <devicetree+bounces-83780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F149929DC0
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 09:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3393C1F22ED2
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 07:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58DA3B290;
	Mon,  8 Jul 2024 07:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XCLV5akn"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C2F2C694
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 07:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720425093; cv=none; b=RZcKIEMREjMVJDjwig9hxzXImGSVZPjeUQW/3JE4RCOGDywffibZ8a+4z+1Ps/59uSllhOUNee+RMSvcN6vr/PWljkgECvNY7pbeycKWUnxq2seYFxdjb2hGAa7h/40CF6+rqz7br0tvLLbE2JxNzFclgqlHVOylsPOAL8HWIt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720425093; c=relaxed/simple;
	bh=sMCuHNPwMzVOTIECsai/oVdKXcj1XiUQZZ+KQ8wvdlg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aeUZzmp/PVJFS1FBv7JU0lUkIWYanVIOXJUcMYTxRYcInzQM1qGskUQ2DcwzXc7hRiiyz3KP/UjdUXJSU6N0zqEwu53m3q1UdsnDmov4tQ9zeJv5GHxDq0ACK+FWaBDeLzpn9Y1uoL9GigMYJIDWoCtG4NyuPre9afI7vKNCG+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XCLV5akn; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720425091;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mbt2usRMEhPQM41Uc5WG7giJsy4J3tFaRLey9pcvtWo=;
	b=XCLV5aknbT8E2DitpWQv4nSvhzJOW+SzlSqRAvOafJN1teNzWXhJ6CYesegh1swWsd7IgI
	UiFVla35Cifuvok8q7HI2oGf9k+loNrTIC2vpsKcqpVpTfcPVb0s1ouiixbTc6eHrtY675
	3S0APCqECaPBWRT7TP6d2YzRrQFbk/M=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-669-6H4XNDlZP-yUC0LsEp5oVA-1; Mon, 08 Jul 2024 03:51:29 -0400
X-MC-Unique: 6H4XNDlZP-yUC0LsEp5oVA-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4265f7f395cso12752175e9.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 00:51:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720425088; x=1721029888;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mbt2usRMEhPQM41Uc5WG7giJsy4J3tFaRLey9pcvtWo=;
        b=u0CtZxy3rM8Bl02vfipj/Kb24F8g8GE1iEtGmsBQopCl+BIuLp9eQujXXoNziwNsWR
         EQt9GhgeRyN3SmoSSkwvl/u31QCY6E3XdIbOkJO2WVBu/PBl29CayO55JX40bG4OFl/s
         SlUIlRAW+dmQhy71wtmeiN5ZpyPd/TVyNJ9+WcXCgP409GYpXQHAJqJeD69ZzRrWlJNp
         AD3g479e+Unc9yvw0JprhmGY5MOE8GcsYGxYfDGY4xn2MwzX/P78QR5/ZyiotRttxbsv
         Q2+lm0hCGifWpSL3KcTU2lAiW3Sr1vwLSKiH/MXU5FIIYLKKvzUDmvrOWd8OsYygckZ3
         4EKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYgzQtcMo29c4E0WLvZk2Yaa+gZoZOFPUaq5zuRlWOaYxS2LNRWkyoHTOs3ApjtQzOUjImfANyV/EKV8EaqsrMBWV/Nk3pTZXy6Q==
X-Gm-Message-State: AOJu0Yyg2nc/Bx9Y88sq9ULaNd9iw4Ed5J4J/xrnJ5QyfrOKeRKJg5A/
	HZBSy/dVf/WrYNLe9miaAkmJUabX4YP/E147dQdPi8FG9PGCHDZF1XNtlH1O4MGD6ez2GWSHhQl
	iibiOn2nxI9NUiZgwv0KFl5X/vUb6hAUys2Vz4/lzXRdbFjii/3W01g33eL8=
X-Received: by 2002:a05:600c:2e49:b0:426:5471:156a with SMTP id 5b1f17b1804b1-426547117a5mr52986475e9.13.1720425087992;
        Mon, 08 Jul 2024 00:51:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgOpusd4NR4jXY1q924v3zDOMC+LgMqX0gtVRoZWih+SE99nRuVfWcAwG/NI2cxpeKYpWMxw==
X-Received: by 2002:a05:600c:2e49:b0:426:5471:156a with SMTP id 5b1f17b1804b1-426547117a5mr52986345e9.13.1720425087614;
        Mon, 08 Jul 2024 00:51:27 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e40:14b0:4ce1:e394:7ac0:6905])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a2ca4b7sm153482915e9.37.2024.07.08.00.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 00:51:27 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Stuart Yoder <stuyoder@gmail.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust file entry in QORIQ DPAA2 FSL-MC BUS DRIVER
Date: Mon,  8 Jul 2024 09:51:24 +0200
Message-ID: <20240708075124.73522-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 78fa0d19a50a ("dt-bindings: misc: fsl,qoriq-mc: convert to yaml
format") converts fsl,qoriq-mc.txt to yaml format, but misses to adjust the
file entry in QORIQ DPAA2 FSL-MC BUS DRIVER.

Hence, ./scripts/get_maintainer.pl --self-test=patterns complains about a
broken reference.

Adjust the file entry in QORIQ DPAA2 FSL-MC BUS DRIVER.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4cb9f0819d8e..13332cfc15f6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18588,7 +18588,7 @@ M:	Laurentiu Tudor <laurentiu.tudor@nxp.com>
 L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	Documentation/ABI/stable/sysfs-bus-fsl-mc
-F:	Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
+F:	Documentation/devicetree/bindings/misc/fsl,qoriq-mc.yaml
 F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/overview.rst
 F:	drivers/bus/fsl-mc/
 F:	include/uapi/linux/fsl_mc.h
-- 
2.45.2


