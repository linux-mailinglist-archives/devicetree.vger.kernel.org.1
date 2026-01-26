Return-Path: <devicetree+bounces-259389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPsJFgsfd2ntcQEAu9opvQ
	(envelope-from <devicetree+bounces-259389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:00:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7854E852FB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:00:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 95B34301DC5C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6073161B5;
	Mon, 26 Jan 2026 07:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HM1B5MUY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S+Fzrmi/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB0F3126B1
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769413751; cv=none; b=l9UPD8iqvHNac6OR2BR8W/E+qZERLA3byHh9Ia2IwSrN2bpmD3Xqf6fJrybi+Bm9VjIFTba+A6jAIebGTvN4ehvUta8Zk/NwSqttQgEewLNhKmz8Njz6sRTWFQi0xiJbKpVMFoG3nvWv0s60/cRqoffvrdXwBkzWR69h+ZDAnyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769413751; c=relaxed/simple;
	bh=Zq2mruMCQX8VD0/KR6WxLvO+aI5t0vieYiFx2QbIddc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dhVbgJwpuROtYFAhaNzL8eFpzUTCrQcEY1Hoo02OKhWOTUqdxQKY55U344xL/gFQoRDaST5sloEIuAjf6Aw3EmbncvuRoGcOxfwH15IUbhVXLkYu9QDhZn1Mnjq/hBxVR+LoXF+zoQ96UUpNJnsyXchS+iyti/78acRx34D1c88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HM1B5MUY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S+Fzrmi/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PLuK6f1043756
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6+SnHnfj2p+IHMVC+5k2qLRm9He+t+szYkvobbU2XVA=; b=HM1B5MUY0Q950VMK
	VIZO47ru5JVvnUXecOaghnBiDR6XdnVMitYQTWCqHWjzCFGhqQ40kUyKOUd2dnxU
	ZRPviZAd3q/gJczRAeNTypbhFEJENvC3wU4xCuBr9xz/y/45LWjn8z10A7ral6QP
	ER0+8j4NEghp6gyXr5JrG6V2gsUPAHnN0aTwj6rssNAsgsmHCFKlx4jk+rmW+LHF
	e+OCOZXWRQT+IZDLuzwzm6YV/sApO4Y1U9ek3wcnNqM88MmHRzYwVebE+EdxH/ta
	o9jZP1V5XQMx3Je76N9bEmBIjc8C12XevQfMKyy4QqPPgVRaimub4yIDdf51XifO
	n9Tkag==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvwtyb93n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:09 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81f2481ab87so3354153b3a.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 23:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769413749; x=1770018549; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+SnHnfj2p+IHMVC+5k2qLRm9He+t+szYkvobbU2XVA=;
        b=S+Fzrmi/tprmtNk8cPF+473y1979dC4fZ+XNTVHlJ82v4jX6GgN70bBhwIZn0Y2OG+
         gaT5aD52kUzladf5uT3YxcKPxfK/9ff0J+Lbbfi4SL373r0MfkYkXup7pEN/2clkyWp2
         roM3riranSrwQ6fjxZjF+2mLRcAQOevy7hAsoXH3CvAUIeE+2QXS0JBDUkFbFDWFaR7H
         5O8hdBHX/FdYjSAFR8zYX/17ikFAok4JZlblKI9H0dkZwhrv4qda496OrJde12EW4FqD
         ZbMab+9eeQScQvVNu2eaxw/atON7HfwZKGol2Czg5S6wkcBMJuozznC+8mBlW0mwZC6s
         SsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769413749; x=1770018549;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6+SnHnfj2p+IHMVC+5k2qLRm9He+t+szYkvobbU2XVA=;
        b=xUNW4BUkpv1QbMQge/UflKptVtGpcu1u42fhi+aKtU2ns66ahGfrqAQ3GETZMkBbyj
         +GZtizRTFYHyYv0ji4Ks9/OsM3n0V/IcARInW6Ou4BMAjgM/uBRbnc0n398ZnHR1OHf0
         +F8CYqCWksiKKiNTrWhyKL3bQZ7Ge34CSdVwpv+IahDCoD4Z97wUD828Upk6CBemNMnY
         6zfUIss7Lie+MTbOEgAPgWI7yxIip0zA4AnSymCXgzh2NmPpg+4pq/VbEjHBm/f8fS+V
         gkMktsW9HzMD2SCyfYYXC7w+d9TjrHGDpK6Ay5iTTEqm6qsaubcRZ+qzBR78RD0Mz4u1
         MsPw==
X-Forwarded-Encrypted: i=1; AJvYcCVpoi4CsW0raxmqZ0vKrMQl+p2asd1lOTPVsPzFXtsZOoNglaO6bFcdMboI7yaSHs7BZp+Tis/hJ0c/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3yLCwgZl5MlC8CFgac8K+XIcp2iotACUvl1/fo9d1vzDPPsrV
	ZxaFM4KbEsvfifyL0xAEVetVRpultu7f0rll1YZ/2ezU4aFo4Ydmxdk32NGn9yP7eU8YGfKqdhQ
	LvZINXCvIxQOjG0QL/zaRbIRcoQfPhUUE1sbuhNqthowyf7QOxccyE/QNtg2k2nPI
X-Gm-Gg: AZuq6aLb+3NfgweHNZObhWlqFeSsijUCF5GMe5dieogMDJNxAJpb5ZqLIgUt4SPxDUl
	TaFfhUzrH5dly5DgiszA5YAyTqC5OpRGxKDg7s6oujMmJzzrnGqLUajtj+iGeb50yH6wAWedue9
	6fTmEdViFv3kVKybAVTJoG7H5RIyoN5eRfqdNm5phZ9TGT+RetNDMwmz6kDml/n+aEh4PPxdxUN
	kOvfFe5UOv+d+f/2JHHPRZr6nonSDULDQ6mwS11tCVPF/I2lcryHkwrh5ZsjSyJg8zio9R1QV/7
	DAcdO2Qnyj3eUS3Lf2067VfratkPGiIcSqWiH4tBztsMSKf7mulYKOAi8il2Jroby9sHRR45COM
	wFC0+tmScJWEDWuJoIteoYa567z2cz3Tp0eVjuSwxGsB+gP5O16XN3AG18YVIQdcbQGusU5qXYb
	xB
X-Received: by 2002:a05:6a00:140d:b0:7e8:4587:e8ca with SMTP id d2e1a72fcca58-823412d8c6bmr3477821b3a.61.1769413749262;
        Sun, 25 Jan 2026 23:49:09 -0800 (PST)
X-Received: by 2002:a05:6a00:140d:b0:7e8:4587:e8ca with SMTP id d2e1a72fcca58-823412d8c6bmr3477792b3a.61.1769413748784;
        Sun, 25 Jan 2026 23:49:08 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8234fd9a5a7sm1223418b3a.63.2026.01.25.23.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 23:49:08 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 15:47:59 +0800
Subject: [PATCH v11 7/8] coresight: tmc: integrate byte-cntr's sysfs_ops
 with tmc sysfs file_ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-enable-byte-cntr-for-ctcu-v11-7-c0af66ba15cf@oss.qualcomm.com>
References: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
In-Reply-To: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769413706; l=3512;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=Zq2mruMCQX8VD0/KR6WxLvO+aI5t0vieYiFx2QbIddc=;
 b=hBgYC9yibRbm3RvEmsxoddJOyjOdnOOeiOlaGWemCh4SAiGZ7YN1/RnoRQ627k51zzyRArlxy
 xpymxY6V/8lCsLL8zWgBSfDqjMbqHE912Z9W6U5eiRBxx1vlbMvqxTl
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: tnfLV78mlK-2_oOWQpIJ6-IlMZq8-Tww
X-Authority-Analysis: v=2.4 cv=BteQAIX5 c=1 sm=1 tr=0 ts=69771c75 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=i2GxayCjj04of9N-vEoA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: tnfLV78mlK-2_oOWQpIJ6-IlMZq8-Tww
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA2NiBTYWx0ZWRfX2QyY8fF70iJw
 DYJ4grmHt7KMXwTzRpPO1X6tC1XNjpDHhFslG3Pvf2jtb/Eai0Y6gYmAuqw4xZd/mAP1rui1sAE
 RT2/hki0OgoBaHkxwMKDEfJrdqdkvKQAmTLgNU3BSTHDn56Lq7U7m3KTnYf9cVsDNwmRhkJxoc7
 MPHLoc3iYgdrg2A4xlFZxrtua5jbF9TVb33Lb/RZFpSCy6mCftAP379QMN/ddqsliHUkN3G7jq+
 omwMEznMspspyWbipGrv85dWEWToNp96r+biNS+G0+7olPnfzvV0khh87hT8pzhGTw3Xo3bDaO0
 M45SR34TyOFCj4e/rVQc3VdSyeLCIGt0mBJvliKXmKCCk0u+d0luGE/gPOXYpUts0oM+NJLEQbS
 D+v+YbhU7SWeHuoweq7OmX8mYNrbLI2IpBIkCaIibxcUrO99f1v3c93MW2GfPfy18yk9Fop4dsk
 NFtwREngVXkoTf3db5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259389-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7854E852FB
X-Rspamd-Action: no action

Add code logic to invoke byte-cntr's tmc_sysfs_ops if the byte-cntr
is enabled.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 53 +++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 32ca2ec994de..95c74405ce05 100644
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
+	struct coresight_device *helper;
+	int port;
+
+	helper = tmc_etr_get_helper_device(drvdata, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	if (!helper)
+		return NULL;
+
+	port = coresight_get_in_port(drvdata->csdev, helper);
+	if (port < 0)
+		return NULL;
+
+	ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
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


