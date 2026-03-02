Return-Path: <devicetree+bounces-269946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Kk4Hup1pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:35:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD471D78F9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D870305C4B7
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C161F35DA5D;
	Mon,  2 Mar 2026 11:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZmjJhxuP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TLl7KBk1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DA6283FCF
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451047; cv=none; b=q+5Xj2j3vDJ7Fmk0Clhw+OrK0ca161PjAILu7r9Jh/uRkHvvUWoar4wW0t86gvrZPbs+eOjDcsjS1HxsT5pqkJ1VGe0EcBoqekohjVKpJ/YjKA4yGjzzdENmm3UDEpoMpgehz/iuwUWyZM7xZLkQ47iUwI8ADqwH1tmku14fEiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451047; c=relaxed/simple;
	bh=QMAEueWMdFzxE15Aa/UY66NWhDZDqXExlzMWZO78AzE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=m+y9Z2Blrozarp/kBH5b1ogEcWCqtNBVxWhbuBcR8WwLLKC9YvNIEELPsyRwQ35OdizbGrMaW24+WWeJoj2X8Y0ebKVfPNX/z6j3583zmsvUtXV2EOVekePTPSlGa1JjhdNht1Q3lCTRAdrfIl5fr1JztXWpVxnfYRv8Fa6S/pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZmjJhxuP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TLl7KBk1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229EnQJ3630795
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 11:30:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/zkjpPA7+oKtBeK2o+oUF/
	g1/OLxdlCElFoMepCL7fI=; b=ZmjJhxuP8WN/bWrpVGU3qLrl2lp92mAvjl1+qg
	xmrwEAa2Kgj5NC5whifOa8XZxAlAWUxp7TqqMUhmejAvXB3afNtlEAfIFGuJtLVC
	D0S+fINeEDdQTm4omzZ95Qh3/yrHMzH2q6f259HcHTrMrtnw+4ogVfn0+oQ5KsjW
	BGPIwFSUt2Nn93qV+OtIRxqjHA0+5iEbdmScZ9MnG1Fq3Y6UTr9nPik5sg19uK6s
	GsFDubT8fYwjK2Y643fthQfAWHjIRBxK34W/Vcx2+iC/OnFJQUGA7hmOaC9spd7I
	hUBLRbJtgldave5h46yLyWnl9tQ3ZcGVj2wVh7+qsH/sf3Ew==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7rhrf8q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 11:30:45 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8230d6d54a5so4054661b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772451044; x=1773055844; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/zkjpPA7+oKtBeK2o+oUF/g1/OLxdlCElFoMepCL7fI=;
        b=TLl7KBk1qQOse50lEfWabRdkM4eX2D/7LfvCMJU1utGYAkVn8lcELsCLegp8SyyYjU
         bqMUIyS43PM9ve2OyikgNBwcfoHXUgBuJXhfW45BqAaMZDYFbwgIf0RlSnmlC/WUKVlW
         w8yjlvwLxyUMg8W39KpEFDenBNNC+BjrcqTiGclZxXFIZvmgYf1NTzWM+/E8f38Qv9pt
         MOLczIfcketvq/IJNkgmPSZFiQ2QDX4mu7vSSDvWvjk4XJMr4phsTrfsvyivwn/EjvVr
         fMbwZUmvs+JtKgsJWPIm3V+sieNgeYxJiAMj6oTn6t5W7/eDi+tgCoMF8M4itNd76gjW
         zy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772451044; x=1773055844;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/zkjpPA7+oKtBeK2o+oUF/g1/OLxdlCElFoMepCL7fI=;
        b=mUNgXvoWsCrMMcU4cL5TGyRBEQIvWIApKWNBttCBLArtEWzCuy+LE1xZBZQ2eAqw2l
         zRiY/vLyWeRz9FWMtQMkYnBWwTvAclLbQc3OTdEv7A+PsnpfW+hRHHBpVkFyIbsBkUJW
         4LaNlZHvrA9uws+hM4ExFnwTFPtawE0gH38TBkJ6bUgoU9yrR8+GAaIlZ6iOqVnTrJQ3
         OmfTCELB6xzzimKP/AMXCURsB74I19I1cR2SgqOIyaqnueUI/76Ql7O//Oien/gMyFDC
         dq5fwTNIYa5EGLT3/uvFHJmS3ifY6Rozvvx7cfNAXoSBBhU3LzXu1e4RzewGzLvCcVAP
         NfRA==
X-Forwarded-Encrypted: i=1; AJvYcCVcUAqKDUAMOrhhuc8wDyRFm1DRrXNnZh98CO3viuFAmL/tbvaHZXIFOXR3UEMGp/5iyQwzdZnYhvtX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdmlbg/E+nxnXd9O/+IlNyKcwoVvDVlNR0EEKrkeprs3I9Cmfb
	yK8ShEINv52CgxkhUQ/LfLU7D39hlw2evctlMBrphSL4f84gTjFvOvm5OLuX2Sqj/Cpoquh3aWM
	3FyVi5s427OPnY3kNkdhpmCOZMU2aiDJ3kXse0Di4wbkiWRKyLgJKNHobEbDzVAi+86dIKgc4
