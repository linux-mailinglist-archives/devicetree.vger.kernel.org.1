Return-Path: <devicetree+bounces-267282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DqPHTb6m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:56:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 180BE1726EE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:56:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 60B2E3012204
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0149234B192;
	Mon, 23 Feb 2026 06:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RQjMkT1c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c+XaGoB6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A7334B18F
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829794; cv=none; b=B6PVi0rtRf9wpCqpbTu83GgriJ6CaYaWdUPmBAennz5+ZgSOu10oFuNX3bjc42iyQHNEQ6VRGc3WlKfCdZREuJBATMJw8rv/2TcBDy28SHRun1W4xxYcPrLTPX7/eUP+yLDWrLf/sqRc15cVtY5sxB26Brd5Ip7e7bEwog03l/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829794; c=relaxed/simple;
	bh=wH5nsU/eD/1ygNqCsVaoWKHsLxpu0A62Fho+0L9SEqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bspClrM/H13UEFprg/bAx2CFBMmClUUw6amUPP5VI8qRyubekPTQ7OOqKb085AuoRLK4edF4iyTim/3jgdCfTP6W3cMcIBPNl3lFWCYusMsBouTcr0eM6Y6KaYTm1aLUG/cC1Y+QfV1B5dEaBAZyN/YSpWxhAK0j/glXdLwW/iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RQjMkT1c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c+XaGoB6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MCThmx721346
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oLBqq1Ga3quq8yhCCoDLuhaEl8VPL3r4ILjvN9DeBME=; b=RQjMkT1cCeTTegtR
	yAX8UtkpknrBVwzzvlcZysykP41Z2IJOCBOl15Hws2nhaWjtf18PbqIk7AK1OBju
	AoUVi4GdgIdUXE9h2033K8iPSoxAICESMUVvc0Lh8VeN4YFbjz9ZfopTSQHXZPIf
	Z+4zNl34ug6U6mUgwQ5EdTV2TCFuwbN99VmJgSfmH0+s6H9anPlUAHHZ4hF/QlN8
	RMzEfgepJ5CzHDgDMmLr8oue3UsNGWi2jCy16qiDlXjRi+gvmAAVfp50uWpchev0
	85c5VTTYZ8Qkc726RBzCg1xGiNU5GK1kDgdbx8qll+q2Ww9tkuOh9s1TuyTQduz7
	6uEj/A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wbbpum-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:30 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a863be8508so43707595ad.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829790; x=1772434590; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oLBqq1Ga3quq8yhCCoDLuhaEl8VPL3r4ILjvN9DeBME=;
        b=c+XaGoB6cIillvxkRydjIrkMR7oMbiuYibMLBzLusYSF/X9v4AT5aVCltUsSSuOWQx
         yYxEqpB1Swf2pF08c12/CIc1ndWn4o2+GN6zGpvtJmOBrnYE7JlUub/b2Sh14Q3kP3ia
         SffypCVjv5WwKISRSjntlMhgMBVvvBaCVxo4zGAfvys3NXXy0sS82Zoss9D+zaGxr88R
         AZuBKjrrEEZ1Vl2lteKcNB/Z8n5RLciIXuziIoVL+tvHbdgzJ9thxYull2QXskk18FZM
         9m44MbQI1bRFPJspkYEHtVl831XiLJGLuc6hX5ol4k/cQR8r7H9T0aU1UeP9iArk6sHS
         2aTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829790; x=1772434590;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oLBqq1Ga3quq8yhCCoDLuhaEl8VPL3r4ILjvN9DeBME=;
        b=hQs//g+jExA1p322dYEPQ7ah0t9uaW2Gz+wiO/vkZ5MAx82vVwll5H5OJphnOJw842
         AMJnwbXYCql9v30Q2m/ny5lFCk3SDwI/kvkUKXM85jmaLZfwlZRPZDIMixSHS5crdzR3
         MDnjsXIqUaDb18MeG2euUMT+YgUISrBTTUFhRKR7H+UbCSZNJpcXd4VW9DKpsAKIgOKE
         jBxHHh9HnbbXlrnS+CEK3CMxWJp2it+Fz2Ao+eyngx4PGhGFx/RlQKA+2+SuAs7sG1n8
         5LXukFbeq5MOCEK4E47PxsoL8/aClwkRoP9kSCjQL4D8sjOcDw/4tMXoGHQ7ZMfTcJQV
         apkg==
