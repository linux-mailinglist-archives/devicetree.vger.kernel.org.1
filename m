Return-Path: <devicetree+bounces-276437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLInJyzKuGmcjQEAu9opvQ
	(envelope-from <devicetree+bounces-276437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:27:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8369B2A331E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5D27630219DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A97E2F1FE3;
	Tue, 17 Mar 2026 03:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HFq2dNYI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AXX6VHMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78042E62C3
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773718028; cv=none; b=dg2H3ahb6nNOnabq3HAdD/2KjU7wpnjLFbALEOz2s2YEi5vUD5bWv9z1IU03B+jO1Obe2zeUlT+2wfM1XJxUd/b6NYXitmBJYYYj81/I+w0UOU5ATH5A8ddFatOSa1KG8EX3YOpW5oGpBQhAlgX3GZN9wn1cQw2FzhYMtnn8+i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773718028; c=relaxed/simple;
	bh=qVW/WQ4p1es2H1ON/kIeaX9U/GKYZc9CqxcMpLLDsSo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=E5yzb6rkAej06Xm+y/aU0tkWXmZXVyvFninH6p/SmcM5+a8mjXHYAokWu3F98uMjz3yukGySbDjOa9mYwJKX+9RmvemhwEWru+DvsONfYllmXiBsDZwyGiH2C7p+vdA7RJ8I9zJAUyUENE6Kih/kHxQQEJBwaCfYD80bJHhuQ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HFq2dNYI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AXX6VHMT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H1qkKt3124561
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=iv2BN0cKboD
	uBtfMG0o05Gbqs13lk40R9DNkNpg+u3g=; b=HFq2dNYI7mm0jRu5I1JE5Nx0q9j
	/nBO10rPhzNd1EXEDG/PmxwWXQoai2SMv6AAU+n1NLRPJFWy3rTZxAB3/LVEBu5J
	9G2URoIJEf8Pfh0UVGI/03rS9ThwIo+zGdgpQMqxLQSqq3azWzG96KtPz+ShPnbp
	ZlY3cOOHQc8RfcNuOZRYMiBxikWCJgzCQ1tuBsVE7jvfMXoTCErCf499v+RGaEVr
	HmhEF98x/0GXvmaxzdCtrz6T0Ozut6CIt8rJnqSbfuJ+Kl7ddMUP15zDx6IAExfo
	TAYYSacruayqYQfb5/Raah7ddyXkQdqFieY88PFwehhCcoJgvlStX1riLeg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxfsmk90f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:05 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bea1ffd05bso5040180eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773718025; x=1774322825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iv2BN0cKboDuBtfMG0o05Gbqs13lk40R9DNkNpg+u3g=;
        b=AXX6VHMTaRv9mu04olY3c5hgcvT3YyTlYWJT0/4e+zg+BlFswg9jzO0jOxTBTjJIfy
         iGAZtm5BcCVi9+Uy3HaSz9Wc5A7jcgMmkEztmUPZdzDWn4x+XE4+7wNpFKuj+6qYMimu
         W7/iphEcVBWOqvStXUaWniYeCeHmGRpBoaynCJvT8tQkj8VrAY+36bNaFjN7xCwkq/Nh
         qCup9AD1zxzRI5f5UADLOzJMdzUh3AwLDHh0A1T8LO0X9PhEMseT9MsbeydRY+47CYcQ
         +0JU55ZqKYajqgtlerpMFRLk3DFAclKbEva/svVlAU8d1bEtTCSfprmZtgpJ1hJWMpbU
         Ak3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773718025; x=1774322825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iv2BN0cKboDuBtfMG0o05Gbqs13lk40R9DNkNpg+u3g=;
        b=RCVIPZ4Z01RCzn/zPkZKbFKQ14DQgulHWytgUkiNF/3KeZzq6WO01mFL4jQJZ0STar
         SnBTgE0+wUotkRNorkTzR/HqpQVg9HYpf/imb4OzIT45MSNXzC7JOeQWT8P9ooOx2irS
         dyobdWKDkOZBBMEkpif4IHlVJ/OuLnjp7P97Skh23u6JAQ8QNj1O8fHY/yCwiTc1YuzM
         Bd4IdjzKqAlEMaqQS5Qn6DwJwlHZkOKxim8c9Q41mvkhwo7Y6dI0OiyzltFz2js0A5n8
         TxvFPiwQSR9YWnDya76mx2Ea1AGI3iEdq457Hd6B3YSFZkUwbfAPKt7t1uEkGT9ywrgg
         v65g==
X-Forwarded-Encrypted: i=1; AJvYcCWRSmfEo5u/pnvE1l5ujkfUESwfxjGiEj0dFeK8FRcFPkF6LXWqdgd8OVjh1aX/WDChsBmrFsNH4Db1@vger.kernel.org
X-Gm-Message-State: AOJu0YxuWLqykSNdiL7qf0h+Yeboo4/FWQP4QhmuXIWxC85gcmdaQ7xE
	GKDvJ0CilP6mbOOPmoA8mXh9UQyiAiwoMwOulr2kpGWZNWoWBx0Zz6VlUW/LuVv/8eIpGiJ6BFl
	f+JIlHqEqohG5sfQG/riA3bz8H6Junhzmqv01MkfsUQsbhDj2zZEh84GHqnRinN8T
X-Gm-Gg: ATEYQzySzxSZrJ62b24AEw1ju7+NfuDoLn1/3Kzzl+bIhPlJ6Y/N8hl6PmnTO1VtBzE
	Jd50Lr8YecpODXUfJrfPdv9V2iCtv4RWckr0ssmm5pMYSuzRaQ0xfzIx92h+FJ0GvLTBhGPTKcv
	9fg5Szd3zAwWV9X23ix0Wzw7XOR5B+FxL9ozQVAaG6jujRZ2On68SsHO6GNnbIPgC9eHdhlDBz1
	9a3yzYdZsE74MSijDPou8jcRQrYwHhcOI+c06OfhdiByir4SqmbZL7BdnAWFO3q+mxFDTMn0eqw
	CSxl7S9G0rqaB400Zu3WYihfw081O07glstPjNzfz+l/+VBiFhzlIy2e3KNdCVlNpZXs0ghhZwi
	iUXTQNTYw+Wj9Ec/wKYjM5jeycL0N4AqZcaeMDXTcbRi9GM/oAvwhZXG2U5qQd5HX+ROHr7gAbX
	sf
X-Received: by 2002:a05:7022:698d:b0:128:dcbd:e27c with SMTP id a92af1059eb24-128f3d5a938mr7419957c88.20.1773718024394;
        Mon, 16 Mar 2026 20:27:04 -0700 (PDT)
X-Received: by 2002:a05:7022:698d:b0:128:dcbd:e27c with SMTP id a92af1059eb24-128f3d5a938mr7419938c88.20.1773718023798;
        Mon, 16 Mar 2026 20:27:03 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3ef844sm17445895eec.15.2026.03.16.20.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 20:27:03 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, konrad.dybcio@oss.qualcomm.com,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v12 5/7] qcom-tgu: Add support to configure next action
