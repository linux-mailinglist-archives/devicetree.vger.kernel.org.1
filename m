Return-Path: <devicetree+bounces-203531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A08B21B72
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:12:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDCC43A2792
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 03:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9912B2E0B6D;
	Tue, 12 Aug 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YkNRuuf8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081E31E1E00
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754968313; cv=none; b=PJQBWGOax2OFT+kLNV7w5vIgHj7ibOwqHLcbF5rCj+vWNFmif/todV8mw6qMTfYuiW3Ab2pV4YBqpChA86imC4pLfDW+Oz3ygRLq/0iEicypKPf8ltQz1+x3NVhdJ8MP2mra9729s4CI58oAM+HdwDgq33lj9DtJCchtVcm14dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754968313; c=relaxed/simple;
	bh=Mj/gF/9fSY0f+IqlOycaY4NkWN1q9QsT0o98LvPFuFE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=o3LjpOyfTtwvN/5Vm/P5hkt74U5vA3lB8z84cTPgluZmhgnd0lI1lDqk3JD7B4SXxa4J23kAAzY3BMkTsus2WtBpFohqWj72VRUFEm4ts6exoJeUIZUUxkuPlwG3INRI/GdjercPOSlAz3GPJkA6PAxYWk8t+lNw/T2WKVK9GNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YkNRuuf8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BGxVdr024551
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=BAV/apLO74df1jngYHBqyu
	gvW7f0OfhZGnzLMbl9/qE=; b=YkNRuuf8WmFB7xXuqOHsLC7BXFkIjdhdVTPmGX
	MVVaqNew5Dwv1yehOtLa7dRyKt5v8jam/TJAQl7bcKVQuwmrO2I8fnhxoWCPZEeU
	qde1hSQ2ykvX4YKBbF2/8AYcjGXgfYgCfuae7kTaDxt106XCJfYWxfCqO2Zln15P
	iG3WHR9R6HNOoaZgtWEBFVF0qBCg5qNx6fGb+K7lNNl5CMtC6om9Rk2zlr6xYc5G
	5EbUEgmcC2mLBv/jKEH5ybC/l9Ai0gJ0Zvz/OfwW0OlHYxFVJUvyLVBnZJnkkO1j
	d2A3CzBQkkN9lzFfxmlHYFJHowRiRIAB19XQ8BkCgkcryXqA==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4aksm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:49 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-30baebad3c3so6646695fac.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 20:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754968309; x=1755573109;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BAV/apLO74df1jngYHBqyugvW7f0OfhZGnzLMbl9/qE=;
        b=PAQ6dL6JB/4Ay2Y1ZI8DlDlQjE7szK23Mu61Zb0k9A6PSaYGOpR3ldrbxTOVBBU71A
         0JVNE5SEUkSmEWgBujMClj72xrTeeqB0edmS1wx8xp3X4PJiOHNPPhjBQvZj39B2wrRS
         gCU0Ap1vpDVHIU0QPCyS6CxP7WO01KcAW9nm96GL1w+KUNdm96zy7dvo1W8tStKcsMs7
         9ZwSa6wYKc41Awum1B+NT+Bl69LBV2434j88Kj8XLXXV1INvrqEg4mv5GcOzm70n9wIH
         ib8nZys755rJDRyhNUYsX4HDZ8/yqgdiXRkH+OJUYLJ0o0v8hAQuuzR4P+mN8kNmiL9G
         ESNw==
X-Forwarded-Encrypted: i=1; AJvYcCXBTdFb/tArIfUKepUkSXYUPeVRvQzrpBVP4itv51UfxY3/gf1ywoqrWBqN/d7q9fnFeIxGAa5T5P4P@vger.kernel.org
X-Gm-Message-State: AOJu0YzlKNUDhq4EKRvMLK38vO1dEmVc1P20bY4m3W33rG4RiJXYizDQ
	7rbp+MFSooo3Ud9dNKVdZkDqQ58OSS+LRLrats7oHsAeqfQ3IkGzLzgFCMifSlS0d0RoFAcSGmQ
	omEEI+i23QATyL+/fcL8O9avHQtrLTh3KKEoEOv8+WUcEP0ANQD6UQDv0ypFus88S
X-Gm-Gg: ASbGncug+wyUQGPbTxxXPhwzXH+OYkdp98K+REbafBDpG/Csd1PNJ+oP/D2lRTXw//k
	AtI7uP1T3q2DOsYrF2UM3W7CukRd2HPMLeY7EOYUbBlW8p6wlxNZ9Urzaz4iSxMxDPalJe/Esmt
	8O/K2N+3oo952CA9wAEcpHmZvdg1sqHa90GAEfby/Zir86sbr4uI9+npRv8Rop9oDTz/ikvgan4
	/mtdQ5o8JeJYWoBzey7nGTePoQp6vvXm6G5LU0rvymHg73UGvOTakRt7jToWdGC2iPvXmRJGZ+Z
	lGPTMwH6WaDIdpsO4fGRdxUfk9xVig0JCOsgQWczCiWBGR/ctJNFwijrvpe1X2+p5BhCIT0ZRYE
	CqVdefndR/Y9Epp64wpgAbzsHWB+sBf/sSIdBZpc=
