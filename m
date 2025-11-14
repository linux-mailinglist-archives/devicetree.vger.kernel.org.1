Return-Path: <devicetree+bounces-238457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDB5C5B704
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3CE4A4EA055
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE2EE2D838E;
	Fri, 14 Nov 2025 05:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WIIVqjNG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZAYSWo2E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC7D2741C9
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763099819; cv=none; b=OAaIBq3thB9G5m4t0VfRtA/yhI2MyB2wJ8gTrGaGwsJjCNW6khxSUpAUnHw73TfyMRt1A5/ifC/+kVsOCLnLYeJubLJesfVNyjlO0ddWI6gkbw/giPtefrXWpSgqa1q9ZYrbb7uHjKsT6GHePQuFqrFeAExGMCjIVx6Hbc6oVhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763099819; c=relaxed/simple;
	bh=NYENYPsMqW8kDzMQMeJHnVJFMHwo3NmspIflUb+d5HY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Wqmw0sC9VsBu2aN9DBqyHBSCSxAggjVFO/jyBfZahkDuvNCkjCJC8arBXvIEgZSrMku6ycl87wMzo6UulheG9luVvdvRLSnvl6w8/9orpNFVwu8eOFrO0p3rpsdMlrp8qvPxGnUbZ71qKahcMebq1vOUd/KWeJWsNpMgXIfImbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WIIVqjNG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZAYSWo2E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMabWH1484495
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:56:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=gvtEwgzFNq1q5fCeDy7wWOVTOsFfl5fc+cO
	An6hsGQI=; b=WIIVqjNGt2qOeaH/W4bhgbB66/6ItJgoV0xfF6HKKQX30bd+/LG
	lLPGp240vKsdN4s4N7l6R1vr8dOHWO353JGP1uAboBp/3FUqaFmjG9MVaEUAkm8M
	X5j8pecPo8VOZ6RCX5eOoiN0fUhn8Q8hJKM5W/i4lsjL+wjLPdwMFFi0WSorJBNH
	EnuoPMonKVf44+78lL8jZA4vnJE+OuzSfRSu8p0lg5XkDGTKAjBIsJNVlctUfY/T
	goGQdgqUzLbMtHfpQQthT6GPzRlsTboHVb6B3PUO2lTfecNrWnHcVgUlTe24LKhD
	9gNth6amx9wrbVobp8cdgJece0ojEnWcdaw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9ch1bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:56:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297e66542afso48445995ad.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 21:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763099817; x=1763704617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gvtEwgzFNq1q5fCeDy7wWOVTOsFfl5fc+cOAn6hsGQI=;
        b=ZAYSWo2Eesw4QhATQI8saR6BlIQgMIIId1/8ZsHYupqETg2jKqzGMnplJhAJ5O4c8z
         FEzmF16khOtRsiD92UX4/YUT+lfMaykU/pU5nUXk7sibHfoJMFeQ4Gj4iyRRwC3afRtr
         lTlHoKLMYA7M3DqAg0h018PoTPHv6Hdb1A96ZNnvXtxuWuSls1UJc02kGTj16B1Kqocc
         UIN+37C8v95VncwQ1xWzp3PDGG0ihRsXwNJ8HFTW4CdqG8AcpjXiav/dZiGQiJMAjjEE
         9R62sjOJhkergSQZugr7crWXJpgPYIBGUtELlXHZIittEAfT/XzqC9UNetfF0sWdiCxQ
         fgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763099817; x=1763704617;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gvtEwgzFNq1q5fCeDy7wWOVTOsFfl5fc+cOAn6hsGQI=;
        b=e3souXmOAzo2Iok39SI1/gZmMGz9681VE9dalMIdekIVDDj+7hRDlTT3NuJnKyq98/
         smxNxBpnpZKFgcb4+OUIgtMNOviX9EYuikb7TQYOUguNdzO+EJjrB9OPwOLZYNlJ6+3C
         bJaIUAEhSRgmLyjD4IvP2uWWYek//s6YfY2CQAmUP/PnOEBUxqSFwJ0XDVdBgKO+jLnM
         F9K/WevBBR0dAWoOfWAeG2h4BTFUETU75kDduYN8IuYvL1gXGgUY0GukMvgt1mn1tJvt
         HYIBYV40YhssUNHfyCJOVqHtYrNC5nsIw7JLeN1Gb72xQBoHVTorrN7yqT9BXVAGUmvx
         Cd4g==
X-Forwarded-Encrypted: i=1; AJvYcCVcGjIkE6KfN7WwT/NZmsbyZ+3/zC1zqxIVySwlTVEoeSModrmhrQWiPhLkjkqMCv1dZTdwg6hwdE/K@vger.kernel.org
X-Gm-Message-State: AOJu0YyQWyzrd12JO38mRxI84J7Uv1xC2TqJXzs5I8CPQcima3lJnIW9
	O72YFEKTU5IHBSnFL36zlUAIRoM/dHINrA0cPFALGERw+3/cWUc/rJpsV4nYgT1yUce7goyMV87
	JjJe2soUtMjOl7K4cYaJ2+iOsjqLGc/xM0KN3I7/8/vZ3wD+0Aj1XQ+m2szWGtj7t
