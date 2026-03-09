Return-Path: <devicetree+bounces-272698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKYVJgNurmmaEAIAu9opvQ
	(envelope-from <devicetree+bounces-272698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:51:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3658234665
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:51:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B898300A74C
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 06:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE9A3624BE;
	Mon,  9 Mar 2026 06:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dO9R9LJX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZcRJ9fFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B9428851F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 06:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039103; cv=none; b=f0QJH9vJYOj4qZ7zNOsPYpXeIfpPtLKUL41ATVUfCMZVbobgK9Tibte8zhAJMXXxgQyfbCoNmyHlUhHfvcLX2B0U8pyG6rPmMEMM6fy+K6jggD/NfJE9Qguf34/vEXqETeX2QOr1smQ2+jrELnFvrpYAgv1kIuosBZTieckiXWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039103; c=relaxed/simple;
	bh=z38MtegwG3pVORKxx8amT5B8fQ+hdfij8SiR5NsMFQc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r6oGL1RaTf9bDX2cIZ5QbDlYFAlmGbLen8iFFNxzb2hHV49i5Bgl9aqMitR73smx7zJXdgbX4JFs1EySyqXnztNxMb+vZ9LFE6ETMC+MOtOPkfNcR61G6inKZTjiewn6JU5qmDjyXeUxnJHm7NKe12BDTnq4HJh0WE/l1tELjHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dO9R9LJX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZcRJ9fFQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628MxmMg3462729
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 06:51:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tZyvIVKQnXEaXVDCKwG2/zwsyEc+0sPRl6+
	vscMtVIw=; b=dO9R9LJXBKGAOjLuD+ry/oOSqahPm1J1f3q5srVGh+ShxN069jP
	JgZXToqn9AzeP/xr+zLxFph+aIUJY0E3ZjYUQQPSQ/fpYWBs1L+YlPyuM7xO6aTu
	z9QjlWBrOdgphdysqAW/n8LTP7HfH0UMICf13crs9iQdW/9bn4GbM8TgpQHOAHMX
	jDR65s43QPyR8EiX8eQvRaswB2Kl4fcNRyc/u8tgkG08HrWi7p0Sf2GxSnACCVCy
	ESsOAQGlHLGcH2gWWZ994AbIca91I6uI+QJPy8GXfvj8J5ZQdRSjndLMb/kd9lFg
	xJZUDz45dCx1spQmL0sAz+ex9qzB8xfr7QQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crcd8c4b4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 06:51:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-506b839cafaso161212411cf.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039100; x=1773643900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tZyvIVKQnXEaXVDCKwG2/zwsyEc+0sPRl6+vscMtVIw=;
        b=ZcRJ9fFQ2h5wKI6ylpUpuM/L0Dks6trCsc1ne0XcwT2FYq92yMWxvUY2gNh+BJ8Gvn
         1p/+9BLeBHr/ecsl5qVaxVDYdZrRMH3ihtFk3OQ4W2fvkNfFip1ykWYQQ8bFYZaHw9Jj
         fWyAfunrNWXLxlphFUSJL1WKRFWmOMxEqqR7AcBGzQa4Y2tWMF4PAdfOnE1xGrGjyRYF
         fhKLwdN6tNK0of356TxZ/uImxOvZD1YVdjXMFNxP4Cf+sLHoao2MTzYhPcy5NtHQUzX+
         3FT/Dr0UhX3exDDj86KSQhtg6peGbxw4oW2c8OhT8YezSX6PfMLIozfHvGN3nLsOMOxM
         nF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039100; x=1773643900;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZyvIVKQnXEaXVDCKwG2/zwsyEc+0sPRl6+vscMtVIw=;
        b=R0s7eDWRS/NbzybzOjnICeefPwIEcJOlVR/vl/riT7xgs0ZkaGNQOB7omXX6fddw9k
         2k+pEvvrcmGpLVGyporwmIea5UR/zNaY0xfmRESROx/ue9UVuvCrkVV5PhNH7M7AcsGX
         qlKceGLEj/cpVwKDEEO6mj+yT59ZvqcENB29SUbW02BUhhB0t6p5vNIKek/g5bwNsghx
         C8v88OmiIB6M5U7h35bj39Z8k2tPrpWKF7+tvl503xcUE2g5aiKac/WylbXKwZCR5SDu
         nfhw2nvZIHdNmKqYuja3tbUGJf9Cuaih1MWCwkBgRbo1XQtS7SGIVOlof/Ml6KjNmgLV
         v/VA==
X-Forwarded-Encrypted: i=1; AJvYcCWPFuvTmKrV9llSjRcQgw37PUKq98vfiOQGOzS9HRt5jMOtyWq7zjzex/7Njng8SVJVcEHgpoJw0nxk@vger.kernel.org
X-Gm-Message-State: AOJu0YznPSwFtdM5r/6oTfv8zaxB9gKvGykfc1acxyhdaVBkng0UeMH2
	48F8a3SYTaPvrIzJE1whHYfo/JvLrl15FYKWUGUOu0OkCO5wzsPAC1GxwZYp0d9rNbgxEZ60gZu
	F+A3dIrhcMtdb8drgRqX+y7HQaFIdWU0i/GRtAxw7bXeZcBR2yzo6Uob8pvlPWwqM
X-Gm-Gg: ATEYQzzlT7AUwXZ9Um2Qef/0TPTn1jzciMbW/wNjOU7O8GShdorPzGgnlCRhW4pdihk
	FyB3IGi1cKSx1kaFJvmPwWRYwgNw2Vn5Lvarqapvd/xTNDBbw4JJqfGZ5hdeRJDZCo7e+9nBR+O
	OoJRWat1BbTPckkkggfn0Kl1uQmg5Z0zQSuxIitPoE47dQAsFQcAfnu6Ivjdt05ZX9WoJT2Wd1m
	Dw/JFImxrdEZUNtqqHlVLyQzeaRr+ZByYhf/FdH5lXK/zKOlsf/uhtg6q0YIYxrlyVHinNNo8+Y
	uSNPN5qRSP5LaHLHWq5wSx6Gio6yl5nQVSQmjUwvSCthWgVUKfi6V3QfHLnYRsFBF47682cd2Yu
	0F01BzWSPab8z7ZGdW33BXC8hiTw/Ju5J+p2G4H3hY0pxeRWTVNIZxE8=
X-Received: by 2002:a05:622a:44c:b0:509:21ce:1a9 with SMTP id d75a77b69052e-50921ce043fmr767801cf.10.1773039100408;
        Sun, 08 Mar 2026 23:51:40 -0700 (PDT)
X-Received: by 2002:a05:622a:44c:b0:509:21ce:1a9 with SMTP id d75a77b69052e-50921ce043fmr767551cf.10.1773039099935;
        Sun, 08 Mar 2026 23:51:39 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f01997sm80449975e9.14.2026.03.08.23.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:51:39 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 00/13] SoC: qcom: q6dsp: few fixes and enhancements
