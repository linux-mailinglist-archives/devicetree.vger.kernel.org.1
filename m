Return-Path: <devicetree+bounces-122946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D7E9D2DB8
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 19:15:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63D07B2856F
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 17:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5EB1D63F8;
	Tue, 19 Nov 2024 17:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RT06i5g1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B691D3648
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 17:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732039015; cv=none; b=MxTEtvI5FEHJlFeYq/9300T5PUQ29z/g+WkseYTIQcXcnvPsamW+KhSvTUT2DL9WMDmKMpKnzEXauPBujSyE7ktRSDQa6RSPCWGorPSM5/4A6ob9HOI4IlPeJVgZDcC6RUX/5Lc2XmtziHGWmlKkhqKIy+8AE/5qB3c6eyOGcFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732039015; c=relaxed/simple;
	bh=HBRDsNw9Gt6y+bhLpW3yKrF6dqOXzdwZOiJPQuFbYDc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uWqIxq8ggSSowUnHxGrJahtNJb0NPKX5KtO9bNb5POnnzFKxUK6rOnu6dd5CzONV360G7mHLVvO22KwQ9W+seHU5XXxlvq/WZj+mkDZO3cmSKwSPM1X8pw2PT6YOW8NdefLSoWng+eSw53Usr+aFo5SWKOfiufKSsyTqEMCVpM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RT06i5g1; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4315abed18aso30763935e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732039011; x=1732643811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mODA27TpHEFSjNHYuAShnzvbkOsJQWCOCgpBEnmiNV0=;
        b=RT06i5g1tfhNIHtgYxBXHZENYinzqHw7t3YQJMeSfrdw4Klb/1czWsjdedFXLjw62l
         rso889QLxCdwczviWVeRqpWt1+jv6LhNzaxYVyJ3mvWmnrp0vrAIN4wsa4I3l+N3RO7m
         9w3Ig3XcVDvn15Ru8b95bJQz0q9tpeVFy1maAIjyMsixRjfgZ8MqdbZvfBd5JsgRisB2
         KRTJ6mHMidRzl1Qh5dQFBPSxywUKEqWSsj3/o7Wz21SRdquB2ksXhsyK/Twy80NaPqg1
         zo65Wfl/a1+9rNbfO81khGTQlaxHHhcNpI4rvj2Ic/lLJc4Fm6NkOGjA78kF6WfFAVXD
         lV2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732039011; x=1732643811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mODA27TpHEFSjNHYuAShnzvbkOsJQWCOCgpBEnmiNV0=;
        b=wOOGUldq5uuVCiKQXQ6d58mLu75zgDIaygIZBr+1cumBpnGhxbnuHobDGMIWZcvwZo
         o3aRKylsLIGviVD9Xa0yyAUA9CvUv3tgmUtY7KHmy8dVHVFDkWn6Zjbg9uiICvC6bULy
         sPxogM2BfheA5H3SpUOVjyqcOQUKXlBJBF8hIaU3gobU0znQOHnGKWvFNmnKpRuv3uRk
         9prv/aiKvC65l50Vxb8dyDMLC+On5JQ0iCAzvUORyEvmwf9a4D3ovc4WiuFyPOnc2+y4
         Jl+nW31S2nrTBp9u/v7EcgnbKBqOnh6+2iIj5O8AK6bf6BkE9+lsibXDXjeRGymQy5lr
         4HUA==
X-Forwarded-Encrypted: i=1; AJvYcCWzjgNjLMZIcoshRMtrR3Ta4OQff6pY1fd1msyBba/1TM4wvZkWRH+d20RlRF3V8SOaFQUUNpeAtyQN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu1YIqoCKOQKu4lyunxgIjXAMRqEnf4113n85fz4HEH+uHOisE
	qi3qSG7i+8QCClVKZ3j/0gds2ca3uxNw4IVjnqRuD0UaPm+rmR3lBEVNuKnRgZ0=
X-Google-Smtp-Source: AGHT+IEIh9guwWafoOVzdqcqMneTNzLlCikQcix1Okd/2UKoGGg8dRIr6nVL5DMBiKYUjsiH20i5VQ==
X-Received: by 2002:a5d:6489:0:b0:382:4b5c:4199 with SMTP id ffacd0b85a97d-3824b5c443cmr4155056f8f.23.1732039011254;
        Tue, 19 Nov 2024 09:56:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da27fe68sm208302275e9.24.2024.11.19.09.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:56:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Nov 2024 18:56:40 +0100
