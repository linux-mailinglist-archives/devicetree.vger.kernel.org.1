Return-Path: <devicetree+bounces-251820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD89CF7684
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4FA3D30131F2
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17FF3128B5;
	Tue,  6 Jan 2026 09:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dfl406cZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CfjKspML"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E58B30BB91
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690481; cv=none; b=UVwIzFnMCyh6y4+W1nDWImykUUUQC5JLZ500UL+4Ukd6sdMRj0NjnlEXhEPI08E7polj2tGrKThgT+/jYoF5LV9I6+9Vn3VayCJL2vx6pDL40VLWKHZo6dQ1YtinnxpZ9cukcgorhHb2o02Pvfq86Wm9zKaP5GAxI3YHvaFc+oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690481; c=relaxed/simple;
	bh=+MztaN/Rs+ElTlSup0i9GMFOiElYpYi29R9KCwweFTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Im52xY69nMGDoJ7XD4YPJzL/hd0blqed4dszAGDIse+h8876bhUJnsZip9MkY/0KRt5R9Xjm7Q5NthZWY9MzLm9N6CGaGiVRxgMHIWwXDZwK53IwZjwZdNr3KXt3phN7LaxGgbakie9uTeCChi4UjtwMNkY4UiHRw2Wjp+8966M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dfl406cZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CfjKspML; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063Q6dW2429813
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:07:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+jgud0juuzW+0FS/RQDcYMC8ezeyl5Oi2R+cprSqxGw=; b=Dfl406cZQsg1wYeZ
	nMWAaBeJcjjzcYwZ9cUFu5obYtQNWEZyo0gpwuR4TQG2VQD0NF7EY1fhdaIHoRkF
	E9z0wAPDUiRZs3KlZrxUDqVXoN0f0zV+iP1z/RZEbcPy4zns68fp/r6bFtPEyoYf
	xkk6hWfgBJBgJW/L36PqD72f3HKv1jP2srWbV7nTzeSei5d1Ly+c+/29LCk0BvA1
	5SmjepEZOrvohFDvPMXq4v+MdOWyYRrohdxJ7cIHXm85aaR7p79wpXIp58K2KBjt
	VoxMUEt5yczYLzWURMATfYUSzCtolLOSmHQ8kMouXWrkAoC7tNG3j2XHLfCaZJC1
	yU10xQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr73990q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:07:59 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee09211413so20599621cf.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690478; x=1768295278; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+jgud0juuzW+0FS/RQDcYMC8ezeyl5Oi2R+cprSqxGw=;
        b=CfjKspMLyb7VwWOfc4YVS/L1u9fYFTKVocTHOfwPIg+F7a+NK5kpBgA7hRGNCAjla+
         LAG4RoK7Y35bF3nt+jS9DpL4Lo3pr+qtOzilfgK397oKC6AjjKcmhpRDVMG82ry4c86y
         nlqMA5p2EVabQQ5t8mar+eyVtXYiXBgZDVw+zwbXXVAJNU9G/ZaXu2E+gRojS373yduS
         o8ozm4B3/cIm7nZTLPUSTmR1hLO/1e6iHz0+dHtEz0ewQ1IT+9OxQwRY+wCom15F2VXx
         6k4vHzAjfUzrbcJho9UXCeBvoH5NpZm+elqymz1AjCsgOOFqUx41aWUL3mterkf9uTFq
         Q7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690478; x=1768295278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+jgud0juuzW+0FS/RQDcYMC8ezeyl5Oi2R+cprSqxGw=;
        b=fYkVkouiSACMvKOL/jn4HjY0G9RyXtDsqtwXEjLFvOrclkAwOddhCftB+R+36KiGnZ
         ZYatZaLJZ+On24FxkTfDg4QTN0lrWkCFpoga0yT7gY4Z2HXXgnWhMYbaz+qaq9oTxXqD
         0/gW3XUueu4PkFZlzZVTsXC/gIgXeW8icdi6Mz4P44OgfQ93S4DsudCiQj/HpcBCLV37
         8+1iH52ZdiWv142XKfOC49qtJk6F3N2zBNaRfO7pAKh0avwGHoDC/YHFAWk3rYOnSK5/
         bRjMQfqufRel+Tz9ENFzpdzuWTUN8PWLafr0I4gk2Nx3gaIfWm9JxBNlh6aVNpsBnhKk
         8khg==
X-Forwarded-Encrypted: i=1; AJvYcCXkc5nTOkx0RYV9NhWCsijncHKqrDr50hJEzEdt9GmhGrroVu+9tfYMCDk601WVHlb8jAezjvK9J2kd@vger.kernel.org
X-Gm-Message-State: AOJu0YwhTKpAvxaHGVIE5NCG3GyD2NZQzXpthGWuEo9H97S5cDOXHpK3
	JNIeg6Qj0bAt6blohXhBk+7Y2Vy2W0RReXkl0Pzni8rkWQVl81pu/cFwiH/bK04qk/66R7kAfDZ
	+ljOL++sQqtXkpQACLmdy5/3+NfqYIdjZSxA67SGpYtisSSo3jA3Au1ZftLcoACMLVAOXWv2h
