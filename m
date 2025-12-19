Return-Path: <devicetree+bounces-248154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBB4CCF40A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79CDA300DEA9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450752FF651;
	Fri, 19 Dec 2025 10:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E7jzZvwi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hukCVhwS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F662FE05B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138448; cv=none; b=OmznqWyy9RupKVReScj1sCcl+bA+6r/2Lr7lElfUAbmV+Qgooc4H5/ChGcEuGRfc/iUCzqyDXicgLSBIpw+7l5qib01ESKoQC/8ELanD8KIq4v0QxQxih/gzJhKCPFFRNTT0Kf1Ja4ZpT2mmm9HKh0DYLd4TLHsUwb/JnHWTtp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138448; c=relaxed/simple;
	bh=4bgDkVYSDf+mCL/aiwD13RmIZiwZvfBqyTz1lPIq+Xg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ArTT7Kd0Boa66znBod3GN5NXRNKSjgg+CQo03wQh60YjbOKwML15x3xqe6ofKE9THha4FQbmXjXVGRsTNgw6AcHuTxfPCfVyIbKUKrpJvIdM407vE+idtbPBnMGmbPXLyHJJWaDsgcvNjHoVlhtESMXkoSLRBE5pnZktH97+dp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E7jzZvwi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hukCVhwS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cwdN3940629
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=e0za8BNKqLGjvOJYG5NfJu
	RtnG/FoQHOtsNF/PUnHec=; b=E7jzZvwi5nle/DGd/JD8fthmn0pQil5grjIICK
	ipBtNOt2w+QQb6ec5vQMTb71I23a7u4XVsZ56/RQiqBwZhbuWAYuT+qAk4ICF6tw
	FhSPXemO6FSFLO/tTp0LWC39sB5YcoM0C/D15gpBPAD1BzjpgF7eYnpGohj2o/0X
	AdMBEvlba7wSHto4LzYbSNKHWNLeTD8k3R8LD3nCiLxoxZ6lxHPJFFbmtVwojzAJ
	fL/GszpOCcHEp4texAm0xJlrHU+adLS+VntJEmoGC6VNuRZsUlkdANWUzIE+jVDQ
	H2gbjUVOhNuVXGM2WSee5VVNwlBnX2KddjRKdFGvZrC2l6hA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c27pj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f35dcb9d4fso51368561cf.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766138445; x=1766743245; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e0za8BNKqLGjvOJYG5NfJuRtnG/FoQHOtsNF/PUnHec=;
        b=hukCVhwS+dQAiWcHMbUhniT4qbxE78OncYHIsqS2e73NQCnm5QEfhXZtE3RR8nqM6C
         94i5VvePWGk2hM4zpzgw2KLvABKUk6xt8ZTQzL62PeDP+0JogUZZR97CIkDGsWYDIDqv
         f0pMHlmkswjtER/SVR8JxvWO/EPV43JVBOrsG4/m/GDGvJaQE9m902dsRIhxdAVqb2+V
         CFCLJ05MVCs+/AS49bePJJeWdD6FXf3EEOMttvXp953xZmcRz3rFv7sF50JF4j9GZ2Tp
         lLT2oCBRdSjmax8czzqKgM8sCtj2AFBQx6mTtzhHsjZ9bC8ueGnoY1/ZT4w71TOrbcYV
         tVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766138445; x=1766743245;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e0za8BNKqLGjvOJYG5NfJuRtnG/FoQHOtsNF/PUnHec=;
        b=hRxiOOv93eGgjy80J5/ss3KQjhg9CN9GH22N8UxIu0StZAAsPNQ7mG20NT15xNPkgL
         j17at6UcqirhOt0HSyshbXtPSHO030kFruhSmScknKqnXbrS20lg6cHp1VJtt/GVXNiZ
         JLdUNkEV+9yYgGYBrx5Koye7MnIXPzJYUs/FlWgNrmNDA9YVeEp+rfMT+cavJx7L0uQC
         eiNuJ7qJuHN+Xc5C5Fnm1bj/DpwOBimALCwbLp0E02PFmqtBAx5lM8WgPL6r+z1ik0Or
         u8s1V0ZrBXMqLey5NT514QOs0mQWjy2kuu31u3TbmWGYvu8ceHTzyoGC1+xOpiijgAwv
         319w==
