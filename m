Return-Path: <devicetree+bounces-263766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBoMN4MiiWn/2wQAu9opvQ
	(envelope-from <devicetree+bounces-263766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 00:55:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3309110AA38
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 00:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F1A430015BA
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 23:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E533859F0;
	Sun,  8 Feb 2026 23:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XpB+IgQQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aYSysiOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90E13859E0
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 23:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770594943; cv=none; b=MHWB+Pat0NwkhB51pq7GtHCWWo0T25n4KvVpVpVwCad6c8y6S+GPAdoEBp9OvG2lfhBCxqYHgWQ0nNqkKL9HUBn73Z2klvRMgTURRrtaRZyvh4DU0x6cBl0KvjkAO5w8UN0BrxBC83FCNOmrUjyPaxWvU1dfhy0bsipI3AICXtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770594943; c=relaxed/simple;
	bh=QHhMVC8Ba5BOMF+mfpbI2ACbKzjNYug4cucxI+TmuSM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GbIuubXIYDfdBEnG1TZVR2lCdyrEL/yccvjsOo0io2j0tXh8rSP0U5wDQrMMr99PojIWGZWU7sHLr1d7T0Dg6oJBHcb3Dd8zH4Illeebq1sQs4Vd6TGaWZBUtmFgeAPVHaPVariZCNzAjqwRE6XctXAcJ/88xehSRuZQobylxng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XpB+IgQQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aYSysiOt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618L08NA1494003
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 23:55:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=WWrIAGbD+swm1Y8eE8Ndqc
	BisV5nldwTY2Z/dAcM4aY=; b=XpB+IgQQCZTHrwCL/2TI3CL74zFK5LNM2vVMjV
	WPQb0R9Ji2YrmvTFEQTiCLXOVAuvtxBUuPxa1s3+VxOCj3/NSnI8X7OfnIge1Tvu
	FjGTASuKeUP8oitdWFATbC4G2mwx8awXWY+ZyFqf/xQaw06EAsqL4880aT1mGsU/
	qAf7QXK9SNdPBig5HwqSTmGMy2OAebU/ftJrxqwzS2hGGOiOb9R3QNOcIj5zwDPG
	gQ+gtudoq5I2Pny9ALTsSxjOn9dqANzvyJXFHaNBQT3D8vNNMwD4rSd6oXimnvdT
	FGJp58G9NPL82WwYbPb/X9+Fs7KZHAXnkTxtNJdFMnGD1Krg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xccu33s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 23:55:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52f07fbd0so1075548885a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 15:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770594941; x=1771199741; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WWrIAGbD+swm1Y8eE8NdqcBisV5nldwTY2Z/dAcM4aY=;
        b=aYSysiOthVXhgu7fE1lvlGcdaWI8hC77RvAlx6Gm3OfbCJNmZWHtV0iUhx4oUcWlhx
         w4cHNNxHaGtL7xnN3B28vbB3WzSUA4wGv7iSLvha+B23UlBoC9goyGdn6XLDI+FzjbkI
         IwcdmFQbQ0+XRARcI+9zjVobbmSW2BieOHOJLXZvv/L78eZ6BwDXqpTIRGGADNzylHCt
         X65TrxKfROgf9b/wH4xNulmnB9VbGC7l2xEES9yMDq6evFd+gWI0Lc4eQIYuOsz9NXTJ
         qvMntbWi9BfxqcbaUSzekde5KDOyY12uZDPyk43uJvMQNc5+TjzM1ts5FByD0TonfDwJ
         CEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770594941; x=1771199741;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WWrIAGbD+swm1Y8eE8NdqcBisV5nldwTY2Z/dAcM4aY=;
        b=cVGTF3YVXHpMX75053TUw2/dFHkili76svU44o7MQvcmVLJ9tbVODPfLiQU/eUnCYu
         mljsG2auApRfvj1+HmuJltqoBqbMopkZeiS8D5STxiZsVlZZRJbdb5+/gIYc3Maxadkz
         sqN2Z4TWFgtSR/ZvcfD7HRw7vjtzVwKw67/YEtsi9wj0x7q44HV6TLsyyZ6ngSbbjUa7
         O2uSo1fB8+IN7sRSfBKxQsel0q93daJmNWl+wf5fVhIeODfkai3cz+0siaqwnbpp8ihM
         Ly1ABduiKxjl6uQvti9oAlLno4b8R5hBpZKOmUT0YV8LjFLYh9FbI62nKiv8ufXP2DE/
         +qug==
X-Forwarded-Encrypted: i=1; AJvYcCXWhBGn1ZIwXK7IcLx4ZDy50JKBDxBElmgtGjv8VjUHKslH8s0KUYFmKDXPrD6LPjBRLwINoKyVqXgB@vger.kernel.org
X-Gm-Message-State: AOJu0YxPg1iXNVOcR/tMnMohfBZrfikX68HmGsFXhbYJylWKvJb4ANtK
	pyaGKse5Sl4cui+DUqggNWgSYPU6gvD9yKFmaMrmBdb7boiT42zoO8KB+2JSgRsBBmBJ8ynjXZ9
	50ff7ui/WrMXwMo/5Yi2Dwxv2PPhNQTRoL23Lxxw+VbBvSYQVH8u5Cul9Moh3+sZq
X-Gm-Gg: AZuq6aL0xjDurDSE+XFUqydTUMAEvFVPT/thocv4sBsGb2d8zrF/5PBSFHPPTO6c1o1
	fuVA8ABP2DLwJD9VceDhohZrcdFYBtTt34PBkG75G+1v5tKg7LQ0TN9YTetneD72naOKiOc81Lg
	RjqDZ7Vyq9rXpWRTuKqyay/HcAfIStIU4Q4JODkO61nF/1v79v/xsQ4miMG1h5fy+vCJ4PHZuZH
	Wu3WD9yWfc9/abcv5gPVrKrOMLL0P/OhqwS7UNwMv9Foe+vw2QACdcJAkZy9+GEB2Oh4Q764Rdg
	cbeJ7mFi40NW+01k2WpWTqRYRl8AXN1BJhYEQxy8lnZMBHnGV1I9b99Jg8048NfZrXJr3PQV5Xs
	rHjPuBUlyiTM+tv8SwA1KmTUYocNP3GM2W0qAJG/cLX8JwwWkN7r7iYUyMataxFgPOB6QaVXUpD
	b3pkZA52pqfHDGEB5aAx4+gLs=
X-Received: by 2002:a05:620a:4728:b0:8b2:ef2d:f74b with SMTP id af79cd13be357-8caef7e772amr1312214985a.29.1770594941053;
        Sun, 08 Feb 2026 15:55:41 -0800 (PST)
X-Received: by 2002:a05:620a:4728:b0:8b2:ef2d:f74b with SMTP id af79cd13be357-8caef7e772amr1312212285a.29.1770594940463;
        Sun, 08 Feb 2026 15:55:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6ee4sm2188074e87.4.2026.02.08.15.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 15:55:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 0/5] media: qcom: iris/venus: fix power domain handling
 on SM8250
