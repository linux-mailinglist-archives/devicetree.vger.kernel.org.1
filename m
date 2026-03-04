Return-Path: <devicetree+bounces-271031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CO1JOouqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:08:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 75693200128
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7E2F43040333
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7332280CD2;
	Wed,  4 Mar 2026 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G8bSXpWL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RtmU4d0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E25A26ED4F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629640; cv=none; b=cAHJbmUXdm77D+CGUHSOPOGpYTfUGjTW2WHMj7mPidHYcB1jbI+7Q6JHKjYw02GeAq3MqpjzVdGBOauyThao+Kqa/nuk97Q2JDf2PIWUQ+Y0z6JN/DZB0OY6gtlE8nmz7KReKBL58i0ybYBGJw3rPtY44C4drV6PVfSqSPYTisM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629640; c=relaxed/simple;
	bh=Iye+bnnMcq2UlFaBhORCaxbUSPgoXMM3QypbJg20gso=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HeCw7ND5o3QuCc0BYj6zX3w81tdDUH0xavKGCzAeu8X01D7mP/qAOtiVjOSNuie/bltiFscdcMdwg6K16A0hyLpH2bEnAz7UfK9SoYOYaknnxpL26JZivj4LeoIhs3v1yBaYZajp+5UsqytL/Gp65Kc696jI6ZfatstHr3q+5FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G8bSXpWL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RtmU4d0n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624D51UU2275166
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ADo6939JS2yhAWLZSQJW9ag9n0Y7q5E2u9/
	qTW51XE8=; b=G8bSXpWLbWjIUut5lZ2FFawxxXJiyo/ESQhmzZrT1UCCZsRUT+t
	5mM3jhzTj2Q25s2KN6yVh/L9MkX/D7YH95B3cT11rOs139klvxkQLDO913aT0BlB
	W2DYYriDW9tY6olmX22b+ofwUyTJrZxW0y3ikcVk19gnbIAchLpbEXLBsICEDJOz
	UNro7qadx1QhgyGpkiFFoEZt/7jMc1dgA3nHMmyTTVwZULxrDRQAr2QSVg84psAl
	+pzxNbYMBRokqMzGS6pxi+908+ROc15jGbdph2T4y/iNdK4xoo/pHfF2k9gRLNdN
	kIE8ST10an6UCLX/qjr8KX4HhurEchodI1w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpc4msw5f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3fae6f60so5000964585a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629638; x=1773234438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ADo6939JS2yhAWLZSQJW9ag9n0Y7q5E2u9/qTW51XE8=;
        b=RtmU4d0nk2/GS9n0A1SjhUfZpdB13MNKR2IkbYKXTW1hLfG98iZ/fkDyXCrLoH46ST
         fpFAfq3pP/TQNHdYHzRx9p+zMWAK7Apped8q65/KEiyc6GPzn7dNzZnjtuPys96IXeCC
         0JM/iCLJqBAxiq/z7W3lkuXarihTBhXnrcpP8yxz44AdO0/NAbqqxH1qThLblBahQVj/
         /Pky09UiEPRDR/E6w1rc3pX/Bhi/OfXmitvHtmX5FgO1Yj8926rRpRWdwyIoHzvBXJUL
         zsfQQ8c9D2ugnmxxnJ8INMv9n0alZJRsD6EGj/mIlFqlyCUDhbBEklQZ8FIlITqCgPj1
         7Sbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629638; x=1773234438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ADo6939JS2yhAWLZSQJW9ag9n0Y7q5E2u9/qTW51XE8=;
        b=clYrdv6Bukdy8KMWPK27DFlmy2yXyjlI738DilI90Vt4Q8ORjK7xeHi7CrxhapRDQ8
         LTBZzXmcgRb8Mj2mvqUS/yMyLkYC4XqLtA+fnP1xf+sdFdYmofsExz9vyXFENGhcpoyT
         ITVIyZtJT8TI2zHkOE0Ll/QMwdD7mjatBBOVAs8U1Hz/2WIMQzPR5qE7Z/BkWkPrgsWE
         0gnJR6VXPaYA1+kIXK+o/Of0LzpiDoOWY4iFl/vil0ElWhx8E+nsm9TJfJPcNbvZizJc
         0u/hUDuDJd8X8r6vdZJJxjdZwdScaUuUvCaJXXjGLKhkRXUzG8dfxtopxXIOHeri9Vgs
         i4/w==
X-Forwarded-Encrypted: i=1; AJvYcCWVcgEgAhIvzt3/zNqwryoeh2p5BLAqLWvFKBZRk6Yo+Dktctcl2KZxN9KvrDTqDNnYIo9U9Z6KSYtE@vger.kernel.org
X-Gm-Message-State: AOJu0YyIbBR9SDVNaGIp5JvcZAPSO8A6AQzA9OwfcvtuDrqaLB5sTDfR
	t4Ze2N6Fx2L1vxcFnJai1rNYP4R8b8z+Meku+BT6YoMcAFQdHihX8MWmgtZkOMjC4Vl6P3bc+JG
	9lPw9vVXTFq2X/YMRUq+pLRPlax8msuNqv3XSUPAqpn8eHn5OZmYh70IuxKC5El70
