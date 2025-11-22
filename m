Return-Path: <devicetree+bounces-241305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D7C7C741
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 06:01:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 384A53A7BEF
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 05:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D34129CB4D;
	Sat, 22 Nov 2025 05:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GyOkEpo9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HMGk6iL1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05C429BDA9
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787651; cv=none; b=HGFpBDEblkRzcMAH5h601I+s1wL5ZhGKmCqnVOpdj9g1J8PXbfFdIZVPjxDbf9qDfHm5GVOHa8JMQKaqEjiJ2OsqT4RvEyLzio0mHME7n1i+GETOBuStHrgJpgC7ShuegYWB4R/u3/fP3uq/GSIlIOOhsPYWFIeHnuBX7TYm6wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787651; c=relaxed/simple;
	bh=85mnIBih5TefJNp/bHk7qTk7tspz31Q1DwJ4d0ufNMs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AYwPM4mAedfw5TJkUx4XQ6peHSRZJ1x8GMHJa1GYd5eyBG3oxLKk7tIO+/JH7ts1TgWzhUp8plOgsij6LHobmeN/OO6Pdb6j7P8WVvfs07Agr18L6t7vUTM/9on/SSkABChH6qRBdBqaRNYasZ9rmZkX0gcQ/eLSgthVvvfuuPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GyOkEpo9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HMGk6iL1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AM4gNPX1734574
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:00:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GkgK+E57psN
	HC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=; b=GyOkEpo9N5i7cFS6ASSkEzqofB6
	c3JRB9jFm8uM4O+/FeG846cO3wR2EtMnt5DY+Qj6Bx3iW7dr2hVjRPGpbJDbTWBD
	LmKPQlWRIPf9cbmxlETDueEKjkbDhSCzYGjxX8xE+dmN/1As1Gn6v3GhkcRKQqxJ
	wFz2JhM/5vj/SGFtRfygxb7EOq48d0NG5Lz5GPw8A3Fq042BjQ+YNwGKKtrL/gLH
	spKF6mAvnF0zYOiddcmARLDvt/gO8pd0gazayc5t8YJtyWDE7ayuXKhIgDAx6cGR
	OomNAB9dpIwoa6EBv1p25SxgoO+l7cx1VbDbXTk7xg/avpze7bU86KO/rlA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6cdr0x8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:00:48 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297e5a18652so32186225ad.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763787648; x=1764392448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkgK+E57psNHC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=;
        b=HMGk6iL1RWdmBgwj9NhKwnqs+DNJ0h81sYxJ64Dn78qix1DtFxyfEU3Vu7irfQGW6f
         2F0faGug53mOg6+p0wXlLerzRucWXsjir/TzKHAIWllW6QUBHKsy6coc9DDZ3Yaz/piG
         g+7jmhgaeVTqULvWq+vNjMd0M9Ujrcm9005qMsh/eqa7hSH+zlsW6orxDvG2uOPfrTNm
         39AxA+iTJxYGZPdNYkYwQPEeS4OGHSePdvmLUvQmyVmn8m+XkE3tSRjPg577/8+I5SJL
         jcMGCoo9o15oP6P8kURogoxt7ihLkI1SU9ZEhC2oppBsZkF6CxS0m50in8Vl29RPljEH
         UEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763787648; x=1764392448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GkgK+E57psNHC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=;
        b=FHv4+zid5t+O/K49CVN6wtGQ9aSycb+0JCHUu4/8UC3srxgHPkFAGc9Qdy1jKj96Z9
         U/r8o1i+7N+Ej5VoyPcBcRvdjSXYAXkz3mcBdiTsARlniw9EabgCzMl3T5LIFj0JI0ov
         DuT1xekF1qdphEU3kYbxmJeEK0s13JAmWenMqUKXHOWSbDBSDtr9NDntgv4ge7jodh2s
         itTPcToCtpNIPyJDJ6K1XYAIXxYPfjIe6o9wdH4YtHHSU1PzNDmGc/pFUZ6xfR8Nq07e
         dFzoZcIldko82xXyxWyMVu4JOiQ3uHOxc5drdxLY7o/zIN/oXKri1panKAp3WlKBz+kL
         /KAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvWVVgbtb98DiMOPRDe5Mz6irqMr+ICC7Ke+Pk8K4lP4WGBZOrPYzkaM9W7KNq7KOlDWNVwvx5rgWi@vger.kernel.org
X-Gm-Message-State: AOJu0YxggXz+uK9aWS3jYPTHQ8DGjFjVbTSC6EoSGfJDciPC9nkxiWkn
	2d31fVCodzOjn8KOgEHW9nDOed5/yiMlAvu+A5A0svWOENUW6RHAc0+90yfLU6F1KlO6iNZDxm7
	iAa00khp4NsEIq7zhHcGRD1AWh66KAHYkVt1QRlOTm1MA4iZRnwLA1ox/zASAM92L
