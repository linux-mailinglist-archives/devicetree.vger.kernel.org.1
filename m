Return-Path: <devicetree+bounces-274010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFLfJ8xIsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:49:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7E72628C5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4224B32964C8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E74C3CEBA8;
	Wed, 11 Mar 2026 10:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XCif0+eq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hIDyn8hL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734173CEBB6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225375; cv=none; b=qpg+amW628+Y9yaxz/ZcZSNlUfslo4s+03xN8zPdjEJdJrcw80NIHozkJ9ILcjulo26u9Fer2trX9lzpPKx6ZbRK49TWCYOMgUiEfcUm3WY5Vxa8JUw6fK+qhtZihsX6ZWnEDS4zyMbsPAU3joU6uzx4REDTQGxer6lgh1V860E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225375; c=relaxed/simple;
	bh=V4X7SQOiKwWP/Pa3MnE0/qdRZc1SxulGZjvcaX8/aAg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kqqBUoP0cLAkjQjJ1aVNnQl1Gljw7QRlcXiAwvhvASKgSwWCq25bB15G5pbv1n+4AKXTVPx+YaCqFc2hrPk+vtr9MMt9GFMlDrpJyVWeVFDBB57q3HvfFgfTIDT6KPWInFbYALPxUzJIXDMSsOxxRJmVIS2lC9IR3thEirpvPf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XCif0+eq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hIDyn8hL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B7br661265877
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:36:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tpHlvfxHMXkkRB+NxUG0hcSQhE/rKGHsEhV
	os89NpKQ=; b=XCif0+eqM2oNx02Y1VJxOBs5OCZ28od8dKuytWK0Dieo9Ggq480
	mznpFLMNYUabdFGnEZ6Pj0q70O/EMgdbdPdPW5WJpEymTT64Er+XH7fZrzTO0AKt
	tayaIZrifKaBkOMGLVnskvrmZTqxJX2W9WPf5jbsIo9qdhlpunuHzDjr2qMtw/le
	HRjyR8BBDqurcLPRz8Z8dMDNWpe6jR5dj4kHmGr+rbI77LijC5XZWOUMRGO2CaGb
	ijrA08AQpi6fW9orwpYvfQnu7WolfPe3tbQNOY5FbhPkvlhm0BdLn+O/YMn3Y8Um
	AR60ovqbxlT9oTysmyPXSPYY/WUW7+J2NTQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctpkfkk23-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:36:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae49120e74so97571355ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773225372; x=1773830172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tpHlvfxHMXkkRB+NxUG0hcSQhE/rKGHsEhVos89NpKQ=;
        b=hIDyn8hLvv7MFFcaUUDJdeIpGXlJX4aE62ysJvt3j8a1WQ+31MHSEsYQ1svPSN3rw1
         Ww7qCC9rVV5jCC+Ak8tOVNTtvnk/wO2GVh4zXU4UezpquXbZeAPECpxG9+ke9Uh0DGJS
         +lTz5mx2zzz5tO3UdKgW1OxH2wDn0jZTdZ/DF1NnUOsz1N156sNCaMy0/XXmJOaXcFs/
         WLheANabRVXEA8nXsvPJpc1XMpc1KOZRyjzZM2dRBqINh4ooYVLAql0T9hh51awe0gGF
         qH1WXYhJZ5T1jVJXjHwv//z8yVqrts0BMGzXdpqe2ELPE8jEvkamtB1kF+ld1jqRyQJO
         S9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773225372; x=1773830172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tpHlvfxHMXkkRB+NxUG0hcSQhE/rKGHsEhVos89NpKQ=;
        b=qZ7LU/4SRRF3fCbDw4QwJpNZgBtfi3h8e1Nqn08SgCVbo+3XpNkkf5Vimj6F8p3RRg
         itpTDHiluRX1qoxg66rND/q7wSFZxT7v/1g3jzkmNvyTYNldjIDkypVZKDLPiuk6toSt
         ia/TWZS3Qp+wUNw8wavsaav3Y3fEV8U952jEHi17qpX/MbDIE1IkaS7E+0EEuEFO/vzi
         elaa9dFgs5HmzerdE2oN82oy019tgJ08DjrIIQ/ZmHwaTF5TAbi7Pb73y4j7RDR9aaml
         EBlzdsIVurjEo2cqNuxUeKRUjtswND9Fx7BBJa6IFhyEGqDcu+9EqM29eoT7d5vCy+bN
         HAlA==
X-Forwarded-Encrypted: i=1; AJvYcCVEEG3LiwBtR1u2M902ZplQAtbVyiASk1Z9JMWTIPfcYuEizq5/GOtrB3qaaST8pXbsgSFkzRKGDenR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0CWCHSPkLrdyb3KUMsYHrSW7rnftScJPeKI9VdiK5V6g5mTIG
	/k/boDQyWyB56nfpsztMp8GV3+m22v2Dfw0FqbObvec6TnfTcLn1RR7VZEuKCDuL5fSn9Rj2WPx
	AhRaq8J7BHFAL/gfgqjgtm7tIgQZRglkm7OAVFQYYmf6XUlheuAvGgE2XV47D6Fs8VHEmVUll
