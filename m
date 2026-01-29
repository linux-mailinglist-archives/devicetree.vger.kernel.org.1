Return-Path: <devicetree+bounces-260746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMhvEzn+emmHAQIAu9opvQ
	(envelope-from <devicetree+bounces-260746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:29:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD85AC378
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:29:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8774302D966
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386F617BCA;
	Thu, 29 Jan 2026 06:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dmfflDGz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hHvd0mzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AE0378D8E
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769668128; cv=none; b=nOACYblnfsUV3epaNxfJHCTlkFzXlNmjYHjUDQX61sPnd7RQCglOxmnXDe1GKlCvFv13ipdY4ep+NkfhS2ejFpAZCCWwmnDbm5oVJXbn7EFq1jk/jYOi9+rCZ5Xadpuy5lArAKDdBLvXqtt0yF2cUwDmEpu+PxRRMld0/k4j99s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769668128; c=relaxed/simple;
	bh=o5lLsWt3mICtdLm2+yGfKd61T6gO3OFVH8wDJZs1HNc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Vwph4VJL9Nz3d6Fo+3PCqrf4ZaT8W0gqF2cs02Bewot+GNp5e/nXUD9RG138V21K4y2KTRZuWIJ/OS5a8qN4PydHBgdau1Hv2fR8yfWD9o4pEVhYvmHsfK+FpUXsu6aDkr+qgt5DnkIfry3V6BByTGqRSc05nTEvIBLMLHfFjeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dmfflDGz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hHvd0mzD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2olBJ2583306
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=d4AzBH6pR9N
	V0nVbaYE32uD84Y19t+AhC5+VO4bqmUM=; b=dmfflDGz2xBF+BNocDH/WMakdD5
	rRzmys1YoE1x29HoKcW2RbvPFmLLQ9m8DLYods+Bf3q5a2W3XEktxaPJ4NRMkyh1
	KO58XaRAO7ak/eh/9ZWAot/4ApdN+qDfx+2ZIKZ5XLDGaPwE+F2nbNuNkKHSWLbL
	FodS+0W1JpHpNvIiwFAo6YbMlGU3DIsbIUmb2Ta0I58omoLFfj1/iiQRfnrE4ZS1
	dKqX0YUQ2F+Cf8+HbGP4d0m4xZ5tn49Mmk/QlQBJDUuAiS8dcRcrWbsluADoJpZX
	seayhrKtMsSA4d8IiitXpoLDDrwGOVhI66WVVmUJ5/GZzhovGcZOy1WcZUA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bype8t8cy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:46 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c6e05af6fso529227a91.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769668125; x=1770272925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4AzBH6pR9NV0nVbaYE32uD84Y19t+AhC5+VO4bqmUM=;
        b=hHvd0mzDZD2MUsSY/WGjcbyskrPSvfmGGF4wh0aXd0R/UNwG57Uhh+69zyAx21xVbr
         b1ZFABHxbQpV641KXIQQMS4tlgvUrZyqQ3Fu7AYYrDKWMNNJjACU9+BJ0o4J/ucQMuuM
         1vcO1luANEb0oq69ugYDu5/ur6cghbmipAAnDQUzbwFdQgLH1ghMsTZFRTiyoEXhrbJj
         mecUhPaVWzWwgmb5KpjuHVOLYnqpSTY7gq9T4OcJ2f0MZdpHVAc2GjrbFkkSeEtF6vE7
         pSiAO3Ur7dFAkf3kUuDKx0654RdT0k660dzjNWl/bXLWMYLvO7M+s9qN3eYlsfFzGBZu
         6Q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769668125; x=1770272925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d4AzBH6pR9NV0nVbaYE32uD84Y19t+AhC5+VO4bqmUM=;
        b=R0GUBf/HgQYRRktmTkVdy/qnBgcggbjdxtmiUU+hxRvyEGAPkChHcowFPgSZ1iO1c+
         quOmyzVdPgdB2fNBxqOFA3PdCGGh9brvNY1PWcJArB70SayviBbLn9Z3XBuNAOswOZ2s
         2kM1vEWnF7ar/vDdADiwK1k4UdakcUE/z0/sObeuAuCYuCaXsRm/WkaOgShSweDDGveP
         C+eXs3UL/Cs+XnJO/hVmWNlMo9gPbGn4A2xuDYcedjTYXCO/bcRHMa1jOY58wOnHiN2y
         xiNBL/jeuh5i33Hm5SEpMUFcfhqkxoJaG0OtoLhGrLjInwShNaDV0dnOxZ+BYuBQA1+d
         tHpA==
X-Forwarded-Encrypted: i=1; AJvYcCXq/UQ6RlVbBdU2O6dn+/T8SDkSLcF8+lsBOs7Bz8CptIjN1eiEdzzWHrjfzWuL5aEtsheBQRrT25Uq@vger.kernel.org
X-Gm-Message-State: AOJu0YzDKK9oqvRDnkx0U76X4+znb1bmQ1IAuslOseI3eRtg3swTiWXD
	u1gi91dJLX8l8279n2IEIvQX2xCF+JVXfmguk26tbxSEyDPb0Nz0FpCjpZPaajc03AB6VtXx9wU
	CNgGJdP4lUgCOUTQSN4lJDGfkWDM5WSVvzbb5atoj72XMMY7ZgiBHYYIKaUtj5tUH
X-Gm-Gg: AZuq6aLIjbN7dFDbHiP+wd4l7ikUtzistbZGqGnRMj9Fb0nx82+ktz/suxpYe5WrXVv
	ZsDl4nKTRqNV4nL98dyoo6qMddXo1mgdL1Bx4KcodjySg7Ct6ung275DEa+Jk2MQofR5kkwxtfe
	AdSWuvjxZQ5xZCXmK9HiF5oAtotzYbr6a5P4vcs+L0mcE1bOnimYiftO+jEe1Ft6J11eIzCNKYI
	01cJ+Gd6WukHm9MeAIebyOa4mTrLTy/2C0qei02ex9hHrLMgV2tWPzZk3g8Gf+Ur+xIopNAaHCn
	pSvHXgh+xGx217C8CmEz9VBl8NJN9acxxgyeqPI1XBpuH37jIhgULiez31O/lbrqBkBiBKBymKJ
	va3eAMhoLL5LE6qcx8Sx1sqdrgj555enDCiq/2JpIAd6gsckLaYzGHf3u/o1ASij6R2L3E80Xng
	e2VJbqhlr7i5Ikyq9quuXEmKegLsNSBCMNKjqEBmI=
X-Received: by 2002:a17:90b:3c11:b0:341:8491:472a with SMTP id 98e67ed59e1d1-353feccaa21mr7322385a91.4.1769668125403;
        Wed, 28 Jan 2026 22:28:45 -0800 (PST)
X-Received: by 2002:a17:90b:3c11:b0:341:8491:472a with SMTP id 98e67ed59e1d1-353feccaa21mr7322363a91.4.1769668124971;
        Wed, 28 Jan 2026 22:28:44 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f612917csm7215943a91.8.2026.01.28.22.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 22:28:44 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v3 3/4] dt-bindings: arm: qcom: Add IPQ9574 AL02-c7 eMMC variant
