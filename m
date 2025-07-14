Return-Path: <devicetree+bounces-195885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB14B0372E
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C629818932F8
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19BA233735;
	Mon, 14 Jul 2025 06:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p0Ml7n0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8A8233722
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474721; cv=none; b=iFmQOkvnDnn7np7XlLayK9AidgF2sD1uMBtxL+FFwr8Zq8l0lyZAUnPrfREqIKd9YAoBb9HjhxtZAaNwF45L3BZy7tCs8zruRZ79ZsyqjJ831Gha+KIOtMpztfVHRC6qHk/l4p3zMp31eM0+KCf+TQmNeuBhTRgRD22XKieG5RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474721; c=relaxed/simple;
	bh=d/N/TB61i7GeVIWGxfjbRQ9Z2F1vTqrm+bBemdmjw3Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uorHGxhJkJccB7vZQfUlMRy10Dd6p4flKuK+SkCTE8cyu/V10jsloj/mSkB3oEd6LNCx/qX5qIuD7jWisEnn9hjM9+9FPG/qxLx0wYHPHXcc3TqJPmtJByyDn4n918jXrc2oZwufUZq9ijSZ1AQbku6Rs/B9nKxfX6heNGfV54o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p0Ml7n0v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DMdoax014318
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=x07SNj1YXpj
	6RfRQ48AeQgzrdGK/jYfZ/E/HEUOOxeI=; b=p0Ml7n0vTDmc1YlunS231ZIeuoW
	jT/NRHdzV5N7ud9iV/wl48L1N+pjnhRWvIP/vBZun14m4tVkFSRo7zzpYRpAEifv
	VwhE21dCrtAgQESi6Nc5dIQK0YS08/ZUTGzeNXQRoez7mPHx3JmsTdDy7xfK/Q5g
	ujl7LdCj5g7TbHHFnYzNhLs+zoJYhwCkjcDob2Ocr8m55rVgd94vpZfAYbFpalPw
	GLfXp14uEOL/Z4IRfIyEOBHLmf9HvLIkJOguk2beaSPK7nIphx0hKoUMPTtsjPUt
	x/TCH3EQVZ/Zj0aEbBb9+Aons+aN0mx+488hXaUh37kUP3gZeIuk1zWsfVQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut3exd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:58 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2365ab89b52so32899585ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:31:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474718; x=1753079518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x07SNj1YXpj6RfRQ48AeQgzrdGK/jYfZ/E/HEUOOxeI=;
        b=VkbbbKw8xNNJc48e7gHJA7k0bQSY+ile6tAfWW2LSb5nGfe/MMN4+YBH7mUQMmjdmz
         u7T+OBJTKFxJPhNSaM4Tu48+iwwbP4AXbSpOh3m7RE+269h99WBehnfh+8BX3ciTvDzl
         Bx9PHMrgv/KlJiT/w0Me0jE6ftGARrSd0kHDpHxuZ+QTH4QC1IjMfXoPj/DteA70k5V5
         UiRdrGD7enPIXZ3+tMJGQUeWp7FO11FQEhohaqcGWSQ9OUAhEVdwNnPHbbAkzz3WYz4c
         Ge7o6InLMJmJldL7YdGLAl5iJzWA1xUozgGkRLlmiU9nQuHQ9sPkFaKK1Py1MrDOZ+i4
         tSGg==
X-Forwarded-Encrypted: i=1; AJvYcCWe9jRBglMW6awVWFm2iZzu9o5lhUEHA6Wge5QBSEA7kXowaFXQM4LSISBVeS8ztSbz3pHQaR/iVuou@vger.kernel.org
X-Gm-Message-State: AOJu0YwIxbGL02zz1h/GT/lciTAmaEaO8lSMiisrN8gvU5+opNbqG7yU
	33Y+qF6xDjSu8PVe0yPmw3fKM5kCyxsJe6hdN83EwE8LpsF8WZKf8mlSFSSMM3iAo/28vJZWPXh
	hX5MZnaJcQa0sSPMKXPgaVoO5tPGbBnDGV0yTx8zrYuc6LFjLOa/4z8sQoODVgGvu
X-Gm-Gg: ASbGncs7Kgm+E0yAZnIEufLD7uG6s0kBwdJEmUTVsK+c8m/NVd8dE3VOVu1hL+3CzMn
	rQZCoL7S3l6SnJDRAaVHD6JOTZyHy6/4Uxgyv0uniHdN12kCeq64Wjpg+4pwRgrUCgFk5hDSiJJ
	iAgHanA5RY1IB82LVYrv+cKmHYn3WqPvsiSpBT7gCzYgSZwQpILv8WYoC7cRJDPYOozA0JmwXk2
	hr2d5brwErDXr+FGhb5et1OKAWuCKtbtpHHfSU/9hAm25FPFNl1vdeP+IlZSzdaKW2Ove3bfK7p
	xxfCK3GWyfsPJzAAxTHF2HCAX8bC45S5e50+DIElSTYtepJawP3xZeMZIomzwlb9Eh/yKqS7C85
	86+VSYWigiZsP9SQHI0uM
