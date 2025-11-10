Return-Path: <devicetree+bounces-236855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2D3C485E5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 18:35:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 171263B0FFC
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4501B2DC335;
	Mon, 10 Nov 2025 17:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AsMUlAY/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6782DAFB9
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762796026; cv=none; b=mN/DasEbyy4a00iZ+zeBu2cl4GuATp9R51kmESgWXg0Rk9ztH5Ro1CdwwXh4oUYvjCTbX4DqrxRhxusiKEdLDX4Zgs3JrDSn6rdrM6jE7EbJ2l/k/VKDAqUAy6eCQ4iECh9IzhHlcDH4Ya8zPKAft9gf5Ge7ndlmDmRVafhce8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762796026; c=relaxed/simple;
	bh=DtKMJowc8zPPK7iC/rmKldEQoigsxp57cIpDSZGk6rw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gcBBxvvV6t+n0VMOctFbZKhFwpA3WkQCNsjZlSBMiK2wt2lMoWggK/OhaTYOaIbK4deQV7nm5JeT7OvYjCT9GVwmqf7Lr9AzghEyu68u6J4jMibgCXCCr9jP5Fj8RHgQVcfP0Ew/zkir8+9BOlJiSzkEgWYSU7/GB0pOhZGY/xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AsMUlAY/; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4775ae77516so39290295e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762796022; x=1763400822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cWzPWemnSbElAjabzmde4Itt9ehqptnppmUVmOqIRpI=;
        b=AsMUlAY/hzDdJcNbRA+g8fhdi9DayB4GJGOQfRbw6vcCCPW5JShGEQoDEMsIKRaeaf
         g5CkVgPhf3c1RzAPReaKMXQhpnEoty3QFg5nahPOa6rtOPmIFWMeIJ0zJc4NovYb+rZd
         RiJxSrZZclsU5+aRFE364NuciRvCVwmMBNTw6EERA0RKJZUgxQ5Egd9klVTxgX8rZEq7
         2ANxxAYN/2SmEeID2VmiJUiFNtgEnRzygyOK+bc+Q7FBPqk8OHEjyjltk3cJIoP1Gwmp
         Fun62+q64TzzSZk1F8TuuietOOPlfUh8DMGBZlZXymr+qqKEo+myFrfwCRtR6pWtGY9L
         svSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762796022; x=1763400822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cWzPWemnSbElAjabzmde4Itt9ehqptnppmUVmOqIRpI=;
        b=tRXXIR/iW+HBvNkQpbh/wzxiz/22SRzukSlNiIJFUz83YQSyXbFEvLekZ8eOOAjlc+
         JCVj9BpI3oy06nS2Zdo37dP2XAP5z3JICGS4D7XDOhAvpqtOOvfZLbA3+Sd8s0YXDNui
         ShllgOOW025cxS8+QEzGIXK6INVatO1gp0+NiJ33aUz0ttxqsZlmmffjFb2hOxINp6+D
         inMJiKq3ukI51jj316w4B4XFOb8oFqeDvHL4jJAaBAehIjJdTzJ5DU9vSUViXI1x1kG8
         pXf7upDw9NjuofrZ534U32XqHOwUXzI3d1rFJbmHI8QFbQbejRWK83Q04EhFQEGPX0nB
         am7A==
X-Forwarded-Encrypted: i=1; AJvYcCVJSl6usLHZWy8h5mXl7TTAXlSzvBSBr4GyfKFwbU3TzX3JEZZEF7mi6nfGc/fjG4TfCKYJn1NcdCPs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1bqj+WZ/EsuChsdh46KL+x9BxI/P1/IcnI16AYWXRfMx46n3R
	PGEkcb7g2pLT/qIURl3uxdelQ3OAR8OwAmikuSRWh8tUHhglplVkXbN2WGBduO0uXepR4gjd58V
	Elq5j
X-Gm-Gg: ASbGncu+517hC1AZ8uUpeIxZ7r7MH5aL3WZ8TN5Xa2M56YXsrV2sSC+81blO9uOYRDD
	eoCEPMoycuBGD4jpo5R0Twgt+RoueFRGeXYSrLwqewzl8Jc11frF+LYbHMS3EG0lF/1KX0HF5EF
	iZu5UBM7JflO7sTLXtuzIi9fQox20KFG7xmG6XVpk+P5OFPGQfSqW7a5YFkJBxV9wxmDq7Hv+PV
	fpyGuUKxQds2r/ocNS7Wh+XnxAOCpxdD6uujL9ImIF/7a6Dt80iI/uYS1psaiv3en+GjgnP/IVV
	/49z4F9zvEe3S0E0/sru8pHfvzluAUzh86wln6LE8FOzAbVhX7nt4gU4Edieml4BFA/2t4CV0Tt
	KmXPIgrB4OzMfxwzKPp5lz2SFXUNJmVhlOcxOeBxbCky3AW/9be1t1rQOGG4SdMHqdAk2BeWPGR
	ZDNN3ujZnkeADF7nwJ2X0=
X-Google-Smtp-Source: AGHT+IFG+zeZs8i0HcOK4EFCqMFXkt25jlhJO9xhRAVgjZV+KV4HEsFl6cEM5lLjaVjHEaqSmZ4BKg==
X-Received: by 2002:a05:600c:530f:b0:45d:f83b:96aa with SMTP id 5b1f17b1804b1-47773465f2amr89513515e9.7.1762796022324;
        Mon, 10 Nov 2025 09:33:42 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:d5ec:666a:8d59:87fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47774df2d80sm140111375e9.14.2025.11.10.09.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 09:33:40 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 4/4 v4] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
Date: Mon, 10 Nov 2025 18:33:34 +0100
Message-ID: <20251110173334.234303-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251110173334.234303-1-vincent.guittot@linaro.org>
References: <20251110173334.234303-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new entry for S32G PCIe driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ddecf1ef3bed..922ebd4787fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3136,6 +3136,15 @@ F:	arch/arm64/boot/dts/freescale/s32g*.dts*
 F:	drivers/pinctrl/nxp/
 F:	drivers/rtc/rtc-s32g.c
 
+ARM/NXP S32G PCIE CONTROLLER DRIVER
+M:	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	imx@lists.linux.dev
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
+F:	drivers/pci/controller/dwc/pcie-nxp-s32g*
+
 ARM/NXP S32G/S32R DWMAC ETHERNET DRIVER
 M:	Jan Petrous <jan.petrous@oss.nxp.com>
 R:	s32@nxp.com
-- 
2.43.0


