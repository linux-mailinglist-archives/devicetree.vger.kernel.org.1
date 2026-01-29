Return-Path: <devicetree+bounces-260663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNImMlWmemnF8wEAu9opvQ
	(envelope-from <devicetree+bounces-260663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:14:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B52FAA234
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07AD4301A50E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5420640855;
	Thu, 29 Jan 2026 00:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cwNuhMGq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MTYBI5VE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873F228DC4
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645651; cv=none; b=ooTu0+cPb+H4NyWi1fCBKUD7UfCFWBISiqs6974lPmb3fe7Jk7AusHgRy7bf5Ge5i0K+UtIXh8WfWag4VUx8aAuoOJSYScAWB3b2s0dpA9BMNMiVhWtcR4z6vjhxhUXyn+aKMxnAjgtKmynOh/t6OYt1dfX4GtSXiMAchTrRcvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645651; c=relaxed/simple;
	bh=Yn9GnVFARTtOb+gTPpOPbL5DgHWPTr5fVOvoHLT0PE0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SxrcZMkhRNBJLBTPzRARMJyK16xzv3CuOQtdnJm+CjBh/huGWfuGxdW1TUGuOx4+OxzHlr0KfY5kkoVwWjeB7Le1DAUrOjp35v2GOWLOFk1HEk4RML1UstJxdUQXGRHTZmLFBdwe0c9JyZbRMJ/8GsIyMf3Qh7npHV8vhyEVxQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cwNuhMGq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MTYBI5VE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SH2WpG800886
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Q7ZbvXfVh3WelDqPIwf+xkJ78SnEOLn5jXo
	q3terDfY=; b=cwNuhMGqGY/GJsGjgp2ZHUINKl8KeinNXvnQVb67zVpri72x46B
	TCTmFQC0JbqzriCBk6ueFwFt7w60rHrbsBPQdT1O6bJKMD+gYbrJ1Y/ziSG/0cv/
	oSrNzg1/DHYH5/cRxj0Vw35CaGocHdUqkRQTt/YZa6CKpo68NQaEpH57Y3MCl/sQ
	GJdVxKMyYNAaTfCzVvFErrS8DAEFJ4W2NhkCCMbGVe6RIJodJunmhhpahoWJXd5P
	nwrSXXPlpY/SE3DLs0Qm3rijeR9njLk42OhQ7oqFJyQ7Ui394qT+UFc3EkFYZin6
	z0k4gC/IuxXFLHM8fF9A5GHqfyotflDvCmQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bypgrh8b3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a784b2234dso10027365ad.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769645647; x=1770250447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q7ZbvXfVh3WelDqPIwf+xkJ78SnEOLn5jXoq3terDfY=;
        b=MTYBI5VEErK/yOMiG61/aReJ0ejzUDRUu7Zhxha3L14aLyYQarxNIIwGvlfcZ9FgIC
         XyDEIzyYETrrOQMtpOpJNJTCPcTwMKnWm0bJ14jiy9Kdrn7SqwEm5fzHiNKE9Z4FfCDE
         0RGsGCWZYAMR3o1BOsy3rKqVI/DDKP6Q2w6WbT8uffu2ZvPO6Erke4yacb0YK9rYb26z
         yi2l8C5+jTkn3c/7hRwXSHkwgV5Jmi4hm71DRDwvW0nzXdejkHR4fgwKJb8eXZZRezn8
         RPGtUPR64P9vkgaGLusVLEzO7kRkF+CTbGL5B82fQcQJtU5dTqGePRz2rw+LOBcl6s7R
         xJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769645647; x=1770250447;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7ZbvXfVh3WelDqPIwf+xkJ78SnEOLn5jXoq3terDfY=;
        b=rPAdo41UmZoylmtGRFDOiFRYaSE3JZFXuYstVXwRK09S/kLZkhoxnOjHUNv5f0i0cB
         3Wz9T60B4aDXhtT9N35RndVr+wffwOMqBkz36KQLgXeNPd+YI8Gov1PAN68mmopq6mvf
         Mg61QnR52vR6cNkFAiTeYdEraklQ21JP6IxZqC4pv4CAbAP1fikLRoHPD6XJO2SdlPmZ
         xwr5DJEmFx2MP4ULOzYQuBwdEjqtvw0JjmAzcUaKimmlGSFX+BC5DTCwQfTnZf3HPKCs
         Elug3w/ntlLUTWpBICieDueD2oQfQn80in6GRVipP26/TDSytc3UWqt3klWezh9EQAHF
         zkow==
X-Forwarded-Encrypted: i=1; AJvYcCUDatbBthPyM1aGabF3zQkiSlPiuywksNZ9YLMSsn4D7yS2RwMRkQEgUMD3kMXqa99BvOFI9baxQAG4@vger.kernel.org
X-Gm-Message-State: AOJu0YyhGQ/cIcFXsN6qD88mTFv40uaW6FRK1qS7YCH5EqOkKCQVQyXJ
	jy5i0dBUjzrCf2fyp4faDk9q12NP8us2awcINJskdMUygQbUMkAS5QbEk0k8F2nGu6aKLtCAAr3
	FCAKaQwy3xavce8+CJQvKWvduvMReYlbhfv6ScSnsTp3n4GNAKlMFvAnvhzWAM/r8
X-Gm-Gg: AZuq6aKFQ24mM7SvImYDTKfJXVuDPH6u0/p7lrPd7mc6wW9dv1qCnPMAEZAsPAyRz8a
	M1Sor3Tr1a7Y+vr+LUVC2zNNV6NSZaYsIHW2wqTFuNG33B+OWcPX+E9HI/zxg3cmlfPJ/q9tp4N
	rJR1YyzFgt5OTCt7XIPBFOfn1mmClZy9mJt5UFZbW4ChiIRUn7K7XcSTliV+/d463XH6y/73Fc0
	c/xO4JdlOW6gZd7RGmuXbj5L4uPF7dLS3/LVdXepl0rFoU3CBIZhhpgoMl1W9l1l+67+5UOYR+G
	wKf62Vr/fQSd/eJPxhDeSJgWGkjdgpB7R1caztZg3ttlnaRpSM1DEiEz8rBH2n7wOg7qWiDd8X7
	Z7fWFYkIZ5KApVZASEq6nPBtOSfvabDGy2GFUbOVZKAfeuYkWN3cgZPsODQ177/guGvh/HUblHA
	+mTUZYAf3nhC4+DkLSdsoSJ5kQ
X-Received: by 2002:a17:903:388e:b0:2a0:b02b:210c with SMTP id d9443c01a7336-2a870d7a04fmr67566645ad.1.1769645647057;
        Wed, 28 Jan 2026 16:14:07 -0800 (PST)
X-Received: by 2002:a17:903:388e:b0:2a0:b02b:210c with SMTP id d9443c01a7336-2a870d7a04fmr67566345ad.1.1769645646637;
        Wed, 28 Jan 2026 16:14:06 -0800 (PST)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b29sm32055845ad.54.2026.01.28.16.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:14:06 -0800 (PST)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH V3 0/5] Enable ADSP and CDSP for Glymur SoC
