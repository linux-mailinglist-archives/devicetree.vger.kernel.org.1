Return-Path: <devicetree+bounces-259258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ef/II0idmlFMQEAu9opvQ
	(envelope-from <devicetree+bounces-259258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:02:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E83DD80E92
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D69F3305463B
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75BA322533;
	Sun, 25 Jan 2026 13:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gVaHSc8+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aa9rGIEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86132320A37
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349478; cv=none; b=F+S+2gMwDxBW0udHyZfPWh+v156p3O9WdSCd2gIpQAc8E3hou4eIn0mI51gUar6NonWRZGmnn3NgOgjAfT2PjVSJ/958N9Fz4ZiXaiLw54bGWAfvxXULLlooOXXmaQmyut3r8036aSCV3Nz7wTobAxMnq7zNlu3Dji62EWg8eSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349478; c=relaxed/simple;
	bh=KR51sK/8+Hrks/YLV+YZPJvHG7uJqvASVsBsq8BP4dQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aBz7GXZbdff+A9fU9sg+rQJ0mt7pbqYZ7DpXfGyMmKTQikDd8gDpDvGsf83nvQX0C8fmj4pJuZ21uYTDoNPgi8LvA4u6MM5dIak4FE6dh7zQ1IvdWCVXzl/YzxqxN9zJXyejSPEW/PbbXD3eebRodGL5pOAqIjZGJ9WkpMC/yM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gVaHSc8+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aa9rGIEf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P7hTxJ3057008
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6EYL9Fhq5znzCwCxTjLpT+asjrYPIFckBy8iTpWZyVA=; b=gVaHSc8+6WiTwgpD
	7+Iwfx5RiBv9PfpNlsnGtxLP61tOw6k57zvvf5wxq1su25sZg0P5nhsSes0gmBSG
	CVCgvF8S+NEbP3fw0hRsz5na79IYod8EzImxVEwIxSYeOFYSzj7lFgTIxWwsG2Ek
	5zOecrlV4K+mh8Hx9UVnnLfxF6+7KISjBRXjk0dUc1S3BoZqmjD9F2CJ/GhJLJuQ
	zFl1NAtA1ATFUBiXdQ7XoRE+1ZeKIAvFGIQriTYm7P4uw6bGDZbj+ryTEooL1GeG
	zMfykst7ljNu91aGpJ2/Fcuy2VsZbuNYDXjpZf+O3YkGh0Fx4WXpXWsPS34BAzgc
	wM5B9g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9qj64w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52f89b415so323983285a.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769349465; x=1769954265; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6EYL9Fhq5znzCwCxTjLpT+asjrYPIFckBy8iTpWZyVA=;
        b=aa9rGIEf7weDhNofm3E39utSte1bSvybX9MZLB5Hakfx5xYaty8SsM7B/ImOK+t+56
         hWLNvw4uS2Ce4Xzt2g2KXw3v57MUm29eO6kmabJDNHh2BU7nw09ZphSFZmktql3iiGOu
         3UHho/PDQZvHrIu2mYIgAbS8eg0FCHLjLqKT71K8RNMl7qU641oZIhtHvpjDBxxtElpR
         meWGfIFWyryewnzdG2q3Qd5IY3hTALzI+ciS788o0S8PiDZbVlB07q6w6XM+FRBjdK3d
         mKaDWRHLg64zoEz3cheM/MLQhhfc3veSW2yv4qcA+/NcSNhntKt6hZBU+91pSY5GneQg
         sqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769349465; x=1769954265;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6EYL9Fhq5znzCwCxTjLpT+asjrYPIFckBy8iTpWZyVA=;
        b=cEANZrZoyVDEX8b/MTw7BPK1vx43wJuzX0mDND+OpGA0toDB9IH2I2nl1p8N/kS5XT
         uMzOeSNUBMQ6MIfxM4OXDHeu0qbnNF/+3qiOTzvon6+f242d7/HnFB4fkHey3Cpdudtw
         ekgAd9HrkhoO30RE835/IvtzEAkSVOUPs2azlkO/G0JDNO62bUph2JGjB9SQobgjndly
         dx32C9A7P4V/JP2tjJ9qkkzeNCH1Vb9CyLBe+bcoqOwgLj+SK5LVECb/totzKdRaA/Mn
         ZU40gUlF1r+35ZuIOcvEWdd7bPfy+Zrh5jlgTikwGtDvVI5SBFk2LCQkc9iejJzRH2Wy
         kR3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWl/syb7dYtQsrZgaaYLUDzYTfFLJsvsTOScc3I36fxPISB6SygLf7Nr+UReaeNz6pG9uzqwRIBKqCw@vger.kernel.org
X-Gm-Message-State: AOJu0YxA8nl8VQ3J2eYXMGQ79lP4RGrhW898AO5TafCicg4+z8UEOvVP
	NJyNiTIlv1zPMQw4334BIK1FBY0cKaxQw3W6ikv7vZTDuypGYVVi2KwOPXlSVfRZdEVo7nKEmGG
	4H8FkM/lWbjHQOxYj96n7c4mzAvsMzPMymvMFHFWz+9QlJ8VZf7tlKVPqNnucfEueJWfvb1ab
X-Gm-Gg: AZuq6aLwFbGTmpHpeI5pM4/u2cdbSjxuqJTzhtLSlumAO8qgTdH0v0ikYJ7tITzIBcK
	zFOHzocFPZ1hZ29p0ppw12ItrdGae8k4/lS5F4eKKKhEiQ8Z/88OD2ks0DJetLJQh6XhRfn5ge0
	OeCRc8n4UyiciwPUJXKxHVgFxE/C/9W4ozKX6/79CzUOuQakKpAuRsmU3Ziz+uon+n9Cz6sHVzn
	z23TKuuebb8Yx/UkCXmwCKCvB6c2KH+CWTl2dwQUwa6gZn6KPgYIaPVmBWtEYehj4jC1ziEQb2U
	f+dsLBiX9NsW8hL13oKKlbHXDeWCU98iZL0nzfPD0l9W6Enll1bEdrPhyT0R7kwBd1b8RztVMz3
	ZiP3236trxU6vFeSXX/Bly8dCY+1yKN+ovbdaNWVM5KiQG1ngJxDVJ3S8XA66edmfK7j96hi5qD
	TVazwzAVsQBYvHYEFZ+1Thcv8=
X-Received: by 2002:a05:620a:3f97:b0:8be:6733:92ab with SMTP id af79cd13be357-8c6f947bf2bmr174244485a.0.1769349465060;
        Sun, 25 Jan 2026 05:57:45 -0800 (PST)
X-Received: by 2002:a05:620a:3f97:b0:8be:6733:92ab with SMTP id af79cd13be357-8c6f947bf2bmr174241985a.0.1769349464646;
        Sun, 25 Jan 2026 05:57:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918a3asm2033621e87.52.2026.01.25.05.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:57:43 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:57:29 +0200
Subject: [PATCH v2 6/7] arm64: dts: qcom: sm8350: add Venus device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v2-6-552cdc3ea691@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3081;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KR51sK/8+Hrks/YLV+YZPJvHG7uJqvASVsBsq8BP4dQ=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2aZopv7i9X2V+RCw6b7uob8y2I9sFxvr//2XLX/f/e6H
 hbQuTK/k9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATYSrhYOgT47T6cuDmPedL
 oje2zXh+0s024b7YzKJy/0cr5M2TtnwzE78xde5HB+uIj41sP3M+R1UV+rxwl5jim13CNPvng+h
 SpqnsMexL3MT3bdr2q7p6fsPas1nSb6QVTGdOCnRVyxV3Ukt69pql8vHKa8vKHqw1vbLEj/PTKt
 7qmi+6Qh7C7m9TX6vG+aoLfWNcyjUjdkJnQ9LirEr/g/LVgqu3M/y6q2KaEKbD/j2ysFpnnQ8HX
 4xD3Zrc1lBpsbnngua8sJ6yZH+3zvN7J/gE+39KnpfzVbMTO9vntTfB5oAph4+loiCD/tYHHUrb
 amTWqZYuaZnyZ55dr170lisPjqV3Nyub3HTj7yhennoNAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 59E1LWq-Zk3PPY1v1452oZLg1J1DgnWR
X-Proofpoint-GUID: 59E1LWq-Zk3PPY1v1452oZLg1J1DgnWR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExNyBTYWx0ZWRfX6n9gZDsDAwP7
 KtU+jlBmUnaSuQqBJVreTW3398FO9tzg2FT3Benm2sZIMKKgp7ZPUobKdnRKsNlvq0/HF/t54sj
 DYoej5EUY5NRXIJLLshhdl5M2lV6FZbC9+yJ1XJPPHMVc90zHc0lEz9ldW+wgRWsxYm4EtweMlu
 tC+10n2ZLU9AUjdmrErYTHHyb+jFHoWzZPHyK2BDf/OeLEpD/OoeVF8LIfeBzpPiSYI5oSRIhMi
 6vbKk6aGK8bVDRJXEULe6muN//j3hX0lzexr6hCjNtQFMqkUCEI5ndrHfS3Hn9NIfwcpvIGwjvT
 wFuQ59O+t21MV/XxyzJUW0ptSdpTCTU+EWcbw2kSkcnmBDxgXs6HChpvPwxqnv1pgz9/gSK3Z90
 RGEhGtp8GGquEW2+jqDb+2NtFRhCSly+hFagYgPDa7dUpTDSAuO+SpZ85P1IssBFGwxDJFibuBr
 Q12HbG3Ha9WJ9x2r0tA==
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=69762159 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OyNfseFvsq6WzarXZFIA:9 a=nwUz52_nThrR2rjS:21
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-259258-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,a800000:email,aa00000:email,abf0000:email,ae00000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E83DD80E92
X-Rspamd-Action: no action

Add Venus and video clock controller devices, describing the Iris2 core
present on this platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 73 ++++++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5c8fe213f5e4..7aa43e3a274f 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/clock/qcom,gcc-sm8350.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8350.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sm8350-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/gpio/gpio.h>
@@ -2745,6 +2746,78 @@ usb_2_dwc3: usb@a800000 {
 			};
 		};
 
+		venus: video-codec@aa00000 {
+			compatible = "qcom,sm8350-venus";
+			reg = <0 0x0aa00000 0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx";
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+			reset-names = "core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			operating-points-v2 = <&venus_opp_table>;
+			iommus = <&apps_smmu 0x2100 0x400>;
+			memory-region = <&pil_video_mem>;
+
+			status = "disabled";
+
+			venus_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-720000000 {
+					opp-hz = /bits/ 64 <720000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-1014000000 {
+					opp-hz = /bits/ 64 <1014000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-1098000000 {
+					opp-hz = /bits/ 64 <1098000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-1332000000 {
+					opp-hz = /bits/ 64 <1332000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sm8350-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,sm8350-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.47.3


