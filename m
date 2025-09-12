Return-Path: <devicetree+bounces-216314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E4FB54573
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA839170BFB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51BE62D0614;
	Fri, 12 Sep 2025 08:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hUpWz1uI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE86279334
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665958; cv=none; b=TxXwBrvZd80sM/9fiKY4+txccjrsHOAoJbUZzda0gCGriGM2fafSJraxMN/2Cuh3l5cnetaXQ0yKqNwuVwN1CZuEDPeFHC4whYyUp04bwgy87U2qJkkVv2mBM/IuUc85yTskVdQOjTXIBZLh+93maOtItNp7npjQKI8UlJ4VC2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665958; c=relaxed/simple;
	bh=v5ysVI2U/oh21lZONgkiOffTVAxpv7ka1beglSqt7zs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZEs+XsqD1qRT7TpFziesKrRrPjVSHgVTAEqexgSTmp/oqp3n7m0dSdwUT4DABMPaPBfYhrg9Rxx1VUWqNEEgqiILZtTykcgJnEuK2/pug5KNWKYftUQNE+YLHyUBF/2EtpMgv6cdS7XPVt1kQ6427g9/outP54pCSjN0icDgi08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hUpWz1uI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C7aIjm002350
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FBClr38gw2V
	NN9TJfggNIGizEzrQ3dx3VKp0vsyukpM=; b=hUpWz1uIQMMYCIfQP9QHV2F4b5y
	ov6AqsaaYhvO1F8j1qXJYDxD7u1EAupnpzGy2HaLvobLodE+6y5XKgOjn3Ng8pbg
	xGfo6KDbnPADRsj4wV5wbrisXbq6ehvuDT51qSR6hQq6ETiNhD3Ty0ACGiAvCqya
	9dyH4pkm8thDVaFUFP0yXHQc26jxUh/WTh2eIcgRrpLtXi79rHun05t4KTJlmp8i
	CwQun12qTFlWC1PcJxMnK6UdmB+azzhmEHB4EY9/aEm68vDOFYgTiQDMFT8acHZL
	07VTAMPNVRx3YOX0WMyeGwKcrliUt/541esuDW8jsK+H5ACsvIAIMrs8rJA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8tw9k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b345aff439so48210791cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:32:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665954; x=1758270754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBClr38gw2VNN9TJfggNIGizEzrQ3dx3VKp0vsyukpM=;
        b=HchQLusY1hoGcuM4G+lg0LB97IvhbarovXLhw7RdqpfqnPGDwKap4X0wpeE4xsUDCA
         G7GKMH6Bw8WzpKswBdzxjIn+WXSdrUizuM2/H7HHxbZFx2Gky8k/Qq50HiucuDJwQLuc
         rUrlckSsDAj7ZslDckdps9Ubs8oaqguoNadi6a0XuAl+Y0Mq7nBFWI1DLFFJVDG47Jaf
         npw+WH3MiaXbf9z7dbu4a53f3vQliK6D7tKChezkxG7GJvJypswWKdEE4lS93CF2f8c1
         +khv+CtVxoHj++CeJ4f3ONdYEvLe52+7SgJzhiZv1r6nUBxWmHIHMvA6kL+XUbH1/6TN
         WP6A==
X-Forwarded-Encrypted: i=1; AJvYcCWGfsF1lbFAxEnlKGOH1044JeKR4PNhIi3CzgvuUdx8NpjhYrSozdQrIOEn3qt13kLKhSUWhJg1SpP0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj9ckAtJSjZobmt5KPLRTKxFAWi0W67KP0FJg+d8vp3EkFyaOt
	lI700xZIG0j8StCwzu6zc/wdtki1B7VNf1A2QCW6wqCAHUkZ0XibRaRsjg7Md3oDKUy/ADdaxBS
	VvGsOFU87sRsLOuAUD+NJBJQ0XxJYH6LH/6yyrXqGuh6IOyileKkmhEk6H6295EnB
