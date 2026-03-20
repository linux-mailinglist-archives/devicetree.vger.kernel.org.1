Return-Path: <devicetree+bounces-278053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKq+I0W2vGlv2QIAu9opvQ
	(envelope-from <devicetree+bounces-278053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:51:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B382D53E7
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDAAA30A3D1F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 02:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6E82C1593;
	Fri, 20 Mar 2026 02:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b+sr9VE3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cFlY4FxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6547940DFC1
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773975068; cv=none; b=OGSOyW7mYrqXpWMaMrmmeozwAnWhu/CMKBl6Ou+lUixFAcusoR4jcFQYmXp8laWXcDTL1HEvNu/fiYPr7fUtMC8wAI/0R2NEXZbCOyyDBJ9z/MS2TU8Gg0Tf9/YV5mN06W70BlbJlXgoRBqhRSVIlikKfEP1BdpaT1LtuTljZig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773975068; c=relaxed/simple;
	bh=do57YT4ZSNz+w9pImozH1M9OgZ8Lf01FwyGzCCPvR9M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Q1vmjd/RGXo5O65o3RqxOT4YBKjlF7yCoGOaoeW8ZOauG/Pzkgh09mQcRguyVLbHO0/QHdcVc+yxTSZmt7x5Wrn72+NIHH00Ofr7CgOSWWxDUWmGBLNhJRDfUGPRz9caFs+wgdYHdddgIvT+o6NQ6v7b1GCUKul3iRbx7wfdGjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b+sr9VE3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cFlY4FxK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2Xi5K1525556
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=poneLY0JtM06E6eGkovQax
	GucfbPLihoAiGt3a98tTY=; b=b+sr9VE3mtqz1aCnBRQPXuJO9u8BrVb2LqnM2I
	GRSD7vKzkalazxdWfUDVTKgScay9mZlzDq72AASBKjPl922XGEKfruhdCa4ViZCt
	L2WHo4hmhzIviomzj9Tk9ba1PcjzWKWrjjx/AXMxSkii0RSeRX8OzJBOSutyKo2P
	n68CnRao4wgyrdGm4ZkT6IY0+bgLQMLrNHhNMPbINWupEGWElZIT9NpZ0CyU+EiK
	GnerKyJuDhLBRjV7ySn1eFBNVHQkVZo+fbX8lwbZPfKewESqD1Pu4/8Fbu3WzFF7
	p4zVYURjWUp2iTNKJbPHchXlh/Xk4ZtnGA6X4wtB+c/pWR1Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0jt92370-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:51:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5090bc4823cso26731211cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773975066; x=1774579866; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=poneLY0JtM06E6eGkovQaxGucfbPLihoAiGt3a98tTY=;
        b=cFlY4FxKGpXTNlI19mORiVIBFjdnA0NVp6PwUKHVGdKwplZOdC0ffNSGWoLsN1AJXW
         T9yRB27Tg1Xp06JHUYBMt7jL4ykqoRpsocgnYyGRyB71wJfyrBcrZqxLiTrGc6MSh2ys
         KtxGXko0oC3XT7cM2rRgyJh2UtXkVdP35em+hqUgSB64MaE8zrYcMM/i58VsR8c5QZic
         8NU9DLdufxTPzNXt7u0gwH/xdSR4mqCJ5NyPdcPHzaDLRe8oToXqdy3Y2JKkXxovnSiM
         1pTOjgwZ0zqJsdOUyhhdAOdsIjQt7pr3chDtwdekpTaMB0IqnKdQ5qJCuyRDmso3iqfq
         sVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773975066; x=1774579866;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=poneLY0JtM06E6eGkovQaxGucfbPLihoAiGt3a98tTY=;
        b=ZCey790xOuYxjABfcWtlpLYHEpoBbUYJqsrt5MGuhp3V30+Z802hSYkZLSl/XWr4oU
         uAc4RbYsCV+sXZz3I2D6+/NyweDNr5ZFMc3IIS1D5HZ/soUZGp+RuMVdLhWwK7RfAxdm
         eG/DeQ1LTcUgQfs7DgbJ/u0cnh5yhpnTAO2CLlvDgm5nijDpVi3j8+dFbfOgY62iRiQH
         I4210+xEq4B7q3HRcR7UkTLtIIQXlqGy3mO82wJ813koxTf1zkzjoRZLd7x1pZJVM8Wz
         ieC74Fn+x0THnupwDk7LHLaSwvcJp7xoza0XnzFcBJqu2ObHtE37wyjKvwEHfPl7zrqY
         KqsA==
X-Forwarded-Encrypted: i=1; AJvYcCWNdw+g8xny25+ugzK5Dft0DOySjuyZO+/0TlZyedup/IWeyK2aYQoqdpbQQ5PAER2moMbSbs1tllFw@vger.kernel.org
X-Gm-Message-State: AOJu0YxzLqD3jkjaJTsHyWrKfztOSSs4HybMgPYXmOSBD5c0fJ9p84ub
	LXU5FQwQOHDGo/RGPR4lStAkuKW6oFpQ8fXj/9jzJoJd0pKj2W1cHlTGbdg1WAUlWcYDaDzfBHy
	zhSM8NVSF3/3xa7uzHCQ9+7eKLVyoehXDauLFyGHJfg8HPvzhbD9JhcDZ/iVCyyA8
X-Gm-Gg: ATEYQzzCFf1c8u91P1yOhUV6uecQ2op8QeC1ufcLfSQDYUdM1NpQaa5btQ16pLvXoPP
	PjUaHkUnEY18ldnyPy/oZV3NfLIxR3PNfQn6Bsa/jRLkn8VRWIZIFP4Khwnbs+5Cn0J6h2Adhm4
	d6cq0XrYz5zu8scIIpOOY+bYIycnxTzm/8kWDRvc8y6ISQi6azDEVnv1m/hAsovsBL4mA3QApXY
	G6R0NsiBcL1k1uXKAG60VIXd3yV6KlQ+ozlb24laJGmbrDj2hRNfPaOpuaEIe51T4R1CUnDIE37
	M2XoJ5UeJEIcVyTVNl0eNQcDY3swPMbi4wK4PTtYFjlPZxxhl7L7+GSEMuBK015cz3GQVtnVAe8
	IvaPZ6dYc9fcKrtwwOvBKM0Cnen9+wv8ybCURJuOF5DZuoWJvXrL0SejBej3CsjwPH4lsNQiy1d
	f29sVhnziPt09QwufhWqWyiaF3YFk2LgnRz+Q=
X-Received: by 2002:a05:622a:aa08:10b0:509:21f6:df9d with SMTP id d75a77b69052e-50b373f1280mr19191881cf.12.1773975065466;
        Thu, 19 Mar 2026 19:51:05 -0700 (PDT)
X-Received: by 2002:a05:622a:aa08:10b0:509:21f6:df9d with SMTP id d75a77b69052e-50b373f1280mr19191661cf.12.1773975064976;
        Thu, 19 Mar 2026 19:51:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285206f5dsm253487e87.43.2026.03.19.19.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 19:51:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 04:51:00 +0200
Subject: [PATCH] arm64: dts: qcom: patch mahua thermal zones by label
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-mahua-fix-thermals-v1-1-8957bf976c90@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIABS2vGkC/x2MWwqAIBAArxL73YJZiHaV6GOxLRd6oRVBdPekz
 2GYeSBxFE7QFg9EviTJtmaoygJ8oHVilCEzaKWNqrXChcJJOMqNR+C40JyQGuNHZ7ly1kIO98j
 Z/9Ouf98PCCScEGQAAAA=
X-Change-ID: 20260320-mahua-fix-thermals-a46cf98e1988
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=14981;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=do57YT4ZSNz+w9pImozH1M9OgZ8Lf01FwyGzCCPvR9M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpvLYVRuhZy3uXeuSFOYAZWo7WMfIvjfOfmLP2Z
 o/mwTrNrRqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaby2FQAKCRCLPIo+Aiko
 1STfB/wMjAdFeaozdseaul5xFUzGsISeyqlIccqCD5ZBn2462wXz/0Py77x4qFAK/bkInFV5qZw
 Tfrgf7ketBaaYzS/DoMANuHRfCDkQNfkP3RTykQGKXLUsKUw0XKHQhzrB02ecXRAsM1E6XJfhKR
 wAqy6DsFWLEKNWB6/zBC10zhxf9cD3YCtu9UiZuIC0QFTHxm+mN3Q/uPwmNNV9+vLSf5tWhasqp
 OlPXLefgrlqfAiLRbjvXL8UKLyMjC621q6PmmYNNxIr3J5Id3Pxy+/1JMwHhtmxwq4pAD59Ll/g
 f7LCRAbUj31f70Oy2I7QDWnmV8FPTWBbCFokGOjwjDtaU84p
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: MoHKJFPc3jZaV5wvOI6oSdUgQe4ohbUs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDAyMCBTYWx0ZWRfXx5GDIcaMz+Li
 u3xHJyvjLUmkrikUzZ4vAVu7IqdJPKXWbZGI8F/dE+W2TRvurejMBC7KXKatnec/FSMYzZFvomz
 lTeVP2YzdDQQ3ufzY6DLd2WBqHmLzYqe/BLFSvVmpryv4kT899KObor7dioAZWNA7HWZ7aAFlKo
 IS2n7y940/9/la16VGLpaB/7oHTF73OmglreV2g7WRlQzA7k11hEdl/ErTC190ZS5QxZCp7wYps
 qlvaCaf/NX1eh1D6fDN9gWf5fxqrC4InlR0a/fOHPelYO/OCivnMRxpv0gFUKtV/L0GsaR1dp1j
 BvLhPvquScloz29hnhvnGTYIlKMJcBnR3E4ZYchAnZnU2ezVL4yWUmohKXbwH6vaJJefQME3yT7
 6py4vOtW+mAFAB2wZGkmSbHeBrAZL2uafCxaMYLoChSuvxb5Nqp+bEp0tw9jKBCqb7rx6IVFw64
 wu1aWgzbDWsJXfWDOAA==
X-Proofpoint-ORIG-GUID: MoHKJFPc3jZaV5wvOI6oSdUgQe4ohbUs
X-Authority-Analysis: v=2.4 cv=FKMWBuos c=1 sm=1 tr=0 ts=69bcb61a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=Z0WwjjCtZcgC3ZFS6qQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603200020
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278053-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E4B382D53E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Updating DT nodes by the full path is fragile and frowned upon, it's
easy to miss the rename of the node in the main tree. Add necessary
labels and patch thermal zones for Mahua using those labels.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi |  98 ++++++++---------
 arch/arm64/boot/dts/qcom/mahua.dtsi  | 199 +++++++++++++++++------------------
 2 files changed, 148 insertions(+), 149 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index bde287f645ee..d0117a844dad 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -4962,7 +4962,7 @@ ddr-0-critical {
 			};
 		};
 
