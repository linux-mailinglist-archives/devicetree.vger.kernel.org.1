Return-Path: <devicetree+bounces-276439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJQ0JofKuGmcjQEAu9opvQ
	(envelope-from <devicetree+bounces-276439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:29:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3070D2A3382
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:29:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63C06305CE2B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5E12F745E;
	Tue, 17 Mar 2026 03:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JmwBrSha";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kiqVCdbu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332CC2F83CB
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773718033; cv=none; b=RRNrSwN2Mn/KK6ayGjl1ESudhGzq8WInbgvA1w0TVHgi0RttTyFluIOT3tV0Asb9iMUHSzMknmph19JAg/P7uQ72cwPw2+qXDGx3F7/jOikyojCX0O7WEUkQVd5WdX5TWt1x6afTnNgFjJetVdEdWzjPBhvOyXcfZQtfW/TDKdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773718033; c=relaxed/simple;
	bh=UUs+JPZCYxsQo2F6VHcVqzhamokfy4bkJoHhrbVZqGQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iXsG01zlPt+16NEnLmH5hs0jPgeaKTD6QvcF980InukS18gnq3EX03sxATIG6S29xWl5cPskXLAnDddjpjJi4DENtuzR+bMLobblN2zoCOzOJkrvv/Lu453sw6DGE2/5paHg3griliMFGLc7rnfi2CF6UGJ1GPI2Xi/r4wmAeQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JmwBrSha; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kiqVCdbu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H1tiJ13102514
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QFXI9W3wYf+
	aodd6TigXJ8+gpEqreWaR9RarC30l04Q=; b=JmwBrShalf2t0vTfWbkQzsc/t+9
	vi850mwVYTyiA8gnWLOmxiALBnxpId7LoKl2KMOGqwG+qGiNO4dLaYMs+C6Ka2rn
	SRmeuABSdyuhRb+urVDNT29JzSVYPZuBJam281/rAicx+b/rSe3BwrfqZeoZPNXX
	7G1zL7eyY5+Cn/FYTxCOyvqWxDCWbZSF30YYQlyxVwepbqAz3aMOVJAViPVUQhZL
	Bg83gBi2lokcD5ChHi8b0vPux26Sv94BTNeYrLycQY4m6HcJN41TbPPRODZai0lR
	6lK2Tgh8DoFr5lGPa65bSF1czFpMoqToLdsvMSkXGMrfueGmagAs0bRzztA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxnb79x3g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:11 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bea1ffd05bso5040294eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773718031; x=1774322831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QFXI9W3wYf+aodd6TigXJ8+gpEqreWaR9RarC30l04Q=;
        b=kiqVCdbuuXQdDlC+4iNj/krLhsbgVWp87aC1uX3PpuPrKD7OT7OKEcIn7cnVHJb0Wi
         RzRXc7yzmnOIhS3WecWk55ZXdxpWmsVjgBk1Kxfs6BVAoKCFV4hi58CRx4nlqa4iNvVf
         SFljkPakjWq2eWuWs/lcIW1nrqSrTAAZf9S3ExppZIxzqXNCIWO/ptOlGT/95RYtGMiO
         OMnrcHLK0Qz2bqfiQglqcO75EGrZCzC3b0bfAAx6T1NndOEdCb3opEZlel1Iug4FevyB
         AOuAA7iymK5N/Ix644JH9yeFwysSZW4dBcYtbO6InsuQxQLevMa9kFYe3SrsMLgSOKUR
         R0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773718031; x=1774322831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QFXI9W3wYf+aodd6TigXJ8+gpEqreWaR9RarC30l04Q=;
        b=H89E9PMo7j/LtMmYPO4VzTjHZPssUCCrA54HGTw79GnqICB2UVAmXj18xbnll9ZWcq
         n05Xm64k/ZgCNK+pMLuE3nbC12XHZ4K4QP0rgTu/pAAmG7nBXUq3rWDFMDbe5Be4oe4c
         Ai/LhSucCK1p/KEL0N1/Q4PqUAUd5ONDmy5vvLpwJrs+u/b05Rs/DHdCtrrG9mVvpFb4
         6FKlLN/veyP++nlpMEaFGy8o5cVmtVJ4fq8cVeNsR4JLU1EkLmtSoSO2fl/IdF4AY9j3
         FfmXpxnzCJE04Ar9VeLpaJsjuazhvr2yP/MN8IuQ674k9Mo+B83dWJQ7digeefvM6IWY
         3EDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv1Cp0P0/N+8RVORM30Vmksp3fUiY+DZP9wc1CSjLnOXjaaFyeW3HZj+9YZmrfWlt3q9rZNvyi1Mcj@vger.kernel.org
X-Gm-Message-State: AOJu0YxVF5seuFK63k+fh7UvKJfvzdxu2Bw2sT7tBjPLLmcNrTjimuCQ
	Zp9J4RLSl1TiR6yyskoJ07g8UDs+87e/z40KWqbyzP7e4pnDlKOw8kO1cKCL+olbrM/R1/3x2f8
	d+OQTniWlEE7LmrsJe/W39w39z7fsN/73yTbUdcfpX3C6ArVbQEk6YxkoCCqaJfvS
X-Gm-Gg: ATEYQzxd8aBdiOyMAQpFCUeWycCVSd88cbuT8tBpkYQXa9+gBnHmoEXnfWwsgrhxq6G
	/uCU+0OpT4BKjvI5JZzBo1FeyH5J4ib+mBaYhXTDLEDTTllHVEnoQskTnrlSQDeBUzt8BvQWPkR
	Tf9KWhmopWFzbvEFrIDUnTB70RlO0pyZJgNYJI2RG7CUgehLNJGI2J5QNkgZ5D2YumBvIE8M+li
	AnZCgnk+QqvSw3chDm1CnzA7mDhzS7RLqRAKfw7LAXJGK1zX2kP5beZSIY0JNNVf9J2Vzi+wOZL
	+wzjRoGmWxqrWNA6T58uc/pCgnl7lBAYyKVUr5NYxc3CEAfTEMANPJt6QFPhjF/VxlTr6EOxq1x
	fy9QrwdOQbY+GgShrGUe2FnJCjqTC48omdwxpFu10wK6QbWTjnIVLzhPnZJld5fi8yXznZxpskk
	eU
X-Received: by 2002:a05:7022:404:b0:128:bae0:e043 with SMTP id a92af1059eb24-128f3df1710mr6715218c88.31.1773718030838;
        Mon, 16 Mar 2026 20:27:10 -0700 (PDT)
X-Received: by 2002:a05:7022:404:b0:128:bae0:e043 with SMTP id a92af1059eb24-128f3df1710mr6715204c88.31.1773718030296;
        Mon, 16 Mar 2026 20:27:10 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3ef844sm17445895eec.15.2026.03.16.20.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 20:27:09 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, konrad.dybcio@oss.qualcomm.com,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v12 7/7] qcom-tgu: Add reset node to initialize
