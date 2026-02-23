Return-Path: <devicetree+bounces-267259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC80M333m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:45:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7142A1724AB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:45:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 72D253016AF3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883F2343203;
	Mon, 23 Feb 2026 06:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gt85oWnE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vp00Lynt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEA3451BB
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829111; cv=none; b=kNigHAFU1aec/MYajkr1ua10lTma5oE9bF1/lDVzBfYoWB0k+8QWF0GsCQKQe0dt5HGwqF5foFhvdwuoNjP3dcFM50chBxfdR9OLm0IlUYaw+bE1KiR0aQnDPHTOawNIfAogfE/WZtl8VPQt+SvP1TOsfjZnzjRHg4NVnME3D/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829111; c=relaxed/simple;
	bh=nzaF2yP3ATiqQC37LSxmXVL9MqWLOY4wwOUNTmvz/UA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h2W++7GCsYMehKKBXSrwTR0LcKZnW7PgCX2gxy07urCRWwuixGVvdgV4zHA1QGmdSBROAg8HSFN9/WCQxgYV9HcIT8dEFBaN9gLNIAxX5fDClGtURdtVXBJGh1h5QQpsOrVGNLoyTe6z5wy5SsqMa2u73iYQiz4M/YvwCcZiS9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gt85oWnE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vp00Lynt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMv8te2278927
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V/JNJXfM7FDohbLniT/dm0wA/+qShrtEurl8w70+rXY=; b=Gt85oWnEcPTFwVoq
	1Kz7eSbhehMXi9y4glNxoc1Ppk/rS98AEXxikS2feuNsldfPtVGcvYjANBuvHTyD
	zX9s9/Q+Liu2Ctn2SOXpNmbtKbB/ZUNPDRU8MCBihMm+4SgXOE3ea3uuhVXJwm4g
	+K1/Evk1WIXqLZXhxYXdEkAC1nMFs2W6HKqdFa8Grkpp7nWMXLh94XrpUcSNhndH
	XHflUq63rnHX+Zak1vofPjnMM/1PipFuSQdmntf1Tj9+/n6WSkRFTg1wkRaX/xsw
	olm+kdEeO6evQ/p6cgyjulXEyKRSwylriVyHc/8oi0m2w08NNctrlUj0CE+oZAC9
	JfRTgg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5v3un9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:08 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c44bf176so4004238a91.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829107; x=1772433907; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/JNJXfM7FDohbLniT/dm0wA/+qShrtEurl8w70+rXY=;
        b=Vp00LyntECTNNpSEO63RKajMaHQ6haOGQHFPU18P3t95MpVPkqs6XCVfWc2VVzgGEn
         4SrHYuJOum+MBxO5DJgJB+mYPUs9RF5WzOmhpFlNYL5F1k91yIl2wul/1MqhjvdgQM6L
         TGz9WQeJOvIYXiGBNr6n0zUUBnZgnnXVyYgtOJmJX8c/NycwGJO8/2rOAsEcT5uhwdOK
         jmf2QQP3GN7eiurDGhpwWIZGza9E76GZEDzppm11iEEXOBD6z8RyiZIk4j+aWTZddxZl
         2BsA/2TUQ/mpUjMvp3oHXxob7YC0nUCj8lf++YmvJRTZRFVE1m0mZ23jM9hG+/YnDfPF
         Fi3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829107; x=1772433907;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V/JNJXfM7FDohbLniT/dm0wA/+qShrtEurl8w70+rXY=;
        b=U26pinO9PbDNQhr+CdPsv98EGtlixqKBh8pke/OMFEeSnENSDXYO045t7/23WwaD0S
         TYByioPyW1ZgWHlE/Ql8jBMKDN+yViwz1qPuyLJiidF3JAS7ru+iqYX5alwXVQdph4TB
         y8+wB3U04HCBWHQywfsEub0tVS//sGS0j6vYmEkXyOlP0E19WxyVae7xePQcsqShJZEf
         2qYYtHZ55Mqxb5fXuDA6hQEQ/cqsTOZytEV5Xer41jOjGbxuPyKugIgXafzQzfCTGHI9
         S2Xpf4qAKHzCefVvm3BcbX2iJDo4EKi0qavgl6vJiIP4KCSOzRrOWeIpywQHM2HgkBQb
         8yCg==
X-Forwarded-Encrypted: i=1; AJvYcCUiNhmJ8i+WjbVmlyd0zT8mTS6OQ5a+Pt1AAcr7mXvV3hTwv5C+fIpMPG9HE/kWmTtJB7FQ2qnJayZg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3kAS+F0JD1MHqi66S6R9Upk4QmYcKa3TE7ze90Q7dMuhJ1FnJ
	7PTNSAcqUjm6XtKZA52CYn8/KUYLLgXZEuF7JaSzyR1AEnut2UC3G1LHFuNEZRkeoy5wS+DnpqQ
	fB9flN4+mxN3aj3o+wW/r5I9X3wRC1nCfQbFbMhA8BrCl6/AIL7+Sm9wgNLkhvr5T
