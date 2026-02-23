Return-Path: <devicetree+bounces-267266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIwQLD/4m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:48:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 669CF172594
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6CB1B3032DDA
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDD434B40C;
	Mon, 23 Feb 2026 06:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kQr8LKbn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IaNSpoG2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A39934AAE3
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829138; cv=none; b=KZcyqOBgD4ym4x9hMdURO2GG/ALo578PQyAx2zl+hIE27tWp+dGqENVF5rEAWro4Z62E5WvFaIpSUKbJlbGi0Ui27dEJpuOagxz4/oQtav9aOBvVETHQnzMn+15aDFH6e/6nJW99Xux9X03JDF+mS4XHeQC6OkAJQH3nExsP+1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829138; c=relaxed/simple;
	bh=+caVanCR1MkRvTlDCUseywuTVg2NMA0xm0dQkI5ZlEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FUS/HRNaTFfhkJTAGKizlf+QH2TfPjEBhFYOYRneXCqkU8mHxN3fGp0Pf/+AJM6+2OavMLAb4yiWjsLIPw6eLaTydvMPmVzj0wsa3+k6VOnqv6OPXrXrot5GM1BsD0l0uvACedhFYQdOqt4hWGjwqP5ghd+2kiufcr059MaQdwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kQr8LKbn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IaNSpoG2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N0KPHR2169796
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jI9VMtFL2iZSHiAcQIxgD0sR6qS7voT+SLIQjeTVTZ4=; b=kQr8LKbnIdWOnO3q
	E5Bo3HZi2RVbxdnWm+EJxOggxeGkG8iTO3a0PiF5aCrvHtQUgAoZ6wIoABNBHzDJ
	T4N8D53Ng2Wg0f7nifMxXcXnIpiRRGl8Z/aKkI78yM6V0Jlpyq7nui4tRFlolCUw
	vtQFXBHXdwBajDGb7Gg1AtYL51sXnFfBd6d0XLLhWmBTupuAdYOmdvkvYfelVrkn
	TBFZKiozc/EW4xkAFJfZniDSPZjRqxKvFSiWkRp4GjLxXYcyYYTaP9SejQl6xVWI
	+f5NyyGVtijiHeWhF/t+4MPLZaTfPwb0fcyT2YsYr1+/h0+9LcwZ68/AUCWCP5ue
	0sZijQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5waup94-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aae3810558so46122495ad.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829136; x=1772433936; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jI9VMtFL2iZSHiAcQIxgD0sR6qS7voT+SLIQjeTVTZ4=;
        b=IaNSpoG20y1bZD+gFlTqp8mdnWtC76QUqA62MuBmXFDOA20Ggr14TwcnylwSKVSHJj
         HV27+gmMgmWt/L09wKSKqLWLml5e6Oaf9sadjfER31rC36ZTgzXIipVrxqb2gKyETcHG
         Y5Uw3aTH6DWjTCpDWGXqDGzpa3F3KuLQEXB2Xp1TLwE/Y1lrH8Jys40q6QYWk+3D8JtJ
         qMllJgYVduNylDS2ZEV5hG3Ng4G7hEhxglswB6pCqlYIhKEG33xjLuTz4oLR3BTdPH3I
         E++useq3a640ZAjLna/aFyRsh4wJKuDggfvdr7D6hNXWtlaHWk2idvdtqGwNM8+49JJ8
         LeNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829136; x=1772433936;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jI9VMtFL2iZSHiAcQIxgD0sR6qS7voT+SLIQjeTVTZ4=;
        b=BzPX7zMvB/ToEhqyEY7pRWLWvDtgEeZkvPZNm4/RTGEF0KnOS/f880EjdMJCcnlB4j
         vvkysq31K8bCCWh2AILs9OoR4roMRtjZCuAwha3xWWtYSKVwW+8CyMZihPThuV//crVe
         hVblqxr+SQ+OG4zF0u1ws1auLbxh5Wjz7N+pTFCylePBjKTE8iNKjB80JZmByrykbF18
         jEccNI0YaNGvayWFMRKdl4iRj6/cAjmruGCsZaxJt1D+cPSOVWaSC1nNBi4w1aCL0qWk
         2JALSUjSyd6J1Onrc8OxZaLzF4y6QKfZlG4Gm+Xy5PP+DYQBeBZoY9Pxz+c+zTEzgC8O
         5Ueg==
