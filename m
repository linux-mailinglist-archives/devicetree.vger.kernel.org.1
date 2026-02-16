Return-Path: <devicetree+bounces-265767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKDqOkkgk2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:48:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5D9144170
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2761D3071E8F
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0243126DF;
	Mon, 16 Feb 2026 13:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZMsQKr/A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SQEsS7L/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C083126C6
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249406; cv=none; b=ssWKzNCSn/GOKmyYCG/dlU+zm6xf4052vQ6lq/SYECMVY5NfVFmmwMxVBoGlPBgHgNYWNNaX7Xv6mIsDIrJNi2Aiqu4C1SsqMdCUSSVJKUvJJtfc5CAbjWPMRRAuzerSmwwpTPY2WjjpzVnQWH5hY9/QBXqzb9lrStpWs3nBQmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249406; c=relaxed/simple;
	bh=ljNAanNsQX3haUgfK2VNArM8xCcxc69jvU1l9y/w+to=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OQdk3A9tw/axmJSKsI7YPeAlhBGga2tUMzV8sUKpAiPu2Q6dO0ULNi9UkH3gn0e8GcUAM7+2eWyMmuYuemC9bKBu3MVb121WepHsmKw14Lqp3S6tH0bcSGrr+DCvn4/L/3se9yq5rmzlpkgo+RvT2mPwyT1aCfhcb4ltjhCj2L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZMsQKr/A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SQEsS7L/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GCnMtn3999687
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=; b=ZMsQKr/AKn766924
	faeYOOkWHxrN8bvPrVdUGhUNjS2Ryugf7WYOec/bAzjiHBIcMVd1DJg5KRyE1WvZ
	TB4IctYbEj45fXTKqS4rucNlxz9aRBSQgi0SWsTSZS/wBvHpuyeKyweK1iVYDu+Q
	S4KZNeq/h9rxQ5h5CU4cHh5uQc8vgiWki4E0N4T91yerUjVoHTWyxIKOF03Bdwh1
	pLwDTE67uUI2ijYb11OO63iuRgnTV0dfGcd5L0GSC51EMuZjFJf9qscDU3KvHoi6
	thvAJ+sj0wToSwJrrBK9TcNLzT+TBi2OMBzvV7p9LDl/O5BApWZ0N36uFCZ4ab5h
	GbXWwQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cahe64kce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ab7f67fso3134248185a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771249404; x=1771854204; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=SQEsS7L/FMkbEuZkl64PwJI8u2axpHpYRLscGdO3wW/B9Q+p0rHYdY32IbL6vo8Gpj
         Pln7N1i1zM9Zu4Mt0Gd71/yu9A3DUrkndKk0iL/59XK/k/zZuLVvaNe+07HOVPI7d2JU
         hY9B+RKkGuinuH15UWI533mebxgiEGm3RTZ3MnOcyOGL+9+6MzDntz+anKCZV3zLmQZU
         Bes1ZNu0dSQ0M0F8B6xKe/i1PyV+yivB+w3MrORf772l/MaxJQP6+Sa0b9iQDSk+PeJK
         O08/0Wkyrj55zS5Om1z26ZlrjJbJQqGnybpZOOlYaawbTJcpJ5zDHB0mYiMMJe6R8dZ9
         xi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771249404; x=1771854204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=Oi/t98AL8uoGHmstZSeJoWhngSWXOKwFdFjSOIhogYhlDkI0ViIBvFLR2UuRQzwJRQ
         K/QY3VL1sF4T2+vz8E8+glOHlpebNPffHNXIO6q5WPxurnX4i62FSUTDyHbSqpDAhB4Q
         rQWfVxXlaptdIvWxmyoSSWN5Xr35zAWq2+Ajg5OMURtgNSDmi0zm6n9CfVHiF+45CW05
         /16n1zPkQxLeyZC220OYJR2EDTX+kD3qQ8fFLQ4RjHycLRjcopcAhiTGF3UJv36Zp2o+
         GnU7UWwIv57Mo/QVkZkTCrcOSnZQVMM5fWuHwpH6uF7TxS69nBa9zTnIVxKywMrsPSiY
         ljRw==
X-Forwarded-Encrypted: i=1; AJvYcCXfRJk+LvJs8ol3n4z9UFnPWejlqj5tVj9drfflAqI/kP5AP9KndoFUUVxHD28Of3aHKn0zO9xSf/sp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz50fyzIXnau/R5epuzyZ41Lvv9F3CiEnsqxOq+OlbrrfsYZZA7
	bF7HS52ZhQOmkHMCToGynbyCQ40Q9/jjfhRoiyZy1LXE73+RTbInxX0wPFWR69be/9G2xw4S3cB
	vcCqnahkZjLqDYOZVb5OkAQ4eek1+WgwKjB7WsQG43yz2Q9MUg9Mhb8d6t7UnGc/9
