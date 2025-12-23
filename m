Return-Path: <devicetree+bounces-249190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBAECD9C49
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA6C03025DC2
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D0F2BE7DF;
	Tue, 23 Dec 2025 15:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VpKAWGOd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TzfjbeYe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886F32C159A
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503506; cv=none; b=EoXmyxOTUdihQ+fiECzK/gk1QMwK4Mo9pw3zlu1Te/GSjqswnua/lXV4Brs0gn7XsZAzuidMzqaNSzjqFeVcfJqmGtH0+XimYmmxEvV0GFuYx1qSV3Q2RW+fQT8wNrMXkZAaXIFaS8ezBi4U4Vs6tsTpeliTudQZojE3J6RMuKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503506; c=relaxed/simple;
	bh=CyHasZARUIToKekzo5W8gitTyhricg3uALdaqRbAcsc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dosWu9LyMfiuPKSHJFxBdJSx0F07GU+7vS1lEzdmmGo1mGJrU93ziKYEjbt0IHZGgxuJpb93B7lLxQvi+M6rDRD4w/WCi/vpOPzmAqg49osz9UquT/K5/t1I/5xiWdIUiV/Hx/eXPjGz9kjVOOwGaNzvQqDmUpbvHhCYmbWtBxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VpKAWGOd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TzfjbeYe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNBR9aU700446
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VQSUi2Jm38REn0xTQtn1Eg7DRDwoW/Og9h2
	i11+VtuI=; b=VpKAWGOdOzj9Y4SQOLv7jiOyo2QXaMXwzG0dr02Tx8snY/JURZJ
	tUZ019d8Rd9/BtA4fU4BbSNB1ufM33XplpmPxnSlB+foFevXc877VeyysgYolCqC
	PUjLyr7xpOE1AX9dkf5ryI+5TWr7ikROkbggg9kU0VXfrwmfivIkx730Varqo7uG
	Av+aE2XiqMkv5g5F7TFJ4GB5j8fOyRhcgIP34Z+IX8iZ3JqKFMREtehGzKrSZIr5
	vmKp70LNPnO21cdCfubEm+DE5jy4o9LGDq8YsVFnAO7/xoxUsJnnbNBd4v95/aXD
	z5duHio0ef0hT7dKJDo09UGHXkfCGb0iaHg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jrmuf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1dea13d34so115743681cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503502; x=1767108302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VQSUi2Jm38REn0xTQtn1Eg7DRDwoW/Og9h2i11+VtuI=;
        b=TzfjbeYeDs2DKKLh7rlh7nfzBaN1x2KD5q6IFMtiWMljTG0ltkWe+87y1C09OT11fl
         ewCqT3nw0or7RaNtYRXmuSSAV+45mTczZQCmpxdY4LwY2M/Nr3WFFd8Y4IBr3Md4N4sH
         1Hp1bYgsj48TjYm71heNbsOLVn2kigxPkfEuOAgtJjHBGiIi1RtyTDUl3geb8cWeKDf8
         tj5cHq2XA6ZxTWcfH87s7eyErFdjCMiKq5ryMakZo9I+ngeHzAX4dpNcppmB+NfbL+tg
         eHwx1ia6FvQo8w9AbVdb7TSxVTOptW1mVGpj854lSbJVF/yQCI/erfUJL1RAjUQt21Pt
         /1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503502; x=1767108302;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQSUi2Jm38REn0xTQtn1Eg7DRDwoW/Og9h2i11+VtuI=;
        b=E2bzfuVreKmDmLZmWu9BNge2pryVRDOF/97ABGG+JE2b2JKsQO+Vxqf9uqc6lddqHl
         T0l4CtQmZ84fYaFwlbVhuH5qWSAxvYtnfVvMafFbp978Q+Ah8w6dUjgE4jRXrhmaoyRa
         EdBndO361fNMUSfunTV5vQ65VT6Zkqumofy/Se3aZRCz0HfYMBt5PJauyVSlFtspSN6A
         BUxBK9B02scKsE8szJpCZH3KuMZbmFZsyN03bFqLy0XfzoA2TZozU3N7apT86+VqOt5q
         G1ozWUVxNQ5++bwpx6eO9dYVxshCFb8RpclBHGmWEyFhirc2SH5/yEb3CesQsgG1mBGD
         AXmg==
