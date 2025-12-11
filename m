Return-Path: <devicetree+bounces-245699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1632CB4709
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFFD0304FFEF
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB6729A30A;
	Thu, 11 Dec 2025 01:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d9niU3wK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Odzl2ul+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8340230BCB
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765416473; cv=none; b=JZsX0f767joEvKpGDMIWubVPwGSP1K995+NbJzHMjK037fEQukmllJxDgToz4E7uwLDHCVTcWiDZ3k0W3N4f8LXnjw+/3G6w6VYvwTQUXKfbSo8TYBIcdFxPr845yioKro2NIsLRSktb6gMqpwiotmC/nN7SNwQd11Fh4rW1llI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765416473; c=relaxed/simple;
	bh=AQX5r4Dkb6D8GLP+/kU0e7WNTPWOKkov+fXVx5fjvKc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Mucdx4U8IOXMxo7kgtxFCLbDPMciMfqJyiFGloTOpZ/NvaCM41e9bcL8Ql52KzRIwPtw+Gd9PBFY5o57vIpdXF5mQ83XR2Ho7dcwSwRNK2J+GW4x2OCLCRZkyQdOQMsEY9yBRrntiaKAAI68SK1KKnRvaXn0Nfs38GedMTaE4Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d9niU3wK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Odzl2ul+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALSuPZ216579
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=5ItLQTk0gDw9EYee1+ZVzr
	dhpz8hlRo4GP78zhKxzAY=; b=d9niU3wKk0roexHOuH/CttGy7+x6XD8v2NGRGZ
	044OY1PvfbQ8hQ4G7WVccP9FLxAyJ63H2BaP/OPSywOE4pEnSmCs94hks1TsVkUG
	YaoArHaJ3Wn6+prPyP+eG7Mt+cZsI7v78dnbmLQ/ed3/z9GzzzYVCXYVPyo+Y6hA
	wT/1hoHCFCzKbiV6GBHkc1pqmeQfGsf1XlvcvUg1YwBp0lgSmTSFxVbOsRBg2cmj
	T94+H7d8ZMabyVWDMYcAyQqrqzmS9g5eTNs21bHENhX+qHEjzUi+zw8GYjvtPwsH
	u7jYS2mifbxhZT3Htr0kHr2SC/09YYt7xle0sede1VgHVNVg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygr88h8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:27:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f183e4cc7bso7196831cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765416470; x=1766021270; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ItLQTk0gDw9EYee1+ZVzrdhpz8hlRo4GP78zhKxzAY=;
        b=Odzl2ul+m4voIbxYIKAUXz/gHyG4Lvhpp9kc0xLQNGrNHPpdRdsLz8EH3Uw9L4GDJD
         gorCazN+Q4W6IcRaEYcmgdGCn1mrWQ9n9QdbCChl1lWfjNe6u0lu9j3l3Nfsr9MA3ngq
         8FfvheR+HH5eY2wMTBI8MMJ9J2HuDbPOoeCq3AbllX9TGWR47eUQVvBG55B+5Xvj6FW8
         Aw5OaIHDoQbRI6lED3UDREx7lhSvYJ2ybvwOIrmyA+xJeEWb4GZqjsavxhOmGAuvrw/i
         w7dnypQDaHDq5v0fMcAmO7QupHkyd1E16pPgClQewbzqcPU9V3cITtfugq9k8xr4Q8r3
         XzPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765416470; x=1766021270;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ItLQTk0gDw9EYee1+ZVzrdhpz8hlRo4GP78zhKxzAY=;
        b=YlVAqB7YwZ1/C5o06nxvZIt5avrKIxhO58Yq7BXMzrbef5dLUAb1J7HOWyAOYH71Xt
         r6fSDL8pKEjJadDbHVEA9zdOJmPh3tTFOMwZN4tnwNP4WmnspAtJwT9g8y/3/3kQeHrQ
         2A6oUAp9bcbTD5hmX5CB8KMBywioPd4vL4kCZ12wDC1pCxsqkUo/UOIEov91E65eIaDf
         ovKOlogdfYnqENQStAp/ht6h65GBr43adcZZ9QhW3YlnqTK3VVxSyoSzvbNq0pFZsIoT
         glCdOJJjFqqmKmiNpDsbg8cTcQLAKu1IwUI9OJPX21Tp7/Tblg2XnsJNmLdzwGxRZ34P
         RHlA==
