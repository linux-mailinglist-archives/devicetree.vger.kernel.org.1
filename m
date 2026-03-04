Return-Path: <devicetree+bounces-271190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A7uKCZvqGkkugAAu9opvQ
	(envelope-from <devicetree+bounces-271190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:43:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD246205535
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E397F30A8456
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C783C3C1E;
	Wed,  4 Mar 2026 17:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mAtTThED";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CIhNsVjI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392B23C3C17
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646080; cv=none; b=Em1zQqTgV/9SSQGNXHygAkjD+/+1Ulb8P+2aWwk/QThpzHcoACPIlzi5uCeau9LC4ZlBeksJPHr6BiTXz3J9tPEwBgoFJPTpEgQw9N/Skjqo3Bi6CK4f2qnyNajGSs632oTuHjGRfM3xFTX5tdMw9UBj7eZuJ4DGNieDqB4DRUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646080; c=relaxed/simple;
	bh=AnG05lo05UKYLZiQW9JcG2T899MXZCA5VZJh9xmrkyg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m8Q2WBo0F61CbqWkbDm0xfsk3+oYPuBW7e7XCFU6PYcH4yxwKzvzM2qUanFJjiFqtaiMjLTDXa+JKVdnkWFw6Ko4wcyeagSO7ONCz+mh3+5H9TEfR55IeMsZ5gDoDw1QLirNeRXTG58HG7YostnL74o6d2unGEy9GKPvTG4im14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mAtTThED; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CIhNsVjI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624E0XVY029291
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 17:41:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o/54ciGxBJeuckQMxKs/2VGcMctRAnTW7UpWd4xQqjM=; b=mAtTThEDCIxE1ZsC
	hw/EBHMaIi3zGytjlHknDYJt0b+2E2Y1kb9Zr6nGx4vmGQ/aJLva5/HH94tw1Tpu
	26C20xeaWn47OkD1O1tpXkxr/eMLVxhPmxsrNc1t1ksBW9td8eSTgeFFKktsBpGh
	p3XFg9TYqQVGjCa1RRUIVuodTngy8q31ihW6SkPv5zItKXdHsDFXGu2qmYYnpgcI
	6YM4bNbQ7viIVnCd0BcMFdY+6zz57zrTLvA6NETZEx1Kb5sLlSP2PEsUi95573GC
	TwbauE0ZvQdBKok+ow+mysMdLURDUWy9OkVkP83n8RmEB6CkdZk4nV3r8WODOh0Y
	RlsT/g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpp4fgssw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 17:41:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-359887aece0so4105740a91.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772646078; x=1773250878; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/54ciGxBJeuckQMxKs/2VGcMctRAnTW7UpWd4xQqjM=;
        b=CIhNsVjIEfhlyAyAqLJ/ttMAj2asDOntIOEGfhlVqb3vYSNr41HY59cNl9xsv/vrQ8
         ZW9oh310ZIg6PqkThQBm4ngTTgBrKYK3TMc+g0icUYFLfaE7w4qFx95qUyvn5bHvnsg9
         LZC5Nz6pYbWQOJbGi09ZINWLmOie0yWvZgXQtWqerEENWS10IB16WHHXRvA5xRY2ZFAX
         sAbMB2Qp8JOuTM99jloxH5pxxaM1N6BM9g5uApmptYoyTfiLoGQ6P/1H4acHkLBzKXz4
         ZMPaPTIjTSP2j8zgNRaw4dM+vBvh6o1a8Y9eVD3mP14S3R8T73E0Ln1XVg4hCbeI0HEe
         bmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772646078; x=1773250878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o/54ciGxBJeuckQMxKs/2VGcMctRAnTW7UpWd4xQqjM=;
        b=VabsUeCYOKf6dqREIku4wTqivxJPG+hSvxGvMVBPUDzOztmiuhSTybEs2V8LA9GEV/
         GNlK8Uhz8an5erxAxZnWtX7a1aEcMQZLmufI9Bp8sQLDiG3iiB/ktLYwGzbPL512VGWk
         X95jxW2gO1vExmOeiu13FuP5wOEbLld1Xm2aWAyDEIfgCxkl/GhgKMxbJXWacSAUP2I1
         IC/Hd3k6p77TE9mwvFQ3GKVNdbiZ6rhxn5nTWxdVACd2yTlXryE0Wj8CdkoubGkr4c3D
         3mRgP8Ot6QDWbxSNhsxMwAXye0ioZACK2ZC4WO/OrkKf1mVX5T738p48C8l1kDOWqezF
         M41g==
X-Forwarded-Encrypted: i=1; AJvYcCUexQ2jKx5ckRd+s584BtrtiYGBHeebT4GkEqun8GWFXFLV/ZyQu1BEZ96KChoh+lf8L2jPrCEk2DQr@vger.kernel.org
X-Gm-Message-State: AOJu0YwTtognb7EJYDCXyWeCyW01aIT/FEKPkjF9SCpWK0BUhPiIYEA2
	8FcIAshxUfSJKT1LNhR6VkCNgnT2YS3MMltPn5jqAthzBXbnAb9jC2jmcEhTGtOHdVPvTQhGrrA
	1as8Rij4pKd4B4BkFT4jFqzFXLAzZy2YEbfoYnwumGTXnRV8/sMKc5eaHvA3uz2qR
X-Gm-Gg: ATEYQzwFvM+l1V5nj9H2EGxIdX60L8SAuhMo+9BGytBUd90zt2xUlTxY9XdiAyzONAR
	y2XwAYp3XivyNJwJGpLU5nzw54IRHVdE2/TnbFamZ+G48ozp4oCjHrOB+RuRedhcqjwbin4SYon
	RieHzQ3stZPHR72ogXpqS3F3NAoIupdUPReRKqfpX/7DAzibtnWHq3lOoxdAcsZn8kHfimn9sUa
	Koo9SXLL7u/cilhuRgRJ00uPMVUcjiGbBCYHulVcQ4R/ws1ldhA6oxhVNN+ghfkiy3a7xZXUcqJ
	ySQ3Y0EFecVbfR8gzmkJRx7GtrajexUkeltvNdu6VPteY0XBvB0kMfmftrqisAt48ubrHYmt7FF
	UdSxj972TbfeXCpd/OxwuWYXqeNWoCxUA4rj8TMMuA/ypHBOYh8Ih
X-Received: by 2002:a05:6a21:e90:b0:394:625f:c565 with SMTP id adf61e73a8af0-3982debb82emr2734166637.30.1772646077958;
        Wed, 04 Mar 2026 09:41:17 -0800 (PST)
X-Received: by 2002:a05:6a21:e90:b0:394:625f:c565 with SMTP id adf61e73a8af0-3982debb82emr2734140637.30.1772646077370;
        Wed, 04 Mar 2026 09:41:17 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa5ea0dcsm16608794a12.3.2026.03.04.09.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:41:16 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:10:52 +0530
Subject: [PATCH v2 2/7] dt-bindings: clock: qcom: Add X1P42100 camera clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-purwa-videocc-camcc-v2-2-dbbd2d258bd6@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
In-Reply-To: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: EqE8BNBTCQFeNpAra4BrkI33dK88irbD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NCBTYWx0ZWRfX7QtMWjrDTs9A
 e1SIzyG3BLeLiRZ6ylldfE/GehrIikVRCuW3yWy0k0dkT+HprO35AGo7L34N2pjDSTOBt7EsgGA
 FC7n+S/0kigFnO1SmGUV0sEfC800eW0z684LFCWx9Jh4nNoTkY0CLZV7H4rMa3w09EYnO8NJ8yZ
 MEPUensQNIev/cMqOrIDZaBfO0tSk7IrDGd/QVRtvggkikjYTHYB6IY64VjdOrg5rEfrSsB/8D1
 BxrrPn6GIBET7a8Z5qtEEWbLlsc/ubLayLm+nNJxbfGPcfv8ZIjIiyWNqIx4M+cYHiCDEYdL2Iu
 Xil5ptk5SYvzlpMPCCdP5evfZP9ZYwTexW1Cml3sfLDImUum+HfSZd4lOJo7pPlGx1sGu+CQ9FW
 ipzkOhSEmdYtIbxOb+YqLRasGcbiFh1Hqd61CeisGwD6vG07YMoEMzJ1y080cN2NRBgmQgkQxd9
 HcXaf/i/lC1IgWiLqiQ==
X-Authority-Analysis: v=2.4 cv=CdMFJbrl c=1 sm=1 tr=0 ts=69a86ebe cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=-2Qx4yxcNGLJKJli3vsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: EqE8BNBTCQFeNpAra4BrkI33dK88irbD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040144
X-Rspamd-Queue-Id: DD246205535
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-271190-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add X1P42100 camera clock controller support and clock bindings
for camera QDSS debug clocks which are applicable for both
X1E80100 and X1P42100 platforms.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml | 1 +
 include/dt-bindings/clock/qcom,x1e80100-camcc.h                  | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
index 938a2f1ff3fca899b5708101df7f8aa07e943336..b28614186cc098268ab0d8c32b21d9dd9508c9f9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
@@ -23,6 +23,7 @@ properties:
   compatible:
     enum:
       - qcom,x1e80100-camcc
+      - qcom,x1p42100-camcc
 
   reg:
     maxItems: 1
diff --git a/include/dt-bindings/clock/qcom,x1e80100-camcc.h b/include/dt-bindings/clock/qcom,x1e80100-camcc.h
index d72fdfb06a7c716ed2ec376e061e4f0ca35f42c5..06c316022fb0d26ec6243b28477564d97f228c8e 100644
--- a/include/dt-bindings/clock/qcom,x1e80100-camcc.h
+++ b/include/dt-bindings/clock/qcom,x1e80100-camcc.h
@@ -115,6 +115,9 @@
 #define CAM_CC_SLEEP_CLK_SRC					105
 #define CAM_CC_SLOW_AHB_CLK_SRC					106
 #define CAM_CC_XO_CLK_SRC					107
+#define CAM_CC_QDSS_DEBUG_CLK					108
+#define CAM_CC_QDSS_DEBUG_CLK_SRC				109
+#define CAM_CC_QDSS_DEBUG_XO_CLK				110
 
 /* CAM_CC power domains */
 #define CAM_CC_BPS_GDSC						0

-- 
2.34.1


