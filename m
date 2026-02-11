Return-Path: <devicetree+bounces-264698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DyoIitRjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ED9122FCE
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A22B30DE6A6
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBCF036655C;
	Wed, 11 Feb 2026 09:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mgn6W34T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZncOnVe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DDD366DB4
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803293; cv=none; b=aIjBWfq5RUvFoLBr8V9KXq+mBsmK6OEUYBprr8021gueIpg4kIq71yb5eqsfsLx6847O/0azlGlN4zAzo0Zpca+iajRYoyJ40abhTWvd5cc69/1FtXSM1ORBFmW8PxoR6xmmSgwojH9Tu6gyU/aJvS+8DDUh2iXyKYvUo+cJDGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803293; c=relaxed/simple;
	bh=f787Up0EhRy8WkAfsNkCR9M3EI+tIDdcqS3Jo2fPGco=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P+k6Wb60CtrLV5JnF2UTRV7wG/KrFaoJac9jMoxHrV8s6yz7v7cLF/JW5P3yOKrOy+Lj2HVugl6iUadu+rnPuI3aBbSRgtsRNJk19BIDPJGOlmPhhgq8Fm/uxh+/8nZw+Sa37kV0Yph7uSqP9wNW5ReePKiaRTls9I00+VvI2H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mgn6W34T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZncOnVe3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B8Db9t3919386
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t6ovBuigOTYzxtYq6iL3axs74leILzsr4KDWdNf9kxs=; b=mgn6W34TK7DS5VA/
	hjMkx97ruIk27C0sFLUZgvcCA7WY2fgNrvtDo4R+bIHF6tBYz+40I96JzJhAy2hC
	KfuD97TFqtR9aFV7mwNxOwJsnvtz2oyNfI8ykdH23xRS9btPb5gUxVFTdCdySy2V
	n4MK4djWzb5n9DE3LE2tq4Sm9oWwvNiV2FPHXmR8UHqjMV5dMN0W4S1VuDBtql1m
	z2x9WGnFck1uv/crkOSNcusLGWwwcojYZjYdJRNipyY2vLHudkflJ3f/SzC3jIjQ
	wXPEsigS1VhwhHauOaEJwUv3easPwFNISfO/1bWQgEVX6s+TWSzNa61NSHY/We8j
	fOSCWg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c86akkdjr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35464d7c539so5149507a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770803289; x=1771408089; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t6ovBuigOTYzxtYq6iL3axs74leILzsr4KDWdNf9kxs=;
        b=ZncOnVe3lDapayNbK9nEHtDifMxlZnIsQCq3t9iqxnrGUgBtpZkIzT35AkvXWeOrxx
         Nbfp0f4IYqg+HFN/mTbQ8hPmG/283T8pX4FSb+p727cyfM/SddlA+pp+dRj+/RstLRo4
         a085vLDc7N9H4Bspe8CV68qUkONoUxaejVZGnkua/My0mT2L6lvzFOzvTiFR5YqSmE1M
         oB/U/QLqzyRQC4WUjRxoJs5oKseemQA3rB1Z52rcX/c0dSAtJmIfnfE4kV+wA/LGwmjV
         Wc4ohg6W2x87aDf6QXtXqrYSQfbDyGsqXIprBtvwUgEkBbGuHqftozMguLQ7vQebbglK
         Pj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803289; x=1771408089;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t6ovBuigOTYzxtYq6iL3axs74leILzsr4KDWdNf9kxs=;
        b=ieuapWKikcJA5sAYcmA2adzMdHe63xvdIqIa8WjKrz4Khga6mQEjtBvI3znJJ8aUhZ
         QmpaTMMyKUZpxq5Uqs/NP2rnR9X/mBcJD5D4wvuH9vqpVHz/xJAqAXfyXSAEm/fRTRhj
         Sg1/dfAYJ+7rp6ALViO6M5PSnlZ7iFmlmSkONKSZuaVI5i8nHlo9YF8Tv9Udf8JRT4yW
         8A2r76LtX9KHVarBvkTBcjTmCpAtqra+Tz1MFAF4e20i2KhaHjY+o7qrKXsoEcMFV/qv
         oIO+qMzseV+80fMvyVhcf2BPBpJ4jRVniNhqmdnu8ce2ILuyLtv6+hlPVI0cEM8z4p0k
         4b6g==