X-Forwarded-Encrypted: i=1; AJvYcCVRpmi7i+jxBRmUWf0fiZZBC9iYHMfBI87pw8ZlVYfcBV3dh85m1w9W7HWq2yRlhmPwC+9juk1IOOsc@vger.kernel.org
X-Gm-Message-State: AOJu0YyRLM+46YdBOHNEt/WTpPALv/OR/OlA3/XkqCECJ3H5V6cqelH6
	fBs6lvZMG7GcJzkZqzFa3avIleIeLoVdifyQRlfjuHnc9SxSvBdNxDyeRwpYSvVld7rQ5ArF5e/
	3eSx4wg4o5PHVv2wG/wa4GJPD/zM8cA1DCBEyPQz9Xf6gS55llR6ur35Rp4UuJSDg
X-Gm-Gg: ASbGncvHtlX1SkeKICaMsYHY6e7LT6PXX41JJ2uNZmYbMA54toYsQPClHlc3SbprGyS
	XrkFCDCe96Txv38zNNkuCijjowuSByfvJTLCbwjhpMilocE6G4KC62Flt3Y92MpjDUY2Uky2m7m
	+Eh6EapZujUaKZVhdWqcVnt7geBsaVWa4nKLPkT5QqQ3HS9dIKr+Qofsi7mV0BfrC9cQ04fWbel
	L7v2jZ5uMc+I7JSOamvMUp+FczYpbzHJdZSaYm1AVOcQKktERA3Tw1XJRQcpRkmpqaLd4Y0bIjt
	n697UAC5rJ+cjwODWpT/QjN1Yj8R3guMxZVJSO3nX5AuX0CEGKOmNgqeQuzzvEHYPXKdXFNRK2V
	g6Saq3jNOOLICbNcO6pBy8MnnuOuQ+1yC/gMS+z0zX80pzuX2vmipgeVJoAOOVbTDoXg4Td908u
	2m2dIVId6HPd/gJyq24ShGFOc=
X-Received: by 2002:a05:622a:4208:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4f1b1a7e143mr57498371cf.41.1765416469908;
        Wed, 10 Dec 2025 17:27:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEEA/g78hD2Q2/b2BnH0m06ih7BWG0ELr1vgd1an2GupS4QRK+6ketnF05bvf4WoDeBmnvV5w==
X-Received: by 2002:a05:622a:4208:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4f1b1a7e143mr57498191cf.41.1765416469489;
        Wed, 10 Dec 2025 17:27:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f379c8sm384383e87.10.2025.12.10.17.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:27:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 03:27:45 +0200
Subject: [PATCH v2] arm64: dts: qcom: sdm630: fix gpu_speed_bin size
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-sdm630-fix-gpu-v2-1-92f0e736dba0@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIABAeOmkC/12MQQ6CMBREr0L+2k/aWipl5T0Mi0ILNBGK/UI0h
 LtbSdy4meTNZN4G5KJ3BFW2QXSrJx+mBOKUQTuYqXfobWIQTBScMYlkR3Vm2PkX9vOCnb6UyjY
 lk9pAOs3RpekQ3urEg6dniO/Dv/Jv+1Opf9XKkaOUVunGOlNocw1E+WMx9zaMY54C6n3fP6PJ3
 ZazAAAA
