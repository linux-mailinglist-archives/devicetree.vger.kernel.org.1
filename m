Return-Path: <devicetree+bounces-261554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id a7sAAK8vf2k8lQIAu9opvQ
	(envelope-from <devicetree+bounces-261554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:49:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EB8C58EA
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:49:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3F77300EAAC
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 10:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC35326D65;
	Sun,  1 Feb 2026 10:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QbF2A/6f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X4lR0n9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B58E3254AC
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 10:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942955; cv=none; b=Ngjs19ZnFCK4q5DgA0cpv2TJg7NmDd7vXxU9++VLuI/xhSxxYQAd/px8WUJBOKHEriYy5kqfP3SL5NhIaAHTyfA40kAACimEJ6G2AEUjDsgIUcffbE1ayjA9itBJCzXXs4mqrYYvYHPhmpTsqSOD731TuNqaObVXgvxQ/TU/bFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942955; c=relaxed/simple;
	bh=ta8NS9oLfaTP8ODHsdO9/5QO4jY2iNkc7qAcFD41Las=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tzXpCRt4zKfXkMrB2AgwwPtsX7yBwJDylzcqk3qWpVrDZx7UCvfYOBjWOKOAA0md9BKUwnD8GhPtjN7p9LWSZEi2Obim5LFTOOGFmbg168OJsvspTbzQ0odMwufzNzF5NPRWJ3mhSzogChP2Vwmt0fjsqzwnyhFyJPqyRTDAy2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QbF2A/6f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X4lR0n9o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6117RpiT897389
	for <devicetree@vger.kernel.org>; Sun, 1 Feb 2026 10:49:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=sSr9bu/cvAJde0xdxCLrIb
	mwiExX74AhA+duZZk4kuM=; b=QbF2A/6frbye/5MEIOMs1oqhu2tHw9mrY/gs9R
	LhfQU0aIl4aEJP72+9J2aKSF8YI/v9lhlOWrk55MR5P34HEH38GiaDplLeXtcH7F
	LxSFI5R8c7NgihNlroQmGAwIphOBLRDng24uqr/mt/VZVlRGNRatfx97KnqX++Gn
	KsEp0zu3lZyJWcVUvxWHF1zBccUIIuPZDeYDy/9t0CEwF6rWlVaW81E2M/eKDMBn
	wUhjK2OTmmRrn3irVPOxyHZMxfahvTk65Vpfm4ukyZ19UHIqA9Jy2qdsIk/aN4Nm
	1PZzJhLqztNZnz3XkVxM4GXZF/DwgJzYT+PLxGCffG0jTRWA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awdaf93-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 10:49:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70b6a5821so851585285a.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 02:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769942953; x=1770547753; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sSr9bu/cvAJde0xdxCLrIbmwiExX74AhA+duZZk4kuM=;
        b=X4lR0n9oVGSgG+MWDfSEWl+c3HU6GwKAYJhiP24aWf8GPaommHcRhSVqFU/mZ6pViN
         Bt9w11GKLNCJawXvS3FT/cTW2lILmMOLhJfm+LxcyhQjAK8z8EsDZCAoYnRmpDRUiBk1
         1Gzlo7DQXPbLGrRuaGLTwjuzfutjO8ggsMwsSONdAbkJPy4q+khdOXOUXl4Rt6CwkVrI
         xzkjWdvbERf0/sWYLtTS4vPjozqKYLQ7YSmM0mfzRvfROkwBYK8LbafhM1GZX6rRy1ET
         zfx5pK/Qcogt1iqdoYDQiFX3ZqK447tF949fzkumzO/0yaiNXmPnK7ydn5QwKydYlYgL
         FyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769942953; x=1770547753;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSr9bu/cvAJde0xdxCLrIbmwiExX74AhA+duZZk4kuM=;
        b=BXdvhfYjmVbMBxSfRelq0B4vxnyi01dFt+0aWy3QMHM63tQCAm9onghvxDo2TD1DmU
         9i+RIc8qj2hno7GoXNWAfy2BEnXz9/VrLXerb+hMwNUsaFBzBloyWpGxDo3CnZbietH1
         LI7clMIvvi+1pb+UpoZwMUOHGGbdxcjrzNPLbuImXun9E43d9vE3b/5vpdt934OPhmzF
         Kv8zuQWf+oORIA40kt67gV30qZPj0wHSstb1F1CpGAG+YOy/D1BmWttqR795+Ki59zFK
         D1im/CQ6L3/J/2jRCLCbGp44mJuuc25oj+R6X6AJqvxqE7RaqBAHLIsiKAaaefinf/fy
         GN8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXHHFXlaSk/iv8IQYTc6+jsGEyjwu7f7oD99z+ZegI6rkqhTMvEaokolYZ5eoj76aB7LcT5zEwBprt7@vger.kernel.org
X-Gm-Message-State: AOJu0YyXZ/IEPx03fQWmdvR5/FjaYyxC0LH/7rcqxzlyGJmAGoARNSR4
	MUdfTzSo4R7c4qMPjzARIUdRV8XmX7Z8Xfn4WD6SH1Y2r0P/gZkZTTgAPVC85FZ37xj2l4oOsVX
	B9p066HojB9WMGQ4y/43yCCi+vrDLddIV1S2lXSW/uoDND83N44s7n3SXIUtX7CDH
X-Gm-Gg: AZuq6aLLh0IqGVlwg4lXMHAGXz4iERU5flZ1ZXdYBfdPl5kUMPnUs82FRcSGOTrHkl0
	99cmhMs3ZsFURiBKOjpYD5hUX1tDKqXa/MGTCbq5PmmHZB++cqlpJFR9IJri4PHbP7PvMwsdfW8
	BAtMclp8OvE6dk2FSzIQJXiTB4DaotaLLZ0EHxih5LVmyOuVAL6RgBtcth5MUrjIubHFS3lz7JU
	/+4jY2MOpIrylFIBWuT6qboour3cNh5EwNBRvnUxZZ0au6LWb+tg6RkAQpb+S0Q4WC9F56Z6wIS
	zEBb5pRrhtpvnSXqcZvPLJ/LWz8jgS3HFBfxbbDmB5/uen+zr1U0DnfgZvaZKneoV9BZARaHONP
	XzRZ93RJG2YDPKWD9m1ZoQrwlMHQoM7IOfpoq1j7aDkCrwaxVljP6x7H+szqXYIZRXfdFPIWlPd
	9CDBcopRXrrFwuTUXtwBJ8ErA=
X-Received: by 2002:a05:620a:a118:b0:8c9:f8e5:9f12 with SMTP id af79cd13be357-8c9f8e59fd5mr614958785a.57.1769942952507;
        Sun, 01 Feb 2026 02:49:12 -0800 (PST)
X-Received: by 2002:a05:620a:a118:b0:8c9:f8e5:9f12 with SMTP id af79cd13be357-8c9f8e59fd5mr614956785a.57.1769942952040;
        Sun, 01 Feb 2026 02:49:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b7a8csm2835006e87.77.2026.02.01.02.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 02:49:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 0/8] media: qcom: iris/venus: fix power domain handling
 on SM8250
