Return-Path: <devicetree+bounces-258477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJloDh1DcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:32:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DCE68EB6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0DEF43000889
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51A1366DDD;
	Thu, 22 Jan 2026 15:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V2+o1iFq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SA47U+i5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2203659F3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095465; cv=none; b=AN6riCiaapvM413Fi9a/pbCaZLFBAJaGJcEEvtQkhjaoAEzmpe6lQOSSl0eDEaX0xTsjM6SSj8WBW+uMSTkh/es4c4u06iiOfTaDlsEmSYWfJNUKfJ71xvqf/C6ARJq21WXU8jLjdfN2Y7y39pxp1n69ZcDN/WOwEnykUZBjhcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095465; c=relaxed/simple;
	bh=ZJDwIAd9ubN0TqTyRgpQBA5ygn+ZkTIIsUJvbfJB7Mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W8EOTOCheJaPaBk30kYxw1B1IFiiS0Y0j3o9WYKaOL/itpbnWLl+sUwgAhZ3qjpWN9OQWUEK5O6GmhGvo0Qk9atkUwAUfaVfbNReVXoDmHdy3rS+ljZlu38g1NDSyPnkrRRmKJKQtCkPkIB78/Aoq5mjArXsJli1zZYwNJPFU48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V2+o1iFq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SA47U+i5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M7oMt5788974
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:24:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=; b=V2+o1iFqVwvsJWO2
	Xp96+3MuPOD6E+4DRazJmoHpOxPSy7bhpqW/+Fysq9SAWl6pPEzpTi6Kw/F9BeMo
	Zr8ZWS79ySguxSUECTDX0CSSSYrPVvjwEJj7egZffmJckszJkEyOCM1WUnYVlLDo
	FheXv27YsNlw++mnaXP7gaowG3FU2hoXoEiKRRWozIhPGoAUtJwruUBFIVJx+ARq
	GWC1nRGUkZ8rMqBqpndwox8WGuKT8cCkbew0GLO7Z05V79IIFV065IlSRvlCItuj
	WOZ4YSaUOLdCxWmjZt5SokzseQUmZ39ggRWQIy2hvN95Ui104pJ+paJoBefF0+DY
	eClN8w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6p1jx7n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:24:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81f4cb0fdd8so1006309b3a.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769095461; x=1769700261; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=;
        b=SA47U+i59y9ScIKCoPuXPs3y+a+Jq8uNeyTLVenUwisjlO8ahCuuCsW49YxaIukp/A
         oX9Swp86T4BugqRh6HQNbkW0/S6VYYiJX4rwb70N8Gp9eDwpYwvlvyHVDS/2+yCsVe/1
         pSt0QvHrwZCLowTLg2ZQjowjz113Xqr2B31KdsqJdovGanXxvNcMEhDHRQ0yuZ7FNkxo
         53oz5MKQ7C/9FaKX5av87SZZJsVXlTfK6SaX7JWpYdM7bJ+DaX2VDIvWTld+wKVk0Izd
         NbOgebfvYsrlhqR3DYg1YHeyj502+5yd9XTAzCXwbg+couRwpLA3yz7s2g6k0YYrIpL4
         5zdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095461; x=1769700261;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qdASJwP++iHL0ezr6b9geVxlqJ0ibz7Ub3TyWiBaIqs=;
        b=DXRkrQ64wByI5h7h9n4D/7w+m5n9/lK5l5QOG9AKI3KRvteGY5JWhGDMrCiVUu9Td7
         vah7mc8OPZqzM7aVorGuxk+RRH8GNKlLHAl9XZJI3TpxpRfAUXx5yejTnNdnCCuvnwec
         kfZ0unKnnB0OpaU4sW4fIQ68roFZRQOK0B64aVGIbQf6tiFXvWIksi3A+omLTCF0P/H2
         VlarzC2WI1KXBpY7/cHjBFctrhuTFTMXsikexxRggrWG9YaWpyhAzdFw1IGpP6G4Og2u
         vYUuW7LAX1k32PQ5BOyZz15ys0g4/ADOxe780KcM/sGzDATZ/RWSbWTHeyfJOe4k1hr4
         Hxqg==
X-Forwarded-Encrypted: i=1; AJvYcCXvjzA5xM5JD8dM9DHKvpEGh0Rqs6B+MB+PDhhsEjm0Q+rrGce6DK2OV6eiw+9DlctGE/1HzKLoBv7N@vger.kernel.org
X-Gm-Message-State: AOJu0YzV1fPs9s79DHln+25PDTyMB5f0Xbjzz3kgtHMBIW84088dtBZk
	d0glsCquq6tB2eZXem6S0NP6NGowxNL7s7gfjjOla+eenr4t43j9Px6SCAhMkiesLaauoEVwZnU
	lN5FofJCl6d/KxOu8/jCgXB/RKWRw9TFxI+lWXJjOw3NhoN5F0keSATg0Ls6ad2zJ/aMauMLV