Subject: [PATCH v2 05/11] drm/msm: adreno: add plumbing to generate
 bandwidth vote table for GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241119-topic-sm8x50-gpu-bw-vote-v2-5-4deb87be2498@linaro.org>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8513;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=HBRDsNw9Gt6y+bhLpW3yKrF6dqOXzdwZOiJPQuFbYDc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnPNFZciGIWjU99nYrv3NSOQ4FRH3hxQiDaFs6246i
 RlQfCXiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzzRWQAKCRB33NvayMhJ0XaXD/
 9sxJ6sLTAV3AQgvaxK3VtgOkK+SIdgj3aSi5wz27qL4RyV6y8qbCEQDyjmgugrb4QYpZjFjKGoMHgZ
 YQuzel7XHdq1WQpRC08mWPYYIBqBbIBiRK6LxAJfxS+MpzMaXOv5eljv9M8OvC1eBO4fTpivZVdfBI
 ckMBHf5ni7J/VHBtjiBMU9p8oTx6MjAlBAemWJ5+q0BJxRUrqsOcqNRxnZRR5gpBj6C9/4SpTMx2kd
 NHxi14GAmYbOAxGEc8I1iN6v1tmuplGrOoohUd7ANZ2Dp1jYGB8/SKG5cvdTo6JoLZhsadzl/ySp6F
 KrC0UVqEe+g2tle59g2P7UPPlVr+mHXvEROL8olESrRZuRkDRKoU/W01Aopj2nuaRBiAA0/U95TnZ0
 SGxr8hJufYk7h4Z/IdRJwMk24t1126U9Vw5cQJRrJMWPqA+Y9XT+aVxCgBfPr/GpE3Q4YN/MKDRwTH
 diwf21IVK9cJjkEY6Nu0Z4XcF0LL6cXiilJekN5OjXLdJ4iACvdu5OUAbkbW9rA+lSABkd904VlmbV
 VNALPpQEHDOXe0sNN6Ih0aWXG0wtPCYSJQJbiabzo39J5LH+7sHwg3ATv2NlxcmNZgKF7GRufL9CPr
 3OgJ4F7mJPn/TG2j64jwiI7kN2QrkYKpPQFskVaySRgn9sSKHHecU1LLZ0cg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Adreno GMU Management Unit (GMU) can also scale DDR Bandwidth along
the Frequency and Power Domain level, but by default we leave the
OPP core scale the interconnect ddr path.

In order to calculate vote values used by the GPU Management
Unit (GMU), we need to parse all the possible OPP Bandwidths and
create a vote value to be sent to the appropriate Bus Control
Modules (BCMs) declared in the GPU info struct.

The vote array will then be used to dynamically generate the GMU
bw_table sent during the GMU power-up.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 153 ++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  14 ++++
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h |   1 +
 3 files changed, 168 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 14db7376c712d19446b38152e480bd5a1e0a5198..f6814d92a4edb29ba8a34a34aabb8b2324e9c6a4 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -9,6 +9,7 @@
 #include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
 #include <soc/qcom/cmd-db.h>
+#include <soc/qcom/tcs.h>
 #include <drm/drm_gem.h>
 
 #include "a6xx_gpu.h"
@@ -1287,6 +1288,109 @@ static int a6xx_gmu_memory_probe(struct a6xx_gmu *gmu)
 	return 0;
 }
 
