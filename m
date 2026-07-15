Return-Path: <devicetree+bounces-327057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6YEFEzuQV2qQXAAAu9opvQ
	(envelope-from <devicetree+bounces-327057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:50:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D0075EFCE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:50:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=VJPD0S2W;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=RCS1P3sT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327057-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327057-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82A603070F3C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE033043DB;
	Wed, 15 Jul 2026 13:44:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422E22F8BC0
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:44:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123075; cv=none; b=NoHDCqxr4d/kvsidjRITKWoZcibg2jDKWiCrsD+2SqSWgqOyHgbLU3kWzJy9iNQwnJwPVPYGd252tFozdpyyhbyC1R7oRTeZiY4m3Ysi16vHZJmaPMKjMMq0ue2sD1bqPH4PRrFQXGTHf7bKg2qVLDRT4OStutYzRwpXUJgF2kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123075; c=relaxed/simple;
	bh=d09lYffK7NKQtWks133wtN3qnkJ/qWtJQRxHm1karAo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qgRpwVlo+mh7cang1Mwh7FFFSjx7itddxN7u+2EzaNLF1jiva+cluwqALNdzgfyN1M/n5TjNiSUau3gsHAcO3+olOEYp+wkZ2vPYB2s5BIkuHYPoegUHl7dnf61u6RyjeSM+UfCpS8nPUXeCCVeBbxToPMJkqA2x0oN+E2mr/oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJPD0S2W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RCS1P3sT; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66FBcil13707668
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:44:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GQ2mUQRBJOhBt3jiMHO33GZLC4ik6IchEt7Uxsn85FA=; b=VJPD0S2WgvKoSp0f
	NOPU7hKtxqB1SCLlH6kEHbm1LEyQLwC5hVhkseY3MqVLkddMnsGouSLjNWr7Ki2c
	c5feWSAH6e7louySA0PZykTWf6IOtxAcRbgbFf6OnwTkZdgf0A8qxPN4EnAi7Uq5
	xD63++FLlUHgjY/tWmu6RT1DyzMeUBLHw4Ihu95XDiK7Aaqi2xI3YWcdfnZvYW1r
	q3SEK6RUg191O0Nwpr/3fUWOovInmy6RVYpPKxH5/+0gSFSYRqmKqNV1Q/W3yRhp
	Lz/PQjV4M622m66xrsWduwHOGhw5HQJ5Yjp0HqF+T8ukUI19vCD/SWe46qXYxmkK
	g9oKlA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fe7nmgxpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:44:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1a97644aso118714251cf.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784123072; x=1784727872; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GQ2mUQRBJOhBt3jiMHO33GZLC4ik6IchEt7Uxsn85FA=;
        b=RCS1P3sTDAMaIrSOMSF9HjOSiDR8K8vsnDuKBnvhW7G3eOUskg0eAQ9Ym1kT6+P0yd
         pI1BkgxS/ZhGuRStcvQTs6hATDK0wplUxSibHVM43nrlXD3KPbumxUe0StB+fo008cxw
         W/azoKezvYQ68yGyQTHlxTvmXD76QXpwcdHCupKdiQE+fwCnR2FuUl0/MoGa8896Ue9S
         XHc2xdvsaIHon2j8CLzlpi5vrELUWiJzzBHIB0rH7rAXmumhgmAXiRZ8/kPcR9b2Cbqi
         qNk8D7GiDJgIgHcExF6O9EbDvySHA/JuGaky6d61tsN1r69o9vVEt1pm7oDFwjx9KRS7
         njuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784123072; x=1784727872;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GQ2mUQRBJOhBt3jiMHO33GZLC4ik6IchEt7Uxsn85FA=;
        b=aBLdXBpzi+wNe94J+3nF4gnDTLPaHCTGZ68e4jJy8MY9Y4FlxfkZxFP24r9iN5bzcU
         ERwLLlS7cbG5dSlNzqX1M7kBkK4fdsTz19UeW6t14UnXp1EOIG0EBjHBE3j7uYP0j6sC
         +b8qVoPZnYD3P9BHJWdchdKyQDtHChsLeeOx8u3OwY548UWFN79jjug162gcxYQ/sLU8
         SfmioTbrJaJ3i9JccpRxZ6zBAYvtSoWoQf6bG5nOSPo1eU9486HBiUMc5Bkd+GK85tYU
         9w8X3fkIHDa72AJcHd+Ondc3oxrI1Lha+KHC6r/R0a+Fj5h1U873lwlys4ihp8xJgOn9
         vXMw==
X-Forwarded-Encrypted: i=1; AHgh+Rq+yfgH4OwgimUl+KyXm3gEDcLEaL5nfgo2LJJZ0l5lluBdFaOQWCqReNdv7TCeQhIwTp/qFh9Sgg56@vger.kernel.org
X-Gm-Message-State: AOJu0YwnTO9ZL6kHCDIxf9cd8C9qCXmhPaedplbM/8ioZz808fSLFMGS
	hektjzcWM2DghhN/GYn4kIZpn0H8wb+A1mAiZq6668NsKpdgGTDQCe32BT68gZhbMBGXoDxOeTh
	Zy1QJG6bTg63G3ARrlaU/uzGfSYG0e9oUDGK3JDLx/Vbfj8Z9fH/OZatMhMy1XYC8
X-Gm-Gg: AfdE7clZbTt7GBrhO+Id4l5XXxl3m6OJcCUJmStAfblhgO8+nEmRqaopYccRI+PEsEX
	xbc+W3gqecq2Tway5F1S4XWbOKtVs519eqQZHmgYrWFDwOiZ4UGkXO4PxsP7aZdnwTQQ7InY92v
	u9tOPSkQOPLKKqpRi+x+o60Ur7LSRbiMGA8oIgeZ2ed/j4UKrHDgpNh+46GJjYgUYw7N2ioeV1+
	2wXcQWBUnZEdo90O6O+l/zZPdYOwlkWphAYPYMesduUyIABSaosNiP7u4OHhcKadQu4pR3EvOYf
	I0EzHb0PgMsiesCA3LglCHN0SVGNdQ/LDHgvdAkjxO20yBmjgVXrT4NVYU04HlL4EYo8xcAzE3l
	tDehwI/YrKi32S87ms313vpabNpjNDEmLHu8ifNLCxgTQFYE9LkQcMSeQVPtbJUucY6FMTmHjIx
	E6U74oZxuMC/OYolgJo9eJhq5kc2gcRhvfGvoYlwQhmXb7QYL/ruG43BozprsC7g==
X-Received: by 2002:a05:622a:558d:b0:51a:8c9c:7f3f with SMTP id d75a77b69052e-51e424dd417mr61097121cf.66.1784123072395;
        Wed, 15 Jul 2026 06:44:32 -0700 (PDT)
X-Received: by 2002:a05:622a:558d:b0:51a:8c9c:7f3f with SMTP id d75a77b69052e-51e424dd417mr61096801cf.66.1784123071961;
        Wed, 15 Jul 2026 06:44:31 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69cd28a17d3sm3041215a12.12.2026.07.15.06.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 06:44:31 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 15 Jul 2026 15:44:27 +0200
Subject: [PATCH v6 1/4] dt-bindings: leds: nxp,pca963x: fix reg maximum for
 pca9635
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-monza-leds-v6-1-d1724bb7fe3d@oss.qualcomm.com>
References: <20260715-monza-leds-v6-0-d1724bb7fe3d@oss.qualcomm.com>
In-Reply-To: <20260715-monza-leds-v6-0-d1724bb7fe3d@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE1MDEzNiBTYWx0ZWRfX3KSghVHszOY0
 VB4aY9P3rLodqVEpsbgcXe4Bp2cSbEDqyDNEpNfKeDwJcQkldybd0Hy43fM01Zx2gxFEZeCLHQ2
 CgleF/skFMxsi1OFxPFm1pHWavgPTNA=
X-Authority-Analysis: v=2.4 cv=cuGrVV4i c=1 sm=1 tr=0 ts=6a578ec1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=XYAwZIGsAAAA:8
 a=EUspDBNiAAAA:8 a=yPTVd8cUMD2GasGf7IAA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-ORIG-GUID: WKHTZxxPC-w7Wmhj8mbWRL3tBtSsnNeJ
X-Proofpoint-GUID: WKHTZxxPC-w7Wmhj8mbWRL3tBtSsnNeJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE1MDEzNiBTYWx0ZWRfX/IhvKrsBNUzD
 lVFrY+EDC0RAMrrf8Br/KYZJEQOPQijgrDCfBAtTrM6bFDlyL4ML0gfmIb+9vZQDXMFp9OGOKDW
 krkYSorUQty9J4V2+1cobFr8O4ZeVm+VfKijvOvEdhUiR5yTzBSivtAxi01uzgzmYMvPalqKgsv
 q5wU2hHFvv3QhvtzCmNP2ZZTMEepr7bgGqqMLxvFIFrqtiu22lWmYto0tpUIBFV1nDPNMttQg6v
 XKQunOynXl74XqsmSeY8R/BLZfxOdWRZTqDnW5B2M64Sd6RO2jvE1+pn0zhZqHJ2tcv8/4rAs2p
 DuOuSfw8wO/EDSP30yWEABNoIr7ZshfhqQ2LJS4LK0gl88KQxqxLJ4GLC/pnMJbdv5Y96zOkxek
 bygLyjEe12It5uJDe97vqYkbXwLG/M6nDt4t5KpB1axObYZgj3KJytBCB9cTLvkgYtyyJujWDXe
 xsWi8XTyF14MVJzy2hg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-15_02,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607150136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-327057-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,microchip.com:email];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.253.10:from];
	FORGED_SENDER(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:pavel@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:laurent.pinchart@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-leds@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:loic.poulain@oss.qualcomm.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,205.220.180.131:received,209.85.160.199:received,2a01:e0a:830:450:751c:d61c:c91:60dd:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90D0075EFCE
X-Rspamd-Action: no action

The pca9635 supports 16 LED channels, unlike the pca9634 which only
supports 8. The allOf conditional grouped both chips under a single
else branch capping reg at a maximum of 7.

Give pca9634 its own if/then block and set maximum: 15 unconditionally
in the top-level led@ node, making it the default for pca9635 and any
future compatible. Also tighten the node name regex from [0-9a-f]+ to
[0-9a-f] to match the single-digit hardware limit.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/leds/nxp,pca963x.yaml | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/nxp,pca963x.yaml b/Documentation/devicetree/bindings/leds/nxp,pca963x.yaml
index 938d0e48fe51bce82779c4457c8e99cb6d80fe70..4fda602912f7a9443b8a77e46bc015e244f82e08 100644
--- a/Documentation/devicetree/bindings/leds/nxp,pca963x.yaml
+++ b/Documentation/devicetree/bindings/leds/nxp,pca963x.yaml
@@ -62,14 +62,14 @@ properties:
       open-drain, newer chips to totem pole).
 
 patternProperties:
-  "^led@[0-9a-f]+$":
+  "^led@[0-9a-f]$":
     type: object
     $ref: common.yaml#
     unevaluatedProperties: false
 
     properties:
       reg:
-        minimum: 0
+        maximum: 15
 
     required:
       - reg
@@ -88,7 +88,13 @@ allOf:
           properties:
             reg:
               maximum: 3
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nxp,pca9634
+    then:
       patternProperties:
         "^led@[0-9a-f]+$":
           properties:

-- 
2.34.1


