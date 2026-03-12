Return-Path: <devicetree+bounces-274653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wF5tFDrbsmlMQQAAu9opvQ
	(envelope-from <devicetree+bounces-274653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:26:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 59325274696
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 48FFE306627C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D54C93C7E0C;
	Thu, 12 Mar 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UeKFh0vK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J45xHxOU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F733C73C3
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328473; cv=none; b=a5mDuBODQnAczG4YjI+c/k/o3CA6dA0QCRpP5cLMiGHrEIQHU8Bc5wJX94Hro54Rk1kCDBAy11IMPdjFyyZ2wf2Ag3+BnzGzyvuc2fAqLLGMLwkxWq3wCNZFBpkZl4TapNrCQB+L7C/S/2B7ri0NYP8HdTgraqVPpC2ckzPRcLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328473; c=relaxed/simple;
	bh=Mm176SkrWKx4m4mLOWBB+ENH89pwT6AKTSIjNdCkPGg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d4ZCr54F2u2YCVpDPNyfTkiC2o4bACldF9yw/Y7BTgiLIoJaFB3sdo2zCeaBiDxkhrChp3f6Oxf+m8Nwf1xC2gPAoqqgLt0Lla41I9AL5vfR6qhCQB3n0N8BfENd1BGrdkxyBnYyOiAjlVwLtzHn52uEJoX8qZy5dc4V0Qvk4Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UeKFh0vK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J45xHxOU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9FneT587752
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m8loUzJ9TBB7dVPxpp0la2v6O1PElAHetgnpnS3xZ5c=; b=UeKFh0vKZ+sa863X
	/Si4wm5NKwAdgTVcimi/Rm15J2hhdUlw7Ik7KdcIbOvxbLPARw2SIs6I9+FrvH2T
	RtvtTQh6IkJPacjDtkb34i+4zg+XnE1fVDywZXTypTUyTQIp4tXUDcyHb7EdQCEk
	l2LKHq91LRLuczw8GPf2CZ9SFoNnOJRyXTmMVBC+hwiGHtNI9BeRVe/il109m6Rw
	L3ei8o9pq+7nyqEDHrwWzlVeiBv2TaE4ZEckvmUtvqH28YzyzKvxxWBiuanlXxbT
	zS4YuqaN9nHe3Um76m+aZ9C4o3yC8JImUkE+wuRRNwtvwzXfWNACZtYLj9+lpKV+
	HlAnUQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh5q2jgk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd722c1a69so675406085a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328471; x=1773933271; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m8loUzJ9TBB7dVPxpp0la2v6O1PElAHetgnpnS3xZ5c=;
        b=J45xHxOUhpcMqzQXK9S1ZG1IvMEFHxFFB7rUk5ec3Qz9WgdsQ00azSbQnXbK2abhdN
         3g7I9/98h+29K/uCN1dH7HbfI022Kqt3iUGvSa0+Bdwlbh35koWdae5FiX/eybp1Ck2p
         TC4lP28lky69g8yaJ24IzRmBtNKPHSJ8CtPmPM5tuFvVESb8VnkZ2ru72vfZaEwnNmnn
         GfiihDRttsY1+/8iht4PXH0pIoev02tA0Edw/im6dAV7ytm4DuNRXVhKLm2YEzkjDFfb
         komAJFIXIHNALDDLtvf6xjXXl/60NR02zrrlrBeL6SaNbf2I5G9Z7WHkMOfvXE7813gF
         uv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328471; x=1773933271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m8loUzJ9TBB7dVPxpp0la2v6O1PElAHetgnpnS3xZ5c=;
        b=qI9ifeP4jekz5+JqrV9fWfVmAjQ5bznaDLpMwzpFvh8mMGaOaY/ZCyDqxKQmJ2Ny5Z
         fFBu7HhBKO9bEKyeeJzzMzpXDREq2W+v/couQGp1Mam9aQVlsJoCJAhQaEKui9TdU9s5
         dT7SSof6cUsH53Irv1dKkDQQHqs/XfuESRf+coePNF52LF+5WPhtfQIvw38EtEH3qBd7
         4M6zbykLAbveskKieJdOiARMrWkzureI4GBRMdzWlMfIv/++NKgPAEQthPQETVucG/v7
         AHNydaBo+wS2XMdJM8r6iJ1AXK8PGI4DhVEWH3bRkhPfnrb/nOGM9OOxk72a2UdYxB1b
         PUQg==
X-Forwarded-Encrypted: i=1; AJvYcCXEySTwws35Y24kHdY3l5K4EdQaP1zHSMc4Hu0paqjTMRJ3sUc50K1O4WPsJm2l70wsqNlOySOnxCrI@vger.kernel.org
X-Gm-Message-State: AOJu0YwAkVsMmlHBsALUs1k0nrJVcaFG+iM+DaJ7iJK3Tg/OpCaY9dA5
	zE515HeMSuxA2AEUOB/2TM2t/qlHGP4M8mo0A3zzjvfCeYucH8qDMlX1lY8ZeA5lz+55YHWGNMs
	bvDGeOZjxnA2Ti7C7IVZluOhRzrRCMsJk6qfK+n2FJ0olzR1yMyH3/zyt/hHDFwA5
X-Gm-Gg: ATEYQzxVP0LPxuGhwUqks23H2DIQ2nNrAKGDq+V337Y7Lb3AzQvGhLrtVINYSLfIkF5
	xg/q5PV7PomqIZKyFxcUNmXVTVuofcvPWWCLXrUt/iFR2UWaFpf0KVu9vo+Xy3/Kjk3Xtb8CJgR
	XLjwU750Yzw9YTqFW9z8WibUCft2hwGveSQj7kgINFrlktAUcGMaaWh1NaVjugNR/2MZAI3kwAZ
	rBF74TrMOViROuaQmh2uMeLEdO1bhnec995977UzIelnz5ZCbAVFg14mQObzIVGkzbCiSZdVqX2
	fna58alLRpBu0wsn5tYG7UfPI3HsSi1ooKxeJqXslfwqhzZ8TvR77bCxdBoSkYKUhDpQpRl9EUc
	5SmR0kDc7VEUowraq5H1lrUzpGCyE2cbohtE+1tBbOlczzsUHH3BR0X47m2ii3qpGZWiHgbMzwU
	Z9I6rpdw508wCSE1NjlX6j0OYVytvEHTw/LGs=
X-Received: by 2002:a05:620a:46a5:b0:8ca:4288:b168 with SMTP id af79cd13be357-8cdb5b21bd6mr6284885a.42.1773328470896;
        Thu, 12 Mar 2026 08:14:30 -0700 (PDT)
X-Received: by 2002:a05:620a:46a5:b0:8ca:4288:b168 with SMTP id af79cd13be357-8cdb5b21bd6mr6280485a.42.1773328470367;
        Thu, 12 Mar 2026 08:14:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm972822e87.61.2026.03.12.08.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:14:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:14:23 +0200
Subject: [PATCH v4 2/6] arm64: dts: qcom: sc8280xp: sort reserved memory
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-iris-sc8280xp-v4-2-a047ef1e3c7d@oss.qualcomm.com>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
In-Reply-To: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1171;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Mm176SkrWKx4m4mLOWBB+ENH89pwT6AKTSIjNdCkPGg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpsthQHOriwy0yiUS7Yfl8lv/cEQnArjavEq4FI
 8J7CxGhFTKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabLYUAAKCRCLPIo+Aiko
 1YFXB/9lmq67435fD6AFi2kLR850SnQuZ6Y4FlL+897AF8vxVoS9MafbJbi6LqiS5ai9jYjJkCt
 Ykm0wor3FzSenDlBM8OVWBsunSJx6t4LUyw+KpHLehrYaGvHCq5NCg2DudXYsL0ojQEZr6M3a6z
 T9czYbplKZY0suBYCCYhKbLyHNRjliMkDoj5aR9+5uSzWKN+zwh3hi6C2GWEjtBj5F3TcqEnuzj
 7wgtL7waGdZs+OfuWQvBud5m5uvZFuupg9O8AvdW3Dd1tLxQR2gl0aZ3dkPae3Xs8lYeOsQ9sB2
 HceZ53gIbCDZGUXupdLbe/SQrP/5x/85dMwGWcyQfVz8bY1U
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: T2_V8T0VqpQoFunCU56pKDooOI9lP5nh
X-Authority-Analysis: v=2.4 cv=CIUnnBrD c=1 sm=1 tr=0 ts=69b2d857 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=dWPP9-k4-ZVWm8qm6WgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: T2_V8T0VqpQoFunCU56pKDooOI9lP5nh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfX381U2ZKajw0G
 XiHNg00a4DKJyQJPxfmKwtev9hHuqYv+eIfjBb7B/7MdMx/xjxzl/Pb0fshTT9SUBjMHQIApK2a
 XA7wivPPba+v6Cmvoh4xHR+tCo2VtUUxmtl1A4jb1AhWMa0ug9+b5c1sM8d3HwE3E5qsBb26g9O
 KXjsXJx7q3Kb7weSn4TQu90DQPC3STNHw5wcpLuNgaWWAagsvdwyWvKb5PbXQFgukSfDfVyFy/b
 bD8f6L/5nPocPeoeidc9tTMClYC16wE5WzR5LycnV5kHIS4g9Wr1D0aDrofHov0iXZzRCbb8D2T
 uYXgFGev2dcZa0UkXBSZfKYaKJ4/cTkyBRw2Hl6fkJxOexXZ4l850CCI8225/mKXNhP6DsY0abK
 g00TrVjXj+K+mTtSbpQaL4jSEHVQYLGGvq3DDpVUZKkYaiCQoTqEa9MweoxgsrNlmmsqO5A5MEZ
 SVyd6HcVq+lxJwsMNYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120121
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274653-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[8a100000:email,85b00000:email,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,86c00000:email,8c600000:email,8bf00000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 59325274696
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move memory region reserved for the GPU to its proper place in DT.

Fixes: 6e9612ced0c9 ("arm64: dts: qcom: sc8280xp: create common zap-shader node")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 706eb1309d3f..41c57e7dc433 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -691,11 +691,6 @@ reserved-region@85b00000 {
 			no-map;
 		};
 
-		pil_gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		pil_adsp_mem: adsp-region@86c00000 {
 			reg = <0 0x86c00000 0 0x2000000>;
 			no-map;
@@ -711,6 +706,11 @@ pil_nsp0_mem: cdsp0-region@8a100000 {
 			no-map;
 		};
 
+		pil_gpu_mem: gpu-mem@8bf00000 {
+			reg = <0 0x8bf00000 0 0x2000>;
+			no-map;
+		};
+
 		pil_nsp1_mem: cdsp1-region@8c600000 {
 			reg = <0 0x8c600000 0 0x1e00000>;
 			no-map;

-- 
2.47.3


