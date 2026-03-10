Return-Path: <devicetree+bounces-273322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJf4AXzRr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:08:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71261246F8E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B752630526F8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0EC73ED12A;
	Tue, 10 Mar 2026 08:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ay0LGaz3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d9SCkwtb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FA7364E82
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130017; cv=none; b=Zh7aPcIFObptl7qJ6uhFSzAyOjD4xYKbAGjhtU/hoP8imzAIowK1/3sdItjsLdhLCcLPIYb5FaNwNulqwV/0T1b03OuCvrDBdK4zRkQKmwW5VBMQS9OqNqWGD8ROyYeuFI1hbGF+mCsKtygvJWK9dSZXH8PwbhE3D+HdqpZFRcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130017; c=relaxed/simple;
	bh=Lnqx9aNGInN2dRJmGZpQf0PRaaOxvX3KhhTXbK0GgTM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PhcceqkeUl7BBbe9mqh7Ebbt6bUB8Xiayo+8vVMNpT35npXWJiZxFANYgxSHGqV8KDzb95pA/W9EG96+zOYanhyDgK28F+pn3wnslcnLiTvEr7g2yC63jfUWJ5u19z3JdjoOf6h56jRyJIR9uzwh3OotY3EMb1+daR5x6f7ysL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ay0LGaz3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d9SCkwtb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EhqP3087381
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:06:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m0pGDZTp4WihSPiCeJZx7i+DZ6ZfB6hNJXG0xF6Zo5c=; b=ay0LGaz31eWUlN9z
	JU/eIjq4edPMWNsDiBoVCzs4CzK9TmkCc6detdPyAtYJwroy1E41JZw1BISxO62C
	xTeH8XT0gQ9Nad8Bxh+csNBoQGTxkpEoNr28v5fth1g6il9tahpTs50D5ODJ6SIN
	gWqNOV4vbvi3HyUSVxyA6P5JqdrVzaruU4mqcEWOogDyT293NjoFEPz9ysy+fPaA
	wakEi53xk0bScLIuGU6wJHwk5JJK3MEvntbpxG7X0nJ217i+sPjdIOaAp3sa0uRC
	9+iKih1k8rk9a1C1ABMyBlKBueTz6mV7UPXIkFjDJzxy5aGV8/6enZCjktPlnWvc
	96pDhw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy83e55-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:06:55 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c73b1376f98so7778195a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773130015; x=1773734815; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m0pGDZTp4WihSPiCeJZx7i+DZ6ZfB6hNJXG0xF6Zo5c=;
        b=d9SCkwtb4dLTwCEWDUZVnWm2aPGl0NSI6qBeGngYbXn3MOPKk4BAZh8jn8XrKq7qy2
         G87U4EhYfMpnhr5tdgO2BZaJhjVhoZar3FeP3sJuokxysO27NJrFEboonIpWDxkmu0IB
         ogRgZ5lzDfhvrZ87AlVxfU7jR7oJWOS3QAysKz2wY235e3noURXTjDTVCKcQQeIhKkeC
         sp5D0BIzeaXPpFIUk9Y0G3DeQ0Rkk2qVjjF+4okZ65k8EPtf97cVEI4FTwpSDcMdEKIH
         QK63PPnN+31pQlfDOANLLQC19b3z8xuHeUpBqs6qrWWtwDzHI4+8U2V6KCkM4H9NoaRa
         D9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773130015; x=1773734815;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m0pGDZTp4WihSPiCeJZx7i+DZ6ZfB6hNJXG0xF6Zo5c=;
        b=IjXOuwLTGhxv9s/A2rvYqRGT5kqZBYS9RYnu9jPixLUavxVnsA2PScsngYcfl/Zn/c
         D2/dwA1nfgpjQE+0HbfoIft/rOAx9XfSDxG2O5eE3X6PYNb/GCskF+znD4dslk26qnE/
         UJ45CtxxSZHx2pudPWr0kZXX6oNdVnDSbgHZMcm47cYPdTOfR3jbFFxrLdV4c05YnM7j
         zb3mUFAypMp5Hm1fzIEezIaWL7G0VIazDV6fZTqIi9OWnXD94sYv645/5M0cK6vtCPPR
         x9JDpYbJ0W9Cq4a/KUDDHFRIVZeZ/SZPnO7HNNSnfwYT/Xg2X7Q3TXjzn2gybWO5nqGt
         IxzA==
X-Forwarded-Encrypted: i=1; AJvYcCXAPWj1L7/mTMIkkzeSORz2bDLubuzGS7J2ECoY3CgRn13CDKyMtrrnXbphRfd0nQcH1+kSgimkYIiJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzLeps6mF+9cF27+1ftzsWF34luBsljtAZVHDTkZa9miYwTllkv
	9ENNfskYWEPwJScjK/M1KyzGwnLjbWEobUDSLPi9onmq0VEZLP5UqaZHRAt56g5tywP+yC1afM6
	i5JQI8T5t9t5Ouf6W6eOYBRCa64C39nvmZ2kOV9tLyQK8ZBk76FE9j9q0XdJD6jo0
