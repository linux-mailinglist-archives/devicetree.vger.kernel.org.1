Return-Path: <devicetree+bounces-274780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJI6NXcUs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:31:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F68277FA2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D775930559A6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B494070F0;
	Thu, 12 Mar 2026 19:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="We0lFU1A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fkYJEPnA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6414070F4
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343119; cv=none; b=AMA8xpRum5s1Ljk0LVuuQd6Cn9FhLN9ayAzo7UydR1o9MgjDL9yknh5afiqykCQIS+5AWAijLHROo4SlfTVFUd1zBRSot+EpywTeKozdK+a6g4lDD4v9qLwvovBWgVTYzTMqBNTakIbUFb8ttyCVXD2mcwfYFsiiFAGc9AZ2emM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343119; c=relaxed/simple;
	bh=N3H7+2vtqLg6QQ4dN2zo7tRBw4lRUW7IRodijLAqYE0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FIObLRoJYxH4xW5z0ovtj3L3mn/VIb95DU+lutF00K3NWKluM/R3w0kfRt1pM+BGynQG3byUI6dahxJXhgVc3aw57IPILgeiIb2VKU3vFZw15kyTBmoKcJ/zs71HTVWIGiHhLEDiMpj7p43Yu0c5b7SysLTrJrN5e5+YB2DwRTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=We0lFU1A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fkYJEPnA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CJAoWT4132440
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F5OsB/HItLJlP+MT0p+X93pBrSZTfPHNoWEoN+Lyl2c=; b=We0lFU1AOo0Ik6m1
	PIE39qlUc6OZPhvhMKcm3vRpnV9tnFvTpSoCFLa+qyrfFU2/3hsxk4IovsIkGVRc
	CO4RklWgPCtcThKReHDoUcuZVthvbBfR+Uhvg2CVDiVqRE5BGYdbR3zmUqjUGTDz
	lKk4dIRwjUjihuHgBNZUHEtICchcVA8r5QkgL7gOcEK5IfL1iQQKKd3gn0eLFEen
	rSKNAaEFw5DcTUKqGNzL/ndybkTnNFDYYLJqWndMao8pp2xIpIb4gmxkRzCc8ccI
	rVxf5p3JDBSfoXQiHeyQZmhN9DZbywx/UE5IsFw418bvsM7w3qHlv1guNknlvjiP
	3ejzOw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w3axt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd773dd39bso1001149185a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343116; x=1773947916; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5OsB/HItLJlP+MT0p+X93pBrSZTfPHNoWEoN+Lyl2c=;
        b=fkYJEPnAqt5RfUg5uU7n+1c2XAlbHqv4GiruWZ1tiJfeHm7joeMbe88eP/1/kXmSRh
         l2RRTOooByjkJKdD4/srdoEZFA1lDeIEflAcnmxN8t+rTtptjF0NMRUcJxIBTGJZpCsg
         gvqbubGYUP6aIk9u1UlZ2O/ZG6kN5HeMp6lhCnHP1TrBB2BmrtEITVg0OCdx9nRwm3U0
         GSDTRMlS6Ikh5QZFht7s0H/4d1pxjyPM9YnxVAsjk6hkFxl7lIm8+/tiCD/RbarJNRVr
         NJtTDYLehqT2CnBYAQVey7QGetVrLjgcm3lmuofb/q5RLuOnjghgr/3SpHbKcOZX2ecY
         ZEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343116; x=1773947916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F5OsB/HItLJlP+MT0p+X93pBrSZTfPHNoWEoN+Lyl2c=;
        b=c7z3MOaHTYOsUbDzfyLT+cJ412CmA2CaSVYYeDDoiCJMrSwk2g+3GjPu6MqTtJN6pe
         RN1NKoQpIakT5+vZTyNRnYVndFJwcFqgUcEGNddY1gf/TP9R+AD7puIttNCxJM1dvmp1
         TQMHO+zzFBWYj8wPCMXyiZv+BCxZwynZZOdqo28zIthTtlRRsv6/gKvNhwQzIl4/tmRJ
         ioRMqCgWpa6AMafZ8S5xQhNNE/UoL44ftcV1ckp2pDaEV8rSNTx6gfwVm9mbMW/x3fVX
         jkcgX5/nx9u0UAKZi/ssyFXJjAw3JdmWrriKFP7ii1E3uUd0GLrAjdtLIjr3DU7kS2cz
         BpYw==
