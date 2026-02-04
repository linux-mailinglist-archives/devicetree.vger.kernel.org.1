Return-Path: <devicetree+bounces-262439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JxgjOw+agmkzWwMAu9opvQ
	(envelope-from <devicetree+bounces-262439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 01:59:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E60E0287
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 01:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 92333301873C
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 00:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73B9F237180;
	Wed,  4 Feb 2026 00:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wuuq+h/5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SK/kZmgH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF608236435
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 00:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770166797; cv=none; b=Ye7Tj4SXDvYNSesaVtZaBctcMlKymTsUEXU2CTMe28ek/XN7w1sRHkTWqndY6VoSbDM5JQWH5eUItxCd5SFvStxU21KB0VjtOgoe7RMuYd/aR+jf/2S914WxBTZfRBldUilVk7JLYJ/Yy5yKXHrnLXUUpDWRYERQX4T/ortu4mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770166797; c=relaxed/simple;
	bh=Gja9rC7/ll+jARYKe/0sDqDY8ostmhNW63Lo3AZnyVE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=azMcoEps7zrcjYjYrp+J3pVGrfmFWm8JTgM8+BX/i6ppNW84BTvAe8Y+UXdO3DJbTAq8OA/o8OoJZTxBuwaFT//pZNn7+T0TAnrLUA0BjQsKmnxKxuJ/RpwefRsGcUHz3IRjH5wAAcGm8IDZ14zgUTs3C/hOV1TNqrZFkAZReBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wuuq+h/5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SK/kZmgH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ilqeb4122875
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 00:59:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zBvPx6FXEvB3N38gi+R6LA
	wyy8oL80YAbc2tW9ebENQ=; b=Wuuq+h/5QOH6Zo4xR6MkN8bmMvFnx4BlQ4THWy
	MiS2+GlSHAM/lBu0cyNLFoI30YmlvQf1QX6BiJ0TGjjCPHGm5J6ikUxD38ZYTPyV
	lKlaSW3s4J9EdAPsz4xiWfexiKelc+BAapnINZLT43f9hoRJfB2Tf3mxrNhdGsJG
	ImXa3S9DakVVH/GcO0IRwxg+16wXQ+3Qad0It+RMMBPN2zu4irWtoWWQloMtsDq3
	l0YiNOgfs8lVF0/jem3g7eVMrAfuknRgaN8GHUFx6bmBH8O7j7TAAXUlhosPsw4+
	E6c0M2CziyS1pQXMqrateW15vt3eC4a5Ej7Pqxf1r1j72z0w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3kbkhxrr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 00:59:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6b4058909so88886985a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 16:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770166794; x=1770771594; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zBvPx6FXEvB3N38gi+R6LAwyy8oL80YAbc2tW9ebENQ=;
        b=SK/kZmgHaLVKhhSrwU4mea2beth9LUv371LEFduI43pO8+Ysq9kJJ7wlWK/fu7D3mH
         rQ1rllr0kVn1EW6OwBnG8KOg9zb7BsccCqCftMDMEmupCh+AnLHaaqy/6NSoe6NzXOU7
         weeAkoTwHuv3vSw7wlpkT/lUh7Z2vqDoe2ne/UHNwby9mFtSn4AJYU5jPCFDMCsvK3Nh
         wLvFDqiMKZTM3adXKHqZO5aEgfRc2dnGoUe4hK8V2ICbjxPEwxIKLPIeUYC87Jcy0DlG
         eVGHWbfZSSENcxnIah2IT1tVidOCbBDcLE5FSzWxs9X+VqCjZtEzcNM1d4A+gmmGcCmf
         uCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770166794; x=1770771594;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zBvPx6FXEvB3N38gi+R6LAwyy8oL80YAbc2tW9ebENQ=;
        b=U9T2l+bplZ9zChpa8bx/j28wqpM6QK3HE1w8UbB6JWZeAQ3I4VrYFik9AJQowgmiEX
         R/+AMLinS7U119MMiRBh6v2vfsBlhNhDim1p1blAxufk/P8hJ0i3Do8Diu6iy+yZorao
         8BVy5AowUmOP9xkyz4l4fmHpwiYGxjyT2yfuK1xFgryNqbEtdRrD53o9tQa8NAuYejQS
         kWY5p3HYtaPG5X6C+NbocWT/xx/DiwmQWA+1OTV0CPW7AglFKSgvAguaK1VIdIzMDFZ7
         OqVjhntw65+XWSu3ypLLxJQkUE/bu4g0EpocEPx3M0/VEb1wTw7pe4oF6L4Ksm00Yct1
         EFoQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/5Itewl+oKGinwggO4Ko6GRkh/4TThs/0KAPsGN0UhK9tW+fKTkG9lBEhfd0nXVmSJ2UaZyz3Brhf@vger.kernel.org
X-Gm-Message-State: AOJu0YxE/nfT7DpOFAsaagyRpCOuGBN7J+xskE0CqE3aTyjAic+rDRTl
	dAzRGQnXf66IJxwOE+rJNL9wlPILSW3aEh62pxGQGGvrzEZORa+NRaFCfR2YwdCm+xpXxqtwmYD
	62skmoohC1aF4Y6Fz3HfO4gleXMdnfvzAVNdmgIoZ9dj8RygPTynkaGy7cs24JI8U
X-Gm-Gg: AZuq6aI/QS6ZnbLO1M56lnguzuwx1o2Q9t79RfrwiC7s6K8fqXpVxFKqziEaRSHHQuL
	Z00yaH+DitS1jNW45wOPrTIQ+qtVbqfOzetUMSzFPwJIm/4TTH0cb1TcGw9LmqAoRuPKX0mIrUs
	b7MoV0cvrdnBlvch5iyFh97Z1xBG4+/fMqkQEIZhZaNgin748R1rwrSl3rRdkT7T4Vewp+dE8eD
	UfD4/t6UZMnHZ3ONA5Klp2y9HuvOKVp8CoxHlo73t7fze29RSCtqejiXliSEJzPKvOrRaO1QA+x
	htT2kkMHeyUVwaklU3W/Tm6N/tlRx9fiSGp29qY1mD6z2A4MCTiOcT2V3iQce13RpgjGcs/Pd+r
	4ZpXyNO/6QPGKNYb8a4SiEY3349kKqy1A9OQsQ8PMVhIbssMCfi6/bkXc0yPMj1CM3fNqnFbuXi
	qcf0z/G3hFFG9iWn20nOrT1Qk=
X-Received: by 2002:a05:620a:2a01:b0:8c0:cbd8:20b0 with SMTP id af79cd13be357-8ca2f853a63mr189991485a.34.1770166794131;
        Tue, 03 Feb 2026 16:59:54 -0800 (PST)
X-Received: by 2002:a05:620a:2a01:b0:8c0:cbd8:20b0 with SMTP id af79cd13be357-8ca2f853a63mr189987485a.34.1770166793659;
        Tue, 03 Feb 2026 16:59:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e386ff563sm253405e87.1.2026.02.03.16.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 16:59:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 0/7] media: qcom: iris/venus: fix power domain handling
 on SM8250
