Return-Path: <devicetree+bounces-238020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF53C567B3
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:07:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D280D3597DF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 08:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F142C336EEE;
	Thu, 13 Nov 2025 08:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bE+5hGSf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W3J4baSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EB9333759
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763024114; cv=none; b=mVSfQi8+Lp06Jg46vNAn4Ku9+xSUMA7LX6sU495SNC9+7o9DinERR71QCc7cm3YMbJWN1oiMFLwGxpCATl2mlyly8S9TtcYQZ0kse1vjU4bh05QxDCsMyBwoh6zArcFRx1EHDS6aJ5gs2Vj0K4PiFme0Lm1OG/WpKnUilYTitCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763024114; c=relaxed/simple;
	bh=yS/Zqmsw1pub5MxoEyCsZ9T6aQWl3nSZ0FCcfD0P/+g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=gh68jL9APwzbIgm5IZj203Py3oRQ6fK/mFkqV4PZbBbyy9xWC54MBSowJIKHNZNXmcFRt8Z2bAgL28SSe6HF1nMTWhsW7+Lcia1I6QDwIdHs0CnqT6G/137P2efYBkm3i2jSvh/ay8U7Q1ptfUksKacETfo9j0rKi09jVWVqKfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bE+5hGSf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W3J4baSL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD6hZ8J3801210
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:55:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	qcppdkim1; bh=4v/Fq7VW41o9w6zoYq+6g7Om/dcBe/6lWVVO7aFJcis=; b=bE
	+5hGSfdFAilT5Gh1ikzSOjECTY4zxdNgucjB5iI9vN5YgBfC5AvROThx/gI0xtNg
	NnVA8ntDIPwwcdwLl6x7RPTlGiQJ5hIAo8VuY1tp06pGGdx+fPWmlIcco0t0+YxC
	Avr/nEK0yL1nSDCtk8JVJhlkHF03JJjO2go0ct3MoknV+D8XAlp2JIgFYwZ6AbMv
	qqYX8OFNPCzkBF7MmFkzps9vWTIgtQ+gfl0rdk6EZcbLNLw/3dpmx+WiDkfGFojI
	LwERxCBYnMuZtGtw0ULNRBHsobirMkgQ+IprKLp8zSeEVEU3jSVes1r+htj7VqoV
	3kGW6vdO5Rdl5F6Q0vag==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adaam8cb2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:55:09 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so532026a12.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 00:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763024109; x=1763628909; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4v/Fq7VW41o9w6zoYq+6g7Om/dcBe/6lWVVO7aFJcis=;
        b=W3J4baSLkhvZBWo853UKQVyp0tpA6Bitif89qLpjq/HlhTHqhwjKvlnFAX20WzzcBn
         fcSDqS12wFRD7FXw/l8QJZzZQy1Muw6zoPUQ7SxU3MZH/4mTxB4/ACIpeL/RBgw4IF2d
         pf7y1GwCTzVIXgmH6PTOdNrxW6BSoO6maZhvDuhySxJxKL5CKOA6396Nqoem547k6g0M
         wMRWVGPXumHATKHBpUsEPBW0LyeZZ4iz1hB7ENPQCd72JAsP+f6ennXMmy8/CZc5Gum9
         hTjNc2wJ9I3amXqSkh0kutljEaQb9OObfdLkrizdjeqlh9JoIeO/wFP4kLcmbABkmGM4
         66uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763024109; x=1763628909;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4v/Fq7VW41o9w6zoYq+6g7Om/dcBe/6lWVVO7aFJcis=;
        b=ZPkL5KuoCsHTsx2fyKtni7wR/iFYU9lXbQ17D9E1DQMHmrIIMoFckvFHG5ygC9l7iE
         WKvY4EWpr0gzlpkyi8uDZWemUiMcdaTIhBLliPBhPi+6xIIcjS8asNuLhARyJ7oCfk6t
         hP5GM/pvimIyXg4z6sp4wDUXSboFnVeteq+e+Uw2RhjzDXVAV52yP39jblS2FfERvD6o
         W+xxuGDEwIWfnKlDaudAdE4tbJuWKRChIJpaLZiR43azBju184jVftgbkwv1LG+Rnkfl
         /PtEJ95QeNcinkgoNCOSkajie4x9jdFY4wOjfIGwUD2aTg0bjqBPbzvIP05H4Ryooo0U
         dGRg==
X-Forwarded-Encrypted: i=1; AJvYcCUZWAzotWoRxBQU7mRNe6LXULkqLNIWB2w7GVAQsYhq/x/IOW6aVjeQYinp5+NGpt6FBOOK3iaGIW/i@vger.kernel.org
X-Gm-Message-State: AOJu0YxTwMBrZEQekXI/CdU/R4pokOGEdFU8kAC3moPmgZ4CRYDeZgwz
	S+dsCrwCbTjAbKZgn54iPeETb48G96LzOvQoFX8Lisry/GpimaQEe2HqMKt/x5c8Zj/z4Wz64vw
	2SZFEzCWK6VXImLorcH/bNVXLLUC73ijzgI6RnIRR1GA5z2WB0TbXFgYyI4F4unnJ