Date: Mon, 09 Feb 2026 01:55:34 +0200
Message-Id: <20260209-iris-venus-fix-sm8250-v4-0-9662a0471d82@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHciiWkC/4XQQW7DIBAF0KtYrDspBowhq96j6oI4Q4NU2w2DU
 aood+84WbSLWt0gffi8keYqCHNCEvvmKjLWRGmeOJinRgynML0jpCNnoaSystUtpJwIKk4LQUw
 XoNGpTkL02qHy2BvfC/77mZFf7+7rG+dTojLnr/uY2q63/4m1BQkHqztEa5Uzw8tMtDsv4WOYx
 3HHh1jhqn4wJTcxxZiNRh651g3Ob2D6N2a2MM1YL2OwDrs+evsHdnvsION54ZWWxyLEIRDCWkp
 l30x4Kc9joIKZ+7dv6veefooBAAA=
X-Change-ID: 20260131-iris-venus-fix-sm8250-f938e29e7497
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2267;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=QHhMVC8Ba5BOMF+mfpbI2ACbKzjNYug4cucxI+TmuSM=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2anUtVde48/n0W25PT6hJ57pR5mo/s8svDBIdPAxDcnj
 sRb2RzsZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBE2PPY/2fFBU+SuP3+iLpw
 hY3/jH2GJ4UnCJn1vDm/dOmWXdeMLDLLM+ZySW794mEozThVdedsG4eK9Gob97/5L3/NruxU/xe
 4sTyhcvo9pYvFW/X5n/sE7XP91HghuPTZ43l7XjNeVvFcclHr3HcXU6HOwGsuHmWVkxeu4NCVur
 5XvlJnXWJecWlUwul5iux9l06t8YuxbDVI9zAr9951OMRpT1qWQZNLolAxs1PmTV21Cfc3hVxjL
 H98wuRJ+Blv5r3/dmZE75uXvPtzsfeHLjcZ3qfMFQduegc7Lql8UXrs5fmHiq+9Aj/338qKC+kt
 2b9JTzSwPuC+dFy81Xr+3MhDL2S8KhO35/PyCP68tSsOAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDIwNiBTYWx0ZWRfX2S/VhMHeqIFQ
 TKL8yBxws5GOaO5CvX9V6Qt0uKzTSBPkyAWDIo4u8A2ji6QMO/ejo4hhsvEQHrJL5jLJZz7JRJV
 cTOaEROrrrWKP4UCKPeOrFYCyqydKNX+7HcILixSnl2cuYXsF/2R0PVBMXd5lVl1AmQfYxYLuH9
 ioD4KUxlq4j+yvwU119SPvkTF943bWqMiIMtHdT7cnizemElPk0VNn7ldNO22zIyNChSjqrYL4O
 75/ZVwv94V0HmQJMcPYcGXnogiwGmDjNnGUTAorEcx/5wBjxiQIHfy4rLelZbizA+f/vPkhLRQv
 nYNywUyQHgKK97WaGJ2HKzk0ZzMCVUyy1iHdMwDPnD7vrb/vOG90Wqr8/VvRfP69Mse1V2RwtUZ
 HpVic5CwCSOsAZhxemie3SXkRqEX21gdnSY7Zl61gwHxC/o35lsveGh1TnHBuK6UR5HBFk/8Tya
 mx35gpfpuEOC6Yyd1bQ==
