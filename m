Return-Path: <devicetree+bounces-254317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A4CD1727A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C16C730478C6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A14C336BCF0;
	Tue, 13 Jan 2026 08:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K+dSf+5k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EbUNtj5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C795E322B61
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768291288; cv=none; b=evGjuQQoXVfkZ2iprxhlbtN8xgSlBZdbb2OQkYxVHsu++FInUrr2p1gIwX8NzcXrQlj3cL7hmYoXS8OO6LE78gorM5NCTll4gKonrOA1fgIwy0lPx8S03sXLwOMrvFPMSb00z/uqLoS2kTNpao15uqN+z24wc0w7qmmvmBM4Qn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768291288; c=relaxed/simple;
	bh=n/olLfZ4nDPE0Fc/nYoIgrhjqAFOMhm0RkBbmAj4e+k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WDsQjtOUzPsR15rlKa85jP5wJNkBdVo0/yqFkOpD0TVm2neZsfaqoNKoa8RSLBSllH45/dQ5u+BtM0l3kausnuaD0WBwrrC0l7YuAfhdGG1Kz1lt4P+yvTIWP3ogZlUHzTqONsZj6eFFcpmHZO7yJdVcATWYFrpl4m2IMnBFJi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K+dSf+5k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EbUNtj5s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7Id3V2513732
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaxEWXLeS4I
	QAnQ85ZZDFxXJrHCM2rSQp1hb6FjV+/I=; b=K+dSf+5kMXEU6yqUPkTm9tD0WQS
	UQu6ImKknCr9SpOgUouKobt+kkzPpNt25i/24JtW2LBq5YUE5AJvzhMbFimlf2lx
	SMZauPccTi6AXcFnx0HggaCxv0E2WOEs25rjP0IH2xGJjjQ3LeFhpsX+L6LeeH3W
	ZV7XFw9n4m6EFUe4D/370Za3cfJnH8pbCcmVsWrpt/YmpW98fURJOg2xcWH7sqYc
	FT4JlYaInOmPV8jYf1yEZlwvxHdepFrOlgdXHictYn6Szt2O4g5J3SwQUqg9Dwah
	D+V1RjJ4Q8cUhnDgwlYRhYXTufXTz5Bf+MVMhZbahWva195RaywnX63F2hg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6y8swe2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:09 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso82695445ad.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768291268; x=1768896068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YaxEWXLeS4IQAnQ85ZZDFxXJrHCM2rSQp1hb6FjV+/I=;
        b=EbUNtj5s198iuFMVkx/YlPUAafHE+LTUjSBhbC8IJIgBpjdh3CtC11mY0Mi8Qeo0mx
         CrPq7ff1/CgNMq7UlffpMbMqFVybSENC/vQd3A5M60z6Yxdq11vVJyxhPz8TG5m1pZfE
         908m9S0e72XxnsRI8uh0Cf1nHQRhTgL6nd7n67GsbeyPf+sVzsCkwWGxWk/cdJh13PDX
         5EJ0eX01yEzOlbcMd7As/MU8mmlZglEoBg9LE1EfTPa+pF57ntI5gJv2ErB7zMH0TZGA
         kdnu/Im65Evfit5G1ISrACJDD2D+uJx6/1IShZli95Gv134pNm1/gxEx0FbxBMFm3wMq
         6vxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291268; x=1768896068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YaxEWXLeS4IQAnQ85ZZDFxXJrHCM2rSQp1hb6FjV+/I=;
        b=T+cffYzD4+buXkAb/rAZLVWF7+5dMJikZhwWkzWryE3VZ/H9KGh/HhR6HAuDuJYbUQ
         /y1mixtg+zzwFb8ZA/mbAqR56gS0SAyUjaWvT50+uPItsUCnDlahhPFpjSWbzyAH0Ofs
         2pGvuDuVeHVBhVQ9U95ULiGjgoe5UyXq1+v5Vq8Ltvk/1kLMv5OVY+tpFvu8/m3ow2Yu
         TfX8nvXxOt/W0aER04cmu7KbReGpdbroJ1rsOoFoYbxU/pvKDvMNXVfkEDaeSHDlBfO9
         ZO6p2f1K7e1npovVxg9soz98iBQaj8QGF7fHeoH+rhzDi+HRJ+75FrFaW4hOo3ppkEpE
         C67w==
