Return-Path: <devicetree+bounces-33745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2495083634B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2548290F4D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D14738392;
	Mon, 22 Jan 2024 12:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="WUC9zpKi"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip12a.ess.de.barracuda.com (egress-ip12a.ess.de.barracuda.com [18.184.203.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E5036125
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 12:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.184.203.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705926889; cv=none; b=HApXNrZHcPiHLG/pid7iqR1v7BFs9b+ZrU+izr7z5Osz+yHIdeKTMWYY3iA73e4VzmfeqbWRbuBMXwa10SVutNC/kZ44QN/htAU2IINF1mELshrehKtkmQDm4MBeaou7US1OjMHz6cExFF5MdfPGCQ1DQTVZ0AuQm9RgHUk3XxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705926889; c=relaxed/simple;
	bh=e5zx+uTDddh3y7dxA0VqdI6el6KqEPCpbzdUhR0CXVE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=r6MPBQdxXBsNtLbKdgCtDUi1MKZz1fkKMJ08nvYUlrrRuq2qZK5EDiXH/c5P0tZjWUk3gAOn+qvR56A/Q6nikW3/5YuTE0kXHh1cms1cyPlHjMPM2Mx2tKPNXFeFntDvzXu8bC/133Caykrzto42iGGqCbTnRojNuck7yvpJ+IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=WUC9zpKi; arc=none smtp.client-ip=18.184.203.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197]) by mx-outbound8-173.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 22 Jan 2024 12:34:45 +0000
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-1d73eff3f25so14789465ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 04:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1705926884; x=1706531684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H3qWdam+hsCI3eccozagY9AfL8sulDvAzxRxufeMmoQ=;
        b=WUC9zpKiaZyewg572Ue4mb5A8YMOIWk3BIqIA2DTDAEuv8NBQkZ+9gfA+kmLGYVq/X
         +OwRUkQD411Nb1jN6TnUbzyZrTT5Y2ifbm1VDZUGqtP8ul98+wvukABkfoK3H/Yuvl7N
         3Cl1YjPwlbsx/7s1wJkL2BiVRguM6uGCl0Gzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705926884; x=1706531684;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3qWdam+hsCI3eccozagY9AfL8sulDvAzxRxufeMmoQ=;
        b=ijG2pv0Qhc8jVWL0x9SYvlVveIn3ptaKmQMAn8spaaNwrV7YZx+mYGG5KaRFeV0lt+
         a6iTbZLsKIkA14Y+dJn+2FIBdZFb8rOQzF4UvJCVXNbl8UEmw19ILBVP/h14gy5CbKhU
         JB79d1AkIG2IyL1Vze1ZcpCIoB1k02ybAm90aoVVCEhWUg5sWssjJ+C/pjf2i4ARPo8j
         L82lLbp82Xofk/9ThTYMhe52WR3x07mWdivoZYjm5p6cl30QFsnRWU1DLtTP1n0h5uNz
         FV8X3N1dDFW1em44Hj0y9kvIGsOYpqnCP1GNf7C+QVOWI4tPObwQGUD+4PDrlxYKuqFA
         7EbA==
X-Gm-Message-State: AOJu0YyB9GQ4NQbTH1Guij3300HF5GSNdfZAIpDqoiu7WLhHkZkN8FJD
	3AK7PVnpaF2ahcKB8qauSLbJ/dyfPhH0oYMDO09SQ5sWuNVDTFMPZjYb87Me/03W9tLxvxiMlkG
	nAzI+83NjlZIZ1nfT6WsXa16yePcF4LY+la7X9lK7lPk/KfNUGJu3xHwfAfvNMT9n9G7WIgmokX
	YjNEQ6DZOVE7LvCkq8yQ==
X-Received: by 2002:a17:902:e88e:b0:1d4:4768:5f with SMTP id w14-20020a170902e88e00b001d44768005fmr5214309plg.37.1705926883957;
        Mon, 22 Jan 2024 04:34:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdd5V3vWMEtHrpIclq7URlksLY0yUvW6Fcegfd2zWN/WwBxCnNjkekl4WDNYBPO+x2keOavQ==
X-Received: by 2002:a17:902:e88e:b0:1d4:4768:5f with SMTP id w14-20020a170902e88e00b001d44768005fmr5214298plg.37.1705926883687;
        Mon, 22 Jan 2024 04:34:43 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id f15-20020a170902684f00b001d721386cc2sm5372148pln.84.2024.01.22.04.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 04:34:42 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 0/2] Add QSPI and DCAN support for AM57x
Date: Mon, 22 Jan 2024 18:04:34 +0530
Message-Id: <20240122123436.11269-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1705926884-302221-12673-6662-1
X-BESS-VER: 2019.1_20240103.1634
X-BESS-Apparent-Source-IP: 209.85.214.197
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyNjYCMjKAYmlmpklm5qZmlq
	ZpFhbJSQbmxsbmyammRqamFhaWpolmSrWxALq8IeBAAAAA
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.253679 [from 
	cloudscan12-112.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status:1

From: Sinthu Raja <sinthu.raja@ti.com>

Hi All,
This patch series add QSPI and DCAN support for AM57x driver


Sinthu Raja (2):
  arm: configs: omap5: Enable support for QSPI interface
  arm: configs: omap5: Enable support for DCAN devices

 arch/arm/configs/multi_v7_defconfig | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.36.1


