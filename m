Return-Path: <devicetree+bounces-234692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C930DC2FC3A
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 09:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 538813B23BF
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 08:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC803019B8;
	Tue,  4 Nov 2025 08:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ho83yw9o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hUoU408f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2191D29BDBF
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762243864; cv=none; b=BWynjLRHm3vawEnF+IR6FEjmv55lxN/mWY8AAWnUfqd631HuoDklmHkmZOshN+W8MpAI1GvkZqGVDrmQEaYZdaI3OufERPXRv26OKP9ZTf33wVH6DY2pv59MEkExnyHap0TMx+v6jHTMt3Hi94QvjSWsvqo5R2fbMjZo5/l8Mqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762243864; c=relaxed/simple;
	bh=hY8QGaaBRDrmil3lFdEE6/N7Jlz3Z1TcLtB6hu4+oNA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EoHjSK2B+DzD2jo7w8ibi5cUo7YrgcLdct8tMZtuhuHZ0kMeeWWYDIw088DJRvAyGvUFyHGA/HX2nSERB02O21i4BbYPGEySTmVVL+Tq3X7oZEpNgBxrXCtxibFgbt7d1sCU0BCwni5sRLzs+14mWZAWArbs92uVb8osvfX4TIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ho83yw9o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hUoU408f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A43Br2c3845956
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 08:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=YlVpMTLZCIJT4QZ2eLCmWG
	pdnEz2lSRzRDI0TPUkxuI=; b=Ho83yw9oCl1hD8u3xtMx5DwtazU0uqEu+SLSlw
	lTE/aJ10NB/2k1mzV1jf1PjaSBZzLj4XVlRcB9geqDxWQIeikG+ke4hKamNwk+NO
	80ju+JhQ5hqQ7s6++wNlCkq6IQuUv1lGH2AS8vcwQfp9n+wEXHbx1mKomQnRAud+
	J/u3HC5VxhSYJRXDoQyUySp1gQfpVogJzMCqG7aHTqhKCGvHLbcJ9hH883Hs8w6Z
	pQCTf1qMluKDNnLcJid4C5xMOduKIeBhuC0ofcjLKC8zQ33DRX1ZOylHXezCaDhf
	mNFPGOG1Vm9LXrkGnipkOv45LhnrloreQ10zoARfzs71AdTg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70f1j6gs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 08:11:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290e4fade70so65290895ad.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 00:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762243861; x=1762848661; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YlVpMTLZCIJT4QZ2eLCmWGpdnEz2lSRzRDI0TPUkxuI=;
        b=hUoU408fpyI6zpArmKT76w/bwMfm7aTxNFWs55omyQ81JX87MLW96FE8y5YFZzFBTg
         o02/4S4Ablcgbk+/9Y3MLHvPqV8gePk+F2b9kI+D77ca071aZLzvTSoFeO9IuRXjRviS
         Yqa92mmOHE2Dxwraq8iTqerqW7nrjOgoq74qhSbtfByYZt0S/hxqbl58f4JN9uu0/dtP
         fdyifPKf4dnDptgQzExiB25nTqDJ64tL+5QbDD0y903GLEcvMGdUBvEbFDaPPdLiZiVO
         sa9D7uqDDOCFy4cmKmnhorVQtHfTmOimXmEebGoWpZs4QApgrJMb0WxJDOKit1HPVK68
         HMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762243861; x=1762848661;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YlVpMTLZCIJT4QZ2eLCmWGpdnEz2lSRzRDI0TPUkxuI=;
        b=c4aU+JPM/Eg/+reMHZ+kzvHHsiGuBpv/txN8XvFCljY6fyAhL/DvSQiKrTYk4/TeKy
         3RKNvnQhokXKhLByFlQNizm3Tg8p0c4JlN+TfAdKXpybZPHitS2QxWByZF3S6GJ0sw8i
         9nD2c3B9BIvRxHCSoL8YL318hjDU1OlZiZCtGNLyaahXrnXA//qeReIou9qvO9t0Vx/d
         4PyGtMcitZE0nfLsckow3FbwdNIC61wIVqO56RSuKOaIfIP5qLJzEEx0ikSstEvWp03+
         3shIA3e4CuXceVLAAcpZz+Y4diDS9EQ16mO5w0MpRZabOjXU2zJIWYeAxH5XE9d+xodY
         7utQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUAdCwYRyi3g2sErHOmbnGOvPeuz+WYRF4G4ckmTSSqo2XN1RXkPNQcxbvwzsnR2l73dfvq8SNGWzt@vger.kernel.org
X-Gm-Message-State: AOJu0YxucztBiSuBYH41YW+gVMYj46Q5cqB1z/kIYQBoYET2/T4M9J/P
	6chYWMGmVS0Mg/8OfPbKzA8efiadeCNxIJS63cMsVjPyus/qJ98nDKsZzQRbSkHVbFVZyPkaMpk
	UujU9lPbsIUXtwHx0xTz4zelxAZme6ZPJ3qmXYgrVvVdoalZMkwyLhngzDTFg/l7J
