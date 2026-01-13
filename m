Return-Path: <devicetree+bounces-254646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 557F0D1A55F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:39:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C9598300DD89
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16ED13126B7;
	Tue, 13 Jan 2026 16:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J5ZCgaIW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wb1SL0ya"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685AE2EC571
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768322379; cv=none; b=l/1e03e6mIvAKjb1Bsd/fnHIZCbtUGNnT8iGIo5EiRkAlg1ZEGTT5ayNN7LkhHK9RwwQ+7kW664TG4pMs3cAB0yH1k0cDskmQYD2Yw3TA39t4NiYDT7YdJha5y0K/DruDtn1WXqLti40THJyZAzfSj3Iw4TB5FrFUyWZn3I+Hy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768322379; c=relaxed/simple;
	bh=Hb6Og6xXJJ2OlnU+hg0AXc8Xss6+0Mj0oNwh4Er1AWU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=J2ZXr4W2ZzASA3ayBQn2N7toZi/5GPoTQdZotSQRh+2RF7aP8QgC6HHESFR3b06qn/HiXiBdtmTAYsYqISNe7JfkgFha095Hb1YEbq04GDaJgrO7Yk1Vzea7kqVjDn+9wvCS+UDs9mLRfsXflhcnLaEGQSYLPzUta4mjyeZj1vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J5ZCgaIW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wb1SL0ya; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCr1Cd3636889
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:39:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FNg3uz7IZ6kkY04yZJe4ti
	LTrzESWpojlhR8mWqbOtk=; b=J5ZCgaIWURJJZCaGdqGEGhrbGQ9pEX5WetuOqg
	mfr46i5L4yGMXC1OKG7FYFiZ6Qo+NuEZvEmRCh7112b6MyJeiX0YGFE2yZJ+EhHp
	0cxWfH2G2+IBlfkBSdq59q4fvlsRsWb7SHfEmtz9LY6UCaJysoMChwN0EE76j8Ay
	y11JaMi9s67Nvgth8yv+RlpxnRaIXkVhMOgYS9zddaSFa+9VFNvb3InKGGvReH9w
	Sjth37wkYaxNVQwUTiQE5f/kD0GI+OGPSGP2aMeWHxJLCdmhE3Jf9cDmn8GgTU1p
	nGrZXZYCYbeA4kQcTCF+jhvPqbqpKAAz4n0Gz7GIkn0xVr+w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng2c24rh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:39:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb9f029f31so2127926085a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768322375; x=1768927175; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FNg3uz7IZ6kkY04yZJe4tiLTrzESWpojlhR8mWqbOtk=;
        b=Wb1SL0yaqjz8t9+0meQDOezfI1fTrDdgGtf2l57Y50X1NbUzm1VasZKrFUs3UYDAwk
         442l+7euykXX9JI5gk16vgREO9iYUTHR1+1P/coVeo50Sz7J/k6bqvepkv9UJE9M5TAk
         V70OOUoSD1qT1PgfWg1srAc66ilouoyxOcf5+y517wZDRGrSEmKOiFxNbtjIhfqzfzNG
         VQu9sVXY4QpqX1BQMrR3ivdBWcVVCpdDVto5YHMByhwrBzEjlTj3rSEgavZFoAofbXqA
         fBLV4Gi5Ei9dVdJ/V2lsW8j5ks2RFG8XO8FE6DDT/bhO1T62rk4CoNnMZ4e5xvVJZ0lX
         r8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768322375; x=1768927175;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FNg3uz7IZ6kkY04yZJe4tiLTrzESWpojlhR8mWqbOtk=;
        b=oklbZ604ahLHKR1iR9CDoCorsrArq9zkGLKnfet4BYUYeMlsXEWcC0iDcuPLcsUBX1
         faVg5rrtaAqkg4eL5FxG6RRbLNl9BiPRwn+etTNg5JffJQdTDBKrHyv594Z7qNZ657Wy
         udR2u7T3R/eD5FmVu4A3GkXIBhJyL7bwTa7F0K0j7vSxT0twejCveQRqhtyj2XEfqI+2
         m9siN9KTPWJrv53ucJzuKlbtxyxrCb3BpJ4/LgaviXJY6gzd84gs4oNYu1tWbI9h+mm/
         kb2bB1wRys7BlvxNy7B73GwMWP0mxhi9/4XbN2XztuDgiEKP47Mh0BhTMcOzVs+nrwRA
         +LMA==
X-Forwarded-Encrypted: i=1; AJvYcCUS69lC/L75OZdpFeabl4ApEm69FW0ALXWBKCK9ndJBvjSL5TOOWo/gYishHEMO6EIxpTfhBqw0/rQE@vger.kernel.org
X-Gm-Message-State: AOJu0YzBuUMEo8eJzhSYyyOvmqWlcQf5GWAsUg30BCvgS81fCclbkxSo
	z/1ycNgNY+vADRtRvump8xZOLu/Ki+NrQMd81abRMI1qu5dbq4mqCA4mIAGzYFDwLACiGhcZT64
	X0omxF5vUqoh5XATMk4IY8NpeMJtbmbEr1kaF6BVXSu/7wLCZ3FDVz7Khvyr09+VV
