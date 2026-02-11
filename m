Return-Path: <devicetree+bounces-264778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNAgNVyEjGmfqAAAu9opvQ
	(envelope-from <devicetree+bounces-264778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:30:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE05124BF9
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62B47301983D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B5726B760;
	Wed, 11 Feb 2026 13:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lDulmL+N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bro+IVFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD93258EE1
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770816596; cv=none; b=KS3t8Qn0wOku7BWi3pHypNker+Hm2GuMgqmMTAN+K74yooe0Bd2Ulfjybb/rbXm60RTpvniLNCwsm4MP1AZNJfgpqqITplC8K5hVBXlQO3I5sgqeFHNc985rzLK7XEU/Vjg7j5mqxPA93x/3T3nYxcCOevNsgYLDnkjh6BE1a6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770816596; c=relaxed/simple;
	bh=F8dlGzylXsUZhimrq6/FNXTDw5cd94/cgBPDlPbZYrY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=I4TeOU6YvcgAOkf9mt8PJ+VHWWeGDjCDS9MZOTSdjPWc5n1n4A+WpV2mCkwUovGgeopYWkDwcRWy8N5KTjD7lDdafXEgURnxOGcejYCM/+ouw+1xzyBux88b/2ZpK+kCXTnTkWPZE1PggNoVYlI50p2ZwiKXClYlwsVvQgzf+4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lDulmL+N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bro+IVFR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61BAHXnW2297617
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=YDSGphfqFZHevoU9vCq3tM3+41gKEg0Wz8i
	vxkG1eS0=; b=lDulmL+NGReNGymP19CwwilGoeXvz6NthGOGbaKie3/eqgTAxzU
	Srd+2bbBN7M8/G/dfJjilHaajSmTyb4diUJTaKIV29s5w7yEaeWawekCv1saE9A1
	y2sJTF+BKh4cWK5EmEAtLoe/5OceMYymi06tcYHU9s1lfElPY8x7AEbn+ubCnYbo
	jjyEPmNqWXAu1ArhatcXno6nRTiG1oC64MuSa8zWQCjChE60+NvJsi/i7GHImGOZ
	D/ulxXP3C6H2HlvyC9GjRT9BNrluV5MEkbtEDXrMfSwKh7R6k5rwDHKS/nLMaDbP
	6ynl/9YCEwvDeHBJJ1x3KoZ6Csgd1O2BHww==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8qvq8hg2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:29:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a7701b6353so59016775ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770816593; x=1771421393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YDSGphfqFZHevoU9vCq3tM3+41gKEg0Wz8ivxkG1eS0=;
        b=bro+IVFRrcA3RhwFbxHUA+Txh9PJ3g0WbR2Y3vAqBUFqgD5SmyiKYYd25Lu3kfX35E
         9FCgb8WmRT4es97Z3kWnFV0cHNBFdU8tnwt+3nxdarF1EhWmBt9X19hpRd5+Aw7fXl8Y
         gu7uNh/AkB0qtOopdIU9hnxfQp+fZ/TAVuL0QRAYdhVUXkp1LBrI/Jsp/CUWnJTQRUkt
         OH/L7ZAeUuDt0WDYbiKH/zU+TXQmGvUBKE6FrqtaKdn8AELeoTw6yoaB+mGzB0iUp8p5
         zvWy/LVmnuM8jaessSTiSR24akN8mYkjkjw03pnCfWveTahpMcBcG3kkynozakmL153P
         TF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816593; x=1771421393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDSGphfqFZHevoU9vCq3tM3+41gKEg0Wz8ivxkG1eS0=;
        b=iicp3tpWmXVEKG+R+6s9mTgYoBtTsewQBQnlvRDIbciy++R/KfZZNuZFwDUwCyhbbk
         gQjalfiN6WWpF3LMG6/WQQ+4bmCarKjveRt4XdxnYW6Oog4Qq47TE7XUpJ3v8sn5rCzF
         y5ihk1Wus4BuOgxy+ubO7rs3GZ9QimBbvwZDvo/1CdJe3nqj6hJpFBur5NwbtkGwDy4Q
         R2Ty4xKVL71KTn+Z6osxDoHxOz+eQ84yXlCaposrLh6kBHKrgJCk3tLFDZ4M01Ip8imY
         DHxfHJ/gay0mTA7VvJvXsMEKkzN/uSEIPFNm6AS/ZbWti2tIylvKCdA+qbdUAeV4goJN
         xfdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK5KzUEKrI8HUNrYQ6D174HML65AUDGffbcrHg9TUmpc9Gtwq2NyeEYdDPNqT6aAb/w0C9FSOFS3bs@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ9pgR2JB0R9mhePs+qMgct8HudB7PYGtSVnQIK1CxMwSrLmbh
	K0BOV9A2iWge2z5/Gh4Zo4j8Bx9lIK/NiimPYtj6jGsBSaYLIII6LZ6jh0Li4SAWBUMPRM2SVHg
	0jSXqh5P1TyyQnOi6a/hcKFzeXJ8AHp/G2w4Eon7R3NXAxLKoheyE+Nzluzkm+L8a
X-Gm-Gg: AZuq6aLyEXYe/R7o7AfTt3fHn/KbcyZosDvRL52mQrxypNXv3lc3FHhpI3jEthcI5kJ
	IwH3WGLFbqhvttC0sqDCSvuZVsFgLfJ/jRjaj0px2MXz2+Vnag9GNF06rWaORE6AwPp9MLAYzFk
	GU4B7H0V+OSw9U6BfgP0EAlA0WfQDud2y7kwXriqcV0tCkUrdZIm8xHU/RBxFrtaUYBtjVKLBTm
	vHyxXgtlSLC42yXQT8ONKYJqxaHoThfNr9jEFDUMxP13Uh58WRd51CJXw/oqEfvipXNkx+tOPlS
	pgSEwsrZ3YBK4hQXiIWEJtAEwQ9jv4lfxSi9UBL3R3EPHmKO90mud7GlBChnkgJdCGZT8ECaemp
	usl2903WiKIX+VGYI3EcaijIW+WaEte/HZLYNLr4CsjX0X+7b5tk/tQ+/XCX7t7UM
X-Received: by 2002:a05:6a20:2453:b0:38d:ef23:12d1 with SMTP id adf61e73a8af0-3942e6c6040mr2508642637.74.1770816592412;
        Wed, 11 Feb 2026 05:29:52 -0800 (PST)
X-Received: by 2002:a05:6a20:2453:b0:38d:ef23:12d1 with SMTP id adf61e73a8af0-3942e6c6040mr2508608637.74.1770816591817;
        Wed, 11 Feb 2026 05:29:51 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e84bc1asm2143655b3a.58.2026.02.11.05.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:29:51 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V5 0/3] Add UFS support for x1e80100 SoC
