Return-Path: <devicetree+bounces-210432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A277BB3B875
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 12:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CD41580F3A
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 10:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7187130CD85;
	Fri, 29 Aug 2025 10:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gXVXEKEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC91D26981E
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 10:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756462528; cv=none; b=khz5euO1JUQO0sCp9ffmHlgNHKNZqtMypCl3uoiARFWmKbBsy2O/Wrsg7H8uTZ+fMSD5A55E+zhj87sbTXQ1gelvc1yELQphkvmSiUQM//XLr+jvs6Bgwzlnfso0AOnU8C5FJHoFevAegAmqRmDj+tAWWThdjhj1QWzQVg6mGWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756462528; c=relaxed/simple;
	bh=+7IMzm3dJQyIaL5UFTpN5Juov/HhX3fmuiG7C1O9X7M=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=p2WP99HL21d9g+nkme2+9vEvxNaiKrih0CYmdNSRDfF2VcDfGKAoBg6/JKRnnXePx3brgj52ZludHhH/Mi64Ykoos/RyuzJdq50dt0D+AGmZ2uIdftn7QoJBb7Fk4QASFZseQALkFwkAVmninBfZCfN7o/WtN1DTxwVXthyk2Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gXVXEKEA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57T85M8L027130
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 10:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1xKcaJgxrBPyjChsn3f82b
	01oSG8OtqTmJA9Agd0y7E=; b=gXVXEKEAyZQLmn38krTaE+B4AnljUj3UzCzPlX
	jPGkpGZKZb54inT1sW6t77/v+DNGZMdpV7H5X2YWRpUbDcqgEJOwxhPfhKOMnOuB
	ugXDjeA/5cAwHQlYqcyyzmsiEO/Bz1NLTLy+5h1Q+0c/pn5TOmTeFGDGNKA83/f1
	xFkLDdsSjzz0CmEYcIiQEGN8cnkyQRbjnh3Z+fLK2K1oICMYnJMgV/oEHblWtFS5
	rBWFnPA7hEuzD5As5Q3IaaAaKjvIyaFyKJ/V3/84mQdmjYZSHwXsD4DCny8E/jDf
	GLYFlyla0B1Ltt8KUrlnhr+SLeMkTSt6WI0df0qIK+SzWZCw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpgnb4f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 10:15:25 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244570600a1so23745325ad.1
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 03:15:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756462524; x=1757067324;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1xKcaJgxrBPyjChsn3f82b01oSG8OtqTmJA9Agd0y7E=;
        b=D+q7M+NjmRvVrHuACldlAVF8/sEgKr8qA/lpNFe4ajCdpr+4yFpFz9IT4lxjvHfPSi
         W2Kj4V6TcLX2p52wr1msOVwLOqNvrGyuQu+v/2kiC/YZSgGElp9Utq4/MqD1EPseR2EE
         xRHR95qR2ZPo+cF4uzxWGTTCm5vaqA7kV/uvFxovlOBcFyYhkR8GkTBfoy7rPxtGTwhq
         1/GYaJGXQ3XFWdfylkwgwUJ3C34oOwNuHE+CjnAdfQxUpFh2pz0MIQZYGg8zpevM1H0j
         ieso8z96eogMB20G2rXoFD9l3RV3flVSbm313T9L1oqirdwff2yPCpllKKSnUDPuSqcT
         jKiA==
X-Forwarded-Encrypted: i=1; AJvYcCUaeMhlog6blE1e5fwcNhQbVpwdBhJAhsiqv4x2aPjoVvZDq2Bq//ICABwkx5iJnVtiR4Y0ifi0Ym1m@vger.kernel.org
X-Gm-Message-State: AOJu0YxRBvHVwVf5uV9+iQ2IuD/Vwxn8JJG7UhBsqqu4CX8QZ42+SIBF
	ljTl/7jzvxjWIa52W6jLhaYoI/0o3wW352Psles4NcGTEBGaopNxahDRs2LQWwT9K2VX2yOxyzG
	FqeQ5PAYA4/TdEb5BBICYT0nEj8pjZoOu6G5HmhZro0wu3gUAXF2uCQMrPEopugmW