+/**
+ * struct bcm_db - Auxiliary data pertaining to each Bus Clock Manager (BCM)
+ * @unit: divisor used to convert bytes/sec bw value to an RPMh msg
+ * @width: multiplier used to convert bytes/sec bw value to an RPMh msg
+ * @vcd: virtual clock domain that this bcm belongs to
+ * @reserved: reserved field
+ */
+struct bcm_db {
+	__le32 unit;
+	__le16 width;
+	u8 vcd;
+	u8 reserved;
+};
+
+static u64 bcm_div(u64 num, u32 base)
+{
+	/* Ensure that small votes aren't lost. */
+	if (num && num < base)
+		return 1;
+
+	do_div(num, base);
+
+	return num;
+}
+
+static int a6xx_gmu_rpmh_bw_votes_init(const struct a6xx_info *info,
+				       struct a6xx_gmu *gmu)
+{
+	const struct bcm_db *bcm_data[GMU_MAX_BCMS] = { 0 };
+	unsigned int bcm_index, bw_index;
+
+	/* Retrieve BCM data from cmd-db */
+	for (bcm_index = 0; bcm_index < GMU_MAX_BCMS; bcm_index++) {
+		size_t count;
+
+		/* Skip unconfigured BCM */
+		if (!info->bcm[bcm_index].name)
+			continue;
+
+		bcm_data[bcm_index] = cmd_db_read_aux_data(
+						info->bcm[bcm_index].name,
+						&count);
+		if (IS_ERR(bcm_data[bcm_index]))
+			return PTR_ERR(bcm_data[bcm_index]);
+
+		if (!count)
+			return -EINVAL;
+	}
+
+	/* Generate BCM votes values for each bandwidth & BCM */
+	for (bw_index = 0; bw_index < gmu->nr_gpu_bws; bw_index++) {
+		u32 *data = gmu->gpu_bw_votes[bw_index];
+		u32 bw = gmu->gpu_bw_table[bw_index];
+
+		/* Calculations loosely copied from bcm_aggregate() & tcs_cmd_gen() */
+		for (bcm_index = 0; bcm_index < GMU_MAX_BCMS; bcm_index++) {
+			bool commit = false;
+			u64 peak, vote;
+			u16 width;
+			u32 unit;
+
+			/* Skip unconfigured BCM */
+			if (!info->bcm[bcm_index].name || !bcm_data[bcm_index])
+				continue;
+
+			if (bcm_index == GMU_MAX_BCMS - 1 ||
+			    (bcm_data[bcm_index + 1] &&
+			     bcm_data[bcm_index]->vcd != bcm_data[bcm_index + 1]->vcd))
+				commit = true;
+
+			if (!bw) {
+				data[bcm_index] = BCM_TCS_CMD(commit, false, 0, 0);
+				continue;
+			}
+
+			if (info->bcm[bcm_index].fixed) {
+				u32 perfmode = 0;
+
+				if (bw >= info->bcm[bcm_index].perfmode_bw)
+					perfmode = info->bcm[bcm_index].perfmode;
+
+				data[bcm_index] = BCM_TCS_CMD(commit, true, 0, perfmode);
+				continue;
+			}
+
+			/* Multiply the bandwidth by the width of the connection */
+			width = le16_to_cpu(bcm_data[bcm_index]->width);
+			peak = bcm_div((u64)bw * width, info->bcm[bcm_index].buswidth);
+
+			/* Input bandwidth value is in KBps, scale the value to BCM unit */
+			unit = le32_to_cpu(bcm_data[bcm_index]->unit);
+			vote = bcm_div(peak * 1000ULL, unit);
+
+			if (vote > BCM_TCS_CMD_VOTE_MASK)
+				vote = BCM_TCS_CMD_VOTE_MASK;
+
+			data[bcm_index] = BCM_TCS_CMD(commit, true, vote, vote);
+		}
+	}
+
+	return 0;
+}
+
 /* Return the 'arc-level' for the given frequency */
 static unsigned int a6xx_gmu_get_arc_level(struct device *dev,
 					   unsigned long freq)