X-Forwarded-Encrypted: i=1; AJvYcCVDM596KSwZ5hX0lkOFPB41OPq098wn+OTo65MHscrQ6/z2HVFIvtlJvB8WytYPZPPsTiix6NTq9dWd@vger.kernel.org
X-Gm-Message-State: AOJu0YyE7D3K7MS6oUJLzwtY9s1Eu7RfKiBHxpWFIXl+JrBstg2rC15y
	GznmXDSOdXzfuzSgg+/cVRWT3mt/sdVhMDOfTiNqY2vvrzAnR6h7TiRl9TozDoanFJNpNYYR6fB
	DIol4H694b/cxrpAeR/LuUbDPFISVKylCtLCBkzWZMyGwF9GBWYcIzF4nnohwb8BO
X-Gm-Gg: AY/fxX4Zwz4ahFp2d/sRV/W6H34yh1Lcn6eVBgf2vph9dEoSXE26Q6vuJigax7I/RFT
	xjPTMMyTiLT1FbRWD5+gYReLukG4JU72WxYEoqFdszabXQOIvCg1SO/rK/IHLZvPReg6p15F+oF
	cdvUgxAIEKlI9GUFvdOBOt6lEjaAtxs6xKlWDdhATAXNnU1c4DmCzU5tIyxCLbT5Na2XNZ9zf7W
	pmmngPrqj9mlUmL1QHFN5cATPdJpyrbE7MQntqffsqiOw6mjDX6OEHFL8WPdOgu+SeKWpzNR1g8
	7Y4mlQ5ntA/sr2RH+exr9HvZHYfnQi+E4nnlo6MDJVdy6exWUOhh1sRpD1dONRfby2Us9+j6/oF
	Y+eU4ZpacBk4LG+Y=
X-Received: by 2002:a05:622a:59c5:b0:4ed:b25e:a721 with SMTP id d75a77b69052e-4f4abdc97efmr29148051cf.78.1766138444617;
        Fri, 19 Dec 2025 02:00:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMEzgBPNYPypky0FKLG30q9xd8waDg8Jmm/LVsdeeXFNIa7i6lLOX1qI9z4JmxxL71b6vkmg==
X-Received: by 2002:a05:622a:59c5:b0:4ed:b25e:a721 with SMTP id d75a77b69052e-4f4abdc97efmr29147451cf.78.1766138444065;
        Fri, 19 Dec 2025 02:00:44 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm4106563f8f.22.2025.12.19.02.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 02:00:43 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: x1e80100: Enable APSS watchdog in
 EL2
Date: Fri, 19 Dec 2025 12:00:27 +0200
Message-Id: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADsiRWkC/52OwQ6CMBBEf4X07JK2QQRP/ofhUNpFasBCtyCG8
 O8W/AMvk7zM7MyujNBbJHZNVuZxtmTdK4I8JUy36vVAsCYyk1yehRQZKN/nGZhAMGrXwyKw4IJ
 zwE6CMgbUQARvEwB5plWuy7LhDYt1g8fGLsfUvfoxTfUTddj790RrKTj/OX6ZxZ77Y3YWwKHMM
 Pp1oWu83BxROk6qi3d9GoVV27Z9Aeen2jb5AAAA