X-Forwarded-Encrypted: i=1; AJvYcCWD1CxEjiIsenQMpHmyv/+4+HKTd167LNXFmnuKF5Zl2AdnD1lYs48BvM+sX02V3EtbavpGvdMsF6Lh@vger.kernel.org
X-Gm-Message-State: AOJu0YxtXlJ1KqE4bjAvljJz9We2m1D6BMRz1Gcfx6HKmzkAl4F0gJ6g
	hcB+uRzyZHiVPYqgXSSHX+UHve5WjiNgJqT560D07mVjfYXsrylDD/odJFMXafYSh138yKajy75
	fBzTQ8xF3RuhxiyvpHzASCRVxbWr4fPi81oLIeJfvAFuvl/E9+dzAYPCHpYIdMZBP+Kq7SfU1N9
	Q=
X-Gm-Gg: ATEYQzwrCZX5+HwF+0R8L/agFvSNS16OroMcc7jVN2ra8o7Bkkifz5IaTlgXsbKvc7W
	9d3gJ/r3/yGyjatEKJEbIVQViVs2euH40mcpO4h7H6YlUPPiZISeTjqbAAPRB+2Rk1aOXdWTtRX
	uO8L1OfeeLV1iS/qtdO4IZ74jLwFwEhU9y0Wz7KX1wrB0/f1zKKaqL5/wHlVnAR8F19wvQlAWEE
	zo6cYzrA+BZQ1tMnqk7MXio3UWTlej9nb4hcSt1B8IDKee3pq/xxA4v9j85LEoTsT0lUyDp9LMY
	o+JgMjBkxTQ/UmpAXvZoFwISTdpUFGS1lmbtINwa+pH01G5or4rB4y7xqowj+k5DQsB0nWNN2vM
	NoI09kIH7HdK2gNXkXPMhZUoh3UjNaGpSp3WdojZ8tFJu5WI4oqesEzGXwlfO+Git+P3tMEQL8Y
	/CONZPl+OVHxCv
X-Received: by 2002:a17:903:3850:b0:2a7:d42f:7065 with SMTP id d9443c01a7336-2ad74511791mr53085075ad.27.1771829135894;
        Sun, 22 Feb 2026 22:45:35 -0800 (PST)
X-Received: by 2002:a17:903:3850:b0:2a7:d42f:7065 with SMTP id d9443c01a7336-2ad74511791mr53084845ad.27.1771829135433;
        Sun, 22 Feb 2026 22:45:35 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71839d6sm6483993a12.6.2026.02.22.22.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:45:35 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:44:43 +0800
Subject: [PATCH 7/8] coresight: tmc: integrate byte-cntr's sysfs_ops with
 tmc sysfs file_ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v1-7-042fb35bd37e@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829097; l=3465;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=+caVanCR1MkRvTlDCUseywuTVg2NMA0xm0dQkI5ZlEc=;
 b=3ejEy2E3BRft9RB3V1QrLiiFOb5rAhjQ2kogpVIj7yrQui20Lqdro3f8n7UQxkghk9OuO/i3C
 +8B8KlvbavECf4ep/LIJizpUXLv2Nv07u+F8EQ8f/XXbFEQIKNcQx/J
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699bf790 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=i2GxayCjj04of9N-vEoA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OCBTYWx0ZWRfX8LLcK1HG79C2
 GKXB8IxtCiV38GEPrfcxlobI167jBUxQMylCpKi7uA2reEFear9tAApPytqUPGQqPpHqf+988eb
 R3LnZSZetTcMM+xLId5Gfy2GiVrldIfG2jR1nWgJxSiZPOwWde1meDRd6SqMv7vq1T4TcFg2eKf
 P/MtRTBev9GrALzB0NkdNfAGpzZiZUgQ4vCQYQ94m2jR9tDRRaFB9hUlKpEtPw73tMcXbyQuaFJ
 dZJeYsFYdo+E6jBg+/+h03Vt4o7puBdDS6ZqW4B69xcCFJGhgSd97F528r3teBqa6m5LGPsToOj
 scnKBSEm+SfPuNfwJpuD6zxL2lyDgYO4dw/wWdIPOrrsysNkTQEoXBq5zA73IB+SskR5X7m7Uio
 n5Szmjf1zMD5X/LYrnPa+AM4EphGWkut4LX2+L9BugC1J1oN5EmqgEi4z/vYHVi5xt1LP5/smn0
 +51w+3MnaffmxKK8xbg==