X-Forwarded-Encrypted: i=1; AJvYcCUwxrS45GFVFGynnHDGGBSGQKjcBSzTJRoKMHcaxRUF3miItdmicVDovx4u6dfM0FsmefmJqmKVFOa7@vger.kernel.org
X-Gm-Message-State: AOJu0YyQKqyi80thbK1xEdFw+olWNZArbVCLOMPs+eIN0irfpRJDm5E3
	NVUIzyFMGiyJ9MQtyAsx7apvF9EvKpEdSL+Babyt29VEHHDTHge05NTZqc1rFwEPvTdJH54AEIM
	9692ziNsamKMaN17UkUv3VMYzD05UqyiKeXLQ3WwUDltrQQvmPfhc6NLJlnXRHTyi
X-Gm-Gg: AY/fxX57igNXYlYa6SsDG/M4jDTxXeJrcw3QZtbJ0pNfc5QhU0uyZ5nEOlfxXBK9nZz
	aVz3xy+5MJp+TZ51JCfygU1zrEfI9/fA5GCHoCjnRFQl3FQEC4jVXNMSr/ww+ADq27ba0hi41gI
	8sI8Eeob/W0YKOSuFGn5PmenFywpOPWNvJ4dzvWpr82VQtjUWS3jhkhhR82xe/kZTv/bOTAtLat
	cKEi9ZcBhwwhvBtynwfo1bOHhsvRXderl7M8s/i0l9qtYw3As76VgDyabETVFb1bUtkBeM1jFzB
	mSNWH0B5dYHF38mDKxpnYYwctKiFTAMk7iOnMPqkGk9KYVeInD8t0Is1A106zWxW7eBGXQ5QLIq
	30sJ+3u23Q4lqyZ31ssvq1r73+8EnFqgy3mLfgwGc
X-Received: by 2002:a17:902:d58a:b0:29f:2b9:6cca with SMTP id d9443c01a7336-2a3ee4da381mr221003695ad.44.1768291268460;
        Tue, 13 Jan 2026 00:01:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXP9OsgiIaXkagh4wVTk+DADBkM11bBot0icm4O4mGX/wPGDsDAdA8XnbcgcDZVujpVRyS2Q==
X-Received: by 2002:a17:902:d58a:b0:29f:2b9:6cca with SMTP id d9443c01a7336-2a3ee4da381mr221003365ad.44.1768291267980;
        Tue, 13 Jan 2026 00:01:07 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c15sm191132725ad.27.2026.01.13.00.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 00:01:07 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH V5 1/4] MAINTAINERS: broaden UFS Qualcomm binding file pattern
Date: Tue, 13 Jan 2026 13:30:43 +0530
Message-Id: <20260113080046.284089-2-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113080046.284089-1-ram.dwivedi@oss.qualcomm.com>
References: <20260113080046.284089-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: FzXF_KSAWctDOCPBxdXYNxsyR4oKxlvG
X-Authority-Analysis: v=2.4 cv=dK6rWeZb c=1 sm=1 tr=0 ts=6965fbc5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=52jqHT57hFt4fz_33zkA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: FzXF_KSAWctDOCPBxdXYNxsyR4oKxlvG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA2NiBTYWx0ZWRfX9+4YBJGbqPa6
 yyJEH99NTvwfBOB7XHyNYxdQnF4D/ZB2IwizQvFsNWZ9Hr1JMs94fKlquZKnSmaXWVNmbefv2dU
 zwlGdYkZ+EGIEFqq6bI0anw0QEYL6V3ycd57OarXDtmd0FAmRsZAzHnPSeEjEjN8+V9WagkgSIv
 QJkLGvp+mrKOX4LEa3oJhko7ACrnglUnG+kJnBX2UblGBcgXF990eP12L5p17PaRtbAFXw293Ua
 5aBuucMIzOeVLoQgzeyv23PJL9BDiKV/x7d0vFA6ZunCtt3p0La0jIfRGSRW+CvueNae/2BrNBr
 /0ixFQhoiFc3lbwAoRqUCd7LwS+LwgBiNLF3cFcpx6un6R6sED6ML9ytwKNlJYc0NgH33Abti1H
 X9gUsfcXO4+xusj4kWyX+2Pth+gaYtOwW8htNit2jYjWry609Wcb5DOpL5Vxe0tzDOAwOczKer+
 j7sWvdghQ0KoZ1ij6ag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130066

Update the file pattern for UFS Qualcomm devicetree bindings to match
all files under `Documentation/devicetree/bindings/ufs/qcom*` instead
of only `qcom,ufs.yaml`. This ensures maintainers are correctly
notified for any related binding changes.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0dbf349fc1ed..70c43fc74401 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26842,7 +26842,7 @@ M:	Manivannan Sadhasivam <mani@kernel.org>
 L:	linux-arm-msm@vger.kernel.org
 L:	linux-scsi@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	Documentation/devicetree/bindings/ufs/qcom*
 F:	drivers/ufs/host/ufs-qcom*
 
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
-- 
2.34.1