Date: Mon,  9 Mar 2026 06:51:24 +0000
Message-ID: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: w1i5uh5vUt2NtjVRgREHnUxzmBypvct-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MSBTYWx0ZWRfXyK1NhXmfIkwG
 LQZHZEjhZ3/AhduS8CmDQ9XydqXwBpkAiTritX/DbR70+9S4XH7jjMPhCF+QU6UY5UEiKn+viHz
 fPHViMQXRSL8RWby3z2sjVyD9ChAh9ERz7kNv7qzGodOEisOVUCd5NwFGVel8OoHHfB3FfvD35H
 /Lh6Wy4WZkwEInt7f744bh7Zv9Xp4dSeAEukkrXfMqkkDparI46UjZtOpR1ET5hUwyciM2hmPaT
 WMX2PQ3wCyEv/RxU1UQFOxbLBCHWVpeumHu6gwE/KTd3d4CGQ/zz0H82d/SXgBFiw9spWhG2hN4
 IYl8UtF+6mkapLcxh0zLvJyoHGDz/acLufwKsbvbHdD7e/XHKgpmqih4vy1JEk0Hg7UXLn3kjhn
 6Tf0KGYNySmg7+fj0uJcwHyuACkIwrq5SaejMRczKgnc5wR5c1HLpBTNG57KF4KBF+f8Z4W9gXT
 xQzDBviulUmIxTTjOcw==
X-Authority-Analysis: v=2.4 cv=O/w0fR9W c=1 sm=1 tr=0 ts=69ae6dfd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=x8kTagw7d3iPfLn8lj8A:9
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: w1i5uh5vUt2NtjVRgREHnUxzmBypvct-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090061
X-Rspamd-Queue-Id: F3658234665
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272698-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
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

Changes since v4:
	- sob order changed for co-dev patch.
	- update range check in common.c

Changes since v3:
	- squashed 2 dt-bindings patches as suggested at review
	- updated yaml to reflect the new port supported

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


Mohammad Rafi Shaik (1):
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

 .../sound/qcom,q6dsp-lpass-ports.yaml         |   5 +-
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
 16 files changed, 384 insertions(+), 162 deletions(-)

-- 
2.47.3


