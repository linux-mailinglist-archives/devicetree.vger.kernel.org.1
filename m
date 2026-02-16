Return-Path: <devicetree+bounces-265766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLyiKfIik2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:00:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC313144599
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 410173066B12
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04A43126B2;
	Mon, 16 Feb 2026 13:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L8lXk3z4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T4xKU0mb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535D0311960
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249404; cv=none; b=BiyLWTIY7yMLwxKGeA9+e9O8Ya1ipVbPqx+mBuFvTj28Fek/tkjweRf5q6Ul/SpNHh9JK//FIstAzvIIoLKQ4mTeIK9lvv8C4KLFiOvv+KtoJwoB+c2Us+BfIIFlaRO8vGFBYph4ziBBOg3bSxXXwcP9H2k+E5mWLmPz9K79ivM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249404; c=relaxed/simple;
	bh=SQLY7yycRmVhiAc1lszTTzufCTHi/kKPaigRgdl5JMg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rsdjMUcfn7kn2Ksi/aTOpf+WPWsfJSpsLsMdarmPlRENljfCeg2sfeVXDo8jijPm8wQwct7/oDKx/eA1kp/dtlKZxqmmqSuRjdOrIb2/0X+FtLRlWNutea+0wzfrEL0+GyQC06h4gPN9v+7XyemBN3Hp9u+Z/VqHYmJHArTA6xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L8lXk3z4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T4xKU0mb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8gZiD2803382
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6ytIAvmSBJZTUbWunkOqfIWwLGmvF9FvxLsp0T3SAps=; b=L8lXk3z4+0s35sqq
	ymkxvTr781ZcMmMWErP1LTyffzpO1ucG/MLO1BN5XsJVJ+ndKaf+qxysxpx4yReo
	/MNQpNadtAYxt5AM2fo9dnYonEf7E9HRrFHKsRNb/L6c1d1eYPOCGK/1Ja9GJSjU
	WkG0f/LRtXi33/VgLp9fQBFk4xipscJIqkab2r3zTNI4GmuI83JgkXAtpYXrbO8U
	H+MRN2cxOg+fZdl9VkFzEGKqzdCupssLxBzmDfkO4DPPbfBjEC7NJ9bIbbOGFJLp
	zDmxCxvi9IZzl54Tc/TEpqIZqV6hEZSFScAWuNy0Qf6Gepqo0E7HQay4B487Faw0
	AIo3ow==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbyxugq62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8946f1b8691so201534186d6.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771249402; x=1771854202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ytIAvmSBJZTUbWunkOqfIWwLGmvF9FvxLsp0T3SAps=;
        b=T4xKU0mbB5Xb2AZEZ5fgA8IlYqnwztN34fEVJnE5Fz80bMuD4HJMI7m1gFfe42Cbdp
         MEu53sbhS7GOyGpWztJvwnxjgpcDWRD63LpSLd5lqmj0tYMUJHJhT+B/+d993gXsQDiJ
         EqfY416YyX4LU0E5yIGzC8dgBov2Hb95QsvLaMlzVmzC/w9sDwoF+utSj/PfNTj5Wi1R
         KtdZ6YBtRl+TdbZhXVKE2FFbO8QrNRy4tbAWUi2kHlJ+dbevz/UGUFNHNeyYmRhHHi99
         hUrgz43BR5A/b62gTu+Z+fpYcAT01+bJGzmkcynnjRlLA4oqWWVsvexRYrZFhYltiGHK
         bXJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771249402; x=1771854202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6ytIAvmSBJZTUbWunkOqfIWwLGmvF9FvxLsp0T3SAps=;
        b=F1ZKICkm4LVXeP4JNLDBEKhPSeSFP7amNljMSFUjBR7rcg4IeWUbdI2atJakNzNchp
         N2nQ9S85hFwPLiTnTJMDxlUdIUpM9ICRqMKdD4NCWNDgv9nA8c9pyfW/DSXjdT/tkgbY
         5auoFjzyZx/3r6DOrOAbeiQ9RjhLsqsVCYKchPpby+mwbMK0R25HCXGMNCTYJGgY5pDx
         QDYvpxVNsHF2NGheRy6QOAEmMm2KeZ0m192+s2n66tksC0QNhvn0tms1MTp2ykOuKjZJ
         f4locoTf3Me3xZoV9xrNwMYtvzPO9+rON1TvpkuKgft1TbCLetwpVbhc3aew4WGGJxNb
         A7rw==