X-Proofpoint-ORIG-GUID: RZuxcQ9sEIvK9mE3RUyyJiuT7g_2S7O7
X-Proofpoint-GUID: RZuxcQ9sEIvK9mE3RUyyJiuT7g_2S7O7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267266-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 669CF172594
X-Rspamd-Action: no action

Add code logic to invoke byte-cntr's tmc_sysfs_ops if the byte-cntr
is enabled.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 53 +++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 32ca2ec994de..6486bdafdddc 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -31,6 +31,7 @@
 
 #include "coresight-priv.h"
 #include "coresight-tmc.h"
+#include "coresight-ctcu.h"
 
 DEFINE_CORESIGHT_DEVLIST(etb_devs, "tmc_etb");
 DEFINE_CORESIGHT_DEVLIST(etf_devs, "tmc_etf");
@@ -228,15 +229,47 @@ static int tmc_prepare_crashdata(struct tmc_drvdata *drvdata)
 	return 0;
 }
 
+/* Return the byte-cntr's tmc_sysfs_ops if in using */
+static const struct tmc_sysfs_ops *tmc_get_byte_cntr_sysfs_ops(struct tmc_drvdata *drvdata)
+{
+	struct ctcu_byte_cntr *byte_cntr_data;
+	struct ctcu_drvdata *ctcu_drvdata;
+	struct coresight_device *ctcu;
+	int port;
+
+	ctcu = tmc_etr_get_ctcu_device(drvdata);
+	if (!ctcu)
+		return NULL;
+
+	port = coresight_get_in_port(drvdata->csdev, ctcu);
+	if (port < 0)
+		return NULL;
+
+	ctcu_drvdata = dev_get_drvdata(ctcu->dev.parent);
+	byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
+	if (byte_cntr_data && byte_cntr_data->thresh_val)
+		return ctcu_drvdata->byte_cntr_sysfs_ops;
+
+	return NULL;
+}
+
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
+	const struct tmc_sysfs_ops *byte_cntr_sysfs_ops;
 	int ret = 0;
 
+	byte_cntr_sysfs_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_ops) {
+		ret = byte_cntr_sysfs_ops->read_prepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->sysfs_ops)
 		ret = drvdata->sysfs_ops->read_prepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
 
@@ -245,13 +278,21 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 
 static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
+	const struct tmc_sysfs_ops *byte_cntr_sysfs_ops;
 	int ret = 0;
 
+	byte_cntr_sysfs_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_ops) {
+		ret = byte_cntr_sysfs_ops->read_unprepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->sysfs_ops)
 		ret = drvdata->sysfs_ops->read_unprepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
 
@@ -277,6 +318,12 @@ static int tmc_open(struct inode *inode, struct file *file)
 static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
 				   char **bufpp)
 {
+	const struct tmc_sysfs_ops *byte_cntr_sysfs_ops;
+
+	byte_cntr_sysfs_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_ops)
+		return byte_cntr_sysfs_ops->get_trace_data(drvdata, pos, len, bufpp);
+
 	return drvdata->sysfs_ops->get_trace_data(drvdata, pos, len, bufpp);
 }
 
@@ -297,7 +344,11 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 		return -EFAULT;
 	}
 
-	*ppos += actual;
+	if (drvdata->reading_node)
+		drvdata->reading_node->pos += actual;
+	else
+		*ppos += actual;
+
 	dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
 
 	return actual;

-- 
2.34.1


