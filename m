Return-Path: <devicetree+bounces-220393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A384B958AF
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 13:02:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA2282A2851
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 11:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD532F5308;
	Tue, 23 Sep 2025 11:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B/qp0n9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ED7182B4
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758625337; cv=none; b=dEChO8/0OeW/NzASEngkNZlfOWe2zcGSDquW4q3UUUDl+4DnNr2rPK2g1v0wrtwciEs9z8zN76rlBAEA9k4szSPkRUp3O5LSXGZwvcTTm/k5brMj2KBbziPJDpduk1N4W0TvrcO1PiMVqSZAhZStm7upOh8wTRef2ffZP8dllYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758625337; c=relaxed/simple;
	bh=5hEBAumSRnPCha/Ny/m++/pZyTtvzKOFLtKUlv8WYhU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iP0GC3r0f6O97bLG4Nv6+4AsX1g6LCCFoPg84A67LMtoK6n6qzR9jOBavGU0N4jpnLzUwE+bEQLu6yQngDSGXnJDnAS5B2n5C7XGtlzJzQoG+GXwk0E867w78bKF55nnUaMAbbtivF4Ieyp9jJCKaSRxmvp4L+3PTz4OvT3oijw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B/qp0n9N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8H8M4020615
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:02:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=GCCtjueZgBHRf2lKO9QvuT
	Vc8R/RhxwXGzaoHvYzDdU=; b=B/qp0n9N78pOX/CQWvRk3WSTHYwwQLN2W+XFVh
	dnlApt8tgnof2c1eP4noj6GmRQTC9OiCT+kVI8tFIics3zaFRGJd0hfGLVrYCODg
	Ozj/t4mYn/VJLvmNWrC/sBKatH2ldqUpwCTo2by1kF8+hiBpr7I1Dk2d3Kpe0FO3
	YhqJIK3ITyzYRS/pj/D/Vt8boUjMM1dFBJGOZfLat5SL6qxCLmUHdPuBCjpQbXOc
	ipPmKAz1IaQ0yPjdwy/hK/QnXZzygWswqqRm/QvhTsaH4ARxuRVZ17vqjpabPgkH
	QbrLKUQlIndUgXrsN9laM1vXcNowDdP8ZaGrfALkZDMPWyKg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjsja0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:02:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78efb3e2738so81742056d6.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 04:02:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758625331; x=1759230131;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GCCtjueZgBHRf2lKO9QvuTVc8R/RhxwXGzaoHvYzDdU=;
        b=lCMJDQgn7D1NI7JBHs1YF9uVvSLCMfs8ds3MCwuV5gWd10Lt5oOuKNJtXBGRTMRJLV
         qU6ME12omTLl7KfgTcrWfzIqa4KnyulbEnCPwdp/PanLYlER0ta7VXZVmaaQK5E236Na
         qcxQNxEkrY9mnwzerf/l9QKn1hQgH9EoIsB1iN8wW9U/CRztzF2E5fHz0YwWIKc2vZ4j
         WkyQxdrkzgupuFcGUdjWEFE7TeiN73BC8YOT8jaAmUAHot0A0dsoP4j3lIElpkFKn4OY
         8Si2QiN9Sn9zg5VgGAWzzh2+hmHTe8hhpyF0jE0GTsy5Us+XhtTfGgbXTTpv0wy9mK19
         dh9g==
X-Forwarded-Encrypted: i=1; AJvYcCXisBtCulckdHIepE7KH7Ml9X49bZ8RPUPrSrmApT4ySlbDQLw5CH/9SiNC9Tin/aWM0YmqExFerGFf@vger.kernel.org
X-Gm-Message-State: AOJu0YyJLg6bheZLbGmUgtw7eq3v9Zj4oYO1KIvMtR/pKOxIBUg/bFEA
	usOAJxivIFh36Q0ti0pk3fqUKW8e+PBY+/7ohu93N1+I3LSliCH4o+89p6OWNFAr/c4gE2kyUmi
	I8+N8muBrn8UtbPI+JgC9yE2j0v23pEEtulo9Mws9ucHFyviXXRXt1m9RwY6bfrDa7Z7Fh6nW
X-Gm-Gg: ASbGnctC7W3L/364XvcAgxHMaOomBS81gPV1kXvn2/qd/si9P5bv5cHbIomzmneenni
	yZO1YJjOLDNdkvtkniMcCKkCDrY8k97JfpJM25JGMRk+xOcWr5vpmZKvyFNMPLu4TUe1q6vfCBa
	Ai0hD7x3XGRtnbg7jNrdaUxjzJzfbCec+3t4D3x22L70lx3C9GMh+aZmo/pSgLykdctXP+dOYKC
	iRxhgcLKr6RmVkofICPuffxkf7V2gQ44DdyBjstwhxo8u2/tU6ID/i4LproBwZpuZjDFIDXTeyb
	N4oXT/Dcu5pk/0KEF1DS4Bw6ZU+oaBiHZD552aEr5rgvR+Ahe9zStOPun4gXxBBwCkFfKVG2lWd
	IEtPmwf/9dSn6MTOmjLQA+3pftvOgHslSOaaHEkbwloYtu+T8vLJu
X-Received: by 2002:a05:6214:20ef:b0:70d:a91d:2ec4 with SMTP id 6a1803df08f44-7e716d467e7mr22730276d6.49.1758625330892;
        Tue, 23 Sep 2025 04:02:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsFNNHaOMJ0Dvt+QYoMrgLHz7i5vsL16oR9PxtXAbrChfsujy9S7H0z5WkxgV9KWb7cMrvWg==
