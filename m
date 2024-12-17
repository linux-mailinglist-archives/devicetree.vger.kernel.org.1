Return-Path: <devicetree+bounces-131910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4679F4E76
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 15:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17D7C16E96E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218541F8684;
	Tue, 17 Dec 2024 14:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CpnDPIGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B21F76A0
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 14:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734447089; cv=none; b=nDwigroPO4zLE9AFRM1jftvS2xqt+oJcAMTUhsOa5Th+zoJByKwoXhOUCcrvmTb3Yu9Li9M2tbI0ODXa68KarFk4QM1sOVvAVRoRoZeLKiw5mNd0c43Mzq4htoYgtSmQHnILG6OsHavZDaS4+grlKmhcTH10mCDpc+Y7g3fgljg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734447089; c=relaxed/simple;
	bh=yovwygK3S8pu26HzluofMUYGeWNAA5KC7l+8jvZOelI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H1DJnmCQiZOJzWqJLoqx/eUMvVhL+G8vaep1KjU+zVWc/KuAqIwML38hdH3ETGoZufT1xUWoAjYVqerTaFhQ/hFuvOzfJRbuuIM4wBtLQ/d5H6W1vRAGFs+aG1fWjwkP7vI5AiqVK8dHviPRYVUZnh5eE5HJ4DSeIrSkRwka8gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CpnDPIGO; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3863703258fso3858464f8f.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 06:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734447085; x=1735051885; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNypXtc4nIg+qb7sUPhcVsJhL4eqdZ8B/Tfk40MaJXk=;
        b=CpnDPIGOTmTcAK3G4gKirqCAEj+VF5NI/kgZust8JYlM2bafoXWtBDuyyBd4vsmiKj
         imaxqvBdHpib0TNZgg5kWpm2aYBZU0hMbnX+EvYMCHqme1N1IT1azQW+76aLMj/eDKX0
         Hm1YKWYXLMXI+JvvCuXMF6ZCOpFeH00H7y/DiV1PdtdpF+4LH5u+yrg2Q6UAT0O6dTGr
         /oK7WWkPQ4BmGa20cFJF4fZtQpGF5up8Pa/Pwodki8lqAoMT18Z4e2aifILSxgWzBcXs
         Rvy9SBjDlNHiDYY4SD7vD/uUbMKNdvUPeC0NB64KVzvp9e6Kn5ykN5ziSP5V8ar2TFSY
         QxyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734447085; x=1735051885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNypXtc4nIg+qb7sUPhcVsJhL4eqdZ8B/Tfk40MaJXk=;
        b=TAgTfGy8YlrqE2FQ+zQRyKYheCOFnOPNk2phc4KYvEzKxuMJb2uo1V/cHtg9xIZgP6
         PsNt9eIUzX9J8QUP3GQJUFiQYYF8MBDVQviq4O7U0KpOFBPaVnyQxOWzvJBEu8VvyXYv
         dNFF7xj1nVOJHDznvNNaXWcB5UOebCNireYxk+y/jTKj5DuDdVUEm0WLPQdNCg5jiljc
         ENJYDn/3yHeFOAFtudWehvg0gUYdLdFGo04HtzbO383/mE0EYhs9aUy+vxSM9gjXY0XD
         j3+ezjK9uXYTp99lOrD3TRg5iRZZx60zLbn7U5sC8eUkdEQc+VRW/PqBEyCp6dBtlREj
         kfmA==
X-Forwarded-Encrypted: i=1; AJvYcCX/Bl73kOyBR8DSvwnzFIP91hj2QPoI5NILCc77obkCxwmwMgyw6E5mcqPjmjVSoDTBsqMevWSYXX/i@vger.kernel.org
X-Gm-Message-State: AOJu0YyIxtu9Ja6fgsksNgYO1aTZWiQvfNP+gAhrFFCqxFj4n0963wkF
	BDPUCg3dBZous9jwOpcrsA815YL2ZV5gDiX9SYn/PkLXzqwnffpc5a/t2uS3IFM=
