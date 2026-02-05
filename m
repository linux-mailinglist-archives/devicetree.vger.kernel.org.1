Return-Path: <devicetree+bounces-263164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJ8rCtEIhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:17:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C07BCF7892
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C36E304BCC0
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF0833066B;
	Thu,  5 Feb 2026 21:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MY0BMy9b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kxh8tJQD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC5F330679
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326116; cv=none; b=DXSVdWBLyOXr4TMRal6Pa+ic2BooRedUQ6smb6trr88ao0SllzR/iGYECr3jaXURpyvnq0D24HSKvi5tujrsZWVqB4C+VBVEiFLJHV2HQCdXO5+NdkplvF2vPy42VJpHrFVLO+AbivLWvHWnOqTkVQfOhAYU2Jk8qcMNQKzi0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326116; c=relaxed/simple;
	bh=1tvSpc5JPZvyNRVgbUHPktqMgKRmetSeLRgTJz3+7QQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kXjG1WOpI5+gjpnOcBZoFpwvN36Rkh3O0cep/ispcsvs7AoCKxFR2EPoI5pZhF1iNA2QseEP1mOMAH0inZNM/dfGbL9+0XdlTCRvwTfZG05kAu93Z/IvjqiOX6eZHlck43D9oPD2Ytdg4IvLEIs9dUa/o7P7yIoWIDrUgU87dxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MY0BMy9b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kxh8tJQD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615HiUVl3977612
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 21:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XwrANBGWztn37K1P4H+NEO5rWUi5n7BuQoNrf00BBa4=; b=MY0BMy9b0+tSjHKK
	u7I5K5f1fN/SPI3iqwQ1twgTMT/miiI6Fa5xuwljiFQYOax177Nud4mBbNj+IP3x
	CUcF0WBTil2F5qBMDqNGyTSc7pHUHNYRIM5LnawFFyZ2eJr0Tk9honcd8yRg2I4t
	ThscxW+JqoA9dBlKVhKfbYQcj0A4diB71iGMVwPxfrdascODKSjtRv5nY4+PpXCy
	LXS5nb9N7NW2ZXQiTRP2VLMUrZLXwY62arvKdtuvaKbldgw1w05yE/AC+EmOHtsb
	gzzTTDjzI8DUAMaeP5pUCkpKP+FS/Lru/3muamIJ8nq7ZsCkvvT8wM3vbvZQ8XXk
	S/9gGg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4gynujma-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 21:15:15 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-354b30fd7e7so10288a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770326114; x=1770930914; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XwrANBGWztn37K1P4H+NEO5rWUi5n7BuQoNrf00BBa4=;
        b=kxh8tJQDHWB3lR1IOmyzTXU9qNdkGahCyWfo2838a2hmM+eMw4wYvQNhJjIWQjjGCf
         3H1+u7J4clSgEUpdAhjLoDN4HxLnKcrAiEYs1nXMOH386Va0Oo0Rk/crzBV4pUrk3T5c
         ce1QIPc9HM8MXiTrJLn9DqQVrhp8mxN5LRVBE6YCQeBWVA48nMtmKIaQaIrpRRnuaQDi
         BZBnGA0qfRjzKmeL0mHp0FxoEEL02CijiI3/MQsvmnTVGOAoJXm/x59cApr6+PUvrT9P
         JF7b5gms6gSiy7fN7T1vCnjEcQ+bQMw7BfCLPDlwcIHdqYKHkDOYBZxK74yM8q0UTnAh
         awdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770326114; x=1770930914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XwrANBGWztn37K1P4H+NEO5rWUi5n7BuQoNrf00BBa4=;
        b=QJJCrkK4bt9kDIzeqJ7ic7Vtkvq+CjfSeiN4VcIxl8OjS7bvv6C6XpR5pZDDltzLf3
         uz8jwIUYjsWpLAotk6iSsOASbTZzsnu2KlKbOMzVbmHXBaSt+fU4UafL5MjfPER0Du4k
         FWp1v9O5fF3FSKkyfa1+IQa8+TK/i/ZqoaAi6Y030zmvi1Q76ndkpcWt2ZUYObiyPxc4
         lIWhN+JtwQAvTI9ADitB6M1pLrvYEEMgZ5ORyWhf38RYMyOYpmpR0iAuJcdXq1g+CD2w
         35q4wc8kD8g4obq9+pipLfD8PlAvCxcSIowo3LArHNkxmz65JuXn8jOSifJESKTM8W4O
         emDA==
X-Forwarded-Encrypted: i=1; AJvYcCUmyabp5mSjezWm4wGe5nzbCRXSKCa6kdGg4YO546EixMPpx6dq3OHVjwwYjKh4yq895iZZYS3tlZ/T@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ37yTL1CVEjL5VqinvRADVRcJK27XjjkreDEjvqbFFhtaNU0h
	i9S9E7gEZ2AifKJuTl7R4L09865kA48c2b9WeISy/lzRy4tz/teDoZ8ATZXuT2o8+hXe9oZY/jb
	foWDIgP8kv9IC+fiJ0A7656Gks5z/JEf5sXb7yDbpxPdrMOG+NhZlYplrr+K8ItdD