X-Gm-Gg: ATEYQzzGK6A+WKqknRF5pkRskG6VDjZJptVo1DM1w61zRSoYUzOERXPt+kwzR4/MlbV
	FD9rVrUEtkdhY06etsJAiSIMs9577r16qY7Y6x3mfuzoO3J/dTgpxYCmLXMh3G8z8t2VFm7GQIa
	ddSjZ/duv0cvNO1bQV3a1ZiFGeJ/zaG9G6NwfICVQpaZOBvhr1mv7/MXnk88M+2j4fXjD/dtykk
	HqiLS6LqKNCCQBjDyKTAJs+Mf8AamF1xSJEV/JtAaaQ2HhG+9LVwBj+nWS7HgM4bF56vRdTrAvj
	N5HrpCIP0RNahoMnBKwbOt9vlXwbXLrrdiG+Gj+LKvcRCgQZ4GRcTpFiGMI/IDrrP90ohU9OuhH
	XnaGyiu3CSGwPPBbHQgiKeOw2P7HeLdO1mMrMizB9F4fn1GbAhloLsHI=
X-Received: by 2002:a17:902:ec89:b0:2ae:55bd:1473 with SMTP id d9443c01a7336-2aeae876b3dmr19743115ad.31.1773225371993;
        Wed, 11 Mar 2026 03:36:11 -0700 (PDT)
X-Received: by 2002:a17:902:ec89:b0:2ae:55bd:1473 with SMTP id d9443c01a7336-2aeae876b3dmr19742895ad.31.1773225371465;
        Wed, 11 Mar 2026 03:36:11 -0700 (PDT)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae378a28sm21042925ad.88.2026.03.11.03.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 03:36:11 -0700 (PDT)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Enable QoS configuration on QCS615
Date: Wed, 11 Mar 2026 16:05:45 +0530
Message-ID: <20260311103548.1823044-1-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: lJp60aGW7PQ293tslRg7y_rmKhmE9FrR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4OCBTYWx0ZWRfX7ALK+GKCFbTP
 C9JU/tjj+a0eoUlOSIaRfAiajHysy289EyIQSGid9OVcJg4Mj3kQfcHLpqPaLoisMTS1OBGXFpT
 QEzxjsKPTNL/MceI83kf/Dk9XmC/sZhdxuv16ijYB2u++Fti6by165z9wt4jmpkaIRE1oVfHhTM
 fOCloKdoSmBIkPTHcRvvu59r1tPmFOs6M4DoTv4gbuNj7ZArNiV4u5v3uCzaQ8YPRx+N9vb+bqy
 chSZiMV2D2aMyh8tuhTvoV6xswkWlZgGZ2CqALuEy86qHaDbZNlxCdMq7CSPxqpDLPGLotOxzaF
 7PEZzCCqUdgk86GfHpuisNZVtbgncLa8pU7Z3OVK/BN1b5hfvs3n9LtWmNrlnhIAUWoMQraLnaX
 f8jKCnPHDLJs0HrG+l/v6ZymqMkxkP68NbgraakkA8zLqg32cx1DNz/x9J7+Hpk5oOy/vgdwvgb
 7/F6ElYhUK8QdnTyNZg==
X-Proofpoint-ORIG-GUID: lJp60aGW7PQ293tslRg7y_rmKhmE9FrR
X-Authority-Analysis: v=2.4 cv=Gq5PO01C c=1 sm=1 tr=0 ts=69b1459c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=hqR9uRmBdb12yu0oCjwA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110088
X-Rspamd-Queue-Id: 1C7E72628C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274010-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

This series enables QoS configuration for QNOC type device which
can be found on QCS615 platform. It enables QoS configuration
for master ports with predefined priority and urgency forwarding.
This helps in prioritizing the traffic originating from different
interconnect masters at NOC (Network On Chip).

The system may function normally without this feature. However,
enabling QoS helps optimize latency and bandwidth across subsystems
like CPU, GPU, and multimedia engines, which becomes important in
high-throughput scenarios. This is a feature aimed at performance
enhancement to improve system performance under concurrent workloads.

Changes in v3:
 - Refactored the schema to define 'clocks' in the top-level
   properties block as suggested by Krzysztof Kozlowski.
 - Removed the conditional logic that strictly checked for
   'qcom,qcs615-aggre1-noc' to define 'clocks'. Instead, the property
   is now defined globally but explicitly forbidden for all other
   interconnect nodes except aggre1-noc node.

Odelu Kukatla (3):
  dt-bindings: interconnect: qcom,qcs615-rpmh: add clocks property to
    enable QoS
  interconnect: qcom: qcs615: enable QoS configuration
  arm64: dts: qcom: talos: Add clocks for QoS configuration

 .../interconnect/qcom,qcs615-rpmh.yaml        |  34 +++
 arch/arm64/boot/dts/qcom/talos.dtsi           |   4 +
 drivers/interconnect/qcom/qcs615.c            | 247 ++++++++++++++++++
 3 files changed, 285 insertions(+)

-- 
2.43.0