X-Gm-Gg: ASbGncvWcsYvgtEkkOZKUMv4H0flP5uWAhz4Svu0IckCXOARrVgV1DnrIqtpL6x5GZi
	elsfTdOhNIozmJlu7DKLPLGRRqd2kJlTlO4yQ93Jtwy7V5LvAvpMrzTvT+3merI0pvsXC/OkZbm
	oahcH0yx4nqfoz95b94xFGJZx/uwRMX/+jOzbLM1JFyjYhcSZ12M8/reMMo+orxVaZM1GlKExUW
	975BAT78a6Ua4UT5fqfguPxB8z5lAjwtcgvHAqw9oqqF8LrDypPgnj6Gytrg+9OO1/9Mk2t0RcR
	L8A+DxmspoDYWGv3RyF+9CQBEXI3QppocO92NujQB2dNK0YVmOVv4gexgW3U2l8eyHhDB5A8G6f
	YBgYz7//N3L2FdummZF0t67wTnVdx+lN1TwfEqZucJliHdIvyNuP8D3F9pW93kUWCLEgy6CQ=
X-Received: by 2002:a17:902:ebd2:b0:295:7f1d:b034 with SMTP id d9443c01a7336-2986a6b851dmr18732265ad.4.1763099816761;
        Thu, 13 Nov 2025 21:56:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJJqlIQXHaRJWZaTTa06jfV7aJTXh3fkos3M8ZJPFn3B216IgOm0I6AYwA6IWRJT4/ptLT/A==
X-Received: by 2002:a17:902:ebd2:b0:295:7f1d:b034 with SMTP id d9443c01a7336-2986a6b851dmr18732005ad.4.1763099816280;
        Thu, 13 Nov 2025 21:56:56 -0800 (PST)
Received: from QCOM-SocCW5bzXR.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc375fe4da5sm3677837a12.26.2025.11.13.21.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 21:56:56 -0800 (PST)
From: Jianping Li <jianping.li@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Jianping Li <jianping.li@oss.qualcomm.com>, ekansh.gupta@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: kodiak: Add memory region for audiopd
Date: Fri, 14 Nov 2025 13:56:39 +0800
Message-Id: <20251114055639.1050-1-jianping.li@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: B2WF0G1Dl3NBz1UX2UURFsMVHRzq2wPL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA0NSBTYWx0ZWRfXyxk0QzV0mi+q
 PHuMUXxesyL9pY6I+ePB7ckkOvxkrmUxe1nHYbmZNmao5XmjAMOn4g1AUuw9BG4iue1sFFFRguz
 N2wkJuV1/9CEgjzr36MR3M5XbNqRVWeMzGxCOp5X1OKDv3pOXfeWSReknehrQ3XjaDHI4cu4ZRT
 EVwWWiTRPY385VEUtESACeQVlWPb1+oNFzbJQoL31596V8MNSm70QWZedj4dD65GzO+dDRll5Xv
 Gs6JPL2w9yZQtIJ+NI+Lh0IZCyNPSnhI2XNaunBZFb9MjH1MiHWJ41N1BFLAZtd/pAKbPdg4Pcy
 FCcCLynKIgVmGKgl6VSqdFe1zJfgLhfpondoKTETm/v3c4BL3Nnjv4gGzrfES0t4mPHp9bUugkW
 o6ZfbISw/ntYj6wWLkcViE/uvOCKPg==
X-Authority-Analysis: v=2.4 cv=MNdtWcZl c=1 sm=1 tr=0 ts=6916c4a9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=44lrlEWlgvpwheegUTsA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: B2WF0G1Dl3NBz1UX2UURFsMVHRzq2wPL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_01,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140045

Add reserved memory region for audio PD dynamic loading and remote
heap requirement. Also add LPASS and ADSP_HEAP VMIDs.

Signed-off-by: Jianping Li <jianping.li@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 3ef61af2ed8a..0cda9af98dd2 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -190,6 +190,11 @@ rmtfs_mem: rmtfs@9c900000 {
 			qcom,client-id = <1>;
 			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
 		};
+
+		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap@9cb80000 {
+			reg = <0x0 0x9cb80000 0x0 0x800000>;
+			no-map;
+		};
 	};
 
 	cpus {
@@ -4139,6 +4144,9 @@ fastrpc {
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
 					label = "adsp";
 					qcom,non-secure-domain;
+					memory-region = <&adsp_rpc_remote_heap_mem>;
+					qcom,vmids = <QCOM_SCM_VMID_LPASS
+							  QCOM_SCM_VMID_ADSP_HEAP>;
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-- 
2.43.0


