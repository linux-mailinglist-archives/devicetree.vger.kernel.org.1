Return-Path: <devicetree+bounces-271346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOUIAIsGqWlW0QAAu9opvQ
	(envelope-from <devicetree+bounces-271346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 05:28:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3CA20AC85
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 05:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 397473042995
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 04:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05326248861;
	Thu,  5 Mar 2026 04:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jYl8ffL7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HTKEEBza"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5E42AD16
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 04:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772684936; cv=none; b=INLc5Pv0l8mj6pwAKPxyuiOFAbY/sN2N/jUmIj3Qj3OT4OFbHMog++tvckC5KlNPV1lSjq1i0qISPT0+Fc1cu8EV9wopScyaVkp43dSZxY4aciW7jonwE2Gg3qdj0fUx2okCJSMBJt0H3AeK9Xh/WiLp7QT1puRewWJ6pO5GNfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772684936; c=relaxed/simple;
	bh=vLdj3B1jQPRgWbscBTiqCTeFKntrD1geF72D+7wghxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rC9MX2i+yqqbvBDl8URjR83/U9uHfQfP8FdaQMDlHx4E88VR8+bjsBOULQQsiYSjkSx6B6k49opP0I1AkWcNfwXNvWmgD1dDf6+Rqkt0Vt7NPhi61pFmeet9x7yrknCR8rTNZOIB3Qpew6JVU2j+5+kgKnEFllbH6/2OGWi3JyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jYl8ffL7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HTKEEBza; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6254KGkE1852944
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 04:28:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KWV4k21xN90qYzLHH1hU2Cz+AC1ZwZNUglGaqJt87Cc=; b=jYl8ffL7M/Rf/wRt
	eSJxq196IvSJocHYmexVJDQS0Ynlm6oKeUOE3oa2gDYyRvyjAAfh3kLNGY6G0VQu
	VqUpF/fgMoAaCpjHj4ZMMlP13DATnH15O47LkyKMwabATYDUQeTCPJgj9PYeNyAt
	lPOW87yiPVf/UcFzRYEjdyykwwoPoLolwzp2h4QGwzl+IsdvKBgnTWKhzKVWjjAz
	J5XBUvAiSZLA9x8EJgcEiGEQMWjuu6fMiqr3zGBt8QNhDCxUkdF1VAHXNB78fBO8
	PFH7RgzwEKEnLtN3Frb2nSMVgTSIj1sx6WBmgGJYzCEIejkAiNxRTA2I3ghuMp7v
	YoQtDw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq2q800n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 04:28:53 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae6dd98043so10281005ad.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 20:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772684933; x=1773289733; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KWV4k21xN90qYzLHH1hU2Cz+AC1ZwZNUglGaqJt87Cc=;
        b=HTKEEBzaPI4zXf1vjJuaRUOy9FSuPep0+hRv6frHuhnpHFGKg8xlJ2FEYQTt5rLToF
         Ub8VH/H2r6sQnZgtUdemRu66NipdbrBy5TDgt0wFXkI0xBiqMa/0pq6No1XOv0Qty3Ej
         uQD82m5oa6vaZN2UBXsPJ7NNgfA8nlJXA0Unub0NX41miK/NztGdWw0H+6aqKW6BtJVM
         3hcPaP3WzY5lmxp8oKveVGKbnBl6iHEbM9ESHFXyma6Ehb4poM+NWiPtKYQXDjuQ43ZN
         VqoB5KR+HB4PHvQcnaky3Op8NNRa2viR8OM8GugWGGmroyqkWsHuLCbPmedHuuDQ6TYM
         qe/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772684933; x=1773289733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KWV4k21xN90qYzLHH1hU2Cz+AC1ZwZNUglGaqJt87Cc=;
        b=Qbjs1TEYH3crXmz0sRMB4o45y6MVVmYQwlpIePlDo+6P0qO3YvzrKe1yUYp8NSiOZc
         v9IqDlxcdA+iJnsYLDTXfnlff09lOsIbPBA9k0fAy/j0hz085La8DLQztRJ1Uswv6wwl
         YabIA9hcLWbJftN5QDXM2JslFxQK1uE21am+iE76nFnGIMt5xxGGoELkD/eGAu/gOFMD
         ZBR//QSX0eZeF0bTrzUPxYKY5sVYwzYLv8H76ci/xrFJMr3onwmE3UVeYvXf7YXUnf1M
         rjZ9eFv1I0njJOhehyZVOsRmu/rC81ANHNlKtp2ASn9kbMyFaWR9p37d9BBkr/2jqqio
         RvoA==
X-Forwarded-Encrypted: i=1; AJvYcCW3MkXAI5UxpsW8HX9rkoixDg/Zpny/CawcX6xeIRSg/HkqauZUGISY2pWP32IBg3Al+F96wMcfoZ2N@vger.kernel.org
X-Gm-Message-State: AOJu0YzfW/c2y+oDF+uHrv5l3TdIJEsIYIaYUihHwc7OUdwfjsSZLeY7
	Asu9EZuVxN/xr44/3vqZFzMaykFcHqJan32Lc+d1+3L7Zbbde6R4cku82jJuX9nV1w0jKxuZRZ2
	f/ZmHqbQrBKgBA7ypDp7VRKsz7MOUP3uITlGyFb9swvrGQPD/OeVQm8IuGyJu0VZ7
X-Gm-Gg: ATEYQzwIpvv0Et47ZCLwEnFOG1QLnXkrD3JNpkChWA9NducG9pojwxAGnU2xwMXD6gc
	B1Ar60hdRAqt1RwJolSWAuksfV/+v98UMsqcfGIKD+siE+dPBhO5wMUUCJ473ZeH+D0ZKl9vOrx
	F+pTCqPnTkUPtGYbRR32TMVC5+dFgkwovTH1gWNPwGZWC40K8AVBJl0wtIbmuHvrYycgWL6IbZd
	20LVCHEV8QbaK+s/rvkqxSL8vl4hzH/J/hTds2K74aP2/bkMvfGUeehC2Pq9+utaFRSCxPGSixx
	oxdIt41oosMzk/IWdHX8gNFCep7Uh+GhJfjE6g9SHnZNk5h5Sv3pKNNGTd1rdCOvgUVzwO/Mfxk
	LJO6OSZBlK5fK7mJzUsWy4JxVxJsgZF71S5BTvxlgHwWhAyvUGOseocXV0SYtwMufAmFMAAFytw
	==
X-Received: by 2002:a05:7022:458d:b0:11d:c91e:3b58 with SMTP id a92af1059eb24-128b70e8da0mr1972616c88.39.1772684933051;
        Wed, 04 Mar 2026 20:28:53 -0800 (PST)
X-Received: by 2002:a05:7022:458d:b0:11d:c91e:3b58 with SMTP id a92af1059eb24-128b70e8da0mr1972588c88.39.1772684932496;
        Wed, 04 Mar 2026 20:28:52 -0800 (PST)
Received: from hu-djaggi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1279cbd1993sm11164942c88.2.2026.03.04.20.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 20:28:52 -0800 (PST)
From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 20:28:28 -0800
Subject: [PATCH v5 1/3] dt-bindings: arm: qcom: add SA8255p Ride board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-b4-scmi-upstream-v5-1-f8fc763d8da0@oss.qualcomm.com>
References: <20260304-b4-scmi-upstream-v5-0-f8fc763d8da0@oss.qualcomm.com>
In-Reply-To: <20260304-b4-scmi-upstream-v5-0-f8fc763d8da0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>,
        Nikunj Kela <quic_nkela@quicinc.com>,
        Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772684930; l=915;
 i=deepti.jaggi@oss.qualcomm.com; s=20250501; h=from:subject:message-id;
 bh=QnmqT25GQywckMFAOnXMqflitvwpMCh13NozaygAWDg=;
 b=0MhrqyySyIfhWud/TzANKUFu12zMDYNKYrEwwMQmSZw34wm8hJyp3YChQyZ5E2+bBncgipKuE
 AZi3jLUUgi2CD01Kj0EXulaITNk6UXt85NHaNpF3HpswauppasTC4eG
X-Developer-Key: i=deepti.jaggi@oss.qualcomm.com; a=ed25519;
 pk=+b3H5UC/u0pUK5+btJ+35nW+6vKwJV1CfjJ1CJWuOZw=
X-Proofpoint-GUID: jCjAZfkSsA0mZHw4PJOdTbPpbvrae6Mq
X-Proofpoint-ORIG-GUID: jCjAZfkSsA0mZHw4PJOdTbPpbvrae6Mq
X-Authority-Analysis: v=2.4 cv=GecaXAXL c=1 sm=1 tr=0 ts=69a90685 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=wDsz3shVdOXW4ZV74lIA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDAzMSBTYWx0ZWRfX1iz7rWI0ChfK
 7wtHGsWcGNfVWvEPiH5Dv6Dq/FTl3pX3StV8R7FzCnZfQqtuIws1Q4Su7kvviTE87s/tifwvLuq
 PGCoaHWo2QFhQ4vo0vmEuuuWPNX8gAEzjNSKFwfc2XrGyoq8DVPEWu1FZztUP86xFIIaKHuXTJg
 0SGG6K5pKx/+LoB2UarjYTfqOJAauvBpxUaKSm41t6ju2mkvAxknd03wQCvScEa/v8juxrX8H4K
 Y3mcb95T7J+W8mfGyrgU4QafKpL4P7z0WYtXQPEwTybNVR83dez4oCA6ckbwEpZ1z0KucqxsPZl
 2Nj81werIljf7nISzV7B2COLZ33ta9mBhevyyhVnODquhnsOYdJoUa+G4QQCk+WeacwcTVwz4sw
 mcMEjA91CiJajidy5Tm65/CR3T2MJWp5acW4zydOpq2wh/xSP6dwCuD5b88qzwMylHV2VT0UqXi
 H8355cK5kGU8OUNB34Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050031
X-Rspamd-Queue-Id: 6C3CA20AC85
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-271346-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deepti.jaggi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Nikunj Kela <quic_nkela@quicinc.com>

Document the SA8255p SoC and its reference board: sa8255p-ride.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..f9a04769e20b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -891,6 +891,11 @@ properties:
               - qcom,sa8155p-adp
           - const: qcom,sa8155p
 
+      - items:
+          - enum:
+              - qcom,sa8255p-ride
+          - const: qcom,sa8255p
+
       - items:
           - enum:
               - qcom,sa8295p-adp

-- 
2.43.0


