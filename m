Return-Path: <devicetree+bounces-33747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A111836358
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:37:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1943DB29D75
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F18E3C07B;
	Mon, 22 Jan 2024 12:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="HD+7xI35"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43a.ess.de.barracuda.com (egress-ip43a.ess.de.barracuda.com [18.185.115.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8A23A1D6
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705926895; cv=none; b=mLUsh5+JcjMuUzu1SynDPiLWeSzUN6Wcg0iYJwPQX/4KhI5biiDXYCkNwdAx0qNUP9jomBSf6o3y2nLX5Fok7DhOhpfdm2N3RxiKD9tkiH0bfn6CS7EvHJJnGbv7cZzR+j6thNZ9mRIclSVjqDhBfNJVn7MlSc4KzAyTo4jhx2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705926895; c=relaxed/simple;
	bh=DQMdq5kXfeU9rmi3XcU3mcsUUsgpZDqBl6MHRQPrBCk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jHIYDpu/ehbTyy/v/n9Paqgr47Huw5dEiHGIjX+zutDsPUxyZIHylRgnnsYYePRx9db7WY/mcSq1maegd9KA+P9qrMuCJZdu5ehsBAsRk+yPb05dOB0aTMiptRI63mcTrZmtaey49dTJd7MeLFtkbdDmSkXKm/3M8wL84nTucEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=HD+7xI35; arc=none smtp.client-ip=18.185.115.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198]) by mx-outbound8-173.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 22 Jan 2024 12:34:50 +0000
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-1d7251589b3so9240535ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 04:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1705926890; x=1706531690; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4MwBAcrKdbC6/FKS38nrflJIvsjmnyFlJx07vNmPMm4=;
        b=HD+7xI35WkBfQ4IGglOIXqOJ0OAL4PW1gGAjCRT92lvNcFUo1rw8jtZ5Tmn2HwXDy0
         lXLV0Mp8vz+d+/hN5gxx7L2Y+VQmDq4hTyu68z0qo14epuGMdMHZLK3wdaW1DH5n6C/W
         vE+nqXXB/yGrwodZ7pTlIc2PoR0FzcBc9S0oE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705926890; x=1706531690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4MwBAcrKdbC6/FKS38nrflJIvsjmnyFlJx07vNmPMm4=;
        b=GpkNHUgyi9UMC72uW5C+65uFohxfHE3p5KDFiuUZAWFuPDv5RqegTC1LQKD9lb0WbB
         ANSt528FDaIjwR4odz0jHvvnXtQQBCvjpPu4WMmQeJ0FvRuCR9nBxPhf5DEK/D+dRR5+
         nT1ZbWenYYC/Dbuf9QpC7isIoflwnH6gOrID3TNF67XDKCUevpY59gBbwcGONaFiX7uw
         xHI8c+qVKhKgDTIt5e9nkRz621PFzdsYwu4u7opWE8Hw9WYYbRPrArD5NYNTc0jlk7A1
         ILDYw9tXmxhfQMOI3BvJMAp04MBrFGRIsbfVDTKdDylMzIYzfisLStWBAsX/R0ZZjYJ3
         Y4jQ==
X-Gm-Message-State: AOJu0YxfM2iW2FB9WqL4crniNbGR7Scprye8FX/qEfHiCuVXAwdQp/bu
	vYv++MKnA5UfLLeM1snffncaOv0Ht6scj7OjP1Mcdyjq+D0bu6dUcJeoMMvUL9LdisOto0lZiSJ
	vpq6DFpw2732O47L6+JTD1BxcaYGrXwhVntBSlpUO7rF327XCOXEyEjQMJZcTeitr3B4PbU54oE
	jPbdERWkLbeDJj+2beLA==
X-Received: by 2002:a17:903:22c4:b0:1d7:601f:a093 with SMTP id y4-20020a17090322c400b001d7601fa093mr393879plg.96.1705926889814;
        Mon, 22 Jan 2024 04:34:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEHy0PlP28nl2vOLylSR6SvUWTHUX9rdWPrekvnmVR+eT+Rlsn5GKb2Mr5IgvGFPwKuHuM6A==
X-Received: by 2002:a17:903:22c4:b0:1d7:601f:a093 with SMTP id y4-20020a17090322c400b001d7601fa093mr393868plg.96.1705926889516;
        Mon, 22 Jan 2024 04:34:49 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id f15-20020a170902684f00b001d721386cc2sm5372148pln.84.2024.01.22.04.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 04:34:49 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 2/2] arm: configs: omap5: Enable support for DCAN devices
Date: Mon, 22 Jan 2024 18:04:36 +0530
Message-Id: <20240122123436.11269-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20240122123436.11269-1-sinthu.raja@ti.com>
References: <20240122123436.11269-1-sinthu.raja@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1705926890-302221-12673-6670-1
X-BESS-VER: 2019.1_20240103.1634
X-BESS-Apparent-Source-IP: 209.85.214.198
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyMzcHMjKAYkaJaamGFokmpu
	YGpokWRklGqcZp5qYWiWnGFoZJBmYWSrWxAKPwg9BAAAAA
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.253679 [from 
	cloudscan19-122.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status:1

From: Sinthu Raja <sinthu.raja@ti.com>

Enable configs CAN_C_CAN and CAN_C_CAN_PLATFORM as module to add support
for C_CAN/D_CAN devices connected to the platform bus.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 arch/arm/configs/multi_v7_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 07d52c079eb0..87b2c6136e72 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -1305,3 +1305,5 @@ CONFIG_PRINTK_TIME=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_FS=y
 CONFIG_SPI_TI_QSPI=y
+CONFIG_CAN_C_CAN=m
+CONFIG_CAN_C_CAN_PLATFORM=m
-- 
2.36.1


