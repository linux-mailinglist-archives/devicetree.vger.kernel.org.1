Return-Path: <devicetree+bounces-212715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E38B9B43957
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAD6B17CD6E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 010E12FB99C;
	Thu,  4 Sep 2025 10:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JDgdoIht"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E5D2EE294
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 10:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983409; cv=none; b=kOn3S6Yz1vUTFm9R1ZqP+vadTVBsQueIOk2jU+jRg2E/QC2e0JxUbxizTQzaQ2EMrcG6rUfWwhHdk0jRVN/90vXBxDe9ZuI85eE/zeraYH8Jt6TDIn8gNqr5gfoR2eceba9+FM/Iqu/KLAl7IBCeR3Z3zaFV3yd8dVA7+XjNNcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983409; c=relaxed/simple;
	bh=v5ysVI2U/oh21lZONgkiOffTVAxpv7ka1beglSqt7zs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iOjof8p5YfRTRGunEDBvZENs54tl+SRy62cE4Or+dTQfvx4Z72mDM28YYGCIt3hmg2/VySTBD2oWbakZaeCe6niPHvBSwlw5ljWR4eBS392DhSYgMAVZn17VazOQRVwvU/dygqrQgaZwr485Xm6PK0Y87wetjVgY7/AghTEVBGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JDgdoIht; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X94I007610
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 10:56:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FBClr38gw2V
	NN9TJfggNIGizEzrQ3dx3VKp0vsyukpM=; b=JDgdoIht852f1DRcyC5/eUmn9yU
	UYPvJmlfgn6eQcugiTitE5kIUHqqqeiJ88SJOnIChZTqqnjQ5nE4y90SD6ReGuvO
	Z1ZTha83+L23c9Vb53h+GPgvt3BTINzsjxOaFoSkFrOIQ+WKLwq4QAuMJyzRhSC8
	s0ftWWrH5No/YdaCek7oX4NNd1zW8YqJ9mXIw5+dm5Sxc002tIYS/cWkRW+I+BDb
	v6aqnjbFiMMeCrx+3MzvryduApQVJB5mqMdZR8cOBgBXwpUXFFfl96IoGpvKma8e
	pxqou72B1nGWtWNOF57skT2cFidZCUyR+qS+ShD8ll0xfH5Gx9EuYaF18aQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8y44h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:56:47 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7131866cdceso18141126d6.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 03:56:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756983406; x=1757588206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBClr38gw2VNN9TJfggNIGizEzrQ3dx3VKp0vsyukpM=;
        b=ZkfwcNMa70ME5Uw+2OWLCVthXIcGbKRB40sS773/3vm7isr6ljwz9IM6CRusJC5RiR
         X6KtVjPatj4R47qK6kzEerYOtSfaUPdq+wI/2Lxp58HqCLhYDu2LjwtHIRsPjvdpU1Sa
         edqfSzz9Xy+Ds4/frZohT95JErrxw0x4aBO73pt70Bj2uMS+APPpf36lGSiN6dLqJfjR
         EP1YiTcD0iBpTbZgYoF9LrPA1OuwEDEspNQlAkYf6ZIDYzH5/0rr5ww+jpDK5fBpYZsu
         AjLiKg2a9DEdnd5r6s3ftBAUTX5rZuagkxfDPPZZGjJfWT3FMenyD5Kuf5CN7zMhtyyR
         y8Mg==
X-Forwarded-Encrypted: i=1; AJvYcCV/DFAPkxJvUWqJHXvy6N/j7dumm9O2S0ackiQkrHn76gIC9LE0INsHOhU0tvitVYZ+MiQoowaW+pTU@vger.kernel.org
X-Gm-Message-State: AOJu0YxoiFf9kuad39vKpcXxwJ9bbEvMgJTJITo/2UwSge9Wewa9a2m/
	svRezLsImVSqa4UBe6+LeJ4hrj4LYtTCkYPSvkrFLVR16yZRgr08OyhDSy2vHWt3zqhnDkay62F
	613Wu+IJ3rI10vw5VgRycJ+DUtSkeWTBNxMcUMnNpmPsxZTwI9O0pHncwQr9ZQBbL
X-Gm-Gg: ASbGncsNXZQf/NsvDm5GRiE+pndVM12WHVO5KkKxgrWweexD18PbeCR/GdUiF0UM9wy
	LVFOXNkPzf7IgJy0O08Zxmk7vlT/x3X8GqigVWv085SKVxYF+jSeR/HhONhoBYnnxe8IWhnrvoS
	YeTi9ZJDIlUMpe+Qckwq728TWC+NFbECqEqIl42lvsHMJujfgL4shCKl9AL5TeSSPNATW3/CjNq
	Cv3rbBwo8Uex0hdWBXmnq9sdZSlJNygiH3keFwdTVJkrTAqIkPIEuLS6lGJXUZWJwbdc+5NYvge
	tVr6vFQ/iO5h3OCjJXeOJ3uLl7q3yslp95NP18sLxtPHoDdV/tJmpQ==
X-Received: by 2002:a05:622a:1a82:b0:4b3:3b2:2b4b with SMTP id d75a77b69052e-4b31d54719bmr224577031cf.0.1756983405990;
        Thu, 04 Sep 2025 03:56:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9Eq+sTL0nIIar6oejvztAYlvZM7LWk+ERntFJ4ZL09Ftyz1SA9hlVs92DGAObdcdb4gdjMw==
X-Received: by 2002:a05:622a:1a82:b0:4b3:3b2:2b4b with SMTP id d75a77b69052e-4b31d54719bmr224576881cf.0.1756983405617;
        Thu, 04 Sep 2025 03:56:45 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a1f807f9sm26462334f8f.38.2025.09.04.03.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 03:56:45 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 2/7] soundwire: qcom: remove unused rd_fifo_depth
Date: Thu,  4 Sep 2025 11:56:11 +0100
Message-ID: <20250904105616.39178-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: FI7BcG8o0F2M_sPIsWSxBZebFumLwyR7
X-Proofpoint-GUID: FI7BcG8o0F2M_sPIsWSxBZebFumLwyR7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfXxirZoQ2G0Ert
 eJYWyTnl3Isc/XjmTadoZddAXZlU9oXkeVhJKAbf0JVNckXSU4SgZcFwmdtmYDSEK5tUu40Svo4
 7+yFqd08mDbsn5dkFND+lXACwTvL0N0Zp5fMarJmiK6MccweumTDHiuZ7L8uW7Hv0nPTouk6Jd2
 l2KRv8I4sTnE9dkT8j1gUg2035uoy/LX5Brmde0U0QqOSfuxZwyOAW8GaQzHoiR16kyth/paCnj
 MLD2zoHQLYTGrq5ZqlA32R6j+v1ak1ESNQ/95T3v8oINgykV8KaUb/DLbM6KMK5Hel1JARFXgst
 O5MwJIRYIy04+86roeDcywbWnqT4WlcLMVGvOjGHe/mI7U6HjS4fjxep04ckz55AIQ05kJPD9At
 9YvNbYfM
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b9706f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=15vvQeE90rD5c5FzQNIA:9
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

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


