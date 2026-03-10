Return-Path: <devicetree+bounces-273252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Isa9AD6Zr2lbawIAu9opvQ
	(envelope-from <devicetree+bounces-273252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:08:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AC024521B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:08:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED8EF301476E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273813C6A36;
	Tue, 10 Mar 2026 04:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VKZhGUCm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eEYVCiZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8103A785F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773115705; cv=none; b=BeG8v4VOSDl6J3wer4KrMCnNC9sAYY0gQ1Kwt5VFohJPgimEFnTLewn5ttezd5I98vo+zyUp7eCNzni93fa/DzheNkMuLfppPLI2ykTgM81GJYSMaawEdfvyZZyXQE/WpM5JIrDwv9jIICei+3VMtfOWKPGNqckeUI8tXrCqAIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773115705; c=relaxed/simple;
	bh=5WGjJQfPJnDuexpnhvHr50e95kQsz6NeADPV4jBOLw4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mCxGqMIo1TkReNF9VkVajCEchwNkXecvkKrktEemZCVz42LgcQXXykx/JnSVULweOVjyJ3GnAL4GQQrxZ0jvtTs6dcq0eFukHxO9Gk4P0cGIpii5TTdvF1ZXZkQog7d8aHUQKqNmI7LbgCz9+FgwLyNxIkJ8r7kY8tfRHT2gIFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VKZhGUCm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eEYVCiZW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EU7r2373270
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=l9mkcJOveNWh2bHKMgNj3rkVRVCgumwTi+W
	rvIaxz6w=; b=VKZhGUCmcGw8DCAOY/H6yEmLEqO2EY6D/++t/V61AIwhLcoHKOh
	kEmo+MjfEZDUbip/aZpqNBvWt1SRNmVkXJ+XpEsn/F76hS1CGju1dra4Vg/JPdM8
	tZpBWVUCdolBLSDula8LcFA86/RCb9AQEK47ZJKNNg4zF/YZEnn8llS1XFxBYodq
	D0yZq26nvAp1xZXroW2STj+jnefBWhaWdtTOMH8Idms8KQbVYiM+3t0GO9QqKTso
	spe5D1oNuLBJp7MCzy+t+XkM2652SrixaNOyoK5kWWjj92dc7ZC8s31zkcPPDsum
	p/M2ccSQOTxZ8FtOXD4qBBMc5vEArHM7RsA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cswwkjttq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:22 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae66ee7354so67664405ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773115702; x=1773720502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l9mkcJOveNWh2bHKMgNj3rkVRVCgumwTi+WrvIaxz6w=;
        b=eEYVCiZWlvON2WfPouR7Ex496mZj2l98q0GoWbJITskPm4qcfNSguJD/YA1cR6vxZu
         yskFa7J0RHjEqVg8Lpa9gszaU1c6BC/0M4QBkkY37ZGaVXtsKkDCVDz2nisuBJrTzmLW
         bQFi9/Ar6d5xFhKsvduH1x3TyBMknAQ8suYuv1fR/pzf/lbFzwEobLX8/NKQpOK8x+oq
         jJ/+IEIo0ROaT2To0WCcT6IOJCaua1uZ4uZAmEN+x5nHWyxx95300X2YrNs4qArELmEi
         4e3xkDqUFoKDmtyWy0+sHEXmLRusWq1rtgbNpxuwuiUt5FeKnrOlHidUwbFyC4G+mIJ3
         /pGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773115702; x=1773720502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9mkcJOveNWh2bHKMgNj3rkVRVCgumwTi+WrvIaxz6w=;
        b=Ffdi47uGYgqmKh0OtM9KiVVmY4Lhu7ejhcBxUI7uJjHtf3yvJWqo4f9Ip86dLuPjvr
         A2SpCCR2dA/Q4EqTMAYDj/aiMeCvC5V80+riSUaUc2xlzf9Q+xXs0USXWOik2aUqT6GU
         6Gqj6oN385oUlLiU3V7OyUEFm3nxXkJvpjYmgH9C2KS6UX09cJgImZr4XGqvsHBN31AN
         Gvg/53dBfQlrb7QSgQqdgf7IGeK6MOxZTy9FuYDGmqNnI2wyP7RMwHvy5pX7yBTA/4/H
         gOiNVAS+aP7yqsjrSsTOFwggiDEpowLkBAhQ7emww2Bmk64U5DANf2PP+ZjOK05BsoJT
         y9tA==
X-Forwarded-Encrypted: i=1; AJvYcCVnz61DJtqwVPfYZLsxTGKdi/82bJY2OChbiZxmw5xDHuV1kLm5vvg+sNyLtQpJ0+1UF7cdWdW+15Xz@vger.kernel.org
X-Gm-Message-State: AOJu0YwYAgLfahfiBPJCNMk1SiP46l7WHTlpMA+JPqXcOrO9ieJmN1jN
	Sv9wpzEJCoabipzhYsH5Nk/Gq6vMzzDn0+j/4OEW1/O5DP6mONKRaLbHNZrHCJFORMaOSqYpKpk
	jZNmjaJZFJ9yIxK5Q0Gn9kmmtETE/1eI3mfnqJ+eiU+SdQLBcNiAQeAacFc/4Yv2J
X-Gm-Gg: ATEYQzyD2TiLSGGpmsy/quDsT7+qkHMH5SWBNT+FLZJSpY5n7h7RVKERxqs/f8gDdXq
	abfxVadNqE224FVw/uWcMty8vkbHgUxTtUV6TcYOqi+qFm2ZWcmic4r9vMT5sf5Lh90Qk9KHZ75
	WXd5RYAYc5h5XatIAPCfBIh8OfcxkmpGcFBMFjQOf/FBdA1sX1HCF6ueEICuC2iWqsri2s4yJPE
	c2tiI0PEptI3v/uEtrfsT9JLzPBqrQtRH59yUF/yeIp4+6Rd6JWZeRHE8XMQjNUE8N1Kwj0ad4X
	OQYLITc5A6BXADhGBrO9+QRUX8wv91GNoi38hTkaepk+HUtMQhrNKD8Dadq1yAdhRva1P5KZPLA
	9fdyLt4M5+D8fy2WRm6ucERjxSH3NKdmIK5QLjF229jIUPRm4bUAAgYuCOY2Coz9jygxpi15DeX
	DOLyBx6V+go6g+l4dSOKOP5kW3oQtfP45p5WVO
X-Received: by 2002:a17:903:18d:b0:2ae:5eee:7a5 with SMTP id d9443c01a7336-2ae8241df4emr150168415ad.12.1773115701585;
        Mon, 09 Mar 2026 21:08:21 -0700 (PDT)
X-Received: by 2002:a17:903:18d:b0:2ae:5eee:7a5 with SMTP id d9443c01a7336-2ae8241df4emr150167985ad.12.1773115701065;
        Mon, 09 Mar 2026 21:08:21 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aea4eed00fsm9797975ad.80.2026.03.09.21.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 21:08:20 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: sudeep.holla@kernel.org, angelogioacchino.delregno@collabora.com,
        viresh.kumar@linaro.org, neil.armstrong@linaro.org, festevam@gmail.com,
        Frank.Li@nxp.com, danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
Date: Tue, 10 Mar 2026 09:37:48 +0530
Message-Id: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cZ/fb3DM c=1 sm=1 tr=0 ts=69af9936 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=nkOEx1FirZyerjKjVqcA:9
 a=zgiPjhLxNE0A:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: e9A1B_-aALvaQrRS87Q94LlxtWY0WDOw
X-Proofpoint-GUID: e9A1B_-aALvaQrRS87Q94LlxtWY0WDOw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAzMSBTYWx0ZWRfX1fne6f7JRPzb
 AbjgbhzP0g6389jm0JtaKE/TJsLtFtvBW5ZTLvIcHR1JO/lqdQub2WweqGSXyZazBOBd9Q5vxIQ
 Pns6QKAUs346wg/XXpm4QxJnHWNRSxgfyqpRm6Ipwk+iTsFGcnuhC4lazH3rd0tZBgsJj5IVvAZ
 ugG/NYYotCOs1pzuCdFki2DZ2bVI6gp2nmfTVdjyXu2bfi5PK8H1Wqc1nxW//0ZJKJnsmRtVMKY
 wnAPkJ5lyyWZ0vSVb1SgeZ8oui6dun0KJs6UAJUWqNeEMY4KAsqQrO9x007lWaGVgbdH8BJALG8
 ihgEfwgssW65w7ockEtj94efsCtIrqmZ5wIEX1IT28EA9Ca7RFoDdoMhhnaItF9FJYlV2bxApPO
 Wao6h/dM1IMgfX6nWC/a3OccPVqyVRv1c7l89T6vW7Ymknt3DwkSwFRvkEv/OS5bzzxE5Bsh4H6
 HyrrahVTHoOUSc1q+8w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100031
X-Rspamd-Queue-Id: 59AC024521B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273252-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The generic Qualcomm Oryon CPU compatible documented in the binding
doesn't account for differences between core types and has been
deprecated. Introduce core-specific compatibles, based on MIDR part and
variant numbers.

Glymur:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x1/0x2

Kaanapali:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x2/0x3

Sibi Sankar (3):
  dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
  arm64: dts: qcom: glymur: Fix deprecated cpu compatibles
  arm64: dts: qcom: kaanapali: Fix deprecated cpu compatibles

 .../devicetree/bindings/arm/cpus.yaml         |  7 ++++
 arch/arm64/boot/dts/qcom/glymur.dtsi          | 36 +++++++++----------
 arch/arm64/boot/dts/qcom/kaanapali.dtsi       | 16 ++++-----
 3 files changed, 33 insertions(+), 26 deletions(-)


base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
-- 
2.34.1