X-Received: by 2002:a17:903:1ae7:b0:238:121:b841 with SMTP id d9443c01a7336-23dede4611bmr207184845ad.17.1752474717715;
        Sun, 13 Jul 2025 23:31:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfgAAT9PdM9bRbi+at0lzqsfYnbzx5YAban5kucbRgbI52/04jPmJtMd8Ou3a8XsGgoWkAiQ==
X-Received: by 2002:a17:903:1ae7:b0:238:121:b841 with SMTP id d9443c01a7336-23dede4611bmr207184305ad.17.1752474717246;
        Sun, 13 Jul 2025 23:31:57 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:31:56 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 RESEND 08/10] coresight: tmc: add a switch buffer function for byte-cntr
Date: Mon, 14 Jul 2025 14:31:07 +0800
Message-Id: <20250714063109.591-9-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=6874a45e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=wDWrKlMOwBuH9W2KgGoA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: TRp8km-3bOD9cwKMIrv3svDyC1fUEfy1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfX8j5gLl6ncKq4
 RVtv1uLEfAPA3aI0YLZhSze5bRZdYMhoBmyN+CfsHAixrWbFF8FECpkitd2Cd9NrbEslrzQacGC
 e2oh/6/OAX5f7LL0Ny05FlSkBm25kVSzPT0RMmou864vTCoQ/mRm5X47CBm6Wd39gZa06NGeACq
 npT6HwpwfBW5dnt+jzhd1+NyuF333fCnd1dkZbXiUv6ulDI1gCkPAkyzYz8TJ/w6AuhXnAmmfRh
 TWjs/3a3f9tDEeJBQsl1nNxD7OL6oIS7F3kqpfIL3beBKYLxAivfMZjppAkjTqX930TmlFuX+Ry
 8Jz0IRW/NuWaSXpP3/NUKuNe1y8avlxIgut2zRSmV8zXfDm3z2wUYUPfRIDi6Ql+lC5iAJ8l4GI
 VSZrAPxiOLbAZ42HV87zGrDHHA76Ml1rt/LP5zeI8f578d+D5nhs22W9801QU3FzZiWWUice
X-Proofpoint-ORIG-GUID: TRp8km-3bOD9cwKMIrv3svDyC1fUEfy1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140037

Switching the sysfs_buf when current buffer is full or the timeout is
triggered and resets rrp and rwp registers after switched the buffer.
Disable the ETR device if it cannot find an available buffer to switch.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 2b73bd8074bb..3e3e1b5e78ca 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1287,6 +1287,58 @@ static struct etr_buf *tmc_etr_get_sysfs_buffer(struct coresight_device *csdev)
 	return ret ? ERR_PTR(ret) : drvdata->sysfs_buf;
 }
 
+static bool tmc_byte_cntr_switch_buffer(struct tmc_drvdata *drvdata,
+					struct ctcu_byte_cntr *byte_cntr_data)
+{
+	struct etr_buf_node *nd, *next, *curr_node, *picked_node;
+	struct etr_buf *curr_buf = drvdata->sysfs_buf;
+	bool found_free_buf = false;
+
+	if (WARN_ON(!drvdata || !byte_cntr_data))
+		return found_free_buf;
+
+	/* Stop the ETR before we start the switching process */
+	if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
+		__tmc_etr_disable_hw(drvdata);
+
+	list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
+		/* curr_buf is free for next round */
+		if (nd->sysfs_buf == curr_buf) {
+			nd->is_free = true;
+			curr_node = nd;
+		}
+
+		if (!found_free_buf && nd->is_free && nd->sysfs_buf != curr_buf) {
+			if (nd->reading)
+				continue;
+
+			picked_node = nd;
+			found_free_buf = true;
+		}
+	}
+
+	if (found_free_buf) {
+		curr_node->reading = true;
+		curr_node->pos = 0;
+		drvdata->reading_node = curr_node;
+		drvdata->sysfs_buf = picked_node->sysfs_buf;
+		drvdata->etr_buf = picked_node->sysfs_buf;
+		picked_node->is_free = false;
+		/* Reset irq_cnt for next etr_buf */
+		atomic_set(&byte_cntr_data->irq_cnt, 0);
+		/* Reset rrp and rwp when the system has switched the buffer*/
+		CS_UNLOCK(drvdata->base);
+		tmc_write_rrp(drvdata, 0);
+		tmc_write_rwp(drvdata, 0);
+		CS_LOCK(drvdata->base);
+		/* Restart the ETR when we find a free buffer */
+		if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
+			__tmc_etr_enable_hw(drvdata);
+	}
+
+	return found_free_buf;
+}
+
 static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
 {
 	int ret = 0;
-- 
2.34.1


