Return-Path: <devicetree+bounces-246525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0841BCBD71D
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94F9E300EA3D
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F6332FA00;
	Mon, 15 Dec 2025 11:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I6c7N53I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MAxu05oI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64042433BC
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765797004; cv=none; b=o82mRdIFMyy0P42NdUXCHZ6HGRNcdKkIFpfRlMNaqUD5kN65ayyYUJn6ddxiV69fZTBpPpjXRUQxOxLh7YF7iqqN8U1Q0yJBZu0RWvOzXXD2vQYxgjkDoRc6MLNbQ36GPXFhOG7IX4149edt6H27FSmUg26RhAABMaS64amVn+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765797004; c=relaxed/simple;
	bh=ydtpo1HUo+zQHHbhntrdl2ItAFsh0CmlNavyuhDjjN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qIV8Mbiv1o4qDZK6CJWcke+G6piOIfZWQyafLBUCK/TFR9Z3WE6IKzHq8gMZ31/XOcBNnMRdL6lU/tj90l3RebPSmuLAPmUy+hWXc3BGvfoaWsHJ9XQ1oRrKPF53GZ90r2Ei1rIhQM2GpVRCyqoLivIPYRYntYEneA3/ImsNqoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I6c7N53I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MAxu05oI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFAO1xR314487
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:10:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Lt0oGmd1BTqCj7isKaC752
	4DHcIL6aelvkpkGT0P+tg=; b=I6c7N53IsCtwC45lXNsonzoH2UZ2qmyzKzHvQ8
	2QIsqRvxxcWXa6kMNrncvlOVTdhi0eVeqZVuZw2FePL4RVI7W6/bNsAxnzAAYX33
	Tq52UgkQcYHewNIJr2KcDwixNLLMrcSuL9mwoqw749mb+q59FaxX002JmTsTu7mz
	M8brkxy1/M1r3/PRIYSR2nVEdyxAzlNM14N79FdkAjgoxe5UUNbijQDM4bT2vKfb
	piaNdFYfXF6jTiITlCH22no/HwqI1LN8LHzFcUHtgxkyB3zj3ap3lUxbqLz7vH2V
	uEi5piVH/K0AIYRM1Jth9j/uKw3nSFuE70Q24K6V+9MpkmMw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119am8ya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:10:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0d59f0198so17335155ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765797001; x=1766401801; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lt0oGmd1BTqCj7isKaC7524DHcIL6aelvkpkGT0P+tg=;
        b=MAxu05oIf7tRFFFtDaZe4ugrIGhsdgY8FMpZGfWhdMXB//kCLi9EusZRixQ1fBu+EM
         Rkp15ZsrmZ6reDRiySbwX9kJh69NENdszK5ZFWFHrLEu0qcxLA9E38PKnqQIUpyR587P
         XT2Fvs9sHq0NwUpLkYh4UatXWyMBeKVQK1956JF++J8WADVFWfab48G8/w3k82qmKnmE
         tCwxi1j5D099aLFLn9yXr+v8WHe0fe71J2WXEJy9JuH3Os3wwD8kfHGIRflr2Ns+qGrn
         aDMjk+8fOtEzQ0yzvXMyfRmXISo5q7IMaEo1IqchYlU59mGeHksyXv0rxACny97Ca9Kj
         AW6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765797001; x=1766401801;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lt0oGmd1BTqCj7isKaC7524DHcIL6aelvkpkGT0P+tg=;
        b=d1n/fYsdfWhxNc6+0Vm8MCOzcU/WbdmP3smyAaLRgC5AezhEllC0KaC6cilzJzC488
         R0r2WdVM1q/WZLjgswcQWNjzseU1HgVcFnHl9JexSezLQAeXcJNu4TZ8073cuznfIk3j
         6oCgGmdntWG6WY5+r5qV7Oc/tUaz04QAyohxyJaEVbqIhbR7YRtGkH2ctt9F57+ftQaK
         AfKLuiPygHnsYEuOMUZFK6sLMlb292FNGSV9fdFEw+hOGTEF0qaa81MJNtNdT6p9SaGc
         sDHcJq6AdOn0MvK/wqOOahaWzlEd3D4fG5Wl2Sl7VMyGEIOHJ+exdUURNhZ3T9sFYhSr
         L/Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWIX2++qHzDnM8FCh2I4TJP3Zqd+BwJK1lXodLvhxaLrX14zirtquiWQNG2wpIcZ+obfz/ADkBP2xLG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxca8VZD1NUeRXSl7AChn/NnjPNdY3Ph08oBIomgL7xgpxP4rlT
	Tr7VqdIH9Cyy+gcoItcPwJ7L3ut0qJREL1hNtNFUdopyj38qkSlsLFwsdCfi0WhXmbrjQUlng1k
	Mo+Lj1HHXNNy1AVFssN1tXyoBfDxFNVxE6VJTU4BTZlHD9pAqgrA+DUeFlf1OSL0kH2yprArI