Date: Mon, 16 Mar 2026 20:26:37 -0700
Message-Id: <20260317032639.2393221-6-songwei.chai@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDAyNyBTYWx0ZWRfX5fifhKa9xkPZ
 VJ8Jj0jqsLpjDKgqpD5x2wbcrCqyyY/pMSkgzDWw+GRzPXYLdbiwU1AaTqVOI+LcloPUyVSsDoX
 YS2tcCa5O7wKpQpGwPJuZhPL3moznyp/VufWfeuyTJ7hZKrFVlMGFGGX1WIJH4h5xTSLXCxDy1d
 xY3ZXVCdfrOKLQuNtIeEOCeT7EwyF7DsoCZxle52G1PgktiIh0MZcDA17puHHdI0kXbh4Nx9DKo
 5XLy6hWzOdUITWantVi9zBeq95bqTNwNamrDU8ZRyt2mpSvnnw9GD5Xa5W/ElkhPPNwg0qKw4iN
 hTaoUhKXgWLB/VfHwCcDguSD8S+/cHyIpKgaCP7unS8DSgvXnBsHnXcvfIkc+0enp0TRkv4PJqu
 loBgBoeX/p0BLj8E0qlcWWwly/xZoebnOBGxlMt6/UuT5K54lFtCLyQmFdiT1IafXc21V39ytKp
 kZDZD1e2NSMNTSS8vZw==