Date: Mon, 16 Mar 2026 20:26:39 -0700
Message-Id: <20260317032639.2393221-8-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
References: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDAyNyBTYWx0ZWRfX0NXHAGwR5wfN
 NMVVbE0UgZGjO6N5mhCoa5FVIwjgUEo+3AMb3aPLAYy6ip6iHHk3S8lLem4losxMuR6k48a46RO
 d5nmhQ9jy0exmtvAeZw4S1nVrSpomuRAMaOOUFZgnFwHluVoIj/oJl3R2+nlxdQmDgzszANG2ve
 b6onTzQsDxlU51QetSHlhvwdxEEMgroqo3PDKcHVb7tIRabK1vhXfIRNMeP9N0h72DQnYh7uXX/
 AEG3VRVhU8gjvGk26Ch7Hd6ISC4oMelSuEY4m6NwrIzkOQYz4imnozydepEnFqQXr4Ug3/bgEPz
 +tnpkBoEyiDqtYdjOzNgdp8sX4NKyNa00eH8S0Ay/mw9S1hY2yeQOEsccvORQXLRVE4aYRmtASU
 5zTne5t07PxWxZEvAbVk+w/UL5f6VjLd1O/3hxZ2Gw6kCRN2baNgSqOSuVpimep/Z1+LiCX/EUi
 t7xrizQYaBjtdLGd6fw==