Date: Thu, 29 Jan 2026 11:58:24 +0530
Message-Id: <20260129062825.666457-4-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: MLr2sWZB4k5QrLYPAngOeMxXxWUcVRF5
X-Authority-Analysis: v=2.4 cv=C5fkCAP+ c=1 sm=1 tr=0 ts=697afe1e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=okxJcUns-7FWwRFb3XIA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAzOCBTYWx0ZWRfXwVFLHztrEDqA
 x5BIQGilXGyLvAr0dIKmFIoOjVTyBV4IXu1yftQ299J7fZHC60UtAKp9Yz458jicPLJpad1ZBbX
 wZvTzqGQ92mGT/hNO0gi15mwqVmx9aY06PTUhD2HHyyB9rZ+GXW4/L3QAUpp93lXCkqKQbu/Gw8
 vP14i89EfMtwwRas09wfZFHQm2Zcaqv64QI4rrF/VMJxP+apxf604CoNnThKElgXFu4e1irYvCy
 qBDzeo51VP/3ifI0snlNcOteJjwb/u8GE/uYokS8IP0jE2GAVC2MqzoqG92CpKbODvQna2d5PFI
 TBzhv5Ovpmrz04TEqx9cP/LnkT8bt73L/+x/xqIdpp3ArANvwH7IiSnInimmWXr9QjbyIdm/Ow/
 6mWu8McKECQMku9G0c5kQuN0aryfRW3n94Rjc9ErmXi0xMu7uiZzqc+SKFR4ttCx9RUtIv+SBf7
 YONyodt7X9DmG/GEc9Q==
X-Proofpoint-GUID: MLr2sWZB4k5QrLYPAngOeMxXxWUcVRF5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290038
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260746-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DDD85AC378
X-Rspamd-Action: no action

Document the IPQ9574 AL02-c7 eMMC variant.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v3: No changes

v2: Update dt-bindings to include the new variant
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..28f9a6a166a6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -323,6 +323,7 @@ properties:
               - qcom,ipq9574-ap-al02-c2
               - qcom,ipq9574-ap-al02-c6
               - qcom,ipq9574-ap-al02-c7
+              - qcom,ipq9574-ap-al02-c7-emmc
               - qcom,ipq9574-ap-al02-c8
               - qcom,ipq9574-ap-al02-c9
           - const: qcom,ipq9574
-- 
2.34.1