X-Received: by 2002:a05:6214:20ef:b0:70d:a91d:2ec4 with SMTP id 6a1803df08f44-7e716d467e7mr22729526d6.49.1758625330338;
        Tue, 23 Sep 2025 04:02:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f4537csm4075975e87.27.2025.09.23.04.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 04:02:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/3] arm64: dts: qcom: rename dtsi files for sm6150,
 x1e80100 and qcs8300
Date: Tue, 23 Sep 2025 14:01:53 +0300
Message-Id: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACF+0mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSyNj3aLUvMTcVN2UkmJd0xRzkxQzQ2OjNBMDJaCGgqLUtMwKsGHRsbW
 1AEOh8EFcAAAA
X-Change-ID: 20250923-rename-dts-5d74d6132f40
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3505;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=5hEBAumSRnPCha/Ny/m++/pZyTtvzKOFLtKUlv8WYhU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo0n4wYArVdXVon0JH98ViR+JTPByVSEXNFQb1r
 zraqatvJkCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaNJ+MAAKCRCLPIo+Aiko
 1eXpCACIFEaqSDVyKtaSdzlP/SEPJgi3gtn84vuZrJNohZvAjLzQ+nCKVBeLnO629smbi0JlW8I
 uMuC/ArjQPbvOTvG1EBcveLto9p7i34o6sWRIfK6zsKIGsWqtmFdq0yvmhv9kq8lPWOZcy8ik5/
 gac/tZNqT2nbMe1eupMF5TMSmGkoHmrH+nq85lMzEfNjKJCJ9L5ZcbNfDChDtCj7fNVDrY6sQpS
 puZZKpSfM3pJtmnFO831NzGUsbHg4ukGQV0ipe31DH3PX7mB3dyDLN5UlZ4nBdYYy4Tt4BDZsLF
 /I5XhdAcJJSZnkNlPV5Tn16k9zlmIKCjFMfNluVVM6vuAd21
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: nrALR2iHUh89ZBGsigGEbtnsg3Ldwl7c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX6MmpHsMbZF7K
 t77XA1xRxm9bpUgQ8JJe/8nPVfRsf4RcWDl758CsHmsf+tc9UbndkAym+JcI//9uRTZYbbGY1ZP
 O7Pio9IQOV3YmZTtCqyxmLqXCIPGjfr+GvuMVUWa61ENVpp1Nj1GpsRdtUwSS76MReTRj39Te/G
 PsWvDtkDW/5R0Jh33tTwJIJV1BRbJdy5omoNGHetZkBbEABcrHMXt6bf/2EettXAATHU1bWWB3B
 xlWlG16Ex+kr5uUQOjZOr4S7s5p8GFf2yR5f6gcSAwS0ZS0KPTEWdNfdF8w7kedrpmUHQjneHLB
 Bp8mUgufI89wCuZ9FVaIsm7cbjGkv3gcXwhEqoAgKZkbJVeUwO9aGSWDR5ve4G/CW+3mt0IrbjU
 mV/pSjJE
X-Proofpoint-GUID: nrALR2iHUh89ZBGsigGEbtnsg3Ldwl7c
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d27e35 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CLCcR14eWKlEiziUIbcA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Bjorn said to me that he disliked the conseqeuences of renaming
qcs615.dtsi to sm6150.dtsi. Let's increase entropy even more and rename
even more base DTSI files.

Leaving jokes aside. It's not uncommon to see different names for the
same SoC (or almost same SoC, with no visible differences from the Linux
side). The platform now known as 'lemans' is a good example, because it
had been using SA8775P, QCS9100 and QCS9075 in different contexts for
slightly different modifications. QCS8300 / QCS8275 is another example.
All such names cause a lot of confusion when somebody tries to follow
the actual SoC used by the platform.

For 'lemans' after a lot of trial, error, Naks and reviews we've settled
upon having 'lemans.dtsi', the core DT file for the platform and then
naming individual DT files following the marketing name for the platform
or for the SoC.

Apply the same approach to several other platforms, renaming the base
DTSI and keeping the DT names as is.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (3):
      arm64: dts: qcom: rename qcs8300 to monaco
      arm64: dts: qcom: rename x1e80100 to hamoa
      arm64: dts: qcom: rename sm6150 to talos

 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi                        | 4 ++--
 arch/arm64/boot/dts/qcom/{x1e80100-pmics.dtsi => hamoa-pmics.dtsi} | 0
 arch/arm64/boot/dts/qcom/{x1e80100.dtsi => hamoa.dtsi}             | 0
 arch/arm64/boot/dts/qcom/monaco-evk.dts                            | 4 ++--
 arch/arm64/boot/dts/qcom/{qcs8300-pmics.dtsi => monaco-pmics.dtsi} | 0
 arch/arm64/boot/dts/qcom/{qcs8300.dtsi => monaco.dtsi}             | 0
 arch/arm64/boot/dts/qcom/qcs615-ride.dts                           | 2 +-
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts                          | 4 ++--
 arch/arm64/boot/dts/qcom/{sm6150.dtsi => talos.dtsi}               | 0
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi                  | 2 +-
 arch/arm64/boot/dts/qcom/x1-crd.dtsi                               | 2 +-
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi                        | 2 +-
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                       | 4 ++--
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi        | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts            | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dts             | 2 +-
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts                          | 2 +-
 arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts   | 2 +-
 arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts           | 2 +-
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts              | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts              | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts           | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi           | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                          | 4 ++--
 arch/arm64/boot/dts/qcom/x1p42100-hp-omnibook-x14.dts              | 2 +-
 arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts          | 2 +-
 arch/arm64/boot/dts/qcom/x1p42100.dtsi                             | 4 ++--
 27 files changed, 34 insertions(+), 34 deletions(-)
---
base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
change-id: 20250923-rename-dts-5d74d6132f40

Best regards,
-- 
With best wishes
Dmitry


