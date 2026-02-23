Return-Path: <devicetree+bounces-267580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yO8kFIWXnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:08:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 024BA17B405
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:08:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B46653046AA3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5C733B6E3;
	Mon, 23 Feb 2026 18:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FYr0DBz8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K5Xf9XbB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FF133A9D3
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870079; cv=none; b=eXTUewfu6lUEj/SHJiNdmdkc6YUzRn/0ozBdlQjih8dm9ofpT7roRA4Z6jIPuyW5AlAcRpeaDNGdH+FngqMlCqKm6a+pf1gFSuqWl7VBrVdCQ+o8kGQzWxMoM0aBJaXcpnhmiNr2Jdy4w1NxZlLNvqSCz2z2iSmX4GJeZ/FA3w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870079; c=relaxed/simple;
	bh=5A0PZJ0tcK3fkLbl6nvYDc3AaJ58tBa21J94OKzY4+U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Cs/vi6ZqXGcBFQcrROYKLPteFPYN3L+bdcq9PDIWtpTc9tHeWfXPuDP6wZuHNQ/2vdkx7/p2noiiMs5TLfYfYlAGEUuUR+hjpaznslZC932tiM4DADeOes1yvyEuBVf5iaGfVDP/8OjIj33XS4efuNULNIVhrrDeeKrWicJRnyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FYr0DBz8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K5Xf9XbB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NC2lgX3151897
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=37mbn9sGZIUZw5Cf10iBTiX1YJvm5soAKR6
	78F1qQkw=; b=FYr0DBz8pwoQxydF9LLASATu1nmPKJcXUan2LZh1yqcmFyFr44o
	hT6Um2OxxvfpxlzYHEOlxD1WFeLTPlV8WgjQQEjV8UHGHek9Ywlb3ao7v+jPifF3
	iLRGcwmh6rOXKhIISElZjABvixWjdaMDQcReJr/e/Q8gSoV5AN5tcd+1YVLzlA6D
	DDgiRrPWu/a/5kLDiERL3UCB6ImcMa9mQFHm1q6IJtAZd3fDBJaEghVvVhZzMz28
	VZDTdWzrWWRiJvVzCQ9yo7DAOhCvTAKh7147WWOs0nxuhcKZe+LLGvsZCMLYtlzS
	Ox20F6WciG1NhxI6iM/P/5n2noNjL6c4f2g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj895n8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3a129cd2so5843882285a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870076; x=1772474876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=37mbn9sGZIUZw5Cf10iBTiX1YJvm5soAKR678F1qQkw=;
        b=K5Xf9XbBcu0RrdwNSxV+FbR60tq2d8TzAn1lMfj41Q2QDfRRY085o4ZoQ50cs4C0GD
         6tPoQSwmpW0JtLExqYoYMyV/uqEImA+FB4gGO0RqeFJ4qdwfq8YydfjesXQBDg2p6mVU
         3h3HpS6lvxX0hZP+D351fTLoiPWOWCiW2WuT5tmhSb6APo+WTbJ+/VPX4PWWWalzOKuI
         FXt/ZHRtF1n4l+E2KUq9PS5cuCEtxnDORIv4/HzfT0ZYa9HAiLXPNvejWhLIY1SG/BM4
         6yuyeUNv7eqeSUWYjbcTQe313G7XSQzTXydCOXLE1kvIXoiEbmj42vICd0Ffc4R+LohR
         gWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870076; x=1772474876;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37mbn9sGZIUZw5Cf10iBTiX1YJvm5soAKR678F1qQkw=;
        b=Kto+zjHqZRxUaumQdWGo0lEechTWpxn9aPpnlekhqQ6fnoD+ji0iX+jXKYMaroYW2o
         JsE9Bgm/AErXgPylHn8UxL2j6apWoayqc9lNJ/EQYTGEv9XvKB0IdtJw/y+WU5gNySZX
         WTpNV8nJ/jQJOr6aToE3AodzWe8nL7FOOXjlgiBaWn3tThrkyjT6b5Z20aNk9hxyNG3W
         zOfNtKDelt+kRpDGIKRXvMVjTnQCG4kD6Da2pEvATGCOseJ4KtNjUsF6efb8FGS8uUfT
         VttGQ2Au9/jOyeCHPKVEKU81tHXn1IR7pNVfY4BmRyIFAEXjv9hfG7wW7fDUvH6o492f
         JAXA==
X-Forwarded-Encrypted: i=1; AJvYcCULMMMsHXyk0Am1UHjuEWRvS3YUo1XETOgULau8tdKeL27b0nwTRLJUP6eW4N5F6ObEoVo279OgDKF5@vger.kernel.org
X-Gm-Message-State: AOJu0YxS/v14wPaeF4uKnYp1TJI/cg2stnyUqgHFwgmwO6JxBObWBOSq
	fyrCCcMH0tTi1g7CznTxQBk6bA/l5OGepll+iohgKNEX9ObFBiltXD04IAVCMrfswrYTKEz3+Gk
	WiDpolXjZlWSAyT1ruHnE5z7oY3R1Pn9J45LqQDyctyOoY7DBl1UffK1TaXqn5aIx
