Return-Path: <devicetree+bounces-271189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEcZFPduqGkkugAAu9opvQ
	(envelope-from <devicetree+bounces-271189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:42:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F0A2054F1
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:42:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E47F330557E6
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965C83C6A44;
	Wed,  4 Mar 2026 17:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="luKaWUWh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O829FvDa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D35636BCD6
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646073; cv=none; b=B81vGL0P/oBwkAB6DZ5FiRCceaV/spkuitTG9vrkqpVP+4NrBE8lrIKmr1v3JxTzb1OG3l8yEVPfYHfG3vILVCUlGFLG4MANL6y3uUkaDzwAK35EYKj5hQtGdDYc0CqQig1TnQtMeEjH1BZmIxgTOYJk3RngCJezPGv2Cb3tRjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646073; c=relaxed/simple;
	bh=uUwW2grMvbuKbrp4lZXb+6CHyoUfsWs1k8/5kB5T9KA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EIuOzQJkApLRHnID5ndmXKfGro3CQvWtGuCexoiomAwWQVfS3JqbbdrYDBQzbyP0Ygw5N+fsd0eEBHya4ow03DGTUrkaJ8bJcwORI2YvLQxWLO4PTBDu23IUTBC4OIONf+H/U2plfI8Q3hBxnrFAGxHzP9crJtbGLRJLnR41axc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=luKaWUWh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O829FvDa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624D9dto1203324
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 17:41:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ObmbS+0KfF6TnR3YkY2rdDy7IdpeKXphqea8ZIt6Bdw=; b=luKaWUWh7pfluL5u
	LKsTbMbXiyo0wriu9u1Hj929+X94bUst1cEZpZ21sjVgacwxK5Ty48VdUTmv4dkn
	hBh+bTwyShxnWeQ0Zm4zwFdfwSqPX+PCtKW7PIQL4Xbkt1ReOg0f0G8aDqzwaPfz
	gfmlhQbDtHF3QsTOgSg+U21MGB3fUXgTuT7GEdXxL1C+PzhmZbCMB5WPvDkuGCvC
	q3jsCI0IFo6bty5rUILuvYK9n9Iqs5Tmud1gxlwMPIXcE3s1xhIxvU9emBkbj2HJ
	TU4agJvWODRwogR7G32F/Qqwe7KE384XWl5/qLwyjW8ph2gokokqo1mLW66+y/3d
	On20AA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpf9c27p7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 17:41:11 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35979a03106so4339392a91.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772646071; x=1773250871; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ObmbS+0KfF6TnR3YkY2rdDy7IdpeKXphqea8ZIt6Bdw=;
        b=O829FvDayuDm4mUe9faec0uIETgReGgM57QRWNu57PF/YSYvuSP9NDu/FgpHYp7Yqx
         N0zaXqd1TAXYxq3ye+jqiW0k0g9v5CNAYfGZYS9Yf/3ic/rZidxg1GVfTBsGOJDq22kF
         shMmJV+qDQmL2NPyDWXuWkXo9dZJByEZr5pT7+Uec7FUZvzQvqbMSIYxcdPnFe2fwQkS
         pjybtIQJzOL4EpAdpmQb64zyDRkQOga6LMw9bdirpP42sCeHkigRZXTE0TXwm8tg9o6X
         izIp8Wtx7/93pNH3e52PeL86ppmmNBJv6R6vkY1cSlZcnwNEQzDRuM0KxhfPXMshaqqY
         +dUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772646071; x=1773250871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ObmbS+0KfF6TnR3YkY2rdDy7IdpeKXphqea8ZIt6Bdw=;
        b=Ksl37lxIxDCQopFBZYi6qvucIJ40gPZkFZHkIKckExjrCPLyl7J2PnsMCU2qFIOG+y
         qmaN2YCT4U8tUf57YLIWdD2tlJ8CVoQ2wZpmhuuZd3rrrvhxqBy4EFcqJIyX9WuTJN3h
         yYCuJxfj9LIqF4HZ3icimZbAYVK/v4KqtCHmZ4AsmUGX9YVWxSIV+8RuA3Z2ICAEnHPN
         mhBCN84ZkDkaWyFqnHshEJlgj8kF6ppRGbOxBy/vabgkRWvufXJ/GravwuwpU8f+kud1
         QOvPUBUzCmn22P9js46mMiyj11nbEVPcpCfAPnEDIthS+BHX7A4FcEnnUYhQX+pfcgc3
         dyAA==
X-Forwarded-Encrypted: i=1; AJvYcCWWrsv5fhFVp6yJxlnlNGx7v5XLX2Mm2gOIz7yRmcRLvT4fU3C3wNyt1YltZXBMfLN6fQYSPMlcdzdQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxmgdLlyoppJwAkwyssKOu1ab8sbr2snGArJvm4GiudLYE7zda5
	a5JwlTq9BVcdixbntgSroLvzAufG69dYp7TIq8k27+nxt7naQGVhy4NN0K20fY4cA1j16V50cvh
	FOTV6znjuKe5DfQUDMGdLrDFw02w/0lLI6tADXJvpXLa5Id8eNmqNZLCNOJLow7ZrGBB4p+Cw
X-Gm-Gg: ATEYQzzwWjWSwf7OalSVhAGX3f9h2O991DR/8RdeYKhBSxCF2fiUpZkV9nVucU4/HkQ
	ASJ48feTNJf+fnLC5tRTKTiqYaibf8LZ/iakiHGofAI9UPR42v/WqlP0Ji2FxOWjeZN7m8xnHB9
	uaob1Tix2jzg/ZMbwDpfilVsOt7sZabL0vNu9hx+laR7zLZkhfRtO9zx+hPuQjdblKMKbXG56oG
	Izzth8Q+7STqRxd34DZOGEsgyHlf8vTMVfbMpUvmGp91k43eEK/9qOQ77Ve5/K7IBOk+dc1y6/i
	ht6xlz4uFpp8TksrnVUGAUkHr5SIkDSRP8sAqo0nqm94E/OWC8IsMUExhVZDJuUDp1AlMKsK5y3
	YRn0pc9ImfySrHmh6JBMIY1NkzvI0OlIprYKcrulkQpMEYkdXO916
X-Received: by 2002:a05:6a21:6e97:b0:394:a0f8:f7d0 with SMTP id adf61e73a8af0-3982df066c1mr2888731637.26.1772646071048;
        Wed, 04 Mar 2026 09:41:11 -0800 (PST)
X-Received: by 2002:a05:6a21:6e97:b0:394:a0f8:f7d0 with SMTP id adf61e73a8af0-3982df066c1mr2888691637.26.1772646070595;
        Wed, 04 Mar 2026 09:41:10 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa5ea0dcsm16608794a12.3.2026.03.04.09.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:41:10 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:10:51 +0530
Subject: [PATCH v2 1/7] dt-bindings: clock: qcom: Add X1P42100 video clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-purwa-videocc-camcc-v2-1-dbbd2d258bd6@oss.qualcomm.com>
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
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NCBTYWx0ZWRfX+8NRCYaocT1h
 6lBrWbZzdLQsZ9qkwDtDCTlkxadLS3QUsks0C/AKK/weAOpkXXsVIKB8y38FtgXRHr74cZ2/yI3
 e4THK2cZ4maHbZ6Bbwj9h0GMCmMq45R1WbUWEfRlu0/5lG6nUELYP6aBy7o0+nUlPPIpzKAqF08
 veegEbv0zpNhPLKIme1V19TH7EOoBoSd0kaIJ8QhNOrsbgAvtIlw2dNYzA+wvL7gza4EjN2B8vJ
 3OVaD+zS6JzotUXGS3pb4L499BeNQeCJV0BN9UHtsgkThiPjUCYbCczCUy2pKJ37fWFVkGNt0h/
 KvzaONxOlPFAlOPMueBOQY+1gekgUqWnwBuY28fwbwc4P5onyhsqVCgxJcqfi445HwQm2XDAK1w
 qxoA60hWAAXBLzGRDk58iZCeVGJV2NbEAOKDr3nLmIvazq48OKOx+kcGdyZleuLDH7o7SGBDjIe
 DJkjb+xjuzcmSJX94yQ==
X-Proofpoint-GUID: HKne6Z5tMryXSlt0anxn6aq7cNTXo_c-
X-Authority-Analysis: v=2.4 cv=S4LUAYsP c=1 sm=1 tr=0 ts=69a86eb7 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=RxPbs3uwKBDMNohP2qgA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: HKne6Z5tMryXSlt0anxn6aq7cNTXo_c-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040144
X-Rspamd-Queue-Id: A4F0A2054F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-271189-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

X1P42100 video clock controller has most clocks same as SM8650,
but it also has few additional clocks and resets. Extend the
SM8650 video clock controller bindings to include these additional
clocks and resets for X1P42100 platform.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml | 2 ++
 include/dt-bindings/clock/qcom,sm8650-videocc.h                  | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index e6beebd6a36ee1ce213a816f60df8a76fa5c44d6..e8bf3fcad3fabc4f3b7e8e692c6c634d1aed9605 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,sm8650-videocc
       - qcom,sm8750-videocc
       - qcom,x1e80100-videocc
+      - qcom,x1p42100-videocc
 
   clocks:
     items:
@@ -67,6 +68,7 @@ allOf:
               - qcom,sm8450-videocc
               - qcom,sm8550-videocc
               - qcom,sm8750-videocc
+              - qcom,x1p42100-videocc
     then:
       required:
         - required-opps
diff --git a/include/dt-bindings/clock/qcom,sm8650-videocc.h b/include/dt-bindings/clock/qcom,sm8650-videocc.h
index 4e3c2d87280fb9a37cbc52330e31b0710ab63144..ba2d231e9dc8718bdcc07f994577cf68413dc273 100644
--- a/include/dt-bindings/clock/qcom,sm8650-videocc.h
+++ b/include/dt-bindings/clock/qcom,sm8650-videocc.h
@@ -16,8 +16,14 @@
 #define VIDEO_CC_MVS1_SHIFT_CLK					14
 #define VIDEO_CC_MVS1C_SHIFT_CLK				15
 #define VIDEO_CC_XO_CLK_SRC					16
+/* X1P42100 introduces below new clocks compared to SM8650 */
+#define VIDEO_CC_MVS0_BSE_CLK					17
+#define VIDEO_CC_MVS0_BSE_CLK_SRC				18
+#define VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC			19
 
 /* VIDEO_CC resets */
 #define VIDEO_CC_XO_CLK_ARES					7
+/* X1P42100 introduces below new reset compared to SM8650 */
+#define VIDEO_CC_MVS0_BSE_BCR					8
 
 #endif

-- 
2.34.1