X-Change-ID: 20251004-sdm630-fix-gpu-f9786db8049a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1585;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=AQX5r4Dkb6D8GLP+/kU0e7WNTPWOKkov+fXVx5fjvKc=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ6aVnDCr7bN9mVIiXDkzp5rM7FG049vUVRbL6zmVj8XoA
 9e/NL5ORmMWBkYuBlkxRRafgpapMZuSwz7smFoPM4iVCWQKAxenAEwkZC/7/1DNs2Hakf1J09q1
 v6RmGIh16h3VU/scm6KedFk6aZ9Cft0TFeGSbKnyXSIVzcvSfrtJPdz2dX9bNMcW8R1eBnwGv2S
 vmr0za50ln/z3WVq7zBb+lIRnu0/PLH96kyM74UPA/0ClfJU1U2pjNFvjVDe/T/12+Zpiduftzk
 3ePN669/pLHit8szELaG7NKNp2/9Tqft9oYw0/M2vdrb/NIp8JqetzcfE3hlW6upXqGz17Xvd5A
 e/EI1d1b6bU2+1coLLnx5bs5yKrH8ycn7vr5XZNMb5dTOsPtIbcaV/FohlmFKGgnzLnRul6iT33
 FdTKnzqY2iy12Ze2PiXI1+965ecTc4yZ310P7+22+AYA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Fr0IPmrq c=1 sm=1 tr=0 ts=693a1e16 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=0OtPct3eviVbZUrawKUA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAwOCBTYWx0ZWRfXxSWSMG3d9VEf
 fPMjNZRkOg7jF44axJ5DTANQbAPwMSxp7+Vghnc8VUVyckWKXZACDX1oS7UOLi2ulHGW1Pw1yth
 YeRDoL6RQ1JBM580xjt6w8rvx5FCgI3BfLtrRfo4nlOArJlHEoqIK3nnmvK2skf1fu42IKvbEXa
 lQl13Cn3M7qdw/N/2KChpHQoZByAfr+PzgpcgKQ83d3gw1gnIs249RcwTlANn4skBfHG14hnXbQ
 mozD9/3zRsVrsUNuKc+kw+qb+QZbVWPd8MBYZShXBm2aH3emhq0rBE1sDSPENWIIS9DVJYMbsyA
 prPsTmgCNMeVCzLp0JYVIHupV4m6NbnEaxgg3ej91IZMuczKQxof10WYAnB/zqOMGgL8IT2jUDW
 ThZIGjHt18IgfTGNVSkHujilLLegdw==
X-Proofpoint-ORIG-GUID: XVtqbkIiyAMjA4FDSMUHTNsTaUuoufVn
X-Proofpoint-GUID: XVtqbkIiyAMjA4FDSMUHTNsTaUuoufVn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512110008

Historically sdm630.dtsi has used 1 byte length for the gpu_speed_bin
cell, although it spans two bytes (offset 5, size 7 bits). It was being
accepted by the kernel because before the commit 7a06ef751077 ("nvmem:
core: fix bit offsets of more than one byte") the kernel didn't have
length check. After this commit nvmem core rejects QFPROM on sdm630 /
sdm660, making GPU and USB unusable on those platforms.

Set the size of the gpu_speed_bin cell to 2 bytes, fixing the parsing
error. While we are at it, update the length to 8 bits as pointed out by
Alexey Minnekhanov.

Fixes: b190fb010664 ("arm64: dts: qcom: sdm630: Add sdm630 dts file")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Update cell length to 8 bits (Alexey)
- Link to v1: https://lore.kernel.org/r/20251006-sdm630-fix-gpu-v1-1-44d69bdea59a@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 8b1a45a4e56e..b383e480a394 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -598,8 +598,8 @@ qusb2_hstx_trim: hstx-trim@240 {
 			};
 
 			gpu_speed_bin: gpu-speed-bin@41a0 {
-				reg = <0x41a2 0x1>;
-				bits = <5 7>;
+				reg = <0x41a2 0x2>;
+				bits = <5 8>;
 			};
 		};
 

---
base-commit: 008d3547aae5bc86fac3eda317489169c3fda112
change-id: 20251004-sdm630-fix-gpu-f9786db8049a

Best regards,
-- 
With best wishes
Dmitry


