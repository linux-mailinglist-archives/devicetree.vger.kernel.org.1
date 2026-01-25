Return-Path: <devicetree+bounces-259251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /mnvLVEhdmndMAEAu9opvQ
	(envelope-from <devicetree+bounces-259251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:57:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AB280D9A
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DC3930048FB
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36DFD31D39A;
	Sun, 25 Jan 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cAC8tNHQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AuGFfiDO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D65318EDA
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349454; cv=none; b=mpDVMIc02+05doGTYiGjE3x0lsDQAOmYOQ1tRgwjbt8BADG1XNNKxbGqId01jPwOGN3vgsLHzjDtbjpoBlFXsWzQMfXpPpGni2YmlJyuayPbM9HhItAY63erXPhsPG0GbZxdiwVcRkaW+TRG+Hv4wFO1MBInMFgE6Y/47HTGIPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349454; c=relaxed/simple;
	bh=rkJukxnvqXXR0/BeCrBSOwuDK2zkAMf7mW+T1f0i9PU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eMJK2zB2ZqOaT4lFzgDcmqyAIpJhf3IyoYINtWbmnNCLB/M3oIAU8kX5MVO8tER0dcgJ1tFDuJN+sQdA3QD9WlMxbcBh40Pkxob3qsrgYKBby3y+ZuerkQYKRPjWe7hGu6ymYIjYGq1t8fjiCtSEcPGaBstidWQwfvj1FQpTSvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cAC8tNHQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AuGFfiDO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P102TV2350501
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XcGsi0tFIgbMLA2PV0JYHN
	Dq4kxHpiy4wjiiNvU9u28=; b=cAC8tNHQTRCv+n9tg6kIYLULkIZfA79/mhO2xG
	ubZhbzOEvg6Q4CLyCNaPkH5IaWIVU0vScTCjnMhXIw0WdwW99MCJXuLojz9RotNs
	utAd1dVDVRg1O4X+HIB9pqGApOHmSNU3FctTf8vIEICJC0ekX5Pf+pTfdwVwFRK0
	cthNCWuHOvo80oK0du+WDk5SGZZ6C6vmMgAQEpObuwPJuDR1rE/z9N0yuy23Bh46
	5VAlgaKusGoLBe8Zqga1JRgH6f/vY3QNWo30z7HVTxNCZptFO3EGithCEY+QFtJ4
	EDFBsD7v+/i+M1w3LQ82ZiwUDF/cajl3XAaBIlH+yppv5aiA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9ft7bt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-502d38a3e39so43462581cf.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769349451; x=1769954251; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XcGsi0tFIgbMLA2PV0JYHNDq4kxHpiy4wjiiNvU9u28=;
        b=AuGFfiDOOCh0qMrDij1vJFX2OlZH5mZA+bKogfo3PuO7oy9rRqOPwu7dQ+jX6Y//r8
         WRqqZ9EKCqGFTPoHF+F1KbeSa3mCTS7ToakSkwMv0gqFc9i5jIaRdhb4rbgI8aJkJldE
         mDOxhQpway2ht637yBv6V0AO4IXQ4/5xtK/xesCKWfxHsRi3Ns64Xh6RFHLlZqZwr/IQ
         lbmJ7ZJ8kIQ0Acl0+WAFPCBJhAntlZ/6hMovZi6+VwE89HGJZz4IbpQ93EFYcOYVnHr2
         Sy0wYYxvUhFMeoCyihsu4tfvo79vCQa7Fi0Gw16Da2CsY4nttM0W7ZvtLxANucvCMWH9
         qu/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769349451; x=1769954251;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XcGsi0tFIgbMLA2PV0JYHNDq4kxHpiy4wjiiNvU9u28=;
        b=Tr3pdl4GCinwRyguNcs8UgAn6QOd7iRzGOZlxm2j7s6vzG/+NyyXkzkhftaEP6u6Ay
         7CMW0mCQQSzRgLM601rz4kW19xGB5+UTi8aMvkIrtrxWRg8bcoEIDaViOLZUubI0eqQO
         z7qKJNCyaTNAnbF9tHI0SdHJVdPP4OMt+ZhDgpnc9G0G8r2XZ1arcP/S40TM+Jdv7fcI
         wTUwEtSI+rKnBwZSXxr+pii+cApcvre+1FHeukb8Z4jDM736bY6s2+U2dS3n2CicA53b
         7GzWvUeY3ZnfYaPxhP3Ud0DE09O9CvxgJSYLKbN7ZYMoG17++nZdTq0/zlYxUrpKcoy3
         meww==
X-Forwarded-Encrypted: i=1; AJvYcCVX0gKRBpsqoBDjzQ/gzWSDF1DTM3gqGHc9hE3q4j3KARIp1Gz9jEWVNL6TBCitETMzGSJZC/2WHcRj@vger.kernel.org
X-Gm-Message-State: AOJu0YwpxlUyhMLK12tiRNZwbUeBlmXQGZhjx/aK5RpT5Eh0yiRdjs0A
	/ni8FxrCj4FdjJ1E5R3fFR/epww70uqmKKk3tHn5PV3vWm+XjEsCeKND2r8Xpq+a5+GERqcYD22
	exEsMBSGRd0fdV6Utj+pGKYdQ2iU47T3ckElceNwCFep/oH8kcndX0mHUQMpLVEX3yVOyQWg9
X-Gm-Gg: AZuq6aLvHkcmTAtLl15ASClp8Uz7ZVQzCuy3lhynRousneoH4y+y4piWdkUodztzvPD
	qczxGoD2ggt1ZfUP6kbXXJlsEDIQ4YpAEHHkE1YSDbsgygnK1q4/FeRH1Xo+xpk455kM8Lz8OYB
	xq8JsSgaVlZPgpW4dryrJ9ARs0omrADuHoXLMSsTTdbfsTdPy+1plhgON/v6KXx8KKORgNdlBIm
	KKZdxLtfJE+dV8Qy0G4dstNf2WAxObDKD6YrRpkoqE8KrrxvYoiebpS9xl9UCafMl8yuLMIZsi/
	YmYHuy/b+MIgppL8mwC4TY09ed3I7aVDLUAFUIlUfeFJ9mq0mTpwTx8Pj1T2sxvGW32ECV11ckS
	Z5SDO32XolUuGYwRHxyaT8lHRDONMJCvr42Zc1jdbSwRmVGxnTgSsMf49dfIL26c0hBbFkwMGUh
	7G/pVVfw2IBDUEkh34NwbODhw=
X-Received: by 2002:ac8:7e83:0:b0:4f1:bbaf:c5d3 with SMTP id d75a77b69052e-50314cb03e9mr18633701cf.59.1769349451074;
        Sun, 25 Jan 2026 05:57:31 -0800 (PST)
X-Received: by 2002:ac8:7e83:0:b0:4f1:bbaf:c5d3 with SMTP id d75a77b69052e-50314cb03e9mr18633551cf.59.1769349450626;
        Sun, 25 Jan 2026 05:57:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918a3asm2033621e87.52.2026.01.25.05.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:57:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 0/7] media: iris: enable SM8350 and SC8280XP support
