Return-Path: <devicetree+bounces-245485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A31CB1648
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E865302773C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2292F83DE;
	Tue,  9 Dec 2025 23:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zgs9JabW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iu47dX33"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4182FC876
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321798; cv=none; b=Ihd8GSQhFEuef894QB2lRL8DeoBIusjDhi7/utepFuMCwwLWUdihzg3THxSrQEFidRcyJeo2qoHmiax55N2CaIm5VoD/+NYTUsioOIWLwekMj78vM5Tg860iYQC05b/opuNgJno/fBgCfTIVejOiTMo6HReuHcRbV8mhtqNa7yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321798; c=relaxed/simple;
	bh=jDjMFmVfUDvw4337eIePkyn6RwxTmXHsTxuRAlWWnH4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GXIcJOEQdkyELIaXyvlesV0wt6F/R5MB9cn64JwlMqcvDky6AyRoKeRVpWXOfaMYz0pn73G4s2EWVXXWzDlSqxbOspah+/dG3ucwyPNCeEHOuBlRMOw/MQ1BJ050jB+/JjMKaRqLvodbmJbhhOw0/5QKSy0N1I8xywzsEotV8aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zgs9JabW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iu47dX33; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Mlup51228538
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:09:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=; b=Zgs9JabWGzPUGoh5
	JJDHz+qjrPoM87k1+R7iaHF0/t6Uw2HEvEzRE5QZT8K+aSE53FWMar6M0LbcoqYJ
	9HlGyYP3cepQj53aRI/kH1W+sqn/5D9lwUAs0pxepE2vga5zp012+cpjmgesu0oI
	CVIPTJAxeaT9XmkzLBmpbejB7Mttzkcjk/NLhOAdpzggsVP+D9YZ+J9IRrfuRObI
	0GUqTQMMe0YUxIpp77Ww15VANts4iAeAYQjzpqRF/OdS9z8IeL1AfDZ6r9TA2DIj
	B5ocNyrMg63VDFS8H8SAnQDiLPJWSCyanmm0rIKJsB/vguOJbiqb2M+nOwGHcNkI
	zwMtzg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axm9c9w2e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:09:54 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340bc4ef67fso6788841a91.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321794; x=1765926594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=;
        b=iu47dX33ZRWq3D8xbf0S7sbnwpX4CLy7i28c/5yaVzZhSJAuJjfkARyU4r/cIC+eVr
         JZG/A/jCpr8UGObbAbetSKmLKNKOH40MRs6xi+ADJkV8xBv6gKK0yko43byMzksHHXyI
         M03aFsY3HqXgOCb/GNOdy32I3Yi+gYQTGICnz0geHZU4I6yHn2fRYM4YtCek2dH1Bai7
         uH4xnn737tpyB7n1F5aRdSCYmyfqnr2VojvZ6gqAB+1ybiVN6FIasnSDMX192FKCkQcy
         V49U4Ae5ftSu8Tk4zr3tcjSmT8CfiXWwXdGewQ9X76Nh13GWWhzIqzwbdKlE8ygA7H9l
         +awg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321794; x=1765926594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=;
        b=d2o3Nh1oeJgOauo3Wac/CFMGkfbLMsb3bTxK2pg16UwKb66oliQKb/rr5IKIsS7sCY
         NuC58AGTaK46JWPCMHwFRUDPgoEJEWvL9QMEPMgyTAQD3KSEHyuRHDd/lcw/jsmk45wo
         Jx+zinAjpAJiP2kWQXAJGoJNwtLUgC0B0Ruu9kMcjdLoImDC29ToWY/ikxxC1ITDPaA0
         jWE9KlATGZK7UxwN1USc50cm3TDM/H0cGYzIJEba8v1b+AhbL88AWjxiG/gaJ9SjlBbH
         TUexnJsh05tfTzkXTLdyTiWFvxLW/dl5HIAFZSyfl5ylKS7EQmdvnUjDyQlJizNiZl5F
         TVRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjhSV25ZVL881q6opnzOXH8vkaY/qwNwOPpicKUnLFIrSdd+u5cx7VAB26OmrgLcpDNeB2urmpbtoY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0N6NrvCa/Ga3UWe1fhGUaOAsEvSEU7/x2Utilu5EVZHeb1F6X
	8TLswctnank5ZCFyB13NduV+vYcy3Gul2A6UHCjqLXPpPAeaOkvzGwQ2shy3YoYaGzw9mMVqq5M
	AR7jE27mKvK4owfrGkHMAvujEZ677HtxiLcTVPEloboCPO3PhM7uFErnlJHlId1y/
