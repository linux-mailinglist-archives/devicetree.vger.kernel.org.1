Return-Path: <devicetree+bounces-259266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFX0BrU3dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:33:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C2981372
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C349430053E5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA3527467F;
	Sun, 25 Jan 2026 15:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bFWe94VD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P4tivY8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28A74594A
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355186; cv=none; b=nNf3uFePgCAu31uXJzPGNZ2EZKycA8+R4ng+LnNGIHuxpHOttYzse3/zX7sIw5DkkttfnPTxhr7NC9WbvgT2kYca903yxgC6tGpC44xtp48yq6UksnTygmx61zQetzPOVe70HZyEro1311Oh/besqTpgZ5cip50kkhQz0ufb5qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355186; c=relaxed/simple;
	bh=M5HQLSA10JIhqzlajL9e+UNqJI5HyloGrOrN0UUryc8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qIY1URWhDPhQ3EwkCsDkkADvIhAswl0SBfdk9+DgVzhRJnYyYQdeWk56wku6XSldHAnZG6V/OHqD2HSeQ/pcmeN1gAaPGGzoi5BDlxtOXXrKKkc1OZqDmFcclTOKEQz8vK82eYBZBXl/lG4SAECR2FxHbF53yn9xpHk88S61VC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bFWe94VD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P4tivY8h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P9QY4e3336676
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=JWI0dshaiAC3mb3Z4+sSKL
	2fYI9bfENtki0j492ficc=; b=bFWe94VDKBS+lLDwNLpPXApEB8RQd8j/F+JP08
	FOBk6YApMtjqdtf2+ethQ8Gs9xKc+f1nYdt3HiLxZc4zbf775l8NEXpfz6hSqJqD
	Vv3TrxnEjBulKJG8Nnil0hKLaszvRSr7h42r/F5CUi1mYmjpYJiDXgh7dkA6nxbY
	M87CaQa/XahQK/eUabSOgCPvmNNj/ecKqnmuYnN9iMbai1QxF6s18ygJhMeUw+Ll
	P2w8xHQg8UCcDatYaI+/jpsRM6cwKY/ljgSp37MDtLg+WIdLR2M/XwODcEZKQeXa
	KuoldH4AZIYS2IznRTgBbb8YPQfjSckoS/FgPEzmlEv4asbQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9ftb24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52dcf85b2so1449711585a.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769355183; x=1769959983; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JWI0dshaiAC3mb3Z4+sSKL2fYI9bfENtki0j492ficc=;
        b=P4tivY8hRGItUaMUSkym2srAN1jwvW01tW5zpNrndUUWaqy3UqgSvow3cPb+QjGyYR
         DA/Z2Y1sVAU0Osqe+1Z6Y389mFhuiPxAxYbAfZas2vjUect5pxpz0lmMhelbnjkZafcz
         NVIy9/PElFJrnZ9+CmNDjHtB4sRk86SM5m8g/RUlbmRSbDOgBOwqoxhg76sxMOFcB9IO
         SVwG7n7xJuSPSu8mbYe214RrCqaP61bHdzQZd9m6mUXkpeF9otL8FzPHZ2Qbkk0k/UMw
         g986BbA1PGE7ZwIDQ5oRMNTtd1RgKHpd36XXtXiiR8zmZDeOtDds9rFgKrCvHTKmmXb8
         LwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769355183; x=1769959983;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWI0dshaiAC3mb3Z4+sSKL2fYI9bfENtki0j492ficc=;
        b=FWANYmoRiDWU/OWriAWHWkIO039cjeqQOKwWB8dswFVG/+sZ5A+sIXWEAW2G6dMSJ7
         cCa2TOeSBLzYnQfFSlHgIMbwoUtCFTNm2Q6XQVVPEJY2RT22AHxDjLSeSCbXL4GM7ecN
         2tY+xub4FcV+sls7k6mg3jdU7jUT4wr+f1+FuCE2gcaV19tHA6NENeb9hycEY25XMRZx
         kIrNwJ2ko6tmrhVhsmpdQjsqinStzbv2TGsbjvL+7HcEFxlrHoZi+K5raFGLQiCueTTF
         M52TeSTAzDbHlgfTBKKMjOLiRyNrbg4OCu0/Hj2gTg4dKxzRcx3/RxVFB1bxpdlpdYj5
         kFpg==
X-Forwarded-Encrypted: i=1; AJvYcCVpC5rVdYlFpZ7H8VNLVZrMt3Rl7DcxsknkkvBzU2MIpirYuU53Y45/NcpQR4+GrH3R3lghcr9e1x5O@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+c0bQeZbxGQ33H0azLg/LO1EyYsSTzuUDsHrgTh6abOqFK6AE
	6r5chQa+Pt3Vr5pjQ768KGWuluBCQ++LFOXQSdD2uQ+0dl2yAMg4AqNKuC6ne/d6BiKvHpl8gvY
	5V8OIaxGm5Fv9sOSt6vpg6b+WMNgxS03nWBycRkkkoT2ourg+DCne8NT2hyGg9ZUr
