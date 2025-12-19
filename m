Return-Path: <devicetree+bounces-248089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EABFCCECD9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B3943011A45
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF252C234A;
	Fri, 19 Dec 2025 07:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eceOhw7M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c3EJ0v1L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956971A267
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130048; cv=none; b=SW5r8fqo6PsHdWlSs2rbg3ZKMa4ifSvk1cjN8EXfVoq7aub+c7yBVkZa6HBi9SL7hRn8Y3KSR5tE1DB8U+ca/33NJ+PV/gIN8RDiCAjX1dnpgBRHaRH7w7w7VMLIuSr+Iw5SvaPoyli6OCZW7Fcv6cwNqeHrO6hw4Nkokt0g2FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130048; c=relaxed/simple;
	bh=Pj+5rF1JzrlA2iWQvzCZRORhOwCpPgy2lS1f3GmBXaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dDv9rdvL7YpLpTQyXQefW4t9YAqEGdd5qEOxU0i+XvnyklV3Gp9tpMjqkSdyHrzqL5SuylOqHnZLKb45r1/MZ+GM4VKwj+TmJoPajt6s1CQztDONt1wF6qw6pqx5V+uYGw4oNhLZYIq90vLl3QPN3fL76+GFBOEzfqWg9qMnofU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eceOhw7M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c3EJ0v1L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4bwKf3975443
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=7vIv/ZqdFpIpDMymuJJe93Re2tS4+Ah+sbi
	Kzhp+N5A=; b=eceOhw7MHcNJBA4Q0lTL8Xlrni7bLyZOSqMbCPrqfaEmaBcDkOI
	fjsook5rfL4kdOyjFe5ziRLha6s6hyB2B+YQ+hh77uFIPEMz7eDivoCSsxc8HTzv
	UmuTLpw9/tsjlKWumtqh5eKAC0kqquxGOZkzkR2/LDHdk3usKh+AJLNB21YnneTT
	ILDotgp+YZfTzhpGiJpxe9JjgM6Fnv8pQlD+MuxKdmISpIH2ZewkdlSTLp2UVlmj
	1NziJmuUnl0WD7cyfYu5SaANylX+nZuErx6MqAb5EFTddA/uvUq1rpZeSKRxUvX8
	fLySNg2iYKi/610scmOt/GMWRYhsqJZVwAA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2fhpcw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:40:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f35dcb9d4fso48698981cf.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766130045; x=1766734845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7vIv/ZqdFpIpDMymuJJe93Re2tS4+Ah+sbiKzhp+N5A=;
        b=c3EJ0v1LZ9OI/q1rwugPVjW4APxC0ONzj/weAJQQTxJemE4DSSiRtbVssexIOmbXP8
         OuUtWZQstqTYq+gwQ60TRz0Jm3sZXq8gGjiTxMW17HIk8JvxK2W/du2vyBApAy/gBolJ
         +GHDCGQDpnnXOgRZiBwvKsjSgW0u+x0g5b723joIZXC6qbOcAP75Z0yTd0QPqhwa0+QY
         zISQ4wPUqHIbqp2XwGER9QAwQWKvxet7NaPG+aBwxWccNeP7I0135hbYsg8zb+tebHNU
         UEOFt8AicNjY2fkIMXefhI1JTzFYYXLyvBm3nrZi5rsJoer4FCxTgoQKyZKbxT4ubV3Q
         8mQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766130045; x=1766734845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7vIv/ZqdFpIpDMymuJJe93Re2tS4+Ah+sbiKzhp+N5A=;
        b=VOskaevqNg5fixHLZh/UbMJJqjSLyVaRvzcu9lsrFq0Nr7Tvce6FTPkj1P/7IsGtVv
         R5fdLGm7z+INPfKqj+wIfE0/3WuNYu/uo33BebB7AYZCAqGNIRborURDu4oJWoSsVvqD
         BU6rqrHmKUHQiLdQnJ/KOMSqXpzYTdsj+A7QxhztinqqunoTAM/Qqze4SzVPcAiHoU+n
         NlVUjvMu6GcqlzXsHHepngAaWLsWiv+73m8MIN1jTZ/8txdwf0EC3UFXYj8qhPFYna2+
         GAInnIQMyUP2YdWLWaIoeM5gSOEIO9pz9TkDT0RtlO6hOv81e7hsdHHk/rcrp2foBXpa
         OPiw==
