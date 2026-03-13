Return-Path: <devicetree+bounces-275045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMhcJ+fSs2l5bQAAu9opvQ
	(envelope-from <devicetree+bounces-275045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:03:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF05280270
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 182693026BC6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7C5C388393;
	Fri, 13 Mar 2026 09:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QJUSP//V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RcGJX/fQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5775E388E74
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392583; cv=none; b=PywOOdwQSz7wYIl+xJ2hYC0/Rm8WIpOWnpyu8K64MxZNGJDEIGEIjZ+jebTFzlrOyA0b9ZaFa1Ie8W8cXh1oN6WdnmItYTMKrwzxitWtd4XbiavILV86K1IfVyo5qtmE+22dcS/MZ9ei//PyVJEKUqqZxPIV9+T+1bl6/+CFn4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392583; c=relaxed/simple;
	bh=SHQCxyqhzOhDvbMmdapiBeYjKlWwzGTzuuL4qctEsok=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FyhJBpG8V7gVM+x1R5lDKPVU5bmcIdXq8EbhpqFz+TB3u13mGzwcPZL0HVXzSllGjTh5vG24aHU2HuZkYU0HoQNKpYMAQgydL9MUQIuTKlvuE5Lp5TDqIpSUvuieD9O90P0dBO1caOeF21I5QPayWJeCvkjTGM6gYmwjG501vOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QJUSP//V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RcGJX/fQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7inoU2263477
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:02:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e3QKe9UEvF2DO5cfYaW3eH4Kymumo+ieIlTFLLIUxrU=; b=QJUSP//V4NS+aQIo
	n/iEjSXTXQFa82nnGfgR3XQ7XZn16yizAvPIrYC0Xf4ZkSJWhaUVhQZ16Rrlg+8f
	h9bJu05RqPo+tdjXk2Ji6CECtbs5FLIZOlql6vd8X6cjPpl5zOSeef5TZPgouaYV
	LAD0ZRFsMboM+i2ftLAYLERyarzqoHmNxbDGZ6+1K7+uKaghX/YlQ9PgKcFQIyPB
	hcgaXyulZZGZ2g82T+wDC/nDXURAXhErKcr017vfMI1xXtZB5JziIf4TGy9Wposc
	Sj6LMoEgskLk6A7XJAggwv+LLbk4sv7bpoByomC30gKgeqNda5OA9JaQWzkYJIZk
	r37fNg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4r9d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:02:58 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae4af66f40so22057675ad.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773392578; x=1773997378; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e3QKe9UEvF2DO5cfYaW3eH4Kymumo+ieIlTFLLIUxrU=;
        b=RcGJX/fQxzMdjCpaUCTG2IVGThG0ZlfIJGp51uYPlX3G8AWIaXagPWndh58iGQwXhT
         FgY3T0FLXam6h9ATLjxDaT9zC8JndQ5eF+yQRnFjBs2UqSzlYA7slgu3eHBvVbhP7b+1
         Aob0hKlHHrtQjCCmFL6Mzvbb/YTs3it9NlHIEb/6Vx0AI6pCFBuTuGAB62ijrYtzdiai
         F6cVL9dI6TpeKUhXw0UnoUR28ZhNrlb6kLZ2hjrMJMzjf/GUBeBs/YOe/pRJ5yTCzaVP
         z2/vNKL8OLF2hik21Xx+ShJ7xqBZmgECH4qTP+/XAlu+MswP3mNNyPkkiJtlHGDT2jVR
         nG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392578; x=1773997378;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e3QKe9UEvF2DO5cfYaW3eH4Kymumo+ieIlTFLLIUxrU=;
        b=mP/28fn1+lTmcAgdDb8sX8T44tG99bO6C+BW4i1j118UW0dqVOgg01WvbBTd6iXL7t
         xwkU1Rkuck+MYJqoTfMYa8SeLrNsjWJLJKMQiqVTIV8XDoZCrS0yuJKKrXjwGwRcpdWM
         soG5Wouh8D13acq5eljRHMunYv1YVwVu6Zfc92N/LM7hnTE9H1gL4oO+fpp6MLbMk3Y7
         EibaOT2Ccw3nAZaXZIu0U6F24o+mSKfgQ97wZ6I95+t0jdC8lf7c0xhASoxT1zjn/73c
         eKE12SbrXoRINfoSAZw/7C951PuIHJoy1+6jMuNY4OoA+wxUevO9vd8+oLQAqVYPIYbN
         dpkA==
X-Forwarded-Encrypted: i=1; AJvYcCX2d5UsFXvQQnqJlsIgk4pnoDWUwjKbA8B1pZrX1ZHyiVigrR5ilMNimOUYFSB+fkovtn7ILZuxavMU@vger.kernel.org
X-Gm-Message-State: AOJu0YyVobwC6Hnn1r3sP7YPptcIPQTopZa/bcnvmrr/v3/IbVqmQzDx
	TTVC1jDL8Yanm5gPOySiyZSkdLRdV4R4y0NhucRNcDS/jh1l1oifR+tV8/dU8m9LvqGcb9d46qq
	UROhh99p+ZyI9MIik8/lNyKIsnjIBY1u1XqRlLBqizNAEvwxWUbAmCs7jW3dKeH1G
X-Gm-Gg: ATEYQzxK7RWSHxmWUEWdmvD7/FtPjNBJWqBKf0y2xV3m9UDdjo9WecBL+QNiQC6tB8i
	6pd/R9NgrIZ+d/+cO2bb/jcHQU2nj3J1MIIGTEm7hQ/7DZejbecr+mD+4XptwzcgucdZfPRc+6o
	5wynLosLrzUGpC6Jd9CrLSHVgArmLUVGdA6ZKsFwfVzm9Mh7NxVKd03uAx38df+3CfQbnWGC1VP
	YFcT0xOYp6ovSfw71kGhALNmrOeevDGrG63wp5bLIgbxVFeO9mM3FxGRd6TrGbQMVGw9m5AxBPt
	+G5VV2K5BdEHQ+tOnRQSZlbZg0giu/7QVoSTklOPUIPZONMqMuN1oGhWEwSDIfd2rtUqP/eZvXq
	Ty4EdSMvHuY4ZG30fMoNMHrmWSGeBCpYp0LQS3wfAvztqFxrqONVcXcQM03shZEV44q69Jx0GxZ
	YbZe+JIaRN
X-Received: by 2002:a05:6a21:7706:b0:398:71b6:33aa with SMTP id adf61e73a8af0-398ecdf29ddmr2038629637.64.1773392577681;
        Fri, 13 Mar 2026 02:02:57 -0700 (PDT)
X-Received: by 2002:a05:6a21:7706:b0:398:71b6:33aa with SMTP id adf61e73a8af0-398ecdf29ddmr2038581637.64.1773392577039;
        Fri, 13 Mar 2026 02:02:57 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebb9ed44sm1269275a12.34.2026.03.13.02.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 02:02:56 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:02:07 +0800
Subject: [PATCH v15 4/7] coresight: etr: add a new function to retrieve the
 CTCU device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-enable-byte-cntr-for-ctcu-v15-4-1777f14ed319@oss.qualcomm.com>
References: <20260313-enable-byte-cntr-for-ctcu-v15-0-1777f14ed319@oss.qualcomm.com>
In-Reply-To: <20260313-enable-byte-cntr-for-ctcu-v15-0-1777f14ed319@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773392552; l=2348;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=SHQCxyqhzOhDvbMmdapiBeYjKlWwzGTzuuL4qctEsok=;
 b=r51Dn3HQ6+cRTi9Bx+21pf6jblf+Slf/fo169jNssmIDb5fBcFkHf0XkqJIAVYEoIHrgjF6V7
 uWc4QNP8xkpCMCX65JnUKBnylEf39DUaaagbjqPQlEyMbdU3Jl1MLyG
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: NUG2tYEsh6E7cF9PT4lLCpIX_dnd_BUT
X-Proofpoint-GUID: NUG2tYEsh6E7cF9PT4lLCpIX_dnd_BUT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA2OSBTYWx0ZWRfX5+5Gc4PrCRwC
 /8JlWoOXH6cKLgM9YVXLAJq40jnOwx+TKC+rnnp5Z0wm5iOmv1KagbOUAsEVI710uCWFzZWu6X+
 M6GqN5vnnIuVxbIKb+VLpYLiv9KMea3zzVPHIC+x1rNmm9WQpv7FHLGIen4EUesFdzjLQWU5pIG
 svuLNqr4rgXR1kYRbl5m/zMplB/GOgosrJ0NG3YZmLkBx0PB88G3r15Zrx2lAxzKYP0ibPpgG37
 mJoEMaqpesQP2S7vaGUlBkMNBO+1SA9irIkm57P7UMuVDyrg14Nw28KgRkHRIPE5i0GTKhRDPaK
 cHSv4zzmmKYdJxjoTyp3mDFCxIOqMJKEIzVfreBMxqoWXpMzz/hubQPEU3VxpPbaYes0B6dtomV
 K65VXMjJ+pUSNaGVGCDn6I/aAUT7QdCP4GS4F7dGzMMAq6vXoJbOBOvqpr0IG1JlYiKxoLziWvj
 LQVu5qKEmL/sWeZuLmg==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b3d2c2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=FuIWbRVyn4pKkvqW11oA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130069
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
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275045-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BCF05280270
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add tmc_etr_get_ctcu_device function to find the ptr of the
coresight_device of the CTCU device if the CTCU device is connected to
the TMC ETR device.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 24 ++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h     |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index fdf23e1c932f..eebfe45b82b9 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -865,6 +865,30 @@ tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
 }
 EXPORT_SYMBOL_GPL(tmc_etr_get_catu_device);
 
+/*
+ * TMC ETR could be connected to a CTCU device, which can provide ATID filter
+ * and byte-cntr service. This is represented by the output port of the TMC
+ * (ETR) connected to the input port of the CTCU.
+ *
+ * Returns	: coresight_device ptr for the CTCU device if a CTCU is found.
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
index 4d80105d3fcf..00a0b3597348 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -470,6 +470,7 @@ static inline uint32_t find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
 }
 
 struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
+struct coresight_device *tmc_etr_get_ctcu_device(struct tmc_drvdata *drvdata);
 
 void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
 void tmc_etr_remove_catu_ops(void);

-- 
2.34.1