X-Gm-Gg: AZuq6aJTrS9h4K9QcaozsnlpZej8G5/irFK3y/dPglqelDF0RGj4SjpG7fO+2zVwq5j
	wBfOUYXQJYxfCv4z1gwwITvt76KFFCg1w0jzrtBEj3H8raY5Z68X1gGg0paCM+lSNuPtNJkWS3x
	aa3u4fvIcFhh1sMzbZIyRc86hQo+ilCUmqMNOj7kOl81+uZw955cUVPum4coULOr3XNfMbDRf3N
	6fAeDwaFzj0wbdRB5koBfK7oavYj/ZwRgTFBLPL08MMNcsMuullVzxbYuXK2Am06k9I7DrfL1hx
	8x77iBexBMy44B1HY//ubt535JGCGmCeagaKpqnM0Tmg7KJp+xAZW/8KH8FB2D3tmbyDfxTiAiU
	5+J1PK9WSpxmcpadcBXrvvYTvo4bxgeqHf1gUhxfCaWtkWTdXU6ZYcAkIKN6GlMZKQty4/wAD1E
	9qorP4ewsL1quat8gtqZmXRyU=
X-Received: by 2002:a05:620a:1a06:b0:8b2:f0dd:2a97 with SMTP id af79cd13be357-8c6f95cf8c5mr201383685a.37.1769355183129;
        Sun, 25 Jan 2026 07:33:03 -0800 (PST)
X-Received: by 2002:a05:620a:1a06:b0:8b2:f0dd:2a97 with SMTP id af79cd13be357-8c6f95cf8c5mr201379285a.37.1769355182546;
        Sun, 25 Jan 2026 07:33:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1a0a45sm19154661fa.34.2026.01.25.07.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 07:33:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 0/7] media: iris: enable SM8350 and SC8280XP support
Date: Sun, 25 Jan 2026 17:32:57 +0200
Message-Id: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKk3dmkC/33MQQrCMBCF4auUrE1JJiS2rryHuEjTqQ1YUzMaK
 qV3Ny24EXEz8A+8b2aE0SOxQzGziMmTD7ccalcw19vbBblvczMQYIQEwX30xMlVUIlp5JVupWq
 cEVoZljdjxM5Pm3c65+49PUJ8bXyS6/cj6S8pSS44OI2m7izuTXMMROX9aa8uDEOZD1vBBH8Ry
 IjW4Fqn0Jpa/kCWZXkDUKCUx/YAAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1981;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=M5HQLSA10JIhqzlajL9e+UNqJI5HyloGrOrN0UUryc8=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2aZ+Zr/7Dnvv7ubrO4zeMZ/NMf8h7W59Y+FvftS/z1bL
 cW0U8S9k9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATYXvDwTBh0bvaLzaB/cce
 HG+MW7wkoV1g9znRfiEX0+3HXSaLt0ht3RJk3Njms3KF3qbF5Q9YQ0ri1i3cHLEn72XAtt+vTZe
 m5x/Qu20c+dfdKpi91UnRQymeo5knJr4l9fjiKkHNeybmuUVbUuuOMtZ0n1j+cfblC3aiDUbpwQ
 f/+fy6uClkalTUr1Vs5ydpHV3TLSZU3uN6m7Fg5lK2ueX/TetzjqpUzZsodDxSWrExL6FMwseqx
 2Ka6uEZgYGMyzM4p+2sCzz5u/tYuQbXvE0zZ+qJJB7M1FAPl6tdmHz5JmviYwlNg1We4kv6BGcy
 znm5PSlF7bpWSZeFWclt04rHfoJdLv7ax2w3HuZ8lMILAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 2Atlpm5jdiLAKnZw4PTJsn8Iay5R_AFS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEzMCBTYWx0ZWRfX0VSUnjMnCWzy
 bycMNJS2X2oXsheHDwHdpMaCqvSZyvfkDgJlDfRarVGIVR2VSaHPyjWJ6XFAJFKioVU+oXpnSj6
 7IyE0cXNancqWRHBd1wy2/bVb9kzdd1/tmXI5CHMdblPpPmHZC4MVTPJXxQ2pf66Y2zKqQxvkCY
 7BJKhzayfFEh9zru94xS4Z2kOmPOqmlgqAg+7bjfM6XehKnCry4mZBAJV3WtERG3n8c2hgBEKRL
 nFK1v2kWwaPQ780ovHnWbcfKEJUN3cdTwXzZu+mvvxwtoPvvQRp6+NnGz3Ldx3MN8jXZHTv+9DY
 laWDbjfAb9H79ldg2Qw8mDf2uaEw7sMBI9geGqef1dyzTa6h3hM4ztdFigxS7MQbXfUTj+Sztvt
 3dlO4lwJqMoSydEgw02sRXLnLbNYGadQ4p9vn/aJAamQzDUH2WPdWohWmDYyk0oWuVMb+X+kRrR
 tIt8rBx+evxkg/TYDVw==
X-Authority-Analysis: v=2.4 cv=btlBxUai c=1 sm=1 tr=0 ts=697637b0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=EzLPRR6YWZZL8COkRNoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 2Atlpm5jdiLAKnZw4PTJsn8Iay5R_AFS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 adultscore=0 clxscore=1015
 suspectscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259266-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: 48C2981372
X-Rspamd-Action: no action

In order to enable wider testing of the Iris driver on the HFI Gen1
platforms enable support for Qualcomm SM8350 and SC8280XP platforms.

The driver was very lightly tested on SC8280XP and (due to the lack of
the hw) not tested on SM8350.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v3:
- Add missing header, sorry.
- Link to v2: https://lore.kernel.org/r/20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com

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
 .../platform/qcom/iris/iris_platform_sm8350.h      |  20 ++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  10 ++
 10 files changed, 431 insertions(+), 6 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260120-iris-sc8280xp-85d13bc60536

Best regards,
-- 
With best wishes
Dmitry


