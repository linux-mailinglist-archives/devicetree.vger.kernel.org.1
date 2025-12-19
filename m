Return-Path: <devicetree+bounces-248317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9770CD1298
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 18:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 769773094B7B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501103385BE;
	Fri, 19 Dec 2025 17:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nbRJthbK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hkyTrakV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965452E3397
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766165483; cv=none; b=hYOdPwX6o17b2KkvvQ5bxeOxkP4EnpjHokgESAuB0C5uNvRBLK/8m0JBP8Yidgza7PlDDy457djkF/hOKGob+3Kn+8juIQWDXVyua+ZKxc5xNZWLbN8Z/dOpqus/HeliL0zlArX2TTPvXSN/7PjctHVWy49T8Tq37fjFn553SW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766165483; c=relaxed/simple;
	bh=5ZYhRufQUBS4EeEPB7KUS79ALnNyJR5mxc19Tb4SQHs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gjznt+NnwIVJinSspgvDCcZFFIdqq95a5uJFBHwTMr3kQgmdZaqw2QNTircz6SSObCzbGlX2Cw9RzfhFaVhDP2sBYxbdJbcoBUwPg+YMto6++O+nciRd9QfMx0t9mx5maHP5BjBl2rv0D1RlxOLXHwiCp9s1rf8zR/BEkcVfd9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nbRJthbK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hkyTrakV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjtSF810160
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iLH/xGXJYE4dm1dXzU/3wtyAAdQ6aQMf9Th
	AQsy6JaU=; b=nbRJthbKf17XYKWVMbTOx/S15cxdmHSyfAer8Iy45TR/7bFo7+L
	m1WZh9BFaKfzd6qV8dPej9VNYrolxnG+jsdA+58Yt8T/n3oQycmLXMygKldtxLrU
	4d9l0D6kxC1VxmyAPw+jFWoaN8Mz5DpWuplo0HmFEf+nR0EGNZKUfrNpAe7gNA40
	N08PmdhWSJCFj2Hn4DdMGRTaY98ndsI0CP6giWk9DX2t5IOkPP5YtYc+UxHr07yd
	yf96juT5lL7Pv1c4GtLz22TwkZ42/2b7IDY1p4NdUtq5ETyhp827Xg1xHaQi2DUb
	vUuhysCL8FILFeFZQ7bc21cUI6PDRkxfopg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2cbhjb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29efd658fadso65618245ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165479; x=1766770279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iLH/xGXJYE4dm1dXzU/3wtyAAdQ6aQMf9ThAQsy6JaU=;
        b=hkyTrakVm6WtPo7irHU9Bt326mzSXpb3KP9GnRXrtciUuxEoQjYdXhHvhs1IJzBbQ1
         rcLBft1piWURV0QNWvEkaRpz5wc1Xjdy91WXVWx6Ix6tc45ge/kGIrpCzdR1vYL1LJE2
         kJE7jGrWFpy3yoK35XEZVtQL062KSdHULrF8RL3TnbPW5IkaUAmuRn7lTXjqcFr0ZSYU
         niIoV5KWaZ5ccWeFmMMFOG0X9P42lb19IXhuWK0yDlCxoX4MlgnhTK2738sfye567xnj
         bHGidMdXaV7CDFWEpfwkeyoSUMgWK7jPcv1XFPR9K9qnRbQpo1zDE5Gr9vezCUqFl9nI
         md8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165479; x=1766770279;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLH/xGXJYE4dm1dXzU/3wtyAAdQ6aQMf9ThAQsy6JaU=;
        b=Lz0CfMUlzQQe45UQ4KJWlJ9JfF2AyjIhKt6iyQmOHHq6Lv6JUYLow6cfnvmDh2jjPV
         Dxt/EpTgT/O0HgC3VUTuL6LNMcDk6i8SF75nAhiXLLXOKHbdLW/tUtVvlsVF6Qyez1PH
         aFXYYA4Hc95DQih+cujiylgZs3KIt4Jj+M6ICxyckQrfdWwSg758d1p5PaZXEr+HLuvm
         Fj/MF4ExBcvFY0WC16rVdLVQ9DXts3CuDJkxQ0wAQY89+BKz0nHElCmkgC4YfjWduF6s
         NpdI+nitPJtW+jhPtzh0TEGICExkNc8SJmPFUYTTVGWJADkG8xXj0GGOKGFL9Xp149Lg
         JN4A==
