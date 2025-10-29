Return-Path: <devicetree+bounces-232450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E265DC180F2
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74BE6188E820
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC134190685;
	Wed, 29 Oct 2025 02:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fn7SmH3V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DM64cO6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD4610F1
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761705103; cv=none; b=YyPXzFtLgNFtr5eGdlyAfJOQXuzPJLLLxE8fakwjPmXnCKTSIQmU97RXRs6Gg08p4llkdRk3r3DzWYOmmtO7jkRw4kT39xcvYru64s93OiYio6z06YmBZgIA/VR9S3wyaU35gh2Id41mkzO8cza0sdWl94QgKjVlOoyUO2JVEBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761705103; c=relaxed/simple;
	bh=g7N28kFHcXcwHBlOAWcJiAHR4xwx/pSur+aW4iGjL6w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HgB6es05s49jASeUl31xk0JYQqp5nRMwTPgPLOeyt4ffVAqfHcoW6cMhSFMzm6O73e0XRQLxELepWOlWJo32Ww0Ti/Dr/qVODyQM+9I9N5AA7Dc/pGhO+H+epfOm4HC68L5ANgIKUsglhz053JiWbCQhLkHZSCepQp9Lc5JcEC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fn7SmH3V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DM64cO6y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlY292525473
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RCz1pudWlWhAvVjENZQZb1b5kECSVZ47OjN
	VesESA0Y=; b=Fn7SmH3V3ELDvJaSFgHFh91wRDp0bROyf2S5xfV5QUZUC18cR86
	UdyRR7W3uQBmd5agw1VoxjTuG8IOMsQkqDCobygkPyvSdDeV6hwV/hlNEElK7jAt
	bi1/rl+DwA+mSl7VITcvi414awyuxi4d2JMxGntZzyXNQnwM2kpM2jlFJZw38Hm9
	2VTLCh9Aknj+OK27fyw4947WxRu8sepJL5/4r3z4ob8RqBxKVwRaxTlsJ68e9510
	m9Kg7VgBJaVgYHj2Bp+Y4QDbBGGT88DWJ7w5HHE1/akVsqWla3hKCdlhYb90a8hq
	2UPqL9yFEPKV2C+9Fr1MMsZ6WlXZ0mwTUOQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a3rw24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:31:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ee62ed6beso10770798a91.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761705101; x=1762309901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RCz1pudWlWhAvVjENZQZb1b5kECSVZ47OjNVesESA0Y=;
        b=DM64cO6yDCThbRkEbirCf3lnhrnVcG86TF5IcdsLj4QiY5RAzTE+IRiB44Bj0C4/Ul
         pj9ei5ahmhJke2fbsfDAcvaTA+fbv8f5lPwElDDoLz/p4NkglQw7C5rWckteNlwQa3B2
         bWFR6bkbGmZ3YTaojq/H8QeyynX6GYWuSF4+pbbTWzbYuJxNJvsVbPDQiT8cOgN/gvru
         IYx/HIsjIsWfB1RVIbIPC3oYHoFB+eZbWXbUd1skLTM7GjNzRnG5/rI19gfS8IWpq7RG
         lEmIi+TP/TucaODKvCnePsLraCvqltn1WJIYiU8tUdAcQ6y+FrbkuzVtQFFr+Tc01l8l
         IEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761705101; x=1762309901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RCz1pudWlWhAvVjENZQZb1b5kECSVZ47OjNVesESA0Y=;
        b=Ktt7RTcn+fCjKtlq2wJdosDAmqprymuyFZ93OEYXIVkbUJRMAA9B4aenVcp52Y0iND
         17MB4hBjmKxVVFDauPEXh+vWRWeVnhlHtbSXd48GYvtL/K910ph6+7FXHETjgOOCJCp+
         LOMjUaRYvpvYezCgmdgnw3qCROR76msIqQfetiLB4QX3VYx5TVkRg05Gp+9t1XK2hUyu
         roO8IVLpgUECIZcrs4EANctLQd4PvfrqdZwCR5wIHhDKH6Zru2xzVtkwWi3ha6F2YJt8
         nAsy/yBcZfvn6RGYLVoIHUjOV5Whcmes/OJBjBzEwzgn9l5IK6u5xtWBVvMOb3Fy0AAd
         1jaA==
X-Forwarded-Encrypted: i=1; AJvYcCX3DsJf0A8iRoT3keFDFsEMhrVHcogWCrJz+0r3pGOmKGgOy6VnK7YPE/FO7AaQ07uocJ8atIoPA2Vz@vger.kernel.org
X-Gm-Message-State: AOJu0YyjIWprEl38TbNYGaXbFnJeF/nj7NkfMLDT6b3OBEDI9PyALVh/
	t+ViA2/1eURF9ITAK6pl0PE6AbqR+cUyrOvZ1IK22VBTNJxblZYdKsmsLSv7ZOMMefWoVBP6f6e
	fuV5Rtuv3+lQd07vugKVeS4gYSWKo9WIV0hCN0eohBDz14nSp9T+iPZkB1OEsx7/MpMlZNYbqfi
	s=
