Return-Path: <devicetree+bounces-308440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9YLqLoEEJ2olqAIAu9opvQ
	(envelope-from <devicetree+bounces-308440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:05:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A7C659888
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:05:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=L0Qb3v+Y;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=IyBNTPQB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308440-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308440-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A898347441D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAB43D7D61;
	Mon,  8 Jun 2026 17:20:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6023D6CB5
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 17:20:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780939251; cv=none; b=Eqo6sAyNMqBVIBnAmoL1l3Y40Xrzm5pHxeyNnig580+9us74E+ApcnkTaEHEvocqWjjdHClHIQ7QdwDnGW8Ybi6M3ngR19YH2m37j5JyjcY9lruSwkH7+B1VaeUORU+rkLRtSyM9qA+iGMMNgf4en60IidRlHhaz/632O7zpStw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780939251; c=relaxed/simple;
	bh=Q2JBR3kGC10lZH2CiMxZsObJlEtkLEh1ibZOUMTXwhE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JeKUet3Rcpp+/ReZaF7VMlNIxPsEf5RdFPOyTRk8Aa0tjNopg3hVYl9npr/kwR7J5NU2gHZ4xh1B9EN2AfJ/iJyxYn1qWSSlIrapfC4AJrZHQrzQzsho62T2LbF3YazeE9OAbLsS6mw2fMlSpI5Xd+PaYPXl5UeHLv/spvw2pO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L0Qb3v+Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IyBNTPQB; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658FFVML3588414
	for <devicetree@vger.kernel.org>; Mon, 8 Jun 2026 17:20:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VFN3LV6HI5bxZIkIvwfrDMorw0Yst+KEONq
	BEnm0csA=; b=L0Qb3v+Yuwt2MqxBrwmzePhPmeqefmybIoycc1CfOX8aS/d72rF
	mRaMFpUf573dw2YtHD64MD2EMb1T0zxcvwzALXnLuyTgBXvQrbo95ggOgzxjAtM2
	1MfoVTU2MMd2Z1rek5p2XBW4iJo87RoIdAGQ36GI1thySdK+42Ykw0UnFs0WZ8mG
	wrf8FSEjbG+3rEAgRZ9S22I/Sn0RwS7IpVQlKJAqKv1vZZyKHpdXDS3Y0KK5RF4D
	zwKb9vxpDM9u+4etawEPTMwWc2nADDigjc1RuCfVajaQdSjKMSBtrNwuyqRNV0zk
	Vq2PA8rZw+2z38RxlFvQteMqwDhdWkF6XPA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun421kp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 17:20:49 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8422b1354edso5437310b3a.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 10:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780939249; x=1781544049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VFN3LV6HI5bxZIkIvwfrDMorw0Yst+KEONqBEnm0csA=;
        b=IyBNTPQBG5E/NiIOHr3Wm+44nVWE9E5txfI+hxUZfY3oqyYEfVbQbOVz3NoNW2DRnH
         NraOoe7fUL5TLmY0zSw+ajEZkm+Dq8+9Gd2cYCut2NSvDaIYXhYcR7Xya2UvUGseSiFl
         yaWfSVPnOVRxwejmZozaNz6DsPVgCeuI+5W7In/2Q6VTdMxjs4EkPiFRlHeO73IdmUCT
         xdcszvLMYbNAP/z6XALJI098Hsel1NJu62LfxdYMOzO7rj+a8KAq5cxP9FAj1s3BzAaV
         6TV3tewGtiptAEr2nYKGuYmYohdrveYujOOfK4QB0Iq3ApZq386vCubU9tB1V5IUilLM
         3Enw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780939249; x=1781544049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFN3LV6HI5bxZIkIvwfrDMorw0Yst+KEONqBEnm0csA=;
        b=jQA3Uhnj5Xnt7vfsIUaKX3g6P3XihC2UAeLYdamzq+cAED3mLQkCa9uxnWpvwnmaQ8
         78ZQ/mNM5AQ+IBGI2lrFkbRCd2EEvuJgCM5XzNeRLdrfPOMmX8RCilLwT6BFuNqNQNId
         VqKI/uixa8dt3PrmeoqboGxwO5ueOCXhceaZdIOI9V8R+qAoIoREm8Rj0tX3/IFP8eII
         nvvjuTtgqn+fKcHI5Y5yTC5rNCjl1ZUWweIKa223OVsSP/WpUozeD3wd5B6fZRtm0n5/
         w/i743OLIHMyrR1NO/yoHmXGRMSD6mKicO02aN1U8N01f4eVbLQ2RsdZ5jGAVLq07JE0
         qm+A==
X-Forwarded-Encrypted: i=1; AFNElJ+bJWYdM/+X43VBLKG55r3Bu1iceg+2Cgnkvk2Qpph2WhnhL8suZA1l21y4U43WkgYcx8999G6Pwv7Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwIx9p/Rw8KiTOWHdF0DPJC/Wf1JK4aHsgn+V/ZLsqZ42xueHz+
	1vp5Kg1472AOR8qOcZFfF+1zA9mv1QpIO6uG0hsgdfGWK5giKycRCam8pcwN+ZgBWP1xO1Z9jI8
	khXnyxz8lTAx5AHhMU/hYf1tqS1iLO6hiegl0kiI6zWr88cjQrcl6kbtEmiiI3tLA
X-Gm-Gg: Acq92OEyd06IHn5+yCVBKjAdzsONqPqQBdJjxko/3k93dB0seES8HZnLBGzFe+cXXg6
	WqUFpbl2q51K6boOEWLQscN9IGmYNpg6KS+QM0MAgtItDUdhkUEQ5QwrqGtFHp+gADfvrDDddvb
	8haKLkwNDuFlV7LjGpJBm1DYUK2sJm3cZ/OmS4zCZI5RH0adDfKD8FqYODGTGwY803AuNw4pKDs
	dG2mLxuZ4T10y9y5gKxGIu146K9iYayoKPehWvJg8F5EPrF4Yj5B3Za7sZzpkVcVE28TAjTkxwb
	XUI2E2vWXX5mdAbUPZqG0exb2pwMwWkjeXUm0YB1KlRwv6FySSH3g6a+sW/vhJVyaBp0fsw2J9u
	/hvSn2QRbQE3K628cuN7TMu4aGmwmBPIc492wUuJyG2h743BSV16Hi7kIi0FxhmsiJovh
X-Received: by 2002:a05:6a00:a383:b0:842:7992:bdd6 with SMTP id d2e1a72fcca58-842b0f09549mr17238697b3a.36.1780939248473;
        Mon, 08 Jun 2026 10:20:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:a383:b0:842:7992:bdd6 with SMTP id d2e1a72fcca58-842b0f09549mr17238658b3a.36.1780939248066;
        Mon, 08 Jun 2026 10:20:48 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221059sm17590409b3a.7.2026.06.08.10.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:20:47 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] ASoC: qcom: Add shikra LPASS RX/VA macro support