Date: Thu, 29 Jan 2026 05:43:53 +0530
Message-Id: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=d7T4CBjE c=1 sm=1 tr=0 ts=697aa64f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=BUIj0kJwqj0R3t6dFBUA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ZR4MoPGczxHI6TTnqUTYDmFk1yvRhUKO
X-Proofpoint-ORIG-GUID: ZR4MoPGczxHI6TTnqUTYDmFk1yvRhUKO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDIwMCBTYWx0ZWRfX4al5Dy9ueLJ8
 RDFmZcbZ08H5d3PCgB710xLtDn4FmGVLhgW4LmJ4qcHt9s0mt5dOtm6LImAHyvl4icyiPCHMVoN
 Jgk57Xn8967oEItt0jKNJP1ryXbFLh7C9QanZvVr8I2sPknpndJRBQf0Snh8+r6mLZllGEoHKeT
 c3BEqV/l6O5wtYNPpcrqbPCgllWS3c2ZhH/wGIGcRVrV5tDFlMhW2M2w5asgXhllx3pYDEJcEmp
 9GQ52u9HUDAD/K4VchoAOK0Y3KBP30BXDYRQy5Gf1eTy4rM/quXeGDkrpU6QCRhpuCLE7rdUIwM
 eZFRxlyR6RL2uZ/XJaRT7CwIY6ir/cNJyeZcsjoPubQzWw0DKq9VXCk8wx5L8bL9IRiHCOjO/5l
 T4CMhtlAPyvQBcEixl6/eAiohsjW/bVaLC3H4kVwiSw8iH7Za8McdcwMYUVf42oB9PBrZb04kTo
 Icg7LBLX/yf9QiXnnnA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 adultscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280200
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260663-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quicinc.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5B52FAA234
X-Rspamd-Action: no action

From: Sibi Sankar <quic_sibis@quicinc.com>

Qualcomm Glymur SoC variants predominantly boot Linux at EL2. This means
that the firmware streams of the remote processors are managed in kernel
and not in Gunyah hypervisor. Given that the Peripheral Image Loader for
Qualcomm SoCs now support running Linux Host at EL2 [1], this series
documents and enables ADSP and CDSP on Qualcomm Glymur SoCs with its
fastrpc nodes. A few variants of the SoC are expected to run Linux at EL1
hence the iommus properties are left optional.

[1] - https://lore.kernel.org/all/20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com/

Changes in v3:
- A few variants of the SoC are expected to run Linux at EL1 hence the
  iommus properties are left optional.
- Add fastrpc bindings and nodes.
- Link to v2: https://lore.kernel.org/all/20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com/

Changes in v2:
- Combined into Kaanapali series since they are fully compatible.
- Link to v1: https://lore.kernel.org/all/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com/

Dependencies:
dt-bindings:
1. https://lore.kernel.org/all/20260114-knp-remoteproc-v4-1-fcf0b04d01af@oss.qualcomm.com/
2. https://lore.kernel.org/all/20260114-knp-remoteproc-v4-2-fcf0b04d01af@oss.qualcomm.com/

Base-glymur support:
1. https://lore.kernel.org/lkml/20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com/

Sibi Sankar (5):
  dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur ADSP
  dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur CDSP
  dt-bindings: misc: qcom,fastrpc: Add compatible for Glymur
  arm64: dts: qcom: glymur: Add ADSP and CDSP for Glymur SoC
  arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP

 .../bindings/misc/qcom,fastrpc.yaml           |  11 +-
 .../bindings/remoteproc/qcom,sm8550-pas.yaml  |   4 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts       |  14 +
 arch/arm64/boot/dts/qcom/glymur.dtsi          | 286 ++++++++++++++++++
 4 files changed, 312 insertions(+), 3 deletions(-)

-- 
2.34.1


