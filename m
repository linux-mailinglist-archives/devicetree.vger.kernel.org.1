Return-Path: <devicetree+bounces-274063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEm6Fd1jsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:45:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4E8263C76
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:45:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E5E43166196
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60ACC3CCFB3;
	Wed, 11 Mar 2026 12:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdL8LUY7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NmTXtqMA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C0C3C0625
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232959; cv=none; b=c8uaRkCP0BQtKY8MArpqMtjtmkzD8Vf81QEBx6CVG0ZOwZ0+lIF+fyX2kbTMWHZ+y18P5dsICXZFBppZ984MxCWfcCkBC9YvD7A8WI7nyUbRS8/xzVGRAp0b13+rilOgxcpOnoktBzgKiK8fhmtEce3u3Gr4V6M+ws3Bqlv6kto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232959; c=relaxed/simple;
	bh=rlq7fvan9HUZ5I9xzDjiddoC20LxtyPIec9v+E41haE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=svsEiWoI7Fkdyf3HqIKd4pk5MdfLb2Bd7XVZoZ1BcFzRRRSalAx1C9NjJ3G5e+kx2m+PZxVk0gT+tcqZZLFmymlyJ2i0Gwu9lOWDGakWNhbhWiFhTrOEjA7DoPVOhUOO+PIpMjY3CzQv9nGGmnU3EVnA0Vw0Dlx8hgzjbFWCk2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdL8LUY7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NmTXtqMA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9N9QQ1574238
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:42:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SP1EculYrMC
	8O9/adkFXZCXCwnTl6oBUq2s9R4Yjvsg=; b=cdL8LUY7LPNTf/hH5W9FuePb4i8
	JqidtlMdkxk/DxZ5U4noQeZ1F6Qiyc6Ene/5fMZ5GdlxhSK4KV+0FjwSBlotXHd3
	KHsZJIhGpeLHg7sscjNxCprHkkWz9braWG20QK42xhPsJDKvnyvYYnpi5IV8XxzQ
	nN6+hu/W7gLko6gkbgMx6kyIYvstaPFQesvr2hL4hinzS5oFIuWcFIcgrZ5sGcuT
	YLBKoYE242KwoNjpLFrm3eYIGvWIJ3pzt6Vo8pK5gwt6EAkPP/8fsaHjPbEbEFUw
	ECyxh1sPKCI0eDOWdY7rNGhnFgU3rlKcWXi0xjO0C30fqTr4GNvAEPe6HEg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkbksv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:42:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7ea0bb20so2072599185a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773232956; x=1773837756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SP1EculYrMC8O9/adkFXZCXCwnTl6oBUq2s9R4Yjvsg=;
        b=NmTXtqMAAd3m72NZWDh1zSuhE1MPDLhGrQT5wuFEAHtVxUoeV6+sM8xr8qSn0B1zvb
         vV9UafdxNnL7qTere/JcPpSGdxLJlro427ZCN4pkEQedLJ/Fx9/0BpdU4jsBfhntZbfj
         WJr8OAjylZ2rjl1QqFD1NvSaJwSHbdcNOeq4/YGwA2Rdcz5+xqSf2TyN/3W+CCK8uyiJ
         YmYA94X9Om7Pw0DM/rUVk27INCs+GNEMo0XHEJ+vON8Pl7efbComsjKb+X0vsySKTSml
         dmlM5dQC6B2H14tna1XQW5nzyr8wFN85SiGiivTREFsDo1RQFRFv+GIOg/R/eQOb8ohz
         wR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773232956; x=1773837756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SP1EculYrMC8O9/adkFXZCXCwnTl6oBUq2s9R4Yjvsg=;
        b=dOAEcUXzQ188BrtrVY5O4wOpuh1ynkBmsgTfxY2jSBrv5gyVbKEnvM1tZ2SEenwRnj
         E5Bn9rWMZLe75Fp1MxAHflUNAsmkUvm99N16f0ftHtnZai8/09y3MoCitUbBd1RGatD3
         dwqlMGBDkn6uxv4it5rPTvJJXTRaWWw+6nO31zUm87JQn9KcPHO6m9Zyvdujqcy5nvjA
         VPQ3Y4QojoRWXyWaiSnNPjQ/gHU3cLGkbL300RomIlBh7HYUWzUyxlBNULnbz+RmPI5a
         foOdlRfXKhULrr0buBdX+PJLOn+uzzr7Iwv364r3XCx06s44GDFnmvHdiUMy0pSqdQBt
         pCjg==
