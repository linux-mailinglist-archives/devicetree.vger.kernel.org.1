Return-Path: <devicetree+bounces-253075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00640D07216
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E491130285D3
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9055419309C;
	Fri,  9 Jan 2026 04:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="akkoRoVL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D557A29AB1A
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933243; cv=none; b=kBBdRyl3xhhJ4go3lp6mEprRIHLLXaBZHDYBheBN3Fm7m+MVus7gejM0EqFeLco783YmEyiuKmbIEnD30n65CkT7YIHuPtHc4GF40rkwQaLJW3cdiFBdvH8bSLxmGmrhpvjgg0qAQYIinxe/Iff4/ddtA06uoWpBFWIQU5le7+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933243; c=relaxed/simple;
	bh=5f6p0MjIoVb94q6Yxdkk6cMxfowH7rGbCR5LyjqAQyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CG3p0SP2B9MRfA9B+wsU9xLa78L6iY+oVI4YdD+yBt/BLQLQd+H0OjPeMuk9vXZSSyoTsD49l6c1nfIeGs4gsqA3IUptUaoC3VrY51hvlfgjuuDAsrHaJaN21RlnEoMxVD/KHMjlw0Sr+rgtepKOxD3soj4wH3CZJzEopvz6708=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=akkoRoVL; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-450b5338459so2434853b6e.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767933240; x=1768538040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qRS9gGAPNZv0m+OPKpcvbvMDMuzC8rP8cL50+cIuJ0c=;
        b=akkoRoVL2ooyD0aS66WYGUlwVjVpI6hifX+HiJliL3WQlvlk9qq5xMIPnRXMSXFdS5
         pfKghQQGsescD1Sx/rzRp6ualLsuhK2Ma+stXU4S78hFHEsmYpRthZmJMCBnlXGCcvuj
         Njxca8mYlMvmhjM/HymVZRyzyUoIm2Ab/CZhn1ENywLk5zzZMFsLNrfyqKwbrmIE0pae
         7P1tmCl5OCq1DbTEjkjrn7XcwC5TnfEhhjSaQm0y34MCAxnP4juK5J8ZWqealSYSJIql
         eIxJyd7wg7BEJoiLKS/X7ZbGdUg4RgpIuqdoHTpiC8f2E0C1nrvL1SLgioy3vPNlhfCb
         +vmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767933240; x=1768538040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qRS9gGAPNZv0m+OPKpcvbvMDMuzC8rP8cL50+cIuJ0c=;
        b=JeuEnOlHaY51tv9GIp10aCmTBkY2Iyo7EXqHHocVK1yK+JbBN/3Pdz/AkoDNcRIyqS
         6NuXz3qA8iv2CQnpqXlCm3H2ZbI7K93ouD6+Zp05Xdfy0NmYSaT6Oy5oJKc7mavJ08S3
         qnjBfFtiEMQCvoZVW5PDAYAs9uWmYu3tW0A4eoFd67HQ/U27iff6F9Q+Db4qzGsY7M+K
         RuQT3Kf/ooQ3iHXjwR+/fgWijqvIbXE/ube6uFz2XKuqRFfgvPmdxZGBo2YA8scPogLr
         c0013JwBgKzss62CNnY33yyVx1iIt0PwlH0HyYR2feq5gEqyrIhp3pMieLT0p1M8nqJQ
         H/Xw==
X-Forwarded-Encrypted: i=1; AJvYcCUuW7vKWJK1eP8+WRQ7pEhfIEyWX+jGKHXXm9O7qMmSwV1HW/eMdqnqM04tcdDy6LAYsmI7lpyPG6xi@vger.kernel.org
X-Gm-Message-State: AOJu0YyAaf7TuqV9LA+MMZtRYbdNEwu/U3aYCxJcptZ+q86B7pRKLF2d
	g0hVXU/i2qp0yGNDXtGGmE7aSauPCZ8tdF93X/DRPsgMNB6JWd1CaB53RUzPIQ==
X-Gm-Gg: AY/fxX7b5f+DqGBTZtRn0Pxi0195JoPqasc0DocNmXnTE+uYI3QSTgf2woMSb0+IN3C
	ZgXqqVOEDrdH9P9wmdh/jxwjQsuiwoCNL/7Rvmd233hZvc9xDhKV66erx6fxffbGDScrtQBwz0x
	znwDMl1pFW0xgjpiY6+8ysL9vecvet9ELEEf5b+QlhVjV9DKwAkeDZ7NM/nMCVN3HG0O1JQnqh3
	DvfQ5hLKTio+F08BWkOGnPFb+8i5oaaVbkUn5db6+h0EU1vrjyYZt4E0WTzxGPwKVb6WGROsO3X
	BmEJlvCgZ4SPRaPka86JgVOdsb0KiHyt3CvBLIA30xejkiZoo29gUXlwmNnJkTUfFzbv5yu2PA6
	/bs/RZOOMYT04j+ttp28h3OzNXBE8uFtxkTY442UWq9uPwCKNEMJR7E8mePKz86C0V+Gu177rJI
	VTyR6zmuDBGnJt2fT/XotLZq4A4rbH6iLcbwC2x0/PKLNZG83kv58Nog/CY5EnqlKWV/6jI1AyP
	oCK16tMNDtwJ//cSHG862Sysqtn
X-Google-Smtp-Source: AGHT+IH8qFTLvCobTc/CYdKIqn0h+JliChB6LnP/bfX/6ft/VEkThcEwU+4hDQ5PgxrGSgk2Rnoa/w==
X-Received: by 2002:a05:6808:6a89:b0:44f:8b8b:5dcd with SMTP id 5614622812f47-45a6be987admr3631854b6e.50.1767933239894;
        Thu, 08 Jan 2026 20:33:59 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa515f4dasm6274421fac.21.2026.01.08.20.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:33:58 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: andersson@kernel.org,
	krzk+dt@kernel.org,
	mturquette@baylibre.com,
	linux-remoteproc@vger.kernel.org,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
	Govind Singh <govinds@codeaurora.org>
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v2 1/9] remoteproc: qcom_q6v5_wcss: drop unused clocks from q6v5 struct
Date: Thu,  8 Jan 2026 22:33:36 -0600
Message-ID: <20260109043352.3072933-2-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
References: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Three of the clocks from struct q6v5_wcss are not populated, and are
not used. Remove them.

Fixes: 0af65b9b915e ("remoteproc: qcom: wcss: Add non pas wcss Q6 support for QCS404")

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
Changes since v1:
 - no changes. Moved patch to the start of series.
---
 drivers/remoteproc/qcom_q6v5_wcss.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_wcss.c b/drivers/remoteproc/qcom_q6v5_wcss.c
index c27200159a88..07bba47eb084 100644
--- a/drivers/remoteproc/qcom_q6v5_wcss.c
+++ b/drivers/remoteproc/qcom_q6v5_wcss.c
@@ -123,10 +123,7 @@ struct q6v5_wcss {
 	struct clk *ahbs_cbcr;
 	struct clk *tcm_slave_cbcr;
 	struct clk *qdsp6ss_abhm_cbcr;
-	struct clk *qdsp6ss_sleep_cbcr;
 	struct clk *qdsp6ss_axim_cbcr;
-	struct clk *qdsp6ss_xo_cbcr;
-	struct clk *qdsp6ss_core_gfmux;
 	struct clk *lcc_bcr_sleep;
 	struct regulator *cx_supply;
 	struct qcom_sysmon *sysmon;
-- 
2.45.1


