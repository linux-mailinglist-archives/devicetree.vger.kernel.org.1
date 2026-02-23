Return-Path: <devicetree+bounces-267283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKIaDHf6m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:57:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C65172754
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54A563040303
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E078034AB05;
	Mon, 23 Feb 2026 06:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MLpeCV0G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L8gvubo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A82349B17
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829798; cv=none; b=uTiEnyCO2MkT59fkSBQRMBIM1xmpyZC4m/CThNbqs9M6v2FZnUN+hx0XQ4RVCPz+nk/EMsohd1ps6SnjUQPg5L3k4ATZhYtO2MyyEiydO2VrAvXQ90ikMJoyY7iFr08QIXKKAvA3x1RPYfHGQI6Y9ODQTO90zlhcLavFQbh95Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829798; c=relaxed/simple;
	bh=XbEF7lfm+dBjOkALDpKb/LLjuMBdmQi6ikgLxJ96uLY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YPEhsfyc1ic5BLfUChD8MhJRA3wd8uR30DiR9otKeWcaKiBRpAQLhQ8YqpRfJdJbi/FKxyNAPHUYPRUw5SJ0es+5oJFOURwe3uRK8HRkQ8AK7sUNifvbUvI5KB29Q13ug5Ubp9yOO2SZCZ3JAv0tcPG/+8V9/8btOJrS5+TR9es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MLpeCV0G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L8gvubo+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MIk5El1249093
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sEr82x2IlsxHod8Ic8W+n2/1JQBsTzrJLVgT1R1I5aY=; b=MLpeCV0GwkkbqCzg
	/9uMJU9UKAWnfRDFLHKSrYMO/+s3o3Bf53wfhRYBT/wgrCp43LkAxb1Opk4vofyF
	kBMYVvq+nOaNxQvmuVbB4H8T2nTrAVNPUv66wEgivBxu+GtQ/xYjBewLKQ81VT32
	zjsUCMpE8DFG6m7EPwlCvfVXfG/MDuMFzCgplaOtQD+nNPmubelvKBLFWRgAq/X5
	ba/LrM38ZMN2R7kd/xmeUgUre2UfVF7enGOugwgBhqx5ScCV4q8mQ6GxjeTkEg9m
	sLPCdzdMnvpU23JF8julwpuUwdB7/I06IF5H9brm5hDVm0iYHlW772OFdnY6jL7m
	uvSEaA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u9uq88-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad6045810so41854605ad.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829795; x=1772434595; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sEr82x2IlsxHod8Ic8W+n2/1JQBsTzrJLVgT1R1I5aY=;
        b=L8gvubo+S2gtttwbBpbZ6x27ZAtKevlg46Fn7SZw4JT8Je51OQZKA74tLFwRtsXIRc
         kPv08DMVab9ULKQSCSiB8FgP+KGDT+U5LrlVd9id6QLTTSdGndvDT4Hj0jzLFEcw4bjP
         tIKmdZJ/4p3doh7ogJK38Ak/q9GprdPiDD9dHXb3TsIyA2GDj0NpSUb2gBqJncjfnOsj
         2tP5aAQq4RBba81NLXDU0rDZwzeH9Fxj54RHQ23+DosZsIgjew4D8e3qsc0SFoMeHEaB
         3M6n9fxiL6Rvj7TKnOautrTcx9c/hiyL6C0Kzhjbjv1hk47e73D6eyEvTxEBnwn4WNgu
         Ah0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829795; x=1772434595;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sEr82x2IlsxHod8Ic8W+n2/1JQBsTzrJLVgT1R1I5aY=;
        b=MkC1eDMORHLc2nuQrQFrf7XEbcQaSmmrMr+86fXX16nu8OLrg32iCb2Vw8WZlWIhyZ
         zGJ9oPg0dOTQgY6gEi/QRtgjyygt3ImAqKMv48B62S4Jj1hCq21JCY3AgaXQL5lwDzI6
         FYoaDCo+Fy4Qmf3qgqCad0mK6BsDoG9fWdCxNHEnSfG2iEt9YU/1abDAFPjGnvWAd25N
         l66+pbWi0ozO+FD4vr2HloPEiXvgLQ6igckRzBCh0AhMMd34p19MDy49PDXE14YbZJTY
         QoVcMEvQsmDmh47FaWHBMFVy/lpmpRl7B2I4JL6nYyz9V1EayvVZlUiniHNCy48CG1um
         YrKg==
X-Forwarded-Encrypted: i=1; AJvYcCUunrOeRJtX4eecQk0XvpqjM1/njzjlwF4nNgC8YgtLJFql3FnWkE5OH+ZgMXIHDSWchm7KtxArkp5V@vger.kernel.org
X-Gm-Message-State: AOJu0Ywye1U+Phlz/xM6lCkIiFnoQdNo9SaijDjSJGaxKD9V6MZ7J2wM
	3VeXLBoYjXx4URWt2OXTqyE5EiXcUiYL/UM7ejT2mODkbTmMX9CR99BkE7lQFLyyXlUYw5MMsuy
	b00GsDXvnGjZwnW6eEmTIV6E12E7N8Bz67BXe9Sr+5wFNk9lQBizpE34UzTnJAt+z