X-Gm-Gg: ASbGncsLPdhGzH47vLgte6yRMI+RnLbH016/ANUUD4lJrfE6X6REsDHVzMxL5OZ3SZT
	tueqGcpYqzsL+0L3SYpWpzOWLXZ6GOt+phPUNrGkAxno6G1jmp71ZQtGQqHnPxcBWYWDORSHooG
	Nu2pyI6RxjYlYVVLmwKZe0WftGZfimi+EGFn87mIIuXkUwZX0h6JsnHsDK99FCiheoM6h3N4QZA
	kfBbx5qsdeUOXlBUdE3zR1bJ62N9Q2oflYgpXXxYKYle3au1Z4TJsyUpR9HMGhRnDySLW855M1J
	R9SUFz5e6E73BHRhfy4eYLSNRxWbn/uKd5za95bLPnfS2iATXyOXrSqkMrI6MIWlXzFv1dzfot7
	OJx8ZYCZx4Aedh0ENOBtfbhj+TlRUCYbb1imYSfjtGUk=
X-Received: by 2002:a17:903:1246:b0:27d:c542:fe25 with SMTP id d9443c01a7336-29b6c68decdmr59205245ad.41.1763787647509;
        Fri, 21 Nov 2025 21:00:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCzAeTkDoZIFezANE6pQeR1B/0k80n1mCUu+ZCT323/locWcBGgSUCV5GN5Fm8qjDomlAeVg==
X-Received: by 2002:a17:903:1246:b0:27d:c542:fe25 with SMTP id d9443c01a7336-29b6c68decdmr59204845ad.41.1763787646930;
        Fri, 21 Nov 2025 21:00:46 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b138c08sm70688725ad.25.2025.11.21.21.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 21:00:46 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v1 02/12] soc: qcom: geni-se: Add geni_icc_set_bw_ab() function
Date: Sat, 22 Nov 2025 10:30:08 +0530
Message-Id: <20251122050018.283669-3-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=bsdBxUai c=1 sm=1 tr=0 ts=69214380 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BVB3BO4C9w_THQaB-9MA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 1PUdsgadU2SURCQmu2y-UHoaeg-_noLP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDAzNyBTYWx0ZWRfXxsx/PaZQpBPy
 da7Yb3Uho6jzmJ5I4ZwVuJRfNs2XonnG8ziQic50dyaJJDKEvMgqLIiS8/2rTW9rjWmlhUTAYKr
 zETqUwDjkq1U7G8scsgscYa5F2/DriUvA5CTFOmNkv/82M/ZITfkZq5Bf1bZXgZICB/82MFi+1S
 6rlZdZFXOq730IJ5WA0Alr4a5PWipZhX48xcZdajusswUtOZEktvWFX+hWXPYzQ/fY9hQcPL8bM
 gtf22S+YHSNo/Fgl9hh5BJevzWPJE48ZZkVn0iqojXT3NRwdhOubew84prgu1q7DRjGeNQLQTXQ
 FntdcHzF4+rmMyKudlGuFEGGcybauwoyWDLBA/xW6dQ2iZatnVzWzdbsac/agvl+wcKSgouapny
 GU8GXruPnoxKFTS9S2D2wsksLE/Abg==
X-Proofpoint-GUID: 1PUdsgadU2SURCQmu2y-UHoaeg-_noLP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_01,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220037

Add a new function geni_icc_set_bw_ab() that allows callers to set
average bandwidth values for all ICC (Interconnect) paths in a single
call. This function takes separate parameters for core, config, and DDR
average bandwidth values and applies them to the respective ICC paths.

This provides a more convenient API for drivers that need to configure
specific average bandwidth values.

Co-developed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom-geni-se.c  | 22 ++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index b6167b968ef6..b0542f836453 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -946,6 +946,28 @@ int geni_icc_set_bw(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_icc_set_bw);
 
+/**
+ * geni_icc_set_bw_ab() - Set average bandwidth for all ICC paths and apply
+ * @se:		Pointer to the concerned serial engine.
+ * @core_ab:	Average bandwidth in kBps for GENI_TO_CORE path.
+ * @cfg_ab:	Average bandwidth in kBps for CPU_TO_GENI path.
+ * @ddr_ab:	Average bandwidth in kBps for GENI_TO_DDR path.
+ *
+ * Sets bandwidth values for all ICC paths and applies them. DDR path is
+ * optional and only set if it exists.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int geni_icc_set_bw_ab(struct geni_se *se, u32 core_ab, u32 cfg_ab, u32 ddr_ab)
+{
+	se->icc_paths[GENI_TO_CORE].avg_bw = core_ab;
+	se->icc_paths[CPU_TO_GENI].avg_bw = cfg_ab;
+	se->icc_paths[GENI_TO_DDR].avg_bw = ddr_ab;
+
+	return geni_icc_set_bw(se);
+}
+EXPORT_SYMBOL_GPL(geni_icc_set_bw_ab);
+
 void geni_icc_set_tag(struct geni_se *se, u32 tag)
 {
 	int i;
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 0a984e2579fe..980aabea2157 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -528,6 +528,7 @@ void geni_se_rx_dma_unprep(struct geni_se *se, dma_addr_t iova, size_t len);
 int geni_icc_get(struct geni_se *se, const char *icc_ddr);
 
 int geni_icc_set_bw(struct geni_se *se);
+int geni_icc_set_bw_ab(struct geni_se *se, u32 core_ab, u32 cfg_ab, u32 ddr_ab);
 void geni_icc_set_tag(struct geni_se *se, u32 tag);
 
 int geni_icc_enable(struct geni_se *se);
-- 
2.34.1


