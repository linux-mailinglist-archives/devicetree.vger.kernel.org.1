Return-Path: <devicetree+bounces-234580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B30EC2F12A
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEFD93A24F1
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCC226F295;
	Tue,  4 Nov 2025 03:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hgox6UKv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M9y9w5OJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F3226C3B0
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225701; cv=none; b=aNUEGU9JU4n08mzAn6CBtGa3AnosvyUGTItyzREMn9XrsYO7atUxK8/NMOxURvm3RCS7flfrkhoSdDtRPsup1XELij6cA0ZcYGUpGm79FTicvm65FIkIu4rR2YOSi3kL3mhjJSU6ws6Y60yvLXS+AGqeLcsj7/IhXi3AVLinrs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225701; c=relaxed/simple;
	bh=a1Tilr0P83WI7yzkN8cDPjsIRf8z31cBdrQD5U+XBoo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=K0XVwY6jP+CD/OD5k7lhkVcY8Y0l9hfEzo3hNotfjBMepOGkSKQChMVe9bpmjOWyDA9PVojnM1gicSI6QnmigON1gS2iZll+sDVX846ySOka3As6FqKZzjpYo5c5vcIgNrwvqfP7kT9bs/5+yTQQf5HxOdYtO1MyMaflTfzuHI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hgox6UKv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M9y9w5OJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A42fwq13682791
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vqo3axmtYai2epioe5STd9
	sXidmtUtS5fufJX0MIH5I=; b=hgox6UKv/PG5c/rTeXtHJ/cJ5/dtFSlCjwZXS0
	1ew/AFiheVx0hdHDCo9EHdGwiQ/SkjLeuVyq+1mvflEtb5gKg9W63be8wV99GzD0
	UNKglHxeYhzXulsUdImBBKzfvw5katWN4/7d2HJnCVjNe/ns8dEhaeU9WtYHZW6l
	u9uKqWXyTwtrkr2f/Sa6Ye2why0hy/u2hiYdcIehs8qPYNOM3BCwlVagsa/aPOJP
	Uw9kzxJOumvWW20dB/buxH5qqU1aRnlijEwwjs0vh49BV4Oe2IAdnV3/Gky/juad
	S1h1hJzLKHXBq1XvYQNuKIqsm+GSGjRxXlbdIyAC8ROrjEog==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6xjqsvpc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:08:18 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-294ecd3fdd4so58495275ad.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225697; x=1762830497; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vqo3axmtYai2epioe5STd9sXidmtUtS5fufJX0MIH5I=;
        b=M9y9w5OJxLFEO2iHHEJ2qT234BUa90Kdsu1H+OKh/RKkuusWNu1ZZlsPkrAU3vBYZJ
         oR47xg3EcEVoySlfnDqEW04dx5Tefz+Gv7QqLSN+B9ik10vVq/ZQ7OrMRnUeNAr/lZiC
         BYKisBzqAeDh0S6MerUzk6KXGTPX4bzBnMylWGVjdy8Z3aAkk3pQbvnuJ3Hz2FXTVNRt
         m37sHxC5UuVmiU3w3cTHK8NHNXB/+wx/PFkEKrEwz1CouGnIIB1BP+hpMW6lJDO8r73e
         s5ap1XjjKJ2c41d5Hwnml8VhzZ6so3j4PpX9y4y6eEpWSGBySPepEwNaESa/olNU9okQ
         yewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225697; x=1762830497;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vqo3axmtYai2epioe5STd9sXidmtUtS5fufJX0MIH5I=;
        b=AIX0Rf0g48zl+f2dx7IpGPVf0vDUJsJvqnAT1n1w40LBF3YcNxqg/s34I9vSUBG434
         sRve3loKvjO9OjDP1sP9eSro8hTyIKK6hHwv5bItcCcBzBlNVhccs0D+qkekyJ3XmK7M
         kA5n3YsOEE8QEB8CIAjOhPOREUcTwPsUmn7G1AUnhAMEqf2LAy/fqfBmPWfTvRWVSqqd
         uEK5pMynBhmzMtGvon9Sos5fxaRIB3hXrzVITP20SSOGpI5AEBr9sV35e7fQ9AhrCDJf
         wYbYAY1ZZpKZFOoHNCO9RnBBsW67EE7GBP9sFFgQxGHjgaTmt7n/iU6cQGmZZ0f1gicD
         cB4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWlRSuZ0LPGiHHOnF+kQDXRvbHK8mnLJbACyZjm1lBoNVik5ZTXTclQLlFtr6PStxhGaoJUa3Th2HA+@vger.kernel.org
X-Gm-Message-State: AOJu0Yztiv4pcsByuBU9LN9GDf7Z+cpGF7+AkHZxPnrhCW7tGrL/5csa
	ilODGRy2u7gnpKnVSgitx9tiBeLyXESo89FgCZKlOBzaqVNVGheBd8KZU+GR7ypXvo3DT7CtAMh
	U26f4Anbgw3mRXXTI7bL1aFi4GEU4hoR3wOBlRfB3jovl1i5p8xHA6FWMPhNHQ+td