X-Gm-Gg: AZuq6aKuuyFsAyCH31mS++HH8U36PqdJX+1Sf3OXWG7xYaiFy687hQpphuJV0q6C42Y
	Y412zL7anahzfhPIv0ZHTqTFD0ZAEXWAf/4BXNhKtjInxT9fygPO4J9WegqbTAqGYTY7OzRD2n+
	PFi7ibWtm8JCv9qyP+CZmDRJ6EPVdlXMFygHr2QZ43Qotr7zSLuow7fWAMFYcJBasrSzPN27Lxq
	OFs4FYHHXTp2DUH5B+OVzo9S52cd2AHQnUeU0k6fO9dx18azPRX/l2JRJYH6frZiDsF6Ixa+N9Y
	zAMOgisa9bJW2t5D6lz17CSellA1zrrrKWl6tnAQ1C/YLyjNzHO4t7cpNidEDwIqzO8OfIfMiGK
	YF1qIkQ8QBCizZYxHUFZNFK6ycn35sK8nEbZsDPtKALjAKZ11oH4APmnl2y161FghJwr0hnvKg9
	/FnayBPsIjsJTDO6M7GRZ4sD3gqYxF5g==
X-Received: by 2002:a05:6a00:9199:b0:821:81aa:add with SMTP id d2e1a72fcca58-82181aa0ce9mr3334645b3a.31.1769095461300;
        Thu, 22 Jan 2026 07:24:21 -0800 (PST)
X-Received: by 2002:a05:6a00:9199:b0:821:81aa:add with SMTP id d2e1a72fcca58-82181aa0ce9mr3334611b3a.31.1769095460655;
        Thu, 22 Jan 2026 07:24:20 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82180636c38sm3743474b3a.24.2026.01.22.07.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:24:20 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 20:53:58 +0530
Subject: [PATCH v6 1/4] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-upstream_v3_glymur_introduction-v6-1-245f408ed82a@oss.qualcomm.com>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
In-Reply-To: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769095452; l=866;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=ZJDwIAd9ubN0TqTyRgpQBA5ygn+ZkTIIsUJvbfJB7Mc=;
 b=i7iydF5FcnAg8GYbn4NvuW/4dMZtnkZ+eq2APb+VksyRjmEvwoE7eB9pg28DOO0BB5YyJnBMN
 6ZNA4QDqywrDjG+THtFsenJZZRXkeWdikqV6mb5/FPEb/ZCb6HiMq13
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-ORIG-GUID: mucyZJzTNF4O0SdgAqqUw6pgASL5ygTB
X-Authority-Analysis: v=2.4 cv=N7ck1m9B c=1 sm=1 tr=0 ts=69724126 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5v-pcvSp8lN47LZtJicA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: mucyZJzTNF4O0SdgAqqUw6pgASL5ygTB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExNyBTYWx0ZWRfX01P4J+x0+M1i
 kvETLLDcclYBUI+hjt9cerx6dQniGbuWmOQeAdSpywi5x4XH8OcbpK3te938fP1i4GwvJlGCdN1
 ELdRGDJsU1o6tK3p6vm6z2d0/vCgW2rb5wyk5DXWMqZ9nKGTxxPbcmH5Ak8nBf9gUckJw5ydhHM
 GzxB9A/wcme6OFVDcRTL79a5jeLAEAKEJe2diSjam8n7yGKrQjDLS2DdcN3SdSuNHKQaeaDkaEX
 uUxgvaQB9GRekQH43KDI7HqmPHb7EmSQmaesvu2MB0zPhp1j7hNepQZtfY3YQqi9AmuYB2g/fL4
 hvgaIMOf1a6LLTRXNydrxbMIP1w/C6PQYAUgrJ6wo7zAVojsBRoQumDXmu3ZqohNLh3KJzmVWfH
 JuYN1EbBikKstg6m6CLfuL3ZMQbcV3qO6eHkuNTRIpUQjOdY+Aim71dWTBYkok/TKyH0lIwxoLC
 5k0ESVtwrIskwVSIW+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-258477-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 17DCE68EB6
X-Rspamd-Action: no action

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..5be53b50f5ad 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -66,6 +66,11 @@ properties:
               - fairphone,fp6
           - const: qcom,milos
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.34.1