X-Gm-Gg: ATEYQzxhYRWvVgQdsqISzVFU9E1Nctem1JbLKi/QPB1KG422tfFvOFHKMG4KPtjJiY1
	YjcER1w6aL4YmIugIm5afShPgKf9h0DRGOfy6tDv96VWBDVlAl7VXQCmmvz5XJwTzhjo5ltGegX
	IUqGMC/5fO5PMDZpuoLbWekcENSIM8lAjzEPcZB6/DIaeTjo/m88BkeHrupPVVUpJmHIXPUxEFr
	ZcNiZUVcpPVToBgWBHxyp2M3LqcEbW5otP6wNIcId/mFk3r0VVKq52CtMHiE/FXLGaNtfKXf4/p
	GylCF+SQexYqingHvnlXNVq9tvGFgKxq0dGucq6xRCt3XZY8nPMOH0V7zo3E8FaYNrNeQfaktBl
	BJRzVbKUpnsyHmGvMS2EGfcDS+urF2zhAG8dt6I/hpQ/RN9boIj5+2O360H8N6UIFUVqcodI4Kn
	UbvSW0v+k4VVb5
X-Received: by 2002:a17:902:ea04:b0:2aa:d5e5:b12d with SMTP id d9443c01a7336-2ad744eec7bmr54010805ad.27.1771829794974;
        Sun, 22 Feb 2026 22:56:34 -0800 (PST)
X-Received: by 2002:a17:902:ea04:b0:2aa:d5e5:b12d with SMTP id d9443c01a7336-2ad744eec7bmr54010735ad.27.1771829794512;
        Sun, 22 Feb 2026 22:56:34 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f619f8sm62249225ad.36.2026.02.22.22.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:56:33 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:55:44 +0800
Subject: [PATCH v13 4/8] coresight: etr: add a new function to retrieve the
 CTCU device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v13-4-9cb44178b250@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829766; l=2348;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=XbEF7lfm+dBjOkALDpKb/LLjuMBdmQi6ikgLxJ96uLY=;
 b=QJIHdDQoxMLI/29FPVLu0wdWv1rJIOmKOHjVUElhbthI9G7PX5B7KPuwGLB5111xzHa2ft75Y
 TyCCmRN9yxDAGDLW+yMFfP00U/IFyqq2+LFPAEf2aYHWye/yebQipbE
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OSBTYWx0ZWRfX2FIjC2IqTO11
 Q1D5HDCdKnUwnDEAZuN5hNBGkPsoA7Nj0M67Koo2IpWhsdennww8h+UgI6mL+hZrwpsliM4C4c+
 cpfF5pr2lqPLtS0+jcOglumjTOEuC0ZD9VUVDXCM/6ZoN6urfwTzjMQ4xqzz3hbxbSm4W2my0Cp
 r6LEav1Tkpupl1JpYxWancXD8PvRgSiAKEf/KWWawXKvCMxV/fQvIcU4I16vePCvMfzEDb2ofg0
 ELCdzmDc35t0OPSiVYlYXuyzFHvNvNpYozVa/EjpGZ9IpqqiITj1j3zXIG0AoZYv319+uYiyHwf
 Bjn2ffXCPt17XL2K1WvbpKwdVuFEWSCt0xA9qCVEuwxQNJ0mz4RX9536IuIXy/6FQqPjGQe6wQO
 ni/WAwVu/O3Iz5FWZWZGGSxbqgMm+Sqji4I4nMAG1GXXeCg+ReJb4Dv8sBF6cux1Q7dNHG/Av4m
 qzl/Zyh2NsFx6uPMEJw==
X-Proofpoint-GUID: 7XS-lS2ux8sgWdVeWp9nmPo9GLixaTY0
X-Proofpoint-ORIG-GUID: 7XS-lS2ux8sgWdVeWp9nmPo9GLixaTY0
X-Authority-Analysis: v=2.4 cv=RpDI7SmK c=1 sm=1 tr=0 ts=699bfa24 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=FuIWbRVyn4pKkvqW11oA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230059
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
	TAGGED_FROM(0.00)[bounces-267283-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: E1C65172754
X-Rspamd-Action: no action

Add tmc_etr_get_ctcu_device function to find the ptr of the
coresight_device of the CTCU device if the CTCU device is connected to
the TMC ETR device.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 24 ++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h     |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 081498162011..32353980964a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -867,6 +867,30 @@ tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
 }
 EXPORT_SYMBOL_GPL(tmc_etr_get_catu_device);
 
+/*
+ * TMC ETR could be connected to a CTCU device, which can provide ATID filter
+ * and byte-cntr service. This is represented by the output port of the TMC
+ * (ETR) connected to the input port of the CTCU.
+ *
+ * Retruns	: coresight_device ptr for the CTCU device if a CTCU is found.
+ *		: NULL otherwise.
+ */
+struct coresight_device *
+tmc_etr_get_ctcu_device(struct tmc_drvdata *drvdata)
+{
+	struct coresight_device *etr = drvdata->csdev;
+	union coresight_dev_subtype ctcu_subtype = {
+		.helper_subtype = CORESIGHT_DEV_SUBTYPE_HELPER_CTCU
+	};
+
+	if (!IS_ENABLED(CONFIG_CORESIGHT_CTCU))
+		return NULL;
+
+	return coresight_find_output_type(etr->pdata, CORESIGHT_DEV_TYPE_HELPER,
+					  ctcu_subtype);
+}
+EXPORT_SYMBOL_GPL(tmc_etr_get_ctcu_device);
+
 static const struct etr_buf_operations *etr_buf_ops[] = {
 	[ETR_MODE_FLAT] = &etr_flat_buf_ops,
 	[ETR_MODE_ETR_SG] = &etr_sg_buf_ops,
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 92ffaf771fea..27dd72065c60 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -472,6 +472,7 @@ static inline uint32_t find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
 }
 
 struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
+struct coresight_device *tmc_etr_get_ctcu_device(struct tmc_drvdata *drvdata);
 
 void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
 void tmc_etr_remove_catu_ops(void);

-- 
2.34.1


