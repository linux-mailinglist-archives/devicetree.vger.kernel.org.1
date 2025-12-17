Return-Path: <devicetree+bounces-247312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96801CC6C66
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:23:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 963083005B9C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA914293B5F;
	Wed, 17 Dec 2025 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mAqBTl5t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DvG+5+0U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1823507C
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765963097; cv=none; b=QofF+7RVtekeARoLifPWFuYaTW1MQUD8qrwUB+Ju1VudRzenvb7d2lzfNZinDPVbhNFB6Qrzhbvm83n0HYbyWU7JH22bodfUh4sYKnO2GvZxAvPeRwFxP3gnJ39ZWduNnYDChLPoUljiUqFfh+OTtVe/RacQgOCTqWYmIr0VKIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765963097; c=relaxed/simple;
	bh=ZwxAd22PGTtRaMdztqC7ee+P15PZUdzpFtZpjJWf7mk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ITSy3CoogUrbatLsbuxpkDXl7OuTxmDcCjr9XhorJRFvGFEuV20H/xb9cGqIFRqJmZNw7rTQJwPY+VakMuIZDFad3oR8DuSaLpM2DSgXLEuhHPrTVKyvOTdbY6t0DeGPZxrbEeZXfJjSrKgcSTWT89j4JAeKEHHjTijnyy41CCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mAqBTl5t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DvG+5+0U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3F0YK2023770
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:18:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iW9wZaWu0n+wWXjapGPyksjgNP59SZ0JKHg
	FWwFtYnc=; b=mAqBTl5t0c2GZ9tM5D7wGlctBgMNnWEyYmSRMZ8ng+V/7lMsi+D
	BDhpISb66qWORvC0uIQXtKsWYGfzGAr+SKwJTWQ+a8LyNFxh443w9WdB+zu8QQ6d
	FPz0j8+5u07A5XgDzF3qNKgt4CCDnMUNCl2TzS4E813/Rp1P0v1h2U5e/oE+obF4
	7RF6PQ9By7SlxGY5+l31UQ6SgkArDrb7elas4ZvxTNYdIkz/KyXSpTC2Qfw24w8u
	k1FzDH2P4VY8xv/P9pnlZIU/6qRQb0CThZGZLVZ5QTIKJaVuOjngtJGm5dJshFGV
	o6zLLYg20elb6P6QA/qyKQ726cgPfiuG7FA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3j39he64-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:18:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee3dfe072dso141395391cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765963094; x=1766567894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iW9wZaWu0n+wWXjapGPyksjgNP59SZ0JKHgFWwFtYnc=;
        b=DvG+5+0UQo2SRh7YcNFuA97iFDDNfVK5midrT9nfX6Tdjql4En/AyzuDFS/c6t6V0p
         v/HamPiKSkJ1cs/ZX/g0O4xFphN7ITbwLt/Zna2wJHgo92xMa6CA99A7xncVnqmxC/7J
         SqUDfxwat8XA5vo4ZK8RFliQthSVxYbJtV8pNxMD/uj+KE1Hvp6QccYNW/EzO46/Vy0p
         axFUQSInNG/KuCxMo0tErL77hTI7Gsf1hZQKuddnMjXSgrbTJ/Ntlq63uke9fsuECfNI
         lfJJ70wQWDD661Q9ayNF18sJVSVAYhh8CWbV4V1nECX2NOkJpCv7mSfS0iLiezRdT81i
         QRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765963094; x=1766567894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iW9wZaWu0n+wWXjapGPyksjgNP59SZ0JKHgFWwFtYnc=;
        b=gc38FRx2DbClj7oSyftdH/TubBF+aueXgCVZVu+KtEquqUqM4OtYBqsGthwWKX+i1x
         hq7I3cvdpPcihCT2NqkBt4IIyvz+p+/mIL8zGpESuv9YqDb2p0c8FPhkwaYN6A+x8d0y
         6Q0LCFF/H6umGH+0Qj0IbzoEl9ZXZc/+YXPbtWfTBc+wf+2hHzeOEfYQ34BCQMWFhups
         OTD5l56owLrxBq8Ymbl18lBHOjPw691J7ib2VMHfkJDIPn9N9njptrssbgDTGC3CY9Yk
         8IcH4Tn1uwjwqe4JxpKltipNDaml722hguLkC3LM4Ql8Cq8+KvLE3k3lO5Ju3tOe2V8s
         lM6w==
X-Forwarded-Encrypted: i=1; AJvYcCX/nKKdgzDEpsPkvRGXqVccAb+9XfKGn7X4j13zf+Wva7HYZH5RZaLeupf5t03fbxUH7WRmJ6gnUMDo@vger.kernel.org
X-Gm-Message-State: AOJu0YzWfO7eeqkxVks+YiQntDF3BQ+ztsjtCvcRKFokm7gn6pmC035D
	x0appybW7x1Oj5ZJtjhufvkQXdzYzgNMf+i5U3+QkN55SBzXwB6/f01WO2QxMoEd6Sx5FHpr7y7
	PhqPZd8WuI00ylmMBT1ip1kBmJPtwTnHbkIgZj1A0xlT9w291V68r2ZLFrpooAJjp