Date: Sun, 25 Jan 2026 15:57:23 +0200
Message-Id: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEMhdmkC/13MQQ6CMBCF4auQWVvSlrSiK+9hWJQyyCRCsaMNh
 nB3K4kbN5P8k7xvBcZIyHAuVoiYiClMOfShAD+46YaCutygpbZSaSkoEgv2ta7lMovadKpqvZW
 mspA3c8Selt27NrkH4meI751P6vv9SeZPSkpIob1Be+odHm17Cczl4+XuPoxjmQ8027Z9AEJ+R
 wuxAAAA
X-Change-ID: 20260120-iris-sc8280xp-85d13bc60536
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1769;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rkJukxnvqXXR0/BeCrBSOwuDK2zkAMf7mW+T1f0i9PU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdiFF+gMoAh3brC54+GKprzT1LepouToyFFPWk
 /R7hH7SalOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYhRQAKCRCLPIo+Aiko
 1TSLB/wPUYsXsREJWWt2uuS4QeK80hGl3eyML0i53kBw7b5woHvus2c4+A7zYsr9ajzSFzTe5ye
 ErdqQqqCG8HXjiAd9PphyVl+99vjSmRpfMCWoOrmyyMwKFdpZy0IHsGuEk0GGKVxAqaqAFgj7DB
 AUotgT9JH/jxsYYVoWdsGbg6b+sY6A55SWL6Spht2w0mSpsurHWgQZFbHRtKZ2NQauwOkRyaG0+
 mnAZXSq+JRhJzcayavNz2/K6E4UkG14KSrXojBR9M5rtPVUS2M48pzJXCjyCTX0/Ttyyr8eHNZQ
 tWopXlDoDXhoa9dnzvi7I6XI4/IZqqxrtPW3lhFzhTW3+CeI
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: KqPmpePQf93mNnRy5TyWt1jY-_f0Igpl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExNSBTYWx0ZWRfX7oOFtxccXL4r
 ebtyeSIkpy8WBcu+68FenPP7vFXAXlM7mrkYVcRhatVBG+5C+secpgfGTHBf57a+fnz/+cTWRoV
 CPjJ7diTTk4LvIu1BuHcMixVsDXzkV/6K7Au4HM5OKBZ3XNyMkMrcNRvHOhq0ByJMRVOMoEYbLZ
 lmCsV00M+/bLAjcMcY6ctOwaxdoEXZI0k82gJfRnNvU1GYScG7SUyFvlVJi8VqkHFXnx+PE2KtS
 0XN+UEOjug1tIVcFcjVgWwIIQgGxnVR3vGL0PxjlfM+clghvkdm+cdkUVSbwECBhWvGoOT+B7gB
 y0Eksi0OqJ4Ab3Su/3ZKXj+DZRNoTUi7ZaqNzx0Q/XQ5au7lAnwVirYblRRgABzryZzg4KXEJcF
 sVNND/IwsYHJ6wWnLgtW0z+L4LXcE/sfaz1BtGXVEMt6qCHqm0ZaEg/RPSDxJEzAj8kC6Lw+8nA
 OFRHOClkqIoKdvsi+sg==