X-Gm-Gg: AY/fxX6uBOGSyyhdDJQyFJtmoGUhE9HKT4IQm013SCeoEuFJXog8CRpLJ59L4+hhpTr
	+EBv6tx86yieCPHhUMVpdMc/fodqGe467ZETNc03q12ZW/rQ/RKo/FWwaWURam3Yaof3nrP6Mkz
	fqZ2PmlbG+25buid4Hmg7V59MQ8TwNdtwGwREEo0z+WgpQNdFEyaXl36STmYBmkJe3xtqslndns
	9JDY057n4UiKx1zjy4JbUEqW5reb5kmfJdw9m4rnfRMMEwtw+hSWu8MPD1+G0IFhxoG69HMOJ8f
	SDXRgWbUUnhg1pgPhJZIbB+JFAsKHV+1kTy3gPwvD1bQEGDHnp7kwPjs/oxipas6Xb84nWWBdLh
	qj2hYClWg9Qa4Q+xfjWqGW0b4nIs+mwzWKL32KrNrej5yMJaXqzyMXVVPxmSraCHEhLMU+AkYna
	oW9CGTWAklcN5Blr1cs+LfvqM=
X-Received: by 2002:a05:620a:4493:b0:8c2:228e:78eb with SMTP id af79cd13be357-8c389368b81mr3354421285a.7.1768322374709;
        Tue, 13 Jan 2026 08:39:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUtRq+Y2gECtoAYtXxWvidMka+3b7Bm+Yt2rBK5+ICtGhPN11kgsg70TbEETlXVu6W01QW1g==
X-Received: by 2002:a05:620a:4493:b0:8c2:228e:78eb with SMTP id af79cd13be357-8c389368b81mr3354416685a.7.1768322374246;
        Tue, 13 Jan 2026 08:39:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382fb295f5csm38560801fa.49.2026.01.13.08.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:39:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 18:39:32 +0200
Subject: [PATCH] arm64: dts: qcom: agatti: enable FastRPC on the ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-agatti-fastrpc-v1-1-e210903ffcb1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEN1ZmkC/x3MQQqAIBBA0avIrBNylBZdJVqMNtpsKlQikO6et
 HyL/xsUzsIFZtUg8y1FzqPDDArCTkdiLVs34IjTaIzVlKhW0ZFKzVfQbCM7z4TeIfToyhzl+Yf
 L+r4f3BytB2AAAAA=
X-Change-ID: 20260113-agatti-fastrpc-e3fe4bea2b42
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1476;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Hb6Og6xXJJ2OlnU+hg0AXc8Xss6+0Mj0oNwh4Er1AWU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpZnVFg6ora4I4sr4L2UU46WpIYweDVR81Cyisw
 ZbZ+UdAeaOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaWZ1RQAKCRCLPIo+Aiko
 1TIJCACiwMkkYRSNR3iQ/e5TghOXQkz42rjN8x1NiCPxm6ygomHK19bAcPd0S8RpLgyWInyboFo
 OM9x3EH9yFUTk9ljIvFJQEoIxNEVO2H1P6UNxcVnHFSc2lQ+kTLJ3MEmVqvdanfFfKqrkU2yHr6
 QC/u3gOKwn8x30E61J3ezsFsKn/7WWmbjUDgK+V8Am90AwePKfbUOpqvxneVKdwFj2PnD1DYWnr
 hkI+1Q6d2DY8jrcgwx7p55Mki6mpHfjbWYGqhwOty/zdKuxgpOL4seVRrKV3+0L1ZAGrG4GwKj9
 6mLjHbMrjepLNLGJ74zNuAhN/jwqB2bp4hsRJKIgntJRFppd
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEzOCBTYWx0ZWRfXzoLsgFJf7I4j
 Rxqx8N/HGWR0q4n3gJdVuqTPTENONPvkX3KNLoo2LN9UqjrJDZmmB54vVMvUg8yh/yBe14IaOEW
 Jp7NM3Zt1KK+Lx9mK2ZEf7RB5aOA/ljEpdY6mSXwhUkr7B0/Se1R9xpV7exRY/s+OOsa+DJl5z5
 jEVt40Mx83pj+HlBcUZGkg5gCX+yU2iHBVatVscDpTNmDvVdXvV5mUvZyVfNWAkuAbSxR1jDwDl
 svDySymQpKoboOIoEhMIE5RmNrgBprrITLVlMz5+199ZRaSii4dQKw+7xS1AVFyzq4pmB5nV5Q7
 i5uZJcWunaWtumGsvX8kbdaQrbveVe5DTagA5qMCQb69VRyZEQPC3CdDnTviiEQxOBLV/lgBQI1
 RH26s5s0xMjkITslUwt52sfkEGVjfQ6xBaSnUaq1jeK5eSeWNf/g6elXN2oiDIYSlIzOkg54Qpo
 6oL9kHkxl+oY23etRlA==
X-Authority-Analysis: v=2.4 cv=C5TkCAP+ c=1 sm=1 tr=0 ts=69667547 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qnRtB28rPDfBZ8ych9EA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: KgDS5I7v0CfPIWlicJ-PgC1yqZVPcB8S
X-Proofpoint-ORIG-GUID: KgDS5I7v0CfPIWlicJ-PgC1yqZVPcB8S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130138

On Agatti platform the ADSP provides FastRPC support. Add corresponding
device node, in order to be able to utilize the DSP offload from the
Linux side.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index 7815ece261ea..71f8a0972b0a 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -2287,6 +2287,35 @@ q6routing: routing {
 						};
 					};
 				};
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+
+					qcom,non-secure-domain;
+
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1c3 0x0>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1c4 0x0>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1c5 0x0>;
+					};
+				};
 			};
 		};
 

---
base-commit: 0f853ca2a798ead9d24d39cad99b0966815c582a
change-id: 20260113-agatti-fastrpc-e3fe4bea2b42

Best regards,
-- 
With best wishes
Dmitry