X-Gm-Gg: AY/fxX4PkBgVCzRR3n6Q6bWnsrBlyFmxFLu29MksMXsEfpnzOzXkMOT4TRF0rjRtkMo
	iQtdrL73ksIFP7qLmDdBXamcfRgTJbPfxh5Loom88m+Shphccr51a5u1UBYrEWWjuB3E2nRLmaM
	hkXrCip0f1V5rO0Bp6DXpo8FWpBpxnO19K+hkIvmdITJW54mvv9grWD68x2xsqcy2AbWtXIV9J4
	VWr+/ZYl7gFpVhNRF6OFEDmRU05fZ1Z+knyjUHedD6OJ0gehTHThH40fiO2R+pg/WB3lbs5M5Fs
	90kEqNKvx4h8cBOWHybQRv5fDWUhvVA+SolwHZzxz9xspbLcSXLK15j75IJI/M511WcKl/L0gou
	st+nLhgzPmv6hPM00dj0y3UxL8RjjzcJjlvkodeLZ245M
X-Received: by 2002:a17:902:ebca:b0:295:86a1:5008 with SMTP id d9443c01a7336-29f23c7c568mr95371245ad.38.1765797000572;
        Mon, 15 Dec 2025 03:10:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHw+sSh+Rip1bcv7Jmd6B3GjWMcPMdXpJ+pPsj0p0PeozuPMWxI7STGb1SB8dS7W67RV31ezw==
X-Received: by 2002:a17:902:ebca:b0:295:86a1:5008 with SMTP id d9443c01a7336-29f23c7c568mr95370905ad.38.1765797000110;
        Mon, 15 Dec 2025 03:10:00 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36a80sm131516695ad.19.2025.12.15.03.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:09:59 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 16:39:35 +0530
Subject: [PATCH v2] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs
 present on Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-knp-pmic-mfd-v2-1-1e91138c6fc6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAG7sP2kC/0XMQQ6CMBCF4auQrh1CaxFw5T0MizIMMNG22CrRE
 O5uZeNmkn+S960iUmCK4pytItDCkb1LoQ6ZwMm4kYD71EIVqpRKlnBzM8yWEezQgypxqNDUhqq
 jSJM50MDvnbu2qSeOTx8+u77I33eHikbpP9Sx69mNsEiQ0DWIpOuu1qfi4mPMHy9zR29tno5ot
 237AkPQ6UizAAAA
X-Change-ID: 20251215-knp-pmic-mfd-25cf7ca8ae73
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765796996; l=1462;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=ydtpo1HUo+zQHHbhntrdl2ItAFsh0CmlNavyuhDjjN0=;
 b=EEQlSlTwSYFeKwxmExyV3/U4s/nt7woZlmHixe3peCqp4ljMdHiRuRuJVSFKhmZy58nq91MAo
 xZs41nff6HJAbozMUhX4ENBdPq97ThlUjJDwKv0Q7iDLH+EBsuhRQa3
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Authority-Analysis: v=2.4 cv=ftPRpV4f c=1 sm=1 tr=0 ts=693fec89 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=wI7XyV6aaWbjcf_UEo0A:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA5NSBTYWx0ZWRfX8Fjf+ZiDo6x/
 97EYMR1mHjpVCC/z9NhsKwsAXOAl668oyNfSBr07IdQ0cFBqef1OOlnY2dj2YEHgbDfD6RdTMjW
 OEqnE+AkYw5RcLjScR6cBptSsHmj8W8E+Tc4/7gWslWsluDu7bVVCCDAFyfGqcNqHYFFOgpDa9f
 Xd7+2QArfoBjcpk+BONoImy2ox1EoIpUP0orEtYhEX07sgye10UahNu3xDk50DFTkUfcRqZQLoQ
 mKKLmy1XLHID/WjDtd2aoTp8HCrIiQfzdNBQs+uPN+/YKGq0gEMtbcU7XIMXZURaGhdVpAoVNod
 I+lqK97Tyk2+AUmNg5engQBQlCSBRK8FVzRkFxiy1SqLDNuZ6Vt/4F8R5CAQXLoqTYPM6uCBxwC
 lbJq4MnQCMBFAGkIR+99BYiSnb6ZpA==
X-Proofpoint-ORIG-GUID: h7Wkq8PA6gNl5fUH-C-JfxZDo6HnHBPe
X-Proofpoint-GUID: h7Wkq8PA6gNl5fUH-C-JfxZDo6HnHBPe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150095

Document compatibles for the pmh0101, pmh0104, pmh0110 and pmk8850
SPMI PMICs.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v2:
- Rebased patch to Linux 6.19-rc1 base.
- Link to v1: https://lore.kernel.org/r/20250924-knp-pmic-binding-v1-1-b9cce48b8460@oss.qualcomm.com
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 65c80e3b4500..fff2824c69d5 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -79,6 +79,9 @@ properties:
           - qcom,pmc8380
           - qcom,pmd8028
           - qcom,pmd9635
+          - qcom,pmh0101
+          - qcom,pmh0104
+          - qcom,pmh0110
           - qcom,pmi632
           - qcom,pmi8950
           - qcom,pmi8962
@@ -89,6 +92,7 @@ properties:
           - qcom,pmk8002
           - qcom,pmk8350
           - qcom,pmk8550
+          - qcom,pmk8850
           - qcom,pmm8155au
           - qcom,pmm8654au
           - qcom,pmp8074

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251215-knp-pmic-mfd-25cf7ca8ae73

Best regards,
-- 
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>


