Return-Path: <devicetree+bounces-188806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 166AFAE59A9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 04:15:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5D7918977BB
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 02:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFB923C8A0;
	Tue, 24 Jun 2025 02:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mTbTcNjo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB78F239E7A
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750731259; cv=none; b=BEvjePuPjtRb8vqHc/uWszHsZsWo5lLhqKvLjBkchqZOC+Y/HPm/IKlm/ntE7c5DK69PKNKkPilEgU+RyfsDyUrChn3O/o6ASvb+SiyOmG3VZ8fC6LR0yR1xhhpzAcIzC9IyuB6ZbIPBcbLtKLdy+PioHQtMmEtdf+8++KxqJ+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750731259; c=relaxed/simple;
	bh=s2o+RnAnwuuTYdNz0c1fk/UXp0JDkRHvl3NhwSnxORg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rj0drbto//abHVs6fGepog0ocwiKm7IWvn1I5pZAAQf++8iRpQLJPanJ+DDt8DcCIaXa05fqcyxBL0BkvwsKA3RTM9pYHT7UEg/O0//kHIq6P11zhXASi0p90WcpG7VISKXRJrvHZ6O+NlqfsGeE9UZcEJp1qEnr8EONyBHaYLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mTbTcNjo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NKmUeE024367
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rXsS7jxuGefUn2n4a2PcfVZg4ooOKFqRyiTGh+plE6Q=; b=mTbTcNjoFIMpupY3
	M9nf6M0iO7jrbBzOGCTzmv3I2kNdXddeHZRe0dd0S5f+z8qnJv1CHG0J8AoxAZk7
	IOrfelL6P9VYacCnzrgEJgoXHNMv60fcBq+41/cSO47ZY6TS8TcW/FkmPBPfEErX
	kVaX4UR9oF/IDnupDcV3/1+gtp+UheDaCCwSjESMwRiDOY2DrEJHP6R8r4wMgNrw
	N+lqT1YympUowDsgf7W9iGveMmU5bISNygHLS0U9i9vV5K7nN4e4j1zXhXUSNgEn
	3tvuiPf8En5fSQZmNmtewgJaiGNpuqB8HZU/eaMW/NOaiXxSn17UROsd53gXvhFs
	M7DviA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bgahe4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:14:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so735871585a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:14:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750731255; x=1751336055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rXsS7jxuGefUn2n4a2PcfVZg4ooOKFqRyiTGh+plE6Q=;
        b=jat2okptp4z1+N84S+OVxSTg9vFMRRDz4zp9Sd2aHU8Ij6aiqz8i9CCBDCJYHonCJC
         bM9R41EXk62Bh6hYRd/p3iqTlJ7a0966v/qEEVYLVBCuJYMjs3psDrHGysq2/3y7wgml
         Ly+tJj82Zy+Ewc8Uakt60bVLgoHX7p1aaSKYNj9XKfRDLQIFC4PAPOiN1OTCci4KbXDe
         Pps+5X5Z3Pw0aoZYzN9Vr0v5P8YIyQ3edZBNmgMLt/He4D2Mf6JxcLMYqiRnadTR5j3X
         h+PPl7McXvS0fVBbtzyrS6GwoWgEAd36WUw9JEmah12Y6qqrsFjobOrqlCbx75sHlX1s
         7OUg==
X-Forwarded-Encrypted: i=1; AJvYcCU2ZdRgINC85wEuO172jPGIQocLQuO8DqFDNQ6210R7GtYz5l45CDPYeQfDtq6qJRVkd2TdDRgGgnnD@vger.kernel.org
X-Gm-Message-State: AOJu0YzBVOpQLbqF1KG55AO2PIgEA1stJOHQdg8C2/+JFmoCF2I+l6MT
	V6S6mT2XNVgVmlLk8S2Igwifh1vOXCCK722n1xWUkp+1j/M70DHUnUSBqT1nCTHAymoFzgHBN/z
	8JwIeUTfzJ2b4aaO5R2LKccdBAHSuD8EBVa+nSii0bodxjJA5+13pgAYGfk+xFFbs