X-Gm-Gg: AY/fxX6etFoQeo4BlaLiaQx/EGwt2cDHfL3axeMGsCsm4dMn0KGfMU5nOej4uHqZoBq
	VtRWowjNhyI0nCvnI0xJpupo7QmWHPrvs5KSClqeh4dijfYBX9apNrTF/d0JO4njacgVrwdIxVp
	MocuWw8cMn5sD36Yhucgvh+uzX24nuD89YNKJqz5hmfXHhmEO1kQcDaBKImHb2+/br/b+ftqb8d
	WkhpmhKY1gpsnMtsD5SM0WpAd+S2BLfZ38XrGFzfExf+hYab1ZgsvzJnlZqB4ITLiSuHd9q5vQ+
	5Hq39uMikESuT4VobLg0TpnzMNFr9uhAkJvUjU9n8SQOGo4s5Bi5TJiSfFq/16cxnCi8v9XBGln
	kS2ZvSoGg7YYXaZD20H8sMwb2
X-Received: by 2002:a05:622a:1f88:b0:4ee:13dc:1055 with SMTP id d75a77b69052e-4f1d04a5c72mr244396841cf.3.1765963094249;
        Wed, 17 Dec 2025 01:18:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtrR0dfojc/ThO1CYaIhIbMVYq7VrKAdbcV769jHmAPjb4iV4IyeMoWNOQ216/0hFUXszc4Q==
X-Received: by 2002:a05:622a:1f88:b0:4ee:13dc:1055 with SMTP id d75a77b69052e-4f1d04a5c72mr244396571cf.3.1765963093762;
        Wed, 17 Dec 2025 01:18:13 -0800 (PST)
Received: from quoll ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bd9965f70sm25297475e9.19.2025.12.17.01.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:18:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Hsun Lai <i@chainsx.cn>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        stable+noautosel@kernel.org
Subject: [PATCH RESEND] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Wed, 17 Dec 2025 10:18:08 +0100
Message-ID: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1513; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=ZwxAd22PGTtRaMdztqC7ee+P15PZUdzpFtZpjJWf7mk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQnVQJOZRK7WoSSCXcBvccA+6D7B5RBBrZFJXL
 4C6f9+Y/NeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUJ1UAAKCRDBN2bmhouD
 1+HhD/4sPPN7zlglH9UDcsI99AT3MQQolUFpdyiyOCuu0AKcWNv2AhVTDLo61shgrGkiN2zVcKs
 eSOIGQ1x+4K+1dJWrKfQjy3QGOEhNLkWlTKecc6xLzpVIKYDTC4MlzFma2wgIXZa16QTFNRzLmF
 /WkkHYBdhFDpVB5So/tH8lGdKtGcCFnBBu45/Axugwx/IFfaULtGE3Bs2FVKK0vKCoV9pnvlv3f
 7/T8afM+iwObo8hdeqGS8ANfPxWqOPem+00GFZjCY6Hn4LqYZ60J+rqOTe/vQe5AzvqwSYH1z2r
 FyPExejpMgwH3FeUlEMS9thHB51FJ+eniXGbSDuER6XIARWuCrGSevA83f5Mf7UC7933SaD83q0
 J/bBTp/A5chnZ+8YzmzJ4UfdWvVXujBoLKtBBZBN3R3/+3NAVjR/fDy0CUw4C9Q6IZaNiv4/Ylu
 KNCXRta/IPBe7j3oagGXMAmf1+UwgIrYTlhdMiOgIZ8CeW9Wg+vmaRZ8qTlYRffZLVoiaSUqnZz
 /u5o00ARb3y+zoDYEnkYKMj/GrjznBk4voRV1ujAYo0XUki3/1lXO8gPQUdcqEUf93BklaqzFBb
 K3J1+1EVxCfkiuP08ksIFzLIh2AHNiFKXXKvlnSyVk7RTUeYlg9EFJVDGuRtE7Vo71DGoDLLKzp fLEz9Kl5Y0Z3YTQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3MyBTYWx0ZWRfX/L5eP3X+Fo3c
 y1cjHBf1ZwFXBGBNpiUiuZ2yOMF7Z/r5BWBksSLpxIJbMt++K7CUHuDKiLzpoWxC0fbdfc80S6F
 F3v0T/5HG6ucDG1cYUPTRCdyNbXRLkDSnnzR36L0l9Y/o1QbZ3Dud2e4EPVDyV7CfgYthh8iiGO
 eIn0MRpEALLz+yr+kPTJ0CcxF7+T3UdCD6u5DDr7f/5WDokE3jgNEvAsj9T/yCKf4a7Ts1ujmOH
 GQZeOQ4TMXJqKnPi1dqA3PzA+rzdBEEKbG4p6zl+LMeUCnXbvHf4DilAUqNpjNrpeoksjxc8VQk
 ls7o5mUMunkOmYe/kyUf22WTwZG+vihNYGUcllcIaez/oszCjlK0C4kXCS09Ft7N0UaEJEFr2sP
 WTNqlkArrHcfI3C2/aFJS4Foy/FkDQ==
X-Proofpoint-ORIG-GUID: WkmeUCkaMymhSDl0BBDT1o4rEtUJCMZM
X-Proofpoint-GUID: WkmeUCkaMymhSDl0BBDT1o4rEtUJCMZM
X-Authority-Analysis: v=2.4 cv=ToXrRTXh c=1 sm=1 tr=0 ts=69427556 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=XBPufoqijqhy9oh2KWMA:9
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170073

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Fixes: 79f2a1702441 ("arm64: dts: rockchip: add DTs for Sakura Pi RK3308B")
Cc: <stable+noautosel@kernel.org> # Needs testing, because actual level is just a guess
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Re-sending after 4 months:
https://lore.kernel.org/all/20250818090445.28112-3-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
index e5e6b800c2d1..3473db08b9b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
@@ -199,7 +199,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake>;
-- 
2.51.0