X-Gm-Gg: ASbGnctOnteamDAtpYfJYu9NuicgZ8mkU27at8IsyE9v9TYbhg9o9Oonud0Uctvmxce
	c5YRbqWnt53DI4om4TZHoSJHywQCslOLfyHgAaOo2Bw65AIPv9tUh1D1Ru5VHLp4uTWTUvsdcNN
	Y0tuJLWdaaO1N9unbH41Tbl/nKn/BP2lj8dVat0q0wY23yOV1DS1zA/T8MYMSSM0mPkXgs8Q6Jn
	Cebx9XTUaEzNipfD4ITwb5oZJ4cNg8CTQaZCc/fD7xWu3r1vzpDi98ZTPhiVRuu2tSCXSoQl0kF
	Hw==
X-Google-Smtp-Source: AGHT+IF08CqGEVMJZfbJ7r7qZe8j0gbc+u42o5OD37BNt0zBqfD+ESOHAWpRHvgX9n/HUYO3z7ZyYw==
X-Received: by 2002:a05:6000:186b:b0:385:e986:416f with SMTP id ffacd0b85a97d-388db23d94emr3354627f8f.10.1734447085525;
        Tue, 17 Dec 2024 06:51:25 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43636066f51sm118417375e9.22.2024.12.17.06.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 06:51:24 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 17 Dec 2024 15:51:16 +0100
Subject: [PATCH v6 3/7] drm/msm: adreno: dynamically generate GMU bw table
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241217-topic-sm8x50-gpu-bw-vote-v6-3-1adaf97e7310@linaro.org>
References: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
In-Reply-To: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3622;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yovwygK3S8pu26HzluofMUYGeWNAA5KC7l+8jvZOelI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnYY/mUIDbjRQ+iZT5JSE6X/+2KtHYBNH8pag3vPUd
 orbGlP+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ2GP5gAKCRB33NvayMhJ0STND/
 0aQZf1zj9prj6KG3kpeRhL+QNj38Aty/ttRl6Mpn6Tq9CdEIlEF1VNrv732vP9Z1iXlCFb+lUUcI59
 sMh21mihHwXVXanwwwy7WaneLGTuMlSpXpkPo+QvOVU5Rv6eI/Ax6SZFuV32fQoz3DORB9vp30sTH3
 xHAXrUc12SrofQItGTcxzr/1rYbx+yj1d/Jw4zQRhsUG0qowPq0QEnrgiy0h4gpLoVOKzQHVGvkvIs
 Qe8WcRUqvek6g6QZSKtZfxrHZohdq8FZZoXUmOEDYYhu9iEbZRdQ0Q//i2G+aHy7ZftYQkq9CQEWrM
 xN+RRk8uJHrjiKdB0kE+ppJnIwMVqGlTR0potzScAQtMs0PmAF78LvEihBGQo9TAFegkx0qDW2pLAg
 9yLBI1/rNSGWZVRtpv86Yxvv6fUpXFxB9CbsbI6b9G5yTatm8HzWWuqAbhpeaQlTXXdV3MvCkr7IL+
 CDasBq2BHRnMN6OcJC0TWGArfkBnoo0MDzzPDx3QbssFwzni3JjeKntNPGd8hHsOPbr4h+E6ZcsFaj
 kH8wBbNlBBeQ/7EMcUt7Qtj06/XY7YPonMPS+OUJdJbo0twWOuz7NhTUN4qBP3bV8hYe3cCIkMWuNo
 A9u7zbXaEfafzdr0+L/H4PF4BeSOsNcW4rMzjxhw2/uZQuLn2PMjd/enLcIw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Adreno GPU Management Unit (GMU) can also scale the ddr
bandwidth along the frequency and power domain level, but for
now we statically fill the bw_table with values from the
downstream driver.

Only the first entry is used, which is a disable vote, so we
currently rely on scaling via the linux interconnect paths.