X-Forwarded-Encrypted: i=1; AJvYcCXwSUSl3GzwN/DKbX/jqbw6X/rVTLKHBCclBOMflwZQiqWuV2LD5qCeID37DLbur8WVu8NlhOmMfzTP@vger.kernel.org
X-Gm-Message-State: AOJu0YwzOCyZmI77GAvXaQQxu6cMDAGlSheZidJwZb319N7rF9f/gsH8
	gkQX7k9PxgRO/B97KX3nJDY6UCICSkY/Bl8QMJ6krMgWwPnBYJIU6uIl1rgP3Dh/CP+R0KcnWjN
	ypKaFlbKA7OfN0sHy19q1/M24/g/+NeLBKFnNJfC4VmVyfAKpZYhHLyQj65jAp3mj
X-Gm-Gg: AZuq6aIyXHYZm+0M9Plk0/SSkqd6W1yQzzw3syHzkTViczEjwS1aYAaN5qIY5/cWx3O
	bwKzHlNyXCIp8YDS1eggi1pCdo5/T7lPFueHjaub7V+Ys7437WtTdPujtCSTzI6V98MRMRXXY6g
	dm293VCDhGp0YpqInziUUKPCwAaoIAAfuz1cUUPpdJJ5F3ioM1I1P0yv8FgnBv/sBkbEtMGwbxp
	PUiOmGhKJmuRWjbVXP8MGg1T8Xwzsx+hMVXsj39xd2PlAbEpBOzRtcSAlhMnQlwBD+asJZdYJ1I
	gEFAzXv9LpuY29IDurF48Q70lURFwEwa0vw1SWvNMBDzzSoqMg2zjBVsRSpLBXY2hrmb3oEEvPv
	rqfc4oR+Hr7UobeIhzaqAZ1fyxN/b5ipN2GWu/TMKy5FE+e17TwI5w8NPI+w=
X-Received: by 2002:a17:90b:164b:b0:356:268e:ff97 with SMTP id 98e67ed59e1d1-3567b077a54mr2126535a91.20.1770803288992;
        Wed, 11 Feb 2026 01:48:08 -0800 (PST)
X-Received: by 2002:a17:90b:164b:b0:356:268e:ff97 with SMTP id 98e67ed59e1d1-3567b077a54mr2126505a91.20.1770803288456;
        Wed, 11 Feb 2026 01:48:08 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662f6b84dsm7526640a91.10.2026.02.11.01.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:48:08 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 15:17:45 +0530
Subject: [PATCH v5 2/4] soc: qcom: ice: Add OPP-based clock scaling support
 for ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-enable-ufs-ice-clock-scaling-v5-2-221c520a1f2e@oss.qualcomm.com>
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
In-Reply-To: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=HI7O14tv c=1 sm=1 tr=0 ts=698c505a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=JZEC_EQWKO-DjWEl64AA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: t7YCQUUTzEYqeF_Imh-nSa2ngxSDJPlK
X-Proofpoint-ORIG-GUID: t7YCQUUTzEYqeF_Imh-nSa2ngxSDJPlK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3OSBTYWx0ZWRfX8/dv3u0OB77g
 Eqby4UBY8Hz4shDY5ko9QnMaSBb7wcOXrBkUzmtUZicEAQlP8l0/tij+BS1seXKBo7bEngyKzbP
 Lq0nsBVPVNoJzRTPEmORSWLpIWgZZm2XOFiP3v2ArUjMGAu4Oi4yp/Gjsw+Zw+pUMVfiKZTVopk
 OFJMwbEeL35d95gWFr8PrVU3ZDQ0sN4cjdXtP3oY2lfbTApDlAWkmkFD9g6MrYiYs2se9s0SvMf
 c5Xzn21DCrzlmUlkrrPZ9muOK9tP0KhoEqawh4ZSFV/QCs+Oqm2rR0YDNXSIO4MKnH7zKe8eZPs
 ZJToThVeK+kRlJr02g37N8vK3e5wjnJm8B33qr9t5cO4T+FcTcBxUcGyrMDyQlzE1mGJzE4k+pS
 M0ERQxDgHw8EmmpYZdXAYylTT5d4HRsX71KQYQVTdg+T62v+kelCLzzqmvG0jCcgGB7QpGtVg4S
 afmHiWtif80GcZ/T83Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264698-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 02ED9122FCE
X-Rspamd-Action: no action

Register optional operation-points-v2 table for ICE device
and aquire its minimum and maximum frequency during ICE
device probe.

Introduce clock scaling API qcom_ice_scale_clk which scale ICE
core clock based on the target frequency provided and if a valid
OPP-table is registered. Use flags (if provided) to decide on
the rounding of the clock freq against OPP-table. Incase no flags
are provided use default behaviour (CEIL incase of scale_up and FLOOR
incase of ~scale_up). Disable clock scaling if OPP-table is not
registered.

When an ICE-device specific OPP table is available, use the PM OPP
framework to manage frequency scaling and maintain proper power-domain
constraints.

