Return-Path: <devicetree+bounces-225847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D754BD184C
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:50:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 461A61896807
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 627DE2DA768;
	Mon, 13 Oct 2025 05:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MxD+DjPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3932DF706
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334626; cv=none; b=M4GkDgWgxsk6nWEC5PP7vwEFwtUcnTCB8vABcsClPGhPV9/rnDsdOi13kvxOJEPcvWBSkfnfMIuIg1vfQsFaPKC0G19xD9Cn3gMf9ATf2BlTQ5riKwRgvJ9Qb69wQmqi4EIWUN4p6STVmshAsS8lLx84GhUGGhQ3ur0IcoJJx3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334626; c=relaxed/simple;
	bh=puH6v1Vw8fFe9wl3mkMKP3E/RzmfB2TkYXSNm520xS4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=phw+2o/Sd27xhUUg9EKmYu71A2ePYdiCI2C2n+BOoqd9GZEUu6r1v2pb4aP4KU4pgV+FIUhrfaohPWJSUXJCbEfZ1y1tfIVGmX6c++aU5Oe5UdU2YAPbou4WmPBCoVLtqbLtILHAecReYGqxI08cCvug5lW1EX2ZO7pYSCk8c3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MxD+DjPq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nYg5005536
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:50:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0M8aFuc/Mt4pPM0F4HGxyoaCM32GJ3Ozi/GdicAL7h0=; b=MxD+DjPqYW0HvzNf
	qaiS5tAQtkO+rNzRf/QPa582C5tfg34zPuedcH0eUQbQDhw7p9Bs9uoYbOsMBokG
	lJxA3Rl2YjZeKSvoTeTuysaGJYNYo8VL2EpEvsdYHfwh5rbng08Bvc3Y+rIVi2Em
	j/oEIWdAUPuOhnXmUJxz6336lyXJHdlrEHLmol64oRU5TybKfRuFYvCCh0IQQKCG
	scW47yaAZA/mXs8s/xz7pHhfdR2oekAhUrngtadRIaZ+xDUnRyM1Gd27IMBlghbY
	wOVW/XXNXNXoVCXNEef/FbAuuEqU46CeEOVKfbEXYf9A2Be5PzQh2DYBwbm4Q7dL
	xLq49g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbs3cgj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:50:23 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso6246967b3a.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:50:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334623; x=1760939423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0M8aFuc/Mt4pPM0F4HGxyoaCM32GJ3Ozi/GdicAL7h0=;
        b=kQwXIhE476JWaZlWOMDBsac3WzwrUY61aQbkTAV4oe/whWoQWu+j3hAshDNPU+VG16
         hXhW6CxUDnP1Oo6zUhlrt01Dc0HZVbis6qvX1qETrX59M3oa1biz1QdunHAT9jhA9KDN
         +7fJtwg8qJDzTWBq39a63umTwDzPcPwBYLDg9WJSwNCOJLLgXISh3EeVEwzOb+gNwqUb
         HQS5ttt6QxaI8JR+xjdjAiHuCbTjhye7mplB32NAPEpauZFO7/bzTjBwGhvcXjLDav/W
         VX/G9fD0BadLcAbSiIcSjE0FVSxcWmm9ldm0GdtzRNFld97QS9Co7ST/evbWIVH131SL
         i/Ww==
X-Forwarded-Encrypted: i=1; AJvYcCU/4ExrO7Xy+QZOu27ZySrT9Bj3ta4AW5aBw7oFU/+dkN/Gnhij3l6oc2o208osjc4vNHrKQcIoB4nE@vger.kernel.org
X-Gm-Message-State: AOJu0YxkG6kVhs0MFA3vDzAy+NkEf1Zk0GjbTsnId0o607+q8IKOa5s2
	P89TaqoGr4JQ0cBw9N+3FeWzK4/mah2bSmeeXQ+ahZAOFapH5IZk322GIGmVlLVEmsJwf29FXV5
	hqmyaYspAU+EkPhh0lqnyDDOgZkdEUV3doObQ5rbrBDSyqGO9jgpkGaTZK+Y5fjkZ