X-Proofpoint-GUID: ZdGyzbIQsOb2Dvylmm_et6HYx8R7eDyS
X-Authority-Analysis: v=2.4 cv=V/hwEOni c=1 sm=1 tr=0 ts=69b8ca09 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=s623Ih-0px1LxcEVn60A:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: ZdGyzbIQsOb2Dvylmm_et6HYx8R7eDyS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170027
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276437-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[songwei.chai@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8369B2A331E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add "select" node for each step to determine if another step is taken,
trigger(s) are generated, counters/timers incremented/decremented, etc.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 +++
 drivers/hwtracing/qcom/tgu.c                  | 53 ++++++++++++++++++-
 drivers/hwtracing/qcom/tgu.h                  | 27 ++++++++++
 3 files changed, 85 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index 18930743c99f..d8431a82574a 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -21,3 +21,10 @@ KernelVersion	7.1
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the decode mode with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/step[0:7]_condition_select/reg[0:3]
+Date:		March 2026
+KernelVersion	7.1
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the next action with specific step for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 85fe1140eab5..1d996b9e303a 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -29,6 +29,9 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
 	case TGU_CONDITION_DECODE:
 		return step_index * (drvdata->num_condition_decode) +
 			reg_index;
+	case TGU_CONDITION_SELECT:
+		return step_index * (drvdata->num_condition_select) +
+			reg_index;
 	default:
 		break;
 	}
@@ -71,6 +74,9 @@ static ssize_t tgu_dataset_show(struct device *dev,
 	case TGU_CONDITION_DECODE:
 		return sysfs_emit(buf, "0x%x\n",
 				drvdata->value_table->condition_decode[index]);
+	case TGU_CONDITION_SELECT:
+		return sysfs_emit(buf, "0x%x\n",
+				drvdata->value_table->condition_select[index]);
 	default:
 		break;
 	}
@@ -112,6 +118,10 @@ static ssize_t tgu_dataset_store(struct device *dev,
 		tgu_drvdata->value_table->condition_decode[index] = val;
 		ret = size;
 		break;
+	case TGU_CONDITION_SELECT:
+		tgu_drvdata->value_table->condition_select[index] = val;
+		ret = size;
+		break;
 	default:
 		ret = -EINVAL;
 		break;
@@ -146,6 +156,13 @@ static umode_t tgu_node_visible(struct kobject *kobject,
 		if (tgu_attr->reg_num < drvdata->num_condition_decode)
 			return attr->mode;
 		break;
+	case TGU_CONDITION_SELECT:
+		/* 'default' register is at the end of 'select' region */
+		if (tgu_attr->reg_num == drvdata->num_condition_select - 1)
+			attr->name = "default";
+		if (tgu_attr->reg_num < drvdata->num_condition_select)
+			return attr->mode;
+		break;
 	default:
 		break;
 	}
@@ -184,6 +201,18 @@ static ssize_t tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 				drvdata->base + CONDITION_DECODE_STEP(i, j));
 		}
 	}
+
+	for (i = 0; i < drvdata->num_step; i++) {
+		for (j = 0; j < drvdata->num_condition_select; j++) {
+			index = check_array_location(drvdata, i,
+						TGU_CONDITION_SELECT, j);
+			if (index == -EINVAL)
+				goto exit;
+
+			writel(drvdata->value_table->condition_select[index],
+				drvdata->base + CONDITION_SELECT_STEP(i, j));
+		}
+	}
 	/* Enable TGU to program the triggers */
 	writel(1, drvdata->base + TGU_CONTROL);
 exit:
@@ -223,6 +252,8 @@ static void tgu_set_conditions(struct tgu_drvdata *drvdata)
 
 	devid = readl(drvdata->base + TGU_DEVID);
 	drvdata->num_condition_decode = TGU_DEVID_CONDITIONS(devid);
+	/* select region has an additional 'default' register */
+	drvdata->num_condition_select = TGU_DEVID_CONDITIONS(devid) + 1;
 }
 
 static int tgu_enable(struct device *dev)
@@ -356,6 +387,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
 	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(5),
 	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(6),
 	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(7),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(0),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(1),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(2),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(3),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(4),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(5),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(6),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(7),
 	NULL,
 };
 
