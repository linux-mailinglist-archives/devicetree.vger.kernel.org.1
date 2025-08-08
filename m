Return-Path: <devicetree+bounces-202654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D4BB1E4FC
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF824586566
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8710A2737F6;
	Fri,  8 Aug 2025 08:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IuJZ4YkC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F669270ED5
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643197; cv=none; b=tdPfTcjW8K1vtRIDdFE0bx/9gv7J6S6tJTH6Xp8PI1t2AYiu4NSl+Bf8l7ROpCWnol2SBjS0yNNwxYb76p24176xiE4RUCtZmmPiD2c8zeI0cxvraJfK0v9Y29Qljfkm4KufOwIDuYKLR5ButLgM3YYm0ZnAPXssV/eX9A958+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643197; c=relaxed/simple;
	bh=n+vg5ydQ7X4wyVt0+s72ttQVBKiwA0hDbAZIqS23E6A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=vFZSHcPeGQ4rZ7dT3UFBhphfFQVCFNB2X41HYcecFoGfoDgR/fZsWSSIhYP9/7/a0XvVhm+j3wGfv8DyiyT2/s8Lgk4a3vInLmf3hyykTE3htMuo1b096kGnpun6NMAYKYMzyb4OLRk/cxsq8bvg8Jqa34cESz5nZHL/zmwZ8uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IuJZ4YkC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5786ufFw011709
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MPC6xd2VF/s
	mOBIHZ6B9pOI38D2n59UvsoeVG2Ya7rA=; b=IuJZ4YkC4SMY/uswBnY9zq3PDT6
	zjNeleX82/5fqyCYuzZR0DHvdzhY2Gi29t50ceeb8CPg3lt/HoU6+Vc7IYKmGVps
	a0M4gd2YpU0e3jstTzgZGOps5NN0D07z1daFLVKVdw0J+0lOxHXdCnqe5F+guSOb
	HcKXK3FCKo66QL3JmNja0Z1tVByB/cRkK/lkGom91jarnrRuKwS9eA6DSmtKFOra
	M0yhOUNwS+XTyy+a2JiLhyn4goTYNtYJHaPtX5SGTiVHVLz8VJRi/WXT0jhrDBA1
	yS/HOA6iX0wF6RnxKHtN74Mlia6yUvxeqPYQ1BAFDTUjxW7KaR1Hbicnr0w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48cpvy451f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:53:14 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7072ed70a37so52629386d6.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643193; x=1755247993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MPC6xd2VF/smOBIHZ6B9pOI38D2n59UvsoeVG2Ya7rA=;
        b=wygXuDekJQ6bKLsC4GgeHrswfgVGhROBgtp+esggviHr7Ooyg/zeE59vP2x7FlJOMA
         zw5Dg2lXkLUQyTDFLTwkChFvqxW2gzmmRPYJ2Jj7tHeLH98O1QxLIJwDT9xtPdWaJnX+
         gzAxGZAVG0hAZSDJ/KydqvjB0FqwxDBWVW9BYLgXqQuWwwXv6CKENkN3ZaBrsPlAtM3u
         usPNs8fxT9CWCwUzBB1j34D5M7SLzwTfjMBm3aFWV5APC5HmX+rC91FdZ83Fz9OsvFkL
         NUDKZVSKuDiC7ig6LJ2/WqlqmhXKZceeBO9QI4Y5lYyYaCBwOCB7NCIqyz3N4Xt1qeB6
         xFQw==
X-Forwarded-Encrypted: i=1; AJvYcCV3Pn5BlEldtFU2paAM5aRFj3go50+JUJ60+opWobsIgBVNBzLMNMWINKgQrrmmhN2BcTVon64T3wta@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs2ZxRwEO0tG81vVVxQ0b8vKwOCl/atmQ7ET3nl9cgeQopmm+n
	gwkLn05R896nDox1Wnuk7kAmh92dEPMaWSqzC8+hBVeBprFd4rp32moTHlZoD4ii9Kb3TSZHfYE
	nHkFBghmM7yMDigeR2oTOag89tlKRn7QtB17PeMsd7TJ0gGJCzRMWlxXeaIxEGa1Z
