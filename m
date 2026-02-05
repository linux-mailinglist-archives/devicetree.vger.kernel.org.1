Return-Path: <devicetree+bounces-263101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WK7cNU3QhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:15:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6B8F5C0E
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2653303B4FB
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B5443C074;
	Thu,  5 Feb 2026 17:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oh2IP4iH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RllArfxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F172727FA
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311657; cv=none; b=UBD+jezTWb+uyIFQ2vjU6UKEp0JNkoO6lkJD+F92inkKWmpbzq1Wg0oKqWWiBeY8K3cmQeosh/oLw+TW9/VRv7T7lZ+wHLG5wap0MjNrAz/n8GVPmbMDMmQCx4PNy9HV1p/aCYmqsmdnXAQ00JAXHc1pMsE/6vaMnrMwP1X3UXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311657; c=relaxed/simple;
	bh=ot4v7IdT37glVkaw5XYs6V4fekuF/r4NR9cPsZOo7xQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ftxV3iU0JS2fhYF1fHb2MwWbi9ixAQd9ALdPyLtCT8v+e1lJQwcnpBtK451SIZEbxWxjxoW/VjaAv7T/Jr7c7OZ9A547jkKqQ/MiOn3fg/mrB/KwIdwPHg4HYBOqmiqseI1HGt3wNjPCP5rcGnJVsOqZojdFWQymY1PcYqdbNiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oh2IP4iH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RllArfxt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615Blf6g4135881
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 17:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=UvYxzqUmTdcxy05mKK/xRePrWY3EtR0lgj8
	e+aweGHc=; b=oh2IP4iHSqxvdR0VYgXdpWDQ05JWBIEFyXueor2E5tGeNv3d8N+
	EhDBrFmcyzG7btpZAxPB2hbS2Snk4MxLEYzmvmHmBa2/9Iu/s2aQbtTAuuDbePwT
	EqGPL/7091D9SGqvUQPvB5343QFt8AlmNfdchr0RpcO5/oxOiUzVZjmhqpc45vIe
	qBA1hK4Gu5eSNJIGKNZGeqn/F7TS1gKTR9Sxwl8wB3vxW6JXhKhU8wUOPSZeSC9V
	kI48g2bEypDiK8Z6xu1f3qHdOjlIRk8CI+ci+q8DgNdxExWex+Y2ffA2YuWZPLE5
	hLFso65DeOq2sS1nqv7sGIRu5gVMLbb+Tww==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4tn41336-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 17:14:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6cfd52556so380966185a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770311655; x=1770916455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UvYxzqUmTdcxy05mKK/xRePrWY3EtR0lgj8e+aweGHc=;
        b=RllArfxtn9cU91kPlWchcOmdw3oCgm9cApFY0JheREKd0TSybJ+jKgGcgzjyraU2jH
         Nv5R77noHdlNTnqxwxCL/FXfVhBUHTJcYcbNziCv35UzldTWtUSNQBize/HeeuFIOA3V
         Zi0NkuAJwSMHRoT+LHFqVfEFqgd5oyvFcdXZdkrnVifQRWhHOCcCWqswa2NPF1w+P9ct
         cTAyLsgic8EMJLs4YCezo0K1RL6QsvGtB296Y9hUliVlrJLTxdLXFFy8I5s++sApJSac
         WwjM59qvsv4EuYnXnl7gxTyHsMySH5PUArWGn5rR/XDNRV69Hka+s/JHOYqnypO0uy1w
         MEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770311655; x=1770916455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UvYxzqUmTdcxy05mKK/xRePrWY3EtR0lgj8e+aweGHc=;
        b=E7kPEIYoFJpyDGPm9/AoLnZmeilgLT2YlC/XYFWlBxTWMAImMHRBC9rGrzAXBaZd7H
         L0PzmDc+YIdhyYan0YQA42mwL5V5C2TmdP5lVJCOD0UQ/vKijN+RpgOkbnSZRq/V0qR2
         CBYRLFxuFCvBCvf9BDocK8lAu0fFaINrKX3pBQwgvlQ9FU4pKCKRv6bQjy/sJevcqMSr
         w8fovADJ0bUXz1KLB6AMrslo41yM4/re0AN80gzxtzDsFrcpEZsvQ4QIY2vSzB7QO5pY
         6rTgl6Qzs55iOW84AlmvUTMjYMkU7gv/vqlqyvV2Ztg9Dz6RbWZTbX32GKq88QIEW3I3
         anpA==
X-Forwarded-Encrypted: i=1; AJvYcCXRdSmj2G1SmoUXLYVztl+2fSXWJy5ybAvADLAlVRLBMvob5T/RUzYxu2NR3bAmhWfgmFg7iDM2/Dll@vger.kernel.org
X-Gm-Message-State: AOJu0YwA9E6THejxlbE+XZLrg/75NsNxmuOHuUW7o5ffB/HD3A1+Rkk0
	NrjMvZivGewmBy2mvWjp0kTwZpbISoyQ0TE+dsWA9h51r3dnrBp30fTLm5RKBGC1zFpMcSFZbqi
	HtBYvAleXacxSrFdrR3Ne8BvFLziizvme2lWCiPV+lvdCFzqled3nnkEOmWhExkhP