X-Forwarded-Encrypted: i=1; AJvYcCUuIrz7Os4khNnLGWDZmXfrHh6ElHK6biUhs+14zDzngMpiT0PM3yTkVs+c38P4sg90KsW/MOQZDDIn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz40dq8XpVipd1CSK0EpkN2WgWC+SE3+jxOReBaagXqYYh3jzhf
	a/fNLx58EfyZycJSsox4X698fDzjlmChyEqGlp3AUJFZMzAgXdnN3jTyxLk/RxgqjCar2Gj0Iif
	fFTCMdP6YBIeVoalRZF95jlIlPVTGqFNAOz/OTONhTexrUQ9XDkdwooQ3ioqzz5lA
X-Gm-Gg: AY/fxX6RHuGAQ/3ZSbuD88UfXLWY1EuU/FnF0XDoePWvPtfjQ/BtHap9ognxEqx5G/5
	Tk+0cn1mNqIJ9nGCm74pLl7HlQ5MMipP1tK8gUrTJ4tqyK5hoZr/m+t8u+kls3rDWYJd+vSh16g
	0HSI6zATkXud1HhwojZpPohAgzNe5ExosXEE5lp3hx0kYEKafVoJYhmDaCV5fjfUfBoWWrLyidZ
	xt1wW57r8NglYvb5R3e1GcN8wc6mJwYChlfZFaWgBhSgrha+ejSpDR70hdLOuWuY0OvBesrODQi
	flpISJboqppI6GNhXYcA05ZBO0vKnD8chH24sd+JIuHNcCttfFfqgwx+Rrx6xLCm3+qpJcw581O
	Rom/X57JbDsKDlRB9KtcHnB4xdLJ9FIjth+TQ1uUns8geLFlNf/PDInHk1mIc8vrwbTA=
X-Received: by 2002:a05:622a:4106:b0:4ee:1913:9616 with SMTP id d75a77b69052e-4f4abd6e3camr26272811cf.51.1766130044825;
        Thu, 18 Dec 2025 23:40:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZEHmexCkpUpnJU3gD8Mpws4Lb3U3S6CxCEkKP17IE4LRT4jWtCCJFbvZtGo1Vj8vdU/D+Ww==
X-Received: by 2002:a05:622a:4106:b0:4ee:1913:9616 with SMTP id d75a77b69052e-4f4abd6e3camr26272671cf.51.1766130044437;
        Thu, 18 Dec 2025 23:40:44 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a614b7sm163174266b.1.2025.12.18.23.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 23:40:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>