X-Gm-Gg: ATEYQzyJ38YaqZfWgPsWXNMqp7vbojQSwA7tdK0laNPLLBkgzM8vESYSUFAwf78JFIr
	2HXOm7P8NEtmEgLQ9k/AzbY8DvMph0aWj9fDhBrN2H3LbRI2XDsH9B7ccFCe+sdmsUznCscKVSc
	67R0m10qtF/TIbIbOhdiPUQNkq/b6SnG06EvqXjUc6VHpxHibVbX9fanuShHjvF+bv14dHNh0bf
	FzZxrdKJ7qjqi4sjY6JPVeW5XPCBrhwa5gwoZhmrsKiUwPFSTPdvgDZJOaKP7Y0Czp13uq0S8h/
	mJi9xQJWmrPYbRzpV5GC5wq2zT4za+LoYSNmVezm/+F/jQDce99KNq7UhO3LILP82ajeN01GzlC
	D8l0aPq0fEk0jVS5/4ZSSHD3JchscTd3HQyeiOjQz0zrfft8=
X-Received: by 2002:a05:6a20:3d8b:b0:398:95b7:c409 with SMTP id adf61e73a8af0-39895b80d85mr6429305637.25.1773130014729;
        Tue, 10 Mar 2026 01:06:54 -0700 (PDT)
X-Received: by 2002:a05:6a20:3d8b:b0:398:95b7:c409 with SMTP id adf61e73a8af0-39895b80d85mr6429246637.25.1773130014138;
        Tue, 10 Mar 2026 01:06:54 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e195c40sm11121969a12.31.2026.03.10.01.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 01:06:53 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 13:36:27 +0530
Subject: [PATCH v2 01/11] dt-bindings: crypto: qcom,ice: Allow power-domain
 and iface clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom_ice_power_and_clk_vote-v2-1-b9c2a5471d9e@oss.qualcomm.com>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773129997; l=2173;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=Lnqx9aNGInN2dRJmGZpQf0PRaaOxvX3KhhTXbK0GgTM=;
 b=zB8v6AEKKRzJnSbCHN+ZFKKVEp3mSGm7eQ+1lFMrA5Mxnhz9gY0/fUSSZ5IF0IneoEOHAUHb1
 n5JxF6wQ984AOw5p+uFgtseY34FaWxhVVJ4giaKNk+DPxYeLJM6b/6H
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69afd11f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=k5GuLpEFyUPj9kim_VUA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: ofCBosVmUucsRo5O_9msPmEI4pLeB1MW
X-Proofpoint-ORIG-GUID: ofCBosVmUucsRo5O_9msPmEI4pLeB1MW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA2NyBTYWx0ZWRfX71IKJAORG6no
 b5s+Iz9gHU9iQHP1yjAVlx+nMTwWWj9Od6S5mxPv7NaykdAp7re2lEYlW2K6ojVADderojCYd/B
 Nby8HP+jE9ueLgX7g17Vtrd4Hc4UiGYNF3eq2Ew6mVBQ/0MOa+jizmo+Y2WEcyzPem39eK0fhT9
 mlNTzoHnDBvTfgLCeelAbjdlZfU6wmA/FshzYWf69PykK7y8Xr4K5P0z8hQnhr4SahGx+/L0irG
 1XmLAztzd5LrN+TPn2Xyp7RjRcBVnyrh4fKx6xto9A/iOGQoyWofzOhcEA3o9QbdY0Rg55qLel0
 9BbiF0Eq4xYs7fbjAP2ooC/MJBZahhAWwERb9wf0R23Hht2ACQi2u/XE1mezmr+4qyu85UTMPco
 TomzVeXGW+/FmxflT8jGMtZhG6r2ycKkgouOhxXE6sH4Q1emLzOnshrPEsDrZem+pZEXQ5StrIZ
 9XNcOJmih2ZdjqjUW1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100067
X-Rspamd-Queue-Id: 71261246F8E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273322-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Update the inline-crypto engine DT binding to allow specifying up to two
clocks along with their names and associated power-domain. When the
'clk_ignore_unused' flag is not passed on the kernel command line
occasional unclocked ICE hardware register access are observed during ICE
driver probe based on the relative timing between the probe and the kernel
disabling the unused clocks. On the other hand, when the 'pd_ignore_unused'
flag is not passed on the command line, clock 'stuck' issues are
observed if the power-domain required by ICE hardware is unused and thus
disabled before ICE probe. To avoid these scenarios, the 'iface' clock and
the associated power-domain should be specified in the ICE device tree node
and the 'iface' clock should be voted on by the ICE driver during probe.

Fixes: f6ff91a47ac57 ("dt-bindings: crypto: Add Qualcomm Inline Crypto Engine")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 .../bindings/crypto/qcom,inline-crypto-engine.yaml       | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d20..d9a0a8adf645 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -28,6 +28,16 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: ice_core_clk
+      - const: iface_clk
+
+  power-domains:
     maxItems: 1
 
 required:
@@ -45,6 +55,10 @@ examples:
       compatible = "qcom,sm8550-inline-crypto-engine",
                    "qcom,inline-crypto-engine";
       reg = <0x01d88000 0x8000>;
-      clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+      clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+               <&gcc GCC_UFS_PHY_AHB_CLK>;
+      clock-names = "ice_core_clk",
+                    "iface_clk";
+      power-domains = <&gcc UFS_PHY_GDSC>;
     };
 ...

-- 
2.34.1