X-Gm-Gg: ASbGncu8YoDtJtW9VIs721dBb4i+fp+yHwQIXuB311/P1DrB0lPWN8/hKfVpbcJQ09w
	+GCd9pxYW4fYF+Bu4HOGNwQFuJzrPIwruM5gRqXuzrSccDaBPaPsMMpyXW2dEcB4awuDJyK70zX
	fGzCMy8loOOV/s6PR6xdligeI8SyiVum+HZL2lWKu8prKT7Nhf5D97lNd51rT3d7BxtDGKElOXx
	XWyRJ1IIipIcIcs92l79Oh8LEXutrCGYZzf51Z1J1/77ikETj2pwWo5WeYVQlJqvjRzPTK/IWj8
	zBQbIEqfnpohCy8J0pJKoevBuATZX4w6xrvyKJp1Gk6iJ2HLUnjnWwqWtMrdazbhPQiB2B4TYKK
	mQ2NNg9QqkJFSs+X3LlN1U2MJSgGXwLlBXSrtGni8hVvp1ud7gdDnv+NQCwIIrw==
X-Received: by 2002:a05:7022:ef09:b0:119:e56b:98a4 with SMTP id a92af1059eb24-11f2967c808mr302305c88.11.1765321793738;
        Tue, 09 Dec 2025 15:09:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGc7v/gbWC7PcKr4jn0Tlko7NMtddSvfb0J13m56Y9fdoDaOx0+9u/anG4Q7woTwoKHPaVAIQ==
X-Received: by 2002:a05:7022:ef09:b0:119:e56b:98a4 with SMTP id a92af1059eb24-11f2967c808mr302269c88.11.1765321793142;
        Tue, 09 Dec 2025 15:09:53 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v8 5/9] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Tue,  9 Dec 2025 15:09:41 -0800
Message-Id: <20251209-linux-next-12825-v8-5-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX0VVvq91fQNcL
 XYHXrsrgQgeFAbzoa8yJBJKpHTfbuWakE0v6Is1YeZwv+XwKUL1uTKxkg9mUkIKJzPBDrFntSZA
 oivFSe8OLfD2DeS+aKnWwSPJr4iszD5PaaT8cESsLsplZP3AZV22JIqs7om+up6Jt4iVg58cxpI
 RT62nUP6YyEZvKYe0fICxHrGgPRs70NwdFujRaezSwg5PK5EvA5biH37v55NPrVdEpO2+uTsSFf
 VeNH8tDMY5wfpvxl8pM4mkPl5qY4JtJ9FW7BSLcxZAg18SRsGl1z70u38Ai6uSXfRvfFS3I05u8
 qmoX0vZiJG8YagBH+cakUbpmhMuARfbDtLaOTO9lQfQEHtUBfPdJHj0NOHhRTrZbap4pmBxaFBj
 N4U+MueWvpOrbdukxS/BZ6PyjxPdAw==
X-Proofpoint-ORIG-GUID: enob2WBpmXBI8y5F0fO2pyZg0IH2lPh-
X-Authority-Analysis: v=2.4 cv=Vcj6/Vp9 c=1 sm=1 tr=0 ts=6938ac42 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: enob2WBpmXBI8y5F0fO2pyZg0IH2lPh-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181

Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
proper repeater tuning settings, as if this is not done correctly, it
can lead to instability on the USB2 link, which leads to USB2
enumeration failures, or random disconnects.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..441996480a67 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -75,6 +75,13 @@ static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
 	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
+static const struct eusb2_repeater_init_tbl_reg smb2370_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x4 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_SLEW, 0x7 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x0 },
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -97,6 +104,13 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2370_eusb2_cfg = {
+	.init_tbl	= smb2370_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2370_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -278,6 +292,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,smb2360-eusb2-repeater",
 		.data = &smb2360_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2370-eusb2-repeater",
+		.data = &smb2370_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

-- 
2.34.1