Let's dynamically generate the bw_table with the vote values
previously calculated from the OPPs.

Those entries will then be used by the GMU when passing the
appropriate bandwidth level while voting for a gpu frequency.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_hfi.c | 48 ++++++++++++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
index cb8844ed46b29c4569d05eb7a24f7b27e173190f..995526620d678cd05020315f771213e4a6943bec 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
@@ -6,6 +6,7 @@
 #include <linux/list.h>
 
 #include <soc/qcom/cmd-db.h>
+#include <soc/qcom/tcs.h>
 
 #include "a6xx_gmu.h"
 #include "a6xx_gmu.xml.h"
@@ -259,6 +260,48 @@ static int a6xx_hfi_send_perf_table(struct a6xx_gmu *gmu)
 		NULL, 0);
 }
 
+static void a6xx_generate_bw_table(const struct a6xx_info *info, struct a6xx_gmu *gmu,
+				   struct a6xx_hfi_msg_bw_table *msg)
+{
+	unsigned int i, j;
+
+	for (i = 0; i < GMU_MAX_BCMS; i++) {
+		if (!info->bcms[i].name)
+			break;
+		msg->ddr_cmds_addrs[i] = cmd_db_read_addr(info->bcms[i].name);
+	}
+	msg->ddr_cmds_num = i;
+
+	for (i = 0; i < gmu->nr_gpu_bws; ++i)
+		for (j = 0; j < msg->ddr_cmds_num; j++)
+			msg->ddr_cmds_data[i][j] = gmu->gpu_ib_votes[i][j];
+	msg->bw_level_num = gmu->nr_gpu_bws;
+
+	/* Compute the wait bitmask with each BCM having the commit bit */
+	msg->ddr_wait_bitmask = 0;
+	for (j = 0; j < msg->ddr_cmds_num; j++)
+		if (msg->ddr_cmds_data[0][j] & BCM_TCS_CMD_COMMIT_MASK)
+			msg->ddr_wait_bitmask |= BIT(j);
+
+	/*
+	 * These are the CX (CNOC) votes - these are used by the GMU
+	 * The 'CN0' BCM is used on all targets, and votes are basically
+	 * 'off' and 'on' states with first bit to enable the path.
+	 */
+
+	msg->cnoc_cmds_addrs[0] = cmd_db_read_addr("CN0");
+	msg->cnoc_cmds_num = 1;
+
+	msg->cnoc_cmds_data[0][0] = BCM_TCS_CMD(true, false, 0, 0);
+	msg->cnoc_cmds_data[1][0] = BCM_TCS_CMD(true, true, 0, BIT(0));
+
+	/* Compute the wait bitmask with each BCM having the commit bit */
+	msg->cnoc_wait_bitmask = 0;
+	for (j = 0; j < msg->cnoc_cmds_num; j++)
+		if (msg->cnoc_cmds_data[0][j] & BCM_TCS_CMD_COMMIT_MASK)
+			msg->cnoc_wait_bitmask |= BIT(j);
+}
+
 static void a618_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
 {
 	/* Send a single "off" entry since the 618 GMU doesn't do bus scaling */
@@ -664,6 +707,7 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
 	struct a6xx_hfi_msg_bw_table *msg;
 	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
 	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+	const struct a6xx_info *info = adreno_gpu->info->a6xx;
 
 	if (gmu->bw_table)
 		goto send;
@@ -672,7 +716,9 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
 	if (!msg)
 		return -ENOMEM;
 
-	if (adreno_is_a618(adreno_gpu))
+	if (info->bcms && gmu->nr_gpu_bws > 1)
+		a6xx_generate_bw_table(info, gmu, msg);
+	else if (adreno_is_a618(adreno_gpu))
 		a618_build_bw_table(msg);
 	else if (adreno_is_a619(adreno_gpu))
 		a619_build_bw_table(msg);

-- 
2.34.1