X-Forwarded-Encrypted: i=1; AJvYcCU01GMtBFXMMOmb9yQbS9fH7ADAUyjgcnHS+hUAT/WXBysDQIAX05xipLgyT3K+IFzaEnW80whX+XCv@vger.kernel.org
X-Gm-Message-State: AOJu0YxHRAgS5kSF4qIUiGtzFQIhymhX984LImEEEF8y6oyBChC/17F+
	6iT+BCAytyGelmvSwpW2Hnsh9JURIugL/0IusfnhNj9LKcidJPQt3Pysf37BXm3pZ+Iwn/4Tbnz
	NTlIWEM1ihzctJb5odzBMIs9484MsR6rgknGX6BETNRPPbLFYaK4OzEPORbftCQkR
X-Gm-Gg: ATEYQzx+hDE0LTw3NDFaHqBwvl5MERHNjFfCFKxKzDxtHhAH/cE3FxOcqa3NhCKrN8e
	LrvO1Hy+Ct4OAay6v/prG0OVPvKBgCB1/tGa19axc6fJT/SP0hLHa9VsU5BFCfcmGanNDmtdRp0
	JYFfJSi151LmxtFuYJLuFLHVDoOc/rDFhqvrE/nb+39IkuvfOMhn1c0KTDfx7z/QNWmh/89IW+3
	GyQSTqrK/sm8r+8S7GykJxI5dR4K2UqRe0MbmK0rYBzjvmKNBBMNlLqvjkfR38jMqTcxWp+sSgS
	AtAT4smQF20QAeCd7LNtmMVplX+bCj9ty7iA7BRycxbiLisfVSQjE3Zg7jgJX92iIXimPXv2i7o
	3+JJt7yySafR0RZA4LTGkjX/p5cOsGn+p7A+8K/XzkELmM6PJntU4WAw=
X-Received: by 2002:a05:620a:bc6:b0:8cd:9020:f03d with SMTP id af79cd13be357-8cda1a6cd3fmr294653685a.73.1773232956291;
        Wed, 11 Mar 2026 05:42:36 -0700 (PDT)
X-Received: by 2002:a05:620a:bc6:b0:8cd:9020:f03d with SMTP id af79cd13be357-8cda1a6cd3fmr294649885a.73.1773232955845;
        Wed, 11 Mar 2026 05:42:35 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0caccasm39011365e9.6.2026.03.11.05.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:42:35 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, linusw@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org
Cc: srini@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        mohammad.rafi.shaik@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: pinctrl: qcom,sm8650-lpass-lpi-pinctrl: Add Glymur pinctrl
Date: Wed, 11 Mar 2026 12:42:28 +0000
Message-ID: <20260311124230.2241781-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260311124230.2241781-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260311124230.2241781-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: _3X9EdqmUPYNJqUmPEkvV1BSA-ViQYsj
X-Proofpoint-ORIG-GUID: _3X9EdqmUPYNJqUmPEkvV1BSA-ViQYsj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEwNyBTYWx0ZWRfX0h0i9B6uoE69
 jROCEqL8NYLL+DKVv7ynBViZGbGM10idy7LruyjxmOeZkEUd7YLewvnB3FuMaDzGg4WSLFfH2pA
 jvVoKI9C+Dj3kZt8PhUipcdJcKR6sYkZUMYN4wljDtcoH3Y4pcK5ZN2izqILMNYPasldedJRsgH
 XjsMX/vE1ZXyhrLGv/0LmRbqJxH96qIrA/72SJNf960x5jSkTBHT2v6vaWLnX0+3zFHy70fKq4z
 6IOnG6MoM8JMWcSsIYoeG+ayYTDm/8OPxd6I6SOemReN5OSLdVLzvFM1/RiYDdVvJm8TjWadlIa
 omQN7k3QgcTQ7CHfodVQvwY8WnHBrY6R/Q5gT3F+2URGLvEgDjDoJXh3v3ZXASE8LFhDHA7SN9R
 dQqXne37hqG4cszBPt8md4NgM3/vgGhl9ANMJM63ADA7WwjOsvLzw7/mMNG5YVMzcTqiUtL4MAs
 LxCScH5StNGTXCNR33w==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b1633c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=PvKptOx2Yys6OZxUx_8A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110107
X-Rspamd-Queue-Id: CE4E8263C76
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274063-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document compatible for Qualcomm Glymur SoC LPASS TLMM pin controller,
fully compatible with previous SM8650 generation (same amount of pins
and functions).

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
index 74df912e60ad..1bf08860a4ba 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
@@ -19,7 +19,9 @@ properties:
     oneOf:
       - const: qcom,sm8650-lpass-lpi-pinctrl
       - items:
-          - const: qcom,sm8750-lpass-lpi-pinctrl
+          - enum:
+              - qcom,glymur-lpass-lpi-pinctrl
+              - qcom,sm8750-lpass-lpi-pinctrl
           - const: qcom,sm8650-lpass-lpi-pinctrl
 
   reg:
-- 
2.47.3


