Return-Path: <devicetree+bounces-189310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C77F5AE792B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:56:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1956D4A07FE
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 07:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FC92210F4A;
	Wed, 25 Jun 2025 07:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dm7U80NF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A978620CCDC
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750838138; cv=none; b=I/J+h6zhd8BgozZG358aUnFc6/9Gmweb60iff1mcgaMf3YDSAbMLEC7HiDtZkNmDFf9G3A7epQOloMpa7B4054ubxm8vhpnWqm9vtWinKzXCDWBbyYrhcI773zdon1xR0puCk/gupl6SLWIjCjUriRpmbDhvvDAiUrlS29PGnwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750838138; c=relaxed/simple;
	bh=zqovogRSX46BigAaRd2ImjZveYMUXSmm+0OkqYQfuoA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JXbLbgCWQ8Dbek3C0tPKB0hZf89A+ApDYYvvMGb9BJOx5fG2cejZEEfGHgBcyyPdqI/h/V239mnF/bYn4o/kL9BSvC9PMSSX+9fWXlbsbEFu+xhKCA8Qwfm0quYS1RrzPDcplvgQS8zbnxTUAauuMXOnKdV1LbTsUxeVY3pKEvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dm7U80NF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P64eR6020867
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SE0wZGHjNk9ebTpFdYcQIUxoM8VbhA7KD9TRfAYBS5s=; b=Dm7U80NFuQWqLLot
	CE7O7K9VIKIHetH8LfEw7mBxwiXst060R+VkDcaOtQp1ewp0MhZBx/yb/j6tM8Cw
	wRfxyBaERL0cmAWdCYfXpXNSAFk07uej9CE0US1l/xd//Fz3IBpiZ+wpXLeZElut
	BVaf7Z9ieuT6PpjWumnKBxpx7n4zUk9MxC4+y+Jz6YcNw4Xdau4nZQ01tagB/HQn
	5o641gYAUyu9Xhpo3hR8NoC3GXcvb5qLfp1OLmDtS7EDkIo2HvpGrBcHKerCoeL3
	V+YdY5du5NTFnEeflSHmcjRu8ZtER3FI4oHbbvynBwnFp/O1fGcuoKfdxYZv5Nk5
	0x0FNA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3xu7p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:34 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-747ddba7c90so5267974b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 00:55:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750838134; x=1751442934;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SE0wZGHjNk9ebTpFdYcQIUxoM8VbhA7KD9TRfAYBS5s=;
        b=pAE/gfBWGzvNDt2rkrZRAZhFrb1IgEunl3GKe5oEBaXpbu3ZzSifCl0iISXsxdu3n3
         x+qEhXfwhxZRMKiwknODfCYSrL4uK/q9cW81sVPgEiR0aG5+7ksOc/lcWJQtMXOrX44c
         SMNlVW1DWuTWPLeuoT67fpMlEFa4mRKjWuNblTYAhKa+UQbk+69UbmSv2SsiBAaPWyVH
         Y2jHPD2LyvKdrvkWpFuvN4hufHp9AYwD6ILiQLprPJCBkdu27QbeIG5wsTgXUQpPR3LK
         2F4Vy6SokwO+gXMrkEm2MJSvE65H8w0+S63CrDO2YDl3IsKZ4aWyvEIFOz3MK0eHqW/S
         BUSg==
X-Forwarded-Encrypted: i=1; AJvYcCVW7gL7z7hAae9vaC7bm1/xOmRLs0XcvpLsGxfG5LUoJZB539tla9j2mbKvTyxfipYVyWSl75bbV6rm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2vYunRQZXqbsGEp3TYaoU01AjZdEZg4jO7m2t45KEXb7K/bj9
	zo3Vis8xBQGyBcwNdlX/asJqj7MLqY19VgQhQVh2ZsNsQ6g6EOxcIF9cXpwyfNzLSbo3RFrtFCc
	ba1lxrD5I+WUl7gf8y8Mp89eR5PgG62hcf98shtacrSG4LftYsgbPOQs/Bn9oSiBt