X-Authority-Analysis: v=2.4 cv=D7pK6/Rj c=1 sm=1 tr=0 ts=69b8ca0f cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=IgPCHI2mAnvcCQI4J_AA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: gbM5SUL_8enywCVtmRuvJpzX-IhpdmRS
X-Proofpoint-GUID: gbM5SUL_8enywCVtmRuvJpzX-IhpdmRS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170027
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276439-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[songwei.chai@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3070D2A3382
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add reset node to initialize the value of
priority/condition_decode/condition_select/timer/counter nodes.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 ++
 drivers/hwtracing/qcom/tgu.c                  | 77 +++++++++++++++++++
 2 files changed, 84 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index 5370882333bc..1dcb8fb71cd9 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -42,3 +42,10 @@ KernelVersion	7.1
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the counter value with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/reset_tgu
+Date:		March 2026
+KernelVersion	7.1
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(Write) Write 1 to reset the dataset for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 4539415571f6..e28e6d27cf56 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -410,8 +410,85 @@ static ssize_t enable_tgu_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(enable_tgu);
 
+/* reset_tgu_store - Reset Trace and Gating Unit (TGU) configuration. */
+static ssize_t reset_tgu_store(struct device *dev,
+			       struct device_attribute *attr, const char *buf,
+			       size_t size)
+{
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
+	struct value_table *vt = drvdata->value_table;
+	u32 *cond_decode = drvdata->value_table->condition_decode;
+	bool need_pm_put = false;
+	unsigned long value;
+	int i, j, ret;
+
+	if (kstrtoul(buf, 0, &value) || value != 1)
+		return -EINVAL;
+
+	spin_lock(&drvdata->lock);
+	if (!drvdata->enabled) {
+		spin_unlock(&drvdata->lock);
+		ret = pm_runtime_resume_and_get(drvdata->dev);
+		if (ret)
+			return ret;
+		need_pm_put = true;
+		spin_lock(&drvdata->lock);
+	}
+
+	tgu_do_disable(drvdata);
+
+	if (vt->priority) {
+		size_t size = MAX_PRIORITY * drvdata->num_step *
+				drvdata->num_reg * sizeof(unsigned int);
+		memset(vt->priority, 0, size);
+	}
+
+	if (vt->condition_decode) {
+		size_t size = drvdata->num_condition_decode *
+			      drvdata->num_step * sizeof(unsigned int);
+		memset(vt->condition_decode, 0, size);
+	}
+
+	/* Initialize all condition registers to NOT(value=0x1000000) */
+	for (i = 0; i < drvdata->num_step; i++) {
+		for (j = 0; j < drvdata->num_condition_decode; j++) {
+			cond_decode[calculate_array_location(drvdata, i,
+			TGU_CONDITION_DECODE, j)] = 0x1000000;
+		}
+	}
+
+	if (vt->condition_select) {
+		size_t size = drvdata->num_condition_select *
+			      drvdata->num_step * sizeof(unsigned int);
+		memset(vt->condition_select, 0, size);
+	}
+
+	if (vt->timer) {
+		size_t size = (drvdata->num_step) * (drvdata->num_timer) *
+				sizeof(unsigned int);
+		memset(vt->timer, 0, size);
+	}
+
+	if (vt->counter) {
+		size_t size = (drvdata->num_step) * (drvdata->num_counter) *
+			      sizeof(unsigned int);
+		memset(vt->counter, 0, size);
+	}
+
+	spin_unlock(&drvdata->lock);
+
+	dev_dbg(dev, "Qualcomm-TGU reset complete\n");
+
+	if (need_pm_put)
+		pm_runtime_put(drvdata->dev);
+
+	return size;
+}
+static DEVICE_ATTR_WO(reset_tgu);
+
 static struct attribute *tgu_common_attrs[] = {
 	&dev_attr_enable_tgu.attr,
+	&dev_attr_reset_tgu.attr,
 	NULL,
 };
 
-- 
2.34.1


