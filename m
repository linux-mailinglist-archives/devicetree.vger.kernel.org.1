Return-Path: <devicetree+bounces-216512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA4FB550B4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE7745A79DB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907F73101B9;
	Fri, 12 Sep 2025 14:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rphKZ3ja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8227331352C
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757686489; cv=none; b=lyCJvi6xduNOvAKUWsR4wZFeIEBE1kOpP/v1+/7Lk28QdoZbCP8XVJVIUcKF5XRzBnZnwS6JNzllihkStqExkKqY/uaaIkk5sp8xHfyyyId1dBDaRY/EBE5u203s1nK7gm9IKKw57BHoclZeDmwzdmFIcOvS6doLUCMa9Posgis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757686489; c=relaxed/simple;
	bh=Sx4qNTflZvWx6Pe1Zu0lV/BCv5K0fKMX8u+tZdVvrdM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jCzKES7QM5TeWGkZBVk2eTVE8yPP2r8SG+WPDSMlV4+Or41i6Rsad3cat39LoniBm/EvvSBVR/0aogTG5Sj662F/0LUcdweko3HBDb9e2QR3g9qj43TNGjXWGRchvuAXHJwlWQq3aAfQFX5TbFAbOpossivNt/lldqLCuXdEqOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rphKZ3ja; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so14328665e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757686486; x=1758291286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YYYU1SORSnF86QOoLhacy3DzKZyj7/fWijxhLZdd8eA=;
        b=rphKZ3ja+FJcO2sswf6k2cMb+CwbbITompdmCIpYyd7AbNYQcv6BiBZeHWcGENojSI
         4n9EvZfvNhg9pQmzwr8+iqk25LgJMsuNTMpA+EU8dAnHc7mwKsoCAtEtqS1bb7S2KXZq
         WnEAG1+mvgvTQTVdUmasBFc159aYp084T/vBihByvM7LGNxNwXrMHezQogNAzWtSTcZm
         PO+XmNzc+uzdGsR+9/Yr6tUTUn+R2sQJbdF25x0J2aHkSiq0QROY+tOUGmeAWI3KHC67
         RSatsQSeXAq7gpwwihIMI+WUwGbO6thac80jFIvI4EsuDMsZjs/55Ijm5LArmIkFKWKj
         E1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757686486; x=1758291286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYYU1SORSnF86QOoLhacy3DzKZyj7/fWijxhLZdd8eA=;
        b=TDIeYkTYfEoP7FTgpkeDArlpE27oo+3uGZI63mqeSnETNRXLntI3y1pBtDnq4UaYGM
         mhNL1LBeCzqSaqNtKmXxRBfyICOBBnbZB5KwVMapY0fzMfnS5FZtxqlUTKkvO+UrAkZ8
         33xhlQtYF5zf+Ur0uLtwyS3AZz0UjQzXzTsw/GjNuBQUmUUn1c0qvI3OBfNg1OPaYaBC
         J1TLsapoloczjsiHVL9b6b6CHBrJjPYjL3CgLnRDV2UZk8V9+DFQnW5EtsA3LkZfADic
         SuDiHHvG0vloZUsUzC9XanNsr16lgLJk0iP7gEVD/sKhV6lCZvFuSekccRRtstgCNaRb
         Xhiw==
X-Forwarded-Encrypted: i=1; AJvYcCUGN1kwEbrJSCi6CBdHo3Y9kQGuQY7KzYXdoI3B98ivwYwL0awLm7zb+MIZZsQisTda1vtcRjorfubC@vger.kernel.org
X-Gm-Message-State: AOJu0YxL+36lxTOE3QpT1BVOM0JVNQWEFEKZDcY3zDUvG/MlXH8NRexo
	mwPRYZXCSxeVtgNCS28DoZAzXQXJxf090QBbzOIbQE19rZ+Uy7qKYCUAvIINLZzauEg=
X-Gm-Gg: ASbGncuQxA6m3eNoS913Mf950+wXkm2nvrUKE/7qOgu8hue/kODFwLW/h96Rfyy/U8N
	npkFrp3EK40x5pea+ePnSk1Tuj0zGO2ewaQu2i2HKp9+342hJqZA5erjKzYS/NTBLkySi0R/2HH
	FipIFsABOn6w0w9FK00IcVXtqiGL3BULCm7t1SneUH35EFzdoeykEXwSryy/dcf7De2N6KRFC+c
	1Pg7zGnJzHMuUU9dr6Y/qzMRNu+pWQyhku8aRUK9oDtG3Bev4lgi/vOySujR6WEowD+Cvwj2OBP
	qPf9YIxeCLwHixsUtuElw4nEMLByOllNpr/qb5RdnqtHGhwV49aYlcQBlebBA04gUxM1o7rnRRZ
	d2mnsSY3QTz25sIA6q4hddcEei41Z6rI=
X-Google-Smtp-Source: AGHT+IELwPDPxYCpFOkmaAqs6QS4n+6xPwFX8EClQCkLmWQOaqKB/UsohwY3InyXz3cWYcEWRVaTyg==
X-Received: by 2002:a05:6000:178c:b0:3de:78c8:120c with SMTP id ffacd0b85a97d-3e765a139bdmr2764778f8f.38.1757686485677;
        Fri, 12 Sep 2025 07:14:45 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:40ce:250c:1a13:d1ba])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd415sm6680739f8f.30.2025.09.12.07.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:14:44 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
Date: Fri, 12 Sep 2025 16:14:36 +0200
Message-ID: <20250912141436.2347852-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912141436.2347852-1-vincent.guittot@linaro.org>
References: <20250912141436.2347852-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the s32g PCIe driver under the ARM/NXP S32G ARCHITECTURE entry.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cd7ff55b5d32..e93ab4202232 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3086,10 +3086,13 @@ R:	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
 R:	NXP S32 Linux Team <s32@nxp.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
 F:	Documentation/devicetree/bindings/rtc/nxp,s32g-rtc.yaml
 F:	arch/arm64/boot/dts/freescale/s32g*.dts*
+F:	drivers/pci/controller/dwc/pci-s32g*
 F:	drivers/pinctrl/nxp/
 F:	drivers/rtc/rtc-s32g.c
+F:	include/linux/pcie/nxp-s32g-pcie-phy-submode.h
 
 ARM/NXP S32G/S32R DWMAC ETHERNET DRIVER
 M:	Jan Petrous <jan.petrous@oss.nxp.com>
-- 
2.43.0


