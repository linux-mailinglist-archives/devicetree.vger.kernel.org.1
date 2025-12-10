Return-Path: <devicetree+bounces-245626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B1BCB3619
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04D14312AD3A
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E3E52773C3;
	Wed, 10 Dec 2025 15:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PHJsWlfZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IQQvuTIp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA3D25F98B
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381855; cv=none; b=hUMm4rsE0RKIIuAEdygmANPPs1DpctxBLpEMx/jNCyrt3GzhzHBBFSZfPfsM39IfNq12N25BPoVtwayHNztteLVbkncTtd0+g3nmKER92Itka3yUuni83MkRJp2Vy/Hr9ovTOd/msR89TjY1/sq7CX4wUOpddAKRPUY/clr5cyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381855; c=relaxed/simple;
	bh=o7drDZrAUJDSBez9RsLhsFME8yCRZ78zI6P8jv4utCM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Z85+QVizaveqdU0FbguIr+kVnvpbGs7TgkGQJcBHlGbAtgIf20FbSypADePs8VJJEr+JTEve0ycEG5pExg7KJxEMWSog7JdMoiMOUQSd8KKNMt0E+IhDFDZoTVFqIrlU/+nsDaGmX9rgNSavH46bC09EuJ4HsA7FqLUVxWds1Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PHJsWlfZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IQQvuTIp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e6vm2669427
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Cpyzssk0iqR
	6XnHl+tGOj35nKrptmEhANEPfVeOn+jg=; b=PHJsWlfZLB3w+UOQPHTBJyleP0/
	Hh6GwQT0/Emntv7yn3OrLblGL5Y9iRez4eAKmRH0Dcn87w7fAg6/QfGQ/4EWl5ue
	zEm9OUJjjq4BVkmzltMhWPlEdAtr+G2niQ2Oqd/zsqa4kVVG/7/LCIGDjPsWV3+T
	+/T/tVlTsbc29GjLM/YDkGaV9WaMayke2Y6JHC3snLG00pifnYYkIF+pK7EmygJ/
	f8iUrZHPuNp5lP1NQ4NP7QyLF0O/bK7nxBSUDLKX9yKYo37KVn9gad/4bj2xI9fT
	bHn6li00ubMyfXmEaD+CFprSskIlTJ0YGUymGTVmJbZceGcrAykD06srOzw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay4ykhcef-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:51 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2958c80fcabso315515ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765381851; x=1765986651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cpyzssk0iqR6XnHl+tGOj35nKrptmEhANEPfVeOn+jg=;
        b=IQQvuTIpnLAYwZE9KAXP4X5s8B0COAxmI08UIc5oyW5ThRIXDXmmIf9cwQ9etDmZRf
         bY5A60AMy1WjTJ6dKXSslktoviKLA3xFnEf3bhGtSoK8Fj/y6j2jrY+QTSp0fiGu6KML
         sBgfORct41cYUG6ArZ5inxUo245/ndzFs1O1d8YdFXQWoc7jcXxXxzVGQkpZohQ6kuSz
         Y4SgeFJ9Ne3HuwwSsZ+pHToalOavu751awsGPPq/PAQwfKTez38vxUSB3w+DRUxPlh3r
         QoWZJF1EPDSKDTT92XKNvq8bFRNPdFD6UyxbcZXPQjDqSBXBi8MGKbRAF4bUjJoQ8DMj
         jN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381851; x=1765986651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cpyzssk0iqR6XnHl+tGOj35nKrptmEhANEPfVeOn+jg=;
        b=qOOykpCOnwkzB8lcns1BEWTe119aTXeB4s1GEjI0cMnO6pw5K2f7/LOZ6wEqXzWUEU
         XLpZQw+TkXYEpFvXbH/VIRBx91kvLEFhW3eGefTQ+7KfJ+93LV3ThgVXPBEJhxRH5xUl
         viQaSW+4gNugycfklicV9ZwkgkhzBjr+f1e5veGV9ATz4LDRbUvn29IyBKSZc4w6XS+Q
         elvNmoldCt/YhQEUH9mTEXfFC2GdCHMpgBmTkHs6+RPgE/wk6fpeD346C2wfFM4v58KA
         YjC4lYg/m/ODNXstSr1rkIQUOUsmS1Nhpw84NHhGPoI8Ni39sssGKo0LXNEZAwlASkup
         zwGw==
