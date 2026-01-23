Return-Path: <devicetree+bounces-258936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEfzAiFuc2mnvgAAu9opvQ
	(envelope-from <devicetree+bounces-258936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:48:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CD075FA1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:48:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADB683035255
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D94426D4E5;
	Fri, 23 Jan 2026 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YPkU7lyy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ajdaBrl+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5481FF7C8
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769172501; cv=none; b=LJtYZPzrop0lLmxAdmgosLXRVP+W8zxSQMGfUnuuZrkUdQKj2JZ1yx2Q/dH/sJfqbYvlR+P2ZnnjBCUBiwOLFd4cxCPrL9XSCcfAk0aaCIa2vPkPGRgZAGmd3AGUmYDbus6i8FaBvRd2MkXwrr9LW+XR72KdALZj0KYmAQMcwY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769172501; c=relaxed/simple;
	bh=TPS6X9I+JJ4ux3s8ub0w37/Il7hwYL37igRWramUsNM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=gU78k7emAojDj6/pIVRJuUDTz3mPQdcDEmgZFS+UlUyZnkQ51AHZh/uDeUZ5/SsxhLeqd7Mu+hkbPVm9A3vOxMhFEskYSAigMDKp/nz9WCmR/UnmrJjCqOj+0Jd/yg3RGtpIr71ZNwgL1xappr+m/R+XMSzlAet4DY7QDkwIoQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YPkU7lyy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ajdaBrl+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NACDQw3126331
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:48:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+I1sCtj+G7JfI9TPLgcj5K
	s6XVbBmyka9AQmGoyQyyE=; b=YPkU7lyyLlH0PTuKO8LD+8wk3m62cFHxhydYls
	T+NMpQ72VQsrZj9mQWoWiAZWYTftTitzPdN2Q35ej3O60eWr2e4xhUxTCZKfkdtZ
	1ZZl1zlWZyTAtInab9L1hCI42xKSMjc+9gOhZF5OsMqpRK0opcg/3oMznI/ZOs1f
	+4ke3uJioVtcTnn/ytiNuanF3ZksPZuLUPHuwr7yUwk3wohB3ygVocUSbbsq5QfA
	/XmAMivXWwR4igtptgM+m/lI3IPgL4EVwXOUOVVGrBE13cfE0f6ZM0MCEKF/j4ut
	KGo7GSmB3SK96GQX0dfuzvK48F94fgTMBBTh8Y1995TUmHMg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buthdu78p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:48:19 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6187bdadcdso1278663a12.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 04:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769172499; x=1769777299; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+I1sCtj+G7JfI9TPLgcj5Ks6XVbBmyka9AQmGoyQyyE=;
        b=ajdaBrl+9dLIuhKLQrOjzvXtr+fHavVwL0xkEgO6KYUBZifEnH98ra4B99VXXWpS1N
         uvG/TXCiBzqOnFYNxcdF9ZGEixY4MvogANLKgoyWiXw9NcGPxiMPYQcHpHc78IhmTQTY
         279Aa+mr1eaoMlT4i0VPbTgyZJyaT/0AGNhjZ4BDF/UlIOq8ru+mKslnu9g5ctIx5HZi
         wT5g7eDuNYSSWD0MSgUanJwduvG0Z7kz0ijV3fY7VGhk5upzBl6M8koHqOI1j/SwaViG
         rqWb+vdhyaW7eCTDs0e3uPfubmFa7qFoJ6zoIk2i0JZH3DnYgl9OKvSAGv4Ixw2NswL4
         2Z7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769172499; x=1769777299;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+I1sCtj+G7JfI9TPLgcj5Ks6XVbBmyka9AQmGoyQyyE=;
        b=kA3w/lr2wgpJQmkOBe1HiSZOv9a0waWAUDH/p0BSRKRFUoi4anuqWoF2PHU2vIwwA0
         agnZor3tNJHo7kGnkvbU300sgoIkSZHajlQJiFpPxw3FCBunfg4wProP5oe4082xJvWo
         QDk4mygKK8PDBfivlpKnSaWAA1B2vV/9bURANYEdMoEbhbCrxvA+oKhZLGl8zXK7znmG
         2IkGK8CBSmtyYB54ALXdp+mK8dpnOuKbe4iMIyy85ig4rbi3j7eCC3gCzqz2fUkYyRLU
         v9r0hgGZDTgR3h3rxSGuM2FkhyR+hamWcp1kqxscawfAcXYOd0h7STwQ/vafNvj5pExs
         uXcg==
X-Forwarded-Encrypted: i=1; AJvYcCX42Wkyra9MxnkKYJPId48PQFnN6G//Wt7ZnxAigwgiaFK1BGGj5dzw7uQAGH+F63yWaaRDlFpuV8p5@vger.kernel.org
X-Gm-Message-State: AOJu0YyA6ohNC3N/TkszVedU7xkb/08hlMXhR3ZkE559FOBFhcCXM2e0
	SKGom/LFJSWLMtdpHNRI3n50npsUGEvAYzwuXGPHQLhNjLrPOV7MhQJmeV/r4rtNwFGPG1RT5XH
	bTMamiaX0Lau0KGap4jWW5AltPmggV/bJ4eguU3NduFlSw5sP8aFB4bfAQhDOUN5e
X-Gm-Gg: AZuq6aK7jThGPkyf5jERC/sfjmnQl3r09G1SlL38Lhj3PIVx0Ub3CpGco9oxP+AQHuO
	IP5HDxkW2mFHui0VwUps1WEy73s3t+AW5rYkNQnz7Lt8OHJ4JMxj2GzAPTr4O7DD9bZ1M+JKErG
	xp8tCRWj+yYOvOEYrLtMhIndTYgc84p/V4MfLDKDCjWxFzkVco13R06YzPuFQG2cNY+ZdtCxgdm
	vnv1vVZE5gKPIgkeRECQ3UymxKsmN1JtbOch/fYTsnLTynYaqEjg36cxut+/eE2nVYNkUiM0LMX
	ZWZzMaIFMA/Sb4k/h48s1Uc7gyLt9Hj25CmJJqrVJZEYzPrxLa3DGAjrAMnX9LyHZ4Jl869KW6a
	+Dej5I4uireVH3e7lu+X7RKZvJObWXBqjdDWvTD9tH6SnH3Q=
X-Received: by 2002:a05:6a00:3318:b0:822:f928:fd97 with SMTP id d2e1a72fcca58-82317d28ea4mr2300801b3a.22.1769172499081;
        Fri, 23 Jan 2026 04:48:19 -0800 (PST)
X-Received: by 2002:a05:6a00:3318:b0:822:f928:fd97 with SMTP id d2e1a72fcca58-82317d28ea4mr2300785b3a.22.1769172498606;
        Fri, 23 Jan 2026 04:48:18 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82318645fdesm2191919b3a.6.2026.01.23.04.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 04:48:18 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 18:18:11 +0530
Subject: [PATCH] dt-bindings: crypto: ice: add operating-points-v2 property
 for QCOM ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-add-operating-points-v2-property-for-qcom-ice-bindings-v1-1-2155f7aacc28@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAAtuc2kC/x2Nyw7CIBBFf6WZtTdp8e2vNC4oDHUWAg6k0TT9d
 9HluTm5Z6XCKlzo1q2kvEiRFBsMu47cw8aZIb4xmd6c+sHsYb1Hyqy2SpyRk8RasBhk/a31g5A
 UL5eeEMeYJPrmFfCBzfl4vQQ7eWrnWTnI+x8e79v2BfsjaL2IAAAA
X-Change-ID: 20260123-add-operating-points-v2-property-for-qcom-ice-bindings-e4e27598fabd
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDEwNSBTYWx0ZWRfX+N4CS10NVM36
 dJ9iw3POSgtsKukUCK39X4yXS3lYRQkBW5owalD9lfnfJKgymnPva62Sn+ckEUyUnB04sGv4aVA
 YmrKgb1e/CZhnHfAu5N/F7+rLioh46bmnspSBa58UJYDegCNVtgvtzV7Fy1A/wD4AMO1Ksd5L9E
 EqerjHxhU8N4oC7USwgYCUERt34EoV1jJtT8tlebI6pOBkWm8A5dJRVM+YbjQe5c9g1YVyzJAGp
 R0bfX4PA+P8lrAB+Qy6AqKQiovlB19DLwYtAaJJ+OZGhQb0700QABXoXTmq6MXcMPTPPgO+LNVT
 RBxAX1tBTQyxn8O0ly4m5IQxphGISAutRRrx5ySxER3YjJmOpVUu4gVS26pH/WQri6onZPSOC3M
 bz6d0I0cCfpqPeRm2ouIJQakzUK6sNvhgbfdvlYClHqs3uXPGbbSiW2woko2o7L9jMhxWaPaYXl
 /GnOllfJ2D7XmjUJNIg==
X-Proofpoint-ORIG-GUID: YXfS0f7A-kq4QrGg-C8XH5uWrinBHEAW
X-Authority-Analysis: v=2.4 cv=XauEDY55 c=1 sm=1 tr=0 ts=69736e13 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nchbEs_9QIawOzQC_EQA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: YXfS0f7A-kq4QrGg-C8XH5uWrinBHEAW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0
 clxscore=1015 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258936-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 64CD075FA1
X-Rspamd-Action: no action

Add support for specifying OPPs for the Qualcomm Inline Crypto Engine
by allowing the use of the standard "operating-points-v2" property in
the ICE device node. OPP-tabel is kept as an optional property.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 .../bindings/crypto/qcom,inline-crypto-engine.yaml | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d2057270a732fe0e6744f4aa6496e06..0e7844e64555ed8b4350f0e18bdd20fb64f2ac6b 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -30,6 +30,14 @@ properties:
   clocks:
     maxItems: 1
 
+  operating-points-v2:
+    description:
+      Each OPP entry contains the frequency configuration for the ICE device
+      clock(s).
+
+  opp-table:
+    type: object
+
 required:
   - compatible
   - reg
@@ -46,5 +54,21 @@ examples:
                    "qcom,inline-crypto-engine";
       reg = <0x01d88000 0x8000>;
       clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+
+      operating-points-v2 = <&ice_opp_table>;
+
+      ice_opp_table: opp-table {
+        compatible = "operating-points-v2";
+
+        opp-201600000 {
+          opp-hz = /bits/ 64 <201600000>;
+          required-opps = <&rpmhpd_opp_svs_l1>;
+        };
+
+        opp-403200000 {
+          opp-hz = /bits/ 64 <403200000>;
+          required-opps = <&rpmhpd_opp_nom>;
+        };
+      };
     };
 ...

---
base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
change-id: 20260123-add-operating-points-v2-property-for-qcom-ice-bindings-e4e27598fabd

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