X-Gm-Gg: ASbGncvVrLwA0jrEdPl7QCvhqJvfyzO7CMxLAj/8ZWDmaE58Iaf8+4Ia5qM/KK9X8Ti
	gzEVBcTODWsl1ujhaEMz/ytPOlZgEYvGl3uesAk0iRcBaMi7HAhmcaYLNX8V7YD4HLRm8wCNsa8
	Un1qq4BVAD5tZ5VwZMIo3B7Hbw+aASGbYDY5p98ajI1q+Bx/vYHaSOILDmO7I3MCtCWYbbe0x6a
	WerrvB2Gn3Kk+Ag83qni2budh4svQ0PZTZFQL5bdRlqthmUo4cvjz0javKeIAXJe0C9Y1ROl6Nd
	4JLJ/CMlWIs4LMst7rgBgzv7JZfbqtRcRpW4aLuBWtAxwCj5tFmbnjR66CsMajctZLkJotydATG
	Vi88UJeTGBdqpUWJO7Kv6HRBAUmgfIPQ/mzTM0pBiUKSS
X-Received: by 2002:a17:90b:384d:b0:339:d03e:2a11 with SMTP id 98e67ed59e1d1-3403a15844cmr1480563a91.14.1761705100752;
        Tue, 28 Oct 2025 19:31:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEd0VAQmf31SXQY4LxoHngpjy8YiK3tt2nlnsdCIY2Qe4hB//DaYRNWlZoiONNgbDcIgRqpTA==
X-Received: by 2002:a17:90b:384d:b0:339:d03e:2a11 with SMTP id 98e67ed59e1d1-3403a15844cmr1480521a91.14.1761705099904;
        Tue, 28 Oct 2025 19:31:39 -0700 (PDT)
Received: from hu-liuxin-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed70a83csm13488875a91.4.2025.10.28.19.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:31:39 -0700 (PDT)
From: Xin Liu <xin.liu@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com, xin.liu@oss.qualcomm.com
Subject: [PATCH] arm64: dts: qcom: qcs615: Update 'model' string for qcs615 ride
Date: Tue, 28 Oct 2025 19:31:35 -0700
Message-ID: <20251029023137.381386-1-xin.liu@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: E_BW8YS2qKZzvP_ImKLuZqaRo72W507W
X-Authority-Analysis: v=2.4 cv=HM3O14tv c=1 sm=1 tr=0 ts=69017c8d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=a1m0clyzLRKmXXX_jUQA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDAxOCBTYWx0ZWRfX9szukA8CNz77
 pcrlQTLrOV/8xjJ7i+XOcI0B6di+pjcSu+jO4rbRlM0xKwkzVlUg9HSuoJ+yqC1kgzUWIt8pkmf
 lTSNgw8+14NHGgdy9/vtKCTYKF40xvsceN+h53Ixleokb6FNUHeFqda+JtlRd93hwHAMJSmUMgK
 H7ONQsbKI0RMJOri7HmAlkW6Wa70XdM7eZwssRXkxtq38ADIJblsmZtTkH3p7USNIiFM5hvgkLG
 xqY/5vY0/43vwPar/aTccBTEB+LZeU3UUYUi+O1bgwrE95KvLhMr1T50oQMdMTqrbhLV7CbfT8d
 uee0RrQjcWrcRKE30/w7jJ/4YYPVuAXdwhQ8r4W2H0MeHOFgGFzYbvvpro7qaVbGSAZFK7nKwm9
 de2I28OETvg+RFDiZV6TwNR/l4RsYA==
X-Proofpoint-GUID: E_BW8YS2qKZzvP_ImKLuZqaRo72W507W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1011 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290018

Update the 'model' property in the QCS615-ride device tree to include
the public board name "IQ-615 Beta EVK". This ensures consistency with
official documentation and release notes.

Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index e8faa25da79f..047ba656f67d 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -10,7 +10,7 @@
 #include "talos.dtsi"
 #include "pm8150.dtsi"
 / {
-	model = "Qualcomm Technologies, Inc. QCS615 Ride";
+	model = "Qualcomm Technologies, Inc. QCS615 Ride (IQ-615 Beta EVK)";
 	compatible = "qcom,qcs615-ride", "qcom,qcs615", "qcom,sm6150";
 	chassis-type = "embedded";
 
-- 
2.34.1


