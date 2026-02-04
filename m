Return-Path: <devicetree+bounces-262476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMpEJJmtgmliYAMAu9opvQ
	(envelope-from <devicetree+bounces-262476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:23:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B7CE0CA4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3C7930DC310
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D4A2BFC85;
	Wed,  4 Feb 2026 02:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ezdFaQHz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UviWiqUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE44E2BE621
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770171762; cv=none; b=lSlhtgVa/2hm1RGVfVQCy1zNon3KEu/oATY9u+nnNNqBsFLRaNH8HrVLHaZqODKiDzo5pgqeombDkl8m5zIOfrVJgDwMjso/8yIM8sXDVNtERjVkPCbOrKGm642vvWputlvt6kiR8A45Ma426eYPUzFsMOOWx6pUCKVWIyuSkiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770171762; c=relaxed/simple;
	bh=irlBiV/b/NP192hRJFCI1r2sets1NLWq70bQwhzWFM4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RHGSo6gk9WIrsmFaa8YLd6/x3pqlFwCbBtz4FJsoSYDmRtD/f8YMVgWRdbNOUzUl8mUgYdl9+DTCBP6em9NQA2+xm7iiAm26wBOPnJhqO/LuEFVSewFAxhj8NENmbyundmFqzB4dxrFn2B9FaSjOv8idN0Lnm/07zWiAgz9Gyco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ezdFaQHz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UviWiqUP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613LK0kF3515394
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ICNqpcLxE033zAPt4Nj4jDjSx1/KBRtm8fVHSukZhYA=; b=ezdFaQHzZu/J54JZ
	AtO+Ge1+KB+PiTFCvkvzD/ZPRIVYYOkPjY3Vghl3thrKz9aRci4cQjpPCofUpXbA
	w7R/aVxa+PHvNWQ7UbIMIQu893HCFzl8GiGh3LnqxeRCCyo/IsPQXAHP41cdU2zd
	H8QZ/SdUjukYrDRr0gGX60njb/fO1mbL8JaSCLR0+A6xD9/oPmJhmWH8Rt1xPZZv
	DqfnPIjGnET4khabf4ztlyA3zcY0lEXGyMj4Nv5MigWrZAyf05BBRnGtLu+upMNf
	opaHCS5tke62SQNSlmSWAHOEBNANzqmPLyF4sKTa49E+cU6CnW23bYYa/szeG5oJ
	bdl50Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ru98sp4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:22:39 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so5730026b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770171759; x=1770776559; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICNqpcLxE033zAPt4Nj4jDjSx1/KBRtm8fVHSukZhYA=;
        b=UviWiqUPUAS0yD0Qw3rw4OacsACv2eOhcNyFa51IK4Ci4k0s+RBYKiK8M9vTK5eeAR
         4P82uYlAIkrY+vF1qzaOOj8xhBrz1y7+YmlJi6HqE8CCyr7J2MRm3g1WZlOXlKqa/P+m
         HP40zJsTCzyelHFL9gDUivjTCOr2ct23VcHCfOofHFSyamg5t4fDR22pBikiVaafpfw9
         54no0nzqGn2QvLRuE8pKvfU4l8AH15N5ePcpQX4o1ulG/vCzEO6pSqfzJRYAed1qkUSz
         S5OKl2EI/2vodyYxQaKrz89EjM+d4PfGnKT7VMw0kWTIVIuLt2H6NKRWlJvtGbjxlgfs
         J+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770171759; x=1770776559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ICNqpcLxE033zAPt4Nj4jDjSx1/KBRtm8fVHSukZhYA=;
        b=SIcehXpdvbQ+muPt5sbYUJP9ZtO47WbHu9rSRI+tCAu84z6DixdhInPvzbitt70K2K
         HxHWFYHiQzasS7UuFsOSz0roxrpzn7/0llQBwLw/eLjPWewXSGobR5foQpn+mlf+q8TC
         UUgeDSq4juHzYaBajbO+0Yj6244amAY5R5EJ9ZXlWbYWHONt57xuQwHGsCa69I8zzpEk
         G7RNif7ZaHHmSjP21XEtq3MVbtP4OiLMmIooHv2FpZsxRGLXkbPV4gaHTQtByb7Zb3hv
         Q64wLb5CaxpXvD3tY6myDN8hTlBujkHkX4W/uIMW7u/TxzJNBWbknNn9zzXPtlUmS6kN
         zxmw==
X-Forwarded-Encrypted: i=1; AJvYcCXCKE/R03gffgLo8xi3bH15NOeGfe5dXBxoFH7Egq0RLPRS1opZexhv0+NvtWPwsroh4zFdjNRAqP3q@vger.kernel.org
X-Gm-Message-State: AOJu0YwOO5OcrjQWTrFojntglBypNJCY5e21Qviqo23hIyfibegunBJ5
	2tianeD37M1bdCMnwvMl6qmn6tW+soqYQkzOXb+Qcit/+pERqNRA4rj6TqpJE0YpNK7GQKHk8tn
	wwXll5Fru/AbY+TQy33sV9dNtRWLVupG3PqRIsSW/4HfdhOYMfo+hFoDeYkH2QL0e
X-Gm-Gg: AZuq6aI/gMe2uiEmRTVQPkskiJ1fPAxmT2B7HIOoExlmKs3e+PJiL7LIxFUr83S+Ex7
	4F1gbu/NSzn4uraqcD+jciIkYkFbdvn1mr3RUq4fcTpxkRfw5fXXrhbeZauysQd8GMzXiOW1h/l
	GCwpLP2cIiIjhIZsgrEy3PhW23DInXV3JXcCfEVxSh7GM9BEepcHSjWow95DhScaQwEIHzfSuya
	ON5lvueH+x8j1VYg1NcNcVhGpOTwCTyfstf+2WIf2n8WI5grSIIFYcF4u7B/CUpDgNOJZMnLSyf
	qAuzbznR38ljezhoZKBjnvDHaC/+qYXkmGSItuc0g+O1UZ62o5oDNmpkL6MpccoeeJlebjh2G6x
	k68UZPpSvuynGFENzyH5ucOmOTmCLN8YQVWjHGVubrSoTks1ZdwA8IzDHcph0MWS9+EP3ztK3
X-Received: by 2002:a05:6a00:2d28:b0:823:cbb:a484 with SMTP id d2e1a72fcca58-8241c19e012mr1390759b3a.14.1770171759385;
        Tue, 03 Feb 2026 18:22:39 -0800 (PST)
X-Received: by 2002:a05:6a00:2d28:b0:823:cbb:a484 with SMTP id d2e1a72fcca58-8241c19e012mr1390727b3a.14.1770171758853;
        Tue, 03 Feb 2026 18:22:38 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d4a5c28sm695598b3a.62.2026.02.03.18.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:22:38 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Wed, 04 Feb 2026 10:22:01 +0800
Subject: [PATCH v3 1/3] dt-binding: document QCOM platforms for CTCU device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-enable-ctcu-and-etr-v3-1-0bb95c590ae1@oss.qualcomm.com>
References: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
In-Reply-To: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770171750; l=950;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=irlBiV/b/NP192hRJFCI1r2sets1NLWq70bQwhzWFM4=;
 b=NnwtZjOYQ5gMG56D+5VzvPMXMLVJhfLLL/ORanfhkH66weP50084KFgINw0IwgawYLxYTFH2J
 Kz03pVraxeLCKnDwN3OpzD6dh8ouEooAbRNgFEyndtESHCXLnFbpz2y
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxNCBTYWx0ZWRfX84pKRyctdeRu
 bN7VkLWcSmvAP2BG1eue6PYA3frC1dRCHKKLEZkZJQ2nrHyUeXlqX1NVBcm1O5KZuVBGuGQAehU
 9cvObyAEeEU9N7P1MepOmCZjs1k5oLtxcCcr1sKJoGwhFFXG1b6neOrP88+eQQCKPGbFsylygSa
 CkCpl4EA/pJFsWsnhJalsWCRZanjuZYwDxsTvPYtGRHmL+PpGuTSR7eFtFnRAj3F0F+fG7NEgrF
 zGZUTzZ54tdQY3KkG3sf4iiIw2KbsiplHQKU7DuxyEDZBqWU/kwN1Q0XMFj7do+556CQZhCWBW0
 raEOGQFhOUwqrtlhEJoGCl8a6vsUPa1dW2X+03ZswolLRy3W4G096p1ksz9wShdpdyhBeZMpeV1
 /+1zUMKn5uQFS+GSmtbsX2f5PJQOy1owLfO55wzjMcdKQoPESr4+8zvYSRnZpDFZrwfPy4n4hOP
 hP9BBp/gOSptrYmw9Gg==
X-Authority-Analysis: v=2.4 cv=IJoPywvG c=1 sm=1 tr=0 ts=6982ad70 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=K-gU5Sf5JpjFIvSPVLUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: n7-F0c6p-UYRqsGl7cGFTN2FTgb1dwfG
X-Proofpoint-ORIG-GUID: n7-F0c6p-UYRqsGl7cGFTN2FTgb1dwfG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040014
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262476-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 03B7CE0CA4
X-Rspamd-Action: no action

Document the platforms that fallback to using the qcom,sa8775p-ctcu
compatible for probing.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index e002f87361ad..f3f3feac4ce2 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -29,7 +29,11 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,glymur-ctcu
+              - qcom,kaanapali-ctcu
               - qcom,qcs8300-ctcu
+              - qcom,sm8750-ctcu
+              - qcom,x1e80100-ctcu
           - const: qcom,sa8775p-ctcu
       - enum:
           - qcom,sa8775p-ctcu

-- 
2.34.1


