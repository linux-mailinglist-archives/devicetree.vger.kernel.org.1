Return-Path: <devicetree+bounces-260668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOnhI3WmemnF8wEAu9opvQ
	(envelope-from <devicetree+bounces-260668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DDCAA29A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1535730067BE
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981A72030A;
	Thu, 29 Jan 2026 00:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VvZGQPoM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PCxZmlO8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06E2126C03
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645682; cv=none; b=OEVxWx+y7v6QQYVTrEbbM0wzSnmVGnGPTNxm4pp6vg4WyKOF5ELVCW0GzI42gaWXpV8UG1ITY9IHiy2V/HTSS0Kw2qWtywH91R0YxSYdi57kfPYz4M0zlKO0g/T2UCYF6Ak9WN3uIQqoCMMqfHrkQspdr5z0P/Nb9q0Jlhfneh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645682; c=relaxed/simple;
	bh=5eJpKmuxLbItsTepk0X6pxPGIn4b/43Nvx2usVbaCUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VWqIzw81mK3Dd589VEfC4ok1JTjZBJLwnuixbaT+/GD/jnZbrPSygAGm0mvN+haRmGrLt3cdepz5YsPrstGR/rX4LVeZ9vevCIRJ3zja/A5+yjdlcsm8inf+/x3L+8xLDTnrbFd5CwJc3LBJpFSkiT04XUp8CipMaSW5Iy82r1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VvZGQPoM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PCxZmlO8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SN2UQv1084641
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NHSUCfK8Nhv
	ZQ9rhTXSrpdwuyAZsjwZ6PUcEgeBxSko=; b=VvZGQPoMClaFCvQohw42lwujPJD
	2gGDmOrTo3QRYDaZoGQ9PrMstd6DIKI6UZAVY5m6F2Mqc1WkkgIZqV/ayZgAbIFd
	m8NyevGeixJ2di0dF8HhRXyboddJ5W0d2gQOXSVeTQQ+FdtCKDa1Isd/Aw6luA9b
	pEezqEv+34MhCeNxtJoSxFPT+41I6Yakj95m0mOZOqXzHOOHVEbO6H0NRO++rE2F
	AhsUbRZ86IvxThdfEPhlMLoqRXb8qvDex5FVYWCkOw3Bg3cEgeSdClyxmGDgzHix
	uhXqXCYMix+cxJUi8vsAK7/Xsv1a3mmBD2NRtQfw0DdSDFcoL6InXHBJh7g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byusfg4y9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:29 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f25e494c2so3951645ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769645669; x=1770250469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NHSUCfK8NhvZQ9rhTXSrpdwuyAZsjwZ6PUcEgeBxSko=;
        b=PCxZmlO8mLbRh+b/PmJtzzYI4DU7PM57/0LGUnSw5aN9uJzHM7wCYMNAQlt3JXw+vM
         unJxmPBSgxyTKf8pjjtLDfPUv4HV0WeGv+6MGS9JVbFKAPvfBUEPQwNvw6oWzgLW++4X
         Apq8oqwqrB9PJzyCDLIqu9P/JlAtQ9Kwydgt6dTRqeLDwjVpyLhB60k7igk3nYdjy1Xc
         GfqayQFkmfVZMJDAs1dyTIFQx0hwEM0mXmao23LYW2aUHzKAeMy5URJNu7kxGrHDfpMM
         IgNr0Q5D84B1aUGuagiyxMmIuubTs+Hg7pEPyKfUgx6SjZyv4KbOkE0r9vBPua+CgHly
         lvaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769645669; x=1770250469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NHSUCfK8NhvZQ9rhTXSrpdwuyAZsjwZ6PUcEgeBxSko=;
        b=LAoYd07MECzUoSRk6ELDgFIKCC8I0LbKk42Aveu6a62VXTI/Rep2XjPJMkLXrekyPD
         KzXI0nEhYabtKLiiOwlhUlF4NCESAVRV5PM+pEx9HzjSNwpt/81ufcrRb2ODEr2Ne+Td
         LfLoV9UMxxGHY/LcwaEMi6t4y8M5jqIRI26DNTvfPiOfaUK9otOCzvCYNV9PaZ2zwCy/
         iVvoEBJu3+seV5XTt3kMFi2LIhTu3g9d+NIMfD3UCwDNlCf8oUHVlosiPM+XIP9MQp5H
         hutMTGAsyiqrBKWVktMtLMpEMoyBXJ8tQAtrul9eJ9Pd1HsrUGQjkqwdU/i5hjouaM+S
         OcUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxDYn3XlyX1B7UXTa9lieGYi8tnin1b6mCD/uPEHQDkQAyXm6sSsBzqZUEgzYtyZyBDLNMuL8ANoaa@vger.kernel.org
X-Gm-Message-State: AOJu0YxwnKWD9je3URO7nY2rMxN67z6DzlKOqrFW66MI6YxBAofVdfXw
	y4V3yCwvxE9utwlE8Zzb3tJ+trV8TJStWYH9KMvGM6X0Izan9pfCd1uYXWDhIcfvUx6RFW1DIq2
	gmUT2hwVFfPdY8520BIHfRPXAqO8PfTKCsSx/YNKXe4u0eR+NIeYjkepKbbx3NxGm
X-Gm-Gg: AZuq6aJHSh4ZW0ACM2tJFYtTGmg2f3qKh1JqIsJptnwxT06Uq3ghSgjmFtSkfwoozp6
	4Jr9TxVu5q2u+6AlzNvrciOU4AEF7lvuvX8ZJMDrBJHodibgJ65JQu2gltUkO0vaqUP8ZWCGfEI
	TrwskjtsKFBOdMOHMU0KnhnIN3HYN4c7TBlhCDPHWPBSnefCOrpH7O6LBMCJoIvmw15IZGWzhXH
	258gBw9Xvedv0/z0dtFCVvZc2Zr0+UTfQjPZ/2n8k0iR05XU+f90I4PqciItRnfgGRaLbwXjslU
	TSMMtN4TPs4ipMIOQr3Wp9wpGp7V++C8R9loN0SF88BI6Knzi8EkNT6BxsyVNu9UWO/tNiZoOmF
	Y95muJQG9VV3vhVFY88AWvlz+yu8a8LVpC/GAiLIV9Y6x7NIhHODWsMVR9nZPsv2Fjh3Plskmnn
	7PZfXSk+Sdqreg9C4t+O4zWfgg
X-Received: by 2002:a17:902:f541:b0:295:4d97:84f9 with SMTP id d9443c01a7336-2a8bd502962mr9310515ad.26.1769645668553;
        Wed, 28 Jan 2026 16:14:28 -0800 (PST)
X-Received: by 2002:a17:902:f541:b0:295:4d97:84f9 with SMTP id d9443c01a7336-2a8bd502962mr9310375ad.26.1769645668069;
        Wed, 28 Jan 2026 16:14:28 -0800 (PST)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b29sm32055845ad.54.2026.01.28.16.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:14:27 -0800 (PST)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
Date: Thu, 29 Jan 2026 05:43:58 +0530
Message-Id: <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: NYBs14zln-u_q90noEmGn_TxriIYyktO
X-Proofpoint-GUID: NYBs14zln-u_q90noEmGn_TxriIYyktO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDIwMCBTYWx0ZWRfX7berJ+qJ/Cpn
 3ukAkbAzLHT7k1Itl3zdwpkhd91bRI+2k1JZIxfnjABGBQI3SFrYOh2k2rdoCWAO7My/+IfjskH
 pBLyLAYTuTFopcUzC+2XHuzkXywRQRII/xNGzP1Q+aZfoV+UKNgL6ETxJqXw5GGdssYM4pg0BCR
 9fbilQdyxAtG4XE8IZTPAsojy0Kn2eHWtQROFTYsG/y6YXNQJJ0T7yD6uhYYxVoRI+51IR0aO7t
 TeP7PvZLtZiWTJMf1gsKfQCDQl/6YcP8ZdOSKOyrxTpIiGRa/Y0c6Uu9R2QGn1aQ6KFLiqYq5xe
 HY2djYwHBNojRC9f78aDV5PlzjgWMUjKu52Xh+vrH+gWI1plrx3yCX/vdIJoHBBNeL4ptyP+bmj
 yUaOrQRL+a6z9+5y+dxdJ4RbMu5vmcxOjNuQeVgG7yw7r3UfTGuVtoN2wkpMm2RPOx+6GzApUix
 FY605je5L2PTaZQzBFA==
X-Authority-Analysis: v=2.4 cv=YtIChoYX c=1 sm=1 tr=0 ts=697aa665 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=uDRNohyrUr9TWZXFZNYA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280200
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260668-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 38DDCAA29A
X-Rspamd-Action: no action

Enable ADSP and CDSP on Glymur CRD board.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 0899214465ac..0eed4faa8b07 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -487,6 +487,20 @@ &pon_resin {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/glymur/adsp.mbn",
+			"qcom/glymur/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/glymur/cdsp.mbn",
+			"qcom/glymur/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <4 4>, /* EC TZ Secure I3C */
 			       <10 2>, /* OOB UART */
-- 
2.34.1