Date: Wed, 11 Feb 2026 18:59:23 +0530
Message-Id: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: PAst4cZcA01mCbX_GV_7bCLd5h2gbNhR
X-Authority-Analysis: v=2.4 cv=Q77fIo2a c=1 sm=1 tr=0 ts=698c8451 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=w1dworix_CjMrjKQpqQA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: PAst4cZcA01mCbX_GV_7bCLd5h2gbNhR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEwNCBTYWx0ZWRfX4F1Y4vLQe2vv
 slA9V38i7N/2pGe4NODBxtaxLtWEO8f/koPJI19puH1wrBIW3AayYNv1UcqUXVKx+F6HbqKpR4l
 Gbr3BZLW8tg11ZSQ38+HrfzcIBSUhYzKHvD68g9JowZqlNCrkpw30vGYz8azaYTSt6mBUBfrs/z
 ga1Q6k84ekRH6Y1ZTcQJpjuzgFqfCxH43aQ2A1WElWal3tPCVO93GpUPW6mm/arEwh4QBi/gaHz
 YmRBVkJoVguXmiuP7YH31N+BSGh02U+Irv4tN8Y99t9yf+aYEWnscIYoUNYJ0z+E42+ovqravzd
 H44LVs1NvukuvEHy1AUtZUOfeosRxZp/7X5TI5i6rzs/Hh/qGXYAHK2V8c8Dg4E40Aj8BEQ7p1m
 7TTAZAe3cqZgBhuWW+J2wP5ITS+jmtDy4NFnCpcZwpdJNMY54FjVCW8us6MHv2uX0Jn/5jgHgQH
 kBG9T+DdfBSQl5JYUng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_01,2026-02-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264778-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pradeep.pragallapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3DE05124BF9
X-Rspamd-Action: no action

Add UFSPHY, UFSHC compatible binding names and UFS devicetree
enablement changes for Qualcomm x1e80100 SoC.

Changes in V5:
- Rebased on linux-next (next-20260210) to resolve merge conflicts.
- Add RB-by for UFSHC dt-binding [Krzysztof]
- Add AB-by for UFSHC dt-binding [Mani]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
- Add RB-by for board dts [Konrad, Mani]
- Link to V4:
  https://lore.kernel.org/all/20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com

Changes in V4:
- Update ufs@ with ufshc@ in SoC dtsi [Mani]
- Retain complete change history in cover letter [Dmitry]
- Remove "jedec,ufs-2.0" compatible from ufshc dt-bindings
  and SoC dtsi files [Krzysztof, Mani]
- Remove RB-by tag from Krzysztof and AB-by tag from Mani on
  UFSHC dt-binding file as it has changes and needs re-review.
- Add RB-by for QMP UFS PHY dt-binding [Krzysztof]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
- Add RB-by for board dts [Konrad]
- Link to V3:
  https://lore.kernel.org/all/0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com
 
Changes in V3:
- Update all dt-bindings commit messages with concise and informative
  statements [Krzysztof]
- keep the QMP UFS PHY order by last compatible in numerical ascending
  order [Krzysztof]
- Remove qcom,x1e80100-ufshc from select: enum: list of
  qcom,sc7180-ufshc.yaml file [Krzysztof]
- Update subject prefix for all dt-bindings [Krzysztof]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
- Add RB-by for board dts [Konrad]
- Link to V2:
  https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com

Changes in V2:
- Update all dt-bindings commit messages to explain fallback
  to SM8550 [Krzysztof]
- Pad register addresses to 8-digit hex format [Konrad]
- Place one compatible string per line [Konrad]
- Replace chip codenames with numeric identifiers throughout [Konrad]
- Fix dt_binding_check error in UFSHC dt-bindings [Rob]

- This series is rebased on GCC bindings and driver changes:
  https://lore.kernel.org/lkml/20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com/

- This series address issues and gaps noticed on:
  https://lore.kernel.org/linux-devicetree/20250814005904.39173-2-harrison.vanderbyl@gmail.com/
  https://lore.kernel.org/linux-devicetree/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/

- Link to V1:
  https://lore.kernel.org/linux-phy/20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com/

---
Pradeep P V K (3):
  dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
  arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  36 +++---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 122 +++++++++++++++++-
 3 files changed, 158 insertions(+), 18 deletions(-)

-- 
2.34.1


