Return-Path: <devicetree+bounces-264696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CVRN2dQjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8956B122EA3
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 26422301C523
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07154366820;
	Wed, 11 Feb 2026 09:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bs56DhjY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FRKuPkRT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFE1366DA2
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803286; cv=none; b=nyZZhPwY151cvt+UTgLiacPCoVWq3iDm16bqIGP9Ca0WA3pXETI+YMPyC2TvJCtoA1HzFQVM7c3LpRhOQ937FkEsxoYsTojgoHnzhQdq0ou3QppbP4F2/6zrZhBlIo0PDZj90/NMNwYPlDmOaFrpSCnZHdz4sE5SnOqT07RKUkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803286; c=relaxed/simple;
	bh=A9DBiNP8iL9dR4Wka9rYBtFBrkJpTxjiScTy9/hyWFo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=daT3twcinYX9fNmR/4KgoLgxMZd9nyDIJzeUT/4n16c80QwMrpSDsvPlVlq3DnA6VIPN9vIQMZ+pzOisSjJj9ALPQ6WnZYttP6yZQPK1gtmh7LA5/u1z7VErRnYljfp1A83zT8pOefwhdOMyjNv1PUplkbjZyPy/w2WtUxyDUdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bs56DhjY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FRKuPkRT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B98NVu4006723
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bJF5kOcx+0z0jZVRbBhfjrP6SosQxJ8NlSFELd8k49c=; b=Bs56DhjYDyPDgFsE
	MeU5w/OlDVv3A0fJtiOs9sOZhI2FbRs2YC2nRw7E68N4lDcgfb5+N3SIW+GNCy0g
	uVRYfdrzYStnojBfqwcGGCAxZrDiGGYYaTVvATif1qkpxzkjFFLrqx7uTWheJRcG
	SIig9OyYPI+qdE/1pLJLKvpm05ufIs7lbJMWtQGgUPEQWhLA5ta/9czZKtGDRuIg
	tZDKudRt0y/d6SGsAtn9nv3VcwCnaoulklDIum371hO1TKgtsvm1ZTZBnof/DbW7
	1kOYjdrBM/PF5QdF5gZmcDJfE5mJ0+auqqxE9Txl2Yb69RKGnqVdT+F0JtN6pC0t
	z22FhQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8fbwsg25-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:04 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-353c9d644b0so3699503a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770803283; x=1771408083; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bJF5kOcx+0z0jZVRbBhfjrP6SosQxJ8NlSFELd8k49c=;
        b=FRKuPkRTFdkhOSShs0E4qHZe/kTtDNuEcgN3hFAfKFd4gmu+qNCiEkuW/ktnowdQLY
         QfFYULSWY6im8k0CC8Gb2Kn1gCAzN5t9fHZnLxiXeY0r5PWfBdGoh64nfG5FhgQLDzrf
         4nRUprA0VnsLbWeMPmrCk2EmdCeP5Eep5qGYdhug+tXBDJ6Dbc4mHxx9xdKXMnoptBkl
         SJJjdlA4PMg+y6/lEAIH2ySmqz8DeNTA8BcWoCkVOa86pyZPikxcUbmE8FzsWvIWCwjg
         f0raOc9At3pMb7S93hqhpQAjjfqzxsOObyyynMtNo0Js2gliZpNdTlODDKsFR7Kxj7TG
         8wdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803283; x=1771408083;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bJF5kOcx+0z0jZVRbBhfjrP6SosQxJ8NlSFELd8k49c=;
        b=OiPRLiZ/nxJxJreKdTpirHZjOxfleYkMCo5C7y9nQAZMAsPls7kG0W/viNU+dBCoFk
         tLLuXTWvX0vXeicM0YrLpO0a+YB7WxBMw35d8+PIvVC/q1MZoySvfENy10EGgAwj6OY3
         JGz0bG1ISKaWIFuUry+XgmiHD3QKRNZUL6jbyka0v/HjL0ToooKFYTi3e5BU3ceznuyP
         UYJEzFfCGlbMLt/KyRk6RudzfOOlB3ug3BdPlA8/MYaPaDOkvjh64DiHzUo7pamI+qAL
         iEJ/CR7kOVRdTKijtvSPiGGD/Lpm9OmqJG9e6tgqtf3hE9siW3+voHzO9MytaL8P3ytF
         UT2g==
X-Forwarded-Encrypted: i=1; AJvYcCWps//gHzZxA3PDH2RECszHrSmpL68xxdrC67mq1N8r7xAW3/WUm/317rH9AoX8HT3cIsLwlkOfU8OH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyx7uk2F6M6pZ/cfIQGv71OQExUQKXv4uBmM4iwgNs/fie30ky
	NboLyXapt8LzZT6lwvFOvEKjpEPyvD2DzhRTW8F6OkV3jg//T5bmBBQIIU94wrmtEeXEvY/dNzc
	opurTmaex+fD7US32f0cmDRUIMegyMjiR4lnEIuWPLZPvpwHxkHOGxxZ4mrl9E64q