X-Gm-Gg: ASbGncsYGj/1oMjDswoFD6NGTFaAWIsb667Jviukjdy///BZGDOBogkMmButZf8RXRQ
	FNUrxlzqcqT3FmjQwiuUmOf0pZNsewLe3vLmRJjXtOgkl4LmQx9u7f8pOW5pc6GydcKzTrW2Vk6
	+PtJz7FXbjCEXD7JHX7BdRzN9s1szkijbE+dlfq1nhDwCg9oNxvfUxOMh2lDq0k03o7sj/b8sbv
	Xoq/4AWuOKucrt7CH+fZ1rfu3o8lqOOsYcwDuKoBQLDpzggaBGVWw//vtOmIq7N8X88Dpd0/OjA
	grxrYTCxJzEEBoq+luXK6pQmN/OeUXOGIavaeXyVYUGmsjaXqOea6IP61GLF9huZldnZdPIU8XR
	qGuW5Fcqi9tDQ5C9Wc9ntO4uBNtP4Zc+kaoNpdL20SaZTWDTl
X-Received: by 2002:a05:6a20:a10a:b0:33f:4e3d:b003 with SMTP id adf61e73a8af0-35909f74f15mr7790743637.25.1763024108847;
        Thu, 13 Nov 2025 00:55:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESdjOq9qu1BkwaKsDbcGdpq3xI09IK44dcLHktdSNqVFansXAWCBUGQF1Eo6eu+xMmevwqOg==
X-Received: by 2002:a05:6a20:a10a:b0:33f:4e3d:b003 with SMTP id adf61e73a8af0-35909f74f15mr7790723637.25.1763024108379;
        Thu, 13 Nov 2025 00:55:08 -0800 (PST)
Received: from hu-anancv-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b921cb6f44sm1592971b3a.0.2025.11.13.00.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 00:55:08 -0800 (PST)
Date: Thu, 13 Nov 2025 00:55:06 -0800
From: Ananthu C V <ananthu.cv@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        ananthu.cv@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Ananthu C V <ananthu.cv@oss.qualcomm.com>
Subject: [PATCH] soc: qcom: socinfo: add support for new fields in revisions
 20,21,22, and 23
Message-ID: <20251113085432.1309629-1-ananthu.cv@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email 2.43.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2MiBTYWx0ZWRfX0p9P2a4HYsMZ
 rwRWeiKQ535M4n0h0beBgRg088XXpWdYkY9av/l/hUnBl9kG+CWqkydu+B7w6y3+Meic6KKiI9E
 gfRgVT0WuXhTxC6Z0ZsMjllGOBbMYnW6IoFfY8miV1QneHqlh6R2YxELyOAEQJCUMCTxff7hTji
 xisJVgckuxkd7uS3asEGllcpICWXuBuUh4UCmSVWLNI/3GhBMSYC2b1xmgBeO8m8JhYSUXPCdn/
 gAGC3EDaFSVVcCu7tsllFLo1iX+paZOekQl22Ytwx0/8Q5obCByWVRpRP3aHETQ7alAS2QO1N/W
 uni5f0/uGNRHXpAsCe+S9dqHZeUn7EiH4hd7bUD8qps2wCOUPkDTGIHizj2VvmkC/nffx1f1RH5
 eizxhU9d01AwF+4ZK16nOWqgYW5g6A==
X-Authority-Analysis: v=2.4 cv=d4f4CBjE c=1 sm=1 tr=0 ts=69159ced cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dALc9j6rFnT5Ke-xxj4A:9
 a=CjuIK1q_8ugA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: adQZTEEHKGXGIIpustAJMBS29nsOLJbu
X-Proofpoint-GUID: adQZTEEHKGXGIIpustAJMBS29nsOLJbu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130062

add support for the below fields in socinfo structure:
- v20:
  * raw_package_type: type of the raw package
- v21:
  * partial_features_array_offset: position on array indexed by
    ChipInfoPartType, each bit notes the corresponding component being
    enabled or disabled
- v22:
  * cpu_cores_array_offset: position on array of cpu cores per cluster
- v23:
  * part_instances_offset: position on array of PlatformInfoPartInfoType
    structures
  * num_part_instances: length of the array of part_instances at
    part_instances_offset

Signed-off-by: Ananthu C V <ananthu.cv@oss.qualcomm.com>
---
 drivers/soc/qcom/socinfo.c       | 4 ++++
 include/linux/soc/qcom/socinfo.h | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 963772f45489..a14aaad51f81 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -621,6 +621,10 @@ static void socinfo_debugfs_init(struct qcom_socinfo *qcom_socinfo,
 			   &qcom_socinfo->info.fmt);
 
 	switch (qcom_socinfo->info.fmt) {
+	case SOCINFO_VERSION(0, 23):
+	case SOCINFO_VERSION(0, 22):
+	case SOCINFO_VERSION(0, 21):
+	case SOCINFO_VERSION(0, 20):
 	case SOCINFO_VERSION(0, 19):
 		qcom_socinfo->info.num_func_clusters = __le32_to_cpu(info->num_func_clusters);
 		qcom_socinfo->info.boot_cluster = __le32_to_cpu(info->boot_cluster);
diff --git a/include/linux/soc/qcom/socinfo.h b/include/linux/soc/qcom/socinfo.h
index 608950443eee..40903c54b526 100644
--- a/include/linux/soc/qcom/socinfo.h
+++ b/include/linux/soc/qcom/socinfo.h
@@ -82,6 +82,15 @@ struct socinfo {
 	__le32 num_func_clusters;
 	__le32 boot_cluster;
 	__le32 boot_core;
+	/* Version 20 */
+	__le32 raw_package_type;
+	/* Version 21 */
+	__le32 partial_features_array_offset;
+	/* Version 22 */
+	__le32 cpu_cores_array_offset;
+	/* Version 23 */
+	__le32 part_instances_offset;
+	__le32 num_part_instances;
 };
 
 /* Internal feature codes */
-- 
2.43.0