X-Authority-Analysis: v=2.4 cv=btlBxUai c=1 sm=1 tr=0 ts=6976214c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ajJ1i8ZOiCObOscSCPgA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: KqPmpePQf93mNnRy5TyWt1jY-_f0Igpl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 adultscore=0 clxscore=1015
 suspectscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250115
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259251-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 05AB280D9A
X-Rspamd-Action: no action

In order to enable wider testing of the Iris driver on the HFI Gen1
platforms enable support for Qualcomm SM8350 and SC8280XP platforms.

The driver was very lightly tested on SC8280XP and (due to the lack of
the hw) not tested on SM8350.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Added missing chunk, including sm8350-videocc.h, lost in rebases.
- Link to v1: https://lore.kernel.org/r/20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com

---
Dmitry Baryshkov (4):
      media: iris: introduce SM8350 and SC8280XP support
      arm64: dts: qcom: sc8280xp: sort reserved memory regions
      arm64: dts: qcom: sm8350: add Venus device
      arm64: dts: qcom: sm8350-hdk: enable Venus core

Konrad Dybcio (3):
      media: dt-bindings: Document SC8280XP/SM8350 Venus
      arm64: dts: qcom: sc8280xp: Add Venus
      arm64: dts: qcom: sc8280xp-x13s: Enable Venus

 .../bindings/media/qcom,sm8350-venus.yaml          | 113 +++++++++++++++++++++
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 ++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             |  93 ++++++++++++++++-
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts            |   4 +
 arch/arm64/boot/dts/qcom/sm8350.dtsi               |  73 +++++++++++++
 drivers/media/platform/qcom/iris/Makefile          |   5 +-
 .../platform/qcom/iris/iris_platform_common.h      |   2 +
 .../media/platform/qcom/iris/iris_platform_gen1.c  | 111 ++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  10 ++
 9 files changed, 411 insertions(+), 6 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260120-iris-sc8280xp-85d13bc60536

Best regards,
-- 
With best wishes
Dmitry


