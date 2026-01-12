Return-Path: <devicetree+bounces-253903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0B4D1286C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:23:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18468309350E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC313350D76;
	Mon, 12 Jan 2026 12:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RTCbSLQB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d69cZ4jg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60538356A3B
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768220615; cv=none; b=CaGlk9AASbAbJvDSCMhL0Tm7hzDS6jlE/OQFPLRt+947nHQ5TLSdfxKa8z+Yabnh2xhQ3LQjdRZbXff5KI+AdCSKZYfX1Y49diAdzy+N80dI2S0/xammhQZ2CbDeJ/lFMFCq4TwV+eFo0LAWTeWb5HUXJd67H8Qk/v1XGoq/EWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768220615; c=relaxed/simple;
	bh=CgEbXiC0tRFYy7nWbQqzxFqDe2dxsHJ9L5SvdEX1eeM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=db0iWWdkr1itWz8VUh2Hz3lKUeU5Cyl94WamSFy60XRI1mH2hB3RSkb26RExnogdv/SLv6bUUg4dg/XDb8GWQ72srE3Ut5BRmJNFCgqcGCdExpwtg/vTLDSC8Ftn+pekZHoc+Wi6tf4LDJgk0OSvtLKkv4TGwqN/O/lyESIIJbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RTCbSLQB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d69cZ4jg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CAEXhw1315835
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ugE260vZyoXFyprFtv+qvQF3sV0ZXOMPRQvSaQD4GiA=; b=RTCbSLQB71zL1cnj
	o/Mmqc9cQeTzlpYv3Ky6rXcd1KOsFc9HTOwfAKmKpxI7rRjlRxrvgGX7hiEzQaS0
	jLaKD0Cji7sUigFyFBa7VOTBAq8N+fj7FX0DfDvOmo8LYcQzXqyRKwG+oDpVWyTi
	Sqx5YQja8RzK7XR5J/AcQSqserdN7/76P7Zl1nzni0r5vDuBW3AtrOv6UAYW9fli
	ymBnfgl+oiK+vznU13UhoWe6griMXPkW2pzSzdl7YQIlBWzcTXGmB8ewBORrGn+a
	4xCLS0gUy9wikN3v1j0WWrKK+X1E9HhIpmycS3UF3bxPt16DHsCzVbykDTUTiog6
	uw3Gog==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hgbay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d058fc56so53269065ad.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768220613; x=1768825413; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ugE260vZyoXFyprFtv+qvQF3sV0ZXOMPRQvSaQD4GiA=;
        b=d69cZ4jgVKiChn515P+0ZuW7JU5GrQKd5jGpKvta6qaqZJ1GC1VeMcZ0f2Vi3iZTiM
         ZzvmDcHB3jCkpelprg76RgJojxtGYyFZ2ZpBFd8zg4+NqypjFypk+TvK/5XH6xkeqcep
         CwSAETxtERPdV1Gku3+COwyqwJcziEBrDvPhX3h5lXIRjq0O4OFzR1PdxAAIxcsUVguu
         41FpYcM3uTYs/SwaEgQRUGSrJDiz3wwzU7+Nt1l4K+XSWjr6WZr3ot14DqD/dORZWz2U
         fAeD8LenET9yW8vS7jTnCjViRzlxFxRMp7+vJqw7fUm1b4EIkwbujVa5I9hB+GLtxPVD
         rUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768220613; x=1768825413;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ugE260vZyoXFyprFtv+qvQF3sV0ZXOMPRQvSaQD4GiA=;
        b=PzyunHi5A6MeHUMnNRWgLDVTkGQzOwlF+hL3CVYbxSPLg7JK9sA2sy/kiQmYfojXas
         SCPw4CmfoxYMxGB/8fNBshe+lZ3pMeTpshriFAd1b4THb1rwMR8H9w1fHt7KOdYno52q
         xd2sfjvJgn5G7N+zysJCfHjYEJmch9Fr7Ky0PjaIxOLyKwwDDfSc6lUfToNTuTKCq+sv
         d6xVhKj2UxwlH3TAqxfNmJn2wp3O9wfWzU3ySyIKCTrvAjXUdlhh6dOH3OhIb7POBpMH
         dUx+k2n3LFOX6EqPbjeM/t/mKBQwsC7Td+hSxZeR1roKRcsFU8OhFiKv86fTDk72UgHL
         5HmA==
