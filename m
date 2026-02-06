Return-Path: <devicetree+bounces-263466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDtoKnsohmmSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:44:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 525B51014CA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD0743038F21
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42960423A70;
	Fri,  6 Feb 2026 17:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6Uyb9tJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hv8nWaRt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A41421883
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399737; cv=none; b=IGz+SKLPjmsZ5cY8FQ6R1z7ILftc91cs85sqTvj/QwJk7DKiXqRJVZ3DHWPi5TIyUVhaNcXSUbym3sHFCCa6KSfnhf5fuY3OJgY96q3uBYXEi7VS26BXLTyF45lqd8j5SasbojmlbxQsrw+HbqzPNe9FSmJW5EVUvsR4ZQhzuXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399737; c=relaxed/simple;
	bh=zt3e66ncyjicUlmXDGBlHp+YASgZdIcC8U/UEbDetkw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qaRlkSTNkDi29ICBkPSjtqMVA6JfLGu95M5gdjK5Y8CN4K1WRIs3y9WetesJg/JG33AWlmYPgQyF+Xs2oEn9zjBQQJIxOUfBLlktK1TCtL8YO7m2XGcXQDUTIJ+V5F2FKcKoPnoz4/qMozSswmcp41ek57eQXOFmBCBU2fXVYCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6Uyb9tJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hv8nWaRt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616Fm3fT2490558
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:42:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=v03HhZj39wv
	EYDoOJkcbNMB4ICiMOzjVN5b8IxJ2P4k=; b=B6Uyb9tJfQToSbFaaJ06iUO01i1
	rnMTwyeXuu2Jv9R9jHN8HOgX7GpWnzGrtW1H6vTxhJVaEBI4NqiIDd0dj+tjFpqD
	LI/vJ8DFhR6JULhdlZkFBArbvR9eKbPZ9edke5yvP+Ya/DxfP7aEWeEuinpG5tmG
	FC5HFrFiF646I0nhLs6vk1SL1LH9iDDlwoYCNdUv8jsBJFbcply9r+i4kdO3yV3f
	WWhwyy+b1/MsIFm+ruOEwUNo4hccaZTjcIK2LdaDt/+HVSczBhF+4n4FVdhONFw1
	f2MximB0RzrAjNmNKHPe4xRjlpB53QgJoFs7Sx2OAUzC5U8udEQe9wc0eIQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c9c1rqg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:42:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a9474f4975so12464505ad.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399735; x=1771004535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v03HhZj39wvEYDoOJkcbNMB4ICiMOzjVN5b8IxJ2P4k=;
        b=Hv8nWaRt7c6GH2d+R8+ioFS8RfG4yeV3QoTZN4HwnHJh2mSFDbLhZo5Q0DmIcyLFUm
         1BNR+5eT525j/ok2jYTt1Z84rh5le4hBkpcUp+SJCQwUOO8QkAk+e8PBL0t68elzpxx0
         nNqGXrl/qyP7gslZi4vsPhnjk4MpUL3oOgVkZ72JSTLDxuMz4U6peJnZmWhG+Rbcb1a/
         PtPxGTivdsBrbPpuSGIfxLfqPqWXOFy+GWTfeL7OhRS9TyD0mEYuguRAi1pYbUtfq41Z
         h1PcAG28gsKFOJKofx6/Fwtd0frA1fN9B8P5NNftYNXFzV/ykM/8++zrCYLn+dYpjK5T
         ijjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399735; x=1771004535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v03HhZj39wvEYDoOJkcbNMB4ICiMOzjVN5b8IxJ2P4k=;
        b=qDkTfxNmr+0cEGpZhYGA3LawwgPY1Vx3NouJe4WonD4bQnNOvdZ+PdCdGd8slvAPop
         QWswCW0Mpztny73m/bCn46cSZhEYNZUodmNFlEcIDJxSc6rOkL5I8ETarX1TaWV+0SUB
         sCUBV7L+k9imm2u3oZRqYzx7EFxjFQhRqjBOfZDHrs25FNK0DcPJVdMiByBOVP6HfV4H
         LVV06AcN0vNUrU3xsBUEjU6Mv3JApgtR2kplhVp+dOU8ngfyjNi4wrQ5uBZxu6mmJYPr
         9KhY+VpyDgbDMMk52CJ0ECNNteVoBxhE9GjkeZmjY2NxOJpjYP7U4/OnxT2LcTYMvQBr
         LwwA==