Also, ensure to drop the votes in suspend to prevent power/thermal
retention. Subsequently restore the frequency in resume from
core_clk_freq which stores the last ICE core clock operating frequency.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 drivers/soc/qcom/ice.c | 132 +++++++++++++++++++++++++++++++++++++++++++++++--
 include/soc/qcom/ice.h |   5 ++
 2 files changed, 134 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/qcom/ice.c b/drivers/soc/qcom/ice.c
index b203bc685cadd21d6f96eb1799963a13db4b2b72..0bdc64db414a7028653c0f3327988b1554788fcf 100644
--- a/drivers/soc/qcom/ice.c
+++ b/drivers/soc/qcom/ice.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/pm_opp.h>
 
 #include <linux/firmware/qcom/qcom_scm.h>
 
@@ -111,6 +112,10 @@ struct qcom_ice {
 	bool use_hwkm;
 	bool hwkm_init_complete;
 	u8 hwkm_version;
+	unsigned long max_freq;
+	unsigned long min_freq;
+	unsigned long core_clk_freq;
+	bool has_opp;
 };
 
 static bool qcom_ice_check_supported(struct qcom_ice *ice)
@@ -310,12 +315,17 @@ int qcom_ice_resume(struct qcom_ice *ice)
 	struct device *dev = ice->dev;
 	int err;
 
+	/* Restore the ICE core clk freq */
+	if (ice->has_opp && ice->core_clk_freq)
+		dev_pm_opp_set_rate(ice->dev, ice->core_clk_freq);
+
 	err = clk_prepare_enable(ice->core_clk);
 	if (err) {
 		dev_err(dev, "failed to enable core clock (%d)\n",
 			err);
 		return err;
 	}
+
 	qcom_ice_hwkm_init(ice);
 	return qcom_ice_wait_bist_status(ice);
 }