X-Gm-Gg: AY/fxX4N4GIwegq3caffle4ceW6TNG0e/cJRLIMHHUD8lC+mrpnvxMG6y2ANR7my/Xx
	WxniosFJ4SswcSwTn45Wx6Yh4km7mpSKgAW0nEcWfcqj4Eul/WU1H4t4X+gNmp+5Apg7AjizDE7
	3H/89TwMzOJeUCZvbuUUBpTN2Aa3q7WQISDQXjUWPnlXzMLrArulN/hJNkLcA3T0dsqjsmdJ/Nm
	clw36Q7eRMgE2GAwbk1o1Vt4eZh5V7UNXCNkcKLFvpNiEpjoeQYrJwvQ1JklSxyt49WXO3Buees
	TRo5cCkxDfgpAdskhRyE6ZWXMasbudzvAtJBBrX8D/piqLZ4sNJlduHVnkpwMAaNpZ4xVw2KO9H
	mDlZz3RkIPsj+ROmzomP9d8Bd4ogHkQXoxg==
X-Received: by 2002:a05:622a:54f:b0:4f1:dc5b:44ab with SMTP id d75a77b69052e-4ffa77a8cedmr27677071cf.45.1767690478109;
        Tue, 06 Jan 2026 01:07:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+kzLrzxScPKjJFwNxSlEEDHXGZuRhIuh1BKIp+D/WpHLGWscQ83v2YikOcmQnpSAJ1X9e8g==
X-Received: by 2002:a05:622a:54f:b0:4f1:dc5b:44ab with SMTP id d75a77b69052e-4ffa77a8cedmr27676841cf.45.1767690477547;
        Tue, 06 Jan 2026 01:07:57 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2bcd30sm176270166b.28.2026.01.06.01.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:07:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 10:07:41 +0100
Subject: [PATCH v4 3/3] arm64: dts: qcom: sm8750-qrd: Enable Iris codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-b4-sm8750-iris-dts-v4-3-97db1d1df3dd@oss.qualcomm.com>
References: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
In-Reply-To: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=636;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+MztaN/Rs+ElTlSup0i9GMFOiElYpYi29R9KCwweFTE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXNDn8mfWRUN/LiZnlDCHPgajtwkjulxvvvZ8q
 4usgrZXUaaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVzQ5wAKCRDBN2bmhouD
 14bjD/0YojgtEKqxBzkXkNEKx6PzL0ZgFy+fqFrAueDxP+laRmhK22QpQplyZ0xEznuRa/1z5Ba
 /O5f4ejsckrIkpV1+b7A2ctftdrmdS0iHUZf74aTdPIcy50ziwAXwyxgv+XRCEznQd2iAxU+Egh
 Fqi8uY6HDCz/swaqR5Ymh+Orl/aiF4ozFIMz5nrG9ululRjL/I+pzqqdeb8GMX5M+063u2QqTZW
 2tcmvn2TBO8dsSGio8AlQvj1qISh04PqwBxY5Y12bEt+PuxNStibeqyAdxJrW+GQZYXLqruxEAu
 GDMOxG22LOsch4FTmFb8gGOaN6c4jT7I9HTcf5dmUYfFa9YWVg7PrmOuGO1uBcNZL69OWEuLAo5
 sG4LouDTYQgbjAGK8k8WsmjVzJJK+27tfXQIZTdFlmWg+KrsAoTmM1CnKW1tmfAE1TWGqZTRF/l
 Fvc1Pdch5Ebvdo5NGJCS92i0ma/LC9XsUS2xZmr5TPsrUuUtI+6uGwYhQudgdWzYYbob+0jbLIH
 CWnkL64buaQnO3z/Es1Hs9Rmdd0s6VPYUbJpql900kTV1RJQW3hQCaLv47i4m61ROD8X+Af1wHf
 6MR+P7rxS5lFo7LW2lXJE2R/cCjBuQNuO/Vqz+YHG3dy7DbeUb/D/f0I1qPJyLiW+6YdP1zLtd/
 b+86lrEKU/e3s0A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695cd0ef cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=C8SYT3WHa0AdL4wi_OEA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: jgEUhFmUMbTGw5nj59H6ALYZO9AQPQxf
X-Proofpoint-GUID: jgEUhFmUMbTGw5nj59H6ALYZO9AQPQxf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NiBTYWx0ZWRfX7LowRmA+7Wy0
 dTBvKl/sbmQTfF/NE+gmRugoNJzTaLhFs32+Cm1AMb9EFwKGj+djhVh7y73R2L+nWu8N6Idel2t
 g7PJWcgqq48rWShUR1FKdh+iDKgA5jMNdX7LykQoUVBtJRrYQjj7hRuY0EcT7Fik8ukVQI0AWiX
 v5hPZ8eF5Zywk9wGC8mvrSFsHgVWNuAkSqaJBlZcl+TOj6xk6/oWrZEOENNNyWI1w9dj41MzbGF
 XnsDGR5DUBlFJ2TiiilsIQeVZW5HnTHEsJVJM6AvAgpDewDiV4oCm/9k0NGUpuVZSDSRWL1C5US
 BI/L4qwm8gEqKrtkBazFCI6g3EelessYeAKxBjIBlfQ+BWAr7TLoJA22RmXEVtlOOxwah1mKjVN
 2hyOebvK4Q9Axi4K6YcNZk754g/Y61Kyo60TEWQ2rzFnABy/X/BrqDkD4jYyx5Y/O0GI1XIWXJV
 RRJJ1FPLOvcGPX2dh3g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060076

Enable on SM8750 QRD the Iris video codec for accelerated video
encoding/decoding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 439ffb202599..801c46d55602 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -858,6 +858,10 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&iris {
+	status = "okay";
+};
+
 &pm8550_flash {
 	status = "okay";
 

-- 
2.51.0