X-Forwarded-Encrypted: i=1; AJvYcCVIqsHJHALzmnEsBBeSx1AMzmKzjX2Lr4qIvFSmqo7mGpj/Rv9NYD0ObtdH0T745M07wYsnk7V0dc2A@vger.kernel.org
X-Gm-Message-State: AOJu0YyW1wNAnkoqNTiJGjIda7J2v5OOGnc7s+PwGmo3QjpWpI3mds9z
	bqnw4BiRe5cblUpvtb4TqKbkdERI2lUK5Rs6XjMzH6eV8cteZIZRWjT8U46osMmq76IGbX16tfA
	v349k22PTPmc93wKRa27+ouNsKbvl8uyrRieAOSOoTnrhwJKN2/8oaZiJ8oJ+8w9B
X-Gm-Gg: AZuq6aIEtYeKZ8PqUbF3MORczoDsLjq9e8guALMCnzUT0XU1OVqWfAMQ+DP5uQ5QNDL
	gKjYQ/IOxucCJzix0mhN3twdABPBXJoc6yJoKL7CzTSj52aOpJrKjgucBSHkB0v265XwUZIbsEW
	Q2a5LjUY/XKDHi/na0lRUndV+XOID5ReiOy2+L9M1dUM3IG/lzxHe/AAmY/isVTjc+dqeT03712
	MbaQbiUTLwFUQpMfcbVqIWQ7FjfQ/469DspuApgeNGozSBRVolPV6fgZH5K2DkYj1W8P6zPSYDa
	Q8y22KnRkLTTzxYvutK43WnzHybXQs7J/vI1WXzp5BMmc0Ngy7K54r9VkqegemsvvqWxWg1dzlq
	bxf7JguCF9xpkLkfVkLkCIkG1QOmQOtrwKVavXfAi8Fw=
X-Received: by 2002:a17:903:120d:b0:2a7:b039:4b52 with SMTP id d9443c01a7336-2a951633beemr32647565ad.1.1770399734590;
        Fri, 06 Feb 2026 09:42:14 -0800 (PST)
X-Received: by 2002:a17:903:120d:b0:2a7:b039:4b52 with SMTP id d9443c01a7336-2a951633beemr32647305ad.1.1770399733983;
        Fri, 06 Feb 2026 09:42:13 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:42:13 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
Subject: [PATCH v5 07/13] soc: qcom: geni-se: Introduce helper APIs for performance control
Date: Fri,  6 Feb 2026 23:11:06 +0530
Message-Id: <20260206174112.4149893-8-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BbzVE7t2 c=1 sm=1 tr=0 ts=698627f7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=NwCh5GMA9Nt760FYQHkA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: -bLy1weG37uBI6NSsG2_aoJklQoFkpKI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfX4QN1AVpptq89
 HLoUY5tk/nT8Trb08G0kfxgit+2hQhUmiIHDKO0QomldsJtWGcWrpbCEL0woXoXbCaT6UGg2bcm
 e1vtajBVRacGgMj3CjiXmNGHQnkdQAOgdKiM8aBxzK7a8pDX5Lr2rYKso8xzp8pll4hSqT4idBO
 SylWvaJZP5wVJ1TaiTf/bdQxHlgh6Jagbm5q2edxJx/+Bc5UxgZrVg85DaTrMwCqlPnq/DcbtF+
 gfCtF4J2oQZQnZG5totV4mpBNBRIOF2MCVVkfhrxGOEx5iUWHdQ2Y6Gj5ra/023wC71SMLDb81x
 GaWYBIlFxdYo7C8tVhvxzmRM+RnDI+/K9nSSkiKYbAg+CT5cg5SaPPDF8HU/WEpldY24qn679+e
 Fm1cNn3dssfHMu6BU8Vpg8fyWmHHLXLhnSKxkwE6thwZSqRHxXZ7Li8hqISfChSc38yin7jZTNN
 ECjRqt1dvQ5Cs+3W6Ng==
