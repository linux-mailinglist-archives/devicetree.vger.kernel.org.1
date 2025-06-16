Return-Path: <devicetree+bounces-186154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB79ADA8E7
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0FB61891FC4
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 07:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C75B1F4C8E;
	Mon, 16 Jun 2025 07:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qx3HVd+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57B31DE892
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750057499; cv=none; b=Dt5sQzYrJIlMzNq0ATYPpiRZdzrZSuUkTujKqrlbFrh3qrpv1LuqmSRx0PBP7iNfhXlnrnOoGzzduBkHNlgZcGab6DyGeQSPOs0+agDT0PT7nkkpsJK53ybJeIQs3p43+Drb6l7zSOYW1D552pn599vFBAhJzXghuMJ5WPlzVGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750057499; c=relaxed/simple;
	bh=DkGDjczW+RAHUbptz63iFFEXvw00+iORY5XJP5CER6Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mj9XesM5BcSCu8GkehcW1Uf6AGPc9sq4g47/zit531pylFsyTtyoXC1r9oy2SR5eXKWmfcM0osnJBJqGFMMvAKBeL6NvGehYbuoaTKrXZV1KTfXA6+l5EZftOKaZYOPVecfc49nVDzHF6I3nT/9kApjV60tQw4yUnLjWZTt5+nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qx3HVd+P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55FMX2OW005293
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=8CSXs8YLFA90qJz0nFGCAuGj0c2/SeDodgr
	F61jLHXY=; b=Qx3HVd+PIi1iUXhXWS1X0pQXVs4oktpQBwFEUbjfwhZI1nXN1k1
	ygxf+9vQ6BfplAZP9qm4SA1LWblwhQUsgFFq0P4oJyV6rpqga8Y4rsa+OZx0pmtH
	3fB/3mw4zsY2YdH9X1sKvKfq/Xr1XO5EkKb4kAhUYlqLmj3MmD8i9hzRX3TuZoIs
	5gdtCekr63Xh7ScJUhinRA6LgxrrXLkb5yFtOwMRhEvBPn/sfOxZexSU4MmHpTOH
	iblaMvMJbh688c4msQCZBJu3VgIlYHCODnY0RgqESphk+MJJ3s9RsCuIW/kgCn98
	EsEv/3k/Dhc1JRVdWhfT9/uWPUT0xFK78yw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791ht3byu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2349fe994a9so29574705ad.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 00:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750057464; x=1750662264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8CSXs8YLFA90qJz0nFGCAuGj0c2/SeDodgrF61jLHXY=;
        b=FV55K9yRAVMnLoe1HgxRIwLIdDzGzRcc2Omhp61oGzoCh2eQIKcQz+TmvjfJkGs5eh
         CCD46HMNiducfdY0e+btrDrkIglQppYBox2mAWeINnehsHlTvJNwmtrym2xyREA7c6EF
         k2o9u0TrURnOsmf6tGHCrH2W8WFEc25nOoLo32vM0qIKSc/rfibrtLlGuWiIYohKmBUY
         F5tmUr/d0Kgum5FF2BGT2wmPCK90z+xoA/Lybtc8tHM1u3fnq9hZaJ0G70D6meiZIglq
         bUtb3HalidusSyNXKofePdANZMZsUZ0DHa0xpbpLDoJbe4UnbPJGDIjr9RIw6RtKAKWH
         drsQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5UF+j70yu2GlZ2uvGOhNdIY5dFF06y2q9FGCieHyVE67KQyalC8FgkvkLtLmo281XQUiXZafCRZk+@vger.kernel.org
X-Gm-Message-State: AOJu0YxI2E9USImjAeoVJOK0dIZctHyWAXZdau/aXrpM/0NxSb49EbhZ
	1VFOPqFvcKTrqU0TJN7bMxDS7OGQL+2OUu0yolJhCiS9gz7y5I9ZI3DMNsgcoqos19A+LODoOJf
	ylPmC2u8duTwKXPvrrE4S9A8hMfA513DuscFwHDodkX+R7NJHHnYyEcJwNCsIPONY
