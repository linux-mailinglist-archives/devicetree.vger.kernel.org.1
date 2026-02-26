Return-Path: <devicetree+bounces-268571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKqZGVyrn2m1dAQAu9opvQ
	(envelope-from <devicetree+bounces-268571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:09:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C60021A008C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B29231096B8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 02:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43AF6374753;
	Thu, 26 Feb 2026 02:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l3E2GLb2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H29zBOhr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F54374193
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 02:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772071536; cv=none; b=XnyIhzEr6FkHdpFgoQnASV5pIA/iVbxD7z/yA9zMN01YkJQajT2EoQGd5vNHNlnvog2exKVmfd2SnhBxvtTxnaOWdH4rt53YHXm0FzHfblkNDQqX91f/4svBzTVjXgUnJ04Fi538MgtoqbUhkyF7SQzWHofbJLxjAwy4m3Nmduw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772071536; c=relaxed/simple;
	bh=UrpgWf+xJx6aMMqxAJ6EHYzF2xVosrLWfQsXPJkdtCw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Jd7fyhtkWiXmMEsvQ8EsCNjj9eibR64dnRqsdngjfHEPlRfqkLQqRpYXpxu31duTehhEPL5i40OvF1uiOskupbZ9tZ3u11EAR//TUK4sc2fa0s9m2lHUxddsy6iigAkugY+BXEZubTAWx8vZYh/nKqWJh16JH417qBQSY7Dk74U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l3E2GLb2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H29zBOhr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PH4iWA2561179
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 02:05:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Oc6efl1YSvC
	J4xlvycJVJOfJR851o7jM97hjpoKPK5A=; b=l3E2GLb2z5RVcsdEyc5BnEHDdw1
	75My7oqor1O9wESi9ZIn2/iQitX98Q3rxhWhMD0J3IxLOX7HFNSTK4cGNgUgPz3V
	mkPpjLcggTD0UnCb42bOQzPv1bixc12461pczcNvsab1mbaiGJfMpbJ9B75IIeD/
	21V1eOoMYiK1ao1qYk/03/+aOlJVjMzvAtLyKLD38o1uY91nD5+6PVwC92iutd5P
	VVMLMCaPyv40gjv7uoVBwcZBfkyWLAmA1jDYkt3PzQjicXsBGilTJRmdh06TbSKo
	DDzppvtLEbEB6b6bQE3kaRZpQ9dhN7sgwLZr1Odz4RoOG5qs3xm+a4VU4Tg==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj55ssbwy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 02:05:32 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-6798747187eso4135579eaf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 18:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772071531; x=1772676331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oc6efl1YSvCJ4xlvycJVJOfJR851o7jM97hjpoKPK5A=;
        b=H29zBOhrTKm2WP6g+jNu61coMMptTaT6QCKkSeuUhoLMnq+i5mpsMVIpEP2nFPZHxm
         BA9Q26jCTeOzrO+eg0BpQnU/JhCNDJCpS8lyEUxjzTNOmBK62MTK7kiSk6VC+C1R9+JT
         DXZucXaI8/N6Ozlu0oJt1OvDBdBjQ+zPE0tKIdk/P49BR2XveQ2BEN0s+Qclq2zbfGyh
         3SeYxSPloURnU7neBf8Xdrz/HcpiJOooDBDVmFzEpMhbzH9is88veKFgHuZo6WZSK0m7
         ooEXiQyQk1uolROx0AL+BzBaMHalTDustCU2On25RQlundb24p2Wy98hABehD3WSLejM
         rHHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772071531; x=1772676331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oc6efl1YSvCJ4xlvycJVJOfJR851o7jM97hjpoKPK5A=;
        b=tEGPLGSN2Zg1k4BkTUF9NK+0b2i4bV1KaIk1cOGPH53bL/LrTNa0oJRcMczroawilD
         A2Zmks3o0YqHvcvBOu6d0ffaL70ftcQMsOy7DhjHKH4oojjtHBB3dsPxSZCwyt2/tsPV
         mjPyD28qET/DdSO5ZakDGBMglyH2BlNCVa/DmOZ3lYwJqvIOTQljoRiBldPRSoeT0P/u
         fTYIHZvyrHKaGqCRsMlWucaDgqXb4ymdRQ2SwwK3d0FSMdq6Vx1N0eRvNeDqrxe8tbWM
         2c/gM+04nu33Ie24nVd09TINd6nSFhxgSnde6CybDDqCJhbAnQ0rFPBa+G5fVCFAsm4x
         sumw==
X-Forwarded-Encrypted: i=1; AJvYcCXIhVwBVmKboXJpjWyJFlFcudKLdS+/2Xc2LgsK1ZepY/2ZN8yL4SaVMUid+F58bwHiQbqqbIXTjWnf@vger.kernel.org
X-Gm-Message-State: AOJu0YxkeNtcFIuDMq4wm9QxTNIQ0DPYKi7cdJod9/J0bPiyCMnc8kwC
	CKpDJriZJFg3XZ6ZYxMe/4R2ibj1Lw1rLFNvFrOUUxUg89lS5P8hPCQij4dac4lt3OJK9ZvSupx
	B5plSdInaiH6xgSucsJPBI+yQNU9pZ4/FCFlPo8KsJ6N1fsBo6cwkM16RTdJlosM1
X-Gm-Gg: ATEYQzysko1YjrdWNb2gBdKpASeRqWjS8A0cGwhBGZyfR5DQ0BBa3Tpe+IQ12xnviGO
	KVdcrczPLhtEWl/rgwCCgWFdG64n94H6hIPnLAb23xobPNP3VIB9Kjvh8Zae3lJqAq3d1F9wL6u
	UV/yX9Emvptn2CHDUVw1irr23rjwV9C39HvobnRa3lRzluH0MRn4u2uRb6vnNbt1nE9nAbSjB53
	PJrGoTwaWF+jSybuj40IYXF5mNuKALedfqOTJOC7XyDPrueb3DRFj5T1+gJubjpOeSgscxb9yLN
	FX9YtzvGfAgkwldQ2y0idKws3PmmeQ1yYncMmmKCigGFMBplneo50s4bdgmlfi+sVHfRBcZxe0R
	hsoye4jPB14Aic1exxFyb13fmYwTluxtvTkbVIPHvN0HMjW0EDeHMZ//CP3mTZ3nPdP/NX+S+z8
	wN
X-Received: by 2002:a05:6820:1c92:b0:662:f660:5a1b with SMTP id 006d021491bc7-679f3c0761emr294787eaf.0.1772071531556;
        Wed, 25 Feb 2026 18:05:31 -0800 (PST)
X-Received: by 2002:a05:6820:1c92:b0:662:f660:5a1b with SMTP id 006d021491bc7-679f3c0761emr294769eaf.0.1772071530953;
        Wed, 25 Feb 2026 18:05:30 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-679f2d9e8d6sm549939eaf.13.2026.02.25.18.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 18:05:30 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, konrad.dybcio@oss.qualcomm.com,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v11 7/7] qcom-tgu: Add reset node to initialize
