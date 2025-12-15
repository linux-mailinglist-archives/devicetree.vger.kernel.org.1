Return-Path: <devicetree+bounces-246481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D5DCBD1F1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CBAC30167B8
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA17E32C94A;
	Mon, 15 Dec 2025 09:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kaYs8M+c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WJDh9wRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B1332C33B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789657; cv=none; b=gI9V8i3x98DApAf/w2uidrBGKHvwvTZCJeMpbrZJvuZ47ePFLQcgc+atB0o4Gns4Pvke2uu4K2kXtGSaZUZIq/mD1G5+GyesVUrGVmUtcy6i2NMHy76AKdcdibokAI4OK9AY5vmfIBreysrLvkXPkvrHKSQ6TlFAk6vRDncL6uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789657; c=relaxed/simple;
	bh=PQu0wItBZrUuS/K1W/yh+H8uckkQdIBZbL7HMrihDHY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JN8jyTFj/cEFMvPQ2xKx1O8Xc0offAZwiRVv8ilQEMYvvlnLjttQszaoga9Up1R5k67uvOjioT5Fy6yG31nTcZS80fTQFnTniYwTqfUksnkqEtysdtTkat4H1WeLBiDisn4UOEQhBzSk/wX6uZZcZqD2zZPMEmYpowYBW8EUNuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kaYs8M+c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WJDh9wRz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BF94FNU2884898
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:07:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BsoJakIjxjZ0DCaogMC7NG1jegf2J7ave9kJyPQ5Zx4=; b=kaYs8M+cKUCTwQgH
	tWWpwE3LoGK6IS9ABT9B9IJs3z3Ah7/2SPiF9hOp5d/b2wgbrlnJ7vwyctJLB21G
	hDz4JWtFJOQvDV22udwB1ie37nvF+oUfE0TYn4tPcb2QIXi1jBEMK+1Lj5Rzcqsn
	Qs5qeYYNq436vSzJAldiWMuYWicBlfKzm3DYMagEMFHLyiumjTcXI2YTl4SDObsX
	sEYM+6klvTaYUE0BCd6rhGgLDAKLfUHzQcF/VhB5CvLiUa24VQhjLCB+bngzreyw
	gtyDFZiXNaQvOozpvzaENxklwYSliMuG0UERamUQZNKKPhXuyAF4bUlWRQVa/5SH
	6GZm/w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119t3vr3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:07:35 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so3334557a12.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765789655; x=1766394455; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BsoJakIjxjZ0DCaogMC7NG1jegf2J7ave9kJyPQ5Zx4=;
        b=WJDh9wRz0iW0RKISadgz3Gdy0mvFS40IqTTJSkr99O+WU3MYUsWl0y/smxxjoF4Imp
         NcJU/vSAMnovTJKvaH2JTz0uwQrUKQA/WNMCib3pyliesB2TAQ+FC1lz7NfvQao9qMNJ
         yNukSgWzKm9QzPjpR0U48SHLo+6ga5nGJkBt/dIT4bKZirlYuXEN3IUsOSyDalpiX4u5
         AqdOer4D3XKrZTtp+woRoWoLpRVv8xby9MVN/zrmA2Er5v0OxsjJIImVvBFVzhmzyKrp
         UCwK9rqJVUtVqwLz3hR3z3z3/tze4NoH6DEvZPwJbWI7Abgwb2jF5I0p8BoZn6qC7zbW
         le5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765789655; x=1766394455;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BsoJakIjxjZ0DCaogMC7NG1jegf2J7ave9kJyPQ5Zx4=;
        b=v32r+hUc1eeHrhN/jdRuUyxUYVBNUqnP8y2VCsFISBz79n083LHk//uYwr/WGY/MAM
         YWSJuascVoduUZiI+aaFsypa3sZEdZgOMHnKwvRx9aaR+AkfShTIMTzzBaOHThVU9Pm0
         UTZ90NnTqBaohaVA8Pnj0VE7LE1Af8wVHHlin7mxnWwXrms2VXI4UdqdFuUMe/5tENQi
         Lqte7jbX+J5Tizshjt/8mhaQYx51gjzeBCrjxEQC6wtUA2dB4CleXMZ2RNiXM8MRrZR4
         tyw7Eio5lwf2rXDvJb4LdFZrOsJodsqejOF7hO2Ckw27e94LXkneXCaBGdoJLhk7KPzh
         2ssQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpec6ijPQEXJ8YdsMxBxqfRmTmHQQQAGaEJJiUOEzofzaEj94VoTZYWiHzBkucrzKRpVtOWuMs7mPg@vger.kernel.org
