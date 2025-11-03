Return-Path: <devicetree+bounces-234482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 878C6C2DA5A
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 19:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0776B189B653
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 18:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A7E288515;
	Mon,  3 Nov 2025 18:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vkw5OOIN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e5n3sMwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433402741B3
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762194025; cv=none; b=uzsQoppvgteqUv+wG8dgs945nDAF7vl9z/tQxkdDWg5wAJkyJcSCBZ+w28U18oYWtqp1gNxPU16B+7pRHiXy928HZppPG/O5FtQLEbC/w75/GT59Wg6rLiq/hd3Cd53Kp98+jSflyCY1zsiElQ5yLC/i1QGeN/4bS2q9ffprlVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762194025; c=relaxed/simple;
	bh=EmpIj8P++BSickU5H2wOriC+YTmA4n8f8xIEd+fKaSI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K6MNNwvN8ndwiXly5yVr3X/OgeamFzfudrdfjHS1++acNx1O+LVc9MVlCcqtYIVm6OKfieXMLSdm0sA/yzOPjT0uQhnwBtW6BEh2GK4u5d/BH0/qu24tRugwS9TnRViUuOpnAKXBQhmzQZ1D5yR0zS+Z8rlUHcymGoZTq+TeBbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vkw5OOIN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e5n3sMwc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3GfvfV3682876
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 18:20:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LTXzGFNw6CR
	y5ojJanbNoOxz7dlaEuzhm7CxMuaDYAA=; b=Vkw5OOIN7/wrjyLI2/7COt3s5Q1
	YkV8VK84pHzLjzCsFWGwEr7BkhGm2MM9aDaDbo+aU3NHFxzmVlscz50euB32bvlr
	ITcrjdbPUydcfnV4AlK82x2A4frPi1KXXRa8k+Z+sJUQU00mrVj0OAnrhl5haG7/
	B82/2VO1UP+6fZsfr47oZhxvviM5NAfFzpPhpSkmv2ZuLBcHtn+KYlWlIVQdnM6a
	JVieOy4P94wpYsexIT787gu41TJ92RLOnRpW9/hlUfZPyVxd0wu+6d9uHwZFyhzj
	BCvYj3MBxljKnBrfX1ypQldqYPjoIqTMCQA5032EZ1wiStMEleVCed810gA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6xjqrncv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:20:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8984d8833so125488461cf.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762194022; x=1762798822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LTXzGFNw6CRy5ojJanbNoOxz7dlaEuzhm7CxMuaDYAA=;
        b=e5n3sMwc5k3e8K22mPykZam3i19m9I+E7+I6Xgy7FuTR/qnAYJxDTAG2OxloMcIfC/
         G7PVRg8y2UCMM/Acinc5v6PbVwJSh6wZMmCuVVc8AyUnCA2u89ni4KcfvrUGl0TaV7fx
         saB65GJE0BgjI4Dxy8yo5xJ8kxnQvqDaj1T2p/4TNhd4lxtnL5NOfqqF3pfXoyjVDXhn
         mQTire6Al3WHvpP77yDN+odzErfL7y65CTbpoX/9QqBWnNhspu8RSTiUe5zpRefLmFR2
         Ui/QYBTUSNBsWv/S1+xDu8Dbt05uMlRRSK1xp8vXdCp0hdMAOG5mPoS0x5HJwl6z5j8+
         PL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762194022; x=1762798822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LTXzGFNw6CRy5ojJanbNoOxz7dlaEuzhm7CxMuaDYAA=;
        b=N4Mg/iaBgOI/UwPJi/Wj/k3wHIJzWyyRhci0RBXrFGVVAAm8pRQMWS7xaY8LQMkKuG
         gmN/ocvk7fEXvF7jZgsXLHriM0e2YK2Myb2SLdwSYQjjJfJpqKSmqpgE0fWm1ibntO14
         6AnLQgs3BuPedXKBOJ9LUMnL6PmMikyI973h1rSzg02mYvVhPKxxXTUzB0kCr/QVF9Wo
         vJ5z9KUGIA6Trr+yXiq+pC3Gp0RgoCop1EvZloBO2OV1ABNFFgKExTy04bcd86j8BUhb
         nFwdBVNAs/R5DPw8CJ1Q0bFLQBbfXyBoeMf7K5SDeQ7R2PTw8e8CRQUNSsGRg8sELK5h
         6gyg==
X-Forwarded-Encrypted: i=1; AJvYcCUSLBnPdW82Nr63nbl8ZZb+oE6IHKZCgBqD8yAGbcjvq/GiVrblfKGL7CfXnb+nXKQFU2b+dBpH0wbY@vger.kernel.org
X-Gm-Message-State: AOJu0YwiGgdu3jyDfw+CWZ7Z1XwSp9qVbDF3UbTbMAHoWlqJ5f95OhnM
	PsYQIRWwBi7sZy5BZtBgj6CX0F80WgXx0FdkIHlUmTNdqtNKHGW6YXi9LUV9Jwb43n7ypyOgna9
	bosxSzHoTtNxbYj2fM6XHFOPtxx6xLHzLRPRhxu3r4JeIcGcn0SHlM6DXD7Eq8GcS
X-Gm-Gg: ASbGnctwNNCjc6gLzlasyPeHRuE000wckPskW8NvCsJrNjcirOCysokvyebN8DKUmSH
	sgPnk+PsigJ3tWSNgvmYwG6PnAWDhlN+0yBJssPcz0StSnMrB8QOtF2/+Lez0HlLxYon92qsbKW
	FOeiLv+605pY6iXgd11hkPZlAbvA0tXdLUpYO0GqBcGu5QLGV0jqzrJX69RTDE/zIZ7xbsTrMLY
	5qxQhEJfCDiD3k4actk+XJCL9ZUK9Psz5/UnaqP9d7rzIDvkq6vBzHrh4N1L3Yo3hT1QGyzrYGU
	ua54HgPjufWeqVznk22D3bDZn/OsrrmaGGsCePbpUou4q/6jeNnLr0nBtN+oH737Ehx464Mh0t5
	6va5BEhVtNF4J2KWWSP2SsptXmdJK++5YySpFUenSZg/KE0+vrP9N0/Lblb5d0rX3rQ==
