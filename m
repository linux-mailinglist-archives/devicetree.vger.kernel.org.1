Return-Path: <devicetree+bounces-207650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6D3B30281
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D90A15E6A7F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EC034DCFD;
	Thu, 21 Aug 2025 18:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTc9V3v/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A16A34DCF8
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755802607; cv=none; b=URRVxoYgYQlSkK2QB72FVDvMXg4xYZMUzjRNZQYPRCmE+O1Il9asaTWmqZiN6cH00ZEYVYBvLflQhKgHYMGbJ7VlMZj0lCMk4i9L8EhKI0DdKIHrdzg5mA+GLrQ98ANhFV9X+GBbw15XrtKUNg0NtSjEGQV1c0Z1s2ewfmR+oow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755802607; c=relaxed/simple;
	bh=X5/b2wPl0B5JtiyqdyVNBvFH6QvvW/Oc2oH1DyatOms=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Myj1lw7djbkaeLInDUJb0fCYrn3viTLWyYJB+ZPjerg8jwaC8PfsAQBT4QNPCkZuggwrMo8hRjyclKUTp16HbIC7S2lFgzPSuZNk8A2tgz1hesw7OBCGc19rAY6JGu4IRHSkLkRwHAFi9cDJgWVIwlrm2/AZHvEJnBc2gPNPiBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTc9V3v/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI9nlw011622
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Eyjmrtt67i/hSgA8ZAsqicrziXjRyLeDwvFEX9xKzs4=; b=XTc9V3v/xDZMNumq
	p5UbMbUr3Ey8ZhRVv5Z+a6mul442zRqvNs3CcT4ELBh5rmpl71dIRShNMtEKUgd+
	rYfJGQmuPqPFruhCYPTTmUZ5PrgNGFH0P4D+RjjeNpGPqjgc0M0cT383CVE4TSz/
	k6YoIcyM+Dm0/gtVSN9zBZQ8rRbkov/8z3qvM22WmkDL4SDaFTQI9oX7mA/keeez
	I294uWhwdq5dCiwcpUvzStDy+ndmwS0/oRxMd000GcbKra5PkWL+jIRLlpQbn+HF
	k2Uj70oTpsrks6m6qOlpgr+F1atUVMO1xs4E2Ak+QZxccrykdeMbuPnJHQ6mTz8g
	J8CXlQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5296g04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:45 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e8ae86ab3so1511293b3a.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:56:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755802604; x=1756407404;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eyjmrtt67i/hSgA8ZAsqicrziXjRyLeDwvFEX9xKzs4=;
        b=n4qwYslzOUOodkp6ylUHV6EKb3p6eAy2t7PeT+1fL0eZQANjmIZuWnlBegHcjj/BN4
         2MwVt2ls7lDNocQ9+RRhTutGr0p6T2JRvJkHcb4eqpzvoz+VYagnmlBNIyBZax3IEm65
         U6h+N+lBLxzsHeZmirGSK1tv1d4yY0FN4kugFQbIGBmQZ1ywsPrvjDC48GRWXW43LsZN
         UUJd8/o1ku2yjd3430as0ooabA4BzQOMgcssZCCu/QV3ZjcXAy0by6l+PGb+6ZchORtv
         GVDj83rYnCwD9qNS/yzLaGkshjx+OpeBCRD9UI3/exdCcBT++dbf84fOrDDyzVp5QnBU
         Q0MQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVuGNda1WgxGO7BSWwU/tsXS0zh/jafpHcfAeQJ8sRApTP4wzClG756xVdDLRsxhtr98qCAqXFDs4N@vger.kernel.org
X-Gm-Message-State: AOJu0Yx02a0oBt05ImPtFKODLqorfDmiRZZc/HeeD1Ryz2TxHMHkQAuh
	eQFvhcXMJAEJok/TehmHr5rirG0x8piEgIScEeTX9NZODfSmvR/3G0SGfxVA7gD5y18X1w+Nb9t
	GUalhY2cXVaC71JODaO4bbr3vVz33yzAsu1ecs5VGtVLbRXb0YOVQ4B6tLlHRIHuq
