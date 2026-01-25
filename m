Return-Path: <devicetree+bounces-259257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AN1DB40idmlFMQEAu9opvQ
	(envelope-from <devicetree+bounces-259257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:02:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD2880E91
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C69733054612
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A75321426;
	Sun, 25 Jan 2026 13:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqMm/KrK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aIkbhsMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2D031DDAB
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349478; cv=none; b=l+PS9pYTU21BinzlAivtThhgEwMaQzopgLd3u1k9FdhL0/HTGsz9R4sr5pTX8G5JWGuICdmjRzsF55e44mE66od7lnSR0g7svwmkHr4JV2Jaby0Qg+L12hUHe0jZwUaiwuBv1619lKPXy6Nm8gscwyXOKLAKUSaTtk62DU1qF3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349478; c=relaxed/simple;
	bh=tlqsbZH3GVSIvVRdmUychoa8E6W2HNGx8SV90Y2uqks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CPu6vOjkVBORjCf/mC5HEsz69ZY6s42TOxrcFk3T7VVhk80AA27nk1CrJQMv0GtTlG0cB+Ysf+DzyjacngJcHNbZzWeYJva0xjj1D9+yv+Co5Z0aDucl1wStUepxFq7n1frGPZ1up0MxAsp6cnznWXGtcWLx3s6FLSypxpOirak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqMm/KrK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aIkbhsMZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PCiXM32982992
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/P7AMnIG7+WRju9MQzPkvgMl+bPhQN9IN8sOlv+VN1Q=; b=iqMm/KrKlcXRMqX1
	qEWGjivNzCILRKGNU1uVICmBYYnq8cpnDBOXoS+p3OdFaecsGRsOF3oqIdsLeGfp
	7vZta2YVmtjCqFkBtL99G8tKvpTePqWMSkHNH5ZyG97oqu0oBOvH+EjuXvyas3Zz
	x7avW4Sq/8+rO1LL8dtrwLWegUeqzqrBId2WT89dYZLej6HSjnbyF7ufAWBI7hi1
	L249rxdv49J6NZMy8gZcvS6J8ZSahkEA1tY+GchsrEQX9e2Pn+5cNBFPNlY84vwk
	MLQtIE/58lsmjcyZhcJ+0GJpjsnsxU5Ao3PG3NET/5fnSMjuHTEoAyOQn9WS+x1e
	Ldb87w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq24j6ym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so970340585a.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769349460; x=1769954260; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/P7AMnIG7+WRju9MQzPkvgMl+bPhQN9IN8sOlv+VN1Q=;
        b=aIkbhsMZdaqBMM2rK+bB5sodVIsQxPYoDJLy8YjfFhmz6PKJqBFzhKxAU+Fju0RWMt
         PsGHXPdr/KVJLPFoyF2FqY7VLiQWoutvAwJe6DKllGcl4V0eCcs3dDQWxl9nqGrqlq+F
         bvcEawRqWVD7sBl9v+MbNXneRZdxlmoXjovOGF/g9toRRiDpm0jaZQnXhf0/5IlHv8GZ
         jmVnUAZvP9HIePgHykE5sJrilechk47oSp7p4keJjeqo6/w6yLjuQbPF1pT8mu4nO9Rw
         NeTINYY+ABVNIrx4caCFCq3m05cGzTdSzjnHsWD1TYffqIxFR3iy6xsxaTNpB8+d3Adj
         f56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769349460; x=1769954260;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/P7AMnIG7+WRju9MQzPkvgMl+bPhQN9IN8sOlv+VN1Q=;
        b=Jd+n4VS5HWI75vb9JhGaMRWj/sWuPYLVQwOBJ97lD8avLeAIonmH9cDo/hKYC3r0D2
         8EC3W11CXA82W3ZC+J1ux8adRzeYzG5dK9jeRWDtGPhNYeuyURGORE14AfKUFCVDX39z
         BnjkCH/CFNVsktcRH35HpUTO4humB5pJMaJJ1qe+Mipu5p46ybrnsdccJxPrIaifRLKM
         3hj6Qk9ixF37EKXWjjHbtBx2w2NkWjD3eilK/RqDWrr9x/pSf1ogBZ8WiLcLrY+6dbtK
         Di2Dkwr41UHARe6GcX8GfonANoFT3zYhuNLR5zO+uKT/SpWmwgd3DIqSk2NBa+O+i/RB
         k/vA==
X-Forwarded-Encrypted: i=1; AJvYcCXHm0MbA2m8/gVlpwheu+bVs+gisMswI8/hUOSqMYTp5gO4ULhqMHOQnhfBXIofJxSf4ZU+hG3wWhXs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6LxnJKgHTWFBg+/vrwTh0ULJONlN2AyXu/nCusgxTEaIvvpDK
	NFXQeojfSVHN89nDn81bKc+kCn2hoaJNyV/9vecoMfriXgLOhY+eY34b78V2u6QBdJZzQP7QEbH
	c5oo7wmQiwnDLmHE82mXVsYjmtTabS0xJfIi587yhTt/Pro++CJESSkAOCMkjL5RaFIuxDno9
X-Gm-Gg: AZuq6aJjpyTASCVG3PwBN7BnPS9veG/g4EwMg2DsIGz64svTyd9huDd2/2VnAku48Q1
	DrfY49dbtIw17Fx8H+vdtaWR1knmxBvWInSG0DUaMCDk6BYMUPeeDdc7whstoTt2qTc8Bkf7nuM
	sO3uok5GpkEFgj+U8DDIQGWVGJ/sz/Yeuea/4HLE8JliRmTVdTBcFvW96LoexXy9iJJDhwEmWDS
	+La0HsuE8BHMBV74MF2ZPtekN3me5le3oIen4IKWKPMS1JkV/TCEKdEQfWLuKH4uTGz19zluAbB
	XE1Ad5gb/Bdognm3TS1t5PD4fUBzWcYWB83DQpHefP2d2vDDm0bKDxiVZOrUCEum92TjnOEdc+3
	r4hWyR8pdTVa7rUL9AxtGR7n6F4PhF8Gve/Kw98632HwcUstpkaNYz8s//DWEcQXQQcnDic4+KU
	IcCNY9ks9jySsjV14obB/J58s=
X-Received: by 2002:a05:620a:1914:b0:8c6:a723:415a with SMTP id af79cd13be357-8c6f95649b5mr184389685a.11.1769349459962;
        Sun, 25 Jan 2026 05:57:39 -0800 (PST)
X-Received: by 2002:a05:620a:1914:b0:8c6:a723:415a with SMTP id af79cd13be357-8c6f95649b5mr184387685a.11.1769349459542;
        Sun, 25 Jan 2026 05:57:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918a3asm2033621e87.52.2026.01.25.05.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:57:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:57:27 +0200
Subject: [PATCH v2 4/7] arm64: dts: qcom: sc8280xp: Add Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v2-4-552cdc3ea691@oss.qualcomm.com>
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
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4083;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=uwzGdj/l2lleZsXaaz7tMKvHRtkCMWu9yBtOm4qdOx0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdiFGIgqwnDVZiYYo0AUCcgQ9o8obcBBwY8G8t
 pxrmqXgKu6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYhRgAKCRCLPIo+Aiko
 1fybCACMsctSmGtY51VPtgAGOM3feMdyrsLy5Q13LQMOTLEfqLsc0YhHBjrcxbWT/qjMyCm8UbO
 tXknmoro7hvJsIfr4Ni/KLFLK6s09xkxfPH9TjKLCCFRXjDMvFMb4sR0XswASE02gmVe9Zudjq8
 wUIKz/pOnZwmxFb/pwRPC1PWmkKwZ3H2l5MpwXU0HGdPK3awXAGAcLmo4Jq3OIe3KTVNQDk52af
 nLyBWrkLpxjTKh3qiQkxKR/ii1nosU9tmrrGq6NYVLkWIgcgLkbUeFgwn95jcr3UX93mzSG/XZt
 CMmT8ecMUIWMJ4ij71b17uARZP6dCoXhf93KsHmx/CBn2P8P
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExNSBTYWx0ZWRfX/0EVyd5+SHan
 qsCY+0DgmbuXgk+vUK4d9/NH4Y/lpbJxE8ivOyxkU5rExmEpWGejma4p8TfVWWGeSF36R4lV5fs
 VAx9IKwU79mXRgdKHfAlTuQn3Hy/JwWPR11oS8fpt1ZZGyLU2t6jyu/GTGBR2+vQ3GaDyZhBxJj
 yTxlE4D0iis41I66OPCAIfFC1TtL4rm8sKy4MoF2iyyVxhG0y6CTUQ0yxCpZQjxNudIqiXlGeNb
 jmbgtfNf0HvCqIDUX+0G0lgi9d5bj/AmeSrU8N/bj2HhS2sBYTGWw3nD48ZnFPVMbR/9R7bq/Os
 fgODwynr85KkUdRWhjMzhNVypg6zmUsqz0neESzV5PDBCFPfhnqa9f7U1PVq6gsiiLY0WBhDQj6
 R0bBZty75wXnUPmZAo9vCd0gxWU/1E8qwwe+lbUKinhm6cEb8dwmB/IG1UodI82sIFup8OCsZqP
 OAxO6FDTiQAR/Z+xRcw==
X-Authority-Analysis: v=2.4 cv=EsXfbCcA c=1 sm=1 tr=0 ts=69762154 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=GiR9guPQU3y8euSElqAA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ADavpA4qZ_TqoUqhcZgy2pV8v-9Q29eD
X-Proofpoint-ORIG-GUID: ADavpA4qZ_TqoUqhcZgy2pV8v-9Q29eD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250115
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
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259257-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email,5.42.239.224:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ac4a000:email,abf0000:email,86c00000:email,aa00000:email,85b00000:email];
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
X-Rspamd-Queue-Id: 4BD2880E91
X-Rspamd-Action: no action

