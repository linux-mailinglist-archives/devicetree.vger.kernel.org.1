Return-Path: <devicetree+bounces-258740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4B8cG18gc2ngsQAAu9opvQ
	(envelope-from <devicetree+bounces-258740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:16:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB011718F6
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1760A301B700
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B75361DC3;
	Fri, 23 Jan 2026 07:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lob5GiHm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FWD8/D0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E24935E552
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152372; cv=none; b=onNocmK6GGirgwnRnxWi3hFsFYX80I7a0Z1SrEUV35Z4y4KB5gvcwBgLIMAZMuzOrrrQ0ZNhxEsW7KdrJqScx9PWUWJ/2cHgDJYAEotHpa4dKR3DSvN4dWaS2AX2UBscXPMUSphymAFR6Mqbpn/FhFJWw1lyb/d0BQUlJ4xQIm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152372; c=relaxed/simple;
	bh=oAm2w1B3wOADUYdbdnTyko05ceBRrrkfGqHAPNZJ7nY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E6xzdN6rQlL0s5y0DwtsQ7MAI4y6669d2hugBCiMXyR3vUMmzGuO5CJIdqEGeXlFNFGDTTasaec9CGGmhYRy4a6tqRdQjBAcYgAxSBUcKu6ffGKxxeKiPXkZxx0ChcATgxAxeVYfAJM7+6acVqjD/rCJXz/ydcumIwIePn/ZC9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lob5GiHm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FWD8/D0Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6LBEt322826
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:12:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BlCzppJMP2kP25D2fk1iMHsxDptOoAXzHriXIuLywfA=; b=lob5GiHmioZXDSJx
	nIRqWYHQidJZCY8Uf/IO1b/ryEUxkDAF3aqFSwA0YsNqpoCRZmEo+WVqwQtkOmVY
	8aOUgNiEVW5x0wVe7pZ7w3BVy/g1Z8YL31J1s1zxr3u3tUVs29AWZHeYQP1KOpMb
	0ukf6Imdp73OtzRvhaG+Wau2A8Pb2VdL9ArMBsJ2P864vkdx89ROsGn0ryBocsvO
	DAdWp2lveZ7pHJ5DBPQpjz3GtKXhAogxgc8PrvhxyrzoUEyVxlZgN9qG03YU0unY
	FXGy4HqGgBphGsrVrUzOW+Xj+yrRKYti7raTaeALLH/B+F+anNlOs7vUm6ySb6mk
	UoGo7Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv3mq84vp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:12:47 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f2b45ecffso28086695ad.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769152367; x=1769757167; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BlCzppJMP2kP25D2fk1iMHsxDptOoAXzHriXIuLywfA=;
        b=FWD8/D0QXXc4ycD2SRvZ4vm7FCbPRZZNlG+u/x5x+Xwj2B46ifmBgzxJ3KkLsa1wr+
         +g9pizAujq9DNQSH3r7Re6nIkw1/5QiJKnGkF0+HovNF06QKLbPXU7i+VSmO/EInFpIq
         wgt8yPn2RelUis2FIVcU2CglEJW8oSw5TyyUx3D9vTddTQBFjrv6JXe63uworqGd26yf
         UiQBstGI7dsO+A6r/2ivW+Z4M+20tBJu7r/65ImUPYplsZIXK1BHxql+pLlkFO3cjZq9
         n0uVVRyYBDPN+GxkObG9WmBX2lL7WnT4tbKLX4QQWz9DhaDA57u2KcIcreIqRaDp7vHg
         adPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769152367; x=1769757167;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BlCzppJMP2kP25D2fk1iMHsxDptOoAXzHriXIuLywfA=;
        b=QQ4CEJJ09cBNmaM/Dy0z6RIJ6O/1CZoqH3M5UuKffjHUh5hrJ6WqhzoWmNOFtXB45n
         d43H3zw/EuB0KZoDP+YMahabE+6NS6plC0loVMLNalMpa/vJFAq+3JaD8ROblmJ/LJ0q
         l5ZMCmn3YHEtjM25Wcjze+pHhP10+ZtbUxh32jZh5sp4zCwtv7WPzJPgCBb2fUsA0M4q
         EOJU1XukHQhaogdvkHhp0l0iq1iJhXJP4X6ff5IeOEMlqmxaUiF7iChRHDsorHw8zEeU
         ebCpTctVzT3vPLBe+oJUE27LV0nOQF3t9aTwt0DK3Oejz1WBpP7sQTEPFEm6Pm5GfJ7C
         mE6w==
X-Forwarded-Encrypted: i=1; AJvYcCXTblz4R5iRx9I7DXd0azrg/TUCvhrHi6W4k+Xx9jFyRoR7hYlr0ULmYAzV3eJsiuammq5yEEdImzFO@vger.kernel.org
X-Gm-Message-State: AOJu0YzB7ay27kNpxmEv/E1KleFlnVQ7RIflmdzGx7zjw6lqkCV7fKA+
	7G4n8JnJgbEqY++hj6P2PQK4zSn4bAX4keac1DTYMPTaBBXoVZuTvMyikXHaF2AG/M48udDyKT9
	aM2+F5KAe6NZWmfndTWCyW155nHpG+0L88MhAD7LdiDYbfyM3nIQyqMNFAOfpT/IjSqyFLy89
X-Gm-Gg: AZuq6aJS4cmZ0m+4576IwtavVA68gtSmV1XYk9BVPUrNdo9kHNiGJzZgHwRPL2OzjuH
	TGT+T8jtGyjHcRFnM7g3onYMH8GLuVhTuJCQGt2fHY8tCWHuA+wdBjkJpxgTofUDsJdT45ks/Z1
	EyH2tfm/HQnotXq7McDpWd3ToQSKeOlDQIenZE5jH5vX40sj6w7r3RuGvgDl+aXGnB7H6JH0V6B
	YasgU3Vo1Ak6dpnpX0Bz5xAEYrRSFip09HVncF0mzlyhrYLSiZMKNc46igbyaO5NZ79/t2YVEju
	rWJ7mhnq44bnWgZroNmoQTQR53mJSXtnBc7bRdI7KEI8feu5q4/SiBVyWDH5VoOR2LsFTNLExi/
	QFqFRcKBZ/O/oRhaSpaeGNM82f0dsHWznek8=
X-Received: by 2002:a17:902:e547:b0:2a0:cccf:9d24 with SMTP id d9443c01a7336-2a7fe56c13emr19221855ad.16.1769152366466;
        Thu, 22 Jan 2026 23:12:46 -0800 (PST)
X-Received: by 2002:a17:902:e547:b0:2a0:cccf:9d24 with SMTP id d9443c01a7336-2a7fe56c13emr19221605ad.16.1769152365987;
        Thu, 22 Jan 2026 23:12:45 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f978b8sm10979795ad.46.2026.01.22.23.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:12:45 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 12:41:25 +0530
Subject: [PATCH 01/11] dt-bindings: crypto: qcom,ice: Require power-domain
 and iface clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-qcom_ice_power_and_clk_vote-v1-1-e9059776f85c@qti.qualcomm.com>
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
In-Reply-To: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769152356; l=1661;
 i=hdev@qti.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=oAm2w1B3wOADUYdbdnTyko05ceBRrrkfGqHAPNZJ7nY=;
 b=T/bav/N0hNBenIP7BI5+XtgsxqIv5HNC4FE282RJr750Tb/TiID1ROJflYtef50laUb/lOj9/
 RCth3S1QhAMB+3X1lPuoVXooQtg9Sf8EX4NoGzXsgcGsjxn6YI8gePf
X-Developer-Key: i=hdev@qti.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-ORIG-GUID: INlg24J7qbPi_tY2oX4pIbu5jr3H6-Y9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1NCBTYWx0ZWRfXxjEt96AZ6sXt
 Jxm4kd9Z+6NaqLF28mrq/d8qQJRUwMuncJHmiEbFGPj0rsojlWOn7OTu1NeKvlA/exDPbHTiImH
 FmZ6p5fYMuTL3n76qS+h88pkw4Y9KIp5b7mqRDw4rZsU7bH6X/04Fd2ROYwGaNLGgKiYxvu2rX5
 QrQhfeBpBz4J33+JeVS5sK+ym2pxltVOVcu+e8sYxgrgqBUq+GFZbVgt//LBmZLZYNLmppPxygM
 oyGduWPqpFViX7JNJN8q9RHNRilvpcbxz5q7tsFSUiVOZ/foX31oFeRsSQmJnNCaEoO+thxg+BG
 4u/U25w8wc1ZxC/jCp6bdZmrC57/mQlvmxnx8/QdI53ynnBD58BqUaM/S/kVrHcIoTS51AH6JuD
 P/WK7e6E4Qar3ZH6MX2hGtNiUSOSyQL00j3teJA/weAC12E+HaUYeIviak+b+85UaNDMuA7JF4a
 NZmdWxPz4EED86ghI4Q==
X-Authority-Analysis: v=2.4 cv=SMpPlevH c=1 sm=1 tr=0 ts=69731f6f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fZJ9qQ3NMfmE2mB3PYEA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: INlg24J7qbPi_tY2oX4pIbu5jr3H6-Y9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258740-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,qti.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EB011718F6
X-Rspamd-Action: no action

Update the inline-crypto engine DT binding to reflect that power-domain and
clock-names are now mandatory. Also update the maximum number of clocks
that can be specified to two. These new fields are mandatory because ICE
needs to vote on the power domain before it attempts to vote on the core
and iface clocks to avoid clock 'stuck' issues.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 .../bindings/crypto/qcom,inline-crypto-engine.yaml         | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d20..1c2416117d4c 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -28,12 +28,20 @@ properties:
     maxItems: 1
 
   clocks:
+    maxItems: 2
+
+  clock-names:
+    maxItems: 2
+
+  power-domains:
     maxItems: 1
 
 required:
   - compatible
   - reg
   - clocks
+  - clock-names
+  - power-domains
 
 additionalProperties: false
 
@@ -45,6 +53,10 @@ examples:
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