X-Gm-Gg: ATEYQzxX+I6blvjs1XuvabT91PamLaeUQAHUTHDcqbeSvgRgwbcjjxSRKIHIu5KcqLS
	76t1qLODub3pnB9YG9mTlFpA6PMAUJif9K5IpIXLWBMyWYsxqb2aRZLxVGGrTJyOMJlRRo1TzES
	3vOPMSWdwSpRxK52v5B98p/cego7O5VxfUWnLKWbU/B4lbpdpTrbanXGnq0O34DKk+/Gp9FBlAq
	Vtcai+aF7BH1+oQVM+nKuTOlUDKHiseLVgPSfGgjW8As902AYxVYL5eOrP9qQ4PY3cyDSeVOMnk
	H21wsscgU8cSD6KecAc8Ahf2eKdNCaSyWlbbD46ZJkOIsSOJNlJSV9T6aR63k8KtWL23LY8wlq7
	8k5RrPNrcqK9IJiyi4+eFn9pmIpi54jxUS1S5YuHeBzZqVbdMNHJZ+4Q=
X-Received: by 2002:a05:620a:1921:b0:8c5:3045:854f with SMTP id af79cd13be357-8cd50bc2878mr623757185a.30.1772629637509;
        Wed, 04 Mar 2026 05:07:17 -0800 (PST)
X-Received: by 2002:a05:620a:1921:b0:8c5:3045:854f with SMTP id af79cd13be357-8cd50bc2878mr623751485a.30.1772629637046;
        Wed, 04 Mar 2026 05:07:17 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:16 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 00/14] ASoC: qcom: q6dsp: few fixes and enhancements
Date: Wed,  4 Mar 2026 13:06:58 +0000
Message-ID: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: hqBkHJ9pUiJVMmbHyk_DvPtNMZgpXiPb
X-Proofpoint-GUID: hqBkHJ9pUiJVMmbHyk_DvPtNMZgpXiPb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX7qTVCWRlEKe2
 oyCpfSbKVHhUOePEvCDwK2HOdZ9w4bBE7aKUwgEmA9On/JwAONSxFjdYHWSg/4d0YqTttqhiE/r
 iWQ86uO+BP9R7KZIHIiLetptJ/3J34eE50ZQlCWCN0T0Lbr/+g0VFrkFhHKMsGPXSw550ulQ8Ul
 3LeiVFzcpOgvvPXsWlAv11Qt6sUQUDyENBVE1bdu3uRcP/ZUzR29ZdgQ/bP1lLzpPBc42YBJvja
 4NePtsfDeCX6da//sywQmh61eOY+gfv+klYCK/8kkaKQZuryT4LgfRJiPTgq66/vIpRmT31UQPP
 zMj3Akozszi+WWpIuLh51sGKRnDS9Be9VgGrsj0WiIy27/RgzxZw69QDf6wxfFLWndkNGRK66Tc
 EpLbKgilPQuUrCLWmdbJT7qxGtMOTqNDfIYqWRTQVnqMK3vcJk+1gIY5LgGwgQixNepXPwYgwR8
 f4OqAG77e6H85onhuLg==
X-Authority-Analysis: v=2.4 cv=C67kCAP+ c=1 sm=1 tr=0 ts=69a82e86 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=x8kTagw7d3iPfLn8lj8A:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040105
X-Rspamd-Queue-Id: 75693200128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271031-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
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
- add new LPI MI2S and senary dai entries
- handle pipewire and Displayport issues by moving graph start to
  trigger level, which should fix outstanding pipewire and DP issues on
Qualcomm SoCs.
- remove some unnessary loops in hot path
- support early memory map on DSP.


Thanks,
Srini

Changes since v2:
	- removed non-dt header update in bindings patch.
	- removed some leftover debug statements
	- updated function to void where it did not make sense to
	  return anything.

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
  ASoC: dt-bindings: qcom: add LPASS LPI MI2S dai ids
  ASoC: qcom: qdsp6: lpass-ports: add support for LPASS LPI MI2S dais
  ASoC: qcom: common: validate cpu dai id during parsing
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
 sound/soc/qcom/qdsp6/q6apm-dai.c              | 101 ++++++++--
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       |  48 +++--
 sound/soc/qcom/qdsp6/q6apm.c                  | 183 ++++++++++++------
 sound/soc/qcom/qdsp6/q6apm.h                  |  21 +-
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |  76 ++++++++
 sound/soc/qcom/qdsp6/topology.c               |   8 +-
 15 files changed, 380 insertions(+), 161 deletions(-)

-- 
2.47.3