X-Gm-Gg: ASbGnct+bADHVvnLHG0qb6A/a9bRqTa3zfnkhQix2pduVZtyn2eYHrhA45854WnHtIY
	z5YmvPNpDXFdmI54K9InhS+BoSEXVkEtEPDH3cFxNa0Ay6WKwPZh9Soyg34/FAgkxSBujf/n19R
	gExf47uKmf5uGyGkTxyk9xmkY6SZCdYSQF901e9S2ADHYgPfvNdaL5g5ba1pTFydTLRh6EI2lcJ
	ZT2cUrkeuGmeOTKIiakR1/i+4swrzvmYMs0SWhVAR55OeVg/8e0XvC/0UAYcwkn4sA4/UjIdPHr
	uTxP3U0FerOVm/g0pn07MyLt6HqadBYQ/gTGcSpCOQdv8iprJ5oKD4PyVBzGD5w3zF8Cokqlnp8
	L3/3y7tRQI7PgaB2a0sBbp3T2ZFw=
X-Received: by 2002:aa7:88c8:0:b0:77f:143d:eff2 with SMTP id d2e1a72fcca58-79387c191fcmr24271681b3a.28.1760334622724;
        Sun, 12 Oct 2025 22:50:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhxqXXmp9aEfaNdrdawUKaKA995gCx4boRuFrdQ2UN7/P23mvgjKwBh/cZOO4Q72gPOn4TVA==
X-Received: by 2002:aa7:88c8:0:b0:77f:143d:eff2 with SMTP id d2e1a72fcca58-79387c191fcmr24271663b3a.28.1760334622267;
        Sun, 12 Oct 2025 22:50:22 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm10129898b3a.59.2025.10.12.22.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:50:21 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 13:49:18 +0800
Subject: [PATCH v7 9/9] arm64: dts: qcom: lemans: Add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-enable-byte-cntr-for-ctcu-v7-9-e1e8f41e15dd@oss.qualcomm.com>
References: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
In-Reply-To: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760334568; l=820;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=puH6v1Vw8fFe9wl3mkMKP3E/RzmfB2TkYXSNm520xS4=;
 b=lCVal94BR6nfoZj9iRzi5oLBXkX2bW2qsDWgbK4ssNwarQ8S6PvoWe1Jr5TdL3CN6BcepOykS
 LOZCdkfTNQtDl9LIWvUXgPqM3VB0GER4lNl226C2t3sSICX49l8WMez
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX6MU+3xXWuBRv
 qR18o86UnFg2n+XWcDHiwqVf7+nC6oB9MQKtXbKgI14p3e/h3GDJ+jWBUacL53qUGXnfaZVO+ws
 KE5tEdax4bdWLdLkjoMertHmVnJEDX73FgCZAiAmMqc8xgz8XMKlzZZSRFv8roQN3OISPDQrJ/5
 nKjJHCZN4a3S8ybKXN4EPkmsSX2aQZlZvIBAbIY5zxdexZy9uNP8DDtdnE/MsnPJXbM9j2H8uol
 viHZaTjvVSRc4EylEhbp1+dldH7llCBjaefacsrOYB/xMdQ5Ek6Ti9WdhjZawF0bhdzrH9RTN+j
 1MuE4vl0CgVbCeTRsFbsqI7HsCGRKHJxa8yVqsU3lP7PRiAnPGRBO2FseRFCpU7LFs5+2RypvQ+
 1LvIk8evWLjHTqzYPWQ2m/+Xyd0a6w==
X-Proofpoint-ORIG-GUID: 6EBD2tT9FWlPY2PiQ27QXInwz4ZWLlIF
X-Proofpoint-GUID: 6EBD2tT9FWlPY2PiQ27QXInwz4ZWLlIF
X-Authority-Analysis: v=2.4 cv=U7SfzOru c=1 sm=1 tr=0 ts=68ec931f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index cf685cb186ed..9e4dbf7c4a11 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2776,6 +2776,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etr0",
+					  "etr1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