X-Gm-Gg: ASbGnct8yqCjU/g9wJBKovYXZlbzCxu98HwChaUsF4smp0wI2uDszOZ3XZiyN3wgpuc
	qkeBycRbkLD663BVlXZhNQUTJcd0GkwkDrvIcbrLcI3pRV4MG2kBnysbUxJAn+M8d/F3Jp6ek7A
	4EuykNx9g1oQOk6DpgsWYUDDCgMTNO7Hi0fSlUhICUgBUt0E8GjUjwDmsBCiMxvDfa64ef9xQkK
	1F8mjpIYJV3BHwL90V0mcWpHusgvVgoWjWcV8PowcbBZylZWWypNdBbxE/V32/RNg0bzsy8lZ5G
	yAUHP8l6/2qnYts0k419M6nBvXCxWoWuqqPEC6VyGoNrtIzoT2DKwtgV+ItxuQtDc6xC8pZK3jK
	nynLrmystL34gEsCmUN5wvwAi3dRoKADi1650InGNjtTSvQ==
X-Received: by 2002:a17:902:da89:b0:295:5945:2920 with SMTP id d9443c01a7336-29559452ee2mr129451765ad.34.1762225697080;
        Mon, 03 Nov 2025 19:08:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHApLBf34Rsq9YgCVoLCQNNS4Uf5GmQUiEe6iL/8vGo6I+Pp9mPduYICD6kaKgk8EqGlCt0A==
X-Received: by 2002:a17:902:da89:b0:295:5945:2920 with SMTP id d9443c01a7336-29559452ee2mr129451165ad.34.1762225696495;
        Mon, 03 Nov 2025 19:08:16 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:16 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v3 0/5] Add PCIe support for Kaanapali
Date: Mon, 03 Nov 2025 19:08:12 -0800
Message-Id: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABxuCWkC/x3MSwqAMAwA0auUrA1U66d4FXERNWpQamlBFPHuF
 pdvMfNA5CAcoVUPBD4lyuESTKZgXMktjDIlQ6GLKs+1wY3Ikadd0I/C6Ncb64ZspYeZjS0hhT7
 wLNc/7fr3/QDIfx7/ZAAAAA==
X-Change-ID: 20251103-kaanapali-pcie-phy-67a850bfe384
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=1637;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=a1Tilr0P83WI7yzkN8cDPjsIRf8z31cBdrQD5U+XBoo=;
 b=0AXPVa9ISGQPMd5VsQ9UGmClrvg/EEmfE7kqap9r5buflV/VE1Ac4rLFpexktAWmp/SIzHBrr
 I8wRt1IxVMEAbDncM9icOsBalp3kdU22hmHhd6jNQ+NMMjmlCinazMV
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: bnFRzY3leHCOxNXBv2oQ5hnIgrwWxJYX
X-Proofpoint-ORIG-GUID: bnFRzY3leHCOxNXBv2oQ5hnIgrwWxJYX
X-Authority-Analysis: v=2.4 cv=criWUl4i c=1 sm=1 tr=0 ts=69096e22 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=gau1cqUgYdTfV32JTLsA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX6h7GTZsxruRd
 Babx6jQLtZM88Zdydw22lakYPgjaRpQdTC3xbgRCHT3AeYwZ/zBbijaSSLk5/QJHQ2RTm9sJ9Lx
 2oyPAVaNFKkdaQ6j2d3eG2JW9mbSXEIqe+MaywJG2PGwxu3KbyNSHqR/3qmWvT9cXCOkFmNWird
 lg6GZfi9uFWGlNEpx3x5ZsC45LfpklNRWT70xAF0Z84hKUfaCbMxtTRjXEt3JDVqoTm8xEbKdBr
 EkO4zdELIauKnA5EhHqyqFEg9cpMEFagzH+W1SeYHuHxAlqTu9Ht8gz2hXP9VCsVWx+M3Vb71AZ
 jBFlhN6E6+L29MFUaWMVEZ6yhF4KESxaPcvBWMk7Pvkr+vInq5DbS5V6TPASvElKuNBgW7QxJcx
 mZ/WwZzWqw+KvcRQZlL/UiqrvCnsXg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040024

Describe PCIe PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Changes in v3:
- Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
- Add reviewed-by tag
- Remove [PATCH v2 1/6] since it was applied
- Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/

Changes in v2:
- Rewrite commit msg for PATCH[3/6]
- Keep keep pcs-pcie reigster definitions sorted.
- Add Reviewed-by tag.
- Keep qmp_pcie_of_match_table sorted.
- Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 5 files changed, 313 insertions(+)
---
base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
change-id: 20251103-kaanapali-pcie-phy-67a850bfe384

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