Subject: [PATCH] dt-bindings: mediatek: Drop inactive MandyJH Liu
Date: Fri, 19 Dec 2025 08:40:36 +0100
Message-ID: <20251219074035.13001-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1965; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=Pj+5rF1JzrlA2iWQvzCZRORhOwCpPgy2lS1f3GmBXaQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRQFzVSyGI1P+7P7LeiMXwYB/UU4cmRnFddVZ2
 NZtxkX9aC6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUUBcwAKCRDBN2bmhouD
 19JYD/9CCbYGdUgNg/6wlO7AqltOh1PNwU+mESZeL+tKQSbY6m3VjAiplRsoDiNUJMowDAcxJTK
 PqxdrWg63SHJpgaE1xS7p8x4AHVwSQhVR62MzrUwNPBtSHLBV29cJA3BJVmTWTFzovTLFjyGiOo
 90UGzia4vNxO7PVXsP//ULpayHUp7dtpDtvvlaV6F/d8788bUcGBOVzgAsP9n6HvW0kwFr9dnKb
 wVpEjEDipSGJ4LepDYYIHKMpw1g/xio3Db3fPaLGZK3w4ayniYVttpBpXHnYgek/gNEXaghXdd6
 vc+r6fJI8AFGSaVmixFdWAzmFeDphvbL/0TQOsa9NHO0b5u7UwenNGTl0mn8r2fymKSOCfNyIyC
 yYkuTf30W2plhYnuC4BrhQnSGztgyDl4NMYRyiT5S74VW6D4ZQ/q6Vk+o3KedRPX0N7z6KtQSh3
 GVosI6Ib+OAu2fjlmMV9A4AleOQntd+jXRmDNqeNWK7oFM6daOXN+SGUDqT7CVlcqe9ZX2PvL44
 X5lVWuprTJh44StcfRB0EuxSRRbsadKHZuZSsngcIgKNun43ygOJV0wlKlKCPm6YUNtoQuwTT6n
 9Kb3YrVRn7ZoNDGadO+CC6OSzzZ9TqSl41Ci6g1j6CoN0P2Q9Zs2rmuDtYSzUgH+Ks9OdMwyb3M Q7fvNxtKKfCKL+w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NODYOk6g c=1 sm=1 tr=0 ts=6945017d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=mpaa-ttXAAAA:8 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8 a=iox4zFpeAAAA:8 a=RAb97dgWUv9LPol2dIoA:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=sptkURWiP4Gy88Gu7hUp:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=WzC6qhA0u3u7Ye7llzcV:22
X-Proofpoint-ORIG-GUID: AC2hsWWge_FYwXXhqDqyT6xp7kusnalI
X-Proofpoint-GUID: AC2hsWWge_FYwXXhqDqyT6xp7kusnalI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA2MiBTYWx0ZWRfX8sxUeq9suKPy
 9nfDBc49s5Z5du0XbE6bjBLreqaS7pqk72PMgnNXw3771ay+gJZwIAs/LgbWT7OFzL7kRhbxpqj
 2stTpFfgDDA7/YmOLK0mJbD6e0PrFuU8zMP+COq9WT9fsdrxX7siAvYLUVvWflcNYGkhb+fjHLU
 5DC7g3GlJF6D+7/NvFqcJf3Y96KSoA4VQwLNxjV7x5x6t9Qt8lhNwhffqn5Lsx8KVgKncV9MZdY
 yuENJWcxxARfYHXGuesSuelyVyk94jybbwuqsVmQCpKxmc/YQH7z5xyeFFiOmVDgftGkkwCKSDT
 iRbI9jfOUOOh5hyHegScwEeHT0VG+Za4B1Mia0oPLpb3pzHvCimLpwD9y/GOy/qtCmIMWlec+rd
 hXuYEN4Hiwde6KTmwGbpCleSquVFWhdRnDfjXh4VeLM23fk7O37tYttsIFEpKWFwDFHzNjss2xW
 hkL+1mWES0gXbi4VwPg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190062

There are no emails from MandyJH Liu, no reviews [1] of these bindings, so
clearly no maintenance is happening here.  Switch to Mediatek SoC
maintainers.

Cc: MandyJH Liu <mandyjh.liu@mediatek.com>
Link: https://lore.kernel.org/all/?q=f%3Amandyjh.liu%40mediatek.com [1]
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml        | 3 ++-
 .../devicetree/bindings/power/mediatek,power-controller.yaml   | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
index 0e1d43c96fb9..1cb9d6797b92 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: MediaTek System Control Processor System
 
 maintainers:
-  - MandyJH Liu <mandyjh.liu@mediatek.com>
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+  - Matthias Brugger <matthias.bgg@gmail.com>
 
 description:
   MediaTek System Control Processor System (SCPSYS) has several
diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index f8a13928f615..9507b342a7ee 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Mediatek Power Domains Controller
 
 maintainers:
-  - MandyJH Liu <mandyjh.liu@mediatek.com>
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
   - Matthias Brugger <mbrugger@suse.com>
 
 description: |
-- 
2.51.0