X-Proofpoint-GUID: KmZ3fDmsk1NGYT2DtMfDfLCG8A5ipZa7
X-Authority-Analysis: v=2.4 cv=ft/RpV4f c=1 sm=1 tr=0 ts=6989227e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=cvYA71F9yvrgsMZaK7wA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: KmZ3fDmsk1NGYT2DtMfDfLCG8A5ipZa7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602080206
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263766-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3309110AA38
X-Rspamd-Action: no action

As pointed out by Konrad during the review of SM8350 / SC8280XP
patchset, Iris aka Venus description has several flows. It doesn't scale
MMCX, the frequencies in the OPP table are wrong, etc.

Let's correct the Iris/Venus enablement for SM8250 (unfortunately also
stopping it from being overclocked).

The videocc patches (DT, DTS) can be applied during -rc, the rest of the
patches should go for the next -rc1.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v4:
- Dropped MX voting by videocc: it's almost-always-on (Krzysztof)
- Restored minItems for the venus device, preserving the ABI (Krzysztof)
- Link to v3: https://lore.kernel.org/r/20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com

Changes in v3:
- Dropped applied patch
- Fixed typos in the commit messages (Dikshita, Konrad)
- Corrected MX OPP levels (Dikshita)
- Switched Konrad from Suggested-by to Reported-by (Konrad)
- Link to v2: https://lore.kernel.org/r/20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com

Changes in v2:
- Fixed example in the new sm8250-videocc schema
- Link to v1: https://lore.kernel.org/r/20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com

---
Dmitry Baryshkov (5):
      media: dt-bindings: qcom,sm8250-venus: sort out power domains
      media: iris: scale MMCX power domain on SM8250
      media: venus: scale MMCX power domain on SM8250
      arm64: dts: qcom: sm8250: sort out Iris power domains
      arm64: dts: qcom: sm8250: correct frequencies in the Iris OPP table

 .../bindings/media/qcom,sm8250-venus.yaml          | 15 ++++++---
 arch/arm64/boot/dts/qcom/sm8250.dtsi               | 36 +++++++++++++---------
 .../media/platform/qcom/iris/iris_platform_gen1.c  |  2 +-
 drivers/media/platform/qcom/iris/iris_probe.c      |  7 +++++
 drivers/media/platform/qcom/venus/core.c           |  7 ++++-
 drivers/media/platform/qcom/venus/core.h           |  1 +
 drivers/media/platform/qcom/venus/pm_helpers.c     |  8 ++++-
 7 files changed, 54 insertions(+), 22 deletions(-)
---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20260131-iris-venus-fix-sm8250-f938e29e7497

Best regards,
-- 
With best wishes
Dmitry