X-Forwarded-Encrypted: i=1; AJvYcCXlVFYzt9DUPgnynTlkJF4tGFQeeNTRhMOjRTXI2kXOq7TYm2/piRZ9o4Igv7k8FgXjArqdbrK09v7W@vger.kernel.org
X-Gm-Message-State: AOJu0YxrNjObg/hUZ0n/530bgYA186aMOeb0gZf86F1a4p+ySUp+XC/u
	MSc0mmH7BPD6Bz8AftXmwM0DsWl7x2H/DcJQygvyMxJ22gV4ll9RRoqUccwlOa336iLMaJhnLsk
	aEvdM1obo4qVld4uN6BEx7X4DwXoub18QP4cEmJF6BxaD/Gf+x8IYvP2oa5TAUkGa
X-Gm-Gg: AZuq6aJ7wjFHauA3HVNbGi2DMnXe9WzP22ZPiDgM9bcqXkP4DG/CbOVZFR6CMNv2IBh
	TDg6K4SAKcQwkEPOUSSBFRzgVJbg5QuZA5fCKtvKDL+LomniZkyrKYj2JYoF84sNA6qMuqrHbXN
	ANNc00wpZuEZ5WWpgDqLSlXR3h+8SsYMgljB3Zb4sg21VC/vfGE7VvNiXiFcyE//oAUDMydbLpG
	FqBrAQEA4pON1FPxYmokwY1KL97srYHXfx1/Fw8pORpoJaWOIwqfDti19gAIVnFMmu/7swP/TVj
	9VnLAdgOfICJYYfWiWXZhQMgDwq28Ng/ksb49aItWVRvPmTjuzJOm9qttBBIEarzEOX3oFsBDGf
	ZL845qwDU8G69jGbv9K8/mzbOjbFAdw==
X-Received: by 2002:a05:620a:4054:b0:8ca:41af:32cb with SMTP id af79cd13be357-8cb42484da5mr1112414785a.77.1771249401690;
        Mon, 16 Feb 2026 05:43:21 -0800 (PST)
X-Received: by 2002:a05:620a:4054:b0:8ca:41af:32cb with SMTP id af79cd13be357-8cb42484da5mr1112410885a.77.1771249401118;
        Mon, 16 Feb 2026 05:43:21 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm28883025f8f.13.2026.02.16.05.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 05:43:20 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:43:04 +0200
