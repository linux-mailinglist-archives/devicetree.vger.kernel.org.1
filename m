Return-Path: <devicetree+bounces-245483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEC4CB1651
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10F2C30F23B6
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 807692FBDFF;
	Tue,  9 Dec 2025 23:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ciro1ck0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XW1ZxmBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE0E2E173B
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321795; cv=none; b=cyosrj+BECmS6ccqq14aWs2tafLEF8yVlyJoa/660lWKrssFmepnHaiiU2vlJxFFCfmAC02K9zxqvvy3PEVK6HrgBOgqbCAIeRoF506akV65Pecb/pMcpK1dbuor499l38xaW54N3/zM6RZwizUnJp+rix/uNFo76qp/QmY+TLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321795; c=relaxed/simple;
	bh=D4j+WTARId7aLyHJPuHhuaHB1obraW3ZbX7sJ9MUsrg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Wb0Jnyu8LLjVczPJMZML3fQuubgP329lZn4Hfgmv+44oFd6Q899ZybpI2iGjUOj72hzRw/zrK9GBXidYoY5X6WgFaezk5H3RUT/K4e9miCDUBePeAp8opkGG/GgInimvwMBnrae/EWt8v28kaakZHHRLf/oAHx5zAh9vVNSdrU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ciro1ck0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XW1ZxmBe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Mlb0I810572
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qYJqlwO1uvOnWPq0wZwziCSJV2k+4S4j8CeuNlbAgeM=; b=Ciro1ck0OwjThuzg
	9AD975F5TVfzzkJG4mHW1UBZplR+r3pocNU612PnHwR7zrkhQd42QwFYyVpMeQqd
	01KXIfdcmxuGXkLJFblLla5SiImB0zH4a5VozuG516C6P346kNOtBOyUSqrs2ADR
	8btrVKK70VdVGiJlAvXqDfezr1o9CrGg9+OG1KsKtEZTxrki+uItr8YyttuH4ht9
	CyexMoH+C+ZDLkC1fiOUv8wneHDuytS0uaC7OfkDi/VK9zlaC89I9XFefJazk14Y
	HYxDYu+HICO1JRwfQxnKBJdEwbV0FJm7okc2H/bFgEHoRAnNFRbZgusReTznDHWq
	zRkVSA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axpx198vf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:09:52 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3438744f11bso12121854a91.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321792; x=1765926592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYJqlwO1uvOnWPq0wZwziCSJV2k+4S4j8CeuNlbAgeM=;
        b=XW1ZxmBeP8LlidpQk8x9HOs5bOl8I0d+Xm9DAsDXPORFVNffiXoA4ypwKPkrg2tom9
         3ibOeXxsWYwXGPMPeguU52o6dYIL9LSXzYNcMHFg3MjiAECkQ1GNRpzALzL/xtfhMqbD
         zz9P4NskXAxv3cbOTbqlM2aHX6uAAauDpOhti1CMRxjVHUtsy3ETEQM1QtHhk42kbIAW
         QfWs39JLTVn3XRA8v2Ikm1lbCB6WiKzHwXVyNFzP9gW3lHOgwlYrf+vnvZDBcl+Kz6w/
         yj5Sk+AZdedeGLSL6Wmhaotw+3/3FR76wAMXm3gp89m+rMgT4MKO4O5PWGs4gDdg6PxJ
         gDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321792; x=1765926592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qYJqlwO1uvOnWPq0wZwziCSJV2k+4S4j8CeuNlbAgeM=;
        b=q+AhvlSyLwBIhPPqIO8e/s8RC54eUjc1RnZAKWHdp6g4Lb1xuSFGx8KKeo60c4mqIb
         Xblzz7WP5dQWDTPu2VyvECgoBY+hx6EE3HSyQAGeuGozUZxuTfMOS310G/BeSgqdZP1f
         /nwSK3lF7mXU0bljHmpzkO5WsVPAxlfqW17oYkV/6+YQywxM1iJb3IjP+/VGfR7wZuTA
         2Xjl4PiQPnWP8zkNnVA78pPJOd+2IQ9YYpv3A7sa14NdP5giCUREJa6k1DgAllhqtOHc
         NQkPUnMXiI9DqtqpLmGSVhO8wL70KWYWwN0IBBquMTyYXn7zbbMXJkvt6BOk1EvSbRmm
         NZ1g==