X-Gm-Gg: ASbGncubvySDpt0MiU2PKG1dXxlY+nWjiXAGeUnBgmbc8ELZfDfFQdQRcVWvDZGGiLs
	RBLycpVzQOVFlhXDN13uQUrEsyxVeGh57kYdEuFcLa/ameJzfAj5O3DKCMKZniDS8njZjQ8uzze
	Df+j0ad1ocLMUGxLwf65kyZ4tLKmxmyssV7ZXAU0vrfj1SeT78Z1pdhas9JBfihywAPGxRbuwvH
	g31gJMCrJ/+wEHZmw6hEdzl65mbhmMTil19izBQ3D87dsJER//XXU8mwCUxXovihK9+MNiwD7IK
	nhgJmqOWxUJ1a+Fxh6NEBwpOsGO4Yscpwe8DZEKoKlHydnqq9MXeZzQG09ExmSzOhi6g6up7VyW
	PvAppLlZg9w==
X-Received: by 2002:a05:6a00:92a1:b0:730:9946:5973 with SMTP id d2e1a72fcca58-74ad443da00mr2785470b3a.5.1750838134025;
        Wed, 25 Jun 2025 00:55:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpuEfD0kUF0myq+IHmlaXzl+QhyXAvsi7n5BM8WeSKzUKhMn5P3e5TVU1eiij9XrOqr9BEcw==
X-Received: by 2002:a05:6a00:92a1:b0:730:9946:5973 with SMTP id d2e1a72fcca58-74ad443da00mr2785441b3a.5.1750838133617;
        Wed, 25 Jun 2025 00:55:33 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749c8853133sm3707478b3a.129.2025.06.25.00.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 00:55:33 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 15:55:06 +0800
Subject: [PATCH v2 1/2] arm64: dts: qcom: qcs615: add a PCIe port for WLAN
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-qcs615-v2-1-0f1899647b36@oss.qualcomm.com>
References: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
In-Reply-To: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750838128; l=880;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=zqovogRSX46BigAaRd2ImjZveYMUXSmm+0OkqYQfuoA=;
 b=xTwwjjH5SxkF999PcDAjZiAx4d/S/RGwv5NL+aviwMacHE5KE2aCQU6D2HmSrtxN9xsvVJy+T
 +ATBIhi1xWRA086Lgxb6+jF0fWX/OsgFA2BtfIV4Q1Bthh4CD7p7je9
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA1OCBTYWx0ZWRfXybHVh7npjf6L
 BoxBApVj3vpB2xLE4AV6dvRUvNfmZTF5qmKqyvk6UFGIZP270waPwRRH5ehjqLmfa8RvxHerEjK
 P/l2k/zLG77WYAK4B6zYu4FS+UU4EqdN9/JCVZmxuCcnSlXdW3js6v7Gd3z020XCdTwSoHmDFEQ
 wEtQi5xecHgTM9pM/7d/jVnUVk8QWB4J3LR9iyiV9kRHsEClpu1bzbKXcGEMkpS1/eM1l95Kyqf
 zUJgAcvy4SHw+Ou+8mKQNfGCy73tehBkALmpRV/58vViWBCLR2LD09cQu40GRI38VC4WFrDMqto
 Kw53Syl44niE76v3j22+dRss7XoxfXNspq69AFSllOwHw05FU2hWNqIIqn3NueTHF2GuwDz8eAF
 s6k5XWyh9ZhhxBBLLIKD7jLHOL7E6pi1KRnmkS+6TKFSlFn0L65OOdJWKoAOPAQI9ENCQVHg
X-Proofpoint-ORIG-GUID: CBDmgZ2m-jgSZn7xZ4aDGoX2FjLg-VPh
X-Proofpoint-GUID: CBDmgZ2m-jgSZn7xZ4aDGoX2FjLg-VPh
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685bab76 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=dI-8CA4c5Xf8_vBnWYsA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=930 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1011 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250058

Add an original PCIe port for WLAN. This port will be referenced and
supplemented by specific WLAN devices.

Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index 7cec7f643a84bd59dadfc4f7b8d95f52fc81c7f2..c996d5a9e31ce283109d55fb61db8e09d7edbf02 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1181,6 +1181,15 @@ opp-8000000 {
 					opp-peak-kBps = <984500 1>;
 				};
 			};
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				bus-range = <0x01 0xff>;
+			};
 		};
 
 		pcie_phy: phy@1c0e000 {

-- 
2.34.1