X-Change-ID: 20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-e04ca6c99f0f
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1352;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=4bgDkVYSDf+mCL/aiwD13RmIZiwZvfBqyTz1lPIq+Xg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpRSJAX6hsZI2L1ofc208nUHKeXl5VpbhfhgUJY
 i9MjPbWCceJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUUiQAAKCRAbX0TJAJUV
 Vq/8EACNtRFG6CtntzAOTPkTHfIFxalfc4DJ2U14MwrF2lw/k8d/PJ8JfWzcm7wbBUiIMs0iX37
 TZkYA3sruMgqqEN2ykIyiD3JFfXFHfdjg7+xz92+BdkCjIFCk5bxOpRNIP/HcvnNXWx90Bb1Zls
 cdii/vbrSasuSQ552xwN0E6qS+1S9oPzWI4G+sfbEI/xabOUx5A+EkA1G/xVdbJll54Oc33bOJF
 3wdpR7m4i6G/m9OHHqI2guMsjuwW/fJucyd1taxy8Wy4zzqR6GtMwMNxg3AtEU7qR9MbiI6+qg5
 pZBlN9cgWHEwl/00SOSPPBcrrbGxqy1s8zSBpMHnOSR+dADs5LCGbQqvFJALH/7vXe6U3fPWt0J
 z2LX0RgP36svaLq2VWJnrB3Sf0KZKtvnsrEeEvRW1Z39c8t6juJgoNsjUDVsB18U0HGWq8kBAur
 FDWxsxU+5J8BCatDrhhz2eiSIAt0n8WPQ4pwd601pp7CU6LDdK5cBCs9+RMYVTGIoREdboFJqpj
 nUgX5PmGozhWN/+NudVBAKijS4gP0XbodX3pWm0G4VFfBNn/6cWD7c6TjrpdCQop4kPPEUkImMg
 flH7bEUqLeNqu29DL35j/2yBXmjUQqQOS2XYC/gSaonQ/g6jH/Fp5VsbRQn/LQv67Ld+Vng8HDk
 MivpkejVLgQsX2Q==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: ReuoCoPI2O6zyXlrQe3T5tVf88ruXIpH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA4MiBTYWx0ZWRfX086Yqa2BQ4kv
 VdQ7Q77cK9btWexkMRwtYQgHqgQ8Z6ubFVPqZOyVjn0zzioPLC6Bayh7eChpf7l/Fbjlxi0eaHx
 hYRAeBkIV475Dqijc3XGm0ukUCQdH+4qLzk775DW3DHRP7D/CxN47nnll6A09Jhzf4aXpSwduRw
 zxUNIDvJLvCO+Fq4kZHkFgeTGRetJExsiucNsJs2HxnSWECYJn3xteBPtBYDFAWxLHcA+w3eyQO
 OWh/aXVxLKiFYHxRhVIK7QmVSRXcvEYeQiTfFleHLNmlFHsN/V410i3q1z3OSb1Yz384fDMrS/j
 kNVXHVcFYNx52y3rjKFlc+K1ItxvQQnWPh7Q5MSxybOuLAF0EcBC3a9c2YoILr5GAW2vSf6ySWY
 yNT/gS6AHjuQiDQqD5RdvqoR9jPOmS8ztCapSbmOhdEsGcfbxNzmpI0exJ3tXVcCyYmsogTxBpH
 RW+r1qnTOnuUtCzI+tg==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=6945224d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8
 a=Lz2AerfunYj4_YM9ZqwA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: ReuoCoPI2O6zyXlrQe3T5tVf88ruXIpH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190082

On X1E80100 platforms, in EL2, the APSS watchdog is accessible.
The APSS WDT HW is compatible with the one from SC8280XP, SM8250 and the
like. So describe it in the SoC dtsi, mark it as reserved and enable it
the EL2 overlay. Also document its compatible.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Moved the node in the SoC dtsi and marked it as reserved.
  This allowed dropping the interrupt-parent property.
  As suggested by Stephan.
- Added separate patch to enable the node in EL2 overlay.
- Picked up Rob's R-b patch for bindings patch..
- Link to v1: https://patch.msgid.link/20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-0-94ee80b8cbe7@oss.qualcomm.com

---
Abel Vesa (3):
      dt-bindings: watchdog: Document X1E80100 compatible
      arm64: dts: qcom: hamoa: Add the APSS watchdog
      arm64: dts: qcom: x1-el2: Enable the APSS watchdog

 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                      | 8 ++++++++
 arch/arm64/boot/dts/qcom/x1-el2.dtso                     | 4 ++++
 3 files changed, 13 insertions(+)
---
base-commit: d9771d0dbe18dd643760431870a6abf9b0866bb0
change-id: 20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-e04ca6c99f0f

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


