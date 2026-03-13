Return-Path: <devicetree+bounces-275120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PkCCWXps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:39:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B52AB281977
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 498BB3237DF8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E5D387346;
	Fri, 13 Mar 2026 10:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gfz7SZ2b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MCjHwZM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DE3313E38
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398103; cv=none; b=R2iwFWsNXdu0ePEKDV54zHdw8RsaCdDrHiiRz9JkCcDpbMGp4/dxVv+3i2m8kvL3OaYg/rcos4x8jkZIANtUo24BTZUNO16+j1umnd4cBoSwRzE/Jq4quWfb8gn2jhYMNTeqzTY7WGJkJEkstIrqBkzjOq5JuI4uQbPUbvYZIEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398103; c=relaxed/simple;
	bh=oxED7Ig/Thb/Zs8bS2i3ciRUM2bvqJDPr+Z8MwgKLJs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=P8A4xF2DSyCVLLf9vyCjVEIGukIOG8M+inz9boTYFnRCOFsdQeMalLNF87nou5U+vCVmwFkRucwhRXGckghvAZd9xlyo9bDJ92qlEOKp45TXSNVskRD3yiMaLIzdfC4FGNU/K+G2G+co5LniwnrBSql2U1gURZ9waBRuzQL0Auw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gfz7SZ2b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MCjHwZM7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7JNAv238441
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=/WDmAVyTBD0jPD6jpPUvpW4BSfdKYzuM4r3
	i1rdbgyc=; b=gfz7SZ2bfMoM6rp0Ol+hCCrbdXR/vEV3eu5eqi6dpU8grDRBWz2
	id0zN/Iw/9E+e3/w4v4642QJQ26tXTamqcyr+q2YhE9mUlYnP8ud6UuklzsT2z3P
	o8keQeA5EzaRAWxLUHDDCo7paI+jtoFXiZf0azHs/Mg8eVzPBs3KsqMToTz4V0c/
	jnubkHuiKHuPW8SSN9uWAm0R5qyH+snJ4IjLAVgdx6qEeac0wmatQW1RJC6RBoGr
	sdzUbDtQObIOEX15cIflZdFABPEuu4Mn8xOM9u8uhxCurIL/p3sy7KBvJS2NeUQe
	yXxjyFi8bBS/yGx4I8WvcFFI5MUO94vhCxg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d8pq9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aecd4f7c37so6838785ad.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398100; x=1774002900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/WDmAVyTBD0jPD6jpPUvpW4BSfdKYzuM4r3i1rdbgyc=;
        b=MCjHwZM7eAYuFmIvxjIojGG+tHnFWqel4/QQdC4j8VUDHUymNtUFNilaEuhEzygbPj
         10/PD2HzXqCxDm0GtFt6aC6JSynC0HLPW7mZMcUjC4DLI+/32aggWYTD16kTMiET2HZd
         ZC1DVY4wezx8pIDn1WUQi3l7pScgGxSsua9lJCUxAmuV0QR59bx1OI8EUUprCY9lFN2v
         Ct9+2+T6L1F1d3Lryrv3Qx6N4WqCB5UrPcPn+2/QbDwOMLWWpjqo+FOgdHzeoeATxTc0
         XQ03J6tJny1UvE9JgMIG5ffVKxLD03JdJn3p40sdVTy6tlN/osX1SyMi1tahJjH5kk8K
         ou2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398100; x=1774002900;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WDmAVyTBD0jPD6jpPUvpW4BSfdKYzuM4r3i1rdbgyc=;
        b=krkh1ukoB7bkbtUciaDAkxcRW28SKKBfalskRH/8kEXEpNw/ynuocQyntSqIsxahuK
         LxfkL9FBHi5aYXp2dQE2ucNVbIp7OCyV5ov+7fa5fUQ+tnJamWZrLHCD7Di9XOH+Hgc0
         I6s6iQukdSPh5O34x+MyhkO/DUy/oksONILOH/x6Rl74LQvIohhr4gHj6GjYBTihHMyn
         aWje1cs/TjjH5IoHBYD0IHiugMUByOTai4LdRT9wnvdxrU3RITDYDxePi/DaQVzR4fTp
         Dg/1lfyAArOjMDIHLawWga1iEtfN8omgt/b+ywwwWt/GulboijUzVG2ARLYBnvOeDIDr
         cgzg==
X-Forwarded-Encrypted: i=1; AJvYcCU+JKp/6d3jGke9Ed89P6ZNFH8LqdbDbKDBobmx7hCEgav/WCNXehhr/LISK8etd2tfYLs5aEF8NwEy@vger.kernel.org
X-Gm-Message-State: AOJu0YwiSDgvcP4e+715EzV7yyBPr/Jnar4P3z/3snvIVNAwKDVJLgNX
	lQV+LXWEkoU0juqwTtOOEM3UeivFRzgX8nG5dRi41R4RILSjbCOz13ki9tmRL5yqOX+9eI7Oa+F
	hcyLMWg1fOz9lO+V5hlHZmkF13V0HU0wPr7vidVKKJBgDLiv/9FrQt7Z9ylvVcw+e