X-Gm-Message-State: AOJu0YxD0d3W1UVLAeSmTzzU2Y2AcsgTbIJzyqEWbygyIsxGJJIqDDfx
	eoiYJPVhOe78vF6M4E8fJIg8byX3S+hy5EvsYT+nYp2iS27gROZS9KcZDNYZvynReSbSP1qSXk9
	nb/AWtco7pwFDy39vDlY5IBc9QyZ5cLs81lpHXq0+G6vtMahKUrpaqN6UMrnajoKS
X-Gm-Gg: ATEYQzzB+7ruR0uit+TK1a1vLQ9ez7CCBa/6h7vjiz/5b5aJ09ykXmBXUFIvkgCDJSu
	LEYuNNcNMK8rLWv2Bznb6m+lHLLnV885Dtl7rgY51al1C0CPYN00PuumVH8UXIhDXjiQGEf6ysK
	GwDMl/xhgZlvSShpYKUolAKQ1kQn36vRSZmhLQ9/pVWEkLmDfKdjEGisHxJixJ8qzUYtbPDrtDV
	RGMXs/NBc9PvmqkigbLuAt9n1MmTDdC/tuJS/W1HpffB+rJNW0rJNIMU5IwQ5H4xWJ5Ss1utDxf
	3uzaalfT6DDklR2edA6PLDT7zpS5Nwx6ZnfA+gfIhiJwhuCtgNsYWR0/kTn8LAZtoK90p309uqF
	XWVKdBaRfugWV0ytUCm5OOz+Yz4z94/iwI3D5h8Xd7lKS
X-Received: by 2002:a05:620a:1983:b0:8cd:b33f:1832 with SMTP id af79cd13be357-8cdb5aa5419mr124302685a.28.1773343116368;
        Thu, 12 Mar 2026 12:18:36 -0700 (PDT)
X-Received: by 2002:a05:620a:1983:b0:8cd:b33f:1832 with SMTP id af79cd13be357-8cdb5aa5419mr124297485a.28.1773343115803;
        Thu, 12 Mar 2026 12:18:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:58 +0100
Subject: [PATCH v2 11/12] ARM: dts: imx6q: Use undeprecated reset-gpios and
 drop reset-gpio-active-high
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-11-0d5040eb4a1e@oss.qualcomm.com>
References: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
In-Reply-To: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@dh-electronics.com, linux@ew.tq-group.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6359;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=N3H7+2vtqLg6QQ4dN2zo7tRBw4lRUW7IRodijLAqYE0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFqasB3p5OKn4gp6uF+7tjGNif+YMMHawHjP
 KdHswytElyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRagAKCRDBN2bmhouD
 14hyD/9d882WM29V8Alf41+0m7Cw1LLTS9hrbKqwz2ZR/5qLY5yckb83aIbGX9UJ7KPg1Spm+5w
 W4rtNgxvfURgninwzYzUXLT0xYlJW7zI6AMKzHhBQVFKcjTD+BtDdv4qQTFVk6xjzplR8Q0UdTV
 I9fjoVsByp1dcYtc+pNYJ9D3kXWUrWMRWJSL8Q6bcNJUTnsdEKbs2ua7xyTs6ufXWLn3Bt+GNhE
 BmGqVpEuJ2f6tRgx3Ddl2mR8Qw9igvx7k7xFQRbHZ9pDctnWLdNrRtoSKLzcpXiaitu/g3Qb6UG
 rXBKj55uWLcYU4AU8lW7I2t41Oz+P1/5etL4RVDFQS7Ecu+csBKuum0wrO5nEEvaViJ3tTo/tfR
 HUmcucd6JwSXoEsaptT4HJV+pJ8J9pusqoY9wYLQiqUixcdrWO9i/pkvlCpbRDgeMXQV/q1EDwp
 L5HRTh5lj/kxQH4+3jr3FpkwMrQuI8UTCjsTJuF8nUl1EkErVj/q5msHnf3XH0ysXTxZl6ld3SN
 Jz5bvc3LivSAtGxSZOzHqJ06BcJpXbMqKG/6IpBdaSyT8mYxGn1mhNI3fB+nfJ5LDJstP1m3f43
 N1cAAg4dmqJi7YL3EuQrTNQYIKzlrErI3Z8pgi2oVBpHYxlu6AI7gCU6DlvfKVxGAnLywCMHc2w
 ExoKekrZ1bD+61w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: mFhZDTfl0hMhogUKSFaEE-XYgQ35OBLA
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b3118d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=TSsFHv4FMKH2p5kP-T8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: mFhZDTfl0hMhogUKSFaEE-XYgQ35OBLA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX6WwfsGi6JZYw
 pfSio3YOcLeyhG/Wq6DAW6aX6NL8kaMBSUC1Rq8ExfAKBBh5aJegj6qD2cKIkuDKK936Y3RHBk5
 Mb96EKLC9dCbW4PJChM8fZJdm3tUQNHIRMC6siKHGGI1cROaQzZc+5bxeK7mWTeSXplCmKxgJcD
 BtDqZtV/UGMx2L1ANreUwwXY819ZBpUE7o0nvEaZc9bgDJ/9awJ/cnz6PcaSch9j8kFIe3cg4ai
 AyWCHpaVvIOUDQjAGl5ZTd5q6wD1WkB5zFABQjPTN/wQ3e+J19z7pA0l2kICUefkazvLjTzScPP
 UiNAbNrHtxTtlIpbFiUQXig4HpspFBhMVsEjyWQwHobDJcKzMtemSGQhhV0A9V+3cyZRaHXE9GX
 jVu8TyX95feMHhPf4o3ROD1ilFWS9alqK9/FKumR2iY5UUEP9oSBdP2n2T6CgBY5SXJ2NXgz2PI
 9cjqBH9aTN6PdGr+k8w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274780-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.32:email,0.0.0.68:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E5F68277FA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Linux kernel already properly parses GPIO active level from phandle
