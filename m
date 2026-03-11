Return-Path: <devicetree+bounces-274164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qD9eFKqAsWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:48:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B7A265AE9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:48:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8464830229B0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C64BB3D9048;
	Wed, 11 Mar 2026 14:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QI+eMrTA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FVbRssCb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6983D8912
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240434; cv=none; b=ef/fXtG64ziQ8DQcftKsA52bI+DLYatujoUGdI5UidfISt+EO9viMyxqoGrwhsFp2Pwe82n1slLwLEzVLv5nteMPj5Yj+ou+VdpyPPtiahGLm0ArBNv3Ed4zVe6MwbXnOxcv1cwdPzeUA9L2r3F2pfojfX6Y9Rx5ZTnCtAPEjXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240434; c=relaxed/simple;
	bh=+X74KMWb2lVjQ9fnowKj6jei9ytZdwOYWqFCEBJ/bZs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cPKNKHVVrN7TJaRSUgiLDBazWi1JP0DCwsyP8I6Hu0htjpFbNqHhDjswTdAQdwxk20k0TIAsj4rWOMIvhqqGePGuKxBhMcP0RD5toh9ErAmlTDAFsr9Mz78VsU+PUa5BWBauJtJKttoE0Bc5lmmuyYUkSzuwrw+9Glb+/3sKc+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QI+eMrTA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FVbRssCb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BAvH8q2622287
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:47:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fB98BuCBiJhrIm8NgYodeQbl3q2SBFUZLmymOwOVjDs=; b=QI+eMrTAvfbhHkqr
	fUpe+TK2odcohdgTUtU0U5qYnp1Ysit8uXMC4KVoD4vUHy1oRKjBLDe33TWHeFH+
	ksZxcK7VLutobrcVq/TvbVWryYfqm26/n4tpvRq7srBN74YOuaz46TcB9Zkhgbqx
	atuyIJm7X2RGjGc5fffhOu7NfvtBoml4U8fPL/fZIXjGzN+dvGcr3GR5IxxREHIr
	zU8/tD9C+LHmg1EJfwb8o7xsqAnIuH0Ve2cGVr8XMbK8JfW2PgF1Z7kWVkiRx7fH
	4qgCAP15UA4ZOTJ6gpY0UiNdKQ37xqKkoM8yOgevKGZjwvG8H5QmCKxlzsmK0hwM
	n+seyg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu73h0t4p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:47:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd827a356aso1953274285a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773240432; x=1773845232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fB98BuCBiJhrIm8NgYodeQbl3q2SBFUZLmymOwOVjDs=;
        b=FVbRssCbSyGpV4FzgyxcWnGPLeTmk/y4KFYu/L8YmhWPW3pD4ZtzZt/sKxD3KNzihw
         PFjrju6E00USlhMBYw3B7mH3Eiq3p39JQwcmnUGq08GtZx2TAaZudpciQpyblhIU1Rz5
         HvZhyPalPUpFtOEZ6mpzKZKoONKIhbKBv5vi9HOOuLqzahyhuhF06nXSKobFSxyN2ygh
         9RVm4n+tsZ7IqBamRbMJAz7UMzeqMia9SZD2Y2ykSIgvnel0R4SV+933aQ1cYA5QPZCK
         VwQci7TKIHQFnjwmzCEwc3GK83hMV3GgeOJr46RGPEALeUO8d/67sLbC4gFCM/2WaF6C
         vVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773240432; x=1773845232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fB98BuCBiJhrIm8NgYodeQbl3q2SBFUZLmymOwOVjDs=;
        b=ZeS5wbHyOLofog0uKlzYKN6oger7ru4QsYdWl7mf3GP874Ix1ysB2lcnivrALD57In
         H59WQlf4pR6MZ4LUgU9/Lk+8qsdgy/Hhikk+FuFdOCo7Lh9GYTFfkUuFfWFdlIATraoW
         aEZAr20KNIsu/V/63kPokQPm1xXfj30DP/YXNX8Gq0xUgTKFQs16dyZDXtGePn/Q3k7v
         3n2imDcfXWArlCzZQJo/STMInj0oDRvjsa+q9zNwqXkHxG874ToFdNy0FheKf1pnWe4B
         yDNMU/dnpioBZcipxYFo+lO9cpme7Fsl+x02nQowDIk8C88pK9uyAv4tw8i/ZdvSsu0w
         PMGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWh0ynmyt2hxx7lmOXVc4QK4BPK2uSLXdFndNMvOwibiNeuPfur+nS1+DjaU3zlGeuv1vFTE3MsgSd@vger.kernel.org
X-Gm-Message-State: AOJu0YzLaerM5ZlrV8OV7Az5TCrULuryUssKzH/L4zue+IqEsl0WEhsy
	uIktjqflNmf6aKn8X8YFK/FmNYm1oZXZVmZM7ifECSIg2tCxo1D1F1Hs4YavtTT0LIAaDDKXwDN
	nbKUw6DPYh59j64EhdVXZiM9n577GUpq0D3HHqKZzs4QiceGEpCQ4/dhH+KzGC63P
X-Gm-Gg: ATEYQzyjKNw1Eacz/EbzPi8QCMcnaixVfA3Pu2EsTTioXrX5oNRYHWrPhumCPuPXDKP
	7tS7tGaTNmhSIyWYVWhXrypuyzkOOI8RRhZtiEFzoZzDN/05AD/LZpHLeDZqfrUqP13YiVwqjwy
	jabZBQM+3wjU/Ilye2lMedIhPzZimLzYooMQE2l30/UhREPv7+ksKEPH0iIjKGRIkp+PNx3NNOy
	ZKrcMpzgMak2nctDVWRT3hYxBTq9jBYAOTJQNmsiXQ3WsrE2rt9A23qq+4yiIB+y/mkW6TgJBTX
	y4SSzbEK4xa9aYA1HQjo4V5s0zRkCUvCGyDj5VpvxyLqiz+6cuwV6r1A0DsktFO40XH9pjvNxPR
	5Q2gi2A5ykD1G+IyIap9H2KCwzU1PYA==
