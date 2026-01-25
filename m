Return-Path: <devicetree+bounces-259236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPl1FZ4YdmnXLgEAu9opvQ
	(envelope-from <devicetree+bounces-259236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:20:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E380A5F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:20:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51F4E30038F1
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4C631B830;
	Sun, 25 Jan 2026 13:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vb5N+hbG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lap0JOMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CFE2165EA
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347227; cv=none; b=mSvBp6sqdIgPNldP/vdOxOiusbf+VCjxEQId4lzHgh97SU+VuKgwj4RvvNhNqZR4e0bUTePHw8vybvhfnubiWvb9hDhroY5fk+bh6wuCjrdoO04NUlGzM774akoO/kGID3RPbiHNoT5XnHDQTWssSjDbhGbTqMHhTkCMrZzDaq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347227; c=relaxed/simple;
	bh=skqlWBY/wCYkgVt5IolVW0xx39KoZJtHK2vn1MxojUE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=B4dssUDCWhX4B4xINW0cS2ADi0iBAYy1fSavvD044d+hZWZa4MFCy22GG2u9IMB3rvZTPvcpnn89TiMC+x4ktYkHTjnKtDG8N5NKBan761JqDtFMojqC77TYXj1G+7d5ub1HJZiaYO/pRbNSnffOkUO5POl6PbNXajeN6N2cvXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vb5N+hbG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lap0JOMk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P7ZVVt3020818
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=iwaz8oT5hZR89PDl9bmdg/
	LNNA0vlIFNPHol8Xet/No=; b=Vb5N+hbGq/A5Q3tDEknM/5dIOIWOD7o4FIqdWX
	DSiFhYEwoG7htBAkAWfIB4O+TK725FHywPHhh9yt2/nPw+LIy7ZDEg0VEcfNZydp
	WK4B1utUPkwEGF4CS6UteOIbSrzeMsEF5uXkVsjqNn31jyhDqYnmZQnvF3Kvvqdi
	teM8RxMKBOZYXeEaqB7oHouDVw9D9m9s28r/x63E7j15kve3tUSOb/0dKMGElvzz
	tik1NfKa11q0oLXP/gSiwcY8mlSpaCNQtz22MYlNqBCdx3Hel/2hk+7K8W21UmwV
	Hd/OF/qw0p1ZTAUPCX9U1mpTf+Ua8886uWxsuynctAuOA2ig==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6ut5gt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52af6855fso458344085a.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769347224; x=1769952024; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iwaz8oT5hZR89PDl9bmdg/LNNA0vlIFNPHol8Xet/No=;
        b=Lap0JOMkZ2UpTz2FlEpwWRsLgUpo5RbNnSlF6LL05Zk4FmA61XcmJHFE5hyUtdwa4L
         zgAnDja26AuytyJx7ZQNQbau93m38CvmYWDs1ARDh3peZWdrikDqkSLnsw8lPGgH+jgo
         zKtXOREGHXyJaFaMu7TCSzv8sj5j8vK5cqFOWCzZhaByweYskghTcxsUH1cgbZTnaCYQ
         TL1Y4paQJUB69kUCOQ0RZkSYkxyty8SctG91KbROk7Leo4gIlitz7ikMcLhS5io8mwKL
         SqwLfnieYK8/rsg1YiHRG8OihxlgUoueDErWZG6rAkeN8rLPlHRZ2x7djp4+HSVqA1in
         B+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347224; x=1769952024;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iwaz8oT5hZR89PDl9bmdg/LNNA0vlIFNPHol8Xet/No=;
        b=BkBqppx7NSWVTPti4Z/NwUxOBLhNgnptspyUtUbB39Q82d6ksVaKVczWYFkQ9/WYrV
         5GQq+a4rDvPfILpXLRfu7MPYsqxCEoO3b5dD+My0yhau5VlWIE9CD8e1nZs5BxdR0T1b
         rfCpwSv2Qfbtu2wKYCT5+ZpTHrBFDo3WPbIC49kRzhrLUQdO2PjwFvgdBReYTOGYDpba
         +gKMA7LcJ7/zdq3ncqVD+5GOTY2tzWFDuvPq/MRDuL46tfbW0HXZrnWb39hzOdAXV7aZ
         34iZPeTmFUQdOOSKSPXqnJ2qZ0yFe/SJ3lmjqQDmkCSYsGkj2UTgzttRvkt907Et3Za/
         CLdA==
X-Forwarded-Encrypted: i=1; AJvYcCWqStflwT7rsN3N1zK39KB40UBHCN6raggwRyVqM45xM9rru6KWLZ33OyIOehTkvq3FPZ6wrmc0dMp7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw89euVubdbXNsxheLP623BIsXgNL40RugTtPmlz0bsevGupnFG
	NGwH10UAAhW95HnofBKdEa9rGHSGCIexVcPu2qB5ydzPUKrljECDql/mzusAB6+SjnIKDba0qFC
	zXnmhldShB1ZC+uvWdyl7rArmyrUSjWyImclDh60oOdYiXsB3kB6Pz1MsX+/JJjd3dqpoZleJ
X-Gm-Gg: AZuq6aJNRk16cL6RQ3I7ObHh4a4frRg0CBv530+UEn2Z1eMCR0qhL9Owfvv5HXX8s6E
	pV7yduoWwAyiAF8f8TMhSyJJ2pama3ScKDqy7G6e63qenVs0+vXqendJN0srKdoUTN4Q4MbbFkd
	zRONXaY6tDc57okftE4JqwofFBnC5ji0OKwsesTYFj0rz5FzWG8waOoiTR5Qt9iUYnVwaWB6Rwp
	umoCFZqeyD7IirsuNeDmZ4ifhtEMTCkDIos5N4uiPVlQct9nMeh45Z6SftdP9hlVUcxw8Bh9HRW
	NmHZjSLoayLxIqrVakDXd1imafdVlXkQaoZ7hMjYHYnpaY2ZYHPSJ4wrg1thTF9X9OwNzBknZ3e
	uP04BWFXG8Fd8Ky3877KimhbLPmkuo6y6My0dI3mIHiDvqPlcsDb/UqoKKqvoCymgi05gCsrJ4g
	JDvURNYTA0AkKMOmoBm7ZZA5w=
X-Received: by 2002:a05:620a:17a9:b0:8c6:ac29:70ff with SMTP id af79cd13be357-8c6f9614ddcmr173855085a.52.1769347223685;
        Sun, 25 Jan 2026 05:20:23 -0800 (PST)
X-Received: by 2002:a05:620a:17a9:b0:8c6:ac29:70ff with SMTP id af79cd13be357-8c6f9614ddcmr173852685a.52.1769347223220;
        Sun, 25 Jan 2026 05:20:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1706b5sm18901821fa.24.2026.01.25.05.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:20:20 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/7] media: iris: enable SM8350 and SC8280XP support