X-Gm-Gg: ATEYQzwVtyIpFbDbPCam2HVtwv7OWITfrVy0PBu8comW1oP7ZQCotKh/kPZb5NA/Lhn
	4OsfcQoIavu3BY08dW24w34iaPmxlNoRXGt7KQHv5At5hK1oCV8V8L3CnKYtqKK6SVufswmfX/y
	NvV814yyZg7DK0dwaAH3MtoTjTVCs9NKrcJvRACvQDuVhYUoA+augteMGAAimlIXCkzC9Uz4MSi
	W4g8nOdytmLJo3bu+EVaQGTBAZHDx5FgOrhUvG2lW4evGO6bor2EUnvKEtgwYQxf4LTSqn1NGLo
	oZI7SK+LXteDRvD71TlIOhl3ZMbNMlQC3+M3lRjbCZSo/YYte4JgkVCSire+rqKKMNvNpFd1HwZ
	09UNXMIS5vAl8NHz/qtLtvzQdlsfPRHPbjUAOAcPM9wMLgFtYZyrkU3nGjNsaR3SNvxmz1x+nPu
	TABXqxzt2PRsLN9daQDGvzSIP8I2+t/L2AmmbX
X-Received: by 2002:a17:903:2b03:b0:2ae:3b14:6401 with SMTP id d9443c01a7336-2aecab078f6mr25789895ad.31.1773398100534;
        Fri, 13 Mar 2026 03:35:00 -0700 (PDT)
X-Received: by 2002:a17:903:2b03:b0:2ae:3b14:6401 with SMTP id d9443c01a7336-2aecab078f6mr25789605ad.31.1773398100051;
        Fri, 13 Mar 2026 03:35:00 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece84d57asm18120745ad.85.2026.03.13.03.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:34:59 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: sudeep.holla@kernel.org, angelogioacchino.delregno@collabora.com,
        viresh.kumar@linaro.org, neil.armstrong@linaro.org, festevam@gmail.com,
        Frank.Li@nxp.com, danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/2] dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
Date: Fri, 13 Mar 2026 16:04:37 +0530
Message-Id: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: hG5sC_lqfLvl3bf1-hJB4MujIBGuwASV
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b3e855 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=rHqA3aml6uW0CPxFz6gA:9 a=zgiPjhLxNE0A:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX/i5vaifBr0YF
 jlwGy1hxpytorlyJfRnraXBjFCgyTOHnyoRuSt6JJDJ03ee8gFxkT799hxz/3Xv7ZHWCVSkSUWy
 rVd6mgOlU4n26PYbnV3ttrGi1XYGqBXxzZK8PooluPv0M3grdroH5wPsxPoy7DggLjVbYFeTr8J
 EiNxVg98ogQP/FyHMrHog7/33k00ymaoj3mz4tswHsSjj960tsr0BswqyKoCsQoNEgOvi5hAtbX
 RS4EqrRNOjJFZ4ChcVipuUPsm6CsQrXxrdhC6rA6fWzJ7VGs2CS6sH0R1ugcVYwwSk3R7wq2uRd
 U2MysXC5QE6wqtL2uoF7p9BMUGjqIowg+t14sUxyjxbz3TAF3TuxkXP+NrUwXT/zA++XHJBpsdw
 9B/hMrbcHnm48Ih1yjjbGhic/5Fj9UOXizgLL1OeYvhhaGdvvwTksqyWuK9R7w40cFlw42ZLPEP
 S+3VjC3e+ez0zLHPHEw==
X-Proofpoint-GUID: hG5sC_lqfLvl3bf1-hJB4MujIBGuwASV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275120-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quicinc.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B52AB281977
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sibi Sankar <quic_sibis@quicinc.com>

The generic Qualcomm Oryon CPU compatible documented in the binding
doesn't account for differences between core types and has been
deprecated. Introduce core-specific compatibles, based on MIDR part and
variant numbers as listed below.

qcom,oryon-MIDR_EL1[PART_NUM]-MIDR_EL1[VARIANT]

Glymur:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x1/0x2

Changes in v2:
- Update commit message to explain qcom,oryon-x-y  [Krzysztof] 
- Drop the Kaanapali dts fix [Krzysztof]
- Link to v1: https://lore.kernel.org/lkml/20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com/

Sibi Sankar (2):
  dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
  arm64: dts: qcom: glymur: Fix deprecated cpu compatibles

 .../devicetree/bindings/arm/cpus.yaml         |  7 ++++
 arch/arm64/boot/dts/qcom/glymur.dtsi          | 36 +++++++++----------
 2 files changed, 25 insertions(+), 18 deletions(-)


base-commit: 5c9e55fecf9365890c64f14761a80f9413a3b1d1
-- 
2.34.1