X-Forwarded-Encrypted: i=1; AJvYcCUrzd9LH6kAqttXnwyz78R9JBHtHdqyNLyv2VR8cSX6R5hP6n3mgGjSd3UNDR5nztA3ZadlVxBr0PpL@vger.kernel.org
X-Gm-Message-State: AOJu0YzZfkLU4mcqlPo9VJKV/E4TrYzkitMpazsUw4jPKKP6Vk9c9l50
	/HVQcqmg/SCwZrbBqBX6yd+Do7iuyU3MKnI8mxIiBrF+/wtziQeoU83Y9HWfo9k3YpKb3YRGNPb
	TKdnLEiOR8i3/sE2CGRynsUzd7c4/f8suos1AVFQT3FdDDcn7/4+rifaGtwjO2V1Q
X-Gm-Gg: ATEYQzy6vRMFSjlupZ+7SWVkgejk5aPpIZ0LF2X9Y4+jTtipKC4H2dhe7e30iVFHgTu
	fCRyjsrmUcpzAena4q7ZHRjpIIu02aS49/wM7O/7sMULmOczXD+jLGfFwNikGdK/Do7Oe3MoTgc
	2nWBo0BW8njZ0LTfWOUhpLNaM6BCGSkuDNLTn7+9Bkw2NedBSDjPe6g0FTUcBeDqqKwUtlfwAmH
	kENCCGozeFgSxIyeKYtOzHQuPLCN31Okvc4MLEjrQR10wK+VSNSQIK7lvUCUvTjceDsoyy2Z8kT
	LCl88DQyMpL9L3b+mDgyRAFUY5VFfkvW+HXlFES2DOMqy30S9ExHpppeShMogphneY92c/XQXgU
	/eFNA77E5Gdi++f9sZ+EDq+yFRQLEGT4uv3MwHQH8VhlgY8kXnCkSC0mek6845vAMIMX+4BoyIu
	Oofk4Cj6sTsaAk
X-Received: by 2002:a17:902:fc85:b0:2aa:e23c:2697 with SMTP id d9443c01a7336-2ad745984bamr63944115ad.57.1771829789772;
        Sun, 22 Feb 2026 22:56:29 -0800 (PST)
X-Received: by 2002:a17:902:fc85:b0:2aa:e23c:2697 with SMTP id d9443c01a7336-2ad745984bamr63943935ad.57.1771829789311;
        Sun, 22 Feb 2026 22:56:29 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f619f8sm62249225ad.36.2026.02.22.22.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:56:28 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:55:43 +0800
Subject: [PATCH v13 3/8] coresight: tmc: Introduce tmc_sysfs_ops to wrap
 sysfs read operations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v13-3-9cb44178b250@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829766; l=5212;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=wH5nsU/eD/1ygNqCsVaoWKHsLxpu0A62Fho+0L9SEqE=;
 b=H43pKn8Uscw3mu08d+dMVb0DXKlrPYSYoKHYO/ML3Gr05Uq7OROqtpWA8vYBorTTw9EQ/UW8O
 tryQ8J9+2a+AkzQvxYExucJi3ODdnVcCnQIyIy1CNbZWZjbnzCkdJtl
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: WkMD9uXdAhSQhmhVhDWbEr6bB0LotIYN
X-Authority-Analysis: v=2.4 cv=UZlciaSN c=1 sm=1 tr=0 ts=699bfa1e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ia3uihG--C1vaqsH_ucA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: WkMD9uXdAhSQhmhVhDWbEr6bB0LotIYN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OSBTYWx0ZWRfX/2TEuPMOkZ0x
 PxaMyfOkjLrG+Ni4fK8CDDoOMt+TpKMn7UYm9xwtg9e7wXqWgoufhcPUu5CQqCUCp33+ep3Bh6v
 R0JNmhEEiWECAzeaK3s5ZgB6fQgxVW2y27ba3R9RKlh88bT3g/JWJbRy1MAErxUZZr9dI28Oe5w
 C8WpUhf8y/sxpscCpfftwSTIjkUNMZi+qog+RRJ5jz9uYHs6dULcs/Iibs1/p0tmhgujzcsZcU7
 GNNuj9kxbkygl+VoZ0/CR1swQHSYH09ADnPFgXXCPCa5hLXj+IXx7vXF01P97GtuYq7zJM7V3nJ
 GbriVn5fAR4x9UbQm1Zfg1Vg3YnrmY6mpM7+WW3pQ3NkB8MefUe/gMftw5thUiqRKjQ6dwTx28H
 5qBjdk5Xw3BNuQGtXNqk6P++qXbFc4seMmqN2A3O0v7aV6OgIz39LsCa6kR3A4jy+Hug9BIbLjt
 Bdynwy5hgN2DKRZe6fQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230059
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
	TAGGED_FROM(0.00)[bounces-267282-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: 180BE1726EE
X-Rspamd-Action: no action

Introduce tmc_sysfs_ops as a wrapper, wrap sysfs read operations, for reading
trace data from the TMC buffer.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 51 ++++++++++--------------
 drivers/hwtracing/coresight/coresight-tmc.h      | 15 +++++++
 2 files changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 1ea255ffa67c..32ca2ec994de 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -232,17 +232,10 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
 
-	switch (drvdata->config_type) {
-	case TMC_CONFIG_TYPE_ETB:
-	case TMC_CONFIG_TYPE_ETF:
-		ret = tmc_read_prepare_etb(drvdata);
-		break;
-	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_prepare_etr(drvdata);
-		break;
-	default:
+	if (drvdata->sysfs_ops)
+		ret = drvdata->sysfs_ops->read_prepare(drvdata);
+	else
 		ret = -EINVAL;
-	}
 
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
@@ -254,17 +247,10 @@ static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
 
-	switch (drvdata->config_type) {
-	case TMC_CONFIG_TYPE_ETB:
-	case TMC_CONFIG_TYPE_ETF:
-		ret = tmc_read_unprepare_etb(drvdata);
-		break;
-	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_unprepare_etr(drvdata);
-		break;
-	default:
+	if (drvdata->sysfs_ops)
+		ret = drvdata->sysfs_ops->read_unprepare(drvdata);
+	else
 		ret = -EINVAL;
-	}
 
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
@@ -291,15 +277,7 @@ static int tmc_open(struct inode *inode, struct file *file)
 static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
 				   char **bufpp)
 {
-	switch (drvdata->config_type) {
-	case TMC_CONFIG_TYPE_ETB:
-	case TMC_CONFIG_TYPE_ETF:
-		return tmc_etb_get_sysfs_trace(drvdata, pos, len, bufpp);
-	case TMC_CONFIG_TYPE_ETR:
-		return tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
-	}
-
-	return -EINVAL;
+	return drvdata->sysfs_ops->get_trace_data(drvdata, pos, len, bufpp);
 }
 
 static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