X-Gm-Gg: ASbGnctWcI8MVzXv6u7yOND9HBJQBfxhH6FXOFcHjyPx4k33yDxWboESYwnP7B/27wC
	iMxW+nUIhJZsgkaxytbZ1tsBnz9LDj8OG2z1qM1R9ClpViQTsb2HNCOI6gJNSQo2s4rWtATq//q
	F/pgjG7PYQdMdS3wejWDSXnynK1V5JbK5S/GUJsALw5ZZmDU6gDDb/n0BHUfRxWfDxkURHJ05O7
	T49F3u76e5EgTPkgnSjwDo1D75H2jB98Am4GMp03z6g8leeaw7dhJDEqAZextirde5QxsOxMrig
	v+cVtwJ4Ixvlk/eRkqcJ9JmDWCkuT3nN+k3ev9GOd/S7uXPcz6sT+HgeayYcv2QNI88zaqv/bav
	TD1R0pJpyRe4arz9lJsszk+xkbfxW9H0hS1w8lthNyH+8zae/gF3qZ4l8JkXtaQ==
X-Received: by 2002:a17:902:c409:b0:24b:1625:5fa5 with SMTP id d9443c01a7336-2951a3a63a8mr243445715ad.11.1762243860838;
        Tue, 04 Nov 2025 00:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVDe/NA67RNDYoNV6Fh/VpwhJBC1Qs5jI1D9PjxLgSztMXaR8aWzZLebyst8NkIBj3iMctIA==
X-Received: by 2002:a17:902:c409:b0:24b:1625:5fa5 with SMTP id d9443c01a7336-2951a3a63a8mr243445365ad.11.1762243860275;
        Tue, 04 Nov 2025 00:11:00 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a7afe3sm16755885ad.110.2025.11.04.00.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 00:10:59 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH 0/2] Enable ETR and CTCU device for hamoa
Date: Tue, 04 Nov 2025 16:10:16 +0800
Message-Id: <20251104-enable-etr-and-ctcu-for-hamoa-v1-0-af552cfb902c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOm0CWkC/x3MQQrCMBAF0KuUWTvQtAlYryIuxuTXDmgikypC6
 d0bXL7N26jCFJUu3UaGr1YtucGdOoqL5AdYUzMN/RCc6z0jy/0JxmosOXFc44fnYrzIqwiHFP0
 UJvjxDGrH2zDr7/9fb/t+ANTUJKxvAAAA
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762243854; l=845;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=hY8QGaaBRDrmil3lFdEE6/N7Jlz3Z1TcLtB6hu4+oNA=;
 b=F66Kby4OhsustC4D0QuoPkkC+iYUFKXQWqpvtHRuOU4XCeJS6LUgIAdOxn0HgFDxNvJPvK8nV
 qGc21kxe/kSCXT9vioMLZDhrIhez2X1ByoVb7qMZFZ9uy6GWNqxD597
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=JLQ2csKb c=1 sm=1 tr=0 ts=6909b515 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=EinoZS_c4zY4h5tRugQA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NiBTYWx0ZWRfX6xecTmTP85Iy
 LtuORSISEpnzlifrVuYvE3opvrWcC5XPXKE9692K27mbAVMI8+PG0eHnZWF+6lNugjtICRDhRdx
 XT8SA6WhRTvORdw9iIHRu77Vo7TvOnzXZM4zENi4EDwG6lg0s7kQOftxftniw5vtx1Q1/E+RYr7
 Rv/OBNgKHz0m5tJVMmYvpj0ca6SicEyWFmGRuzCVowizhyL93gKP/jR3JXQBgsxXXygiOVJtM9L
 w6Xm9vukijzNVOGI59yVf4vwLHorsglVUi0vd2St2vKgBxzXRRftNgqxtp4zllfcGH0SKxOo0u8
 cEU40uyVX4hrKkjPCUE7dlx47UOpT2gMLGvSZAXOJ6Bt0K8SuHis/7HZtaTScRlZXFUrS5AGHDD
 cguFVcd5Rzl821TWRxnAfIZ06HPXAw==
X-Proofpoint-ORIG-GUID: 0Emr4roz9fd3vVOYcBAnR_2Gnw5luAsD
X-Proofpoint-GUID: 0Emr4roz9fd3vVOYcBAnR_2Gnw5luAsD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040066

Enable support for ETR and CTCU devices on the Hamoa platform. The
newly added CTCU compatible will fallback to qcom,sa8775p-ctcu for device
probing.

Dependency of the binding path:
https://lore.kernel.org/all/20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com/

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Jie Gan (2):
      dt-binding: arm: add CTCU device for hamoa
      arm64: dts: qcom: hamoa: enable ETR and CTCU devices

 .../bindings/arm/qcom,coresight-ctcu.yaml          |   1 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 160 ++++++++++++++++++++-
 2 files changed, 160 insertions(+), 1 deletion(-)
---
base-commit: 23ece2b586cd740840b5b9359a767477435e94d0
change-id: 20251104-enable-etr-and-ctcu-for-hamoa-5dc4959e438e

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


