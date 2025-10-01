Return-Path: <devicetree+bounces-222964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF4ABAFCE2
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DEB33B78D2
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B452DC338;
	Wed,  1 Oct 2025 09:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mBqrnrN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF0F2D97B4
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309855; cv=none; b=c1ssoCChncXNmrPqVN7UTOlj/wtMLMp0sl7GXJk4bpdYNy125GbYUqJoq9QU8uS1uVOJNaIUxEqPSgtV4T1BusnxuBlrkeAcbCkkleCV9w3HIfmcMnZY8Sd4L2rfXhuEmtdLKjz2yUmEjYPPA21b6Rg06z+p8305TspkwH/Tew8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309855; c=relaxed/simple;
	bh=EDxK0JAECJqknU7nyBNM/XjceytGlGUL11eBwTOLESE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UXGuANMwjfJ6a1BDAKlBoM11l9MdWWZfhFnMy+jsOkrySPwFoPRzuiueH7IEDZMc20IhV7lJkvRfDrirnTqdpEnPQEl9WIWao0SHDtkmG+ADCFEopYI6jrO2ZiqSughl8taVUVHRFHD2NvtJAM6Mr+lPgBaIcSRZTIvavCmVVyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mBqrnrN/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5918sNlR009650
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:10:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dzJS/eOWAno
	Hpfft1/dBeRGBEhv7bksVWKJ4cITaZw8=; b=mBqrnrN/7cpp9QY5SYGITKEOWKj
	xRApfzEUxwU2oApr0HAAGWj6y6VPoep49b3OthJW6Z70cndLpj2t6eQ/7wnsMvSk
	9ntvar4d6AIWcf2A897rp69IhDTNFzjnVLyGh0BsR8rZKc3MOkA7t6Fh2hqeUbgy
	ikBeMOEUTDSWaMUIWZVNSJJsJwrEm+qZQbwIAIJMhxIH8h30sgCwPx9VjsCu4DS0
	m9VO2oEXMfYLYnnHRDmrfUMsfkqRcRd/jyU95ibpKbMXqSx0nOIfa2lbgRU7ZXrK
	7Eh4epIjK6tx3SBzDr8vbPbcVBVXucjQ5a2NIvlMDyII3UCkqQV5FwQmG7A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e977us6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:10:52 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-286a252bfbfso79680695ad.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:10:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309852; x=1759914652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzJS/eOWAnoHpfft1/dBeRGBEhv7bksVWKJ4cITaZw8=;
        b=NoKq95OZ7zGkRJJJJgKR+tr0EttlCb/E3+4USODXdsf4Wp+xHnWgizcp7xLpLBixhz
         8g0vvQ479rIlaBjolhNQOwfwpRmyptHLw8ffoewZjclCi2uZo3kk9h5lNnwrYn89LAHC
         dzW0EsKwrxcDsOPVAvuL8XMvNGlU1ly8ufJhqY+QfknoV5SocOP1HXxsLYqqvxkQQAeb
         gVRjKpahgZBADGSlwlzsddmFbEc0tl74+l57svWNbm1NRbP+r5mw6i00JoaOnLfy0MMT
         es+PcfYaZXylN+waojdc2Ez4mW7lkauqV5guhXcCV//sT1I2XNQ2UDqIRuizvh0dKZnG
         RgPA==
X-Forwarded-Encrypted: i=1; AJvYcCVRlIe187VCAm1f8gt0yeKHn2hwBj5hJSSU03iH+JffEiAZO0DTycO7g3vrdADaYvokzzrenuifTrKc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5MnWCZ/T/HZGDx56MoCuVPhmS+Xcw7OYLHHOY5O9Tomzp5DcV
	gjen/swkI3T3RfkDmoEiVVrCTTmdC107dxV+YIIEEKDbm4oTyOnJCBPysKhlyRL9/0NVO8Y18XA
	s3eHTc1H3TvILzhtkLW77pV3YanXNDJS95u+6nlXK5tBE43kboNnRPab8/FdMn5O9xLWzJNRk