X-Forwarded-Encrypted: i=1; AJvYcCV4S1WatwYEp9UKb0XIKm6HfwvHdNCHG0BHp/mPToOOSy+hML1VvkUm5Ucl+MA0NXwQsGUFlqA2yWrH@vger.kernel.org
X-Gm-Message-State: AOJu0YzZsRq93qRnevdcMuJ3eSMXPkkeuYoGyuNJdp56HP70W5GWtJn5
	ZqG3HU5BN7UNR76Ihm8Eojup3NUshyRLGwLssV3Cfb0pddgK3rXoPyMzlV9ztf4se4Mfzhw3Fxq
	Z3F5UcPiuH+SnLBQ3v8rL2moGW/xFihf/d1+mV1YFR14Q6zeV27Au5LWUqwWENK83
X-Gm-Gg: AY/fxX4PI0XVdGc4thlQGTKlpTvXvm3fs1i/ZQLJhXzfEL802Wc1PLfR/AUnIgJDzB2
	C0B57s22jNQHsH7yW/7hR1USb+tKu08x1eEu9UFhWGRFx4HIeW9JgIjPqVwVGoINV3wdjhS1kqp
	v6gZZfBOuz/tKF0wJCQnM430tfYrXKz31aLd3VEXx0caU7sbzPqePQP5u4OXY5cwmbtWY4+JpKM
	APcckcUBxKTyu1auHMOcdI1JQuybeskM58PK325w12XHIyfly+Myn8Vkx8waObe9CO8eyngXzOp
	+RUYH7675Uy2Z74Ja9qJLBRPJNyX0hbtJ0GP/L6dyBdeh0yqhuHRYT8uWzImOe5MMssTYPur97j
	zrmh87+4aTRzY15Fo0TUpUYY0d1dkpgTsIPP3dFhEmaKCRMwOexCXmorWMhpao2J9aHU=
X-Received: by 2002:ac8:5a8a:0:b0:4ed:b978:91db with SMTP id d75a77b69052e-4f4abdc92bcmr209398411cf.77.1766503502411;
        Tue, 23 Dec 2025 07:25:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcPT+gD5SXBdZvwjAGfOntj6UCaTZ6nE4IqmJl/QiDaN67WkF7y93HBGv6jAUXHTvTrCCOXA==
X-Received: by 2002:ac8:5a8a:0:b0:4ed:b978:91db with SMTP id d75a77b69052e-4f4abdc92bcmr209397881cf.77.1766503501865;
        Tue, 23 Dec 2025 07:25:01 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f51144sm1465699166b.69.2025.12.23.07.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: arm: Use hyphen in node names