From: Konrad Dybcio <konradybcio@kernel.org>

Add the required nodes to enable Venus on sc8280xp.

[ bod: added interconnect tags ]

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
[ johan: use sm8350 videocc defines ]
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped video encoder/decoder declarations ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
[ db: dropped llcc icc, switched to sc8280xp compat, added more freqs ]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 89 ++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 41c57e7dc433..66a65ae50f00 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -10,7 +10,9 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,sm8350-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -691,6 +693,11 @@ reserved-region@85b00000 {
 			no-map;
 		};
 
+		pil_video_mem: pil_video_region@86700000 {
+			reg = <0 0x86700000 0 0x500000>;
+			no-map;
+		};
+
 		pil_adsp_mem: adsp-region@86c00000 {
 			reg = <0 0x86c00000 0 0x2000000>;
 			no-map;
@@ -4181,6 +4188,88 @@ usb_1_dwc3_ss: endpoint {
 			};
 		};
 
+		venus: video-codec@aa00000 {
+			compatible = "qcom,sc8280xp-venus";
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
+					<&rpmhpd SC8280XP_MX>;
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
+			iommus = <&apps_smmu 0x2e00 0x400>;
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
+
+				opp-1599000000 {
+					opp-hz = /bits/ 64 <1599000000>;
+					required-opps = <&rpmhpd_opp_turbo>;
+				};
+
+				opp-1680000000 {
+					opp-hz = /bits/ 64 <1680000000>;
+					required-opps = <&rpmhpd_opp_turbo_l1>;
+				};
+			};
+		};
+
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sc8280xp-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		cci0: cci@ac4a000 {
 			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac4a000 0 0x1000>;

-- 
2.47.3


