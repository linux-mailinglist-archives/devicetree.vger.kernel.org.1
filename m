Return-Path: <devicetree+bounces-273804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMqnJEDUsGmLnQIAu9opvQ
	(envelope-from <devicetree+bounces-273804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:32:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE2225AFD9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8EE93031215
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1903224A076;
	Wed, 11 Mar 2026 02:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dM8fBTNK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IhXL5IS/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2FC274B23
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773196349; cv=none; b=YpBDejwExDqjRRB508aYCTIFVZvkZ4bxfCn8CPzCDz1cMYLfnWZLl4FVhtH7NTzAkwInUj6HYR3jrW1xbboKy7sFKUeAc/qgTMMhgmZ5nM6uTVbM77vtuCUJCt9deUlvnxzio62dSILbxRXw5KJtB8cObTnW/QvxFkaFf1DYPXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773196349; c=relaxed/simple;
	bh=/WnnHz20JL4LJIpw3kNdPIqRr0TwffT1dw5WMebNVxc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Z8ioGfeEoSba28TfEko2y4rWDBYqJHb3WogG4TLW66uwIzBgJiSyH+ukjou2Uay5i3xKYmpXYzpQVVF2lNptpAlmN0RhlDtqxjTlpWpihuvLGN8dXAQCXi7TwfAtbi1mfwmBjvm28fwcRPrfLyepuIe94HfXa+C3Y2WBPL20DK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dM8fBTNK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IhXL5IS/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AIu6OH303796
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:32:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PvMJaoAUFTpeCu9LcxMc1h+yA2zabj4CO5K
	7XnJbko0=; b=dM8fBTNK8t3EFPdebFQMW3nDlVpFHEMaNnnhaNO1KWiIh1AIEsC
	/8i9ZSCSqVWJFs0TWvPzDWSQmHznArYdvmFzjYTG9GQUYTzDjhXusenPnffo+k3h
	PyuWL9Ui0OKdxnafruqPgp2+fvvcyrG5Fz1KDfH/ZUD+uha+RaehbaHpPMnPwaca
	R/CVl+B9rlHHBpBvUMZXoqvlfyrwmNQeCouZcNt5P9PzasO+lsb4hRKD03izWiw5
	x5YEVso/DbggM9ruMfdZw02aC20tE+/dWCsfrFxCvQW/Ad19J2xr6tJrpu5Nlrkq
	2p6zRGv9bnF26H2TnAtS9975LLMzx6SDytA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf39xr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:32:27 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-82984060901so355657b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773196347; x=1773801147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PvMJaoAUFTpeCu9LcxMc1h+yA2zabj4CO5K7XnJbko0=;
        b=IhXL5IS/BQYZgJA/dh+Y9UUqk7bO0Je0UXKS1C4fLAe/w6D0Ibzgc6bIW+EB7H3EvR
         0FkVZVaUXeURyAEAfnz5tkILsoRkFz5cpdMqZGmYDYPJgltyX59vtrtRvuR6JSD8VrBa
         LzvW4Gdjlc8j9JUAKAcqq/NIZhO9SFs8BT3hd+Llmj9IbALhvui7fKleN3uOfRqQswla
         tH99osnqsrl7fZ84d6RUyuw+/DasH88GvjQk+p9nASiJuuuSod5vLg7/2o8GMuGUcf+7
         lNZ+/cIiJbtHgmerWsJBUYKJGYoqxqLOJtVoEPC1sTpLos1KRssy+bn4H0n790YQuSXc
         lZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773196347; x=1773801147;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PvMJaoAUFTpeCu9LcxMc1h+yA2zabj4CO5K7XnJbko0=;
        b=L6W+dKgWQIDsFQWZcC/JmyRoGUG2u5g03tN5sc443uLiYWVbXf0WhwS1SHp3Gj30+m
         JFCu/gwIptvghU6YOpVQTzI0ZQbXpEsW4cXuOW/WVWhswmcEvxaJTxLOY1/o674Nc3uJ
         Dsm07Ydi82XvgTT3lHt1CvDHWiUu1DUWCldg5hhremGtuopZI8NrsMNALO1ZfzI1MQS6
         8g7TaBw8Oj/Jyw61bsyoRDLV/V2ifajyx4CUmYqpg7m1Ahx6T3B6ATC5NvIUIIenC5z5
         P9NSTUQSMf6nGt+cxvOhca3XzRilaNhi/CKGyH4ZCEc3rgZ5/nqvPF/4TnKAr8eMFRaE
         n5WQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxXdPWaPqqRW1vU/fWoCJmsDNtFdlLcjIJHezk40RidmlXa8AhqaZIyE8fC4D1TYP9KnhDQNLw8jrz@vger.kernel.org
X-Gm-Message-State: AOJu0YwRfL+Hzb6J2XdMfeJUoI7/tlZl2IxTG1d+UNRoTc5PjMerS1wc
	sVWQtUVe/XoZY6rQBTj+KYnqh1a6mbTUYHtF6eCJoT2EZH5M1C0vY93JnHwHMn/RjV30KEsHHfo
	n6mx/iWGbwr1C5OaFRoiEAloYGeIFLVfW8lWIngG7MTJPrfghQjTwk9FA38WsVUhl
X-Gm-Gg: ATEYQzw+8hV2e623PkgzY0Rw9IEKPh9Xs8eKpI25Q9djzgYDiDDglpP3S3uBW7bnum2
	QlHOYLNphlADWAs2jccu5aSE8qlEScOCLfMJf3SION4FK/GIuw51Hc027tEFuXZ+nnpb6DsTaet
	Fr1KX6e9XcoK9aU20zB0zLax1DrY/Og/BmfS1BbO7bU5t1viNyPrgLC2tG2MkKGEAXpi18XpRGG
	puUxuLzTzdeflH5jQ7Oq0HQN4QNlGt6pJ+c/FTuepzF2HAy6dcL7RMh2+Oc8tzkl9jfkdcIzs86
	FbHok6PanczUlCWeT696Fr0w3WFdbHLlPRo8MFlcJJjvJFhYdynmDaNOTmhKE8NDLnL9ePBBol7
	pHusYujr+cPbwwFOkdusS/RYAQq3Exy3vgmd5NlyMlvUoDBTf+eIPrL+52g==
X-Received: by 2002:a05:6a00:91c5:b0:829:f775:110c with SMTP id d2e1a72fcca58-829f775455emr649013b3a.30.1773196346535;
        Tue, 10 Mar 2026 19:32:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:91c5:b0:829:f775:110c with SMTP id d2e1a72fcca58-829f775455emr648987b3a.30.1773196345895;
        Tue, 10 Mar 2026 19:32:25 -0700 (PDT)
Received: from hangtian-z2-2004.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d15sm680869b3a.12.2026.03.10.19.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 19:32:25 -0700 (PDT)
From: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: disable wcn6750 and wpss
Date: Wed, 11 Mar 2026 10:32:19 +0800
Message-Id: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: oQVTPp2S0QJLRiFl24nZvyHpfMvmAO32
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAyMCBTYWx0ZWRfX2inBe0CahXIt
 hnmI7cV3/Otc+JRZ3DE2V1+JV8ASbrqqPnuOpA+s1SeSnlab+FY9usCmB3xXeTZfXGo65NMV6RX
 dob4F/85Tf1OSZAFPJaqCbSdmB4V3jAMWwioWW51qW4XLV29sxrTAW2eqC/LbkvU5zbLUAJHljf
 p0SA9Ogg3s5RUiEfv2Pkw7K2Be4Bcnnpln+lMRoTCyUs8oQMFRp+mrcjSBRab/4l3C3BDPh6F/v
 HGiQ/kHvpxSPpt8WdT6iys6jQEvPWiTpPo4RRVaqoZ0M4J3aFOFU5p5g5IO5h0eaBc8NxHRtSUk
 a3CGIzrcjHqvnLSy4XASeh0f9piO6vFbre8t/vduXWgEvjxm1HQfDWeMyBDfA4BMFOjWZP5DDbp
 kF0svLNZx0y68drqVdvsaGzo5ztLG6OJK93EHvG4faH2b6o/fABLOSrumWF+MjpYeScRgbB1pkD
 cOCPdc+hIhD6YD0vFVw==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69b0d43b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=o7Z_n79bENMEhQF7KSsA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: oQVTPp2S0QJLRiFl24nZvyHpfMvmAO32
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1011 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110020
X-Rspamd-Queue-Id: 3FE2225AFD9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273804-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hangtian.zhu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Hangtian Zhu <hangtian@oss.qualcomm.com>

Disable wcn6750 and wpss on industrial mezzanine. On rb3gen2 industrial
mezzanine platform, pcie0 lines are moved from wcn6750 to qps615 pcie
bridge. Hence disable wpss and wcn6750 nodes for industrial mezzanine
platform.

Depends-on: [PATCH v4 1/2] arm64: dts: qcom:
qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
Depends-on: [PATCH v4 2/2] arm64: dts: qcom:
qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node
for PCIe1

Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
---
 .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 2a2b7c2f9210..6594c7e1ea93 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -32,6 +32,10 @@ vreg_1p8: regulator-vreg-1p8 {
 	};
 };
 
+&remoteproc_wpss {
+       status = "disabled";
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -280,3 +284,7 @@ pcie1_tc9563_resx_n: pcie1-tc9563-resx-state {
 	};
 
 };
+
+&wifi {
+       status = "disabled";
+};
-- 
2.25.1


