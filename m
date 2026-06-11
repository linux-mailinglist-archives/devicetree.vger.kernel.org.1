Return-Path: <devicetree+bounces-310107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F98hMURGKmo8lgMAu9opvQ
	(envelope-from <devicetree+bounces-310107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:23:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1945D66E83F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:23:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=TN6q7atg;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=bCtV9HhA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310107-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310107-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5491234129CB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E57F341068;
	Thu, 11 Jun 2026 05:00:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA0538B12D
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:00:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781154048; cv=none; b=l79L7kdB+nFOp0GuDtdyLgV3LAGVyR9/q/n9ELKjY9FoIIXCxcVZo3poQjGlj2uFS1S/pzOUEVNZDYA1a3OGG0nsQgEk3BKiwlKTxD+KXFbjPM0cAaevumKTWomL8zR5n0Q2+y+cBq/+v8cJQhTosFm9P3MzFaK7mblQGAHuLp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781154048; c=relaxed/simple;
	bh=P5Im+sQ4RiQy9svGWSz2a/1oqx/m1xRK8Yuj2g8Ulhc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BADyyNWDH2RQQWp1lSzfvukTHYBpX38v0bmS6mnbcQMrdBOLOHaBY+SBX3EY7y+jaFXdOE3tLiRMqz3RE18xQA9anhZKQUCIF0DHxsWbEj4HbwGZWGKdfmvyPXjA9jwxIiULKnxzcQ5rgv00/XaTjM3Ahpm72NG6xlxBc0L/h7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TN6q7atg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bCtV9HhA; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B0Nb1L3132319
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:00:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T8jnGzeAHkjRrLvDb2ZGcwBUBbrscV5ix56nKjRCEoY=; b=TN6q7atgRpTT8cS0
	iX7RfHih5G9pLR+do3kV1ZPnQBqa6rEIB5L0caAiO/I9ui7BHGscN0tpA2N0XqU9
	PO6ifpcCa6VkjekKZguE9fdHzyBR4+o64Kdva7YnO/hYo9fAgO2ALpj8kv/9seBO
	8hJ8QYTTo8aXx/scvtO5U11+obqgjYw4WNjILa7Rj2hRu4Ap4s3du4XBiNhtyoJS
	SkU/VA02OHxAZa2o+2KRSVUkC+NgDQHuMknMNNdRKl2AQ40bJnniQfxHzHMnfhWh
	UFSngkIwsxpqdTEtnnWmj4pEzH/qEWSabflo8GlPp0MDmBjO0toWnUK0SfAQVizy
	RpnPYg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe6shqn9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:00:36 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bf0b7425bbso143068915ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 22:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781154035; x=1781758835; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T8jnGzeAHkjRrLvDb2ZGcwBUBbrscV5ix56nKjRCEoY=;
        b=bCtV9HhAef86PV6OQBgJi2wS4TfycKS0Qtt01bByREZdrw7RGqo1JetOFrneRlFgRf
         AHgYIgICsQ+56sW4XlCZJH/m/nqpe05EJZSCwvHheARJJRllHGcGg80wp7OJ0UwhAQgx
         Pg5Zyj6aD0A7blYODIUAVu4zsatFv2bsfUV51QZYCCXt91vj4/yr5nDJbyVuzCxWFe6U
         LNHljapOUj8FvfgaxMt2DgPL2DfD33+GmwGYoAr+siTnMa+L7MsPv81m0nf4hNvxRJPQ
         wDQpzVQ4Ld5eSl/gXVWVyGeEUyUygKiupocz6sGOheW8XbWgwgQWWupxPd62l0HgXCNP
         rCaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781154035; x=1781758835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T8jnGzeAHkjRrLvDb2ZGcwBUBbrscV5ix56nKjRCEoY=;
        b=aFrqNVfKZAKErvSYyVY+XffuIeczO54jKwAfrFFZLyL3t7aWS9u7pvqiETNN0Mt103
         3+cu68FxKMS7IFF960GulbjOQfBeUKnDeIxnQF9a5PqnDZKo32pytv9m+UstLSolk8Eh
         MsGutpof9Y8Qv1+XXMB57eeBe5BVfrWho7hWraGgTb1kTVVC6ecds0f8EaCbR0wL5Whb
         wwF2NZjwb4oee7PdW0DDXlg8tNWhLrBclpxlL4zNF75CHUvpfV5ejhrMzZyKANswwpqk
         D7KK3nLXbmxggN5EEDDloGJqozVxjrMESyzKOv+0TOQfPkdwqYQdnDXUVB+Ey/2vZ6mp
         RUNg==
X-Forwarded-Encrypted: i=1; AFNElJ+Kry9vwiyCrm9rMkWtmf6RcdFosBqdQNDNe1ZONtgCERrr4FyGVXqT9FBZrkLku8BvR2adO2DWUM9X@vger.kernel.org
X-Gm-Message-State: AOJu0YyDqfUp9Yqg6KdUgh7WoasiZtW6QMBbzvghmuwjaPoAUUHxZrme
	RWXzalL1w03yps95ZhJc4Oa4PvqgMnmrerewdd5hYzEGrpVmq6Si2E+of+Lg3YAEKQQctCOOc0Z
	tT6zkD7l8yeIozl0s3HsNMVRYbGSSeZZpUXXoBFK1PYT6MYdYEZqYYidc8hGwH8i9
X-Gm-Gg: Acq92OGAujbOwarGgQ9AKIUQ6IBWJGNsrnwJ5DhTzjcQPoxVdnP7RL9Gv/hpq4pV198
	TNraZ74SUWCLEzTqddAfRh8vOxHY34yNN6XSR4ntVIisaEztu9edjZ3XxD/sd57RNwgcRyir2yq
	lbFk/kZIK1uvYqnxoaTC2ClwoMzjYsenrPvxzmocjzOyfOuLLAYWv76eoidaNdphWmlAoL1GqDT
	GGHRM0CX9zzuAiUxvuZrNYk8XwrTzYRJrRYNMIudxZ+kGkf6WJev69dtxFrVtbsnaKlbdQNtSrG
	7xf8NpK2uBQOiNDCujX+QskjKwyTj7xT0b00Xi/P+bkM0t1xd26OYBm4os/n1i5rZNrPVDXfkFr
	oXTcNQt5Gbwb8c3pvXhLcd8K8Rzp3XgCFzP208nibfvykQpuOtynGnGs2HMat07SPq7I=
X-Received: by 2002:a17:903:983:b0:2b7:abc0:3bd7 with SMTP id d9443c01a7336-2c2f23a7328mr15069515ad.9.1781154035248;
        Wed, 10 Jun 2026 22:00:35 -0700 (PDT)
X-Received: by 2002:a17:903:983:b0:2b7:abc0:3bd7 with SMTP id d9443c01a7336-2c2f23a7328mr15063835ad.9.1781154030028;
        Wed, 10 Jun 2026 22:00:30 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f8bc5asm276188335ad.27.2026.06.10.22.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 22:00:29 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 10:29:00 +0530
Subject: [PATCH v2 24/37] arm64: dts: qcom: sa8540p: Move PCIe GPIOs to
 root port node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-wake-v2-24-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-0-2744251b1181@oss.qualcomm.com>
In-Reply-To: <20260611-wake-v2-0-2744251b1181@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chaitanya.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781153928; l=1922;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=P5Im+sQ4RiQy9svGWSz2a/1oqx/m1xRK8Yuj2g8Ulhc=;
 b=UonVqP7+dfe+f/5G0jrY2IRouNB7XzvIUk9jLyfguTHN8d0MahOlv29U4tYV3zoV4rAbLWYLd
 vzNByqgwwaWDp1IX5L/pIEhXL5+g8++0Oioc8y81C2aZjT9e9rj975g
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=GbMnWwXL c=1 sm=1 tr=0 ts=6a2a40f4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=w5YLtpWUZy_VJOv5-54A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: rX-qAEJAjhKy191rLAzwtVllJoq1FvQ9
X-Proofpoint-GUID: rX-qAEJAjhKy191rLAzwtVllJoq1FvQ9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDA0NiBTYWx0ZWRfX05J7bWLUz6D0
 Ayda0oijg26up4ZPuNLqbHTmS/fTt/1stpBBu32pE3hKemF/Ze9350Y4X/2ccWNG7RHsFq/mv2h
 eLFL91KSTgmZG3IFWB0gPErX26dvsEVSVE78pKuuBQsH6GZlJlw3d/fTKgYdh8oqgBp1jx5wCAe
 BppszAs5mEgaOQ/GyUUM7Ro7P65q42iXOhy7VQ805HCGOgf9Ph2sdfI96ZzIHcPqhmksvxlDOr0
 Odqk85NwbWvBuuEgSF+WZNe6PGNVpJ/OHviBwFg2iUikUkY4ezjknIoK5rzV6ZDdm8JCZH3vxtQ
 ov4DvX5TuFUthfzBjws9xAYYQ+qsAxEmJZEH1PPzZiGjdO3Wl8zbQFgQVM6aUAM72sFqry5hZC9
 IPU69fjN/haaXnDsf83kVgW92cs7+FQ0zuSuDMCaXss9e3EXPXqqSGe7kOhEf6Sqk+mQ+JaBTJe
 yJ2WG2JdMOSV4sFfHYg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDA0NiBTYWx0ZWRfX2gHPLFzZQjss
 4dIiLo69xbg+Du3GkF2PUuOu7U9Uc/b70JdAQHhz8TTymnrVN6JvFTF5X9mBNmKwWAKS57Ck9qI
 jtzUrcC4tmxrkXUPBSJJYmsmBzeBAUg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_01,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606110046
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310107-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krishna.chundru@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:cros-qcom-dts-watchers@chromium.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krishna.chundru@oss.qualcomm.com,m:krishna.chaitanya.chundru@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.chundru@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1945D66E83F

The perst/wake GPIO properties are per root port and belong in the
root port node, not in the RC controller node. Move perst-gpios/
wake-gpios from the &pcie2a and &pcie3a controller overrides to the
respective &pcie2a_port0 and &pcie3a_port0 nodes, renaming
perst-gpios to reset-gpios to match the binding used in the root
port context.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chaitanya.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index 702ae4cd3d0c..6e73fca4e1bf 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -366,15 +366,17 @@ &pcie2a {
 		 <0x02000000 0x0 0x3c300000 0x0 0x3c300000 0x0 0x1d00000>,
 		 <0x03000000 0x5 0x00000000 0x5 0x00000000 0x1 0x00000000>;
 
-	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2a_default>;
 
 	status = "disabled";
 };
 
+&pcie2a_port0 {
+	reset-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
+};
+
 &pcie2a_phy {
 	vdda-phy-supply = <&vreg_l11a>;
 	vdda-pll-supply = <&vreg_l3a>;
@@ -387,15 +389,17 @@ &pcie3a {
 		 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x20000000>,
 		 <0x03000000 0x6 0x00000000 0x6 0x00000000 0x2 0x00000000>;
 
-	perst-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 56 GPIO_ACTIVE_LOW>;
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie3a_default>;
 
 	status = "okay";
 };
 
+&pcie3a_port0 {
+	reset-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 56 GPIO_ACTIVE_LOW>;
+};
+
 &pcie3a_phy {
 	vdda-phy-supply = <&vreg_l11a>;
 	vdda-pll-supply = <&vreg_l3a>;

-- 
2.34.1