Date: Sun, 01 Feb 2026 12:48:57 +0200
Message-Id: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJkvf2kC/4WNSw6CQBBEr0J6bZP5wACuvIdhgdhIJ8LotEw0h
 Ls7cgE3lbyqVNUKQoFJ4JitECiysJ8TmEMG/djNN0K+JgajjFPaauTAgpHmRXDgN8pUm1Lh0Ni
 aTENV0VSQuo9AKd13z23ikeXlw2e/ifrn/luMGhVenC2JnDN10Z+8SP5cunvvpylPAu22bV+jf
 e8hwQAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1967;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ta8NS9oLfaTP8ODHsdO9/5QO4jY2iNkc7qAcFD41Las=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfy+jlt0mSi2KPEsBGqa6ClC6PcPT+B67GwYO1
 wWuT4waXwmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX8vowAKCRCLPIo+Aiko
 1eFnCACziPVJklWNltdISmgIRH3q5XAItPzT2VXBl8DaYbb5huQfI5fT43X8u7E5A632IhVhynb
 CGLkYgIcR4SHoei2mDjEsb59DGs5fAsU9QKRTiOvlO8lqBNMXEwdDjzb8DyoxOD+fRZwBnUZ6kD
 MagYGn2fLl3RDpwchtpou+Pu0XikhQL1aD2/iO5+UhQZFRgOMFIZV845JfLTdnn/lFQbuL2km6B
 8my66GckklxpOov2ry0ebAziqgHbETCv0iY3jdTYzqb35Rus8rCFAAbA7ZPU9V+BIJ2TxhNdST/
 1/DiDcPQERfq1djrrD7Cp9pTjG+i5cIE1ltnibf6tZRg5fG+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: dy55pc4i-Ek98dYRIoEzu16hFFtnHfMU