X-Gm-Gg: ASbGnctP3nDtllm33SFQq9RQmg6WxwC4CjUpGfAF0/SDyMwxRTiGuiw9SrRciqIj0LP
	IGhTMa7U5pxp0w+tRZONhDQjUm4pHTm0RNXMua0dsXkuSAFWCGcBWqGSgSHJ21fJIFKMhDSiM5+
	+IDNU0XD+W6Nl9b8/xjnCqVN05ZWdcoJZYfLlRR9A2uslJtNl9eB/7DwTMjnnNucyOIwsAazbEw
	DG/3MDDiaRK27blzewlyM8HWW164zHSKqLQrU/nEsf1NI4MwAhjD+PiXegGBU2Udex4TwaFJyim
	aEvc4euM8cxot0eKlEzu0Ydjb7jBKExYXpZDdT5ewGOtfJoLlA253OVstZr9aIvmJGEQyVz7IsR
	6I61+OQ==
X-Received: by 2002:a17:903:3201:b0:281:613:8449 with SMTP id d9443c01a7336-28e7f44200amr34870905ad.47.1759309851683;
        Wed, 01 Oct 2025 02:10:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKedvdV1/ItaIACYKHnY4KYhs298v4BEWXXcoD9/zsLksqKknUQgVmOswuXLjmaqAn+lkDdw==
X-Received: by 2002:a17:903:3201:b0:281:613:8449 with SMTP id d9443c01a7336-28e7f44200amr34870505ad.47.1759309851282;
        Wed, 01 Oct 2025 02:10:51 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6ea09ebsm1859315a91.2.2025.10.01.02.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 02:10:50 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v6 6/6] dt-bindings: can: mcp251xfd: add gpio-controller property
Date: Wed,  1 Oct 2025 14:40:06 +0530
Message-Id: <20251001091006.4003841-7-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com>
References: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: K_WbJvzhkKvVzcLwT6UcRy5RrhnLeKC2
X-Proofpoint-ORIG-GUID: K_WbJvzhkKvVzcLwT6UcRy5RrhnLeKC2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfX4Jo164nH2rlQ
 pTmcoIOzUuZ0UJJtdGDV667QDDTOr18CgOykpvPf0Kmew4OQlAa6d90gHQ1hEyqO1PzYH7dAdg4
 cPDBaARnPyBHM4NK20Fm2HTEDTdEWFeXcZB6KWUBds3KaZx/q0HA8nMOZJ68cmECtvYLsy7qV8o
 y3MJuez8QOEFTj0oXJdWqQzvkf4Wi6XhsG4uZVmFA70ftleGfaBxwimJddpG30JrhqSxZnajNQF
 gHs1RRcWfo5Du8PwnhmHz8a/HqiZCh39DU18946Nywc0t5p6bCK/TKLgWitqLeX+kFBU/HhCStK
 avYifq/OfgY3+WGEr0lfx7fFcrR5niTl5BKaXHw/o56DEOGcCdrpEoe25v2nBMbPPtd7YmnZjED
 2p47WU/+Mcnge9hypQ0k32ZAux0SIg==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68dcf01c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=8f9FM25-AAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ubk9sFcynENsk3o0iIUA:9 a=324X-CrmTo6CU4MGRt3R:22 a=uSNRK0Bqq4PXrUp6LDpb:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043

From: Gregor Herburger <gregor.herburger@ew.tq-group.com>

The mcp251xfd has two pins that can be used as gpio. Add gpio-controller
property to binding description.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 .../devicetree/bindings/net/can/microchip,mcp251xfd.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml b/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
index c155c9c6db39..2d13638ebc6a 100644
--- a/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
@@ -49,6 +49,11 @@ properties:
       Must be half or less of "clocks" frequency.
     maximum: 20000000
 
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
 required:
   - compatible
   - reg
-- 
2.34.1