X-Gm-Gg: ASbGncutfwfcfhWqTDNn7FwieH9UJveAb8k+wV6ccvexzI37sCHmUjKxpMfZ7aUfoFe
	xu0zSINE/Fj0lDweDTpXdh6k5ZOkfMrgLBGjSfdmLyuuIzLOJsjJF4pzKYq+532BD27WGDmeK2J
	FlnDoNFpRWMom/S8tCDyxkAB6donuxpghCEO5hJ4LEvATiNnApbdSnGBEU+QTSJX2xTvA0B3+tx
	5Sq/zrhGDkerzGFA4FQJaOxZkFX2LHdl9ZsoEDX2Mi1XkfQ2JokgCRF8CU+FmRLl/9j/vv3zz6T
	HmsZdbuvfi3rDwCKd6n45yToDLTygDbnKilpIN4yrYlFIQZbi4Y41Vu6aVYe2kUEB2D1u6Z5B0q
	frRFO80lAAh2bOZ03317xcgvTWmkRYsG8VB8=
X-Received: by 2002:a05:620a:1922:b0:7cd:331d:bb3e with SMTP id af79cd13be357-7d3f9935e7emr2022904085a.32.1750731254905;
        Mon, 23 Jun 2025 19:14:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPRQEcxIl/1tKf9CY1/kqMs19qtzRY7gdh2XwyltdEkmnKpY5wXHxxDtB4ZK5neoLM+qrbsg==
X-Received: by 2002:a05:620a:1922:b0:7cd:331d:bb3e with SMTP id af79cd13be357-7d3f9935e7emr2022901985a.32.1750731254441;
        Mon, 23 Jun 2025 19:14:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41446e2sm1637764e87.32.2025.06.23.19.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 19:14:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 05:13:57 +0300
Subject: [PATCH v3 6/8] firmware: qcom: scm: add modparam to control
 QSEECOM enablement
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-more-qseecom-v3-6-95205cd88cc2@oss.qualcomm.com>
References: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
In-Reply-To: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3235;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=l/2vDz7zeLnp6OwntquJZV6YAtUYQ1dSv5z/W2j9Xfw=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ0YU57MOZyPTF/dlmU/ODlc/cNRYcel5y538c/YknT9vr
 KZ4qP5cJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmMp+N/Z+NbJ3txjX7GioD
 /sdFlzMbu/ieiEotK///rsihPOJijY/1k4+bL22pOzPdPkiM629qs5+N0VG7X2tSfUulSiPflqZ
 l7tml6dJ9Pn+Hw/IeuSOn+H79nNe0ZEbNWen5n+/GKUcEJi0X/JI+J65Ecb4ot0yh4AH7om8MtU
 FLD0yNbcuQ3OVw/OSG8ss3Dbse90spqpXvPqpZsJl54b7bTpXSonahWyZ9Yr7Tk9fNl/M8vU1a4
 TVzTVb+f6bLM9Y3bUyV1I3eU51z1b/0v873JzHz/t/VSBSU2NTxYbXVtB/3/qlMaS1hWcYgv7lb
 Uu6nROf8g5y5jA+N2ZSKU/WvfTy1k7m34nP1nQsHFNIcAQ==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: jsdETLQOVQ6mshgTUio9my6lYUXHArva
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDAxNyBTYWx0ZWRfX3aJLqIoVzH/N
 NFfIx4xeFK/T7ofpPmpN6liqxOOdKmDVJvP6Vpy0f1cGgR7hWufjmMdKDYE7T72EOG3PPTIl6W7
 23Ulo09FnaHMwT35nBXjx50BZ1736nMvh4Ky4s/jUUBpZLt/qvKJLAvhDl1UUWUnbc0SmK2USl2
 8wLXIl/KrIJaub9yJCCAuOW8L6NTE2O4wkBVIRqVDJICAsqRlmQs04WuNzNFT15V4wqcdINPj7h
 yd+lzaKVWPrxDDC/SD5MjfXcH0D9rG7iYX63pyC5wOdGEIxi7bSCnfgiFDtZf1PsFb8YB9YtSXT
 WJmzksF2eQxxaxCMRzDNyde2gkZnpXhmfpoohWZoR333W+TWGQTIFn9BmQMDgsnVVUHaFV9t17F
 0i2KVLqQAHHZRTb99EMWJD2uhDlWjHtSn3+/Q0OvNg9QV6TtsuWQNHiJ/WGhHYmeX/AOP4qY
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=685a09f7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=JMKUWE_9wimnfyHsXasA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: jsdETLQOVQ6mshgTUio9my6lYUXHArva
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=999 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240017

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

