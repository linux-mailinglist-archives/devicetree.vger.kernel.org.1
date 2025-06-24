Return-Path: <devicetree+bounces-188834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F8BAE5C7C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:06:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEEE11897163
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B970243376;
	Tue, 24 Jun 2025 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FdU6f3Gj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5F92405EB
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745123; cv=none; b=aJDk0G+L2mPbv+PLiEUh1Bk+4b6uSVtMSro2C0fK2mhi8gCmON6QC7w6RaUYYfwEPBSaP3qBVVhGA6+s4292ciSw2TXlcS6OkwoP3n5khM0m43adn40loM03TkW0D7bk9uM+y0LNS/0zqxyVMnaw8mvYR0qTWxvjaLq4mTcF27Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745123; c=relaxed/simple;
	bh=d/N/TB61i7GeVIWGxfjbRQ9Z2F1vTqrm+bBemdmjw3Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iUUNzTVi/bZHflw8TRRT4HbiOBgD7rDpcaAqc51RFQG+uwl/J1OT0BhfE9xk9jdKswffLHdXtI9sQ3wa4bE409sJLVOZdRJ0B+YBAnX2F5SptOGJNyALh5ogKBMQ2DUoiicxv8K64c2PUgrNVOBDZjFmCwwu6gKBBvHI695gPvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FdU6f3Gj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NIXR34011924
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=x07SNj1YXpj
	6RfRQ48AeQgzrdGK/jYfZ/E/HEUOOxeI=; b=FdU6f3GjHRbFs8m3J6pr3YFOYam
	OchjWHIfYetew5iKxw86RrBnjvgD6LYTBIDRHxeMshXe3QX60V/KTOaxrJgMgwt4
	76SWEZHMC8sv5BUVcPjB8fx5mOx/UuSPiIdbQQc3dL43jPGJs0fnUXcfkuFOaFCY
	raV8CAqeq9Q1iCkhY45zclLyO++C9IcyE7+Dir3uW3Yy0nkfTp90/fQiTS3CJquA
	de38y0LS9NyUXrrP/fH+rqfZXQdcmmnoIev8Lyqr+yhsNFQ5nfV5KatUf0Svj30l
	CmU/Pjp3fMGUUL+OgFOFLA1JY/rgxbhFmu638RgMNLDvPwS241Jp5bNO11Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec26579b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-23689228a7fso847185ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745120; x=1751349920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x07SNj1YXpj6RfRQ48AeQgzrdGK/jYfZ/E/HEUOOxeI=;
        b=Oxtp1nXihv+p6LaQNsK2H4ls1207BEylw6zGnS1q3fxc5gT+dCQw6ue7OpX1usBMLu
         Kd/3ri5o8yuR6M5fzQIv+e5wNQ8DevpEorJie7Rbw9QI7imbU0qARWq1HJpyROVZrGh2
         ScS2vI86fZuZktNYUASx2bYG7dt3uq09YjUCmLOy1G5uRa18AGc/YUX7SgCwZZZBEU+N
         u9cf3Ti081o6H5PkUfiY4UFN0+IfvDqzaU2zkR0SC3mPKu4gmn+Xpm2qxmccGJ4TbfiT
         3U8Bg5tBn53hkNchjuklMxqiN0Kb0GaOwPF5cyW0s5UBbZ3VIj82gwA1pGb5GIr5ZGie
         HRiA==
X-Forwarded-Encrypted: i=1; AJvYcCW4tjUbO49JkPzt2Raz7RQcLkEZt0u7A3EqIxn69D58vVt+NqujUKzdDPRtj1WeWvcgClh53RWw/WqY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/5KILsbKOQNORDXVypfFcKRJTTbDC/gwUyHR7/qKz9OBFuvft
	o4M7AgZAZFuVSqyNG6qUlZAmcFKV3wqiWffhQ+tlUZwRmYp5dGf3OIDTCElbHm5U8366R3fcIp+
	L6KTZa56yxkBomokEyFzb+pGwdFboxivTRme0K0fpURV5ggVzZdRp1Xb86shicH0m
X-Gm-Gg: ASbGncttEaqyYkcME9BzSMFAMfm2P1ofnSrb6VWVNPBcK1XKExwH8txJ4x4q2H7Skzm
	Q1TZxImwBkriZVfFxvEmSs1gSrsj6q0zAkmj9BY9Xknsar+H1bPY3dG6OaZTaq1cLb0fTchRlT6
	txOAXJFRd2f30jZpGLiBrqhh/7nD+IsAQPA7rlZoBzWjvmV2GNyeZqRLMpM+AK8KaGM8n2WsXUU
	oerB1aaTKvhYGLPqgXr41TUElrYYGDOhsLZjcVs/HpJs122LOny8KRGNDM+FwIhYVTzYCHp6nyc
	SEG2Vo8PiCmDiclSASR1vLiXVCXVdaZtt0u4098Pdmb8rXQ2LQFwsGqDWhsjcj19Pi51G5fbJs7
	rWg==
X-Received: by 2002:a17:903:2d0:b0:234:8a16:d62b with SMTP id d9443c01a7336-237d970f9bamr253276005ad.12.1750745120410;
        Mon, 23 Jun 2025 23:05:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE97aOL/swaHhYhRTiIKSN86TTBXV1K7HhrE7lHhuqfmi5WW9OInNk27uiW+r30tmlu+zChDA==
X-Received: by 2002:a17:903:2d0:b0:234:8a16:d62b with SMTP id d9443c01a7336-237d970f9bamr253275655ad.12.1750745120065;
        Mon, 23 Jun 2025 23:05:20 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:05:19 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jie.gan@oss.qualcomm.com
Subject: [PATCH v3 08/10] coresight: tmc: add a switch buffer function for byte-cntr
Date: Tue, 24 Jun 2025 14:04:36 +0800
Message-Id: <20250624060438.7469-9-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
References: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MCBTYWx0ZWRfX62O6ecf86jty
 s0s38aMRQ+XPEoKjyyKydxxqGwvG52BvGMV+Kt+zl4nSprI6dLvDPjwvnkChP+fK7tZSjGWUFwm
 iC/lkh25GynJ0k/LaMwThXvoXBZxaPoEFbvhbDRgTUvjdU6HzcCyUNZ+P+pcIegN4ns/N4VLPmV
 wnlSNcAQra41OEHcWgyVXdUzAj89nARymNsiKuxc+oGrG0iHnO6Qza1fvDeZFf1xvibOmArtGQa
 XF9rU2GeUMtP5tbCXD5RTMzLb9Gq6O00CROst4URB/GdAkenwQCBy+HsnHDuLvXI3m61Oe5x1NE
 DsySr7ZnK8dr6Qa86C88klIbMlul8wlbw/JKpo08D4n0iUK+m4V6SHeLWbxquQFpYg27kCk9Txz
 Gwx3c+Hy2sUlNWjuUIz1IdJH1KsPet4ux/OyuwdTj/bBbfP5pR6aWTGz3wf5YRalhVrkLoHt
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685a4021 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=wDWrKlMOwBuH9W2KgGoA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: r4oMBBsOXttWAsK2yzXcNNSv0Ys9zzei
X-Proofpoint-ORIG-GUID: r4oMBBsOXttWAsK2yzXcNNSv0Ys9zzei
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240050

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