X-Gm-Gg: ASbGnctgk3Qp8h7+aHs+n7izAvYXijYudIG6kI4rPM/nycimUwMnektpTv2iYo/JxMq
	pKx+zvCqwY3n7ziecqtb8G04Vae6RnMcTCBPi+zgmVwKrlPNMzYhK7GFBwTFdw35MfGkPHuMEOz
	hSboNELiKuDDvRhj7xC3n/Zg/rkb2fzQJKSU6p2XWqzrA85ZPHYi99vZ0UbELyD3Cs30oJEy7oR
	crrGK0kkD8zDr+zZX4mdbgMfLfGTil2MIU78Na79LCfCEPohl7WGk2uGaZVaBbdygj/RYLULhnE
	Uh8IXTa+LS5mn021bjOvw7MAT33/Gb5z5ip45iDlyvjWwD27eoDkhQ==
X-Received: by 2002:a05:622a:59c7:b0:4b5:6f4e:e37 with SMTP id d75a77b69052e-4b77d0a6081mr29069921cf.25.1757665953795;
        Fri, 12 Sep 2025 01:32:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFopUZDavpVxdanmw7MtaP01Mue9WsZ3a5xgclqjjwJJdUVbfjz2c6I747Plj1V/W5+wG0V7w==
X-Received: by 2002:a05:622a:59c7:b0:4b5:6f4e:e37 with SMTP id d75a77b69052e-4b77d0a6081mr29069521cf.25.1757665953185;
        Fri, 12 Sep 2025 01:32:33 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017c1dd3sm31247265e9.2.2025.09.12.01.32.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:32:31 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/7] soundwire: qcom: remove unused rd_fifo_depth
Date: Fri, 12 Sep 2025 09:32:20 +0100
Message-ID: <20250912083225.228778-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfXzxG4BJKswE92
 f/uA3gXebCysBW2QwHD5cAxAsZfOdg0ai/zZFbm2Jzt0EkOrIdLmN2+UmBTcErR1aj+FyGBXmYa
 fg30xYaMzYKq+JE3DVaG9CZduEOW8byQl3y+FJjENmpD4ul4HCvj6wP6D6ZX40H4fabZ7Yeg8nw
 nMiPoynsQIFZ0tKellYYKNnWAkbMxIv1yFoe+cxlrSVOGBLNh5u9ay5su0SpYSMyIN6kBpRuxjk
 4j8vK3rUYe6qsMGK7XCZdHqGB5Rf0p24xUy3rExK6Uo0R94PQ7Ractextk87C2KhcopSJMge8i4
 gBexaJVX9vkYSMS5LZS8E8zvwh0tsQT3+jvhk74CCusPvaesapywfkwKyH/HkVQ6vELjl01reOn
 nUAknNhr
X-Proofpoint-ORIG-GUID: kRs65zz-RgXvIIWjoECg9yX-e0pdV_es
X-Proofpoint-GUID: kRs65zz-RgXvIIWjoECg9yX-e0pdV_es
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c3daa3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=15vvQeE90rD5c5FzQNIA:9
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

remove read fifo depth field parsing logic, as rd_fifo_depth is never
used in the driver. Cleaning this up would benefit when adding new
variant support which includes adding variant fields for rd_fifo_depth.

ex: Glymur has this rd_fifo_depth register fields changed from v2.x

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 5b3078220189..f3ad53ec6e76 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -209,7 +209,6 @@ struct qcom_swrm_ctrl {
 	int (*reg_write)(struct qcom_swrm_ctrl *ctrl, int reg, int val);
 	u32 slave_status;
 	u32 wr_fifo_depth;
-	u32 rd_fifo_depth;
 	bool clock_stop_not_supported;
 };
 
@@ -898,7 +897,6 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
 	swrm_wait_for_frame_gen_enabled(ctrl);
 	ctrl->slave_status = 0;
 	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
-	ctrl->rd_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_RD_FIFO_DEPTH, val);
 	ctrl->wr_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_WR_FIFO_DEPTH, val);
 
 	return 0;
-- 
2.50.0