Date: Wed, 04 Feb 2026 02:59:48 +0200
Message-Id: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAASagmkC/4WQQQ6CQAxFr0JmbXUYYARW3sO4QCjaRECmw0Rjv
 LtFFm40bpr89vf1pw/F6AhZldFDOQzENPQiklWk6nPVnxCoEa2MNlbHSQzkiCFgPzG0dAPucpN
 paIskR1PgNi22SnavDmX65u4Pos/EfnD395kQz91/xBCDhqNNMkRrTZ7Wu4F5PU7VpR66bi1Fz
 eBgPjCjf8KMwGyb6kZsWZ0XX2DPJbbDcZIv+CW7OlaMMJvIl1GPN7/pKvboxP98AUtl5wk9AQA
 A
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2264;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Gja9rC7/ll+jARYKe/0sDqDY8ostmhNW63Lo3AZnyVE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpgpoHLs2+1JYjNlpk+G1issAWNflEbLxVyAcKb
 Lvy1iBDfyyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYKaBwAKCRCLPIo+Aiko
 1SuHB/9TqxNQb81Cm9h7+DiXyZJRzUASa+M185ht/VGGRwg21nnaGSyzxdSYP5q1IBujMbNr7Wk
 Sz3I53lHmuoq40bfEOclzNEBM8WJUieLg/nql/qA+yUsckJbBzYYiDwcMXkdrMFhRNwNNUGTFr2
 jys7IgKspb07B7FYM7gTtjEC9k6Cy8dwRLFnag0yFHL8oiMWCb3bmQVwhEz1cJw34XNa/lTG2Y0
 5QVlCauig2MqaqVBR2pCR4hWkNxN0B6rkgGIL3Q5eBPjT/CQDih0ofTr4FCZ6qSdpq65AVs6SAk
 rdg5lmlekjXcZoDkMOKE5yy9SSJDW2+4F4/dlAYvBj/CJdkA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: nnN--FdzLBOmqUm5R9MTPdHH4v-av87_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwNCBTYWx0ZWRfX36ol3dK0QM3r
 aPl3RY3zf/ssmACy+We9NA3RdX/EYmketa3Iu+PXzGvBlYJPyxf4CHOtgRLd/VG4nvNd89W/a9q
 gROedMw9lB/Up8vgNcaGh8YxyGx8+FoFxxnIEVFH/190fpGLRMsc6/E6XmD6ANRGB1/YBbVkK3Y
 LtvHtTNcyj/BoN1JK0F8MqXKF5w5oYVRd0o0GPR2LZI0HS0d2xCnTDE81r1PLytpIzyVzgcM0Wt
 WLH9D2Z/0RalHL4eP93EMXKNorJ5sUkCDPwm9AjiMMq2LDc1f1eHQUYb6fRYgQVFdV2NENK59fM
 5Jz1h/i/qdBgIbOv14MZ/QOUydzNf8DVXGBspsbYl8UB2MUKaZ5hEuPBAZbzr0HI6QS9v9zLU5u
 QeAo9c2TjclocvIU3XqGyNrHJC3iPrqHsO1z3bsOyBja9WMCVZYn/E58DnsZ2D6sTuGJSSTPHUA
 Y5MVR8JKCDHiHCaOfMQ==