X-Gm-Gg: AZuq6aKer5sEqg3q8mjlOZYAZS5QRdwIRd7V5LwHh/qb0wA1R6p5lVlNoQbits9Gstu
	FPJRQlGWTa4uPjTZYpL50eGpj0LNqLNh36GiMaL+jgZqiWMi2x6qJ7Qx77jECGMnUFGSRoW76jM
	oxN3RX/wE6j97kQ9IUFHH7vl4RWgm6TBIq7gvbv4uqyl8IbcUBe4dF6QaO788+N1c18f/LkDmNv
	f17fE8Tn2PDkZ6NyXNptj72KXSK4PdNuja/jrt3Ygy4D2IZmHRH900GKoH4b7UhJ9lfIvjaePLn
	ZNB3adBzznCbDdqwg7/6XQBQPRUi/XpnDlbKwKP4gQi5h1KsxgRZbX5NADp3nwW3HULCHXa9RcJ
	PsQy0ixkGJLR0JNbrtjJ00S/4BHpNv98I/lMWBQHbYTc=
X-Received: by 2002:a05:620a:410a:b0:8c6:b05b:1f33 with SMTP id af79cd13be357-8ca40b65b5fmr426414185a.9.1770311655244;
        Thu, 05 Feb 2026 09:14:15 -0800 (PST)
X-Received: by 2002:a05:620a:410a:b0:8c6:b05b:1f33 with SMTP id af79cd13be357-8ca40b65b5fmr426408585a.9.1770311654774;
        Thu, 05 Feb 2026 09:14:14 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f87sm14802849f8f.21.2026.02.05.09.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:14:14 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        cnor+dt@kernel.org, srini@kernel.org, perex@perex.cz, tiwai@suse.com,
        alexey.klimov@linaro.org, mohammad.rafi.shaik@oss.qualcomm.com,
        quic_wcheng@quicinc.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 00/10] ASoC: qcom: q6dsp: few fixes and enhancements
Date: Thu,  5 Feb 2026 12:14:01 -0500
Message-ID: <20260205171411.34908-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: WmLihMRHv_TO6hUaFjHsKxST6Csf6JQv
X-Proofpoint-ORIG-GUID: WmLihMRHv_TO6hUaFjHsKxST6Csf6JQv
X-Authority-Analysis: v=2.4 cv=Dfgaa/tW c=1 sm=1 tr=0 ts=6984cfe8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=CdGEBIRw-R72dx1e2_YA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEzMCBTYWx0ZWRfX5jBYFPBm3sEk
 DwY7gcwbuVCu5n97iguFxWkLcw62pzsC/kBRIpHC0AsWOQX8aKunH2wnk6czjeiUX7dyerVtVFy
 4MFYviwmLCoZg54g+48/tWN3nwg4eNyn1dTfnBP4QRccBYimmqys3VicPSwijwH/9GnNLlD2flM
 SjyZjR1aSJRx6v5ylylcsWcpOEBjC4B/mSY1nlIZcIFmPC3Y59lPJEYM/LM8tj/OqoQyib3zD65
 bTbIOKAlSuDeIm18XUzDTh0qqmwDlXnh9KesJLyJfej1EGjRLJnyEKX/4TxAKTVLrfbq+tvIF9x
 St5B1uCWw24mnKucxYy57yFUYuKnJFM/eQ7nGQn3d4vz1WcTpqTQUe5iV9p+80udJ6z+SlmGLmZ
 zAKPyCBW8xLflvykhRTi1pCI2ozEQ+K/5a4MXYIOxITog5E5ife9xihJdZE42ISoW2+rNAUcO+C
 +WRPyEJUrF8PQJMDRXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_04,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,linaro.org,oss.qualcomm.com,quicinc.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263101-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3F6B8F5C0E
X-Rspamd-Action: no action

This patchset contains few fixes for the bugs hit during testing with
Monza EVK platform
- around array out of bounds access on dai ids which keep extending but
  the drivers seems to have hardcoded some numbers, fix this and clean
the mess up.
- flooding rpmsg with write requests due to not resetting queue pointer,
  fix this resetting the pointer in trigger stop.
- possible multiple graph opens which can result in open failures.

Apart from this few new enhancements to the dsp side
- add new LPI MI2S and senary dai entires
- handle pipewire and Displayport issues by moving graph start to
  trigger level, which should fix outstanding pipewire and DP issues on
Qualcomm SoCs.
- remove some unnessary loops in hot path
- support early memory map on DSP.


Thanks,
Srini

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add Senary MI2S port
  ASoC: qcom: q6dsp: Add Senary MI2S audio interface support

Srinivas Kandagatla (8):
  ASoC: qcom: q6apm: fix array out of bounds on lpass ports
  ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
  ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
  ASoC: qcom: qdapm-lpass-dai: correct the error message
  ASoC: qcom: q6dsp: add support for LPASS LPI MI2S dais
  ASoC: qcom: q6apm-lpass-dai: move graph start to trigger
  ASoC: qcom: qdsp6: remove search for module iid in hot path
  ASoC: qcom: q6apm: Add support for early buffer mapping on DSP

 .../sound/qcom,q6dsp-lpass-ports.h            |  13 ++
 sound/soc/qcom/lpass.h                        |   2 +-
 sound/soc/qcom/qdsp6/audioreach.c             |  60 ------
 sound/soc/qcom/qdsp6/audioreach.h             |   5 +-
 sound/soc/qcom/qdsp6/q6afe-dai.c              |   6 +
 sound/soc/qcom/qdsp6/q6afe.c                  |   6 +
 sound/soc/qcom/qdsp6/q6afe.h                  |   3 +-
 sound/soc/qcom/qdsp6/q6apm-dai.c              | 105 +++++++++--
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       |  47 +++--
 sound/soc/qcom/qdsp6/q6apm.c                  | 175 ++++++++++++------
 sound/soc/qcom/qdsp6/q6apm.h                  |  20 +-
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |  76 ++++++++
 12 files changed, 361 insertions(+), 157 deletions(-)

-- 
2.47.3