X-Received: by 2002:a05:622a:2591:b0:4ec:f4be:6b12 with SMTP id d75a77b69052e-4ed31073e8cmr174089221cf.72.1762194022353;
        Mon, 03 Nov 2025 10:20:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYlXKqqeMR6kvur4jUnr3LYqBhF+z87nol24dC1RBRq93u6zrjXSMjAf39ULnz32NyR5KgVQ==
X-Received: by 2002:a05:622a:2591:b0:4ec:f4be:6b12 with SMTP id d75a77b69052e-4ed31073e8cmr174088761cf.72.1762194021753;
        Mon, 03 Nov 2025 10:20:21 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:8842:5746:daeb:a8f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec2csm169096545e9.11.2025.11.03.10.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 10:20:21 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 4/5] firmware: qcom: scm: Support for EDL reboot mode
Date: Mon,  3 Nov 2025 19:20:05 +0100
Message-Id: <20251103182006.1158383-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qsB1v_IZ6zW2N2rYdgz4xYC6fLqsaYHA
X-Proofpoint-ORIG-GUID: qsB1v_IZ6zW2N2rYdgz4xYC6fLqsaYHA
X-Authority-Analysis: v=2.4 cv=criWUl4i c=1 sm=1 tr=0 ts=6908f266 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=N3Qph4pD8RtftmTKDywA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDE2NCBTYWx0ZWRfX1NEEoGfq5Pu7
 1NhdUdOHxjbyTaFVxIRSLddiX+q10V3iIjaOPNQJO8IsG7rUS1r+tl8ayBzenPLHpEokwf4qI4G
 nmDokyA11sqScgVrQsZPv5WqlPhf74ke7Ufs7eeNvi4B7SbPqQhDl6yPvhwKdCi0oNZNPTFF9Y+
 XH2WwfF3M3R58EVBASH3mwFfBA66HiRCC4dWRCVPKXorcxp+JTrf4yTtYc+uLi5Rha3PA6wgeZs
 U/Kn+tVEwgP7X433fUnI/BDw/BaTgKqilAroU3oPCOvHl+/NpOaVpi/4FdEvnG2LFJajuSsyxjm
 tndRTxqsJ+uvcVHNmRLosRoTeD1315wSGEhEraGvQNHgn9hbpI7h+WZlI1nbhqkg3a8AvbAImsG
 FAGjFEiN19tCATLRSeWs8wqAtALufA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030164

When the dload register is specified, it can also be used to boot the
platform into Emergency Download Mode (EDL). This mode is implemented
by the primary ROM bootloader and provides a recovery mechanism.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 26cd0458aacd..e697ef14619f 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -26,6 +26,7 @@
 #include <linux/of_platform.h>
 #include <linux/of_reserved_mem.h>
 #include <linux/platform_device.h>
+#include <linux/reboot-mode.h>
 #include <linux/reset-controller.h>
 #include <linux/sizes.h>
 #include <linux/types.h>
@@ -43,6 +44,7 @@ struct qcom_scm {
 	struct icc_path *path;
 	struct completion waitq_comp;
 	struct reset_controller_dev reset;
+	struct reboot_mode_driver reboot_mode;
 
 	/* control access to the interconnect path */
 	struct mutex scm_bw_lock;
@@ -130,6 +132,8 @@ static const u8 qcom_scm_cpu_warm_bits[QCOM_SCM_BOOT_MAX_CPUS] = {
 #define QCOM_DLOAD_MINIDUMP	2
 #define QCOM_DLOAD_BOTHDUMP	3
 
+#define QCOM_EDL_MASK		BIT(0)
+
 static const char * const qcom_scm_convention_names[] = {
 	[SMC_CONVENTION_UNKNOWN] = "unknown",
 	[SMC_CONVENTION_ARM_32] = "smc arm 32",
@@ -2206,6 +2210,18 @@ static const struct kernel_param_ops download_mode_param_ops = {
 	.set = set_download_mode,
 };
 
+static int qcom_scm_reboot_mode_write(struct reboot_mode_driver *reboot,
+				      unsigned int magic)
+{
+	struct qcom_scm *scm = container_of(reboot, struct qcom_scm, reboot_mode);
+	int ret = -EOPNOTSUPP;
+
+	if (scm->dload_mode_addr)
+		ret = qcom_scm_io_rmw(scm->dload_mode_addr, QCOM_EDL_MASK, magic);
+
+	return ret;
+}
+
 module_param_cb(download_mode, &download_mode_param_ops, NULL, 0644);
 MODULE_PARM_DESC(download_mode, "download mode: off/0/N for no dump mode, full/on/1/Y for full dump mode, mini for minidump mode and full,mini for both full and minidump mode together are acceptable values");
 
@@ -2251,6 +2267,12 @@ static int qcom_scm_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	scm->reboot_mode.dev = &pdev->dev;
+	scm->reboot_mode.write = qcom_scm_reboot_mode_write;
+	ret = devm_reboot_mode_register(&pdev->dev, &scm->reboot_mode);
+	if (ret)
+		return ret;
+
 	/* vote for max clk rate for highest performance */
 	ret = clk_set_rate(scm->core_clk, INT_MAX);
 	if (ret)
-- 
2.34.1