X-Gm-Gg: ATEYQzx+mo5n07gWzFzNY2PRGEI0/DyZKbkUoKgZ+F9AYBdw+3F1whcoFydT3RzzGl0
	ugL8ygZ53sN/xuro+G3bjAheiVJlacLeydEAawFLaOkqVyTamWwhtZtH7MoiKOl3yXL0lza6Jxc
	T+VTbzaBh6ZzM0yIImENKQUlxtHTfCr9gLBt9XvHaRlG2hqN8vwYaxZpOlcU5a7aies/n87+7aZ
	woep08TF+aF8z2q4dCZGt1W+7f9i0Fw3tatpGFI95M2G3SnUjxxAIUL2zxXiEVUqHFC/1Saom/t
	A1Q0+KBidRHTMakOw0Swh0eyYD4RUANKUbwD3sfHFg34vw7uPJRurRj2JPUskp0i8JHw1oAYKDv
	kYPHAfGowpEqBzlIM53t4gw44EaL3syt626us3fvVBb55RExeHVs=
X-Received: by 2002:a05:6a21:7d0c:b0:394:4d99:ff56 with SMTP id adf61e73a8af0-395c460060cmr10796916637.11.1772451044321;
        Mon, 02 Mar 2026 03:30:44 -0800 (PST)
X-Received: by 2002:a05:6a21:7d0c:b0:394:4d99:ff56 with SMTP id adf61e73a8af0-395c460060cmr10796889637.11.1772451043746;
        Mon, 02 Mar 2026 03:30:43 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4d31138fsm38593965ad.83.2026.03.02.03.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:30:43 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 17:00:28 +0530
Subject: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Update TSENS thermal zone
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-higher_tj-v1-1-4c0d288f8e7f@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANN0pWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyNz3YzM9IzUoviSLF2D1ESzVANDI/OkRAMloPqCotS0zAqwWdGxtbU
 ADGqy21sAAAA=
X-Change-ID: 20260227-higher_tj-0ea6e0127ba0
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, manaf.pallikunhi@oss.qualcomm.com,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772451039; l=1823;
 i=gaurav.kohli@oss.qualcomm.com; s=20260302; h=from:subject:message-id;
 bh=QMAEueWMdFzxE15Aa/UY66NWhDZDqXExlzMWZO78AzE=;
 b=cRIFVn9lsJOWvgefCNT0ECdt4DUOUjMiJQScY6z3Q8DWKpfHFqwl3t8sTey4TtQhODZCwm6zP
 yNOvC7uo6+dDyIwJ64m00XowYwxZzcbb+31JyUPx0Iblk8wWDB2ZtVX
X-Developer-Key: i=gaurav.kohli@oss.qualcomm.com; a=ed25519;
 pk=IdNsqe8rWsF6dbpGHfwPEH9zM0nbOdRH72HxUT9qPak=
X-Proofpoint-ORIG-GUID: _FoUFrXE4cX6eNXY37pljRUyrzZA1Rx0
X-Proofpoint-GUID: _FoUFrXE4cX6eNXY37pljRUyrzZA1Rx0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA5NSBTYWx0ZWRfX2FCVdhhYKLGZ
 3kURx0/mK5l8NM5O/Wl2/xTLq9Jmjc8ZNS+7EHpnUkImwUL8pCs4MOOf2TStXCtkJh8oNibPMEd
 qmRQfhwqJEbTDbFK9QBpG1Ome/O0MXfizY33PZaa+EP0KzIdlWUYp23IVZpdXjz4HMRdzcFIzFA
 Ldgn43itPr9Xjf/mub0erqBhg842PFof7k41JpibMNMNGjzH+Mf08VJBBIKvZhaI07D6thV1+w8
 zR6KQJ3x+zH/gp+zgnTVfXc3azgi4WPpoFA2jJqFiqw0ekOVM8fd5RVGX0yJJm/aoluNPtjKj3g
 K/r6eguI+iigHGiZECx8tZOB25nvh3dBfXwNFn7SW1Ms850CDfFaMwiGQk0cR4aKscbKOx7p1Cq
 8QMnp5u5DS1LC5B/YcFygbKPh4whi4a13K6WLbbKKFNIgICroir/w3FXD3UlY1ruRACddK355lq
 Fqzg6GpdhU+852iqj4A==
X-Authority-Analysis: v=2.4 cv=cLntc1eN c=1 sm=1 tr=0 ts=69a574e5 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=ksVRSQBO7p1Vqs0csCYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail,qualcomm.com:server fail,oss.qualcomm.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269946-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DD471D78F9
X-Rspamd-Action: no action

Hamoa IOT boards support a different thermal junction temperature
specification compared to the base Hamoa platform due to package
level differences.

Update the passive trip thresholds to 105°C to align with the higher
temperature specification.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 66 ++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index fccf1d1bdc60..f04f7f0470e6 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1529,3 +1529,69 @@ &usb_mp_hsphy0 {
 &usb_mp_hsphy1 {
 	phys = <&eusb6_repeater>;
 };
+
+&thermal_zones {
+	gpuss-0-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-1-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-2-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-3-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-4-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-5-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-6-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+
+	gpuss-7-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+		};
+	};
+};

---
base-commit: 7d6661873f6b54c75195780a40d66bad3d482d8f
change-id: 20260227-higher_tj-0ea6e0127ba0

Best regards,
-- 
Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>


