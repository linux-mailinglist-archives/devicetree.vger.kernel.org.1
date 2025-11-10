Return-Path: <devicetree+bounces-236614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B560C45D9D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:14:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 56D174EA114
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9C630276E;
	Mon, 10 Nov 2025 10:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LNQUI3hR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OswiEGYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B35301711
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769459; cv=none; b=QvapNdPty+qQbtqYxwIC2fRSjGOGoYoIOkusd7U7lmCbNJ22PGZL/sjaCzUP6oXtHqpmuVx9XE/D31NziMpQUTeRx4d8PhLS2xzw6yx13L2OwhNVU6xLrgL2e42sMoU5SCWt6wQcC0jKwiBzjkWyxlxd6OjYb5e87Y2yCDFaq7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769459; c=relaxed/simple;
	bh=L1vucliNasDKObPZpGeHSjysvEIsdMIphONGTFyX0AE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qwr8G3OERyUeoNtB8b7nxnFOze0Yp9jU6arD+D9F1b85kJ8z7d4eVYc/qvDka6I8pkP7NrHY8ncoFhTwy4B7uXolQtPFz97juOZez6qI+rfR1M0j9U67YZZSiSMCwndwkDpaklxRkPacdfjSq6ZxWSYQNN2fvxC2JDrQyKg8jd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LNQUI3hR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OswiEGYU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA869SA1619128
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:10:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mMd9Piz57k2MZFzuMa4objFRvRL7MLy1f6F
	P2mnb+eA=; b=LNQUI3hRJP7PmfxA5eYcnadah29kMIiCxsndfZqn5NrhFtQByKn
	ARFvDm2E1IVgA/V340bsDAq4wQ1YcmdqUeEN6K9nXNby3lf2EtC70orw7u1fSNoW
	xikO9rKtPbvGAiAcxtal9h+pwGnh90QXiZyqVJTWhY2O5vmhDiJOtPBvklEA8HL6
	bx6I+aOQ47EvgLehl/6n4P5epJsb41qb1T7gd5zET5xkIl1FLCjn0P+h/aFlV2Cg
	3P0Vi6ynGb64hi8BqlY4SbcRddITKrL0A9+5/jSO1eUesERglVG+mRuOfhGl/Hih
	9EmOF7cz2hxSuElX5JmXG2dugHmL3Ra6XKQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xs7cc7p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:10:57 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297f48e81b8so27031755ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762769456; x=1763374256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mMd9Piz57k2MZFzuMa4objFRvRL7MLy1f6FP2mnb+eA=;
        b=OswiEGYUIZ7sooGBtOMWYdbfYHoKLVtXJMxNCFLsHIfqIWFInrxGuMtmjvR7UvDEMD
         jIWpnEmbWSvmefjjKv7AOm7zha4qCnz/UgVgUBRf8cJG1u5ELVrVk/kBkEoknNS4w2HI
         JBJetzKVgL2bkmrtiCXUJAdrBQ2PUqRBr1YHw9akqZPHugg1smYkyMJabre4G5rGmyLv
         E8xRAiO5srkL2+jxYweu2Ey8qo5f0rxvW+Uaa+YGWENcadHLnq991zZmtv1Uk7rBdIFG
         Yw845OsrLrBZcfAwo9xlOzr1yyq6Fi4QEk2oYUzqnCP/7dXkFi1yFviN0UF5wu+Swqnt
         wQkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762769456; x=1763374256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mMd9Piz57k2MZFzuMa4objFRvRL7MLy1f6FP2mnb+eA=;
        b=SayMYaoGd9JOdX6yBqeR7LKfL1FDJ2FFCf39Dz8CSPFp63fXGKAlKjh/MBh9qyBXm6
         6bIvErAyK+f3/xCyjAztm+yy4Qyl8Zv+IxtqYE03adjz2sjZ1juA1JppHbVI44YTUB85
         h2PG2qCfvp+3W/NoHmUsT+YmQ4CciBLUpXYGFG/PYVJf9uCG0mu2TIG3z99Z3PACPsLG
         d3Hiz2eC+WqZwOmRSenrE3nzrqPly9QMjYWWNgYGrWYcFYarIYpqGgVXKcxQ/S8bs3jP
         ZNsS76vP53GDK9NBAv26FkoHHPM3FwoZuIOVjAkNCrehtpqSkXyctk4uLkP/Pjro7P/l
         VsLQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8kF2rDCGOoIyHQxrnhrA5azDRFsp/tOyTy1vr4NnCmsNpDq0GcJ2VGU5vuDQvUGWNS29AAb98db0y@vger.kernel.org
X-Gm-Message-State: AOJu0YzstDxG/hhmHo4AP+UbfTA5zrefynUZY1UAYuo3wKxl4U3m52u7
	c14EFhC0evorOqfgZJIRJMuh6ArTcEnugh7KAsvxea48TpcP358jZzCOR24FVOl88VesTThp8dk
	48CXMNgJiWADvZ6SrkdPIqB5N0u1nUGakjEF2yUPAJ26esxbilBL3kMHG2bvdqeze