X-Gm-Gg: AZuq6aIQHTp8KBlInhTDRFPxwQ1ZXVhwA8Wq4e2EOTb61KXiJeSyYm7aM8d8W7zU77U
	6Td/ExR2DxIL4yILScUVwGRgmZ9DBwkhR/er085dzBmw0dgxt95oaOZM6DDLm3mSYE0w8GiuL8D
	7TrNOcVCgDwrCY5udcBN6g4CnRr8ngK+2YTQ+xPtqMID8eTkD+ya1uAWY09EYbIobFjnz4LvDiU
	mg3ZBu3nFkpuBc4O3/bqTcADOLVXS/M7kHjPtsXDjejsn6Cu5noXsV+jDz1PWwF/F7bF4u/qzoN
	L1aKnmf7slp6iKGkCHLhvwlCbHsmFMJRiSj0d3gK8VIo/Tk1t7mVRF7MTyN3LIYQ15fzWThnA7W
	3jKPA7H7cI1qBRThQXW3KAhlP6sVKl2beF4z+GNf3mC6Z
X-Received: by 2002:a17:90a:f945:b0:34f:454f:69a9 with SMTP id 98e67ed59e1d1-354b3e46feemr255305a91.28.1770326113911;
        Thu, 05 Feb 2026 13:15:13 -0800 (PST)
X-Received: by 2002:a17:90a:f945:b0:34f:454f:69a9 with SMTP id 98e67ed59e1d1-354b3e46feemr255264a91.28.1770326113350;
        Thu, 05 Feb 2026 13:15:13 -0800 (PST)
Received: from hu-manafm-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b4575897sm74536a91.3.2026.02.05.13.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:15:13 -0800 (PST)
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Date: Fri, 06 Feb 2026 02:44:08 +0530
Subject: [PATCH 4/4] arm64: dts: qcom: pm8350c: Enable Qualcomm BCL device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-qcom-bcl-hwmon-v1-4-7b426f0b77a1@oss.qualcomm.com>
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
In-Reply-To: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770326090; l=871;
 i=manaf.pallikunhi@oss.qualcomm.com; s=20260206; h=from:subject:message-id;
 bh=1tvSpc5JPZvyNRVgbUHPktqMgKRmetSeLRgTJz3+7QQ=;
 b=ZLtdBH6KzLE2JKpy9Gwy3DghjGSmiBqTkJCj6JS6vhDDkWmKM+EukQnWc1YQTKUgEbfEgeT5C
 jcGcjLoy7QQCENQol5X6xiyoqZK2YS+RnZH+Df75/oSn/wYZCcAI99k
X-Developer-Key: i=manaf.pallikunhi@oss.qualcomm.com; a=ed25519;
 pk=oZ3x9jh+FDyPwxHmCbyzEMQHMzKqrH6hUbbL7dEBe2g=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDE2MSBTYWx0ZWRfX0z1M8g9OpKyo
 CdOFZQ2T3kxTvmAnF4+VhmvmcochRTgCIr+CMpcm2+mPAMXrNOVbvY853YQNtYYLbCtTiLwgKbv
 4MBoGJL03vnzGYPBUbY2mDI3jsbxR/yIU6ZTNLUcNKz2L/rFcqxqxnYaHgOq2A5xP7XTFmfZKKx
 Uon1JxvPM+AHjXq5SzGHusl2YQFfzE627w5KbZmaoOfq/qnF6kU16gUjX16eI3iSXBSiSSf9CuU
 LiifmaVvNb/TUaoRKCGrSne9ShZP1hcaY046l8d34x5mODvesB4EMp5wNjXudYaRSfTAoGCvbaW
 T911yizn9otjN6xukuAa2Chj8KzuHsVxR9KAUeImx+TVjad4a3v31Am+SUMDfkbMHVmA4KF7RDA
 LvZXqAu0QF3HOmf2JO/EiQtf2QmlkUOhRhlXBWtgauSkXD/4eTfAykFkkS4kMbt8zPK+1Y+2aFo
 3Luz2SmVfX7WRAsnLBQ==
X-Authority-Analysis: v=2.4 cv=GdcaXAXL c=1 sm=1 tr=0 ts=69850863 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d1WuY26MuSUb2FOOun8A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: Cc6Escnd3FjESSXr9DbeYANA5GGi_pmd
X-Proofpoint-GUID: Cc6Escnd3FjESSXr9DbeYANA5GGi_pmd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050161
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263164-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.18.92:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C07BCF7892
X-Rspamd-Action: no action

Enable Qualcomm BCL hardware devicetree binding configuration
for pm8350c.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pm8350c.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8350c.dtsi b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
index 1a24e6439e36..151a02d325c1 100644
--- a/arch/arm64/boot/dts/qcom/pm8350c.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
@@ -41,6 +41,15 @@ pm8350c_pwm: pwm {
 			#pwm-cells = <2>;
 			status = "disabled";
 		};
+
+		bcl@4700 {
+			compatible = "qcom,pm8350c-bcl", "qcom,bcl-v2";
+			reg = <0x4700>;
+			interrupts = <0x2 0x47 0x0 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x47 0x1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "bcl-max-min",
+					  "bcl-critical";
+		};
 	};
 };
 

-- 
2.43.0