arguments, thus we can also drop "reset-gpio-active-high".

However this change will impact U-Boot, because it only parses
"reset-gpio" property for imx6q amd imx6sq.  Intention is to update
U-Boot to work with newer DTS, but any other out of tree user of this
DTS which did not implement undeprecated "reset-gpios" will be affected
as well.  There was plenty of time for these projects to switch to
undeprecated "reset-gpios", though.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. Drop reset-gpio-active-high, update commit msg
---
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi      | 3 +--
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts | 3 +--
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts      | 3 +--
 arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi             | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts          | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-novena.dts            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts           | 2 +-
 9 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi
index b6c45ad3f430..87f6c865f5c3 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi
@@ -55,8 +55,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	/* active-high meaning opposite of regular PERST# active-low polarity */
-	reset-gpio = <&gpio1 28 GPIO_ACTIVE_HIGH>;
-	reset-gpio-active-high;
+	reset-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 };
 
 &pwm1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
index 3ac7a4501620..021d402e1310 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
@@ -146,8 +146,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	/* active-high meaning opposite of regular PERST# active-low polarity */
-	reset-gpio = <&gpio1 28 GPIO_ACTIVE_HIGH>;
-	reset-gpio-active-high;
+	reset-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts
index f338be435277..1aea31902a34 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts
@@ -93,8 +93,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	/* active-high meaning opposite of regular PERST# active-low polarity */
-	reset-gpio = <&gpio1 28 GPIO_ACTIVE_HIGH>;
-	reset-gpio-active-high;
+	reset-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
index 02d66523668d..7de8cf7804d1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
@@ -344,7 +344,7 @@ rtc@32 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	fsl,tx-swing-full = <103>;
 	fsl,tx-swing-low = <103>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
index 13245af8f74d..ff6c16b9a1dd 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
@@ -468,7 +468,7 @@ MX6QDL_PAD_SD1_DAT3__SD1_DATA3	0x17071
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 26 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 26 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie_power_on_gpio>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts b/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts
index cbe580dec182..5a3783d8f15c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts
@@ -425,7 +425,7 @@ MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 8 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 8 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts b/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts
index bf8fde9cb38d..e9a4b9f8015a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts
@@ -330,7 +330,7 @@ &ldb {
 };
 
 &pcie {
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts b/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
index 24fc3ff1c70c..0cd0443b9df5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
@@ -459,7 +459,7 @@ lvds-channel@0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie_novena>;
-	reset-gpio = <&gpio3 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts b/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
index 3bd0e2c9e57a..fbd1dc6f6414 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
@@ -174,7 +174,7 @@ rtc: rtc@68 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 

-- 
2.51.0


