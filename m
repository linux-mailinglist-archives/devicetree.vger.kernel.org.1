Return-Path: <devicetree+bounces-275180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKx/JFf+s2mWewAAu9opvQ
	(envelope-from <devicetree+bounces-275180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:08:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BB5282B70
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D3D04302F239
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2AC336EE7;
	Fri, 13 Mar 2026 12:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U46QA9vv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PQSVGDK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BE234D3BF
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403727; cv=none; b=mpqyHsnChJfgZsJtHuhLudbbXrMOZqpbB87x1Z8KY43ZBr66BIMfibafR70S4MOK25/IPMb7YA9+y4bAFZKulrwe+3WiY5njQe6DsUJAPh1w5U+oi7Y+/rRpxWHn/vzp/YQ8nduUpCsulA8rvVVFqABtQupG0jVb9jHjA3PDOH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403727; c=relaxed/simple;
	bh=AGI1qt+J+7Qs31p5UHAsEWA+8jjp8zQwwy82JnSF4qk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jL8U+MYyna3y0lePpYSXA1r5Y99HjEUD28enBsZDzMYvwwMiSvos3RoKMXp87WdT4xvkTn0j+AXpXYsCyg/AiRdlHTLWq2JJEpyHIDLKOimC+t72zGjxxFi5z5pVNEnDXpPjVriEpBAiAU9pjbwqsPkZJz16j+Xt4+sNvH6LcrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U46QA9vv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PQSVGDK1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oMi4792882
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RWK211jG41Q
	SnlsskvL2jGr76sZdiXtZyotsC2UXfIo=; b=U46QA9vvomxNe2DWJaNI6jnPKM9
	JeYasePFDnTZM3OmzT6sn83YA1ijbCj6WYXOlu6mlyC0K7tyMmbQerbwcnuO1kXa
	owuV8QEvl634Vz+YeuWSd+4Tl5IywPys4kJ3giCA56AvynkqurfqSv/p3NCXm4N+
	YONaIWMHZGyeU7Sj9NbBKjDqKNl5hEx9JSKjqpPBXmRoYRD7pAq9nfXBF8E4SXQt
	aaYHPVJ+3nawbjTNjw35bNx3NFieTpKVav0ndVI3YJkbPN+mZylhe503bW2SwxDP
	I1osSFq2huckyoHi+bI1aAhHX2LL4fq4JptJbMCH+UQuKEhXY+MzX+B5lrw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt12yd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:45 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35a0998a441so12508163a91.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773403725; x=1774008525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RWK211jG41QSnlsskvL2jGr76sZdiXtZyotsC2UXfIo=;
        b=PQSVGDK1cMKl2Z6PpWUMsAaV7i21UHofbYjN9Nm+749dREbXoheHziJDWUr0yLyrp5
         mCua+Tl7sVwYmFyzu8kb0MbRN5Z4EWm+KjQG9sgc9xW3rXou2/ZxebLv1bPuhNaCgsRY
         3rTltDKe/2LgOqHUp0+LUZiJWwwBEFUGnPE6byiLzGdWRWqSsbMcJa/DX9Em2GCIqQnz
         UY/RWwTybdP5rgWanoazhAdFEY0mCHArt0zLO1wNQoyQsrTMRCTnRbrgeSCbYjk8hTxi
         ON7mz7OV7hgjBNWanrukvxMCkBcYcRy5Kwf/Ewxe2G/RPowrZlLF4s1P7nRAXWrTO+D/
         +bxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773403725; x=1774008525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RWK211jG41QSnlsskvL2jGr76sZdiXtZyotsC2UXfIo=;
        b=IG6DImgwrPhevdpCpaM9pS6E4IAH4fQlDDV50/K/d2jKWjoovvDb7k6EyeG+RqFPTr
         EyyxJnsKbwGo3PpwDYGJ51c99wNdRdJpCEWPg4rkv7TMhxVKE98h5k7w0nYuegBLusHY
         hiCodSSaAB2hHbdWxUJqMepiMMt+oyGlEGbSixXvfLSjp0aLVV7jy8WBA0zULLJc5p6C
         /mqw6PCkIdlEGFhdZHwL3J086VV4LUK2Yg+AroxxOgJHGPw49MYnfCn20+o1VnY5fyQ3
         T2qug0nIY9+3E6rZolmk2EWvbJSfRtWzN8Ve8Yje0K1Zf4/YGkc0KlEgeffBkYctCfsT
         Pozw==
X-Forwarded-Encrypted: i=1; AJvYcCVlPo5U48iniPhDCJldFLTf9i9k/8k1rtj3LzTLu8/028bsL9oHt0l3tBomAfvWhl7RmClpSj9tb7jy@vger.kernel.org
X-Gm-Message-State: AOJu0YzV2otzNj5zQ4ZYnmvwFpSC8+Yfvtoez+5MXuZ81YyO387EgOAj
	zn0vSv36o4Yhu6JyOk5hozST4iGf6uOAwlSwdKOfSCBzGwJ5dpQORWSYuOqIhCLY8q6+uOomOPD
	iwfv18u09FphTLkjnEoteeuMrpE0zcYLROi2Ljplq/igHdQPUA+1CJkw9XAH3an75
X-Gm-Gg: ATEYQzx//zTZJxSAH2Gn2H1KIxq09XeUMHoAlHX7G8bVJ3orHmEr2WbHQcISLSFYIg1
	SsEJWjOppdilJmAkC7rNDwoiLg7bH4xaqfyN0054fifHd+xvHvumcMbcNkarzNMMuyostIGVXYd
	NyNaXgkzt6l7V2e/nZbFat2CoQ04reQNsAMROBsm3HWshW/HSOYBNHeufe8UCtzGETVJYIcK09t
	17f9gN1hYREns386racHGiZ/Cp1RH6zdvwnAxkHjUEdWxTZ8WgJQ6W2v92t6P6/5YUnfXFniOu9
	xWFjVwJFc0ZHpJ9SDOlAcgoURXDyQ7WaC++4Osz56DFJyVZTGLcZKhFXVpEnZnvcKNc55ENXDH4
	bP/5Io05ABqaIsIVL0IA8oiXHXwWfO1vCRT5SF/wc0Ht4JBI7Wv3Ak4G0ql2KGSuV6imh9s8nHG
	pq2Q29gDJT5vO5ZTRctAdmnppddrU2Fbgb+BAr
X-Received: by 2002:a17:90b:3b87:b0:359:9073:c368 with SMTP id 98e67ed59e1d1-35a22081e73mr2728829a91.28.1773403724792;
        Fri, 13 Mar 2026 05:08:44 -0700 (PDT)
X-Received: by 2002:a17:90b:3b87:b0:359:9073:c368 with SMTP id 98e67ed59e1d1-35a22081e73mr2728788a91.28.1773403724362;
        Fri, 13 Mar 2026 05:08:44 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e18f0asm8421945a91.1.2026.03.13.05.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 05:08:44 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org
Subject: [PATCH V5 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur ADSP
Date: Fri, 13 Mar 2026 17:38:10 +0530
Message-Id: <20260313120814.1312410-2-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
References: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b3fe4d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=iOP-JMljhTESenzhlaoA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: UL48TMgLQw9aNJBN0Fqo1nT6YAtd9klY
X-Proofpoint-ORIG-GUID: UL48TMgLQw9aNJBN0Fqo1nT6YAtd9klY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NiBTYWx0ZWRfXxqkmTxAFzqW7
 o3NTOj3kao7ugqmuaa5dqRgAnP/4nf55Z+YXNgWRYar5RuxkDtz46LZJgh9zo2ztjsYWflsBnt+
 p/OPwWjD2mfgQzceFQj+LqC9/Aa7BIHogMvRyLbHmF0vGw4ZpjbBjNfXXYNNdYT2cecIvVYtMLe
 JXnMwA+RA1G2Ag+5PSMQYtlMjFluxESp5R1/oriVd6U47rleZBpeqvcIXwQh7AunPA2YOK89bdr
 nBe1iyNdajTmoqUtnzWtZ2/8PmajhAgevPsZPSt3oMVyYHIkhs+rwZIBRTFQlgmWgT34F15X/NO
 eV5SC30WbmcQ5lXITEkvIGww0TCLX7K/4WU8QO0oPFfmKlCJ+Yz9zkCLMlv/8d7CSsGJvn/7PhY
 mjQWehDgYwiPhLj0YeZ8YRwoTkRqC4PLfHn8ThroSHQNzWRqSQakO6JespDaLdEnUbd8y0Vs/bz
 y2hcxYRI0RuoXJeXJRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130096
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275180-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 84BB5282B70
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document compatible for Qualcomm Glymur ADSP PAS which is compatible
with SM8750, which can fallback to SM8550 except for the one additional
interrupt ("shutdown-ack").

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index b117c82b057b..fb6e0b4f54e8 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,x1e80100-cdsp-pas
       - items:
           - enum:
+              - qcom,glymur-adsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
@@ -101,6 +102,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-adsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
-- 
2.34.1