X-Gm-Gg: ASbGncuc/C0qxkYlktZZjnbwb+aWS+QNWteVcmPY4/m78DyxeqGc9q98KHv9LOZEhr8
	/IB7kosIO5y2fM0ScK+YteBaxpXDCcljVrdjvxHyd0Y7gEFK7sFk8W+fiwxKDyw2TNvWclHtFy0
	KpEZgpdO1SLiQm51vV3sdDAfsaTKiGxKqs0g4Sqx4GWWj3YKmGJnGkKi+MxyAvY0tthRlZl38fS
	Lu597nRt8PYM+NKKWXFemeO5vFPBrPUnthvJDZMcXHqmRNAYr1P/f7yWRvKt/6Dulj968nqgode
	2f7n0cFGOHImbWvMSOCencH/uP4KwKdOuzE9LahjhAuAiChxeoN1zpdLm5ObJ+6g
X-Received: by 2002:a17:902:e88e:b0:246:cfc4:9a34 with SMTP id d9443c01a7336-24875395b1amr151492495ad.26.1756462524359;
        Fri, 29 Aug 2025 03:15:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtgp+U+U5uatmdSx8ZasbDdBwKl1/vpZfFJ8DY7f9DIPtySa4vUKP/SOhlyw4v7Y/wEaDn1Q==
X-Received: by 2002:a17:902:e88e:b0:246:cfc4:9a34 with SMTP id d9443c01a7336-24875395b1amr151492045ad.26.1756462523776;
        Fri, 29 Aug 2025 03:15:23 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-249065d1b19sm20102775ad.131.2025.08.29.03.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 03:15:23 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Add the support for SM8750 Video clock controller
Date: Fri, 29 Aug 2025 15:45:16 +0530
Message-Id: <20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALR9sWgC/x3MSQqAMAxA0atI1gZqap2uIi60ppqFAy0UoXh3i
 8u3+D9BYC8cYCgSeI4S5DozqCzA7vO5McqaDaTIqI56DEfXGoVRVr6sxUjY6KpatK5dO/eQu9u
 zk+d/jtP7fhmE2LljAAAA
X-Change-ID: 20250829-sm8750-videocc-v2-6311b334f7a9
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: wWnyjEpZyWRjxcSj3xYa5I0OOKDC8WLP
X-Proofpoint-ORIG-GUID: wWnyjEpZyWRjxcSj3xYa5I0OOKDC8WLP
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b17dbd cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=1P1wqcGgztCMLUttUvsA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX3I8fpS1+2oHS
 2cqtVvp8aGqonggywfsR5lg4NPQ+wo2SfLBCH6MTL5q5JqJ6ZwbeAfpm5bfcHIwJ9sN3OjCJgam
 2HMQDaGK0aXwEQ4t4AS8TkN+XYRfkmp6wUPjX8iQEweFnNZRBJ1nfp6oIx7H0XrdC0/4OPKGNV/
 6BkyPkPUGTyjfBiwxA4Cw3qdOQdyWBvR5esM4fcwyLPMLtBjU3/xgz0EZBf3UibLZAXNPsmWmY1
 CFlGBSIfa2nh1ptGpGcUJthyEWzJrGh3ILmCxDlbv1JO++WsLZXu22B3NAe4hw+oeYFQhZ/lI1t
 5Kw8U/tezaFm7KE/+THvMYst6vtURPzvmXoDzo0ewz1kYnOD+No+s7QqRpiI+S9gM0tLl8qfp4t
 nn/SsVEL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199

Support the Video clock controller for SM8750 Qualcomm SoC. It includes
the extended logic for branch clocks with mem_ops which requires the
inverted logic.

Changes in v2:
 - Update the commit message for the invert branch mem ops [Dmitry]
 - Update the email to 'oss' and also update copyright.
 - update the RB-by tag from Rob.
 - Link to v1: https://lore.kernel.org/all/20241206-sm8750_videocc-v1-0-5da6e7eea2bd@quicinc.com/

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (3):
      clk: qcom: branch: Extend invert logic for branch2 mem clocks
      dt-bindings: clock: qcom: Add SM8750 video clock controller
      clk: qcom: videocc-sm8750: Add video clock controller driver for SM8750

 .../bindings/clock/qcom,sm8450-videocc.yaml        |   5 +-
 drivers/clk/qcom/Kconfig                           |  11 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/clk-branch.c                      |  14 +-
 drivers/clk/qcom/clk-branch.h                      |   4 +
 drivers/clk/qcom/videocc-sm8750.c                  | 472 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8750-videocc.h    |  40 ++
 7 files changed, 543 insertions(+), 4 deletions(-)
---
base-commit: 3cace99d63192a7250461b058279a42d91075d0c
change-id: 20250829-sm8750-videocc-v2-6311b334f7a9

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