X-Proofpoint-ORIG-GUID: dy55pc4i-Ek98dYRIoEzu16hFFtnHfMU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAxMDA5NCBTYWx0ZWRfXxHuAJPyAIKzH
 7Oh6piYWqNu4xB4GHTJTON57DwEh+TpC0Wh52m+5Z7lpzc34Kd86BL4sFWnYo6FuJo7PeUu6WPM
 gbGuN4vk3Ks4KjTYeqYt0EXToGCDxfQ4+n8uSdxKQxFpCUyOXE9Mvn5l7f7ac3Lpo0I/mGtxTPG
 /aGPrWezlcmVqDqZ2EjNBK737cuobdOynGuCXz2HaUekbA4hTVkVZTHe2pw+XBHyil3E0iT1dF+
 iy1Kvz0S8HcPjUfwbKA1EGPmCCSXBPaophQKsbAo66ftACl7DjIVEYxxmS0VlXoziH9fkKAx7X2
 kuOzMMmyhAzCQTjGCPFCVJDjwl+6pZpwM5hfWNDBqsE+1O2CAfG9+8bo9tcN5WtPA4LbBBpUbrp
 fTABKKGlCTcAI8t1Otbo5z//xIMpYZd/6UOJC1gtqfyycnNE45iEciRLQTUyNIPPDhISgixWxhb
 Px6V+Qrhk+XE3YG+B/w==
X-Authority-Analysis: v=2.4 cv=T8OBjvKQ c=1 sm=1 tr=0 ts=697f2fa9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=0RjBngDeADCmygnGHrcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-01_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602010094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261554-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 44EB8C58EA
X-Rspamd-Action: no action

As pointed out by Konrad during the review of SM8350 / SC8280XP
patchset, Iris aka Venus description has several flows. It doesn't scale
MMCX, the frequencies in the OPP table are wrong, etc.

Let's correct the Iris/Venus enablement for SM8250 (unfortunately also
stopping it from being overclocked).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Fixed example in the new sm8250-videocc schema
- Link to v1: https://lore.kernel.org/r/20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com

---
Dmitry Baryshkov (8):
      dt-bindings: clock: qcom,sm8250-videocc: account for the MX domain
      pmdomain: de-constify fields struct dev_pm_domain_attach_data
      media: dt-bindings: qcom,sm8250-venus: sort out power domains
      media: iris: scale MMCX power domain on SM8250
      media: venus: scale MMCX power domain on SM8250
      arm64: dts: qcom: sm8250: add MX power domain to the video CC
      arm64: dts: qcom: sort out Iris power domains
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
 include/linux/pm_domain.h                          |  4 +-
 10 files changed, 140 insertions(+), 46 deletions(-)
---
base-commit: 44ef70faf71468e0ae4bdb782a6d43f0614b8ffa
change-id: 20260131-iris-venus-fix-sm8250-f938e29e7497

Best regards,
-- 
With best wishes
Dmitry