X-Gm-Gg: ASbGnctTmZn3o1S9693H9fzG5oKZuyEYcmCLpR0htJtPD1OuFMsDy0EwF6ekQVncK2u
	DIu/VN3UcCDih5bwdxkWAgwarRtQ95L7+2EalCTf7B7AMb14b/dSop/RAI9bo2XZ09fDo5VE/ri
	KECqW8vTGj5ItWGKzWGDlQat/36x77JWDsExpa+9gbMHDmHnUQi05Uj3LtrcXMGxvlHU0MXXDkR
	cqlY/UyJ+4RFpFjIzev3qRHtdeea8b2wRmuQZVlpIqIKSmGFNTpqSCWgkQA4CsdknfTR3U1h8HV
	366x+aTmM/GRWRhY8IB4gs0AkYiUh75z5TmZiwG7x+j+twYF/i8KerNmDNfkMw8N
X-Received: by 2002:a05:6a20:394a:b0:206:a9bd:a3a3 with SMTP id adf61e73a8af0-24340c3a714mr325113637.24.1755802603757;
        Thu, 21 Aug 2025 11:56:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLnv9zIkKigFMRZ5cTavEVxl0hH0Mk1mEGvhZ0Z3VQ/d704GnW1rvvfgCrrEv2z/W1xLZk2A==
X-Received: by 2002:a05:6a20:394a:b0:206:a9bd:a3a3 with SMTP id adf61e73a8af0-24340c3a714mr325089637.24.1755802603354;
        Thu, 21 Aug 2025 11:56:43 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4764090b0esm2106977a12.37.2025.08.21.11.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 11:56:43 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 00:25:30 +0530
Subject: [PATCH v4 5/6] arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-a663-gpu-support-v4-5-97d26bb2144e@oss.qualcomm.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
In-Reply-To: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
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
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755802565; l=735;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=X5/b2wPl0B5JtiyqdyVNBvFH6QvvW/Oc2oH1DyatOms=;
 b=mTcyCQXosL3wdwNsliBAQNXiroFwDZJGSaZ/bRV17fNt6HD7Zn9Y93qTXO6bpukLNK3gl2S2/
 L5jxBVtbKV6DM+Sf2O9Nz/+8Zr39EA/mNiV4RlT0T38+vpD8UVxN4B5
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=Aui3HO9P c=1 sm=1 tr=0 ts=68a76bed cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=jbU5qkt2-FsioPMlu34A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: rLi5WLb952jQbhnVWwfy3cU92HrrF4rk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+89MFcH3Pq65
 uOIKfGrETpMDf1VaGle+yXRs7K/zqqeRULBEsmyHQJHrxcAb4FPjlv0N0ptDcy81KuzuLY+8vMP
 M8t1W24kaKe5UdBDSrW/WFBPbRD6PBVvzWUku85NGaj1C0l7Lze1yHnRdERUZCt35zHxkXUdD8l
 BhMnvufiTc7/I/PzHWt/VStFegTgxx4HOBNOpdCT19I9NKZcyRxKPiRZNwH92uj9zmI4yRR+qaa
 rh0QaRisbGzHoVtWEMjPg37C/GG1WNO21mzFZOV6m57n5W1GKf9t/QSQAy0PYFElPMpU3m2NrxY
 Xk8y3i/1DsOaAGmhZ/Zs7AyyyeD42AD3fEMBni1JJlu9vszUgkQEg7lZDdUZkpVfyQnKTXvC0pm
 Ag3yZtpRqtCh28OMs3qs/2AiuUtBlw==
X-Proofpoint-GUID: rLi5WLb952jQbhnVWwfy3cU92HrrF4rk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508200013

Enable GPU for lemans-evk platform and provide path for zap
shader.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 669ac52f4cf6aece72141416068268531fd9f79a..876f43d761870b968e43ea1ecc360b4403f19fef 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -253,6 +253,14 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sa8775p/a663_zap.mbn";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };

-- 
2.50.1