-		video-0-thermal {
+		thermal_video_0: video-0-thermal {
 			thermal-sensors = <&tsens1 7>;
 
 			trips {
@@ -4974,7 +4974,7 @@ video-0-critical {
 			};
 		};
 
-		video-1-thermal {
+		thermal_video_1: video-1-thermal {
 			thermal-sensors = <&tsens1 8>;
 
 			trips {
@@ -5250,7 +5250,7 @@ aoss-4-critical {
 			};
 		};
 
-		cpu-2-0-0-thermal {
+		thermal_cpu_2_0_0: cpu-2-0-0-thermal {
 			thermal-sensors = <&tsens4 1>;
 
 			trips {
@@ -5262,7 +5262,7 @@ cpu-2-0-0-critical {
 			};
 		};
 
-		cpu-2-0-1-thermal {
+		thermal_cpu_2_0_1: cpu-2-0-1-thermal {
 			thermal-sensors = <&tsens4 2>;
 
 			trips {
@@ -5274,7 +5274,7 @@ cpu-2-0-1-critical {
 			};
 		};
 
-		cpu-2-1-0-thermal {
+		thermal_cpu_2_1_0: cpu-2-1-0-thermal {
 			thermal-sensors = <&tsens4 3>;
 
 			trips {
@@ -5286,7 +5286,7 @@ cpu-2-1-0-critical {
 			};
 		};
 
-		cpu-2-1-1-thermal {
+		thermal_cpu_2_1_1: cpu-2-1-1-thermal {
 			thermal-sensors = <&tsens4 4>;
 
 			trips {
@@ -5298,7 +5298,7 @@ cpu-2-1-1-critical {
 			};
 		};
 
-		cpu-2-2-0-thermal {
+		thermal_cpu_2_2_0: cpu-2-2-0-thermal {
 			thermal-sensors = <&tsens4 5>;
 
 			trips {
@@ -5310,7 +5310,7 @@ cpu-2-2-0-critical {
 			};
 		};
 
-		cpu-2-2-1-thermal {
+		thermal_cpu_2_2_1: cpu-2-2-1-thermal {
 			thermal-sensors = <&tsens4 6>;
 
 			trips {
@@ -5322,7 +5322,7 @@ cpu-2-2-1-critical {
 			};
 		};
 
-		cpu-2-3-0-thermal {
+		thermal_cpu_2_3_0: cpu-2-3-0-thermal {
 			thermal-sensors = <&tsens4 7>;
 
 			trips {
@@ -5334,7 +5334,7 @@ cpu-2-3-0-critical {
 			};
 		};
 
-		cpu-2-3-1-thermal {
+		thermal_cpu_2_3_1: cpu-2-3-1-thermal {
 			thermal-sensors = <&tsens4 8>;
 
 			trips {
@@ -5346,7 +5346,7 @@ cpu-2-3-1-critical {
 			};
 		};
 
-		cpu-2-4-0-thermal {
+		thermal_cpu_2_4_0: cpu-2-4-0-thermal {
 			thermal-sensors = <&tsens4 9>;
 
 			trips {
@@ -5358,7 +5358,7 @@ cpu-2-4-0-critical {
 			};
 		};
 
-		cpu-2-4-1-thermal {
+		thermal_cpu_2_4_1: cpu-2-4-1-thermal {
 			thermal-sensors = <&tsens4 10>;
 
 			trips {
@@ -5370,7 +5370,7 @@ cpu-2-4-1-critical {
 			};
 		};
 
-		cpu-2-5-0-thermal {
+		thermal_cpu_2_5_0: cpu-2-5-0-thermal {
 			thermal-sensors = <&tsens4 11>;
 
 			trips {
@@ -5382,7 +5382,7 @@ cpu-2-5-0-critical {
 			};
 		};
 
-		cpu-2-5-1-thermal {
+		thermal_cpu_2_5_1: cpu-2-5-1-thermal {
 			thermal-sensors = <&tsens4 12>;
 
 			trips {
@@ -5406,7 +5406,7 @@ aoss-5-critical {
 			};
 		};
 
-		cpullc-2-0-thermal {
+		thermal_cpullc_2_0: cpullc-2-0-thermal {
 			thermal-sensors = <&tsens5 1>;
 
 			trips {
@@ -5418,7 +5418,7 @@ cpullc-2-0-critical {
 			};
 		};
 
-		cpuillc-2-1-thermal {
+		thermal_cpuillc_2_1: cpuillc-2-1-thermal {
 			thermal-sensors = <&tsens5 2>;
 
 			trips {
@@ -5430,7 +5430,7 @@ cpullc-2-1-critical {
 			};
 		};
 
-		qmx-2-0-thermal {
+		thermal_qmx_2_0: qmx-2-0-thermal {
 			thermal-sensors = <&tsens5 3>;
 
 			trips {
@@ -5442,7 +5442,7 @@ qmx-2-0-critical {
 			};
 		};
 
-		qmx-2-1-thermal {
+		thermal_qmx_2_1: qmx-2-1-thermal {
 			thermal-sensors = <&tsens5 4>;
 
 			trips {
@@ -5454,7 +5454,7 @@ qmx-2-1-critical {
 			};
 		};
 
-		qmx-2-2-thermal {
+		thermal_qmx_2_2: qmx-2-2-thermal {
 			thermal-sensors = <&tsens5 5>;
 
 			trips {
@@ -5466,7 +5466,7 @@ qmx-2-2-critical {
 			};
 		};
 
-		qmx-2-3-thermal {
+		thermal_qmx_2_3: qmx-2-3-thermal {
 			thermal-sensors = <&tsens5 6>;
 
 			trips {
@@ -5478,7 +5478,7 @@ qmx-2-3-critical {
 			};
 		};
 
-		qmx-2-4-thermal {
+		thermal_qmx_2_4: qmx-2-4-thermal {
 			thermal-sensors = <&tsens5 7>;
 
 			trips {
@@ -5490,7 +5490,7 @@ qmx-2-4-critical {
 			};
 		};
 
-		aoss-6-thermal {
+		thermal_aoss_6: aoss-6-thermal {
 			thermal-sensors = <&tsens6 0>;
 
 			trips {
@@ -5502,7 +5502,7 @@ aoss-6-critical {
 			};
 		};
 
-		nsphvx-0-thermal {
+		thermal_nsphvx_0: nsphvx-0-thermal {
 			thermal-sensors = <&tsens6 1>;
 
 			trips {
@@ -5514,7 +5514,7 @@ nsphvx-0-critical {
 			};
 		};
 
-		nsphvx-1-thermal {
+		thermal_nsphvx_1: nsphvx-1-thermal {
 			thermal-sensors = <&tsens6 2>;
 
 			trips {
@@ -5526,7 +5526,7 @@ nsphvx-1-critical {
 			};
 		};
 
-		nsphvx-2-thermal {
+		thermal_nsphvx_2: nsphvx-2-thermal {
 			thermal-sensors = <&tsens6 3>;
 
 			trips {
@@ -5538,7 +5538,7 @@ nsphvx-2-critical {
 			};
 		};
 
-		nsphvx-3-thermal {
+		thermal_nsphvx_3: nsphvx-3-thermal {
 			thermal-sensors = <&tsens6 4>;
 
 			trips {
@@ -5550,7 +5550,7 @@ nsphvx-3-critical {
 			};
 		};
 
-		nsphmx-0-thermal {
+		thermal_nsphmx_0: nsphmx-0-thermal {
 			thermal-sensors = <&tsens6 5>;
 
 			trips {
@@ -5562,7 +5562,7 @@ nsphmx-0-critical {
 			};
 		};
 
-		nsphmx-1-thermal {
+		thermal_nsphmx_1: nsphmx-1-thermal {
 			thermal-sensors = <&tsens6 6>;
 
 			trips {
@@ -5574,7 +5574,7 @@ nsphmx-1-critical {
 			};
 		};
 
-		nsphmx-2-thermal {
+		thermal_nsphmx_2: nsphmx-2-thermal {
 			thermal-sensors = <&tsens6 7>;
 
 			trips {
@@ -5586,7 +5586,7 @@ nsphmx-2-critical {
 			};
 		};
 
-		nsphmx-3-thermal {
+		thermal_nsphmx_3: nsphmx-3-thermal {
 			thermal-sensors = <&tsens6 8>;
 
 			trips {
@@ -5598,7 +5598,7 @@ nsphmx-3-critical {
 			};
 		};
 
-		camera-0-thermal {
+		thermal_camera_0: camera-0-thermal {
 			thermal-sensors = <&tsens6 9>;
 
 			trips {
@@ -5610,7 +5610,7 @@ camera-0-critical {
 			};
 		};
 
-		camera-1-thermal {
+		thermal_camera_1: camera-1-thermal {
 			thermal-sensors = <&tsens6 10>;
 
 			trips {
@@ -5622,7 +5622,7 @@ camera-1-critical {
 			};
 		};
 
-		ddr-1-thermal {
+		thermal_ddr_1: ddr-1-thermal {
 			thermal-sensors = <&tsens6 11>;
 
 			trips {
@@ -5634,7 +5634,7 @@ ddr-1-critical {
 			};
 		};
 
-		ddr-2-thermal {
+		thermal_ddr_2: ddr-2-thermal {
 			thermal-sensors = <&tsens6 12>;
 
 			trips {
@@ -5646,7 +5646,7 @@ ddr-2-critical {
 			};
 		};
 
-		aoss-7-thermal {
+		thermal_aoss_7: aoss-7-thermal {
 			thermal-sensors = <&tsens7 0>;
 
 			trips {
@@ -5658,7 +5658,7 @@ aoss-7-critical {
 			};
 		};
 
-		gpu-0-0-thermal {
+		thermal_gpu_0_0: gpu-0-0-thermal {
 			thermal-sensors = <&tsens7 1>;
 
 			trips {
@@ -5676,7 +5676,7 @@ gpu-0-0-critical {
 			};
 		};
 
-		gpu-0-1-thermal {
+		thermal_gpu_0_1: gpu-0-1-thermal {
 			thermal-sensors = <&tsens7 2>;
 
 			trips {
@@ -5694,7 +5694,7 @@ gpu-0-1-critical {
 			};
 		};
 
-		gpu-0-2-thermal {
+		thermal_gpu_0_2: gpu-0-2-thermal {
 			thermal-sensors = <&tsens7 3>;
 
 			trips {
@@ -5712,7 +5712,7 @@ gpu-0-2-critical {
 			};
 		};
 
-		gpu-1-0-thermal {
+		thermal_gpu_1_0: gpu-1-0-thermal {
 			thermal-sensors = <&tsens7 4>;
 
 			trips {
@@ -5730,7 +5730,7 @@ gpu-1-0-critical {
 			};
 		};
 
-		gpu-1-1-thermal {
+		thermal_gpu_1_1: gpu-1-1-thermal {
 			thermal-sensors = <&tsens7 5>;
 
 			trips {
@@ -5748,7 +5748,7 @@ gpu-1-1-critical {
 			};
 		};
 
-		gpu-1-2-thermal {
+		thermal_gpu_1_2: gpu-1-2-thermal {
 			thermal-sensors = <&tsens7 6>;
 
 			trips {
@@ -5766,7 +5766,7 @@ gpu-1-2-critical {
 			};
 		};
 
-		gpu-2-0-thermal {
+		thermal_gpu_2_0: gpu-2-0-thermal {
 			thermal-sensors = <&tsens7 7>;
 
 			trips {
@@ -5784,7 +5784,7 @@ gpu-2-0-critical {
 			};
 		};
 
-		gpu-2-1-thermal {
+		thermal_gpu_2_1: gpu-2-1-thermal {
 			thermal-sensors = <&tsens7 8>;
 
 			trips {
@@ -5802,7 +5802,7 @@ gpu-2-1-critical {
 			};
 		};
 
-		gpu-2-2-thermal {
+		thermal_gpu_2_2: gpu-2-2-thermal {
 			thermal-sensors = <&tsens7 9>;
 
 			trips {
@@ -5820,7 +5820,7 @@ gpu-2-2-critical {
 			};
 		};
 
-		gpu-3-0-thermal {
+		thermal_gpu_3_0: gpu-3-0-thermal {
 			thermal-sensors = <&tsens7 10>;
 
 			trips {
@@ -5838,7 +5838,7 @@ gpu-3-0-critical {
 			};
 		};
 
-		gpu-3-1-thermal {
+		thermal_gpu_3_1: gpu-3-1-thermal {
 			thermal-sensors = <&tsens7 11>;
 
 			trips {
@@ -5856,7 +5856,7 @@ gpu-3-1-critical {
 			};
 		};
 
-		gpu-3-2-thermal {
+		thermal_gpu_3_2: gpu-3-2-thermal {
 			thermal-sensors = <&tsens7 12>;
 
 			trips {
@@ -5874,7 +5874,7 @@ gpu-3-2-critical {
 			};
 		};
 
-		gpuss-0-thermal {
+		thermal_gpuss_0: gpuss-0-thermal {
 			thermal-sensors = <&tsens7 13>;
 
 			trips {
@@ -5892,7 +5892,7 @@ gpuss-0-critical {
 			};
 		};
 
-		gpuss-1-thermal {
+		thermal_gpuss_1: gpuss-1-thermal {
 			thermal-sensors = <&tsens7 14>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/mahua.dtsi b/arch/arm64/boot/dts/qcom/mahua.dtsi
index 7aa8d26b2b3a..59e771291613 100644
--- a/arch/arm64/boot/dts/qcom/mahua.dtsi
+++ b/arch/arm64/boot/dts/qcom/mahua.dtsi
@@ -20,6 +20,32 @@
 /delete-node/ &cpu_pd15;
 /delete-node/ &cpu_pd16;
 /delete-node/ &cpu_pd17;
+/delete-node/ &thermal_aoss_6;
+/delete-node/ &thermal_aoss_7;
+/delete-node/ &thermal_cpu_2_0_0;
+/delete-node/ &thermal_cpu_2_0_1;
+/delete-node/ &thermal_cpu_2_1_0;
+/delete-node/ &thermal_cpu_2_1_1;
+/delete-node/ &thermal_cpu_2_2_0;
+/delete-node/ &thermal_cpu_2_2_1;
+/delete-node/ &thermal_cpu_2_3_0;
+/delete-node/ &thermal_cpu_2_3_1;
+/delete-node/ &thermal_cpu_2_4_0;
+/delete-node/ &thermal_cpu_2_4_1;
+/delete-node/ &thermal_cpu_2_5_0;
+/delete-node/ &thermal_cpu_2_5_1;
+/delete-node/ &thermal_cpuillc_2_1;
+/delete-node/ &thermal_cpullc_2_0;
+/delete-node/ &thermal_ddr_2;
+/delete-node/ &thermal_gpu_3_0;
+/delete-node/ &thermal_gpu_3_1;
+/delete-node/ &thermal_gpu_3_2;
+/delete-node/ &thermal_qmx_2_0;
+/delete-node/ &thermal_qmx_2_1;
+/delete-node/ &thermal_qmx_2_2;
+/delete-node/ &thermal_qmx_2_3;
+/delete-node/ &thermal_qmx_2_4;
+/delete-node/ &thermal_video_1;
 /delete-node/ &tsens6;
 /delete-node/ &tsens7;
 
@@ -110,130 +136,99 @@ &system_noc {
 	compatible = "qcom,mahua-system-noc", "qcom,glymur-system-noc";
 };
 
-&tlmm {
-	compatible = "qcom,mahua-tlmm";
+&thermal_camera_0 {
+	thermal-sensors = <&tsens4 9>;
 };
 
-&thermal_zones {
-	/delete-node/ aoss-6-thermal;
-	/delete-node/ aoss-7-thermal;
-	/delete-node/ cpu-2-0-0-thermal;
-	/delete-node/ cpu-2-0-1-thermal;
-	/delete-node/ cpu-2-1-0-thermal;
-	/delete-node/ cpu-2-1-1-thermal;
-	/delete-node/ cpu-2-2-0-thermal;
-	/delete-node/ cpu-2-2-1-thermal;
-	/delete-node/ cpu-2-3-0-thermal;
-	/delete-node/ cpu-2-3-1-thermal;
-	/delete-node/ cpu-2-4-0-thermal;
-	/delete-node/ cpu-2-4-1-thermal;
-	/delete-node/ cpu-2-5-0-thermal;
-	/delete-node/ cpu-2-5-1-thermal;
-	/delete-node/ cpullc-2-0-thermal;
-	/delete-node/ cpuillc-2-1-thermal;
-	/delete-node/ ddr-2-thermal;
-	/delete-node/ gpu-3-0-thermal;
-	/delete-node/ gpu-3-1-thermal;
-	/delete-node/ gpu-3-2-thermal;
-	/delete-node/ qmx-2-0-thermal;
-	/delete-node/ qmx-2-1-thermal;
-	/delete-node/ qmx-2-2-thermal;
-	/delete-node/ qmx-2-3-thermal;
-	/delete-node/ qmx-2-4-thermal;
-	/delete-node/ video-1-thermal;
-
-	ddr-1-thermal {
-		thermal-sensors = <&tsens1 7>;
-	};
-
-	video-0-thermal {
-		thermal-sensors = <&tsens1 8>;
-	};
+&thermal_camera_1 {
+	thermal-sensors = <&tsens4 10>;
+};
 
-	nsphvx-0-thermal {
-		thermal-sensors = <&tsens4 1>;
-	};
+&thermal_ddr_1 {
+	thermal-sensors = <&tsens1 7>;
+};
 
-	nsphvx-1-thermal {
-		thermal-sensors = <&tsens4 2>;
-	};
+&thermal_gpu_0_0 {
+	thermal-sensors = <&tsens5 1>;
+};
 
-	nsphvx-2-thermal {
-		thermal-sensors = <&tsens4 3>;
-	};
+&thermal_gpu_0_1 {
+	thermal-sensors = <&tsens5 2>;
+};
 
-	nsphvx-3-thermal {
-		thermal-sensors = <&tsens4 4>;
-	};
+&thermal_gpu_0_2 {
+	thermal-sensors = <&tsens5 3>;
+};
 
-	nsphmx-0-thermal {
-		thermal-sensors = <&tsens4 5>;
-	};
+&thermal_gpu_1_0 {
+	thermal-sensors = <&tsens5 4>;
+};
 
-	nsphmx-1-thermal {
-		thermal-sensors = <&tsens4 6>;
-	};
+&thermal_gpu_1_1 {
+	thermal-sensors = <&tsens5 5>;
+};
 
-	nsphmx-2-thermal {
-		thermal-sensors = <&tsens4 7>;
-	};
+&thermal_gpu_1_2 {
+	thermal-sensors = <&tsens5 6>;
+};
 
-	nsphmx-3-thermal {
-		thermal-sensors = <&tsens4 8>;
-	};
+&thermal_gpu_2_0 {
+	thermal-sensors = <&tsens5 7>;
+};
 
-	camera-0-thermal {
-		thermal-sensors = <&tsens4 9>;
-	};
+&thermal_gpu_2_1 {
+	thermal-sensors = <&tsens5 8>;
+};
 
-	camera-1-thermal {
-		thermal-sensors = <&tsens4 10>;
-	};
+&thermal_gpu_2_2 {
+	thermal-sensors = <&tsens5 9>;
+};
 
-	gpu-0-0-thermal {
-		thermal-sensors = <&tsens5 1>;
-	};
+&thermal_gpuss_0 {
+	thermal-sensors = <&tsens5 10>;
+};
 
-	gpu-0-1-thermal {
-		thermal-sensors = <&tsens5 2>;
-	};
+&thermal_gpuss_1 {
+	thermal-sensors = <&tsens5 11>;
+};
 
-	gpu-0-2-thermal {
-		thermal-sensors = <&tsens5 3>;
-	};
+&thermal_nsphmx_0 {
+	thermal-sensors = <&tsens4 5>;
+};
 
-	gpu-1-0-thermal {
-		thermal-sensors = <&tsens5 4>;
-	};
+&thermal_nsphmx_1 {
+	thermal-sensors = <&tsens4 6>;
+};
 
-	gpu-1-1-thermal {
-		thermal-sensors = <&tsens5 5>;
-	};
+&thermal_nsphmx_2 {
+	thermal-sensors = <&tsens4 7>;
+};
 
-	gpu-1-2-thermal {
-		thermal-sensors = <&tsens5 6>;
-	};
+&thermal_nsphmx_3 {
+	thermal-sensors = <&tsens4 8>;
+};
 
-	gpu-2-0-thermal {
-		thermal-sensors = <&tsens5 7>;
-	};
+&thermal_nsphvx_0 {
+	thermal-sensors = <&tsens4 1>;
+};
 
-	gpu-2-1-thermal {
-		thermal-sensors = <&tsens5 8>;
-	};
+&thermal_nsphvx_1 {
+	thermal-sensors = <&tsens4 2>;
+};
 
-	gpu-2-2-thermal {
-		thermal-sensors = <&tsens5 9>;
-	};
+&thermal_nsphvx_2 {
+	thermal-sensors = <&tsens4 3>;
+};
 
-	gpuss-0-thermal {
-		thermal-sensors = <&tsens5 10>;
-	};
+&thermal_nsphvx_3 {
+	thermal-sensors = <&tsens4 4>;
+};
 
-	gpuss-1-thermal {
-		thermal-sensors = <&tsens5 11>;
-	};
+&thermal_video_0 {
+	thermal-sensors = <&tsens1 8>;
+};
 
+&thermal_zones {
 	gpuss-2-thermal {
 		thermal-sensors = <&tsens5 12>;
 
@@ -289,6 +284,10 @@ gpuss-4-critical {
 	};
 };
 
+&tlmm {
+	compatible = "qcom,mahua-tlmm";
+};
+
 &tsens4 {
 	#qcom,sensors = <11>;
 };

---
base-commit: 3b11871f8e473fe399fb348ea4d0c122f4c182b1
change-id: 20260320-mahua-fix-thermals-a46cf98e1988

Best regards,
-- 
With best wishes
Dmitry


