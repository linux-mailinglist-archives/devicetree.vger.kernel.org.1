Return-Path: <devicetree+bounces-235320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E779AC36E10
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 18:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F2A76481B1
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36DE5337100;
	Wed,  5 Nov 2025 16:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="We2S4wmO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O01TtpRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626EC333431
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762361179; cv=none; b=glIk8Co8iZKTtjZaM9Hw2TXH3BxI1Pg7+bAnLA2jsSe9zUv6eGmVQWfuZqoR0Vi3rNIIlLlbKXEX7Zwd4Els/gVpOz+5B5dxmDk1pMroPdP4s8Sf4auJEzrm1qz/DVD64HeUsXDUuESoln0QfpmfUljIs04cqmaMLmWBWBPepDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762361179; c=relaxed/simple;
	bh=CSOgdQpc0lMePHubTaI8zKt7XuYIPcsGjD7SJ+d1YnY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tn/h7KGbbzZQYczjY8gH+WEDU80n61pEM1unNq89ipYX83e0wnhK9XESFgatj6KQVlygxip+ko5dUdp7wPgi04ZzLj0L8EZg3VuhhDTnlm1UdmyWV/4KUiIm0qjB/UKusMwQf7v5pL/CsV7D6Te8YPV8hsM202FANyHfwIuZM4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=We2S4wmO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O01TtpRM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A58UkpQ3089789
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 16:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V0NNfdE3hYTw3zNUDaf9Tkr9rvcnD4dKnWyPzOQRNqA=; b=We2S4wmOLyuO1nHH
	rRTzXzsQ0dFfXANFMEu8iGnKmhNm2oE616DBj3v3aCGlvbiYW9J2KTkWVN8Z2wKM
	ruW7IWzMG4AdH7m3znPgYiDHvwg3/5L3akRs6IJUXJn22vHaFE59yHtS+0DHZVMO
	NugzL9PqaCoXhXizTTGVs5/GJpxwt5KfCUMkqCqcqNIzgax3DbWtc04X+23pIloz
	NnalIx3qCMW26nytLWWck0+rr+N0JycPwuqrqYBgVJMNh6tKo4EC5WphkBlxKDZs
	PtrqDw4kvrkadaw+qnwKayn0ZvJPBEoSCc5F1FtIHEbaNlo0bJM0y2b814WSF78z
	X2L43A==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7s5eb2hv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 16:46:15 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-336b646768eso86255a91.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762361174; x=1762965974; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V0NNfdE3hYTw3zNUDaf9Tkr9rvcnD4dKnWyPzOQRNqA=;
        b=O01TtpRMovFxkGkCstjrnZbKxP1Yjz6cmjho6O9dnMb8YxhQb7lVIzSzDkONN1r200
         rEzf3Lxf0sFLfVIHW3Fjvxah/zEjZouwrrZz2T6oIz5Pwp24rU44Dw2RsPrsCxwAnBj/
         z3rBKx2TC5F2p8NY+os0VnVvNUALAhji7ubNZJUbs991O4RSAO/YnFgTO9JIjCBlIuuy
         ALdOa+GmBkymxSL1Hq6JfJqUxvKJFeglzuMqyYSgRot15W5tcY/oN/ZrrUNZVz24vfdB
         oLPsPILWK3+rzk6HWQObUwUuabIt4GXpNMWs5cqHGrDOJ3NCF3WYoLq3Uga0eb0NVPIA
         qNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762361174; x=1762965974;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0NNfdE3hYTw3zNUDaf9Tkr9rvcnD4dKnWyPzOQRNqA=;
        b=iFE4OB2zkX5EXKP7KIN4yN3U3dA70WsPaGqIr9wZ/uhJJ5f5qr5PdZukHLSkDX5One
         PiU7v0CPBhh2gbKWhuLGd+GwZDMcX+LqwR2ItkNU+PT7wa2g3ZUF8lfSxbXa8priG68v
         c4OcezrBZ2iFuhGxFeqHl0E7EodG6zgGVLFo8x+JK8y2sjrcxk7LkFDvZuQR+6BHzr05
         2ZV0tJ4kGA6nPiLSO7XZlfguRyGvRkBuiMDc3DN2amUYfquBKOI5nAthJqmW27OIdXGK
         z2oiWqMfsotOPtqIalLbl6Q0cn+pJzb8isoa39CIpt71PVbvikhnP8NVgawRXp85L/SN
         5xqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfKMJmb5mXKVU0hDEDu8KQbXPbINToGKsCdbYNq03LPqL8VwI8kN8wF+zD9PTmEPdQPF/9ow64hcoJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzqFr6GMLO5sacY1fRLNeTBM7ChNsKN4Qn2UVKDfwFMPqrFD+LK
	OnxZBRhoNygc6Viyjd+3TpGSdX5CbbqfcUT6YZfz8oyf7k7omYRwVGvUBjTs5yC+lBsIMT2HkuU
	RhGOgHTFjbUK7zbRGehuqtAH0NsOPoA1MH2r461FtyXDG/DT3UnMTup9QZGOzzeRs