In preparation to enabling QSEECOM for the platforms rather than
individual machines provide a mechanism for the user to override default
selection. Allow users to use qcom_scm.qseecom modparam.

Setting it to 'force' will enable QSEECOM even if it disabled or not
handled by the allowlist.

Setting it to 'off' will forcibly disable the QSEECOM interface,
allowing incompatible machines to function.

Setting it to 'roefivars' will enable the QSEECOM interface, making UEFI
variables read-only.

All other values mean 'auto', trusting the allowlist in the module.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 27ef2497089e11b5a902d949de2e16b7443a2ca4..5bf59eba2a863ba16e59df7fa2de1c50b0a218d0 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -1983,9 +1983,14 @@ EXPORT_SYMBOL_GPL(qcom_scm_qseecom_app_send);
 
 static unsigned long qcom_qseecom_ro_uefi = QCOM_QSEECOM_QUIRK_RO_UEFIVARS;
 
+static char *qseecom = "auto";
+MODULE_PARM_DESC(qseecom, "Enable QSEECOM interface (force | roefivars | off | auto)");
+module_param(qseecom, charp, 0);
+
 /*
  * We do not yet support re-entrant calls via the qseecom interface. To prevent
- + any potential issues with this, only allow validated machines for now.
+ * any potential issues with this, only allow validated machines for now. Users
+ * still can manually enable or disable it via the qcom_scm.qseecom modparam.
  */
 static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "asus,vivobook-s15" },
@@ -2013,11 +2018,27 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ }
 };
 
-static bool qcom_scm_qseecom_machine_is_allowed(unsigned long *quirks)
+static bool qcom_scm_qseecom_machine_is_allowed(struct device *scm_dev,
+						unsigned long *quirks)
 {
 	const struct of_device_id *match;
 	struct device_node *np;
 
+	if (!strcmp(qseecom, "off")) {
+		dev_info(scm_dev, "qseecom: disabled by modparam\n");
+		return false;
+	} else if (!strcmp(qseecom, "force")) {
+		dev_info(scm_dev, "qseecom: forcibly enabled\n");
+		*quirks = 0;
+		return true;
+	} else if (!strcmp(qseecom, "roefivars")) {
+		dev_info(scm_dev, "qseecom: enabling with R/O UEFI variables\n");
+		*quirks = QCOM_QSEECOM_QUIRK_RO_UEFIVARS;
+		return true;
+	} else if (strcmp(qseecom, "auto")) {
+		dev_warn(scm_dev, "qseecom: invalid value for the modparam, ignoring\n");
+	}
+
 	np = of_find_node_by_path("/");
 	if (!np)
 		return false;
@@ -2065,7 +2086,7 @@ static int qcom_scm_qseecom_init(struct qcom_scm *scm)
 
 	dev_info(scm->dev, "qseecom: found qseecom with version 0x%x\n", version);
 
-	if (!qcom_scm_qseecom_machine_is_allowed(&quirks)) {
+	if (!qcom_scm_qseecom_machine_is_allowed(scm->dev, &quirks)) {
 		dev_info(scm->dev, "qseecom: untested machine, skipping\n");
 		return 0;
 	}

-- 
2.39.5