X-Proofpoint-ORIG-GUID: -bLy1weG37uBI6NSsG2_aoJklQoFkpKI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263466-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 525B51014CA
X-Rspamd-Action: no action

The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
manage performance levels and operating points directly. This resulting
in code duplication across drivers. such as configuring a specific level
or find and apply an OPP based on a clock frequency.

Introduce two new helper APIs, geni_se_set_perf_level() and
geni_se_set_perf_opp(), addresses this issue by providing a streamlined
method for the GENI Serial Engine (SE) drivers to find and set the OPP
based on the desired performance level, thereby eliminating redundancy.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom-geni-se.c  | 50 ++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  4 +++
 2 files changed, 54 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index ecac9006acdd..18ba5f9bbea5 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -282,6 +282,12 @@ struct se_fw_hdr {
 #define geni_setbits32(_addr, _v) writel(readl(_addr) |  (_v), _addr)
 #define geni_clrbits32(_addr, _v) writel(readl(_addr) & ~(_v), _addr)
 
+enum domain_idx {
+	DOMAIN_IDX_POWER,
+	DOMAIN_IDX_PERF,
+	DOMAIN_IDX_MAX
+};
+
 /**
  * geni_se_get_qup_hw_version() - Read the QUP wrapper Hardware version
  * @se:	Pointer to the corresponding serial engine.
@@ -1093,6 +1099,50 @@ int geni_se_resources_activate(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_se_resources_activate);
 
+/**
+ * geni_se_set_perf_level() - Set performance level for GENI SE.
+ * @se: Pointer to the struct geni_se instance.
+ * @level: The desired performance level.
+ *
+ * Sets the performance level by directly calling dev_pm_opp_set_level
+ * on the performance device associated with the SE.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
+{
+	return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
+}
+EXPORT_SYMBOL_GPL(geni_se_set_perf_level);
+
+/**
+ * geni_se_set_perf_opp() - Set performance OPP for GENI SE by frequency.
+ * @se: Pointer to the struct geni_se instance.
+ * @clk_freq: The requested clock frequency.
+ *
+ * Finds the nearest operating performance point (OPP) for the given
+ * clock frequency and applies it to the SE's performance device.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq)
+{
+	struct device *perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
+	struct dev_pm_opp *opp;
+	int ret;
+
+	opp = dev_pm_opp_find_freq_floor(perf_dev, &clk_freq);
+	if (IS_ERR(opp)) {
+		dev_err(se->dev, "failed to find opp for freq %lu\n", clk_freq);
+		return PTR_ERR(opp);
+	}
+
+	ret = dev_pm_opp_set_opp(perf_dev, opp);
+	dev_pm_opp_put(opp);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(geni_se_set_perf_opp);
+
 /**
  * geni_se_domain_attach() - Attach power domains to a GENI SE device.
  * @se: Pointer to the geni_se structure representing the GENI SE device.
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 5f75159c5531..c5e6ab85df09 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -550,5 +550,9 @@ int geni_se_resources_deactivate(struct geni_se *se);
 int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
 
 int geni_se_domain_attach(struct geni_se *se);
+
+int geni_se_set_perf_level(struct geni_se *se, unsigned long level);
+
+int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq);
 #endif
 #endif
-- 
2.34.1


