Return-Path: <devicetree+bounces-249001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E623CD87E0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E14C3021745
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 08:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52FDA322B82;
	Tue, 23 Dec 2025 08:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n0DtgB2p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gjxO4Qj8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7482F7AD6
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766480072; cv=none; b=JJmwWtE2yhAeDE7+EffqpK3mTwg1F7mDOsFhrXenj3D8pbSfh0VIpe0OgAGlePpDXUQQl+9zdvn/8wx3knLk8bELJb2NtQ9zMoEXDyJLUK7dgebPUgNDczRUfHE3XnheNCg6Iw8VwGvKoRtqvaujqtobmjdW9/olE+niC3VMt+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766480072; c=relaxed/simple;
	bh=pSJq5XZ91f5uuUVRf7omVZ+UJBMIzGWBASaAIl3A9qI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=PJZHA1snLRhKDqj/t0dIeMr/8r5ib6VslZNmHT+m9amzjdYg2BIQIQjZHkuR1rZiGN3l+7E/CNgjHoJuM73sRu5LGgz+AzdBetDMSa0RYlB4J6euYAZqkGIjCnjm6XBk89YMijGpINCcgQiPsHiWGXpZk4wWvzAvkBudCIdA4L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n0DtgB2p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gjxO4Qj8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN18RUO2747468
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ZRY9vyDYki7A6Jcf0130lc
	so/UifiqyGKduY8v9D3nQ=; b=n0DtgB2pRxfA620V+PJLCAusfaM0KILYgCTVDR
	XTWaLE/j5qVLy5lubaD3mx0+r4+EX4gqxOauObi+WVdukhAWJQxfbSsDWUNyYbjB
	Zd4bjgLkc25bxRWOdls7ejBlNE6iqV1DIk4VQehPxEI0Cx+UIzg/s/9sWAd1ajRC
	jxY/Q3sXOuFss3m+8vM7BhYSlC9P/Bj6olu5sVoHzjRWWIff9Dfdt8RMdYBa4QTr
	EyJPPSgw/CM5UYMYSQG9iFzY0uiexkWL7Z/rFD73Mqm4bmyuA8UJEo8Iof4wabpl
	X7l+4PhZ8zaz0tp4mw8+HCn6Sa58SWp81oKo+xN5srZZPyeQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5cscvc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:54:29 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0b7eb0a56so129009465ad.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 00:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766480068; x=1767084868; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRY9vyDYki7A6Jcf0130lcso/UifiqyGKduY8v9D3nQ=;
        b=gjxO4Qj8LKHz3ppcAc1pcpazJGvYfyZrJTueh7Mw+im7CWzlTV7E5EeeeHWHBTG3jb
         Sgs3ivGDzE1OVGJWPy0cHtJEaMJt+nHXbUehU0AhrCsgq4cFpAgCEE5VdYZXahGbzoOk
         fzj6zkUvifn4eB8Jf74Y+Rt/e5tvmC+3yAV0uKmlByVWSb0/N57vPcmlRHFtOPypuRR7
         GqiQwR5TE55RTYOS3L0aPeu+Kk+KAjBRzWq2tipPaaoewH3ecZDVlbRX4tfxmR07BrvK
         Xq9BdfcvlDdmUebWvXm6ymWQNpkukNCk+IVfqgS33AAoLqS8aXgtkV+yXnUudQBxihWk
         AESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766480068; x=1767084868;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZRY9vyDYki7A6Jcf0130lcso/UifiqyGKduY8v9D3nQ=;
        b=RQiJh1SN9vnrd53seVBMjiArgoitg93TBn76tQkKZa05aiI24aRymDTi6VE9YsVDNu
         LSp65JDhhiWk/ovPehY4P0lkVA5upOTQffpa3mwdY7vvWUrWzs/6VhNrrR/wy5hoLRQT
         g0t4B5HkCRUNMN6eZxHUokKbaqZnQTKFl3C4vyuvrRePu7W2ysPF5w7TGVZFkKGeV4zn
         PNlIUENhbcgBHgbnIKVbKcvj2Z9d4Tze+vS3QtXidwdDsaO6eVeTZyN4PIFirSXYEEVr
         ZIPlidbVqTKzumtD3M7dwc7dCRwjw/IT0F+M4LJXwxtOgqrKixrkoIO34xvaWQnFHEse
         eg2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDgE3PQwLCyYdDQTHSV4d/Kwzkzzd6/1IIdQnFr70kqm3m+WQeegNOx0QvRVm9OKzR/DBIcM9uUQfA@vger.kernel.org
X-Gm-Message-State: AOJu0YxDyzHDPx4hPcw45xlByzg2+0AEssTXOA8m+j3/W/F5klFlI+R4
	dFWw43m8bR2YFZU8ge/qc9FEG8+LlOPdaD5dO3xO9dXUxuBIxiGqj1o6D7q2EsGBmSno7uL8QFW
	n65qUSW/AKtnZIxCUqzcy0EpuRju8Y3aIuSpPGkmxGA1icv7cOED4B4VLA78tU5B4
