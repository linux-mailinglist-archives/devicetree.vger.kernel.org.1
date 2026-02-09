Return-Path: <devicetree+bounces-263837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMGfOeyGiWkn+gQAu9opvQ
	(envelope-from <devicetree+bounces-263837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:04:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFDA10C4E4
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0038C30048DC
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 07:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D1972D3ED2;
	Mon,  9 Feb 2026 07:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xai7ORY3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hp975E+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083E5239E7E
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 07:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770620650; cv=none; b=V/Purdr+2cpSTX/ZAp2kZ/NuE2Rox8BDzYqI2EpVc3CSH96b235HLyd28cG0uo78ZYHPxHTnEKWfMou1AUbesygSHf8EZijh6DntlODQT3wnTwXYNC3s9UcMkjnB4jrQ7C2PCj2jgPGmEfdMwVnuUrg759u50QHUlivMcS1Gp8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770620650; c=relaxed/simple;
	bh=1KQSI+lUZ6gFYveS3AEQBmlcp70wiC/e9qL1wsPmsbQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kC8hInCA6jgQqNJSKu8SrHLyhwwFb29yOb53i8gNwYQSeqD/QTaNaB/+ktnJI+wriIOTF5KcIWh3Nklq488mGPNgXGwhn7s7CoWfupd+BooJOH+JlDix61qFjzs9EIeD2BXN7oec/c4q1tPVJNo2cjdU07epdPkqJz8ASOWsvr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xai7ORY3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hp975E+5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618Mkf7g1697501
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 07:04:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=HoWg1bTn4CiOrfh0WKdbd7Qc32ZxCCqjLTw
	Dpv9W7a4=; b=Xai7ORY397RBwXkxQpt64l6HNqDNnMUoOEJnLdrzJMS86a8ntp8
	X/P7JmvKmGOPbCVQFHCjVm7kIK6QsXofah1pWCWX0ypQP2C2mkeq0Gltd9l6bxA5
	BY0EikrtOCzqxQYKS8fJVL7z40wQvxVpdA1rc0/Fsd6phXkjlOWWbUCKR/x3+tDD
	5brqC4yiJlHWmBlpqSdNziNXxY8eUE8EbfqrjF/ECKdDoENfu6jCFEqUZO2+hsoI
	fLdnnf3GUojjAEQ0LlYl0b58yeSC+mRyDjKXitfE7YyX4ufXhrhwSjHh0c97ea0n
	eGn9l/0W66y9l4eYj6/6Z9mxba7la7WR+Hg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xhrc35q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:04:09 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354bc535546so2238826a91.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 23:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770620649; x=1771225449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HoWg1bTn4CiOrfh0WKdbd7Qc32ZxCCqjLTwDpv9W7a4=;
        b=Hp975E+5h1pUm8q0TagY8NRbuI+6vIRC+ds/SdEVLo068h+Du59t2YrunqK1eMlB5R
         wgwXHCagYCjD22hjFfUmcGzBEYIONuFNVdzDlXVL0rXXyQuWhIlOnDvVPA660I9f4JaL
         gZjmL8rFjhfYmS/Zgq4eMDzyVfmYPhKQq/2oPmu6L12KfYpTEbSGZ3sLql8hDq9OCyXw
         4yhFHm4jvqYHCNZzgLnWu4FIzSqhezuqwt0Lwf4PzmapkcpEpyHQPK29hcX8ABaLxxfW
         itHamSqXmx8BQ7WP9DrDukH5qz8Sp62r5miuukHASYkZ9LSjWC7RR+QUgrzNIsSYu7tv
         zS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770620649; x=1771225449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HoWg1bTn4CiOrfh0WKdbd7Qc32ZxCCqjLTwDpv9W7a4=;
        b=HB1D5NknYWqB34eiKKRUmw8tEt8q+8L64sDD98T3MNVVvbJzJaON6YEfUq1HxK0rG/
         +EQlDDojI4QuqtoaFDcQa8bX+j6gI0P36sbhJsZwjYCvO4U4A7hSkarWVb2lVPa9Stmy
         gBv1imL8XflySFkU3MbXnIgsFHg83iHAN+GkzqE0Hw+gpZSi7l2n0M4YtNVAwxWwXKzg
         MjoH56bwHUTneWCXUcMq6NLxfDJSZatyzy88m4VBhhUY+T02FZj9c/M1C8MttsooGrDg
         a+BN4PpyHR70CXYbfUeEW8WSYOmNyUEvJFUXy3VOMY0KD0GshrLEL3blUAJiu9dBXSbI
         yGtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpmm9Xgt6biG9PW2bUgxeoWClRaxH+l4/Tx4w6Rp/DylEdoUCdsCyts84lEabEqAJLOmJzLLlnIULf@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa25eGLuW+RoNuF9t+Eqx2osy+ZW3qPeloTJxDG79CFxDifF8h
	4gw8WH0zmX4OME6Sm00Z/ouFiRtkTeFgFFPc+5ynXQUoVinxNGN2CBlXsrpBbnAb2pPWkkQSsMk
	+x7sY+bxSveRbmVdQ2UfF659PjiasA9z8Jpp7vw+8KK2VmSSKj+Cg0lcvkFr6YdcS
X-Gm-Gg: AZuq6aKyyK4vzxOD3WmqpZO7wHsTLtPpMpkgfFUcp8ddmLktxp1nesyNK1EupqIcO2c
	kCU4zwcLkb5uNUXeSiMYwWpjJNbXqz8A2GyKJPHvWVicNDX6Imod2vRWTBpHACOeMm1D5jmTlmm
	YWe816Bkybh3nqR523N0EbRNaLKbvZvH/K7ktbSe+c5XwdbNE/5FF8EKf+NJJTOTve8ILy93in8
	CaPwUpTSXDdUr0mFrZAWdCHiqXIWWHMy4un54vY+KecU/0XSl4uB4rRgUtInr2B4vWOnT9hunBe
	zWac8CZta2myjlHKIhfc0UAMfY7CHPu8g96cgXB9o32cZzYOQrv43twnprV2KYxoxlvuuhRyFN/
	N/pjQ+6cwptxEUXKTu8cUu4MPpjgVMgqeVv0fUNY=
X-Received: by 2002:a17:90b:4ec3:b0:356:2fee:92c4 with SMTP id 98e67ed59e1d1-3562fee9606mr2890768a91.24.1770620648630;
        Sun, 08 Feb 2026 23:04:08 -0800 (PST)
X-Received: by 2002:a17:90b:4ec3:b0:356:2fee:92c4 with SMTP id 98e67ed59e1d1-3562fee9606mr2890734a91.24.1770620648133;
        Sun, 08 Feb 2026 23:04:08 -0800 (PST)
Received: from hu-vivesahu-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8244169804bsm9176950b3a.27.2026.02.08.23.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 23:04:07 -0800 (PST)
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: net: bluetooth: qualcomm: add bindings for QCC2072
Date: Mon,  9 Feb 2026 12:33:55 +0530
Message-Id: <20260209070356.187301-1-vivek.sahu@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: s328XJFw2sHKoAEPk7_KV0qpH8gi5Clx
X-Authority-Analysis: v=2.4 cv=AJ+v8NAg c=1 sm=1 tr=0 ts=698986e9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=FGpUFwgwi8_8IHRhZgYA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA1NyBTYWx0ZWRfXzoktAEr8Mbwu
 vK4BxP0RjNdIGu9VjobrYqPzIVE/xgJRh8RHBEAYJtRwXJWXHs/IIvYKXpn+uJGkGmaYU0vhhtB
 Iea8I4X9am/BWU+Z1H85/faWWBDekuz28pTbPmhqJSw/vw68qTT8xeoHcGG1o6gJuBwOmYc/7ol
 RdF+Hf90AJZXN8WZA2s6JFqfqk13zBHHNJ9d9x4vO5qikReMFnkzeYg0q0MPbQd00e4VONgVL4s
 JmJ02BtHAGULNM2azwYS2bfYGe0zfmGKccqr0Bq4EwLBEuoS0AEdR7W1PQ92aSnsAFeLfWZsjE3
 SKPz2iZakrvMgPOoJ5rb5XJmyxFY7wIFA8BMQTiJkZe0geMf5BsefonO+4StXvF3dxfRRx9K3x4
 bsah9rSDyh1wslOLvV7iVsuOE9KDJiG0PWs7+SaYJQ3gekZWLa/99cCOaBa2BRdtGvdITRVbS5f
 Kv0Sz6+8uqXv0Unp8xw==
X-Proofpoint-ORIG-GUID: s328XJFw2sHKoAEPk7_KV0qpH8gi5Clx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[holtmann.org,gmail.com,kernel.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263837-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.990];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4CFDA10C4E4
X-Rspamd-Action: no action

QCC2072 is a WiFi/BT connectivity chip.
It requires different firmware, so document it as a new compat string.

Correct the sorting of other chipsets for better readability.

Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
---
 .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 6353a336f382..1f47ad36aa61 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -18,13 +18,13 @@ properties:
     enum:
       - qcom,qca2066-bt
       - qcom,qca6174-bt
+      - qcom,qca6390-bt
       - qcom,qca9377-bt
-      - qcom,wcn3950-bt
+      - qcom,qcc2072-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt
       - qcom,wcn3991-bt
       - qcom,wcn3998-bt
-      - qcom,qca6390-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
-- 
2.34.1