X-Gm-Gg: AZuq6aJ1cjxPOSKDmGomTwFfoCIp3B3/qlD9Ao5NMU8bWoHZ8iYMGoRUgm3TPGECHT0
	ONnlMM3CX2hWLJgfFl026OySWq+4B5OlVZ3fhZMm0U64eWe3sJG/50CdT+WFuW0cdLawJVRjoWp
	77keNe6TQ3cpIixQEyoVtia/R4QRMHDKqfOOGBLc9+BPjiL+2tHwev5LVlDU/Z0cSm01KvbKHcD
	MekHpRuIgFxRsMwDly2ydxbXvk5PCqoPa8P84lslioy7a4dqtn/JGryTlRpoU7w24atWwogh8sQ
	Lh2u5KJRLLfqXnrLAKlM3JUvzmtQ7O6x0erqiknwTts0VCDGy5BYj/w8Uqi4f5BDu6/c0YiJsfV
	4Tvtg16AUTmiKE8YuDJZApYUf34xuCpLMKgTcJpVrDvQWOfGsWoggLZo=
X-Received: by 2002:a05:620a:4090:b0:8c6:a103:496b with SMTP id af79cd13be357-8cb7bfc8d5cmr1983722585a.25.1771870076151;
        Mon, 23 Feb 2026 10:07:56 -0800 (PST)
X-Received: by 2002:a05:620a:4090:b0:8c6:a103:496b with SMTP id af79cd13be357-8cb7bfc8d5cmr1983715185a.25.1771870075545;
        Mon, 23 Feb 2026 10:07:55 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:07:55 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 00/14] ASoC: qcom: q6dsp: few fixes and enhancements
Date: Mon, 23 Feb 2026 18:07:26 +0000
Message-ID: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX6RvHD5DCjUuI
 P3Qqj+TbDxQDv/DX5Rm98GtQXtzR0fJLEIZHGbrDIcgZIDuUyh9i/KOxMxztExq5s3HkzgVXnUI
 R83E6I/I22HnO4kXOQ9kasBO6fX2RKvD56o5SAHrxmjT1DbCfvELanz1AfCP7E6UDJWQ4xU/5eP
 3l4VcCqigxa/bKXn4rZLYNDgp7YgZrwRVzkPKuqxNFTwhUwjgIxd/Cn2gFPrW2RFE2OjTnFUNSw
 A7fGYFapWonruKW4dreXzD/Jk2HNE5v8orONm/pJGa65oosap/967xTW1JRNr/BVXWmXmUSQ8lH
 ZF9XCefwXOM0eI08LvsiamPmUMsgrpHKX1d6B9Rp08z8+AuLqxv+tQ7wrfDPhsg7++oQPjEojAA
 lqbOuLMQ331x1NhFueDXnVU66h9C3ZI8tOlEd4CEeWJn/+nFKWY8bMx3g7D/PlfdllAlSF4kEQe
 CAifyUiDPbC2QG+LBGg==
X-Proofpoint-GUID: wlGG4ypX6903EBv3jeg_hgJ6VjbzYHg-
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699c977c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=CdGEBIRw-R72dx1e2_YA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: wlGG4ypX6903EBv3jeg_hgJ6VjbzYHg-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267580-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 024BA17B405
X-Rspamd-Action: no action

This patchset contains few fixes for the bugs hit during testing with
Monza EVK platform
- around array out of bounds access on dai ids which keep extending but
  the drivers seems to have hardcoded some numbers, fix this and clean
the mess up
- fix few issues discovered while trying to shut down dsp.
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

Changes since v1:
	- removed LPASS MAX PORT define from bindings
	- added few fixes found while testing dsp shutdown usecase on
	  Monaco.
	- replaced tab with space
	- added port range check in place at runtime to catch array out
	  of bounds in future.

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add Senary MI2S port
  ASoC: qcom: q6dsp: Add Senary MI2S audio interface support

Srinivas Kandagatla (12):
  ASoC: qcom: q6apm: move component registration to unmanaged version
  ASoC: qcom: q6apm: remove child devices when apm is removed
  ASoC: qcom: qdsp6: topology: check widget type before accessing data
  ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
  ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
  ASoC: qcom: common: validate cpu dai id during parsing
  ASoC: dt-bindings: qcom: add LPASS LPI MI2S dai ids
  ASoC: qcom: qdsp6: lpass-ports: add support for LPASS LPI MI2S dais
  ASoC: qcom: qdapm-lpass-dai: correct the error message
  ASoC: qcom: q6apm-lpass-dai: move graph start to trigger
  ASoC: qcom: qdsp6: remove search for module iid in hot path
  ASoC: qcom: q6apm: Add support for early buffer mapping on DSP

 .../sound/qcom,q6dsp-lpass-ports.h            |  12 ++
 sound/soc/qcom/common.c                       |   6 +
 sound/soc/qcom/common.h                       |   3 +
 sound/soc/qcom/lpass.h                        |   3 +-
 sound/soc/qcom/qdsp6/audioreach.c             |  60 ------
 sound/soc/qcom/qdsp6/audioreach.h             |   5 +-
 sound/soc/qcom/qdsp6/q6afe-dai.c              |   6 +
 sound/soc/qcom/qdsp6/q6afe.c                  |   6 +
 sound/soc/qcom/qdsp6/q6afe.h                  |   3 +-
 sound/soc/qcom/qdsp6/q6apm-dai.c              | 105 ++++++++--
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       |  47 +++--
 sound/soc/qcom/qdsp6/q6apm.c                  | 187 ++++++++++++------
 sound/soc/qcom/qdsp6/q6apm.h                  |  21 +-
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |  76 +++++++
 sound/soc/qcom/qdsp6/topology.c               |   8 +-
 15 files changed, 387 insertions(+), 161 deletions(-)

-- 
2.47.3


