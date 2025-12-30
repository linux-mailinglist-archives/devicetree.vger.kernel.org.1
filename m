Return-Path: <devicetree+bounces-250513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF58CE9AFA
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B026301EC4C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052BE2EBB86;
	Tue, 30 Dec 2025 12:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dpEsUYm0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ALpJ1l1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DDA2E22B5
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767098073; cv=none; b=dryC6Zd5739uekSJbykHdxyBa2N+Pr0//4g8jIQUxWdSLAh0B5hc3fVYeiGAOCkOLdtcb4Nwex7UgAEL0G00g5Hwl4GNb/uTj5rUY97pf4hzi53lHIrXmcYHODyjA44dK6LI6UTXDkUFCZnKIKOhSLewC4V6mHySzfuziuZsmOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767098073; c=relaxed/simple;
	bh=JtBAApNY0JeyhPIQIegtD9qcHVqaABy0l3e+bF7RSVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u4HOnThqRqOnbY9lFnXsCwm/3X+Vl393WoLBVehJZSXBuVE3DSkNaFG7irj0jalexFyycT+n5V5SNWHPdH3krCx6Vpcz7cLvyZcKvY5XcbiBiR5zW0hS6DN56LuRw6Mt6ZPvxNs1bzNpy+6NNwmHnGeE9mcaFlMaQPPNnLqJ8Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dpEsUYm0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ALpJ1l1a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUAWs5E2596423
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NAs9cDcXq7JdZBOmv0oBqsRd++k1ZPNg9na3e0+ANvM=; b=dpEsUYm0oR1J1bmf
	zXsXUpkVO9/8ZB8FHrGcZK3S5HDAaHGlYFuNx3DJkI2v4fbAjVJO2L2eSxl0dfKP
	RfVHiRBqP/Y7wUoACzLB0XvB+9V2v61zkGayQ2yPeff+Yr4EdhanrWxySGVyyzq9
	2O98wOM1UNTYbBRkwDFahZH9xpybeWOVih8yBQ0Kzexgj22R43KGZCdtriZYpBg3
	BDaPiBuEnxmCttR1wu04dTsIHS45Ere7Zz/frmNLZW48PFmWIgRRgROOGpj8jyAe
	gJnejGK7YRAdYET69ohDCjzjX8o7K5WADU8PdC5uh/4dEbV5oT1vYDNpaKNV+4qe
	C2/CpQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1b4tp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:31 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f2381ea85so211326435ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 04:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767098071; x=1767702871; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NAs9cDcXq7JdZBOmv0oBqsRd++k1ZPNg9na3e0+ANvM=;
        b=ALpJ1l1aoysB19L9tlFu1yTkSwVUBKgFFYl4SGOaqLC3DzK6yFwDWIP7v3iPRDUrbM
         5f+F/Y0qQSlir2PlsaRRUKWHniNEcKIe/g84EQeFzMtnYPc5G4+ah/CavlzXXma0b3Iy
         d2Ngia4Lo0gHylBm+gnyJXZMR8FMQCPKpj8gJyKlcmHZ4o/32etymY9cNPMiX8WjbgGg
         feG1mtvLfhGLQm2iHD2IQVqNPEr3WYaRSQOp4RnXZzcEertxa3wGc5G7Qn99Mw5KlUjo
         oulhL9hduiC3BfidipLQ/Qy6h/wmqyplU4odfha2Lfm06Z9DJNOv/2n4oAQ2ZotaB2Dx
         xn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767098071; x=1767702871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NAs9cDcXq7JdZBOmv0oBqsRd++k1ZPNg9na3e0+ANvM=;
        b=jWouxtq1DSD2DhqIYd2NLGYkFwucLkzHMQR1boEhQoBbdyF3lOJLbbym0HbfRipiJ0
         dGujIzPGJIFXQIQSbtmEttyVqzjY5nyV3ioZp/0z9CHKDpTRaI3jb6rUmmYTeEA1Ys7d
         DJSqRIWEhBsiFGsFxhuogqTbc2fuq35LUoz0oCchGCWD9CmPnuR0vDdaHOiIxxAS/XuB
         /aNNLTU9q/mZt3w3onkAM8Yqm+1XHzKvvBu6E+QOmiicoTUoJQEl3Y7Dv+TEkd555m5z
         z4SDhLMxcmJUuUexYHfELOpXJIONzqY07A8Yz85dpk64OTfoIQRxm1uRu7LnGIY96mYi
         7PXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXI0rVP95LlZ+n+PzF0KZnnMvuToINqvZykqr58VTJYPNZsOuHeTjsX4HKyqfnd0kiAJiTJ3qjjb77J@vger.kernel.org