X-Gm-Gg: AZuq6aI+BwXzDJqSEySIivEzXfeicXDP3fCa2HcfYicIDX+9MEujmwkMi1vVAYjHeBK
	6MNn+iRCj89Ga/XaiAncpBqLDKtzZ7Snejuq2QKtNvnok1FcamXDNyM4Gai8qXOulapwSZsq6aY
	7aWuPpX5uqXx48LO+q9rDmLE/zJ+9ZOqW9HLMr7lD+nImhLZ+tApUVjpRin9TFrBT6ug8cu5kQM
	/ADFjckH3/I4ZqRBbLhykkSoS42a8T37rySMgqirrRCU0KXNdS0MFskNOoxATSungU8gPrPk8hh
	/U26YhC3ssshkkckKOWlYvyB/6bpYXpuIsv2hyMUi67yF9fNRanzq/lK7Cs38Qu8KN/RxoE02R7
	4sGqFalliTiqz7/Lev5hGRCIFk8FhRA==
X-Received: by 2002:a05:620a:698b:b0:8cb:4059:a90e with SMTP id af79cd13be357-8cb4c041a43mr960458885a.80.1771249403577;
        Mon, 16 Feb 2026 05:43:23 -0800 (PST)
X-Received: by 2002:a05:620a:698b:b0:8cb:4059:a90e with SMTP id af79cd13be357-8cb4c041a43mr960456085a.80.1771249402904;
        Mon, 16 Feb 2026 05:43:22 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm28883025f8f.13.2026.02.16.05.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 05:43:22 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:43:05 +0200
Subject: [PATCH v3 3/6] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for
 Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-eliza-clocks-v3-3-8afc5a7e3a98@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=RKCYGsJFqEQSzos+9ejqQfu8ULxnCzq56BctAEfqjW4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkx7v2otDH5sb+vzDJgwVRcAv+NbCPxufSR4U6
 +bV3RqJQ/GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMe7wAKCRAbX0TJAJUV
 VosGD/9lxzRsPm6lvcyqbdl7S0WHh30MZ9GNaEnOVUywAuYse8Z2aSVI9N0HxqNnb/ZwfrrUwaJ
 lMqChiFPzCFiwWpet8RrCB3dMX3X0s2tKKRuLuJsx2/6BYvIYHuoBa3NWLqbVKhy6PQGGCI8iwi
 qmwKGYGg+zyIHfv+rziGowNSiiet4TnAcznjhQkNIPBN0YpGQngEbXtsSAPUUXWyOUvrG4Jb+gY
 HH0tS0BfGYml+rglE6oKhyC3Z3GJNTPhE9xlcx27UFnnB1D/x6Zl1L/0td4DU5c1ENnqDchLeBq
 mdQukDNM31fZ8zSI4CRWyo1jnlk1grVn8fsrZNItqJKlmJ/gfDzrmlyCW6P/+Fu2NBVJPfy7nIz
 n6oF0LPepMNcpGVRS22Kx3bISBsnJzb3WTiG2RDYHhlN9DYBn9chVjnaVpc59wWo2paqKTfY311
 oFwn8JH+NEVz5rPyt44FXmTsxlAWVlNOtsTZm16gg+/bVe6AtsxsvNzEcQD5avMHkArtAdjNcpX
 rV41BaT64XBsvZzLDMhcL3T6fcLgbjYIH54CTtIzrMdsoKqA/LvWzNE+qzglg6kIiPopmz9U59L
 cqZfkuugNnN35kEynINupqR6H7kY61361oyqCMdbNhPKpzvcQjeQyfB4HeAUGWRYe0Ywl2xFcDY
 7Z6VReUUbMrtp8w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=c5WmgB9l c=1 sm=1 tr=0 ts=69931efc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=PJhJesWDv2iQC9CHGcgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 95DD8t_kLHo0zx6U9Qc1MM-i-cKgfGAI
X-Proofpoint-ORIG-GUID: 95DD8t_kLHo0zx6U9Qc1MM-i-cKgfGAI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDExNiBTYWx0ZWRfXz8aL6R27FLJu
 nDVz7Vg3kVVwC9EcC1m6R+RAKME7cTTXDNJ5xXARc4hTZsVJ0XRMI9l0vDf30l5pE5aQafO96CH
 vl+OP7WA2WBfI7zqy1644uPRtT1LZnFNipVrAzZ/kbYeef3o/EieVfTa6p/PVMKZ05qRrhja9FR
 Uf409D5YCEK1GDGDuWOoz7r+PwwMun80iR1qThQpsgA2zxqh0zin/6qA2T67aCYmcciK+wGVPjE
 xEQbGbp+dhUto2ktIokgT8r2GSeg3LQFRElHTIlc4gPcDMXqOL75e549JfeagzhgHjckd9j0kvh
 oNCFAloZbxkg4egIQqgB+VvOPKARqFS0UamzR/QylDQu91KwHjjJ5PnNJV5hrgxn2oii/pC3HON
 qqylDFO7tjcRim0MnpJJpB2H8Uf4eQ2U4Qla3xhNq1kUkyUcYWK+sdyatUkqRouaX+EA6gtRZFt
 4rtlwDAFMx4G262DNXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265767-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9E5D9144170
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Update the documentation for RPMH clock controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 3f5f1336262e..9690169baa46 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,eliza-rpmh-clk
       - qcom,glymur-rpmh-clk
       - qcom,kaanapali-rpmh-clk
       - qcom,milos-rpmh-clk

-- 
2.48.1