X-Gm-Message-State: AOJu0YyvFjLN+RI+hHyVLR1LsmuzoR8ADgfHIVEf1m+3BWsvmw888zqh
	9Y3INud43MifoBamy4FUH7tYRMba9aIWYacaUdmPZatLC1dDGi2muOfgHAbXYVxDiMVbDvG1v1H
	0buU6NCZ2Cp7MA0MY8JnxJxgM891niztQneo4n1igiYRvayPArzJilSW4KeOTYzbU
X-Gm-Gg: AY/fxX55jmsGKOsqcoXjfpIRny3B7VoJXbBtuWAnQ05H4wtQ6Da5KWllo1I/7ZhzP4w
	IdgXN0q4V+1Z76u7IPrxxt018AlLWcJGyudrhes0pg4Z6x0FmYQiqDv4V7mzyWpBzxWy1ErYjNY
	vbwxS6VMfSbXY/L4csumjR701L01vsn8AFtesvHo8smMbjKKjBk8uMplG4sYidh6DKPszHEIRaA
	SgvSSPyhlMVAEW293iWeYAwbCtsswxy12fwgxbRwDoKoEF9crrlx/HzT5HVu8wEvgp4F6q4aMCp
	wLE3RsxgqE2grkMhFRppUpQ3oNPl5IcYk/loSPu4QX3VsS225rSDdnoCcQcAl98jt9BJeOAvsow
	hY9sYKyZSQpvLg7Xa0LnImqHFI6NSn0vvH5ByCoArOstYh+5+4M1Hzh5wCa/i
X-Received: by 2002:a05:7300:1897:b0:2a4:3593:ddd6 with SMTP id 5a478bee46e88-2ac2f8704f8mr8056386eec.3.1765789654542;
        Mon, 15 Dec 2025 01:07:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjsRxD1q6NbgLLxbdi6j/Z8uU8zeTfk34+ycCqNaAljYK91SRJlHoQFhSCZZaElNubLA6ntQ==
X-Received: by 2002:a05:7300:1897:b0:2a4:3593:ddd6 with SMTP id 5a478bee46e88-2ac2f8704f8mr8056370eec.3.1765789654047;
        Mon, 15 Dec 2025 01:07:34 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ac3c13d60bsm15439671eec.0.2025.12.15.01.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:07:33 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 01:07:21 -0800
Subject: [PATCH v4 1/5] dt-bindings: arm: qcom: Document Kaanapali SoC and
 its reference boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-knp-dts-v4-1-1541bebeb89f@oss.qualcomm.com>
References: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
In-Reply-To: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765789652; l=973;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=PQu0wItBZrUuS/K1W/yh+H8uckkQdIBZbL7HMrihDHY=;
 b=jywXv82NxPEeKpIV8HfI9Jjw1gGvCsgHnDV5meuxZRaHVUhrgx39/cn4TPdre7DBT6U0hyiHb
 QyNiEcXtLQABCfscyjtXszlVQMxBiDyx2OGcP/ktS7IqT1wrrE7iTTm
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3NiBTYWx0ZWRfX4pmMkQc30hcn
 5SF+p7/Uw4s4Ocs3QBqEF/hggjKnDnhwSGiAK6ma0cxQuJ0cYEj7ZC/AogTmTUwx/nNRbk0S2mD
 t/N9QeOMEuczElqQ+TRBG68f50+Y4n2rnWCouShxBh9UnVOjbVXGfPVn9SY8QBx4B/VU5PFzcFQ
 zD+1bMCHY3rVajdgtdIanJsp8KjNUqNlrYtZiWUn/qOBsD2pvfMmClYGWTUjSwRfo0znPfha3Nd
 XDy+NsBOyYLLdNV8l6076+DUr6rCgRMLjVu8Zp6CUPf6iQMnbrpT3UgZ0NHdVgJn5wnZiI190Za
 Cjc/0lLLB9MZJj4r/udb9FsJGJUtGeBV2I53MmajPC5vtTfzSgx7t5F95TyKdAnA/aDHl939NaH
 gf31gxhQwo22Mejk2fc1eiZhHjcEaQ==
X-Proofpoint-GUID: rwUZYIaZkylwXP8f-j2TKi2UYG3sFFzR
X-Authority-Analysis: v=2.4 cv=E6nAZKdl c=1 sm=1 tr=0 ts=693fcfd7 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8VIqy9Yext5eKz7IjugA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: rwUZYIaZkylwXP8f-j2TKi2UYG3sFFzR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512150076

Document the Kaanapali SoC binding and the boards which use it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..da287cc9119b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -327,6 +327,12 @@ properties:
               - qcom,ipq9574-ap-al02-c9
           - const: qcom,ipq9574
 
+      - items:
+          - enum:
+              - qcom,kaanapali-mtp
+              - qcom,kaanapali-qrd
+          - const: qcom,kaanapali
+
       - description: Sierra Wireless MangOH Green with WP8548 Module
         items:
           - const: swir,mangoh-green-wp8548

-- 
2.25.1