X-Forwarded-Encrypted: i=1; AJvYcCXjtJpqqLlpKITx1WnEihQ7Re3UpXz+fg+zhhWRfDnUAOTy1AXmdadyLB0sqbvmaHISbCfTXVmxoah0@vger.kernel.org
X-Gm-Message-State: AOJu0YxGcVJqX8Scopppr8QwsxBgKtHSnw1s4BeKGyZTG8DPfJj37ULq
	1nwff6rIwdK/K3dtD8u0OKIVj/yopiIa0jYOTdqJMQPpVP7BX0HDyZn7HBrOE2IwDZoaj5sAeOJ
	VGfiTbfoSTyDB+DyU2523fFIeqqofjyYzx45GqOec1/c6I0kD6R0lIJOUBZ4H4ZZq
X-Gm-Gg: AY/fxX75cxFRv/eJ+BVHeJmMj4s6uTSKPBExOtPjmqNLID0jjGQPE+OJmVboDItr7ut
	9uEBL9DmtFC5TGDFKjbuYil/DDehQY8SRobzaX4wzgVKaFzEWq62crmKRKiwZ5ezI0vokFDd09k
	st5DhNw0iQ2aSxXORGHotsiG7CMzz2S1mXtMEP7d5kdnmPXAB8Ojepd8JajAzSyzrW38o5ECMwO
	7kTxJtXFvexhGRQFqW1X/UOMrTJ0YU/w9YOOAT9fBpVvqrZAHbCgG1Ta9QJJnJOVJPjzGEsHEWc
	VsoBvvwM9ZmnF5Xm0ufIyfbzWCSPAbbe0pj8Sn1IMUMHO0FeYegmhOMis9ZMtPMFLHpIQmgb8He
	Ji4H2nPzay8cJAAxB39zhZIhWP2sgvowfwKMaZDKK3twTpAQ=
X-Received: by 2002:a17:903:1a68:b0:297:c0f0:42b3 with SMTP id d9443c01a7336-2a2f24228eemr35203895ad.25.1766165478980;
        Fri, 19 Dec 2025 09:31:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdnWXBjQ3S6HbkA5gNaY2q/0KnJV7Rbq57BCYvX238UsSrNgsmFJk7o/zFtVRutMEF5dWHaw==
X-Received: by 2002:a17:903:1a68:b0:297:c0f0:42b3 with SMTP id d9443c01a7336-2a2f24228eemr35203605ad.25.1766165478454;
        Fri, 19 Dec 2025 09:31:18 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:17 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Add eusb2 repeater squelch detect parameter override
Date: Fri, 19 Dec 2025 23:01:05 +0530
Message-Id: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cpSWUl4i c=1 sm=1 tr=0 ts=69458be7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Jj6nKQW2Xfz6pTaCyaAA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfXxBpO8jQXibDg
 7izvjadrgXxZmdFEGfyae/Qx1V/LjJoEZ7tL5Ij9XDdWko9C4LmjGmPijbVI+B5VVq6pllTIh62
 DZ+De37jan0PicgwGZb+cYKxp0esMVwvaSSisJQIRkSKfEmiwnqKJ/o/v/TVPIbx2yDXY3rUYfW
 tkw2FsS6/eQZ62gtt9s015ZO7l9thLa72AMadlx/f/TSCXnXz+D4G7Sg409Kt6O2q9yBZnBCRx1
 w5o2wdKbm+e3DGq9SWojD2ezFbLPC/KoLa4ndGMUYAYK45T4KisX3FHDHPtgttjNR4GSbON9XTa
 /o+bIfVzsMZiLy8mKCwJJ0j3ym0u5LliaFNKGs5fZs50uCNOc6cn0BENxiSvtU11BXFtYJ4i3WW
 YzUxil7SbJlkrUEiOqmisAyh3wseidN22hsB1enTg+zp15L6Y50PGha3ExrNOJe/Njsr+Us2n/4
 sn9Y/dW0VwNXKfkV1jg==
X-Proofpoint-GUID: kghGPf8Gt4bIw4YQ_ZybhL8RfZQd3abK
X-Proofpoint-ORIG-GUID: kghGPf8Gt4bIw4YQ_ZybhL8RfZQd3abK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146

Add support for eusb2 repeater squelch detect parameter override via DT.

Squelch detect parameter adjusts the voltage level for the threshold used
to detect valid high-speed data.

Changes in v3:
- Moved status property to end of repeater node.
- Updated commit text as per comments received in bindings patch.
- Retained Krzysztof and Abel RB tags (since its upating commit text adding
  information in bindings code and moving status property in dt code)

Link to v2:
https://lore.kernel.org/all/20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Modified logic to write to squelch related register in driver code
- Added multipleOf property in bindings to reflect values can be multiple
  of 1000.

Link to v1:
https://lore.kernel.org/all/20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (3):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
  phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param
    update
  arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters

 .../phy/qcom,snps-eusb2-repeater.yaml         |  8 +++++++
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       |  6 ++++-
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 3 files changed, 35 insertions(+), 1 deletion(-)

-- 
2.34.1


