Return-Path: <devicetree+bounces-251733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F33FCF6344
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 02:12:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B5148300FD7D
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 01:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D2527FB26;
	Tue,  6 Jan 2026 01:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fCx6c0/g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D/UWDJzo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BD0287247
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 01:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767661303; cv=none; b=c0pb8wgUh4BCLJuColk9ATFYTBu4quU0RLINGXi0g29KukGhAckW5HIVHSTmRelwXwKcIcZEL4ra4RQ4nDp67rS0EChhJpdbOjMR766MFT10jKT2onq4++NDQGWZxwnOxONj3SqwsqY6v04EewYJkb+XKK2o7GBVqo8wpQ9GBUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767661303; c=relaxed/simple;
	bh=R5YT6nb9PgApzpeufYf7gthWk070NxoF+HtPuCCK/hI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZFZiEqF662Ja7+mQSYHNKRfiprS0Ld/bZ9mbXqYRPKFWXChr47Amwg7qXDZM2eYiljSnRgs26oeA6NBx666jjkX4H/NXC0bWOgiFYci6OmFN2GvHp/msIs35O2Jd3Qg5ZEAe7nzHDkGTU3SkCauLThCFN9eGrkRqdBuLMBL/3LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fCx6c0/g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D/UWDJzo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6060nFlT2745421
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 01:01:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5tsd5DKtNLlMZcvaCZDHlRAYCf+3uNDXyfWJlLEmAqA=; b=fCx6c0/g2WBsHU9D
	9p6IP81MxY9kSvJgZnSqN9cy5nJzlR8KohzvSq5yFpUHfOPsPdocZEN+Oq7UotJZ
	d67UGBQA1NUlfJYPn1lm3WPExfnIPhVYUYnQq/zpvuHz8R4Cafpq2mox16x2Xyft
	ClIvP+jK9WjHWlNbZgOKNlUFmRXk88HD6DSt3uWnGB4z8JzpMXiXss/cqyIt/jx8
	8R6WDHPGrWur5thjXdZ+K8orUUdpynkwQ1Ixsh846aeLpGuJ+Mb3MC+H2SOFw5L2
	r1tIQKwOpz8vB4OWfDNJbw/kcUXoqXdk3rCfYflveOQMZXU4Kep5ACnjPyn+XmTX
	P4SIvA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgg9yscgp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:01:40 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9426773a207so1389373241.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767661299; x=1768266099; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5tsd5DKtNLlMZcvaCZDHlRAYCf+3uNDXyfWJlLEmAqA=;
        b=D/UWDJzo6zQrAjdkGIxkO3SVEdVYyGF259k0oQyfBdYcssV7JOYOai7ebEMPnNRLKn
         SoWwf7jrAD3JaS7pR1Mjd0/73uh+YELAjbH3bDVFMismyBYGayoPqob86xc9QoysI26r
         rr+Ab3lT6qLAoMNWtXBtQ/1GG6M7OH1lw6AE0Yq0nqeMzylrAIBWkWQquXmAs6I+3jNW
         9WMX7onsp3Fi2GymO6zGLISP8QdINbzOS42zSwEo4STi1aHlcXsqwy15LqgpyO7My+fk
         eI6coYnnyje8aAIHbDJ5Xd+tzUrBD9iTGAByYuVTCUeMv47ufc37yJL+iGpRlP/kms5S
         RXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767661299; x=1768266099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5tsd5DKtNLlMZcvaCZDHlRAYCf+3uNDXyfWJlLEmAqA=;
        b=XBBnXxXZS448Ln44Spr5YmJ7tzd/CfC8Og52vWtZmGsuh14+OlydW46K6QXBr3mlAA
         lIRCSSzd4RB3qR6UkTcCIDOQMuUfytZzKdPqI0L1yFfYAqz8iyma4XsQj4bjR32Mb9V6
         CdQ/7Om1dzSMCFrh9Pzr241bxroKYHrxZEwhOLzvnYONje0ZjfD8XYOzPit/0Ai9wBdk
         13W8ds/h1I5OqAmbYmp0jpqEzw8xto8ZS8d3Ta/vXFrD3Rfw3FIGpqvOWkn5hQeeWbNq
         5dSo51482p+INuaYSLirwdKUewaVowOf/NGXK8ZMsajUJcnW1Hjmrsh845JKuYcNk8BF
         YLHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXi6Pjm5bpRj8DZSRjJ+kUbpBJuYfOe+GgXQYtZaSvqFJZM5DzRt7ckfC3I8H53oZy8aSLcGddlxK37@vger.kernel.org
X-Gm-Message-State: AOJu0YzZYUPg46hOcjvyG4GcmwUxKDytxOCQsgSuUXiPlBH4TQzd+/KR
	5YjrA6pCdp2Nsl2QEEpEzwxP9+yD9Xwhsx5QOM91ouum8goGfDXLPCGGavZWiu4QDvYLlcLIyG4
	nKXd87lM8UtOXJ5kISRbaLtNK0uh+gxDrUG3Cpt4VI4qpaDASG9W+LYVDMCPBMeVv