X-Gm-Gg: ASbGnctB5YWggO+97jSGARcWzDBGD/tR+LapeQ7KMH+mFZ6pfzGdHX5Ix8QFAH0c1cH
	21z6vx/uiNZY3XbnGHis6KEwkNdtsYc+RB3lBzdApwOnS08p+1VfvkSK0X0apxXrEeccjpzOdxk
	qyVJC5cp4yTLHeFT1q/8X1p8TKitStZG6BwLw3OZlcjZ7QZ/sHdGUpTPq8D6W7OS+Fa8wxMmzws
	JTZb3vZmwYpp2VcJAJEoselAmRc7iP6Ki11pgcVAIHdn8uEvKkyvtyxb0ktx2Vwokd38TT+pn5R
	EQafzYvpke2ruYq18LEHu8n4WWEiHZyumdpT7db2Y92euHWapSXK55+9OGw=
X-Received: by 2002:a17:903:fb0:b0:235:e71e:a37b with SMTP id d9443c01a7336-2366b13c905mr111686065ad.34.1750057464454;
        Mon, 16 Jun 2025 00:04:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGK+vfW0KxFP2RI/6Wr6CaYhcpxAIyDnSQ9Z/QOwugNmsDFlDJ7ZFbg+QCbcqSaAEuW+soZw==
X-Received: by 2002:a17:903:fb0:b0:235:e71e:a37b with SMTP id d9443c01a7336-2366b13c905mr111685755ad.34.1750057464012;
        Mon, 16 Jun 2025 00:04:24 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a19e3sm54435825ad.82.2025.06.16.00.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 00:04:23 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v2 0/2] Enable audio on qcs9075-evk board.
Date: Mon, 16 Jun 2025 12:34:03 +0530
Message-Id: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA0NSBTYWx0ZWRfXxvWsxqE0BxUs
 AwajK/fqucZE22jX/Xg+PQM4ljpeW67RD0SP82+I1Qg+XwXrNSqtNkCQmnc2G4SxbrDHqyQefa6
 R6xWjxDD7fszp5ktq5g8wc2TfEY2fXaK7nhvJgp+JOz+LEDGoNlUBtsTdyI+AHktCWDppnCDFE8
 W30MP5wBPaFtRwB/Ik42NElXSS4kPALGmn2R0EF0t17sf/gvNr1d+loUhtBjeeUIIEjTtiPnlR1
 2cg+m9xBjRtSp2dy7h3DtvQWseu3JuocF4on5YlKCHtCz0nNnME6JUEswV/gsZAzNrUG9uvp5sK
 c3K2Lk6aeRfx4enODEqDrLz+N92EXBJy3bOnW1cZCPoA4oIVyEu3Ph/nTkkETGfB6xt17oOkxMm
 q+GXK8MFdHZJT8QVXMNknlI3AByD6AYAS+/nMWtDEaCU6spFR+BwLU9ZaVZwJFBxOnSXgU+e
X-Proofpoint-GUID: coIPVpYbAtidO1HfXqv2mw8ud_q2rTu3
X-Proofpoint-ORIG-GUID: coIPVpYbAtidO1HfXqv2mw8ud_q2rTu3
X-Authority-Analysis: v=2.4 cv=CtK/cm4D c=1 sm=1 tr=0 ts=684fc218 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=YkB-U3mbqUf8DnNMcaUA:9 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 phishscore=0 mlxlogscore=983 adultscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160045

Enable audio support on qcs9075-evk board.

Introduce HS (High-Speed) MI2S pin control support.
The I2S max98357a speaker amplifier is connected via HS0 and I2S
microphones utilize the HS2 interface.

DT-Binding link for sound compatible:
https://lore.kernel.org/linux-sound/20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com/

---
This patch series depends on patch series:
https://lore.kernel.org/all/20250521140807.3837019-1-quic_wasimn@quicinc.com/
---

Mohammad Rafi Shaik (2):
  arm64: dts: qcom: sa8775p: Add gpr node
  arm64: dts: qcom: qcs9075-evk: Add sound card

 .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 54 +++++++++++++++++++
 2 files changed, 106 insertions(+)


base-commit: bc6e0ba6c9bafa6241b05524b9829808056ac4ad
prerequisite-patch-id: 853eaf437b81f6fa9bd6d36e6ed5350acaf73017
prerequisite-patch-id: cf52fc82e606ab87458339f71596ca31253e91ee
prerequisite-patch-id: 3617ce3b1790bc5b8e50dca6c3ae482759dcc684
-- 
2.34.1