X-Forwarded-Encrypted: i=1; AJvYcCXoaNI5lcQytOtBFoTd92XngEir12YCdEJ8abUitSiWgHkBcFo+PDjBcCXvRheY7r0SrczzFGPFgI25@vger.kernel.org
X-Gm-Message-State: AOJu0YyoMhsjx5kpDrprf/FEjnaZQ9UCV9cXfmIA+JjffCaZDb5v13rQ
	+ZfV+yAZAdw0s/cuDAKJjPRp+sCssnXrnLNgrzRiiJDdUwdazR9/R1oB4imzOdeDYcgyWm5L6eY
	59GB1lpMY2Cpbn31tSUzS+6+h28U86JEclU55Bg4Y8Oxc0/1GJf9NQPFxlMLYhdMy
X-Gm-Gg: AY/fxX6RZAFvrZ2cLPkitftoaqpfKp4n5zZwmGjxrKHamW3Zsp3L1kOeefTmBP3nayu
	JTtWpaaeGpI0z9iZkArdDHFQoPf44QN9PRlEprq/jVgoM943G7jGj/IXSkHFSoZrZpuEd8rUr1H
	w5vRIJgAAShOfs5hqKSHOtP9ITXgrUVzS9agP2ARkRH9lfyhDicw3ZWGtXdgPmwyHykYKxtYvy+
	nDPZY5ERLB+0dOenNNXVcS3vJNDy744t881e8Y/UQAmLzgxeyh5w3YZdmbVj3atI8TK36fgB9Dy
	pz4LnbcsfTZzm4P6DSTfR1TzOyy+YziTGEeau90X0b8jmGn29TrVy68neBADIYVGABzOOZCx3Z6
	s4qK1H1HLrd9NFDx5C4YFKyM614ZgelskbEbrexid
X-Received: by 2002:a17:903:b0b:b0:297:e3f5:4a20 with SMTP id d9443c01a7336-29ec231f255mr32467235ad.26.1765381850752;
        Wed, 10 Dec 2025 07:50:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLOpg4x7MmvcwigCDDq2GU/0z5pbMiL6qg75gGKsPElpzD1ynSU8r0WI24m3l3tG/tn4igvw==
X-Received: by 2002:a17:903:b0b:b0:297:e3f5:4a20 with SMTP id d9443c01a7336-29ec231f255mr32467025ad.26.1765381850291;
        Wed, 10 Dec 2025 07:50:50 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ed93e470fsm7780175ad.41.2025.12.10.07.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 07:50:49 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH V2 1/3] MAINTAINERS: broaden UFS Qualcomm binding file pattern
Date: Wed, 10 Dec 2025 21:20:31 +0530
Message-Id: <20251210155033.229051-2-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
References: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: NXJgRVocDrIx7Bm-z0NZP6Rho-ZTZWAI
X-Authority-Analysis: v=2.4 cv=Mfthep/f c=1 sm=1 tr=0 ts=693996db cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=52jqHT57hFt4fz_33zkA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: NXJgRVocDrIx7Bm-z0NZP6Rho-ZTZWAI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOSBTYWx0ZWRfXyxK/Rqc5NwHw
 wpdywffHro8GdKmiYBe2Z4JzVlkmX/gDOFTvACET+8NkEgA3CNJMKfTn76zTYpTlHKRn7rQpIkx
 JgjSWP6e92Hnjz5VX0cYvF0aPH5/jNBvc/ssVXHJpdEByxWvGaqd89+YHZIjOvx/Fi664z+Kykp
 pnvOx3ZqEVb2+l1p1hIC8Itz3Rr+TuilXhBvK68kw3pLDH2C945ZVDoi+AKWWprvxqCb4jcPiVC
 bc7U/VCVdTTjXYn6KmCLZi9eaPx5fQkbI9r9OQSNAYMtWlqGn64qv/silwuLh071f/aQ+iiidLE
 vPvYkLjheEzhAqkIq7NZFEN+608EO9AMEgBkJTyYyeR3l+eydAqvwuo+9oyYkMHhMFIMz+3zTfk
 ++TRpjkZ4V+eklofv5FZC/5Ml7VW1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100129

Update the file pattern for UFS Qualcomm devicetree bindings to match
all files under `Documentation/devicetree/bindings/ufs/qcom*` instead
of only `qcom,ufs.yaml`. This ensures maintainers are correctly
notified for any related binding changes.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c5a7cda26c60..f4d01ad6462c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26812,7 +26812,7 @@ M:	Manivannan Sadhasivam <mani@kernel.org>
 L:	linux-arm-msm@vger.kernel.org
 L:	linux-scsi@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	Documentation/devicetree/bindings/ufs/qcom*
 F:	drivers/ufs/host/ufs-qcom*
 
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
-- 
2.34.1