@@ -363,8 +402,8 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 {
 	struct device *dev = &adev->dev;
 	struct tgu_drvdata *drvdata;
-	unsigned int *priority, *condition;
-	size_t priority_size, condition_size;
+	unsigned int *priority, *condition, *select;
+	size_t priority_size, condition_size, select_size;
 	int ret;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
@@ -415,6 +454,16 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 
 	drvdata->value_table->condition_decode = condition;
 
+	select_size = drvdata->num_condition_select * drvdata->num_step;
+
+	select = devm_kcalloc(dev, select_size,
+			     sizeof(*(drvdata->value_table->condition_select)),
+			     GFP_KERNEL);
+	if (!select)
+		return -ENOMEM;
+
+	drvdata->value_table->condition_select = select;
+
 	drvdata->enabled = false;
 
 	pm_runtime_put(&adev->dev);
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index 987ea07bd618..ac46a2875209 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -52,6 +52,7 @@
 #define STEP_OFFSET 0x1D8
 #define PRIORITY_START_OFFSET 0x0074
 #define CONDITION_DECODE_OFFSET 0x0050
+#define CONDITION_SELECT_OFFSET 0x0060
 #define PRIORITY_OFFSET 0x60
 #define REG_OFFSET 0x4
 
@@ -63,6 +64,9 @@
 #define CONDITION_DECODE_STEP(step, decode) \
 	(CONDITION_DECODE_OFFSET + REG_OFFSET * decode + STEP_OFFSET * step)
 
+#define CONDITION_SELECT_STEP(step, select) \
+	(CONDITION_SELECT_OFFSET + REG_OFFSET * select + STEP_OFFSET * step)
+
 #define tgu_dataset_rw(name, step_index, type, reg_num)                  \
 	(&((struct tgu_attribute[]){ {                                   \
 		__ATTR(name, 0644, tgu_dataset_show, tgu_dataset_store), \
@@ -76,6 +80,8 @@
 			reg_num)
 #define STEP_DECODE(step_index, reg_num) \
 	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_DECODE, reg_num)
+#define STEP_SELECT(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_SELECT, reg_num)
 
 #define STEP_PRIORITY_LIST(step_index, priority) \
 	{STEP_PRIORITY(step_index, 0, priority), \
@@ -107,6 +113,15 @@
 	 NULL               \
 	}
 
+#define STEP_SELECT_LIST(n) \
+	{STEP_SELECT(n, 0), \
+	 STEP_SELECT(n, 1), \
+	 STEP_SELECT(n, 2), \
+	 STEP_SELECT(n, 3), \
+	 STEP_SELECT(n, 4), \
+	 NULL               \
+	}
+
 #define PRIORITY_ATTRIBUTE_GROUP_INIT(step, priority)\
 	(&(const struct attribute_group){\
 		.attrs = (struct attribute*[])STEP_PRIORITY_LIST(step, priority),\
@@ -121,12 +136,21 @@
 		.name = "step" #step "_condition_decode" \
 	})
 
+#define CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(step)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_SELECT_LIST(step),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_condition_select" \
+	})
+
+
 enum operation_index {
 	TGU_PRIORITY0,
 	TGU_PRIORITY1,
 	TGU_PRIORITY2,
 	TGU_PRIORITY3,
 	TGU_CONDITION_DECODE,
+	TGU_CONDITION_SELECT,
 };
 
 /* Maximum priority that TGU supports */
@@ -142,6 +166,7 @@ struct tgu_attribute {
 struct value_table {
 	unsigned int *priority;
 	unsigned int *condition_decode;
+	unsigned int *condition_select;
 };
 
 static inline void TGU_LOCK(void __iomem *addr)
@@ -172,6 +197,7 @@ static inline void TGU_UNLOCK(void __iomem *addr)
  * @num_reg: Maximum number of registers
  * @num_step: Maximum step size
  * @num_condition_decode: Maximum number of condition_decode
+ * @num_condition_select: Maximum number of condition_select
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -187,6 +213,7 @@ struct tgu_drvdata {
 	int num_reg;
 	int num_step;
 	int num_condition_decode;
+	int num_condition_select;
 };
 
 #endif
-- 
2.34.1


