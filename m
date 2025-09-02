Return-Path: <devicetree+bounces-211802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C88B40A3F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 18:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4118A1BA212C
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33571334386;
	Tue,  2 Sep 2025 16:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PRjkfmjZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD63337686
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 16:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829557; cv=none; b=GiO/bIf6TijrjvKft1DwledQIBF8oFARXS0K4bhOGtEJlgn4w4gyLrWOoP8Oe8HMz/vV92KTa/NZF7uGXSLtJSq2Tpqe7RAvmBim649d/7KUQarLQDItgcZiRFMCuOcQ1Ik7Ej7DPI7RT9VVuYnCqfXeMpNSjP3tY7rvXNnN2so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829557; c=relaxed/simple;
	bh=v5ysVI2U/oh21lZONgkiOffTVAxpv7ka1beglSqt7zs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I4mDByPmjcYslXPWfxYqLexKLbkObNlRuh/hmlPpnpIftc9GjMQnFaemfH9OIo0ypwVjDbMIBKwqKKLjYIfVqvqTTiXC+3/ov0K2nBzyLkpjabn/1ds+OMkPesRHLfZMs3J4e6iBaC2PPjIA6y/iS8utWmp9qmKGpZu0xNJq0vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PRjkfmjZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqLxv023549
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 16:12:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FBClr38gw2V
	NN9TJfggNIGizEzrQ3dx3VKp0vsyukpM=; b=PRjkfmjZVrhdujxTp/0KN19OSOu
	oD4CSmYY6yT6/bFoTkcGWYboofbrx6CMwyRNdj5c5cd+58h3qGZ9Y8LNmOdbxfsI
	1ACKvIW/zrQr6nW4+rG0kJGKJ5jxWGMPwtFw1EE8lxzzrZ7pDjncYKhQBiCwbDEN
	S6waX3MErnUY6wMxEiDuJmGocANv+IzwbywMX1DyfIm6aI4fYKqkNzZAnwvhwD1G
	7/qfld1X6J5rCP4hyrgnPuUvBOs2R57BOezHwsenOaOe8sxahU+ulRNUArN3V3vF
	QapGSc6rxDs567yQ9LmNHTzlUM0HGQW3cuoDajDwXtsy99t4Q50N5CZ2C1A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp8ma4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 16:12:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3349c2c38so52332311cf.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756829553; x=1757434353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBClr38gw2VNN9TJfggNIGizEzrQ3dx3VKp0vsyukpM=;
        b=UFrUAhx3E9bNn+sx24xMJsjv361ru58J/SXNH5wSm9cUJvuBw1HlSl+OquPo7CnocM
         cYUyFRbVe9a0FbE/bdSup8fpqcSsZdS5Zj2B9LMJLVfVJThkPtKTpTpCqQhZyi+K/t6f
         gohu3Jz4HNonTpadIPMEL22mOrhrvyd8Y06s9h/wJKJKEhipCAKOEA/CFf75bJ2HM+R0
         JGRikDS+8YSEYNiYmrUCPGlAPEwJ2IMO1/9O/Mn+SV+pNDnPQrmcGihrEtYWaswB50uq
         y2UaVPh1Im5aaCMBNfLJFjwKPSVoJlHw37AjIxgQJO55Kqccl8W1AYSgQXQNZwvkWmSC
         26Zg==
X-Forwarded-Encrypted: i=1; AJvYcCW+5d+q1V7k4kBS2qpJXKtWDAJUTdVel033DaI2RxY5+HNFRFJh75gZtP2WcrqeE8c1I+vZgr7OZUci@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3tqlP1K2X2J4YfH46pTQPojJ33LJoAiX0A9NNUzHOTUSIMVSp
	QwRC7xsc0y7WA2/oeJTFdYgc5KZ95w7TLIZ4VgLduKtoTyQ5V/VzbxBmZR5q5Sm5Ogv3uEDSW3T
	ydBRznQwztI9SXJTrEFMaIJkKfd9JWibEMX6qjigQDF4WXefgI2jePFgzfOXW9QNl
X-Gm-Gg: ASbGncsuOQ+JkOLnaObKeEF+NwGwNZbZvxH8Dzd66+KTPWdpd0MgzukytpnPPlQ6gXN
	SCnRGT7HE4H8YdKCFNhzQtx9X5RKgpJRkLLTCGjr2M+VekXfSocXbJCHs57EZ6ANIbLyO+dVIr4
	z3qp8Z53ATF2xxvKg/Si7inMA4IiDnL+goUt13EwjYfz/YOQzHgJ/Gz188Wld4XzUC0Z0oySVfC
	wpvcvszqL4+Vr2iLPBhwca6M356hrzKEK2P/22eP/BO53boTaVLz/FMym8fBWuZDYK2lt/OviGx
	g/Lcinxby8UV+19nvNfasCBhtF8o8Lfe6m8TO3qOxyAiczcKzliRyQ==
X-Received: by 2002:a05:622a:14ca:b0:4ab:ab85:e54e with SMTP id d75a77b69052e-4b31d80cc53mr152153081cf.8.1756829553239;
        Tue, 02 Sep 2025 09:12:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsGjZF02rEJD3yKsiyNOa8wPgkDWZPm8ITvjru/Ed2/JjnkJXpA+dt6iKLIxEI17rRPUQYhw==
X-Received: by 2002:a05:622a:14ca:b0:4ab:ab85:e54e with SMTP id d75a77b69052e-4b31d80cc53mr152152601cf.8.1756829552632;
        Tue, 02 Sep 2025 09:12:32 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm309894655e9.9.2025.09.02.09.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:12:32 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 2/7] soundwire: qcom: remove unused rd_fifo_depth
Date: Tue,  2 Sep 2025 17:11:51 +0100
Message-ID: <20250902161156.145521-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XbX-runETf-ocW1ShmRbSVFHnvFKh3Jz
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b71772 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=15vvQeE90rD5c5FzQNIA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: XbX-runETf-ocW1ShmRbSVFHnvFKh3Jz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX2Y0XfXM6uBS+
 BnB/bGfaw8TRCvr2sxfYN3koqhlMhauqadr+Rv4kkiXCTxvNFR1jCY4IcthRYul28mIITNBcTJw
 8QqnrbV2+WXmdAfVxGU0Y2/Unruxu1o9EfMnfV5ariXH9AtNCTw1UG2gEYRQbINtbiD/KXtUqct
 gF6bmnADOO6Ta7/OaQH9tv550o8/MdhlSpfGFmp2qgTksI9pem9BqJujQPSQ0cI79xwO37fVpeo
 bu0j+qcFSI/JgtpJKccovdWVqpqEnJCtwxnr1WfNcN8OUqX+yUOBWjX8LRHBgCs1ZotVfYc5PTQ
 A9uRTiSEk54dFUfhgA7ACcD5hMBn1fGtIY1HGENfQAv9GBHVk6OB4HfkteayPL1LSu46d+/zYbG
 AdBXs398
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

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