Date: Wed, 25 Feb 2026 18:04:54 -0800
Message-Id: <20260226020454.3210149-8-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226020454.3210149-1-songwei.chai@oss.qualcomm.com>
References: <20260226020454.3210149-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAxNiBTYWx0ZWRfX2Prif/rI87+V
 PBCBSJQs9heCnduSd49ovhXoLf0MUlpScFa5ZGdyj4U+y4jYsuP6CC4OqloT7doTBxDeNZWZ5y1
 /DkYIRlyWddDfl6fX/npmh9iHJ7k0MV6tJ7TkkOPXEYPENwLqw/ro7JmxxWE0B0sm8NLyBu+y1E
 ikWTYW9LmB51R4mdKgyuCGyaoMe1oKxOGcVDc1tcJzGbvH2lOP3Ptzmc7gO/LikwR+CN0UFUxY5
 X13O2rKS7OLrk5xSQz8ErroSTTWUSjCUlV4/eCr953WGkm98oKaJd9Sjj7uU5ifAiQzFsFZ+0Lz
 GXumb2N24RoR1rBCy0UQfmofUeakk50u9PYVGPDB8Nl/rXbQjcKKn7fYOBnZE4Gtik5FIC27gS1
 U8B0Yst0yJxfS/wEy76y7+uo3YAK6Cm9KsADsXlb4uXYKndyQ3K1Z9P2nY1IvHHyYGZBYdb6jXi
 cJMk10XnCCP7p1fycwQ==
X-Proofpoint-GUID: LEF3yEzmSbZqlvaIpOb0xnamIv8LVtpN
X-Authority-Analysis: v=2.4 cv=JfGxbEKV c=1 sm=1 tr=0 ts=699faa6c cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=IgPCHI2mAnvcCQI4J_AA:9 a=rBiNkAWo9uy_4UTK5NWh:22
X-Proofpoint-ORIG-GUID: LEF3yEzmSbZqlvaIpOb0xnamIv8LVtpN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268571-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[songwei.chai@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C60021A008C
X-Rspamd-Action: no action

Add reset node to initialize the value of
priority/condition_decode/condition_select/timer/counter nodes.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 ++
 drivers/hwtracing/qcom/tgu.c                  | 77 +++++++++++++++++++
 2 files changed, 84 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index 9daacd68eed0..3ff34a769d94 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -42,3 +42,10 @@ KernelVersion	6.20
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the counter value with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/reset_tgu
+Date:		February 2026
+KernelVersion	6.20
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


