Return-Path: <devicetree+bounces-267304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PgpOZ0UnGkq/gMAu9opvQ
	(envelope-from <devicetree+bounces-267304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:49:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 599231734AD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7A333030104
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7AF34DB41;
	Mon, 23 Feb 2026 08:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wz5Qam20";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QbDHwXHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FD434CFCC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771836556; cv=none; b=TueoZcZxjyA1vDKq/OxvAJKaFHS7wZKmSNt5tpPxWCOvNkzKbutQPXO2dwaU7dE8yCIhzxHoq5pqq8xuH3ox5zRUM9arl5ugYwT3u3CLWDCAkkoPWAggW09dt4wjp/7cPCeGIBKHgUeSfcnHVRMuOF+wuhRVu9Kc70ChL2s5NQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771836556; c=relaxed/simple;
	bh=wWdVjcHHZifLpKJTQMD9B4lE383jI5XBHmwb/3V9bUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jSuRMoJn2hFKQ6Uy5nSdhfX+ghyDu+slLjHrndrJzikJZLooVhGrCANK03NTaIZAEELnMCfYvzAZHvKLUEMAkoNtCjeLbQdVTFgSXX5525uY98TE41WZFlkg1Tgbzxqxat7nJlKpUmofmlCQQdQxABg35RE2Sksml3Cyn244cIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wz5Qam20; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QbDHwXHF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MLcc5x1351113
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:49:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eSKyydQlaYzgtBT9kaH36X
	jlz+DnegvsJaRM4KYOD9s=; b=Wz5Qam20rI9ZewjvWwVr3RHYEvrNiyN7cURbRy
	pSiXTENw/5Ub0z5NN6dujT3k7L8qrWDOijmUALy5896+XhanLMCEn1Lk5nj2IaVa
	kWZT710eAGzJhffVLs0EE79b4yHmr0jZRTcWh6FHpzHTWQx8TWh49osuFS5TVxjI
	svhMpchdFaYLSeYXoelBjFmTlyeIJLKyr8Nd6lYGhGjWl8WTrR+ShSCMYbMno1bJ
	1LkAWfvEcUf7vXNPDIcZBwAwFjSpziCbYInowwcHFlzivgeqVYHW1KIBjpkkw8dT
	ubt18kJi1XwNQccP+dZDeApg9JbihwCmDvOBAcJ+/qsvGo1Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5x7v1u5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:49:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70b6a5821so3427208185a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771836553; x=1772441353; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eSKyydQlaYzgtBT9kaH36Xjlz+DnegvsJaRM4KYOD9s=;
        b=QbDHwXHFqxSmfeUt+31vsToP41wNhaRR69PFK7mBL8pGJMWYW7FA9nbxeS8D6+mJza
         OipePGNqjrCGWVtJz4LYmc3v5IrzEWPqsjji40hnQtffBaYxCoYjNniEKwa/nEGGkKDv
         x/aZYXYxfF3i7S6s1KrP3OmuhfzDprJz4veYLHr+vfz+u9HOWHA5mzcTgoM0K8VziXit
         SL/NqTTaiVdl/17GlcNnNfr3jUZTBVctf4jKPkAatiSD9ycfA44d+fLXMc2cOgp/dpKt
         kxznAZnv/WdIdIQeTxoLL09tuVPL228Tf3II7jkbnVRbxMGgpiKTVy3WeXpJIbP9xz1O
         mTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771836553; x=1772441353;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eSKyydQlaYzgtBT9kaH36Xjlz+DnegvsJaRM4KYOD9s=;
        b=vxcPa79RFwBAtUBfZIBAdjvq0oxiI+t/yfHu0R2KOskxjxHpZ1Pz6ECVCJQ+L8vlvA
         Z+L5FHGYZM4jffsRr1ozeJuCZ2LLJFgoXCL+x//eXFP9wisJXlah2rOBoj3nHdBB4w/N
         eSr+zNLiIc5ijbTx7CW72RpA0utUIEdxxTBMoqUItJ0UU6SQMZwBxwj9tITrzF3Edqb9
         wzMTdMbyWzerfTFCPUEwyY5WRpzobCsg8FGfN2WphWaN/8eH3ByWe+jDIRF6fdgqkRbA
         mxvczW2NzknlIb3qKlaFIeCwDmhukRXhc62ahHQSuKLj6FBGOxjFg78Gnj9wMhnqprHA
         9f7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWaqufwMvRxfbfvqCDDyI6L0UdBOpAAyI56zQYvDQbZ6VL3E4Llftm/AMUrExAq+FNs6prbmqHdG5mY@vger.kernel.org
X-Gm-Message-State: AOJu0YwzZrUGZeynqyOanoLIUMJP7rCwkDpq7H36YJMzz4nZxMhYvxVO
	Q6VObx3JhuUuybPMAeZFivBPEtA2CyqK8XTO+FacNC1dz1bjTByOvSMbIcnn+b0T7kufwI80N3W
	9PStWiWrbhKwm5mMSxKvslS8csSs4BHuhfIaC64+C8qr4E1IT43y2i6LcvjR0/KKfS3fErckz
X-Gm-Gg: AZuq6aK68ZBXehMiR205s2JiaWGuqAMZneo+Q0l3n5mxHEQpmnr/3h4hBOEgDEg4/zJ
	nh43Hx1Vi9jd4GbwKQ80lSeljyksZCvbf8hwb8hd3SUFRgrzZr2CCjquPBlT6WtKFaT0wkwqy5w
	LlYXvTfNiWZ15wAV5XKXgX1FkmE4UauW3Wh9F2rwXcnlZQGc20SVc/zTXOQEdv763kGwc6f0/bi
	uuJ/GC231shmaS2/0VvUQmpoicJN86LFZgUug9fsnDY1q2o+Lh9BjkhmMP6kZYnbb1t5elBAEyV
	T7dU9qqAY0HU1Y10O9GzMM4+F+/boEobt6Y7rika1fpr6XDicB/4/uG8VU09tQcAONOtFBPcuyp
	kKltG1m4yqHnSE5jwar1PRYvmmkYqYw==
X-Received: by 2002:a05:620a:294d:b0:8c6:ec8f:c8a1 with SMTP id af79cd13be357-8cb8ca71fc7mr957700385a.44.1771836553372;
        Mon, 23 Feb 2026 00:49:13 -0800 (PST)
X-Received: by 2002:a05:620a:294d:b0:8c6:ec8f:c8a1 with SMTP id af79cd13be357-8cb8ca71fc7mr957698685a.44.1771836552783;
        Mon, 23 Feb 2026 00:49:12 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54760sm17834071f8f.35.2026.02.23.00.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 00:49:12 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:49:04 +0200
Subject: [PATCH] dt-bindings: interconnect: OSM L3: Add Eliza OSM L3
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-eliza-bindings-interconnect-epss-l3-v1-1-fa83970d60ae@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAH8UnGkC/yXNwQ6CQAyE4VchPdtktxoOvorxALsD1pBCtmiMh
 Hd31eN3mH82chSF07nZqOCprrNVxEND6dbZCNZcTRKkDSLCmPTdca+W1UZntRUlzWZIK2Nx5+n
 IcTiFGCJym0G1tBQM+vq9XK5/+6O/18k3Tfv+AcZJDt6HAAAA
X-Change-ID: 20260222-eliza-bindings-interconnect-epss-l3-1f40101ed6de
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1023;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=wWdVjcHHZifLpKJTQMD9B4lE383jI5XBHmwb/3V9bUw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnBSGkNTgNthmmA5wR7z9s5uKcfUIEcrel9dDx
 ZmRMZVeuK2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZwUhgAKCRAbX0TJAJUV
 VnGtD/9LMmzeWThRDEsWxU4GNu5Zrx2YlVt/t9NaT33g1gxMlQ3TVv7aIJc/SZULTW2TOrZ0Rd0
 dLu/B1aSWiYOhpNLrd7dcS3kpxChJxDPryKz6TphLPDFUA+Xw/95y9f1mXWEsQXgUVIaTpE4cXG
 1XMt4i1GjqZO68GSbjXSUnm5i2cAotisG6IIUuRTK9Gg2Nnf6yZRC5WrL9wfIaKtsfx8ybVxD3H
 +FvTUE5uv++AAFw84tCx39CNoHIFvuCJGdSIT56I1rjnGe6VtUxea52b12FGLxeg5GeyormQQeL
 ERigI+5N5mA3q98CIspuKDhYUS5oRQKrWfXLEkvNiSzQzutMHRulYQom5xZy2m1Y7VNsBszsxLk
 O5DJu8sgAMhOQ3ybJ7+bMmzcDt4PsCzfQng27Ij1ps9G8aQTMPQiiqlbBAwSL6+XPdloh+c/nBZ
 8bsz4ZSR+WofZbwmyHjUQx/DOp6BzkzJTcs27t3giUDTpyrZMkvnzHd9bD4UCPg+eREdPhrHs6c
 8zp8lK3ROQBAHZ5b/14mzkB1vdS+RxfoUc1hbmt3BgQRLI43tO/bLnGNn6jYufoO2NK76JxrruP
 6FJiwmwARs8YW2MHptKqR/wgcvitZNSEK59O2ffx0Xf3Z2uwWNLOA9ja1IG5nvfaMc7f0bYq96O
 PoOCy+WsTmSE/kQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA3OCBTYWx0ZWRfX96B2ScY2VSTA
 2axJJ9tWes8Sn3H+GiRORWZ3SzXr99aA/dH+y5Gsvdyz/W5YaYiKvIxgapFfY9KM3X32gVsbyeM
 hgc8oeTRZcle28RryuALxCvc3AmLVwgXwCFJvT9/oF2uetJOfh8znBEgn/1whj+mhvIl4EAvjxG
 ZijDcuaxiDSgMgSqWidBALxFWNs41aX81cm0rM3KyMCXN5QW/1gOfxNZ2pZLTy2YxLLCXsGYbiI
 a4ic4aJwfN6SBCpgmoZnTBoBkrpzlA1u/M/kG3ceMrJ3OCIiZqYjLClsLv1p7MgpDpovXkYBXCN
 I01u0LI8wJcOyOXHyfQ0ghwnQzw5nDu+l6VUu3kwgugn1SwDx6oVSPdI86hSTe/kt1Knd0kE9sG
 TNaw0Ojp8x4PYaz0F4Vc683GCrZ+7zRmu5nL8GzVEcDwbehj/ItgcnuNFbLaRd+GgbINVxATiVL
 7F3nyUst+q9S3U+z9Pw==
X-Proofpoint-GUID: aJQwnXNpExcVI_cyexB1__q0J9IAJCMc
X-Authority-Analysis: v=2.4 cv=X71f6WTe c=1 sm=1 tr=0 ts=699c148a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=r4u9pCY-MgWLWsCgO6sA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: aJQwnXNpExcVI_cyexB1__q0J9IAJCMc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267304-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 599231734AD
X-Rspamd-Action: no action

Eliza, similarly to SDM845, uses OSM hardware for L3 scaling.
Document it.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index 4b9b98fbe8f2..6182599eb3c1 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -28,6 +28,7 @@ properties:
           - const: qcom,osm-l3
       - items:
           - enum:
+              - qcom,eliza-epss-l3
               - qcom,sa8775p-epss-l3
               - qcom,sc7280-epss-l3
               - qcom,sc8280xp-epss-l3

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260222-eliza-bindings-interconnect-epss-l3-1f40101ed6de

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