Subject: [PATCH v3 2/6] dt-bindings: clock: qcom: Document the Eliza TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-eliza-clocks-v3-2-8afc5a7e3a98@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1931;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=iLqJ3HR0ZBFPxN6sYQdmeq4FjBmHkwz30j1mLzc0NYI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkx7uialzMKse+0zUvscMeirANSA5uj/we3pVT
 bC4WDcY+x6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMe7gAKCRAbX0TJAJUV
 ViNbEAC9RBodtD5jpXv8T53IjM5GMj6r84Th5tlGOK2Icswmn/vqlekZItJClkqsJxC+04pFgSh
 YGl1qtqPF0gD01N7oalP/UXWBLdQIKJggU0J7OpaSTRfjpTaNPsMok3FCSkgEl0pd2PuGe4Bhaq
 vC3Yr58k+PhjKAJEYaowOu6bYRORPOhHe69uxaJZeC9jI3lbjpedM51KpY81fJ+btbRmJ1Y+ZpM
 BAArlcmaSYiXYUUXcw8KEUsev6vPy2fl3jD5jbdVuKQVVy1ZEq8tP8k8Ngjap/FZez9fGXpvOp+
 v8C4tOTN2YBbFpe7AVbuFs0TzcA4kkWEp8CkExztVwtzSncpLpmj3JpQPOlAMad1xQb90H5a42e
 C6Sp1cf/jc9LLFS4qZlRb9HMnQSoG0Ow7vIimZS73U0kMpJB/cCyxr8Ga2ioNCs0ERyOJmhJuwx
 PO3mAvqd6V2IXthO3cMNM2Gq1+2wZurHpVqtMkOyfm7rtv15/vTItUmdPnvjR9XhE0h792d94xo
 HAr92SYrFjKzSQeRTsR+lByS4vf8XZBPeh/2Bw1cr2JrPNnumx33dAH4zRr06y6jYoM7tVS5lgn
 YvLo7VRp9+jjnJaMHNSvkTh8iB2Pc1UwyAlKMUWgVjWfmNYuZQxcV4Drj1kn2nToMPa/C7B7tdN
 Wmm66v6CuHYW8tg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: AKq8YpvCgXo6wbdpsILBV98WMsJyKSiC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDExNiBTYWx0ZWRfX6O/SXxzGCryp
 Vzg4uiA1pfgWfH4Tg57vXtImuW0R8KedWX4RtO2THJLHJLRbL7NXjV3RlOxAO4anQPtbba4VzOk
 hv5AZfF5Yye9bih1Jox/0V24mjHRZYRKeCTB7kYmPY6kwMZhPDP8J5T/hZzdCibpyr3CmqZeZHM
 KtiOfUrVTP41uJ0rzNFJxM2advn3dsViN4SuSsICXCoh0hboIK4gKmbFvNucxGmZimJCvzuC/wj
 jF7YqTO9nTyFpiGFbxm6uKMkKDukq9wEYWyYyUWGVsKhnF0GgfzTGdFmjjL8rVoOkNSK6sgTcEs
 OtIL3+6ZrI2o8W5IyevvSbERbGnuLeeaP9PEUFZU52TSkxpW4/FxX1w7BgslVCZUJfh3qVgB/2s
 OMAmSjZ1GgNAwvz7ct9ODQSePi62k212lCdPWV8z5e3vnkFNdE0MTBhEA51MqmTUNT8frl91IFy
 ANuRLUnagDc3d8vrsvw==
X-Authority-Analysis: v=2.4 cv=BpuQAIX5 c=1 sm=1 tr=0 ts=69931efa cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=UWqaS1yFD4rTGqj9qVkA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: AKq8YpvCgXo6wbdpsILBV98WMsJyKSiC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265766-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DC313144599
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for TCSR Clock Controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/qcom,sm8550-tcsr.yaml       |  2 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h               | 15 +++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 784fef830681..ae9aef0e54e8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -15,6 +15,7 @@ description: |
   power domains on SM8550
 
   See also:
+  - include/dt-bindings/clock/qcom,eliza-tcsr.h
   - include/dt-bindings/clock/qcom,glymur-tcsr.h
   - include/dt-bindings/clock/qcom,sm8550-tcsr.h
   - include/dt-bindings/clock/qcom,sm8650-tcsr.h
@@ -24,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,eliza-tcsr
           - qcom,glymur-tcsr
           - qcom,kaanapali-tcsr
           - qcom,milos-tcsr
diff --git a/include/dt-bindings/clock/qcom,eliza-tcsr.h b/include/dt-bindings/clock/qcom,eliza-tcsr.h
new file mode 100644
index 000000000000..a9ee1e45c17a
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-tcsr.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+
+/* TCSR_CC clocks */
+#define TCSR_PCIE_0_CLKREF_EN				0
+#define TCSR_UFS_CLKREF_EN				1
+#define TCSR_USB2_CLKREF_EN				2
+#define TCSR_USB3_CLKREF_EN				3
+
+#endif

-- 
2.48.1