X-Authority-Analysis: v=2.4 cv=BKy+bVQG c=1 sm=1 tr=0 ts=69829a0b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=cvYA71F9yvrgsMZaK7wA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: nnN--FdzLBOmqUm5R9MTPdHH4v-av87_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040004
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262439-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 88E60E0287
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
Dmitry Baryshkov (7):
      dt-bindings: clock: qcom,sm8250-videocc: account for the MX domain
      media: dt-bindings: qcom,sm8250-venus: sort out power domains
      media: iris: scale MMCX power domain on SM8250
      media: venus: scale MMCX power domain on SM8250
      arm64: dts: qcom: sm8250: add MX power domain to the video CC
      arm64: dts: qcom: sm8250: sort out Iris power domains
      arm64: dts: qcom: sm8250: correct frequencies in the Iris OPP table

 .../bindings/clock/qcom,sm8250-videocc.yaml        | 85 ++++++++++++++++++++++
 .../devicetree/bindings/clock/qcom,videocc.yaml    | 20 -----
 .../bindings/media/qcom,sm8250-venus.yaml          | 10 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi               | 42 +++++++----
 .../media/platform/qcom/iris/iris_platform_gen1.c  |  2 +-
 drivers/media/platform/qcom/iris/iris_probe.c      |  7 ++
 drivers/media/platform/qcom/venus/core.c           |  7 +-
 drivers/media/platform/qcom/venus/core.h           |  1 +
 drivers/media/platform/qcom/venus/pm_helpers.c     |  8 +-
 9 files changed, 138 insertions(+), 44 deletions(-)
---
base-commit: 5c009020744fe129e4728e71c44a6c7816c9105e
change-id: 20260131-iris-venus-fix-sm8250-f938e29e7497

Best regards,
-- 
With best wishes
Dmitry