X-Gm-Gg: AZuq6aLfwSqqo6Clzy6Uz1HvRQCTN//PSJoiiNOOBy+8PXV5r9Bvs9X0zFSoooW3tMw
	b4allPrn86jAF42Jf7UMsxAcHzWaaQQ+gGrhMJ6c5ws/v9kXlMcbX6OWnbkcmQ1cFROGMYpIJf7
	x03jXxfW0hkOPgIlG+UIEteL/mZE0t5a5nfI4jeavN++qwi5gCa9dp95oZvNIZZ84jT5PBQ7FPi
	QevglutnvfpKUgWCqeSf3MOqSGt3TxhhoutYI9WOf3OU2Pad9ehMynvrVbgwyqn04o22w+s0HXm
	2JgsRf0SAXJU+HwQF9V/8WLy9o2Awp5YnX83L6fAUNV4pzwy1OkjvqLZzvf3ts1lNUVV1K7pTaE
	IhblHJ+yG5Pe/d7QJMntl1RA0sOgXNcl1WFaCP4w86bQjdtiiQpx5joMyt06rjg+Nun4qGpKyQw
	nob9j1C+RFHpOW
X-Received: by 2002:a05:6a20:158a:b0:38d:efcb:2e84 with SMTP id adf61e73a8af0-39545ee9279mr6513146637.32.1771829107444;
        Sun, 22 Feb 2026 22:45:07 -0800 (PST)
X-Received: by 2002:a05:6a20:158a:b0:38d:efcb:2e84 with SMTP id adf61e73a8af0-39545ee9279mr6513109637.32.1771829106926;
        Sun, 22 Feb 2026 22:45:06 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71839d6sm6483993a12.6.2026.02.22.22.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:45:06 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:44:37 +0800
Subject: [PATCH 1/8] coresight: core: Refactoring ctcu_get_active_port and
 make it generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v1-1-042fb35bd37e@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829096; l=3771;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=nzaF2yP3ATiqQC37LSxmXVL9MqWLOY4wwOUNTmvz/UA=;
 b=6PX0+KbbUxmx0pLLi8jsGxkcATkRnlG4xmCYKqJnrQba0pudV9Z7EqTAJVU86wlPFlBQRecKN
 A7FhRx5xw/lD/7MPk7J4n0yJTu3Q08Kr9uXwdywud4R2PpUsgmVgP17
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=YL6SCBGx c=1 sm=1 tr=0 ts=699bf774 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=qQZ2XtAyJf2dEkEvaVsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: -YctOmWgrZ1P55ttLobW146X158kozy9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OCBTYWx0ZWRfX9KUzwUNc1SQ6
 9LuOWBq/BkShZkFewIfuZVC1dlxATY82E1ynncYsZTTysAzunww1eGbrKnxekrB2P2H2Bx/uQjL
 VQJQooUYymtldm1KD9fqGRVUHEZCViGY1RvBg7JE2xRcA2iu45UZr2UzBV5I1mKvAXn21oWnXB9
 tK1uNEaA5zuVLgca8ADJeLxDg1Tl67VgIxMrq3j/cYJuk6WwtQK6G7/4xF8Qzt16Su5XtQgJH8A
 HOMrAq2rFuDc9jo8ND951Nj/1zLRR22JXieV7P3xAEHcW9OXOrbAQ6ylZ608FROVkmfWxD7VmSQ
 PWdwryCQesWhlNtprn2v625CgSQlSpEk8AuEnFhqVykiEMBEjtZVx+qMroBUA9fN7nf/Kb/DnMb
 TW75Gs569cvIpSMXUCxgzBvR+RrRd7cBjBdef16x6cNBTY9V1+RvRdCDQ9hdUtEgEYYlY7Cd0M2
 Z0ibZ1RmObzPa28t5PA==
X-Proofpoint-GUID: -YctOmWgrZ1P55ttLobW146X158kozy9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267259-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7142A1724AB
X-Rspamd-Action: no action

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c      | 24 +++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-ctcu-core.c | 19 +-----------------
 drivers/hwtracing/coresight/coresight-priv.h      |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index c660cf8adb1c..5f55f0c510e4 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -585,6 +585,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_in_port: Find the input port number at @remote where the @csdev
+ * device is connected to.
+ *
+ * @csdev: csdev of the device.
+ * @remote: csdev of the remote device which is connected to @csdev.
+ *
+ * Return: port number upon success or -EINVAL for fail.
+ */
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote)
+{
+	struct coresight_platform_data *pdata = remote->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == csdev)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_in_port);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index abed15eb72b4..78be783b3cb2 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
 	return 0;
 }
 
-/*
- * Searching the sink device from helper's view in case there are multiple helper devices
- * connected to the sink device.
- */
-static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
-{
-	struct coresight_platform_data *pdata = helper->pdata;
-	int i;
-
-	for (i = 0; i < pdata->nr_inconns; ++i) {
-		if (pdata->in_conns[i]->src_dev == sink)
-			return pdata->in_conns[i]->dest_port;
-	}
-
-	return -EINVAL;
-}
-
 static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
 				bool enable)
 {
@@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
 		return -EINVAL;
 	}
 
-	port_num = ctcu_get_active_port(sink, csdev);
+	port_num = coresight_get_in_port(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index fd896ac07942..cbf80b83e5ce 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -155,6 +155,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);

-- 
2.34.1


