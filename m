Return-Path: <devicetree+bounces-186151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D49EDADA8D6
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BA1716CA22
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 07:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9151F463C;
	Mon, 16 Jun 2025 07:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dRERF8be"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C0F1E9B2F
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750057470; cv=none; b=eQXkgg5Jecig8NuN6alw+63karhQT9uHbfRansOJ1XRl7HWSXUXvOg7eQdlMsxk1g8m0dmWl6Iy0CA4tXA58zTsJXje8edHZEAYKJKhAsjaysgMUBfSoTbHf4JMYjM/6g/62QFzTKkmDt3kUS45NjXraJLd4f+cZEaWAD2cPB8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750057470; c=relaxed/simple;
	bh=ZOHcPPpzGdQk38BOw07YMrFF1gqKRMRweuVFt0is6wU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QBLlERgEcsffvXx/ItDUgfUKD5FUFu6vgc8mVzxsnvSRmSrBwHLvNYbv81nzPwVOHb9U93JLJt5sg4+b+XZEgrrA6Y2W86b/12bzR2d7XLcZLxWXIcTY54nnlED16nTVQDmwfIAJJWYJp8yNZhYLY3vzlPS1w6aLJGqLCCt/7g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dRERF8be; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55FNZuTd017789
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fw+aggTOrJ5
	+RA9xTss/gBLVYENBQWUKwq4P64eQhiA=; b=dRERF8bemiA/1JgCtH+ZiA/wW79
	E/AG1zEeS6yg5Q79TYXZ10SHciZCEHGFuJc5THXCTtaNlBz0+TZ3K2s3hEnsQ+e0
	0Rn3klNw7Nt8AOzRybm1x7LLm1GUUWzUZp3pm3t4H8VPoMEhVYloy5rdN2WNi70J
	jns24+AQTHF+frdUZSLa2cqm/GQbkNU17FitEhd/6rotD5zK8AMhGugFnkm5mwye
	K9PLSo4TxMSHYNi5g+i8nVWppbD+irSKo36qKLGjlNTawo11qg60sCn3aoGwY3cw
	Pd8BFNvmUn8MEBZsc5DhZKNVoGWEJ2PYDIz5rEmwDASUfSq2F0H4Wn7fTOg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791ugbb6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235e1d66fa6so40457915ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 00:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750057468; x=1750662268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fw+aggTOrJ5+RA9xTss/gBLVYENBQWUKwq4P64eQhiA=;
        b=iwdCw8jxLFLH67rP9V/YlWwrYjQ0itWTl+OrHSC1eEiweXWoxe+apbKs7TEdEKkGd5
         JLz8bTNS9d1DiKnnW8sd9VdA36PJewpQ4dI7KStZmTukeBfeurc+XzEJY01OHNUeXLM8
         eVeo33xtjkTOFzU0A5iFOXvhlcRvGsCYNpgBW7Mei8bZ176lLO4noaWLtlBg7KoENh6m
         kBjVFqP5Vq+c963FT8Lx4kofKZ2gxLw+STFY7xAgcpBzG61D8YWWAFRmWz37ADse8hZs
         qh2TKI3r9b9NIG9uF+CHpFbfFRn2T4EbtWZwY8KsGwSMsr3+xr+ZbAc1uGLbskjVUbLC
         svow==
X-Forwarded-Encrypted: i=1; AJvYcCUkPFhLI6LA66W4dE0S+Eqabz4xWPXboQUMYDAHsmz+4xFxLBj2brOEkQqMyq0BSPEdFPjoCNP8X0an@vger.kernel.org
X-Gm-Message-State: AOJu0YwSMsiEsYa5nEitAQ6SvWX+dJoSLdCaj6awCw1A4+Nb6E72ZDoU
	R6wNKM+OnfkpNDIu82dC4uPgBLxZz7tpu2kp9Kgqt+tBZhvHZ7PiiheMY9y3tliajjLP5uCpO7k
	i2hAQpj17LNcZSYPpBiOYI4hjXQC6gswsW1JamRpmDx0rhNhqRwmR/5VY5nGLMNub
X-Gm-Gg: ASbGncsC2unqfNcWmkDQkk8kRSTLeYa03xt6t5HKpDRB6NOpxtJQVXuDf6r8zP1Ba6S
	6v6Bws1DLHtRZgSZ/lz6XCxutOXG/eYhW8DCpuFxym+t5xNHATXW0qIPZXOMq9lthuHmhDMah+B
	ms+goWGCUupHEdUaNHWCU1yt3IfAs2UNNQg/0j/kV54yLKe9X+aWf22XSVCAGg2RSq0EWPANIFp
	Agllg1lpE/ucN1hbkQKFuv7w0Lu3GMSPQm1JCOFPEFAIcVsJqRfJZ/UcFNgfOAjhi8ccEprMOWs
	EPQoaUL6Pm95CP0HZ8rJFN/rZe5B327DSRn5FCXNrxQJ4yH4vydIW5qRtqU=
X-Received: by 2002:a17:903:1246:b0:235:dd54:bce1 with SMTP id d9443c01a7336-2366afe7d67mr124587225ad.15.1750057467870;
        Mon, 16 Jun 2025 00:04:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEREkHMHAsNS40cb688dZG2Myg4m+4JQIZzJuIqapIgsh/RzDVfI7d5uem+4qxgPSxV2cxdsw==
X-Received: by 2002:a17:903:1246:b0:235:dd54:bce1 with SMTP id d9443c01a7336-2366afe7d67mr124586935ad.15.1750057467493;
        Mon, 16 Jun 2025 00:04:27 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a19e3sm54435825ad.82.2025.06.16.00.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 00:04:27 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 1/2] arm64: dts: qcom: sa8775p: Add gpr node
Date: Mon, 16 Jun 2025 12:34:04 +0530
Message-Id: <20250616070405.4113564-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA0NSBTYWx0ZWRfX0cOWOeUp5BzH
 sGYQMvLgMEK/VvAyjxatYIDhrebj3FFKqpXNKRw9MTUQk4JDTNi3ImrpGhQ71ZKpDLpvwhRjDnX
 DrjA2sCGf8Q5rEYec05U0rbML6uwuOvavxSeuqzkUXl4PAFfoyvqU083pl/r03gR0pP4A1yoAYo
 lYLQGGc5GpX+RGjz7WMZbuN9YdpotcjeDuEwCVjUaswdpQL6eN8GwbUlGOVmMmTgZ1rJIVfhPd2
 47eYUmNU6Fr6Wjemfub/Nb72VS1BEVDIe3cMEZgzeL4x4vdsS0xkVJAU8j2TqRMG7jXwrR11VlG
 QKNXVmC7SuAOndKPPeiXT9SHKpTU7zrgXSpkV6D/YFUWJfddNxEuAa5rw0TUh47t7DJ1FHvl6Ov
 fbsJz0UTHFFXHio3CqsCTF42EDrTWiGJHsDkGxhWqvPXyPWFPiPAJ9RstXaLJ+4Fe807G6tq
X-Proofpoint-GUID: BnayuMe3agIIBy97ciYSYFqE-oDRgVMU
X-Authority-Analysis: v=2.4 cv=NtnRc9dJ c=1 sm=1 tr=0 ts=684fc1fc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=UhVUwdw8r1UmGneQsTgA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: BnayuMe3agIIBy97ciYSYFqE-oDRgVMU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160045

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 40 +++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index acc7b735be35..07ca6dd4f759 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -6284,6 +6285,45 @@ compute-cb@5 {
 						dma-coherent;
 					};
 				};
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x3001 0x0>;
+						};
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
 			};
 		};
 	};
-- 
2.34.1