X-Gm-Gg: ASbGncvTZUZRN51xXRqwyr5xSz0jBxkSKeBvpGFGYY23Avn0uY0U7Fpxv4QLQf9IUMi
	ocwMMKDjPzwrhsDkvh+DDmqLG5WCizirhqD5mTl/+dQCcFuEAK/4v9htvglvnEfC3dXdexrUFr8
	sD6UOzn9CXKAcCbXyLaTMA7UvZ4p5bVA+p/bxUCjAa2rhPPaDcgS3I+Z8Khx26H3ZTwNrJvdpI2
	ouiRDO9IJFv9FTAlCQM7t7HM+Ff6n3UDoH0xlM8cWTAbphVhbta8uYE4TVi8qg7oQHgZlbCIYfk
	DYE1uzYV6/18AnVJ7CGlvSIFT2ONtA3R26RoXx3A9KrhXTP2vEQXsqrFDatvkenQPDlDAZC/NqA
	qv8NwoLbpNuz6
X-Received: by 2002:ac8:5ac6:0:b0:4ab:7f61:4339 with SMTP id d75a77b69052e-4b0aedd7c91mr33072871cf.31.1754643193184;
        Fri, 08 Aug 2025 01:53:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENcrcraDY6LBXO1gjbtLVDBfn7FrMDJw6q6bfeHZSZ7FkUb6pMWmIgogO8E4kcuIn9LS8VNg==
X-Received: by 2002:ac8:5ac6:0:b0:4ab:7f61:4339 with SMTP id d75a77b69052e-4b0aedd7c91mr33072381cf.31.1754643192309;
        Fri, 08 Aug 2025 01:53:12 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5e99e04sm123818745e9.11.2025.08.08.01.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:53:11 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 5/8] media: venus: core: Sort dt_match alphabetically.
Date: Fri,  8 Aug 2025 10:52:57 +0200
Message-Id: <20250808085300.1403570-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TJpFS0la c=1 sm=1 tr=0 ts=6895bafa cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=tkZEzfabOtbtaFzRxSIA:9 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: ZpaMlFACNogSKUcbTYZYazD7LE2HjFef
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDA0NiBTYWx0ZWRfX179AP5NGDR8h
 9iOqmtYyky6SvBL6rJrtJvwnaquX5hAVwk/j/IPhdiyDuPlIeuK8oTDCD07hzV9Rw59cxbSsBql
 NCCkb0qUCRZvuEn0NjmHgk7nZ8FtBqy76fB9dR5+JTIpc2H2wvD/eSEHuNm3Iyz8NuJvVHll05b
 P7Vl/5w9COsDpTsViwYmy6+rjFmBW1WzZBW7RVI3M0lvAQLVqPYrqEUuwLfKNDn0DXQI4xrDmPB
 Si1Q57VuiKTdWD5kvYSoQxkxWZ+srCUL5M9GcIb90apujN2oieAE45eu47d/vsFKRnPwGmBbLYw
 Nb7qiM2oM7FAODVXtQH7DGSGAb4sm5iKRnOVaPlMNpo0rBfp71RbNUsA8ry8u1khFw1xBHcNM7X
 OgHABxvr
X-Proofpoint-ORIG-GUID: ZpaMlFACNogSKUcbTYZYazD7LE2HjFef
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508070046

From: Jorge Ramirez-Ortiz <jorge@foundries.io>

Correctly sort the array of venus_dt_match entries.

Signed-off-by: Jorge Ramirez-Ortiz <jorge@foundries.io>
---
 drivers/media/platform/qcom/venus/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index adc38fbc9d79..9604a7eed49d 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1074,11 +1074,11 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
 	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
+	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
+	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
 	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
 	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
-	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
-	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
 	{ }
 };
-- 
2.34.1