X-Gm-Gg: AY/fxX7FnWeBNLJAZYVvhuqCrfLqQoVz5skQZsjkIxp31xma7+uU/8znuhiU4H04KP0
	ulWqNVqDBCBg9V7ULGw6lObKLH6v0ev/x6AqJ0mhyGPDmFfeYcgQe+EgVXVUVcCQCJgbqLpKd0e
	S+RFk+T4WI/p7j841lsoB633gbCR87YP4pIY9FrOjXGLby9ybIpcJXQ5wiJ2mPOYpcoe0r2sORK
	JzE3c9XpXBMu88AAVkb3FormYA8tb/YPLBwcHTl3M9sHCsNZKXK2FGDnCrsKUX+vPwt8BIgYcoK
	163AFUiQ5+EIq4VkS+nrgYgS+mF56gZFVVI4UB8ybEVRB6NK22sz0orSUK56GRJrtE7aWHHe0Y/
	5Dbzfx5H1vgQG9Emwy2YM29EFBsV1NxHD6jD8o98JydxPzj4=
X-Received: by 2002:a17:902:d481:b0:2a1:e19:ff4 with SMTP id d9443c01a7336-2a2f272b102mr129756905ad.29.1766480068328;
        Tue, 23 Dec 2025 00:54:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDHE7P2QEt7DiGykRUaggE3ilRmbm7MHQ1Aqva1h8b6BQC4Vo9P5yQJNB4t3gOJzyrFDkYQA==
X-Received: by 2002:a17:902:d481:b0:2a1:e19:ff4 with SMTP id d9443c01a7336-2a2f272b102mr129756715ad.29.1766480067836;
        Tue, 23 Dec 2025 00:54:27 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc68ab5sm11767912a12.17.2025.12.23.00.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 00:54:27 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 14:24:20 +0530
Subject: [PATCH] arm64: dts: qcom: lemans: add QCrypto node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-enable-qualcomm-crypto-engine-for-lemans-v1-1-f2c8f8e4f3cd@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIALtYSmkC/x2NQQrCMBAAv1L27ILZtiB+RTwk6bYuJJu6UbGU/
 t3gceYws0NlE65w7XYw/kiVog3cqYP48LowytQY6EyjIyJk9SExPt8+xZIzRtvWV2l6EWWci2H
 i7LXiQK7nS6B+HAK03Go8y/e/ut2P4wfM4OqPegAAAA==
X-Change-ID: 20251222-enable-qualcomm-crypto-engine-for-lemans-4213e8b2354b
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA3MyBTYWx0ZWRfX2m7gMN2EPnqQ
 gJArUjCJ3cjD5qe96Y04JaJqiwR6qIXBXsAqAZdxNAB0phdb5n7D5RbJV+dZ9ZKEyR1eeqkwlhJ
 y9x05Tdb5/8pVkCSjXzGwbUPiHnW43Pf9wtqOrSRufOpqB5aO5WkyuDi3crXgbkyhVh9SAw58bG
 XsM4jOxPqzQERorMxEWZRWW0OTmIaIK7Qn6q38TSftWwFWhNTyeQdPhCgEDHG9EnKEvMX44437o
 kgr+bYpCoiGiGwyUQBD1J/sIRnKzKN+PFbYic/VyeGzWbeKzor9MBkxuKINnsBMktElX8FiZfgQ
 5vW/ByPT80gWzHZnKDFzOZXLtacZ3a3hA+3Cz5P6L/hp+RV/LIq3gaRXeArr9qU4a0p6jn3CAXv
 xuNdEtgkaQXHlj4oxUmaUiPKUdRS17kYLdzikkzP5a0K6qpkjcG4agqypy5hECtVrxSzhrvR8Zm
 2ALYnuvFafA4aRDCsCQ==
X-Proofpoint-ORIG-GUID: BmVsgiV-mNFYG0h1aiNM8jN7ohsOKT9c
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694a58c5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Hq7ZOB1SP9n91VY8OngA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: BmVsgiV-mNFYG0h1aiNM8jN7ohsOKT9c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230073

Add Qualcomm Crypto Engine device node for LeMans platform.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
QCE and Crypto DMA nodes patch was applied as part of the
commit 7ff3da43ef44 ("arm64: dts: qcom: sa8775p: add QCrypto nodes"),
however was partially reverted by commit 92979f12a201 ("arm64: dts:
qcom: sa8775p: Partially revert "arm64: dts: qcom: sa8775p: add
QCrypto nodes"") due to compatible-string being miss-matched
against schema.

Resubmitting the enablement of QCE device node for lemans platform
with compatible-string being aligned with qcom-qce schema.

Bindings and Crypto DMA nodes for the same platform is already
present in the tree.
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24e69a9d900f06bbb22baa2781cc3f..342afcb207939a74d2ce4d7fd655840f0208dd2a 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2769,6 +2769,18 @@ cryptobam: dma-controller@1dc4000 {
 				 <&apps_smmu 0x481 0x00>;
 		};
 
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sa8775p-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0x0 0x01dfa000 0x0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x480 0x0>,
+				 <&apps_smmu 0x481 0x0>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE0 0
+					 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "memory";
+		};
+
 		ctcu@4001000 {
 			compatible = "qcom,sa8775p-ctcu";
 			reg = <0x0 0x04001000 0x0 0x1000>;

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251222-enable-qualcomm-crypto-engine-for-lemans-4213e8b2354b

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


