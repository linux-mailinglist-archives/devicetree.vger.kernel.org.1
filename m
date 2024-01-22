Return-Path: <devicetree+bounces-33746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FA983634C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBAFF1C22D1F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F8338F99;
	Mon, 22 Jan 2024 12:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="N6x+8Ymk"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip12b.ess.de.barracuda.com (egress-ip12b.ess.de.barracuda.com [18.185.115.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B33D38F97
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 12:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705926892; cv=none; b=qovmRLW0paXMtYxFcy8q0HixJZIliZLfYJsTZUDj9htFAsjdMhQ+47vUCpZzu8NMT9sbIK3C+srQxLOWekJ98+cz/LZW9XiVaWj1Sc8CwljPrEir919H3IQVTGUspx1g2yX70jN7jlAe2gaOi3eGBAFMFksie/rMaYnJY374xX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705926892; c=relaxed/simple;
	bh=5AVmJcWA7QugF9qRY66Qzo4tg7poEKJiuiB++h12ZiY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OJGqA+DcrRH3+MO+WB9YqsX6nEEzJxR/kD5fW6wNVR1XhiOzmSqYZdfLqAnfR7ynsuMSlJ48SekapedvsVWIw6AQwZRPtTsrg1X4e84LxBqmwziqprrjcKgByoYLlRG8Mm6Y7VCT5hX+fvDEcecxU7wn5ZKIZ+ZmQong8eLt2bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=N6x+8Ymk; arc=none smtp.client-ip=18.185.115.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197]) by mx-outbound22-87.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 22 Jan 2024 12:34:47 +0000
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-1d4a645af79so41732235ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 04:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1705926887; x=1706531687; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILkLPAjbZJrNYbml6xYiTBTFIOrycbmXUD+as2HwxZg=;
        b=N6x+8YmkiZth63vwkY33RW9SC9NZcWLMXB33RnYkzLfZ+5kDNfZfzin+HJCw1RPwUI
         PaS5yhLoijDtJeulkBte+3PYjdb7uZ4K4aSoLGbDSx0xuMgPJGQoWN/kuwCqlZp8wvBy
         cLcIzVCK1ByVx3xU6h9ZCZ43wJEx1qNKXW6Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705926887; x=1706531687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILkLPAjbZJrNYbml6xYiTBTFIOrycbmXUD+as2HwxZg=;
        b=webfl8/uHajFNcFGZW0bYU7/6y/AQOBuRvF/amZjxYGkd0HI2NnPAv85N6v/XnYkjN
         NxCe7ktawjxLZsd6ZPMDjGXfhYQNnBL4xNdRGqBZVwp1Tbn1DrAQeaByQHccrgZrqTUh
         9XYr0YRtmjfCvn7N9fNOAMQOUtm3edKANDt/Xm5f8cXxC8TuewumlxghswR/3tDT6A2a
         OZ5iXfYsRlkpiLlWV9rCaMSJUctezyimvJtZOLSy829Sm0A67YV0nmYZToPVd3CxhHmN
         m8nxH5H6SgFki3R10W8QR92sVyC2x1p8l4Dpy3kw+ybR06EbxW+ERu0ruR2iAkGoqhN4
         xKcw==
X-Gm-Message-State: AOJu0YyTG53/OiXJOnKlYL5GmW2HYy5J3PrcH1cvZFmhd9niH1YcC+rV
	Yq/s+ugrsjR+lcsBqpFWvFpqWePP9KZfXT1b79I1CymlerEwcbpaI27pefySHKQoZ9ZYbTdyYdB
	9xWDNw5awcszymED6f5H9DcUsvMnkEmqchTXmkKijdhfdnS4Knlsp7DA59a2XIhyT2/50Xn0iqR
	cuNR1FjcNs9IOS0J8e8A==
X-Received: by 2002:a17:902:7404:b0:1d4:3eb1:1e3 with SMTP id g4-20020a170902740400b001d43eb101e3mr4398816pll.13.1705926886820;
        Mon, 22 Jan 2024 04:34:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5GKBnKcgwQofDyubSKeVwC2/jw4dmQh+9byCos8My//ZEiU2IuOFF3+wzrmAw+y2PBtnJrg==
X-Received: by 2002:a17:902:7404:b0:1d4:3eb1:1e3 with SMTP id g4-20020a170902740400b001d43eb101e3mr4398809pll.13.1705926886543;
        Mon, 22 Jan 2024 04:34:46 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id f15-20020a170902684f00b001d721386cc2sm5372148pln.84.2024.01.22.04.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 04:34:46 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 1/2] arm: configs: omap5: Enable support for QSPI interface
Date: Mon, 22 Jan 2024 18:04:35 +0530
Message-Id: <20240122123436.11269-2-sinthu.raja@ti.com>
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
X-BESS-ID: 1705926887-305719-12607-5972-1
X-BESS-VER: 2019.1_20240103.1634
X-BESS-Apparent-Source-IP: 209.85.214.197
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyM7YAMjKAYmYGZiZJKWnGKS
	YmhskphinJyalmhomGxkYWSakWiSmGSrWxAA8xE/5AAAAA
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.253679 [from 
	cloudscan21-169.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status:1

From: Sinthu Raja <sinthu.raja@ti.com>

Enable config SPI_TI_QSPI to add support for QSPI master controller
driver for flash devices on omap5 platforms.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index ecb3e286107a..07d52c079eb0 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -1304,3 +1304,4 @@ CONFIG_CMA_SIZE_MBYTES=64
 CONFIG_PRINTK_TIME=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_FS=y
+CONFIG_SPI_TI_QSPI=y
-- 
2.36.1


