Return-Path: <devicetree+bounces-276561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GExAAe4euWmbrQEAu9opvQ
	(envelope-from <devicetree+bounces-276561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:29:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E56A2A6B6C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC7023094FB6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 926DA35E923;
	Tue, 17 Mar 2026 09:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IBjqnnLi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kbnf9CC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4A433CEAA
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739294; cv=none; b=kzDe/gCvRe1RukZ8jDYRnGi555Mne3LE5jvo7jv06qMvKql0qoBYqokcbKiGDvEyq+4KzmUYwB/hBpwDnau6SOQWKqtt999+mAehGs9SBoFeJVPtKM5fS9i4gAaDYRbjAfj0P/+5kdTo6EXl5162lzl4BU4SIRmefb2ztMJE3pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739294; c=relaxed/simple;
	bh=mn3vp2GeE4VYgG9OnPMhnQiQ0TVYi4qOkzgc8W0I0jE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T2gJ87gjbu55DBZ8Oz1jWlXfVzrYL3LNli0uyJMVEE3Zm7T7LN5dNqahmQHb1mA70Muo4S36hVaRIPZwuSQhCSRQS5QvRaVyWJD4D5XhDi9CfT7rcUBK1xoyBYMyczrOzu1OMVDeCkPhjonRB5DfB/7CmeVJnmXmF5iIGpqp4zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IBjqnnLi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kbnf9CC+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H503uN1428820
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:21:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KflmNQXpDp+B1vYqVCrRq7N42vfr2cm4gnAe7kporG4=; b=IBjqnnLiCVC1yIxa
	K/Op6QbHBC2NFkL1SExe/+AWlMgF+peKj+o19zXqn4xukhywjos3o4WKY2VD9H4N
	Pg3bXMY73g3arozcnWK+otNzV06RLTqlCgXE5q1wrbx6y/Veaw2o8p8rBYPy6U3Z
	1YeN8Iaeu4kS/F8wCLGn8B2Pwgz8/On99gcEv0AJfcfpZULu2bvLlSuwwFiZCaAw
	dpaLJondhl166hCLOu2Q3XYb8eC9JuqH+Aj0pqMbNfUJqpMEyn53s1uJZn+PXCqK
	NtgvCYwKfN6emoN5Je3a9XaHQRF7aibho4cq5WbxegeA3LGK3oHZJNH92aEEElmZ
	s3JcZg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxh99c44y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:21:31 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c44bf176so6105990a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739291; x=1774344091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KflmNQXpDp+B1vYqVCrRq7N42vfr2cm4gnAe7kporG4=;
        b=kbnf9CC+KIgiyAXc6EhLkHXOoYoEdQ+6lZQ866ugRBoJoesgNB6J7i81crE/ni+Qp6
         D0XWWb+VjeEZ9i7dxs3/UVAsoDIHn2Q5Oe1HSaOwRwvSZdwndATRquH7ZW3fWHeu6K+x
         y6cTdBIJEM5dwxNKjMgTQqFh6tMJlL1fdEsLGfzExEKsEM1TvEqpbUJ+mLP/deoy7k71
         O/RGZ31o9tfNXfrpz6BJGDY2PnlXsA4NxSakGsD6fsiWZ/CgLeUyvHOtns3gxHn1NF0h
         l9bmIPJ8erV42L2htFgaYusmVI20Z5bfS41Lxocu7f4IoABL3ZQmRxTJZrWZO5pQWkgr
         VNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739291; x=1774344091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KflmNQXpDp+B1vYqVCrRq7N42vfr2cm4gnAe7kporG4=;
        b=dCv9XV9cvhrIa7esn1sMiRn/Ixjvy/EUpQixAF3AyLQBl+ueJ/dNb7MFsJvz6kTj1b
         8SPKHermheLUHrNxOzxuDAFHOZdIIgp+26TVs9oCVrZJml8jY5nSBfJHDwxTwl8CQTvd
         GZfCny7NzbD0WHzg5n9EI+sQCgLFweQJQvT+DddNnrS6G1NfS8NDRh3NOZG8evEQqsXg
         2lFzOYy5jkPuaOtjWgG6EVTgP2RPD97x6JMzEqPgYGuKqMWhSCkNZl8369F0eUV4e7Gl
         QoX24CKXeLdHkrOtS+VCBkd/nd/wy02ssR5+oujTqwjHH1Nsnh441va3IJMubYppIspm
         mBPw==
X-Forwarded-Encrypted: i=1; AJvYcCVvOt+Ayj/hic7NNdhBG3cupucIDUXuWNRHy4inujMuA5Tvfq0N5G9GEPcRvpopOt5ExUK9GGUC/u4s@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9WeQOkZ6Q5hzv6OfVrCJ/NNhQYLmtmaHRUDLxgBQDW0H80Y4u
	NMnsIfNHBJ9fSXoB17A3P+KBmypKyY62L3CmyJ6ud8rF54QsAe+Kyestqun7Y80zLIKd5jHbDlv
	75vM6ieqZ044YgVgTKdzfErg1XZ/iKfnHEFU0gH0IYp6nLE6dyRSMvimU0iL2U1jl
X-Gm-Gg: ATEYQzwgHsEc2TOF4N4l/WE9W6NNAHnSyRkCcgklLCQVmJY3rONymbfpmJuEA7wOtYZ
	8/iNW+tYm7pAFKF4PZB/MoLDRt43ubUGkLbs2a6fOa80gljIT0bNaXzm9Zp9FdnT5J/GZ5RUArE
	BMmpracGNkPe8hDaHiLMGQvb6iASETJBHf/U74fe2luEM65TW7jaYeci14Z7vTLeBbO2Eail36X
	jX8INIGTGNPX4lrH8IFNYRHuxi4EgwA7eWg3g4PWGVrqnJk55a3cGDl5uRqSooPWQEHTO4bB8nE
	pa5SCeh6x46+Ciy5w83GeOLobTN9ViP7xxAueKGVJw/bC1xXrAWz0zD9BWOUwNnhqgFxx63qMY2
	CMfVbflEvMxYXXgTtxQ4xnsfF44dBjEi//IPj1pAvAjTW4L0=
X-Received: by 2002:a17:90b:2686:b0:35b:9ab6:1d4e with SMTP id 98e67ed59e1d1-35b9ab61f12mr7133845a91.28.1773739291199;
        Tue, 17 Mar 2026 02:21:31 -0700 (PDT)
X-Received: by 2002:a17:90b:2686:b0:35b:9ab6:1d4e with SMTP id 98e67ed59e1d1-35b9ab61f12mr7133804a91.28.1773739290700;
        Tue, 17 Mar 2026 02:21:30 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcdaa6sm2331968a91.15.2026.03.17.02.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 02:21:30 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:50:41 +0530
Subject: [PATCH v3 02/12] dt-bindings: crypto: qcom,ice: Require
 power-domain and iface clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com>
References: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
In-Reply-To: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
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
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Alexander Koskovich <akoskovich@pm.me>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773739265; l=2093;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=mn3vp2GeE4VYgG9OnPMhnQiQ0TVYi4qOkzgc8W0I0jE=;
 b=FeE5ZqbJvz3uxUXrsgHJcJZp18l0b/x5yjyqCFcT50hfVZuKnCshbOihBpNkExh/YoQMBrYlb
 WsBpyvY38HFB2x/gWsnl9E7ibcAUtsg4kS8iWnU40UnzmBtdboUYaMt
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=RJ++3oi+ c=1 sm=1 tr=0 ts=69b91d1b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=_NrYQG9o62cfQ7DVPTwA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MiBTYWx0ZWRfXwBPfBcey42+T
 z8AnK3H/HUFnRQ5Rfj7LXBZRti6p03eh69WwjY2lruPAbiSHSHOS/iiEet2J9FoTBqZufovP6Lu
 pQ/PK1p7siiEZSoHGjvDLVmqVr7W56RuEb7ifUqOUdYk9atpnvAbfx2Y9sEkFhvPbWNG5ekcAJ7
 qG0zjoylNhELfTbgrIpBHP8wnL9Tt71EWO3RoiiYZCv+/QWo+PE4USMs4imAWwAXX9HxtyrzXfl
 KW/vSMgH59Xfbl125azdZVxm48jJbyWUmeQ3dVbwlst1wzuL+QzLKbsuFENFndWxLLKFKbwHH/+
 /d93uDcCCqDKRtlwzmQ8DMlKz5KIGvq16HRLbTCkmM1KvXK9MrkqtPOtMtgZ8JZeRhv9UoArVYu
 fl29oPNLLuHo9u86uj9eGYv1U2xF6fpSUsCaB49E59i5RS6+DHb6SWyzowgR4vDVOnqLyHlKwzm
 liyAzjQw8WvBYb+PIkA==
X-Proofpoint-ORIG-GUID: Lu_OjHfGk8nbfH3rRt2asSZeJE4QNw0t
X-Proofpoint-GUID: Lu_OjHfGk8nbfH3rRt2asSZeJE4QNw0t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0 adultscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276561-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
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
X-Rspamd-Queue-Id: 6E56A2A6B6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update the DT bindings for inline-crypto engine to require the power-domain
and iface clock for Eliza and Milos.

If the 'clk_ignore_unused' flag is not passed on the kernel command line,
the unused 'iface' clock could be disabled by the kernel before ICE can
probe. This leads to unclocked ICE hardware register accces being observed
during ICE driver probe. On the other hand, If the 'pd_ignore_unused' flag
is not passed on the kernel command line, the unused UFS_PHY_GDSC power
domain could be disabled by the kernel before ICE probes. This results in
a 'stuck' clock issue being observed when ICE attempts to enable the
'core' clock.

Therefore, both the 'iface' clock and the UFS_PHY_GDSC power domain are
mandatory resources for ICE which must be specified in the device tree
node.

Fixes: 618195a7ac3df ("dt-bindings: crypto: qcom,inline-crypto-engine: Document the Eliza ICE")
Fixes: 85faec1e85555 ("dt-bindings: crypto: qcom,inline-crypto-engine: document the Milos ICE")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 .../bindings/crypto/qcom,inline-crypto-engine.yaml    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index 99c541e7fa8c..ccb6b8dd8e11 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -54,6 +54,25 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-inline-crypto-engine
+              - qcom,milos-inline-crypto-engine
+
+    then:
+      required:
+        - power-domains
+        - clock-names
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,sm8550-gcc.h>

-- 
2.34.1