X-Gm-Gg: AY/fxX4NlMT+gLX3CnoxnqluNx9bGBqzbaEkIvtJ0Pxlao3WAxtr1NZqyKVjVehhYmm
	krZKdoy1G/4tGmmZ7o+mUOg05pGf0OlU2OUWQkBIiWWbuGE+JwkFYjNVJvRY0SIMhlXPwdU7Php
	fJdCfLDDMm3Rt4BaBpBcEBHDtQ1AHdPKxhLoytOg28v/Amor/cbcNQbtCLX3t0FNX8tI+xirVUl
	MTIG9laXA8j/9eBoohM5MgNxQK1cQUNe2KcS5pVs/isg+L9y5BO56B8rxiei6czwG3aigoSxApY
	fsp/z3AHsmqRPOG5lyDdvTfGSBRdfx/iG9/N2iXj8mPcXQ23FkpL5WHk25E7MlmzTg2xDpds9r6
	MoW3tYIO66G8RcyGTehHruvuXZI3U9EoZQC4BB1/xNd31JiAqjFtf+o4s03vwn8KTg1rAhud7/5
	8B0gB145u/ciQTXtRSx7LBVUg=
X-Received: by 2002:a05:6102:448d:b0:5db:d2b7:9511 with SMTP id ada2fe7eead31-5ec74574d2dmr443407137.40.1767661299563;
        Mon, 05 Jan 2026 17:01:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIchMWx6h9LQgm2INjt7jZLpa0baSCgZJT92LF35vomyPAvbZ7Z2gmXZvJx10AwyD/MmXxzw==
X-Received: by 2002:a05:6102:448d:b0:5db:d2b7:9511 with SMTP id ada2fe7eead31-5ec74574d2dmr443361137.40.1767661297733;
        Mon, 05 Jan 2026 17:01:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea8b1sm181082e87.6.2026.01.05.17.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 17:01:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 03:01:19 +0200
Subject: [PATCH v2 09/14] arm64: dts: qcom: sm8150: add uart13
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-wcn3990-pwrctl-v2-9-0386204328be@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
In-Reply-To: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=971;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=R5YT6nb9PgApzpeufYf7gthWk070NxoF+HtPuCCK/hI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXF7ZeuJ4H5kQTiKN0SZPAWoEkpvXEwqkfstAM
 oFfkcFhRy+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVxe2QAKCRCLPIo+Aiko
 1YNJB/91Nexwnv0JCxYQ3fcm0Z58dhtpTmhbVp0CaGAKg7i8jIX1Id9ZsqWTms+2sxzJTQIH4QS
 N4J1ZnxBkCFvfGrdqPu7j1ZDCg+CDX8nTrhqbE2z9s9XMR76wucz66SU2ATTHyWLWQYds/CXlBS
 +UaRxS2wXRfA6g7p6JPFctX4oSTLZlzIWsSBBsghkm+83cuPqUfDsJNR4QVwakCDavScMOrhzei
 fVb+vuo1cE7Rek/+SDQHIH54zHKd7Sak6FZDYkKgKz/Enl+bMGwZ2d/VUZIvv0CtviWxuCCNMSe
 JIdsWh/wdazrpirurs3xLBof1CtdRTNVlPkYUj9447wgGBQD
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=M89A6iws c=1 sm=1 tr=0 ts=695c5ef4 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tD0gfWrjhV-l0aOYTiAA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAwNyBTYWx0ZWRfXxrnW1XxDUePX
 75KM3+c7hUSrroGhObp7MIQgfwKOqYF6nVu7Pv2CvYlb40foytPb3FXDk1KGuFEmwPUUdz+v7vA
 6yY3w42PRclS3gEJDsJNLAP1SyLyWwMwcMl301RYnE4VFqdm030H3+88ApStBvnf0uMKtgxv8uu
 Az7tvvr1W/NCEYx80KIR7FPjA2XUADXyOo1TbJ2GQbn+SWn0SkbgITA6Is1v6v/Q70VgU5BKxCe
 TwxYyesIroGtJDnIPsJQHiZePMsRm0Tzu7Jr6Odi2MZMzcNONEM+AWRzj46ijlTovlQBzKBQnvC
 aXLRRkC+LiXjVWXk7mN6EmjwCflAytiQ6ElGP0NU5L1obJERfk+86kQJEQA0Ir+TpyksVWwjv6s
 zDHa0k5Tu44p9E44iP+sdTzhV5QLx8+2+GTXyvr0qW9G7MkFs98HiuB1DajrHOW/VhA4T4aLdtq
 b0vRnvuQxzPYsaoUCEg==
X-Proofpoint-ORIG-GUID: dG-9J9aGQhXvN_D4PuDW-ip1ob4tMIZH
X-Proofpoint-GUID: dG-9J9aGQhXvN_D4PuDW-ip1ob4tMIZH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060007

Add UART13, typically used for Bluetooth connection on SM8150.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index d36a3d214db4..97ca5275d740 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1693,6 +1693,15 @@ spi13: spi@c8c000 {
 				status = "disabled";
 			};
 
+			uart13: serial@c8c000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x00c8c000 0 0x4000>;
+				clocks = <&gcc GCC_QUPV3_WRAP2_S3_CLK>;
+				clock-names = "se";
+				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
 			i2c14: i2c@c90000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00c90000 0 0x4000>;

-- 
2.47.3