X-Received: by 2002:a05:6871:1d5:b0:30b:86ed:a23d with SMTP id 586e51a60fabf-30c94e807e6mr1136995fac.7.1754968308929;
        Mon, 11 Aug 2025 20:11:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzNlsbXJxq2ZDPixpYLAWXnmxJmMs7DRwNxWd4nF+aTiZVLDZe8psAbaqwD1L0gMyjxQUVTA==
X-Received: by 2002:a05:6871:1d5:b0:30b:86ed:a23d with SMTP id 586e51a60fabf-30c94e807e6mr1136982fac.7.1754968308604;
        Mon, 11 Aug 2025 20:11:48 -0700 (PDT)
Received: from [192.168.86.68] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-307a717f0c9sm8174531fac.13.2025.08.11.20.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 20:11:48 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: [PATCH 0/3] arm64: dts: qcom: sc7280: Add the MDSS_CORE reset
Date: Mon, 11 Aug 2025 22:11:32 -0500
Message-Id: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOSwmmgC/x3MQQqAIBBA0avErBtQK5SuEi1Mp5pFFk5EEN09a
 fkW/z8glJkE+uqBTBcL76lA1xWE1aeFkGMxGGU65bRGCdY4hVsUwUxCJ3qrmthOzpvQQumOTDP
 f/3MY3/cDmjfWc2MAAAA=
X-Change-ID: 20250811-sc7280-mdss-reset-a703d4b8a2c4
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1021;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=Mj/gF/9fSY0f+IqlOycaY4NkWN1q9QsT0o98LvPFuFE=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBomrDtdIUCXra61pec7tBq9aXq9jN1LrBsryBgp
 W0A9dl1g6GJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaJqw7RUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcXDrRAAhG+LiUCXoRaMu2d80RM4gpI8EvNXP68APXDoMwq
 X4p6ErAVz3w5vDkHfYhLddVIlleZn6pd8mu8KRk7lAx0/9Xk6f1xS1UbusKW4gmy4w7rkHlFujR
 oRrdUUHh/9M5J7dHnTbgSZrJPG2NlUv/rX21grrbkoz3S0xhN3dvn8xL7YtMNCgVGN7fjQeWAlx
 NjCLQDx9Rd0pENkK8Gsrom0HBhQz0DpMZaI1Qbzp+f6GDKCyKLek+whmx2Y2Q8qaRRSIDzYTmNd
 00/kDMNAo8wtbNJxFB024+oulrLkCIwWHSAoIgjj7S3WTtSNmteEem2G7g4DKSCrtZsycTq2S6h
 P0jU22SFJnRMpEB087pfDfUKKEK9CtcgB+c9EM0MzpSHNpNsFtNhXrPsOth0uW0FAIjtUD2nrWv
 s+pZde3w+EF+WQLrCING7CHyNFINdkB0aePP1eoKQiGVZ0a/tm9CdXD10uZH36/bS6FMiWe86MH
 d6jOfqJFb742acKpoHwKx40bMA1oXMcqlfS2NHoir5Q4G9NSYlerYKopdKtwv4tGn41h7/Nk2dC
 KeUD4BuyoNbQb0zclxOEf8TNBiMLDtAS+zX1XDCmVACdj5+REfohNONFKXqg2i+OrVh/zWZos4h
 ZyB0G0/rkbR1hv1SAHEeUzxvMiusfQfy6jOJOmH22AkQ=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-GUID: rEOgDg1sS6KUu83evjOPq3xUrAoxpxKE
X-Proofpoint-ORIG-GUID: rEOgDg1sS6KUu83evjOPq3xUrAoxpxKE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX568GQflksAeX
 CqEQ3njOQn6DO/T2csuCmCFhq0KXJvEhVAowUNvR5R6+BKsbAGOF5pKP5A8B4Tvoa0d2y9touoR
 aySWrR2apPrq3oEyQRhNfRkhTTiKMVME50raqL/hlVMRvwbZHF7OS12+HHj594gDSzVxKSD33gZ
 7nGp3JBCy0w94tI4wpISQcieJbYqgBaPv/MbPo5fN2ZMOuwGTQhT9AD2yfvSTfBPMCQdfJO1Hku
 +t0MSZKOtjm6+onX4pi37J603toV/+F2xES0c/HPRb1gJFIY5tl84JIGArvJunyWg9PeZmvnLRL
 7MszGUko4Eq89jQ1X4NF6M9b8bZR/9amNFVcyeysc+p9cVS4IRaEAu52O2Nu8B1F5WfnQmBm7BN
 UEZKyx7B
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689ab0f5 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=SSnYddtK9NkD3JaiHHAA:9
 a=QEXdDO2ut3YA:10 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

The version of bootloader found e.g. in the Particle Tachyon configures
the display subsystem to the point that Linux isn't recovering the
state (currently hits one or more iommu faults which results in a panic,
still debugging this).

Introduce the MDSS reset, like we've done on other platforms, to allow
the OS to clear the bootloader state.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
Bjorn Andersson (3):
      dt-bindings: clock: dispcc-sc7280: Add display resets
      clk: qcom: dispcc-sc7280: Add dispcc resets
      arm64: dts: qcom: sc7280: Add MDSS_CORE reset to mdss

 arch/arm64/boot/dts/qcom/sc7280.dtsi           | 2 ++
 drivers/clk/qcom/dispcc-sc7280.c               | 8 ++++++++
 include/dt-bindings/clock/qcom,dispcc-sc7280.h | 4 ++++
 3 files changed, 14 insertions(+)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250811-sc7280-mdss-reset-a703d4b8a2c4

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>