@@ -1390,12 +1494,15 @@ static int a6xx_gmu_rpmh_arc_votes_init(struct device *dev, u32 *votes,
  * The GMU votes with the RPMh for itself and on behalf of the GPU but we need
  * to construct the list of votes on the CPU and send it over. Query the RPMh
  * voltage levels and build the votes
+ * The GMU can also vote for DDR interconnects, use the OPP bandwidth entries
+ * and BCM parameters to build the votes.
  */
 
 static int a6xx_gmu_rpmh_votes_init(struct a6xx_gmu *gmu)
 {
 	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
 	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+	const struct a6xx_info *info = adreno_gpu->info->a6xx;
 	struct msm_gpu *gpu = &adreno_gpu->base;
 	int ret;
 
@@ -1407,6 +1514,10 @@ static int a6xx_gmu_rpmh_votes_init(struct a6xx_gmu *gmu)
 	ret |= a6xx_gmu_rpmh_arc_votes_init(gmu->dev, gmu->cx_arc_votes,
 		gmu->gmu_freqs, gmu->nr_gmu_freqs, "cx.lvl");
 
+	/* Build the interconnect votes */
+	if (adreno_gpu->info->features & ADRENO_FEAT_GMU_BW_VOTE)
+		ret |= a6xx_gmu_rpmh_bw_votes_init(info, gmu);
+
 	return ret;
 }
 
@@ -1442,6 +1553,38 @@ static int a6xx_gmu_build_freq_table(struct device *dev, unsigned long *freqs,
 	return index;
 }
 
+static int a6xx_gmu_build_bw_table(struct device *dev, unsigned long *bandwidths,
+		u32 size)
+{
+	int count = dev_pm_opp_get_opp_count(dev);
+	struct dev_pm_opp *opp;
+	int i, index = 0;
+	unsigned int bandwidth = 1;
+
+	/*
+	 * The OPP table doesn't contain the "off" bandwidth level so we need to
+	 * add 1 to the table size to account for it
+	 */
+
+	if (WARN(count + 1 > size,
+		"The GMU bandwidth table is being truncated\n"))
+		count = size - 1;
+
+	/* Set the "off" bandwidth */
+	bandwidths[index++] = 0;
+
+	for (i = 0; i < count; i++) {
+		opp = dev_pm_opp_find_bw_ceil(dev, &bandwidth, 0);
+		if (IS_ERR(opp))
+			break;
+
+		dev_pm_opp_put(opp);
+		bandwidths[index++] = bandwidth++;
+	}
+
+	return index;
+}
+
 static int a6xx_gmu_pwrlevels_probe(struct a6xx_gmu *gmu)
 {
 	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
@@ -1472,6 +1615,16 @@ static int a6xx_gmu_pwrlevels_probe(struct a6xx_gmu *gmu)
 
 	gmu->current_perf_index = gmu->nr_gpu_freqs - 1;
 
+	/*
+	 * The GMU also handles GPU Interconnect Votes so build a list
+	 * of DDR bandwidths from the GPU OPP table
+	 */
+	if (adreno_gpu->info->features & ADRENO_FEAT_GMU_BW_VOTE)
+		gmu->nr_gpu_bws = a6xx_gmu_build_bw_table(&gpu->pdev->dev,
+			gmu->gpu_bw_table, ARRAY_SIZE(gmu->gpu_bw_table));
+
+	gmu->current_perf_index = gmu->nr_gpu_freqs - 1;
+
 	/* Build the list of RPMh votes that we'll send to the GMU */
 	return a6xx_gmu_rpmh_votes_init(gmu);
 }
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h b/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
index b4a79f88ccf45cfe651c86d2a9da39541c5772b3..03603eadc0f9ed866899c95e99f333a511ebc3c1 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
@@ -19,6 +19,16 @@ struct a6xx_gmu_bo {
 	u64 iova;
 };
 
+#define GMU_MAX_BCMS	3
+
+struct a6xx_bcm {
+	char *name;
+	unsigned int buswidth;
+	bool fixed;
+	unsigned int perfmode;
+	unsigned int perfmode_bw;
+};
+
 /*
  * These define the different GMU wake up options - these define how both the
  * CPU and the GMU bring up the hardware
@@ -82,6 +92,10 @@ struct a6xx_gmu {
 	unsigned long gpu_freqs[16];
 	u32 gx_arc_votes[16];
 
+	int nr_gpu_bws;
+	unsigned long gpu_bw_table[16];
+	u32 gpu_bw_votes[16][GMU_MAX_BCMS];
+
 	int nr_gmu_freqs;
 	unsigned long gmu_freqs[4];
 	u32 cx_arc_votes[4];
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
index 4aceffb6aae89c781facc2a6e4a82b20b341b6cb..5b80919e595fa1ba0a3afcca55feb89e60870cb1 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
@@ -44,6 +44,7 @@ struct a6xx_info {
 	u32 gmu_chipid;
 	u32 gmu_cgc_mode;
 	u32 prim_fifo_threshold;
+	const struct a6xx_bcm bcm[GMU_MAX_BCMS];
 };
 
 struct a6xx_gpu {

-- 
2.34.1