X-Forwarded-Encrypted: i=1; AJvYcCWlg6gCuyyeHRTx167zq/Zi+1PTtZEWSRaK43AZnCaFP7+CE6QhQVgmLHDeUC3dfxkvPLuPGOJtBmbj@vger.kernel.org
X-Gm-Message-State: AOJu0YzPGlHT8t4ZW2c8OQTw7TgA2snHARgPBVQTexcxB5HPGcvqwv/5
	6CYV7gvMICZX+O/aJjJ4enfoYva5W2Njvf8LL/DVskKh4Nrobr64wn9q54jG6Dsydk9Y3HN+D3g
	PtYr7uerOZYxmp/MtTfTu9ecvLVwJSq/NQQZGfTl9kLKCtJ69WWHTvFol0+fSL0oL
X-Gm-Gg: ASbGnctDTRmtYZP1+mvoNM3P6Q378/hz2/lppByEMu2aDDMQYURW0YFaO0PHTIb/I9d
	ClXRCOD7hd4/ml/N/fFdPrx1kOAJjlUKodDj+30PtxGZJ9s2n1OL1GCvm8nUv0snHwDsVC4Ams2
	v1FWMHCpmTSMudYONQ+wlhZyYJPo+d3NNOteJQ4MKLfAOwuJr3yUt9/KO6/GjzQJTdp2fnbVpSk
	N1OgB938CM2HZEuWAw21aQQGptFAf2kroCS0j/OtPah9hCktZgtX1W+u619cRo0TaHLg9+KdWYZ
	yvqN29M7JK3xIUDtoeyAM9MVg7LVe6AfvJl5d8bY6BIDKjua79l07yPNEeuBomwPf0a6HWn6rut
	6bO0mF4LqWAD5DYcERTJqQeJn3E/yF9yaDZxO4zb1GEs+wYDNBlKakk0ZbsCmlQ==
X-Received: by 2002:a05:7022:3844:b0:11e:161:c008 with SMTP id a92af1059eb24-11f296cb6aemr260013c88.26.1765321792134;
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHaKLb2qtxxFn4YweXdB0+CLDDiFZIEeR/bRWCJyv09vWfhRAGjiHiD5Zz1lmE625x+DL2MkA==
X-Received: by 2002:a05:7022:3844:b0:11e:161:c008 with SMTP id a92af1059eb24-11f296cb6aemr259984c88.26.1765321791500;
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Tue,  9 Dec 2025 15:09:39 -0800
Message-Id: <20251209-linux-next-12825-v8-3-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: bwe_JkMOeo3nm5s-SCI08swzIoT6VViy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX+6dtfvGytVZh
 SMhaeyN/dXsheb7oNGGz1yJz07yt3IDfjBRA/hOEqHtlc/3goT0gRTeLB22G0njknYR0hB8xcAe
 FRIN3TEWymlXvcAGOWHTgfUER5S6zhE3FUi1J8tXqMOk55mzI45OKrui5vpdlgibRj553jo14By
 HlSarriaCgSw2522bhA3taHJa54Su6s4D9zu6LC62ARKnhGJ4JOYrHOWDAGzdOGhutXrDvD5Ehz
 Z0cPXFHsMpoXW6kjtiJdHZihH67P1XshtRGlYGcTYwIu+2sgmASasFVLj8tbOGgv1W4wuwU+WG1
 Uns2mgnv/ZbCWv6PHXrs7RyjJukuqqtQFg9tQarolnaNvKBa3/Pr01tcsY6QHPkOCDdsTfl2lkT
 6X3BSSDDV8mg6TXDgdaE6zVwELnVgw==
X-Proofpoint-GUID: bwe_JkMOeo3nm5s-SCI08swzIoT6VViy
X-Authority-Analysis: v=2.4 cv=Su6dKfO0 c=1 sm=1 tr=0 ts=6938ac40 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=MNFpXpnAGPlOs8bYK0sA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1011 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..409803874c97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1