X-Gm-Gg: AZuq6aJmtvZbOueqkuFBgqIKZ6q1KTWsyfgVXFGBygYfX1w17NinD4dyVQAaALHDjJQ
	XsyVQ4lZ5ZAljA39PLOvn12xYEuDxG0oT2TuWTZpc6vMNR/41pAfH4AvNMgQLttwvRhm1I2/nXa
	wjPrHwIyI9xx0IXrJZ/QS3HUOCi+p6Bnj/ryXgYYZz8hPpUmMIHThuyROshx/b25s7/yyzuTs82
	Dzl902LeV9LnjSMT2D125fY6Ld46rTIKM//XBzAl/1XUM9vUbPyvOEx6DIhVa1lU8idu8oPuXfe
	Lmh6/XzpsdwnLbFpUyzdkbDprY4qthVQAjYIdDdgL3j8FME5iIjOXrpK1fs83TOlR+vu44vvj9m
	RYiLevlaVWfI/kfFfbRYaoYe1wu23R5pknYnFN67rqQHdMyrRxvkp2bXW0bw=
X-Received: by 2002:a17:90b:5285:b0:354:ad98:7d1c with SMTP id 98e67ed59e1d1-3567afe23abmr1943048a91.11.1770803283390;
        Wed, 11 Feb 2026 01:48:03 -0800 (PST)
X-Received: by 2002:a17:90b:5285:b0:354:ad98:7d1c with SMTP id 98e67ed59e1d1-3567afe23abmr1943039a91.11.1770803282848;
        Wed, 11 Feb 2026 01:48:02 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662f6b84dsm7526640a91.10.2026.02.11.01.47.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:48:02 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 15:17:44 +0530
Subject: [PATCH v5 1/4] dt-bindings: crypto: ice: add operating-points-v2
 property for QCOM ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-enable-ufs-ice-clock-scaling-v5-1-221c520a1f2e@oss.qualcomm.com>
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
In-Reply-To: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=GM4F0+NK c=1 sm=1 tr=0 ts=698c5054 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=QeJYPjCb9QSwVUWzf6EA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: iarCBGc2M9o949LY7s1hyYO0cQY3Ow60
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3OSBTYWx0ZWRfX0F4ybaKKN78U
 MvLuR1DN0qNlU2BXF4mn2oCvKR6KE2ZQKzby+dYH4rbdH6JcUkSmxxVWgeP5albNCPXqgwbSwCc
 ZKp3EGxShVh4RYMAqcwXwLtiMVeUtGSYipvci1KwRubWJh25RMzYJ91k+QUiJ6XufN/CIO0hXUw
 sBuoTUZV3SZLd0gxByy6GEcLWSnWykMhU4wsUneerGutmn6odB4paROODb9OGXPNvUd40JCwpNm
 Yo2aMdDTF5V9bab/LKytJVDxcU53d1mpDL9RTWMrfEWS5zGOIzeHCxjV3Tx6RXWMnFBaYgusB7W
 CeMS3cb9bmkxjYz9xE3NQUArOQ1iX2/kZJQyeGNBG3OXCxNtFbbYBo+AwStNHfwMu2auQQFCruM
 mx19srYpNHOEQo9I6Bra1kslWGw6QH+SdPWQ8ZSEZGMH43lXKk9FsgANQLmKaZZLo265hva9pOh
 XUmgIVn0GTpupK3eRfg==
X-Proofpoint-ORIG-GUID: iarCBGc2M9o949LY7s1hyYO0cQY3Ow60
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264696-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8956B122EA3
X-Rspamd-Action: no action

Add support for specifying OPPs for the Qualcomm Inline Crypto Engine
by allowing the use of the standard "operating-points-v2" property in
the ICE device node.

ICE clock management was handled by the storage drivers in legacy
bindings, so the ICE driver itself had no mechanism for clock scaling.
With the introduction of the new standalone ICE device node, clock
control must now be performed directly by the ICE driver. Enabling
operating-points-v2 allows the driver to describe and manage the
frequency and voltage requirements for proper DVFS operation.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 .../bindings/crypto/qcom,inline-crypto-engine.yaml | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d2057270a732fe0e6744f4aa6496e06..50bcf3309b9fa0a3f727f010301670e5de58366f 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -30,6 +30,11 @@ properties:
   clocks:
     maxItems: 1
 
+  operating-points-v2: true
+
+  opp-table:
+    type: object
+
 required:
   - compatible
   - reg
@@ -46,5 +51,26 @@ examples:
                    "qcom,inline-crypto-engine";
       reg = <0x01d88000 0x8000>;
       clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+
+      operating-points-v2 = <&ice_opp_table>;
+
+      ice_opp_table: opp-table {
+        compatible = "operating-points-v2";
+
+        opp-100000000 {
+          opp-hz = /bits/ 64 <100000000>;
+          required-opps = <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-201500000 {
+          opp-hz = /bits/ 64 <201500000>;
+          required-opps = <&rpmhpd_opp_svs_l1>;
+        };
+
+        opp-403000000 {
+          opp-hz = /bits/ 64 <403000000>;
+          required-opps = <&rpmhpd_opp_nom>;
+        };
+      };
     };
 ...

-- 
2.34.1


