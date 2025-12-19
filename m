Return-Path: <devicetree+bounces-248155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C31EFCCF40D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C81C3016357
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199132FFF9A;
	Fri, 19 Dec 2025 10:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E1OZ5uA0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AnpArdvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B6AB2FFDC9
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138450; cv=none; b=P6+qFd998dRMQ8sOXLaXUD8UKz7s1qRmqmOHrRguOHcS+yOPX0po8GTIlGrNpJVj+NNnMiXEkv7GfPRWd7ouDsB1zjksTAuqAGYYRwlmkRWki3hQkz4aV8YxE553SH94Pbcx6DErogNYZ3GWskwd8UNRrz2xdsIRtpyxKJIqAY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138450; c=relaxed/simple;
	bh=Jluheh2jHquG51NTxi5u7y58uVIJrXt+KUDjFXNRtYE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ukXNpbbRqg9HNBwfP4GOzq/HOU1QeAii9uvayimOdGQtsawQ1C0v/bcDbGAUHmOmq1TC0UBDdUP2A157On8haKG4KfkbplvIljZhEBOmUxbik7vbBhVWrrUJsGdP40s80YgW4ONBBwSG1/KPlAxZfsGW+alhvPcjratVPoc2/dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E1OZ5uA0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AnpArdvl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cgSH3992412
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mZDT5LOQJiRveKj0afNkIJoST5Y8WOlaS6II7EWUiLc=; b=E1OZ5uA0oycFnn95
	YKQmspMeYchnuizmt80l0v+/K5kAeWDgm54yuB+Jb1h8pGLMrTykqYTAuShC2PEr
	u3Rhohp7HdgSxPBfxnQICUmF/38SRWwPZPWE1IlhrBl0uslwQvkAsZK6ARNRj7B7
	8dVTt2ggEPcBob7WrzsQmhQg0VVtBpnp/yVPUy5ZlPqnf2BPRxSgAdQSG5+ZB/lD
	tTHHwC0WI6hq3crz49+keBnSzb00KdXRANrNEOq8nn6eUehnWomuYoj+pPHaEF1p
	bCpUXv6dwC3CtznFVudILpRsReGrC1KiVmiZUEL+mJAUenVRM1AbMvVSExn9dhb1
	xH8LeQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2da5qf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b4f267ba01so648261185a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766138447; x=1766743247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZDT5LOQJiRveKj0afNkIJoST5Y8WOlaS6II7EWUiLc=;
        b=AnpArdvloiBRgNyHZKlr/Yto82u8qN+3YgloIqJ03whk937Idr+uisxKaI9yCTCeIb
         wM6VbUhU0UHazk3F4CyoQgBdHDPyJ8czsGJDJ0cgBr2EiUnJzMgKNbhrlPdJQWK/1Lfl
         ZYJSaMqXXtK8mSnF4V/i6Ek3b0NNf05vL+YND5EyAVW6yOrcq+3Sxz1kNm/J1AsHZNro
         tn+3RWn0ilztVgZadkw+M2XQLdCJ+Nf3wT+6JGXI7V+jJPIjJF/hHJ8vYza3T70/vwoR
         q/OIh7717pbmTcEWrdFm3btBTUegko1TQ6xOt9w14lGGwLS0zb8BYURCGfp2LRealpB6
         jUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766138447; x=1766743247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mZDT5LOQJiRveKj0afNkIJoST5Y8WOlaS6II7EWUiLc=;
        b=bZ08vv8R5ZMsl2tYPclhe4frw/AXIl3dMxs54B1SA9ahIqJ5l7PtDxwH1AleIF70pR
         4v/h0htNtCEmaaj+Ly79tXicUbM2LbWmcZ35cEfqEkP4uoV+01lmQi6LPKNhnTy7oeNT
         dlxL4t6W+EoYM+HnFgNBDcEQ9RV1sZXa5c/9g2dXDrXPLqMxtD8k64dVUt2yORz8o7BZ
         LLCkZ7kJ1oZ0YIitzMKGr2/N3N0wYGTlzHWMrcuvLpgFTEFcP1GeMtphmz+yoSt40h8A
         GVTkyUjuVN/15VlX1Qbn+vC+rhxnlmJlYuZhpuse4PzQIMByu0xbi7Kli4u/g98TiHV1
         miTA==
X-Forwarded-Encrypted: i=1; AJvYcCU+4oAeMvDCxhtqNpXUL8ZCWQnOs8LU+KNOxiuGAsUMMyDFWlE4P8hizm9lskE3I5lnZ522KFFX82g1@vger.kernel.org
X-Gm-Message-State: AOJu0Yzezq+tCp0ILV4c7j9mQzdbhJPzJmA9klyZEWSxQKwyH8rsHP2F
	UbmmOy3BrVNIfMoqxHMVyDNxDuKDNNPJjU7Sz3vjv5MbW+iD1ZuUa0hyRTGc5hYDBvR0o4uDOyG
	BYbZfkad49MzFrJIJaxlJ6B21Phebj4GMcEQzHU+A2iEczKdg4CzIwwkdtBbzP4aC