X-Forwarded-Encrypted: i=1; AJvYcCUv3rKEIIIbzpYf9FUiEdea2XyrKuN9ObLllLUPcEHkIXpMxvoRd8Cbye5v4XgCPH0j5KQkDcYz1IwT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/ClkvxluONWX3VM8KOwmS3zwh2b8z6/PkXsWVXtJeE1EJXTwR
	Sa08DIDi6EOoYI/0IPrfGzIoflCH/mV+XNM0RZd154v0K9LxH4o+iVystlBxiXSb7WCR7fdxyW1
	dgaWkgkb083bLhGksLjbE/XXsP64gdUj5dvfD4Z+I5INMfNNEZv10b5vd3osKW71K
X-Gm-Gg: AY/fxX6zSd1c8xWCiK47E5PxUaq9/D9hNqGGL4gq393JiKnazcCp08QjwnnR027Zhib
	v40rqGfSM0ZUwVkVL2AH0mRlLTtLqcAKJW2Lw8cESVRmWY2Ut68Kwl71lGFp0E3syfGtXwsAJNP
	lQaHBKAi5gMPwQIxhqBEntRdEaFbvYh8COqrwplYd9qvCqxtOA+CxBfdHEjVRwv4WHnrRX1PK1h
	59hxBb3cTTMew7TWeeatw9cgs7MwC9t/uV/ino8kmBa8oIXOz7RC5/r1Vw3JUZsDahH/aNVH1RS
	TFrrsbFV+LlMPDOMkQx8k6uWPszTQFZeK6sPnB3pcVHxmzdOQlGyXo9+/MD2Ygol0IkFuqOMN66
	yJaDXcjvTFU/u4pbLcEfmxa5r22k6EDUmr/XMA4W6er/4ZhkZPX7ch5tPmZTKHq4kT2PqI8TCHV
	VLnWq1ISgtEiBCzMEn2bkt81o8EZC9LA==
X-Received: by 2002:a17:903:3508:b0:2a0:d629:903c with SMTP id d9443c01a7336-2a3ee4e8351mr167242855ad.30.1768220612989;
        Mon, 12 Jan 2026 04:23:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkHE25L59KfOtX96NughQFvBikRNFtvaW9wf0A+6QcZm7ZIw10Sx0XpCL6Geu7fSc+Iz41bg==
X-Received: by 2002:a17:903:3508:b0:2a0:d629:903c with SMTP id d9443c01a7336-2a3ee4e8351mr167242695ad.30.1768220612488;
        Mon, 12 Jan 2026 04:23:32 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm170875665ad.22.2026.01.12.04.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 04:23:32 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 17:52:34 +0530
Subject: [PATCH v4 1/4] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-upstream_v3_glymur_introduction-v4-1-8a0366210e02@oss.qualcomm.com>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
In-Reply-To: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768220604; l=796;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=CgEbXiC0tRFYy7nWbQqzxFqDe2dxsHJ9L5SvdEX1eeM=;
 b=LVt0yVMYF4p4ejPYJgWI4Cgk1aTHomVISQomR0LHxwHU+IT7Oo8YAgjV15X1Qd5UrNXTgZ5db
 jL8UmDW6xVFC+ZqyB8j4Thu/+fWH8VgkbRAq1ezZ9QlmShoEvuAZ+RR
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-GUID: 2y8D7K9tI4iY1A2Yivg8CAchxLdD4gRP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA5OSBTYWx0ZWRfX2exNVg67P0XU
 VjBmTP3vFkQeIis83tyFaQgP7gxQ0VPZRwulXbd8gOOTvMiPpbX8Tu8jK1YCIHJs5nAi6MatcRW
 rMnpwX9KBGl1xqfLmsvcbidXnlSlSrr9d36/K+lFBTuM/GlEMdd6BfIeqsPrKVFrTorVDaKqteu
 1r13+g1AL8e++n8U3hihh96jJSASgm1J38ALqx88FMgJD5zIXhSWhTxW5PvF46KRwx9ez3QhaT9
 7zqdorXrB4VTmipv55bo1jqIivJe3FKrv7vxNABuKwX2+WV48MhKB8nbs0SideLihCYedem4lH8
 peZ7508sePx5+M9syvC8uOQGXnd7YIMy5X3B77vbZMRRFQlkj9yg+XCXS5unA7JQFf3AWjBmC8y
 tUmRUEfaTemKcOA/qXZfg2v1F7V2+FoChgQljpz/1lBRCfTQYRsd32fcdWIsv3cz97MAqB3lyzy
 jEMTk2U3907CxdLxIXA==
X-Proofpoint-ORIG-GUID: 2y8D7K9tI4iY1A2Yivg8CAchxLdD4gRP
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=6964e7c5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KVNckf8Hb-gWPUCTgC0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120099

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..5be53b50f5ad 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -66,6 +66,11 @@ properties:
               - fairphone,fp6
           - const: qcom,milos
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.34.1