X-Gm-Gg: ASbGncsXuVNvqt91OsfD+lJuVC2iDLKVlG3kotaFeehkkd2FYrGAC/3FsUdjP0r/VfY
	8kEnv4Qdjr7AN/vZ+BPItsQ8mMZ3KwjjehnO9jxuROxnMqUkc/+cVI7zNI4G5hnSERZEgF1FYUN
	G7S1QltpRX+QWBpADrh/EqXmbZYv7h5CpioQXbszE3m6RIpN4DShpDKNU8Uq88Fbuq5jt9WdgsN
	UYPC/NSw1jvT4J+yigrbPTvT/nuvcuEH5Np37pEtndgf1KNCDXVvYa7hoaU7Z5yFJ5EUgdyhVlt
	i8irUsBoteyl9cz1n4/8BO19SHjAu+jnb8IFv+xj3lI5yj6D/sPufRaj4p9nfYAINzMKc/on1MR
	DpgdvyU/RgsNd19Qt/Q19WlA=
X-Received: by 2002:a17:90b:274e:b0:33e:2d0f:4793 with SMTP id 98e67ed59e1d1-341a6c2dd89mr5133562a91.11.1762361174255;
        Wed, 05 Nov 2025 08:46:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExDXPdqPDT2NkdJ7fX7iWKr2pf+irb2Zq0hx+Byc3+KFA1DEVgM9hn1fe4HmX+JkqxfTmWJw==
X-Received: by 2002:a17:90b:274e:b0:33e:2d0f:4793 with SMTP id 98e67ed59e1d1-341a6c2dd89mr5133518a91.11.1762361173752;
        Wed, 05 Nov 2025 08:46:13 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68c822dsm3426249a91.8.2025.11.05.08.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:46:13 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 05 Nov 2025 22:15:45 +0530
Subject: [PATCH v7 1/5] dt-bindings: nvmem: qfprom: Add sa8775p compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-a663-gpu-support-v7-1-1bcf7f151125@oss.qualcomm.com>
References: <20251105-a663-gpu-support-v7-0-1bcf7f151125@oss.qualcomm.com>
In-Reply-To: <20251105-a663-gpu-support-v7-0-1bcf7f151125@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762361159; l=998;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=CSOgdQpc0lMePHubTaI8zKt7XuYIPcsGjD7SJ+d1YnY=;
 b=i1IXdpI+2THuQXFa8wLghoNr7UkEvIZ+HYFBfmuX0sPOdoo24L21KRdyc21kfonQ2ky812AeR
 7Q+ZR+DzxwSADT8vgD11jIiqgJfy4qZSSfcOGwkSN4fE6qUFppbBcpE
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: W23Ej9TIwAIi0n0AllJpwticyFGVyJau
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDEyOSBTYWx0ZWRfXzymZ9btwIbI1
 iAC48affUBdJPePsiMf7EOPHgTjHn8VLSkunuQ1ybWRxvfxj0YYuB+exjf/GtGZrhQnVVjaRdmH
 4JPEQrxCNOo2bF1xIHH15Cb147ES08W7KapOh0G18ltH+Kh6EchsIjkpnP1fII95IsfPpmsFfP+
 CYizmdxCZ3t/6hur94tvmcv+BA4mB61MPpuvTdvyc2Ae0EwzIq0mm7ttHZyqA9U6cfYri8obvfF
 j9wIQDJlWRjQspWxitUkC4V82dNKHA292qrCaXff6n703Hp/isU8fVsi5iPk5rXuGwlecdvTasZ
 TxOXx2IgW521jA585FuljjR9bWxZlar0G/boiCnPaeYaEuQonY5aQQxcubhRTRSze1Xw31dn1xr
 n4FhXRL+7ekDDY5+93BIm0Ukk+4Q1Q==
X-Authority-Analysis: v=2.4 cv=OayVzxTY c=1 sm=1 tr=0 ts=690b7f57 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=TNpnUgr77EDisZP18eEA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: W23Ej9TIwAIi0n0AllJpwticyFGVyJau
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050129

Document compatible string for the QFPROM on Lemans platform.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 3f6dc6a3a9f1adc582a28cf71414b0e9d08629ed..7d1612acca48d24c3b54c4d25fa8a210176d3bb5 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -39,6 +39,7 @@ properties:
           - qcom,qcs404-qfprom
           - qcom,qcs615-qfprom
           - qcom,qcs8300-qfprom
+          - qcom,sa8775p-qfprom
           - qcom,sar2130p-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom

-- 
2.51.0