X-Gm-Gg: ASbGnctWewLHEbuRFzPnjrfAm4LLG1W29/H6rdQfRqt3JZlbdZqz6LS/WEo+jgBy8O1
	edYsnGXUp5+XCZ8+pWwt7gcsxD8II5DsYNW8PCnoQTx9O7PAo6w+ifJBL73AZzfdYv7rHnRDCib
	TJbAa5EwQn7kKmrndib4sc39ykgirKo8DFy6wY8I+s9243NwAMd6KzmScqG3PzDgBk+sS0Rqi1g
	OqnwTapmcBuKUgBQK7Mmpx/Pqu1sa+eMTUcsR1mKuv3jQ0BySiYYmHkPGdZaiU5JqUppf5t3Jpe
	r6m/l7U+6FNfxsRsEl9IEh7MaGiH/XdYZfuG3bYeasoRjcjmp/2arsGRMmdpDfkeXjbqgmk/7lL
	1pOnB1DPnCy5gwV8ictUg/QUwNN+lnfC7
X-Received: by 2002:a17:903:3804:b0:297:d764:9866 with SMTP id d9443c01a7336-297e1e33347mr100516045ad.18.1762769456417;
        Mon, 10 Nov 2025 02:10:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGOvHZR3Wfm3+slGSa2LDZC54iSNYIgHCmsn2ecCk71PcynUbvaa1YJZlv4wWE9MkQ7NdudCA==
X-Received: by 2002:a17:903:3804:b0:297:d764:9866 with SMTP id d9443c01a7336-297e1e33347mr100515595ad.18.1762769455827;
        Mon, 10 Nov 2025 02:10:55 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297f2d9c971sm60180395ad.55.2025.11.10.02.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 02:10:55 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-serial@vger.kernel.org, alexey.klimov@linaro.org,
        krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, psodagud@quicinc.com,
        djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com,
        Praveen Talari <praveen.talari@oss.qualcomm.com>
Subject: [PATCH v1 0/4] Enable Serial on SA8255p Qualcomm platforms
Date: Mon, 10 Nov 2025 15:40:39 +0530
Message-Id: <20251110101043.2108414-1-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: lecBwL-3Yn2WAZaxC1YjrMS_1ZBWvRA7
X-Proofpoint-ORIG-GUID: lecBwL-3Yn2WAZaxC1YjrMS_1ZBWvRA7
X-Authority-Analysis: v=2.4 cv=LtifC3dc c=1 sm=1 tr=0 ts=6911ba31 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=zExy8rvKblQCe4eoFioA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA4OCBTYWx0ZWRfX7uGDfgixNp6j
 vi9zLj24UiCg9T4dSv9WxnTFHsZk22tAwm8099pukz6lVOXUAZ8TnQ0u2ExxqZZVxFUrccQ49Jo
 yjFQeyUx9uYnGbrOfi+J/eU9f3pLGdN5JarX4jw3yIJBh7Mi0fznG5AQZSPGPwJImw0Go/rVyVT
 /FKeqrwy4YhCmxd0H0J0kRTO9y+IYpp8spKP6hrfEr0ahuLby4k5DVb7Hd96bgtAsYg3iQzxlIm
 RMG6kY3lVqfhGBHH2KM3SokRN09DyscX7pOoXXdp2bAxF7A2lABrX4ji1HkeWJ41qSM8vwvGu8D
 kVBqsgY0aEAJMKbDYEcEolzpEb0KOHNduk46gDQkjzqUf3N51yZDN93VqJsKfm3ED2MR9KBLBAp
 FNMHPHxV7SzQrbwj5aQyIm+JuWZOqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011 suspectscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100088

PM runtime support was previously added to the serial driver but had to
be reverted due to wakeup IRQ storms and deadlock issues observed on the
RB1 platform.

Reference:
https://lore.kernel.org/all/DC0D53ZTNOBU.E8LSD5E5Z8TX@linaro.org/

This patch series reintroduces PM runtime support for UART on SA8255p
with fixes to resolve those issues.

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages UART baud rates, with each baud
rate represented by a performance level. The driver uses the
dev_pm_opp_set_level() API to request the desired baud rate by
specifying the performance level.

Praveen Talari (4):
  arm64: dts: qcom: qrb2210-rb1: Fix UART3 wakeup IRQ storm
  pinctrl: qcom: msm: Fix potential deadlock in pinmux configuration
  serial: qcom-geni: Enable PM runtime for serial driver
  serial: qcom-geni: Enable Serial on SA8255p Qualcomm platforms

 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts |   2 +-
 drivers/pinctrl/qcom/pinctrl-msm.c       |   2 +-
 drivers/tty/serial/qcom_geni_serial.c    | 178 ++++++++++++++++++++---
 3 files changed, 163 insertions(+), 19 deletions(-)


base-commit: ab40c92c74c6b0c611c89516794502b3a3173966
-- 
2.34.1