@@ -324,6 +334,11 @@ EXPORT_SYMBOL_GPL(qcom_ice_resume);
 int qcom_ice_suspend(struct qcom_ice *ice)
 {
 	clk_disable_unprepare(ice->core_clk);
+
+	/* Drop the clock votes while suspend */
+	if (ice->has_opp)
+		dev_pm_opp_set_rate(ice->dev, 0);
+
 	ice->hwkm_init_complete = false;
 
 	return 0;
@@ -549,10 +564,79 @@ int qcom_ice_import_key(struct qcom_ice *ice,
 }
 EXPORT_SYMBOL_GPL(qcom_ice_import_key);
 
+/**
+ * qcom_ice_scale_clk() - Scale ICE clock for DVFS-aware operations
+ * @ice: ICE driver data
+ * @target_freq: requested frequency in Hz
+ * @scale_up: If @flags is 0, choose ceil (true) or floor (false)
+ * @flags: Rounding policy (ICE_CLOCK_ROUND_*); overrides @scale_up
+ *
+ * Clamps @target_freq to the OPP range (min/max), selects an OPP per rounding
+ * policy, then applies it via dev_pm_opp_set_rate() (including voltage/PD
+ * changes).
+ *
+ * Return: 0 on success; -EOPNOTSUPP if no OPP table; or error from
+ *         dev_pm_opp_set_rate()/OPP lookup.
+ */
+int qcom_ice_scale_clk(struct qcom_ice *ice, unsigned long target_freq,
+		       bool scale_up, unsigned int flags)
+{
+	int ret;
+	unsigned long ice_freq = target_freq;
+	struct dev_pm_opp *opp;
+
+	if (!ice->has_opp)
+		return -EOPNOTSUPP;
+
+	/* Clamp the freq to max if target_freq is beyond supported frequencies */
+	if (ice->max_freq && target_freq >= ice->max_freq) {
+		ice_freq = ice->max_freq;
+		goto scale_clock;
+	}
+
+	/* Clamp the freq to min if target_freq is below supported frequencies */
+	if (ice->min_freq && target_freq <= ice->min_freq) {
+		ice_freq = ice->min_freq;
+		goto scale_clock;
+	}
+
+	switch (flags) {
+	case ICE_CLOCK_ROUND_CEIL:
+		opp = dev_pm_opp_find_freq_ceil_indexed(ice->dev, &ice_freq, 0);
+		break;
+	case ICE_CLOCK_ROUND_FLOOR:
+		opp = dev_pm_opp_find_freq_floor_indexed(ice->dev, &ice_freq, 0);
+		break;
+	default:
+		if (scale_up)
+			opp = dev_pm_opp_find_freq_ceil_indexed(ice->dev, &ice_freq, 0);
+		else
+			opp = dev_pm_opp_find_freq_floor_indexed(ice->dev, &ice_freq, 0);
+		break;
+	}
+
+	if (IS_ERR(opp))
+		return -EINVAL;
+	dev_pm_opp_put(opp);
+
+scale_clock:
+
+	ret = dev_pm_opp_set_rate(ice->dev, ice_freq);
+	if (!ret)
+		ice->core_clk_freq = ice_freq;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(qcom_ice_scale_clk);
+
 static struct qcom_ice *qcom_ice_create(struct device *dev,
-					void __iomem *base)
+					void __iomem *base,
+					bool is_legacy_binding)
 {
 	struct qcom_ice *engine;
+	struct dev_pm_opp *opp;
+	int err;
+	unsigned long rate;
 
 	if (!qcom_scm_is_available())
 		return ERR_PTR(-EPROBE_DEFER);
@@ -584,6 +668,48 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
 	if (IS_ERR(engine->core_clk))
 		return ERR_CAST(engine->core_clk);
 
+	/*
+	 * Register the OPP table only when ICE is described as a standalone
+	 * device node. Older platforms place ICE inside the storage controller
+	 * node, so they don't need an OPP table here, as they are handled in
+	 * storage controller.
+	 */
+	if (!is_legacy_binding) {
+		/* OPP table is optional */
+		err = devm_pm_opp_of_add_table(dev);
+		if (err && err != -ENODEV) {
+			dev_err(dev, "Invalid OPP table in Device tree\n");
+			return ERR_PTR(err);
+		}
+		engine->has_opp = (err == 0);
+
+		if (!engine->has_opp)
+			dev_info(dev, "ICE OPP table is not registered\n");
+	}
+
+	if (engine->has_opp) {
+		/* Find the ICE core clock min frequency */
+		rate = 0;
+		opp = dev_pm_opp_find_freq_ceil_indexed(dev, &rate, 0);
+		if (IS_ERR(opp)) {
+			dev_warn(dev, "Unable to find ICE core clock min freq\n");
+		} else {
+			engine->min_freq = rate;
+			dev_pm_opp_put(opp);
+		}
+
+		/* Find the ICE core clock max frequency */
+		rate = ULONG_MAX;
+		opp = dev_pm_opp_find_freq_floor_indexed(dev, &rate, 0);
+		if (IS_ERR(opp)) {
+			dev_warn(dev, "Unable to find ICE core clock max freq\n");
+		} else {
+			engine->max_freq = rate;
+			dev_pm_opp_put(opp);
+		}
+	}
+
+	engine->core_clk_freq = clk_get_rate(engine->core_clk);
 	if (!qcom_ice_check_supported(engine))
 		return ERR_PTR(-EOPNOTSUPP);
 
@@ -628,7 +754,7 @@ static struct qcom_ice *of_qcom_ice_get(struct device *dev)
 			return ERR_CAST(base);
 
 		/* create ICE instance using consumer dev */
-		return qcom_ice_create(&pdev->dev, base);
+		return qcom_ice_create(&pdev->dev, base, true);
 	}
 
 	/*
@@ -725,7 +851,7 @@ static int qcom_ice_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 	}
 
-	engine = qcom_ice_create(&pdev->dev, base);
+	engine = qcom_ice_create(&pdev->dev, base, false);
 	if (IS_ERR(engine))
 		return PTR_ERR(engine);
 
diff --git a/include/soc/qcom/ice.h b/include/soc/qcom/ice.h
index 4bee553f0a59d86ec6ce20f7c7b4bce28a706415..055edf3a704ff25a608a880cf9be35363f8a02d3 100644
--- a/include/soc/qcom/ice.h
+++ b/include/soc/qcom/ice.h
@@ -9,6 +9,9 @@
 #include <linux/blk-crypto.h>
 #include <linux/types.h>
 
+#define ICE_CLOCK_ROUND_CEIL	BIT(1)
+#define ICE_CLOCK_ROUND_FLOOR	BIT(2)
+
 struct qcom_ice;
 
 int qcom_ice_enable(struct qcom_ice *ice);
@@ -30,5 +33,7 @@ int qcom_ice_import_key(struct qcom_ice *ice,
 			const u8 *raw_key, size_t raw_key_size,
 			u8 lt_key[BLK_CRYPTO_MAX_HW_WRAPPED_KEY_SIZE]);
 struct qcom_ice *devm_of_qcom_ice_get(struct device *dev);
+int qcom_ice_scale_clk(struct qcom_ice *ice, unsigned long target_freq,
+		       bool scale_up, unsigned int flags);
 
 #endif /* __QCOM_ICE_H__ */

-- 
2.34.1