X-Gm-Message-State: AOJu0YzpoUitAGZg+N9rc3lpgf8CEmT8HYSF1wyZyDVQ0nF6Ci67y6xN
	k1JYCcyquDvOehcdRSI5fZsygnq6uB7YUgI1jZYX6Hs3BaHTBGUCf0/+1xUY5A35YcDA8xfTKF7
	XHt/CMwtbMkQ9Z2qNfZ2G265M5pAgnpRjSiNK5lcnYsnFdxCH3YkFxFnT08IwaPdlUQfyvmXt
X-Gm-Gg: AY/fxX6OfVRxCy/28U+C2pUR1t2cLP2wSY7LEUXt/4sEEXQRLnUszYe2ePY27rtuDon
	tYMvzRWhv5LHc20edAZt0M33+Hq6QZAA67o6Wgy9fRlKkrkNGfeXVXNUfSE7tweO6EGZ6NT/ggf
	v7pGUgSOjN5i5/gSUSXJfkdNxlSkWIj6gkzblW9Zzg1RboUP2VqfnsbQ9KZGTYws3g6D554IaY9
	X9OIkdZNnGi3a2h2AAzBxgWYAXFAjcIH97isbDQfl7RdYxuBWwtTNa4nJ1QXxbn2UtJp90mHHc/
	S4W3322Wm8ZZMsVdXlx7uznVcxg4gMXjGMtrGh0Zb5dG4QIu9DNYe9CRqj/IDhAhY6YkWUHjaKM
	QXNZAk32p9vb0j+zKnUlIyHsxkwr1znkDWg==
X-Received: by 2002:a17:903:1207:b0:26c:2e56:ec27 with SMTP id d9443c01a7336-2a2f222b5d3mr347420295ad.19.1767098069470;
        Tue, 30 Dec 2025 04:34:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFOj+Jt7FWW/tx6wdupg4tsy4BPTQK2YMy5OILP4nJWqDLIJNYeaaBFj8U9AoZfQNJ1CYnfzg==
X-Received: by 2002:a17:903:1207:b0:26c:2e56:ec27 with SMTP id d9443c01a7336-2a2f222b5d3mr347420015ad.19.1767098068884;
        Tue, 30 Dec 2025 04:34:28 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c6a803sm295748695ad.6.2025.12.30.04.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 04:34:28 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 18:03:28 +0530
Subject: [PATCH v9 4/4] arm64: dts: qcom: qcs9100-ride: Enable Adreno 663
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-a663-gpu-support-v9-4-186722e25387@oss.qualcomm.com>
References: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
In-Reply-To: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
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
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767098036; l=823;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=JtBAApNY0JeyhPIQIegtD9qcHVqaABy0l3e+bF7RSVU=;
 b=coZRt5MPySgLfD644OsvQcRrvI/RAD6aN9OJ8pn7yvtm2GmqPTvY734oMDaaw1BsYl3rteTjF
 HiMwmWv/QRqBmtC/Qnn3PLJ9dU5st1Al6NxXmXvVM9yGHzbD49H0JBq
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: wsIHrmivE7XUJno54VdLIwpJAPnXzz7P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDExMyBTYWx0ZWRfX9m7DKtiDyoTG
 9bNXF/AD3fqRFiaJSl0TiahsZntDse1ktkMj7lNwh8ihD21by5eDZVgqFYU8x/JQt5lL1JOrwpS
 rFEvRtMFK8eX0fS/Wh7E+FQmmdU9Ve1/WegwlQIMkk5nD6lbQISI+GOeiH6BN1yxZn0LRMg65Av
 Kztetxlq3tIW1OurBFk4Dvg+VchwJuvhVLnij5eib1scDzcAfttarAw5Pg9R41Ea2HuSDFGcR9J
 AmuHmPigzbgBU0amgCRMUQYYnMiy3dR0nmGztK4YYRAtzARAjdhTzWzBYI1lyMr/Dz8IGQocKhS
 QPO5JIinglvZ24fbOyh//BKbCG75ylgdFpiShR+uSs4524LjTnXdwlSajxoOfDsmfewcssEMFNm
 fkoGVfoOSXv+k2L5eefGkOlRE8OqBs1tcrMcfXgEe5r/0t8qgkel5Ox3j+fw3Y3Cj4Y4oK5VUEk
 CsBD8uvbznHlXbqo3/Q==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=6953c6d7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: wsIHrmivE7XUJno54VdLIwpJAPnXzz7P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300113

Enable GPU on both qcs9100-ride platforms and provide the path
for zap shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index c69aa2f41ce2..8fb7d1fc6d56 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -436,6 +436,14 @@ vreg_l8e: ldo8 {
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
 &i2c11 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.51.0


