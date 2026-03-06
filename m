Return-Path: <devicetree+bounces-272037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOUmN5vCqmmgWwEAu9opvQ
	(envelope-from <devicetree+bounces-272037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:03:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF542200B3
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4227305DD79
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D5238B7DE;
	Fri,  6 Mar 2026 12:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SIE/DtyJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TmJMXYO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14059389115
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798597; cv=none; b=f1t9OsHrB6fZ9gwW/SYmye75bE/evgPEnDlniaFMBId68V+8GGYjDr8Qzl+CNK/OBFAQgR2JnR+l3dm9qm1xXqpn6phc7Q3umfb9DOnhduU/8ppj2trgE/QpIaxU8XPRnTozWf1l5GSY6CJLbb0wW03MRVcYRfy7epiZVp3S270=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798597; c=relaxed/simple;
	bh=R0jFuuZdPS0sifezfjilCuX7M0aH1Jd7S98dyqdVw18=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YLMXkkWe5P3/hdwkWGTFOeHrC2ddQUpbPMi6o6mQbKfKpNKPfZjrtlq7MTr3SGGSdeIWCcdYuJQqLWEjI3ES+MT2niFJVRPj5b5+Ra4yGjM7M6ufSlHFjleWDt8H6tOEllA4sh943bY9IGyfynNtpJr08YDsppxWCTdAK6wVXqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SIE/DtyJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TmJMXYO+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbJc74151054
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jmnnPDr71J3g3mUQ8U6lmyvKVcSxSv7O7KDZ57/T+h0=; b=SIE/DtyJNnBF87NF
	y2mhPFJ0sz3qHNH5dbwIcYYhfm6gM26psSlM5lQZ90RvhU0jaDHv0XcdfBNE9O1j
	wbQVvn1btocl2SlThtXL4zIYfeet0M5nXA2jo+eL2DTt8vMv6wwn+LRdL8vEeha0
	av3/GLdR9S4sh4x45UGGvvzOdiA+qzxa6b6nPQx+0ut7mR3QfBHop6zdwuoMOi7s
	YbGGZGPSt5v+97XkihgbOFpY+INvbINq+GPzLWcN41O31Yj8bvWCkSCQ9sM2uLAv
	AdsTL9decQAwUe0tS3r/LkSpoCtJv1lnseKMEWE4FK/QDIXxrbWUIaXcYmslS75+
	/7UVmw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25u2ht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:03:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3ad1b81aso1496938585a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772798594; x=1773403394; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jmnnPDr71J3g3mUQ8U6lmyvKVcSxSv7O7KDZ57/T+h0=;
        b=TmJMXYO++4+2EPkagqxvC7HftsZv//DSYT1s0EtRgXIRHWYpn1iJNRN6IYVRRDsLEg
         z8FwS/AvLCK2St5SyWozsvSgsck2i3STThj6b/PblSx1ASc+BQp/W1kIXvC0KKMoU4iG
         KS+WSHX0b4G+zeFUd/G61SQi3IbbsBlmz6zoBYXwpA7iCfRDEeAUzC2OplzP8MQFdCOH
         8PUAXRoHkRqIrrksKOa/a4U3lWYrMFVs/KG89z8lwnE6n1PEuPojL0W02tCyAYWbshZ0
         XfrlFqqnJGQPUaan9p+Ees19eWvEmmNYCBD2J0YJFRXsw77SzNVP1miTtWxQ4NKS8V07
         YsfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798594; x=1773403394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jmnnPDr71J3g3mUQ8U6lmyvKVcSxSv7O7KDZ57/T+h0=;
        b=raYFMk4YhBW0Cn9Cn2LIKXaG+0yVvgKwluISn69DRUF+rerBe+M6CeGlxtUnjaTpqa
         Il9MKJOtccnE6FeetBz+DhA9/Os9c3HZO4iw6VYNjzP74om+dYyCfc9o87Iq8Plhbcan
         JvRdi9styEqo9aL5QRkRHrmYcjgeYxiseQv+whmg3wN5NuZXn7O8+GTsIhfP+LdkAISA
         6YXdkZAJSxQ9Zb4WrSAnpqfpEkaXI3mUPJT6212Q6y1Ly9d4aAaCcq/F/vlgr5OVqK51
         WHvTgY3f2MHjlPhGN4qz9RJEJntMbX9lJ0WEb/uiVCBGFCsgmUu97elFkHPgRXk8YWTB
         prww==
X-Forwarded-Encrypted: i=1; AJvYcCVI0hkfVyb6jfU7rWB9pmdxYYCoDpOzr3uFEs54NhGIuqi/l/44bWIe9a6iBtCwlGhsYm1eSXwjCnuo@vger.kernel.org
X-Gm-Message-State: AOJu0YyJlA2NEElTy8ShN7AGTiIowCQt51pMY2vuBXpdpLv+hfi33qjM
	ERlqRHQMHIUezuWEpGYryHpLLttEXPY99XUyX2sBSHS7NSVE2or6Ej1EbEc/7/65QX0Feh3wYs6
	WA14LINiN8vguAnyBPmoOYdklP9ge/ReC6KTYRM+tPdM1sQasv/lIGR1cYytX6gKc
X-Gm-Gg: ATEYQzw3HyL+NUvmMkRgq8AMwHodQZDERYRylVY1qRNVh/KvxqR3XuLBwwyEVgyPOKI
	lGK/hfC6U7oR091f6ttzTPevOgxCTtjIwL5RDzHHAx2UAis+rjMsx9YpruqEImn5JSKb1zL1dEn
	47PH6f34aU1+ZpjCQpM18FnZEGv1MPbpb8o89rzKPGGv0QIWxXoYApYiVV6hAbEZdgSj1jCQ8o/
	WF4lXxvtJEV0QokXSJmZk1gHkOYUY6WynX9s4szmk3dMK4Aq6FEW6RmfLPUUrK9g5Q6Pk46vDEV
	ZpZt7jEzcwrm/e9DiN5q8XOBsMQWs2gPiuzw20ATwMRAPkD9E16r57erhNubbMSdhGInbjCKJiQ
	BdbCajLCNaVkTQyDLIBrD9rAf2m4wqN9Ftu8Qi5+rPDrh
X-Received: by 2002:a05:620a:408e:b0:8c7:1986:6b3e with SMTP id af79cd13be357-8cd6d43d7a3mr207983785a.32.1772798594085;
        Fri, 06 Mar 2026 04:03:14 -0800 (PST)
X-Received: by 2002:a05:620a:408e:b0:8c7:1986:6b3e with SMTP id af79cd13be357-8cd6d43d7a3mr207979285a.32.1772798593460;
        Fri, 06 Mar 2026 04:03:13 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad1cb7csm3410129f8f.0.2026.03.06.04.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:03:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 13:02:56 +0100
Subject: [PATCH 3/5] dt-bindings: display: panel: Drop redundant properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-dt-bindings-display-panel-clean-v1-3-3086eda1efaf@oss.qualcomm.com>
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
In-Reply-To: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
To: Artur Weber <aweber.kernel@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dzmitry Sankouski <dsankouski@gmail.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=15271;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=R0jFuuZdPS0sifezfjilCuX7M0aH1Jd7S98dyqdVw18=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqsJ0L9ijHYaNEoOrgayrLoxsMVMkmbToOLkAQ
 GqBF2RRwCmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaarCdAAKCRDBN2bmhouD
 11jvD/9/6QGm9LPxB9Yefdh4yAUPRINdbgMjnMNi82Pzw4iv0I5fIrbleMt/z33YnYCpXH1VEkl
 2jaJbVFZlKsBZtKxzfi0myBIcplf9z2y/EmclV6LGoUbp5v4gF8/Oe+Awhf+1cVo0ClXGf6jOVt
 Q41+wGXBwU9No7TBAwM2oAyIc0g/smM4YAg56ytk4RXftvhvtvMnO4Xianok7URZ8CQJ87BUUOr
 OJG8t9MH/3d15hy5VkfByXuhvxiwR28TvGVQ34LrFbBTsTBUp1toTx4knfrXSNPDr4XY48Nl9kq
 tGej4R8ZJHu1f6VxK+gCmMZOO20gxPvzRE1kPwqnECzvFqLLtQ66E5zSpJlL5n+9UOpvL1gyXUJ
 ZJ9WpnphRHa7eHbu6XIV6XKgygzDb+TqAFG5PRZbjB5uP9IzFovKU2Oq5/rajPW3ue6VkhwLMxp
 uD9euDFtONT2fXwqQVxwnGiyPJ/UfoCgwcpxWAquFDVYKcJv1UDb674LWHpoWvTt52L//OMzTRi
 VOCTkWCzcSEUtMKBF6uYjC3pNbpQUf3SfiVZ5z6DQCU1B2gQEf7AAv7KE6LyfcBBJKV+KwUyd/u
 gDpNMQXz+fvzph8J3EbP+v8MVQX9JnY5mTtEE7kAqKZ6irLXXcuJx45FkNj9jPKBjLQBObWKRhS
 8YWkT30+GS3LYeQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: 22733OW-hNjW0JcYiwcL3EwshGWAIx-8
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aac283 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=kLiRhUVQMKUv7f3OtQIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNSBTYWx0ZWRfX4+QdkLSjDvRl
 hHtmL4f9xIKGb7Uw5XmY+yjrrdFMBgj1Pe30BNDhoSeATPTOrb3PND5/aeHOcVylVJA12HmPBZp
 jQKs2xDnVJeZdOmSO3XdmxZYD0AlkXU7DQnauu/7gtcLQffChyMoZmx70JMv62HzC1KFhIuddkX
 VIO1uHo8wxpEGVbeW7+T8H+Fl9sW9CPAnCszFqjScnLGE7Egmqr9YtqBMOGNGf7pByaQCwlWmTm
 XyennnKszEBOcw0nf41Ml/OwESUgS7ORm+nQ4P6u3t9C14qLYOqqdubwiDLJ2jCaULEk4zYq5TO
 gqJyCK7VqSDQVQGAmwBXBcn0SyAGfSLKqkW/inmByG3EU4OkDd6etc6VAwDF/eiC8bXl7G9EG0f
 SFvJFWj/K9CdWUrbnX92Stux7yFR7ACmWRHjYQOrV5usPst4Zu38Zs22v3RqGOK+ys0bOvQDer0
 Tt4C6LoyYEqN7AILY3w==
X-Proofpoint-GUID: 22733OW-hNjW0JcYiwcL3EwshGWAIx-8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060115
X-Rspamd-Queue-Id: 8DF542200B3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272037-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The purpose of common schemas, like panel-common.yaml, is to list
applicable properties.  It can list common ABI, e.g. "label" property,
and pure hardware related properties like power supply or GPIOs.  In the
second case it means that all panels have these supplies or GPIOs.
This is the only meaning when hardware property is allowed in common
schema, because bindings are precise and we do not define common schemas
for "possible" hardware configurations.

Following this, all panel bindings which reference common schema and use
"unevaluatedProperties: false" do not need to list these common parts.

Simplify such bindings to also reduce copy-paste code and review time
for new contributions.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml | 5 -----
 Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml | 2 --
 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml | 4 ----
 Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml | 3 ---
 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml | 2 --
 .../devicetree/bindings/display/panel/innolux,ej030na.yaml          | 5 -----
 .../devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml | 5 -----
 .../devicetree/bindings/display/panel/lgphilips,lb035q02.yaml       | 4 ----
 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml | 4 ----
 .../devicetree/bindings/display/panel/novatek,nt36523.yaml          | 3 ---
 .../devicetree/bindings/display/panel/novatek,nt36672a.yaml         | 3 ---
 .../devicetree/bindings/display/panel/raydium,rm692e5.yaml          | 2 --
 Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml | 4 ----
 .../devicetree/bindings/display/panel/samsung,lms380kf01.yaml       | 6 ------
 .../devicetree/bindings/display/panel/samsung,lms397kf04.yaml       | 6 ------
 .../devicetree/bindings/display/panel/samsung,s6d27a1.yaml          | 6 ------
 .../devicetree/bindings/display/panel/samsung,s6e3ha8.yaml          | 4 ----
 .../devicetree/bindings/display/panel/samsung,s6e63m0.yaml          | 2 --
 .../devicetree/bindings/display/panel/sitronix,st7701.yaml          | 6 ------
 .../devicetree/bindings/display/panel/sitronix,st7789v.yaml         | 6 ------
 Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml | 4 ----
 Documentation/devicetree/bindings/display/panel/tpo,td.yaml         | 5 -----
 22 files changed, 91 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml b/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml
index 0aa2d3fbadaa..72cbb9ee5eae 100644
--- a/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml
@@ -20,11 +20,6 @@ properties:
   reg:
     maxItems: 1
 
-  backlight: true
-  port: true
-  power-supply: true
-  reset-gpios: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
index 56bcd152f43c..2c60d0cd704e 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
@@ -33,8 +33,6 @@ properties:
   vsp-supply:
     description: Negative source voltage rail
 
-  port: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
index ef5a2240b684..cc80d0e90f1a 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
@@ -34,10 +34,6 @@ properties:
     maxItems: 1
     description: Display data/command selection (D/CX)
 
-  backlight: true
-  reset-gpios: true
-  rotation: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
index 4bdc33d12306..c97bfd0f2ebc 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
@@ -29,9 +29,6 @@ properties:
   reg:
     maxItems: 1
 
-  reset-gpios: true
-  port: true
-
   vcc-supply:
     description: Core voltage supply
 
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
index 5f41758c96d5..3cada0f82951 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -40,8 +40,6 @@ properties:
   spi-max-frequency:
     const: 10000000
 
-  port: true
-
   vci-supply:
     description: Analog voltage supply (2.5 .. 3.3V)
 
diff --git a/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml b/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml
index c7df9a7f6589..59cc7edb22bb 100644
--- a/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml
+++ b/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml
@@ -20,11 +20,6 @@ properties:
   reg:
     maxItems: 1
 
-  backlight: true
-  port: true
-  power-supply: true
-  reset-gpios: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
index d86c916f7b55..fe7ad266e1b0 100644
--- a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
+++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
@@ -20,11 +20,6 @@ properties:
   reg:
     maxItems: 1
 
-  backlight: true
-  port: true
-  power-supply: true
-  reset-gpios: true
-
   spi-3wire: true
 
 required:
diff --git a/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml b/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
index 3de17fd8513b..3c8c65c6a869 100644
--- a/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
@@ -20,10 +20,6 @@ properties:
   reg:
     maxItems: 1
 
-  label: true
-  enable-gpios: true
-  port: true
-
   spi-cpha: true
   spi-cpol: true
 
diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
index 1cffe4d6d498..eb9eeba92359 100644
--- a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
+++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
@@ -24,10 +24,6 @@ properties:
   reg:
     maxItems: 1
 
-  label: true
-  port: true
-  reset-gpios: true
-
   spi-max-frequency:
     maximum: 10000000
 
diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
index c4bae4f77085..b9300a1f2646 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
@@ -37,9 +37,6 @@ properties:
   vddio-supply:
     description: regulator that supplies the I/O voltage
 
-  rotation: true
-  backlight: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
index 800a2f0a4dad..5d16d8511725 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
@@ -47,9 +47,6 @@ properties:
   vddneg-supply:
     description: phandle of the negative boost supply regulator
 
-  port: true
-  backlight: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml b/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml
index 7ad223f98253..616a5f3ec9fc 100644
--- a/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml
+++ b/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml
@@ -34,8 +34,6 @@ properties:
   vddio-supply:
     description: I/O voltage rail
 
-  port: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml
index bc92b16c95b9..2e64fba472cc 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml
@@ -20,10 +20,6 @@ properties:
   reg:
     maxItems: 1
 
-  display-timings: true
-  port: true
-  reset-gpios: true
-
   vdd3-supply:
     description: core voltage supply
 
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
index 74c2a617c2ff..828b7d7ba17f 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
@@ -31,8 +31,6 @@ properties:
       configuration.
     maxItems: 1
 
-  reset-gpios: true
-
   vci-supply:
     description: regulator that supplies the VCI analog voltage
       usually around 3.0 V
@@ -41,8 +39,6 @@ properties:
     description: regulator that supplies the VCCIO voltage usually
       around 1.8 V
 
-  backlight: true
-
   spi-cpha: true
 
   spi-cpol: true
@@ -50,8 +46,6 @@ properties:
   spi-max-frequency:
     maximum: 1200000
 
-  port: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
index 4cecf502a150..c04d47e59f24 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
@@ -23,8 +23,6 @@ properties:
   reg:
     maxItems: 1
 
-  reset-gpios: true
-
   vci-supply:
     description: regulator that supplies the VCI analog voltage
       usually around 3.0 V
@@ -33,8 +31,6 @@ properties:
     description: regulator that supplies the VCCIO voltage usually
       around 1.8 V
 
-  backlight: true
-
   spi-cpha: true
 
   spi-cpol: true
@@ -44,8 +40,6 @@ properties:
       maximum 300 ns minimum cycle which gives around 3 MHz max frequency
     maximum: 3000000
 
-  port: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
index d74904164719..0d57f97e8a76 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
@@ -30,8 +30,6 @@ properties:
       configuration.
     maxItems: 1
 
-  reset-gpios: true
-
   vci-supply:
     description: regulator that supplies the VCI analog voltage
       usually around 3.0 V
@@ -40,8 +38,6 @@ properties:
     description: regulator that supplies the VCCIO voltage usually
       around 1.8 V
 
-  backlight: true
-
   spi-cpha: true
 
   spi-cpol: true
@@ -49,8 +45,6 @@ properties:
   spi-max-frequency:
     maximum: 1200000
 
-  port: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e3ha8.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e3ha8.yaml
index 05a78429aaea..00ce5a4e1c6b 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e3ha8.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e3ha8.yaml
@@ -22,10 +22,6 @@ properties:
   reg:
     maxItems: 1
 
-  reset-gpios: true
-
-  port: true
-
   vdd3-supply:
     description: VDD regulator
 
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
index c47e2a1a30e5..b65f0688bdf0 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
@@ -21,8 +21,6 @@ properties:
   reg:
     maxItems: 1
 
-  reset-gpios: true
-  port: true
   default-brightness: true
   max-brightness: true
 
diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
index 1e434240ea3f..044b84d8638d 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
@@ -49,12 +49,6 @@ properties:
       If not set, the controller is in 3-line SPI mode.
       Disallowed for DSI.
 
-  port: true
-  reset-gpios: true
-  rotation: true
-
-  backlight: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
index c35d4f2ab9a4..e4fa05163d2d 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
@@ -24,12 +24,6 @@ properties:
   reg:
     maxItems: 1
 
-  reset-gpios: true
-  power-supply: true
-  backlight: true
-  port: true
-  rotation: true
-
   spi-cpha: true
   spi-cpol: true
 
diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
index 5a8260224b74..12e5ad504001 100644
--- a/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
@@ -20,10 +20,6 @@ properties:
   reg:
     maxItems: 1
 
-  label: true
-  reset-gpios: true
-  port: true
-
 required:
   - compatible
   - port
diff --git a/Documentation/devicetree/bindings/display/panel/tpo,td.yaml b/Documentation/devicetree/bindings/display/panel/tpo,td.yaml
index 7edd29df4bbb..855911588d73 100644
--- a/Documentation/devicetree/bindings/display/panel/tpo,td.yaml
+++ b/Documentation/devicetree/bindings/display/panel/tpo,td.yaml
@@ -25,11 +25,6 @@ properties:
   reg:
     maxItems: 1
 
-  label: true
-  reset-gpios: true
-  backlight: true
-  port: true
-
   spi-cpha: true
   spi-cpol: true
 

-- 
2.51.0