X-Gm-Gg: AY/fxX7AGc2hhPSqfE8VwQlo4PV+1vOmK9teETRW+NXLKbBo+XXkHJw8zEN2IZ2Klfm
	TmAf47WZ2Y3/uyROAqNb/J/ujQ2hlcyIydTiYcRwUd5vD+Ej3Hd+9/8gZ+4GhmEkyz/kBZi0HCl
	pEXppxXsV5DpkGrSVFFqBv9LqjmIbxxuFSbmJqbTPOJAmDqQ3yZjdds1A+RW0sZJMoaPlwUf/KO
	2nkG9NCLTuCF+z3R6RNPBd7fIAqlOVJZvfQwQouhMBvF0o/YKH0BVELHQjg1uKw2klIOtAiBYig
	tYuzXqIXA7L0zSSK9WMcWJ9tFX68+xx5KcjZ8UumU2nPQn6uhAc6iKUnCcHc9t8he3ffGciaxDQ
	G97c8NdCHZs4Smvw=
X-Received: by 2002:a05:622a:30d:b0:4ed:9264:30fa with SMTP id d75a77b69052e-4f35f45624dmr86977621cf.31.1766138446552;
        Fri, 19 Dec 2025 02:00:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH9UtKykWpaEkxs6kiRs0NfY+njLFW026gAdANjggNhdxoRU2Ew+Askc2CMcbS38/RUZv8LzQ==
X-Received: by 2002:a05:622a:30d:b0:4ed:9264:30fa with SMTP id d75a77b69052e-4f35f45624dmr86976751cf.31.1766138445921;
        Fri, 19 Dec 2025 02:00:45 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm4106563f8f.22.2025.12.19.02.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 02:00:45 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:00:28 +0200
Subject: [PATCH v2 1/3] dt-bindings: watchdog: Document X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-1-fdfc6ba663e6@oss.qualcomm.com>
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
In-Reply-To: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=946;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Jluheh2jHquG51NTxi5u7y58uVIJrXt+KUDjFXNRtYE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpRSJG8l9WhVzcJGaIvfZQZhwes/GWQfGSiRMrO
 d6+JjqSu0SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUUiRgAKCRAbX0TJAJUV
 VvHJEAC7yMt28QcxQv66SvejS2r0WMMK3pUR9tyCDRRNCdEc8e51XcJ+4MdDFNYJrfk6T4FC4ef
 j/1ak2n602Zl6sBghdwUIkwUtski3M6sNAhSSwLb7z0nENoa8t8ZbnGCHyCn+zJ6qkgnNU7Eo1L
 CDqdJ/Vuf8haY+CSaoSkrKUfayV78WusL0AqyS73gb0rOEWhieFGBo4CygnqHZqaStEzBrcYaop
 hR6K0k225hJMkkeIxMMxX2aOCYCSsoeLMYgKQaNzJJLJIYcBd8/SzFUg/6NM1MxOOWnvCdB1pUi
 +raXQsMXjiy4R0fbWQ3StjpfahwtMHFrwR1mm8oc5iiziaLSuX1e1YVApb6EQPZLaZpMXLtURhs
 INeA8imWu4589sGmSu0n+/8cSyB8ZS0nIVe32gBaYhesMHvjZg4iEnTf//6v6W+CX0RTGh9/3uJ
 lPoso5gXVkG6KHCARrMt/LpGDJPkOK5HXaZ7FnLsZaYY9w7I21E5+tcvDFjHWpsMUr5TG0cL2Kz
 8TMewOH/nTZIRcMHm8oiecpwULl+aURSJwpUwpyfOz4tEbnTEelZnX6PVrJ2kTgT9uufH4/poEa
 OI5vyhJcMaZ8CDoybjY7BjDzrW8nC3phIzLmZ4IFo2Bw45BwnXon6Xaa9HruX2shAawfYNYdsQs
 4uVffD9TW/zQXpA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=AcG83nXG c=1 sm=1 tr=0 ts=6945224f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=b9FoeKhDW2wivhjuwToA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA4MiBTYWx0ZWRfX3hEzModsvl/A
 lodco3KM2deNn31s6xV71Olmp0N66820ifo/MhDp4TipB1Qq4kYsWewEnmXyn+8tXfba9lJ+S8K
 wcTYfDoK7QnjjtrrXP549O89BFR0hv2B6aBG9f2B/JVf/Nhy1V/4bZOhz0y68siLKWgExGWe9FP
 eE3cRhOItBKuL/fspWJSgUFWy1f6hFluVXVyMsibljFEX/Pnq5+Bb3gwKt1GiNLiWBPK4IMI6Dp
 hwCwQvyj7rXVgEim5hivEIpPkqqHK3iH3C9Zx19QjdrcvTDt3FvummfoHkD/dRziCEIT+puoNJJ
 3xmrb+oIP7/bjFwvx8YYLpAJVfT9RAtEtqvTua90/HKukOQZPJVwF/RzzABPpcs+h3ahY9z1Aoi
 9hkSPaek4yw53iVF719LcDPbYKVA8fLQxtYPJ9Nf7xr5FA2r+rx5omlaEtB5njOAiVQvU2JeLhF
 6tHOQkhr0APQ/qPdOeA==
X-Proofpoint-GUID: SAPE8yARcwlILOJiBHF8s4rrYqdbmAHA
X-Proofpoint-ORIG-GUID: SAPE8yARcwlILOJiBHF8s4rrYqdbmAHA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190082

Document the compatible for the X1E80100 platform to the Qualcomm watchdog
binding. The HW implementation is compatible with the KPSS WDT.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 54f5311ed016..f2c4bc900e5f 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -43,6 +43,7 @@ properties:
               - qcom,apss-wdt-sm6350
               - qcom,apss-wdt-sm8150
               - qcom,apss-wdt-sm8250
+              - qcom,apss-wdt-x1e80100
           - const: qcom,kpss-wdt
       - const: qcom,kpss-wdt
         deprecated: true

-- 
2.48.1