X-Received: by 2002:a05:620a:25d0:b0:8c8:1f1f:e382 with SMTP id af79cd13be357-8cda1af546dmr327564585a.78.1773240431695;
        Wed, 11 Mar 2026 07:47:11 -0700 (PDT)
X-Received: by 2002:a05:620a:25d0:b0:8c8:1f1f:e382 with SMTP id af79cd13be357-8cda1af546dmr327559685a.78.1773240431048;
        Wed, 11 Mar 2026 07:47:11 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f818d61esm7992501f8f.8.2026.03.11.07.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 07:47:08 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 16:46:32 +0200
Subject: [PATCH RESEND v6 2/6] dt-bindings: clock: qcom: Document the Eliza
 TCSR Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-eliza-clocks-v6-2-453c4cf657a2@oss.qualcomm.com>
References: <20260311-eliza-clocks-v6-0-453c4cf657a2@oss.qualcomm.com>
In-Reply-To: <20260311-eliza-clocks-v6-0-453c4cf657a2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2001;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=AauMYzLc6gTEXz/GOQcSBdK6m37250bGHySZPyTqHNw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpsYBX2HxL6wz9dc1Dqat83VCkVsBIM0RR1XCtK
 ydTwYKpDy2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabGAVwAKCRAbX0TJAJUV
 VkdsEACUwgaJSsTIgMYgnosbVXGWI37EdeMEidmGnR0BnhX48GcxDHS3UTf20p4V90gB7miiqWt
 x8j1dmVXvmSlzmHty945C+e8rI2T+pxSu6X/q6U8zItoq5NW/AITPRYyB7oXwtYyileKU7uKrPy
 OPv1BuJlCu7vmhr0JDXCbqnnBlr5v5mqGjKnulZoWLKyeK78xb0ywzfREm7b6fX4xVK7DGGv5NQ
 YWDKKmSUCCoCDVIURxzgzMlXoajN4woEibefCMqp1tvk1di/3A3di9NFlz1h2OCSJO9yGWLqtvC
 damj15B8GHqew9EnzBGiooq5eoXCi9kifJYGSMJAHJwTKNicYbYinVyEBfZQZmnL3SuMEpd/I43
 XZcVU/YlLfBjm+/GSMsHySqfhZJq/UNL2+EW0v+zbpGFkeaKCLNQorkZpFGqnBt9BLD7MVjxHDE
 ByJ0yYixAuc9F2uV3TvRkqLICpycJR91zSCHfAbVKpL1LRdvJYB97PQ8kuqjvpc8mJGl1xPMZkv
 FnlSpAR5T7GJwllHBl7RAj6/GCMYLC49FPDkB1P4DyXEwYGDCFbCka8NuBt5S87YGOx+gWJrChs
 4L9aB4Fp9Kof6TmGMTvGteF3+haDoBcT9qSkZNXaq96vpXW/Tnn9b9Aa7zJ3+0/ULG5kblHRLgw
 9PsdsRjU2GSpMLQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: ZsvcfK2A-3leYwzLgfSuYGVRItGD9wxN
X-Authority-Analysis: v=2.4 cv=T7uBjvKQ c=1 sm=1 tr=0 ts=69b18070 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=UWqaS1yFD4rTGqj9qVkA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: ZsvcfK2A-3leYwzLgfSuYGVRItGD9wxN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEyNCBTYWx0ZWRfXzXu+RGlfsYHa
 3z5H7G4OZOkGa4AYcuwpen9SGXeRuHO9Fqxwh29CjbaL/v2YACvT692pg/QgQGnChnQwh2pWZPQ
 4PdBvrl7mfsMygTed57JiHF+mmIhZDfe+kIJZBJyGxkZAuieu5pgUMayexg8g5gMHfBEdEVtgRl
 2StkV5FqLHTqrJhVwwrXpcIWMkphvNY4K8FzLOs1cuZCMZhmfnBWLNv1fYuoEfXMNaYxqeBUMb/
 qAh95BYj5/3iVOZ+bABRV4KUQc4GfqX5M0duDvVSMUSC3/Q8fJXZBgucxgI/1PzU7nn3A93UaTW
 IqsgEtoKnIqH2Y98DDbsbL8bj1CeM3sDk1M4iKxVQcEgwysxkaZKslCCO0gBJgiRIXVFbSsOeHA
 Zi1BlTycbG92FDYNc+TCJv12LvJGg7pF8W9K7sGDGTAVNKIP8+kA1b+qV3Nd+ZxEJ3mIWPZV/8T
 HEMaHF2Be+X5cCnFXYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110124
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274164-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 53B7A265AE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for TCSR Clock Controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/qcom,sm8550-tcsr.yaml     |  2 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h             | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

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
index 000000000000..aeb5e2b1a47b
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-tcsr.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+
+/* TCSR_CC clocks */
+#define TCSR_HDMI_CLKREF_EN				0
+#define TCSR_PCIE_0_CLKREF_EN				1
+#define TCSR_PCIE_1_CLKREF_EN				2
+#define TCSR_UFS_CLKREF_EN				3
+#define TCSR_USB2_CLKREF_EN				4
+#define TCSR_USB3_CLKREF_EN				5
+
+#endif

-- 
2.48.1


