Return-Path: <devicetree+bounces-221895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC722BA3E84
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:32:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2F576232F9
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A1A2FB0B1;
	Fri, 26 Sep 2025 13:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="migAbhzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86B42F9C3E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893465; cv=none; b=Mcc0u81vHMU0yTZaGUCM6gpd+2ygrR1MTfBWPkwH8GYz4Su9Rt4W42oJiGTJeE9IBUWDbTjAgeYkCzAa7npbXZFQUl8N2WWEB33XIHRpchN/Rmyv7j2P5zPGXddAclAev6qG0Jt+X8p/66ngV/KUOBWZtNQtolmQjXVHxWln5uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893465; c=relaxed/simple;
	bh=EDxK0JAECJqknU7nyBNM/XjceytGlGUL11eBwTOLESE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=glN/0jkqkp4zRxofkR5MouN/E+9j+VP5Smv/HX6AVzZSjQNagUmgrOS9omY21158ZwlF0E+tllvRHijGkh14OIuwNYEHLYFn+Xj+mJBlmE9BS7e/Ot96ytnZHivFUxEIB72YbnwA68A1Oiw3T7iUUM3fz68+cn0wQsIO9JKK7mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=migAbhzW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q9k3fp025866
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:31:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dzJS/eOWAno
	Hpfft1/dBeRGBEhv7bksVWKJ4cITaZw8=; b=migAbhzWL8v+PgJ74M+ufkydUdS
	9n18zmVFuE/FC7LRNpBMccL6mJAKwAybZ5hDDQWte7ypvyvNYcUyB6beadrejWaY
	rR9dGUlpS4JvYl3MxAwkSH97mhh+6BIihQKyZSVZBQ5lMYzsK6u/moyL62hsc9pd
	EYzVA03srswTmqFZSaUWvMMEksf/2p2FJQhEgAdqDdADeTskKN0hcZm3/5JRnTvA
	lHROQLA0kjZZpitvydMlZyscK3tGu40+0QzYRFp385FZRidbVDNQ9Tr+y8cEFBut
	U57viTYbWXTwHmCcVYMfwolorvxg6jySaT0T7CPGKom+9ax3GGMBCXrpaNg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49drfwgkxk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:31:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-78104c8c8ddso1719299b3a.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:31:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758893462; x=1759498262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzJS/eOWAnoHpfft1/dBeRGBEhv7bksVWKJ4cITaZw8=;
        b=erySxx4mLSUu2bX25dFwvX93Dn6gN1LA0IDRDH2oza0DeQrlxcDEeJPLWq05XWTb7w
         NLPikM7cjPndxK6/bdoHFFetIDFB5vk6f/IOyLMBqi14wrMqJmQtkl8vu+N/S9CC5JkX
         JywTTiSkY/ea27KGJfrt5V5Rr7N4LyceZwWNHQc4r3eNwGYMmgcnVNvN/S8MpVNZiMrd
         p2OcaAFg0IHUSMEGnAYu6QpaAJ0Z9BxRAMGhTp8mJBilVvz7XKT0+I1wZrxK2xdOcXAv
         6k5X6TdVtx+pFkx8O5a+fn7pB+1rjLxPvu/SsCe0/Urh4IIN7WtZLhzmK3p59n6FgeZj
         vVKg==
X-Forwarded-Encrypted: i=1; AJvYcCUiKuM5OgWo5IydUfB0sqEihFWQQNSSsz6qvN+jcvrXOETvQDzaopElMmDsf0KewK0sWbL2/H+PtZPS@vger.kernel.org
X-Gm-Message-State: AOJu0YwmTaU7eLpmORBcannx+1rOeVonKLsCCUUwW615VsBC5ipNYUxi
	DxdRVAz/GiFQryJwk2cOSZ8t/DxrGadOxPynraHTxxRqTRX82eLUyOlokn1kD0cmBhtnssuAJMO
	fJ5EqdSFmvmQIzSJw5xVYjy0FJS2ux9BBAULa25itIKiEmx8cBzjroD8ioiHnrYGE
X-Gm-Gg: ASbGncvF0aygxqTgSCX+4kyf+U+KTJ8kHlOQQOVc0cumHuhom8F2w0PfdmLFF8T/tbt
	zXxNHKz/+e4qPMP1Ao867R3AfyhOgwI9cX3xNetMKqGcD/9AsqNZK9G16pIzPQYqxTf4o/H93bE
	bYQmfJFA9iHrFg31bvgs8SQs6Gl2rQwsrtLD9Z6BnyjasFMlpkto9PoBNIATBFlgj1eAY9KK11M
	zDUzzIyxSvOVV61lowv84eAelLHcJHMtUkWKFhK28pQO9hlytGtsqrJ6rT/p2KT9SsjNtjxCLwj
	Ji0JeRxNXHqneExtCX4cDwip7fjlbZ9ltzuJTU3F//0M0ngLdlsVgjMbEbkUxrb2LdiZj86z07d
	/
X-Received: by 2002:a05:6a00:1408:b0:77f:6971:c590 with SMTP id d2e1a72fcca58-780fceb49eemr7690273b3a.22.1758893462037;
        Fri, 26 Sep 2025 06:31:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLeHddy/mn17tTANaaPlDdZJPY7hKHUQGRRzCDSBlp3I0nv2etth7ZbqEJFM0oH9ZNV1jfRA==
X-Received: by 2002:a05:6a00:1408:b0:77f:6971:c590 with SMTP id d2e1a72fcca58-780fceb49eemr7690219b3a.22.1758893461423;
        Fri, 26 Sep 2025 06:31:01 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238d321sm4504174b3a.17.2025.09.26.06.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:31:01 -0700 (PDT)
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
Subject: [PATCH v5 6/6] dt-bindings: can: mcp251xfd: add gpio-controller property
Date: Fri, 26 Sep 2025 19:00:18 +0530
Message-Id: <20250926133018.3071446-7-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: BbSLMyzXPf074FHrfCYEaBwtNQakFGZC
X-Authority-Analysis: v=2.4 cv=JKA2csKb c=1 sm=1 tr=0 ts=68d69597 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ubk9sFcynENsk3o0iIUA:9 a=OpyuDcXvxspvyRM73sMx:22 a=uSNRK0Bqq4PXrUp6LDpb:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: BbSLMyzXPf074FHrfCYEaBwtNQakFGZC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDA4OSBTYWx0ZWRfX5FDz9kkEtfvL
 sz9+TLVzh45ETFMZNgJCvW+g4Eq8G7u2sQWpu4qOgz4yDtk36wLju5ZQglm7I3nF6fPKVQ+bODr
 wBUqgoS+vq3j1fycA2op1vKk6qNl4y6TTrblnBkRoJVSGo2NjJ7nmC0DwcihJylJbefF8WBI8Id
 mWspfQTKWVHo0LHO5lqLjPJ+diTC++FCO2AuKc+0sehyIgvsZXs+/HC4hIPsB2RUUm4u1j3XGVI
 olkpu5E0Szj/M7aoKjfV3Rhm/tIWLt8Jqk02O/YrR3Nrf/CRYUCsymDvWiXpmI6SDiG/Y2IxnjA
 AcB9/NhLOTxpg8k45dGK4qdz65lQ7lRQCeZX0NdIt7CZAtNSnWpjPbwDl3YI/BiBrqhnQq5Tndi
 hJWFgM907Cua9fIiGbfIM2wQUJkfsQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509260089

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


