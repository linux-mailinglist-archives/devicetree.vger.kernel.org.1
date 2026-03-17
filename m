Return-Path: <devicetree+bounces-276657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPdEKwdJuWmK+QEAu9opvQ
	(envelope-from <devicetree+bounces-276657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:28:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0AC2A9DEE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4A9A3301152E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DBA3C2778;
	Tue, 17 Mar 2026 12:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fiT4GcsB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R07Sr0ZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB413C197E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750516; cv=none; b=kqvnLmWbYcCxFFCA5ZxCo1rC1z2Y1PgcZrkVgH8GAgY5zVLq47WOGPxa123c+Ees+7/iokAcqiuDR2SZP+HsEPhN666afYTj83boe2seLiJa+9srtprh08oZMtLmo8dzCbUxLuPYDe8p2KPZnIhCdruSjgLezyq33Qnm6I1Afcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750516; c=relaxed/simple;
	bh=G6xUZS6rI6v6FuqUgHM7RyAVAD+MtE0kqzjRqfU6VR8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PEdLzgyPd5IFDemow/N6/ILRhrZ+13YcwdJ93ec5DeJw1cdCA1RgxNuNukHyjbP4fOBp8lZs5J/zacxJAIkCCG/R1Yh/sF3bK/cmpwLR5VY2+dLaIn0PSJbROVGHILRL8mWYfow9o+q1TRUxiSrL4t+WdljvQL4BQDgonOb01mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fiT4GcsB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R07Sr0ZJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7Ja8W3124593
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2nTUiJW9SzW2O8XA+4e3N3
	O9Mr9gS+1kCq9dHbVs/GY=; b=fiT4GcsB+HdkaWtLGFOeNYBMkba/kryPhvHNYM
	ir3PyIfCddBhYu3OAnaWuxTviD/g2acvBKMvV5IUMkSGA2ha5liJrlWCW5YrtE0m
	ZB4ECC+MHmacr3m6mxQxVMdz1JN5GFOscrtD3qCJONjwxN+kbTQHPtj+umED3LFi
	jGNxOvrG0LSDk/h1JetMd9inskGx7dqgXxDZiTppakU1km1wBhLPmwxNK2ZBSe6K
	Yv4DH8rzlxu7fNJD3RseexEBxpoz0zHW8zCjX3waad5yuBZxZ5L+ca086g5qNBfR
	zBVkSe1BZuUarVv2Z9qKE2HdTTqfoaN+jE3EfcJWE0Wi8KdA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2fbs3tw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:28:33 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-829ad81b132so20404251b3a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773750512; x=1774355312; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2nTUiJW9SzW2O8XA+4e3N3O9Mr9gS+1kCq9dHbVs/GY=;
        b=R07Sr0ZJlcESSTVR4h6kgB/PqkjH9lYcJBu2+tXBcGnhj6nlCfG+Rz9y2cQ4lPzc5l
         4yxJ+zhewM3rSbJq7sc9ZTdA9YFozJGiiilVlc50PJ2j0do/cQjbArvb3q+jl239QSWx
         mz02B+yQpq7N0hPpHDMOiMDULFeY3LOldKaON5mHV9HRoMiXxo55MFtHES6efzABcjvR
         2UJZOZudodphv9NOUujpM/ZemZJh9aj8fhfFAEAPl5bN4hwz0wPXQFglRwm6wGsK8J8T
         9/rqywbS0Wrrc5iIaKOvLIPTVwKFVDTF0QCbdnlt8uUp1Iqugcg5jXIDJg1pkEhzDyJf
         J1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750512; x=1774355312;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2nTUiJW9SzW2O8XA+4e3N3O9Mr9gS+1kCq9dHbVs/GY=;
        b=Uf32uY9JW1om6lfg9XsECmkYtXUFdWNr4SnpGl7hJHV+VXNnszYERiKtCfYPMwmtRW
         MsB9qcVZNn9YecDpaJjN0auoicon7zFnO1xUKPvdJ64/6zeabAc28J5siQVv3IWloBt7
         LpVv1EdcRfsQm/RnuF1pJYizF2mZ6x5KIW80nBHrRxegE//1K/ulLxLPEdWJh8O4Kfbl
         3ignitqZ/NQ7kJDDd9r386jWnMFiBW+4AqppDAmfANugbiV3970g13a0N+xk9xGKTwRd
         zv8bWbWA3IQ2N3xs80MuPF3dhMdlVGsDQ+4WeYJW2jODPZQMqoaGptSkKZlpVAQBeZZD
         pjkg==
X-Forwarded-Encrypted: i=1; AJvYcCXDx0KHMfT5tc95HxYjVSGA9ba6Vw5Vbk1efPsvWbPI44+yc2KCwc9BQld8dbg4eZ5G6TCrNeRd+xSo@vger.kernel.org
X-Gm-Message-State: AOJu0YyhgmknliveWKfu2+Z3c0SSQTDY7Ow3mjNRZ0TKpBnUClwwjpyK
	efLo1IbV0n6wh7iUSkfLBXHoYEnQ4UfCaZP5RRvPhoMRBUKMcIwMlR81Fwm/SKUIycgrtAOLVBJ
	O3uU7jAfLNeLQTCC9U79IU1xoVNP5p3V4B6MZ3FI1MOsXFziUNWAmp6uRkLOM1MK+
X-Gm-Gg: ATEYQzyYuiKglPoGsnYyCKyoEfyMcofKwGS4WmWBxDagtFuZHX9gQv7sYCUVyKFappV
	Rmn7SdLNWnIAS4/3jD7VD7o+Z6fsAf1biEVhL0FFUOwu1ptg3g+Q8+KQwTgVRWkU/B5OEmW9OCY
	598eIaC+ND7sN+iwG0SQX4pN6LNHkOKecNnbOj8USTS9QZ8FY2EnjyvpJeiOs4JLA8MPp8qybHj
	UNIpCcGfZn8HHyRP1f5UoFKk4+qy3JVxPWh+v2VZTBJu+VCSkRC+8CTbnQylTCw9ypqoWRhEzkx
	9tDShC7wliEXxbmvwjCir+KKXTtmovxv/RSW6G4au+Pi0lFkZ+iqePNnbpYBJctIx5pCbEQVWnu
	QCz10gA+aWsjx2hTP36LHoKpZmBj+Jn4ZBYqZTUO3reVBFmGz/JW1rAN2E0ga6uE2XBHz5dcH4U
	V9CjKygZThDf0/grgpFY239p0PSYhC4RW6aA==
X-Received: by 2002:a05:6a00:b4b:b0:823:998:95b0 with SMTP id d2e1a72fcca58-82a19898788mr15666649b3a.35.1773750512028;
        Tue, 17 Mar 2026 05:28:32 -0700 (PDT)
X-Received: by 2002:a05:6a00:b4b:b0:823:998:95b0 with SMTP id d2e1a72fcca58-82a19898788mr15666604b3a.35.1773750511390;
        Tue, 17 Mar 2026 05:28:31 -0700 (PDT)
Received: from hu-ajainp-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07340518sm16654056b3a.34.2026.03.17.05.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 05:28:30 -0700 (PDT)
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Subject: [PATCH v5 0/5] Add driver for EC found on Qualcomm reference
 devices
Date: Tue, 17 Mar 2026 17:57:54 +0530
Message-Id: <20260317-add-driver-for-ec-v5-0-38d11f524856@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMpIuWkC/22NwQrCMBBEf6Xs2S0xjdV68j+khyXZ2IBtdKNBK
 f13Y/HoZeANzJsZEkvgBMdqBuEcUohTgd2mAjvQdGEMrjBopVvVqA7JOXQSMgv6KMgWG09mf/C
 6Na6DsrsJ+/Banee+8BDSI8p7vcjm2/5s2wazMn+M2aBCS51T7F2riU4xpfr+pKuN41iXgH5Zl
 g+29Sm+vQAAAA==
X-Change-ID: 20260309-add-driver-for-ec-3fa478f264d9
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773750505; l=3502;
 i=anvesh.p@oss.qualcomm.com; s=20260313; h=from:subject:message-id;
 bh=y15SO9dBVhioyN+ktx9Ibw3OH/3fAXn4C710C4vRsuA=;
 b=3iqvdsebhRKC87XO+CHZH2pjwO4/OaZicF1Nno7202rEFac05uX8fxehNvuMYLj/tqzsVZbNL
 PjrR2hugcCOD0KaVDri05et9mzemkT9z0Soaoq38Dx8aaUU/ZBsbLzz
X-Developer-Key: i=anvesh.p@oss.qualcomm.com; a=ed25519;
 pk=8o9EG7gkPe2Er9y9UVCx8MTdcFCwU8Pa54hBZPuduXE=
X-Proofpoint-ORIG-GUID: e8VxvbAMU7zYo7FFh4ko6CXjJ5hTxT1-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEwOSBTYWx0ZWRfX4JRApJeWDxmJ
 5S76iK7db77UhOaBqEUFjkP3NK5/j2/ec2kFKtMJbJ20MjBL87hMQlUXN0DHnirgrgZuqGNWTPM
 34kjx8XIvKrHbBapT2jFJXnTsbrHKrUVS0/BlJcdEHJIxYY9yVc9jNTWZSrLAyQt4e4X105S1lW
 8EdOImeQu6m8rn9vQkE6XH+vmcOwY0tIFRtcPisRP1kyjmTBgTDOnWpBmjYXlu6R5fLVor48IzQ
 whcHR3egRsmj4/mRVfMC/uhjMScmwF48sjw2s0fovULTt0TeDdXIdSdXoya7NWmuAMcgLdJwbZJ
 QpRGeuLD89pZle2oX5FmbFn8mLM1TFdbvRb6Afpi385xULa+3PY39r3udOFfO9mnz9jhLupMbQL
 wTi25w5yppzydJy/iCD4Sjm/FZ5MCj+2h0PCMP/S9KUR8jXavOiUikps8t2AwkkClFF0gRKYoDo
 mlEl/9LgsTBvZV6O24g==
X-Authority-Analysis: v=2.4 cv=fa6gCkQF c=1 sm=1 tr=0 ts=69b948f1 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=Ri_lbDodsUoyWFYh5ukA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: e8VxvbAMU7zYo7FFh4ko6CXjJ5hTxT1-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170109
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,oss.qualcomm.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-276657-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AD0AC2A9DEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>

Add Embedded controller driver support for Hamoa/Purwa/Glymur Qualcomm
reference boards. It handles fan control, temperature sensors, access
to EC state changes and supports reporting suspend entry/exit to the EC.

---
Changes in v5:
  - Fix subject line and commit description, drop redundant
    "bindings for".
  - Rename binding file: qcom,hamoa-ec.yaml → qcom,hamoa-crd-ec.yaml
    to match the compatible string.
  - Update $id URI to match the new filename.
  - Add <linux/interrupt.h> and <linux/slab.h> includes.
  - Switch to devm_thermal_of_cooling_device_register, remove manual
    unroll loop.
  - Ratelimit all IRQ handler log messages.
  - Promote unknown EC event log from dev_dbg to dev_notice.
  - Remove redundant error message after devm_request_threaded_irq.
  - Simplify qcom_ec_sci_evt_control, resume, and suspend using direct
    returns.
  - Add dev_warn + early return for zero fan count; driver stays loaded
    for PM notifications.
  - Fix thermistor presence bitmask documentation: 1 = present, 0 = absent.
  - Fix snprintf format specifier to %u to suppress -Wformat-truncation.
  - Remove unused cdev variable from qcom_ec_probe.
  - Fix typo: "exluding" → "excluding" in register map comments.
  - Fix capitalization: "ec" → "EC" in error messages.
  - Link to v4: https://lore.kernel.org/r/20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com

Changes in v4:
  - Fix fan count calculation to use min() instead of max() to correctly
    cap fan_cnt at EC_MAX_FAN_CNT.
  - Remove unnecessary mutex lock/unlock.
  - Disable fan debug mode on ec module removal.
  - Fix issue reported by kernel test robot.
  - Consolidate hamoa-iot-evk specific changes into hamoa-iot-evk.dts.
  - Add board-specific compatible strings as per review comments.
  - Link to v3: https://lore.kernel.org/all/20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com/

Changes in v3:
  - Revamp the bindings and driver to support generic ec specification
    that works across Qualcomm Hamoa/Purwa and Glymur reference devices.
  - Add ec nodes to Hamoa/Purwa CRDs and IOT-EVKs.
  - Add ec node to Glymur CRDs.
  - Link to v2: https://lore.kernel.org/lkml/20241219200821.8328-1-maccraft123mc@gmail.com/
  - Link to v1: https://lore.kernel.org/lkml/20240927185345.3680-1-maccraft123mc@gmail.com/

---
Maya Matuszczyk (1):
      dt-bindings: embedded-controller: Add Qualcomm reference device EC description

Sibi Sankar (4):
      platform: arm64: Add driver for EC found on Qualcomm reference devices
      arm64: dts: qcom: glymur-crd: Add Embedded controller node
      arm64: dts: qcom: x1-crd: Add Embedded controller node
      arm64: dts: qcom: hamoa-iot-evk: Add Embedded controller node

 .../embedded-controller/qcom,hamoa-crd-ec.yaml     |  56 +++
 MAINTAINERS                                        |   8 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts            |  22 +
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts         |  16 +
 arch/arm64/boot/dts/qcom/x1-crd.dtsi               |  16 +
 drivers/platform/arm64/Kconfig                     |  12 +
 drivers/platform/arm64/Makefile                    |   1 +
 drivers/platform/arm64/qcom-hamoa-ec.c             | 449 +++++++++++++++++++++
 8 files changed, 580 insertions(+)
---
base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
change-id: 20260309-add-driver-for-ec-3fa478f264d9

Best regards,
-- 
Anvesh Jain P <anvesh.p@oss.qualcomm.com>