Date: Sun, 25 Jan 2026 15:20:17 +0200
Message-Id: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJEYdmkC/x3MMQqAMAxA0atIZgtpSkvxKuKgbdQsKg2IIL27x
 fEN/7+gXIQVhu6FwreonEeD7TtI+3xsbCQ3AyEFtIRGiqjRFCnic5nos3VLCuhdgNZchVd5/t8
 41foByNOL1V8AAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1578;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=skqlWBY/wCYkgVt5IolVW0xx39KoZJtHK2vn1MxojUE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdhiTwoSKD91SnWIxTLA8wnMwaNH5ga3P5A6VN
 D5gJlGoX6aJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYYkwAKCRCLPIo+Aiko
 1bGhB/9UKbk9LmFGKUarLiE1Onoi9AUODKqYjaSNi4eSGB+yf8UQ/pm575AtXRkNJWULE/81L/x
 Bm8y397QjtK1o/jj6Yz6IYPfkT1q3Dx26Sl1VwC7f8T181k4TzS//XKSVRATPXP/VkqsHIn5p9p
 f89Vdl7gTuG6zdVStpv80y+tfoiVI0TkiVdQYnVqus5yCqa9Lidl6IcXbTd5kq2aX5vc+8AfgTU
 NsO7a48mYJ10T9ceAnlRHEx9x4tNfyW7JXEb/GtFOwI1v2LJZv1c0f9ugaGl8vXxcr2Y8bf+VhS
 1MAJXQRZ/3QPF9r4UBaBg5KkS1smYduPjHEiF1JtbmdJJMXy
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExMSBTYWx0ZWRfX2T7peVl5KNz4
 fJdlOBgp4ZQsCIeu3H51X04R4n83P400XP4IY4Iw+WnJSDKphBj4w9JwSP26ZcX7hbR/ydqRqxc
 HrxWdSQeyopBHf9m213m3XzN4DtI1ZF4tb6gLPhe6u41cn66RVaLZ71sguWiC1wveLZlmpXSJVg
 DGbH8Xhj8ZqYFdWevtiWrslsBVAIjG8E5KbAq/TbLbC5/ghI6A1khUxhy9/Aw7GV5u+kBc3/n3G
 7Mj1rbqMPrHmFTGqQy7HPCL9Q/2dDZDgyFm4eznG8JQxHvj7ufThEI2K0GY6LxB549txlYG2uzP
 B142YN7Tn1lLho53kcnm6FPQtdH88wXc4rikjV1jT/u/C37pvLyVrwL9fkHIE1rJp/jc+zMhX1c
 kWrOb/3JuAQFEHypcokmHisPdJDwfLbwiC0FuB/HNSvx0rk3WQCT5S5OqCgfUtQKu4koSU3xhHy
 SApRzWtCcEaDolnlEDw==
X-Authority-Analysis: v=2.4 cv=UqRu9uwB c=1 sm=1 tr=0 ts=69761899 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DQYNr5bCLwCUZgKOTBQA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: mSbDWBi6DVWkyDdbDOoiPCdeqai_iOBv
X-Proofpoint-GUID: mSbDWBi6DVWkyDdbDOoiPCdeqai_iOBv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601250111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259236-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8A0E380A5F
X-Rspamd-Action: no action

In order to enable wider testing of the Iris driver on the HFI Gen1
platforms enable support for Qualcomm SM8350 and SC8280XP platforms.

The driver was very lightly tested on SC8280XP and (due to the lack of
the hw) not tested on SM8350.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi               |  72 +++++++++++++
 drivers/media/platform/qcom/iris/Makefile          |   5 +-
 .../platform/qcom/iris/iris_platform_common.h      |   2 +
 .../media/platform/qcom/iris/iris_platform_gen1.c  | 111 ++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  10 ++
 9 files changed, 410 insertions(+), 6 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260120-iris-sc8280xp-85d13bc60536

Best regards,
-- 
With best wishes
Dmitry