Date: Mon,  8 Jun 2026 22:50:20 +0530
Message-Id: <20260608172023.2965292-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDE2NCBTYWx0ZWRfX4IjobKSd/Pfj
 59KkBiLWNZvC8q6Lor4Yve+Ssh6pQ3avE3eF5gf1CgrPl2iAyxVqPPEude4yveA+1Q80hVopcRx
 ovc7jI5YoYrysSlUe6nKJwWn1e3g3IGTu/MQVOdBTUAH8pbiCQiV38K85Empc+jWGMGddX0Dcco
 QqhCKv5dsh1FZ/daAh5IBBSBKbcitowUhS5O2yj06YpuaZgGQWgSOv/caTCBRLPiru2ea0ce/FL
 uHHj/ofjOvz+93Ti01UJEb68ncxbG85r+w4OQYYRjOKA5ZI0PtwXULI2nOim64zMbxRmToIbnKA
 RQ0LOSG6Y9tpQgTItWcSp4jxpzk+wO1+EUNg8fbEntQkzY32mIyTSFCpqyOXt0DCKafrTu3eKtq
 EsaHqWBF9/KV3WPhvexcseABTJvI9KvNNJ0J8/l7TrIl753vHyauD2yEsi84k6n2VRoFBobyuOc
 bPYR3akd4+EzD7q/TYA==
X-Proofpoint-ORIG-GUID: JJPWNU1xGxWbJIfiUCjY2mYEpSUC4hIw
X-Authority-Analysis: v=2.4 cv=ZY4t8MVA c=1 sm=1 tr=0 ts=6a26f9f1 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=433bO3dLITp610D6LnIA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: JJPWNU1xGxWbJIfiUCjY2mYEpSUC4hIw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080164
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308440-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24A7C659888

This series adds shikra compatible support in LPASS RX and VA macro
codec drivers.

Patch 1 updates RX macro handling for codec v4.0 and adds the shikra
compatible with FS counter bypass support during MCLK enable.

Patch 2 extends VA macro support for shikra by adding v4.0 match data,
a shikra-specific regmap/default table including ADPT registers, and
ADPT and FS-control programming required by the platform.

Mohammad Rafi Shaik (3):
  ASoC: dt-bindings: qcom: Add Shikra rx and va macro codecs
  ASoC: qcom: lpass-rx-macro: Add shikra compatible
  ASoC: qcom: lpass-va-macro: Add shikra compatible

 .../bindings/sound/qcom,lpass-rx-macro.yaml   |   1 +
 .../bindings/sound/qcom,lpass-va-macro.yaml   |   1 +
 sound/soc/codecs/lpass-macro-common.h         |   5 +
 sound/soc/codecs/lpass-rx-macro.c             |  14 +
 sound/soc/codecs/lpass-va-macro.c             | 276 ++++++++++++++++--
 5 files changed, 276 insertions(+), 21 deletions(-)

-- 
2.34.1