@@ -769,6 +747,18 @@ static void register_crash_dev_interface(struct tmc_drvdata *drvdata,
 			"Valid crash tracedata found\n");
 }
 
+static const struct tmc_sysfs_ops etb_sysfs_ops = {
+	.read_prepare	= tmc_read_prepare_etb,
+	.read_unprepare	= tmc_read_unprepare_etb,
+	.get_trace_data	= tmc_etb_get_sysfs_trace,
+};
+
+static const struct tmc_sysfs_ops etr_sysfs_ops = {
+	.read_prepare	= tmc_read_prepare_etr,
+	.read_unprepare	= tmc_read_unprepare_etr,
+	.get_trace_data	= tmc_etr_get_sysfs_trace,
+};
+
 static int __tmc_probe(struct device *dev, struct resource *res)
 {
 	int ret = 0;
@@ -828,6 +818,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 		desc.ops = &tmc_etb_cs_ops;
 		dev_list = &etb_devs;
+		drvdata->sysfs_ops = &etb_sysfs_ops;
 		break;
 	case TMC_CONFIG_TYPE_ETR:
 		desc.groups = coresight_etr_groups;
@@ -841,6 +832,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
 		INIT_LIST_HEAD(&drvdata->etr_buf_list);
+		drvdata->sysfs_ops = &etr_sysfs_ops;
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.groups = coresight_etf_groups;
@@ -849,6 +841,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
 		desc.ops = &tmc_etf_cs_ops;
 		dev_list = &etf_devs;
+		drvdata->sysfs_ops = &etb_sysfs_ops;
 		break;
 	default:
 		pr_err("%s: Unsupported TMC config\n", desc.name);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 57d8394d09b7..92ffaf771fea 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -260,6 +260,7 @@ struct etr_buf_node {
  *		 Used by ETR/ETF.
  * @etr_buf_list: List that is used to manage allocated etr_buf.
  * @reading_node: Available buffer_node for byte-cntr reading.
+ * @sysfs_ops:	Read operations for sysfs mode.
  */
 struct tmc_drvdata {
 	struct clk		*atclk;
@@ -292,6 +293,20 @@ struct tmc_drvdata {
 	struct tmc_resrv_buf	crash_mdata;
 	struct list_head        etr_buf_list;
 	struct etr_buf_node     *reading_node;
+	const struct tmc_sysfs_ops	*sysfs_ops;
+};
+
+/**
+ * struct tmc_sysfs_ops - read operations for TMC and its helper devices
+ * @read_prepare:	prepare operation.
+ * @read_unprepare:	unprepare operation.
+ * @get_trace_data:	read operation.
+ */
+struct tmc_sysfs_ops {
+	int (*read_prepare)(struct tmc_drvdata *drvdata);
+	int (*read_unprepare)(struct tmc_drvdata *drvdata);
+	ssize_t (*get_trace_data)(struct tmc_drvdata *drvdata, loff_t pos,
+				  size_t len, char **bufpp);
 };
 
 struct etr_buf_operations {

-- 
2.34.1