Date: Tue, 23 Dec 2025 16:24:58 +0100
Message-ID: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1550; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=CyHasZARUIToKekzo5W8gitTyhricg3uALdaqRbAcsc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrRJsi9feer7Yl/XFUSKS9pSWGt6OOPFsHfuT
 7b1bsvOUrqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0SQAKCRDBN2bmhouD
 11+aEACItNCFLGMNtTxcwpZOojdtp+T02GGzIOKFhNJLRNDCNqj5F3KBftC970QzVyOOdlvSWgP
 lGgjXlZ9zNzwuGhKydHfKFAfWklXRNVEm2q+R5LYKI8x5mFIHOqmWwDbYN/uzCv/npYJaInfSIh
 Q7EId+Uso8T41HPVnuattK+VeTS8HZoIGpu1XFqWkMJf+7aRv0Omh5P+bqOjrS9nEYHsJg11RMt
 WcPbC1ce1iDVCJikEiKoUktb7fkYi6hjYRvZDVGLW1aBFsHWPcL4KIOLbkzscAiYauqssog4t0l
 zEgsy3+sRzRF27YQynMvi8PSjGc1s8bwpLNk/h2ajZLqrw8Q8ePddIEBNNyrBo+t88IabSE6zo2
 fnT1z3NNGhcJ1BKvk5r46jboxvAULv2SUq8A/iLIv5fFuPHJXFfemembmxei3tnxyRpibVdN4rz
 77GLohVmrTFV1ULEtVuyOl4H0/8NguyV4P8c2cSVr1UcsQ3AJIWdMrsJtfP7FMhXNm/HRrHp7GT
 cqYU3kDTgb/r9EmxTk8shGoE4nsPwoYzq9yWP9PjOQ9FARjIWA3FwRELjX6JTNIxIJgF7NKdijx
 7c8/Nl2gjVe05oZh3AoCGtNCh8d05AKQlATw8bfaoJH87cJZGjJoTCn+ZmM3Yj5OddbS1sU5eb4 cn082R3eNog6PdQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfXxH7blkcLukEB
 G2QfkKgofqd1MW9a30iAZj8cFf8zV4PikjLQt88kjJ8DPdMyKqRcVZWg+lQoH5Y5AUKsPm1kTJF
 GLFKw3lXtNdtbLRTbx0iyD3zYTylzJvANAAmPU1H4YIfFGkh5+oZK385bCwp4Rhi95J+ZZRSptz
 b8PAEzkoKdNmazJBV4Q5QTflUZx8Q/gQiifU4s1N4Y7Bqnp3KVCqlcnSuPyZqsKv/3lACeppxu2
 MxKVw1j6ONzR9k/FhgcMADabbvJGad1++9h0Vzvo8X10DOTd3+dK/oKD3uLnpdt4BhqBX6LN7cx
 cGHMKI310qiF+mVVVvUMCfLxn2I9psGtIlDbQjaNoDWgOHVTGHyBBpzbdQHtMXvfJQUiD7zDL0V
 Wfql2knnFbC+sVdl/O09pWSB1vBQdozeGQWJ7JjDPxt7aYbIkoktOoA55oOe53Euuc+VfqW6tdi
 eeYoIA+3Eju4r37TqFg==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694ab44f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZcZdOxe6BgGqELRYw9UA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: ZoilLna4u7dj_YMVBL_o_Sxizt3JVjXd
X-Proofpoint-ORIG-GUID: ZoilLna4u7dj_YMVBL_o_Sxizt3JVjXd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

DTS coding style prefers hyphens instead of underscores in the node
names.  Change should be safe, because node names are not considered an
ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/arm/morello-fvp.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/morello-fvp.dts b/arch/arm64/boot/dts/arm/morello-fvp.dts
index 2072c0b72325..4a3f217555f7 100644
--- a/arch/arm64/boot/dts/arm/morello-fvp.dts
+++ b/arch/arm64/boot/dts/arm/morello-fvp.dts
@@ -25,25 +25,25 @@ bp_refclock24mhz: clock-24000000 {
 		clock-output-names = "bp:clock24mhz";
 	};
 
-	block_0: virtio_block@1c170000 {
+	block_0: virtio-block@1c170000 {
 		compatible = "virtio,mmio";
 		reg = <0x0 0x1c170000 0x0 0x200>;
 		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	net_0: virtio_net@1c180000 {
+	net_0: virtio-net@1c180000 {
 		compatible = "virtio,mmio";
 		reg = <0x0 0x1c180000 0x0 0x200>;
 		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	rng_0: virtio_rng@1c190000 {
+	rng_0: virtio-rng@1c190000 {
 		compatible = "virtio,mmio";
 		reg = <0x0 0x1c190000 0x0 0x200>;
 		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	p9_0: virtio_p9@1c1a0000 {
+	p9_0: virtio-p9@1c1a0000 {
 		compatible = "virtio,mmio";
 		reg = <0x0 0x1c1a0000 0x0 0x200>;
 		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.51.0


