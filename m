Return-Path: <devicetree+bounces-259740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHxuCm9aeGkupgEAu9opvQ
	(envelope-from <devicetree+bounces-259740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:25:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDAF905FC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A55DB3023518
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3BCC32AAC0;
	Tue, 27 Jan 2026 06:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lBIAEP79";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BiHwTv+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D84328B7A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769495072; cv=none; b=gtx8cFy5ovmHi2H4Ao3yu/nwivaof+dThVckJtmo7q1/p5R9ZjGvAABmc0OFnbgSkvXVLaTpGPBHDEawk9MLiHmYUAyF/ag18pZohktH0KTsLWDk/7NbfRBlu1SI4fIm6w3VY6Fu4u1qSAglCdSkFzSPU5eskuyWvUEHWq7NITY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769495072; c=relaxed/simple;
	bh=JF2OvpavDLL5c4z+vlJNpDrjk+fqH7N7RwGl0YMGMPs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=P3Z3pE//sA2NkuRLH8JJ3RqUIejuxkis+mVRKJagIaNvukjGEZUbdRlb8jVuxyxzF9GlyM1lA2Mv3fc2+mXDP8DnL8TUz5Q5XaCtVPIT93HhevBzPTlfJf6MK6oAQ0/NAnyxua6yk6xN8sJwGU/XMlsqvVx8LepG149R6aJElbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lBIAEP79; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BiHwTv+f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4U1rM786605
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:24:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5Kr9bKMakxYGlSFgTESIhkA8M3V+wrEATSg
	fs8YYTZQ=; b=lBIAEP79Vk8ZYMnAvPv2B0FywJFgaaedf01b6FPu0gbTQ0fJadJ
	i7SAHg+ncA0qnmAhQLczSjVFfvTG/mpdCUaHMphH0UGia6Gk4s8nkINS5VVPG6lI
	UVowNhdsJAe4qG4GlOjGE54WaO2VhhMd8hYJjqnFAu7v00v3T6jhwa3+FrgpuPVN
	3d9CDwb7VItarI9FxzpXgTj6yrLKCwk7vPbuqCqCCvEYt+zq/qO173mIsIuTIw9h
	C+FX/wKU4qGsfXSYQBp/Jbc5mvVv2tlxZS6NEP2qU/hVIHLGJB0xQZYogMgoLlFy
	mWdsq5cJQqQZKl3DI66grPfs/1sSQf1D0dg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93hav5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:24:28 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b72b6fc371so1816576eec.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 22:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769495068; x=1770099868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5Kr9bKMakxYGlSFgTESIhkA8M3V+wrEATSgfs8YYTZQ=;
        b=BiHwTv+flMzVdGm9GgO9Alv+vJf2DwEcJA2yN0pXRe0krtE63kHSAw7UPxwpt4M78m
         iAO1DoTBUPFaLgMjRAdHZ40hu5LmXyRuXFCiujAGeM0ssaW+D+EHz9M5jjXNM94YyjRK
         ZB+pQ6AK7CY0Z5pMP0chzlmJpV+IdWati08q7bsff+f9ytlefEQ9vFQHt243uOPgLoAe
         xv/cGutKn9uqBIZI+H4tHPePNnX2wlQGCb169EX61E6tITPgqvvg8GlIFGM7XrQNSPHf
         dRQJKH9dsVrYUO0o+B3WBwWYyxJ+ebJdG7gtiXT63h4LcERcXP3jAHn0y9wk7hu1cEpT
         RaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769495068; x=1770099868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Kr9bKMakxYGlSFgTESIhkA8M3V+wrEATSgfs8YYTZQ=;
        b=XEBII79mV8mK2fVZ0exMmwjscs8TAdJbzB4Ck3j5php5HEOuQtY/bIE7XyJ0IVPw81
         Dpj/JMzZTQhz8Wkzh6vPIdi8A5+IXuCLpSIaR5Cm9ClwCJbYHBl7DwS/KboNtBMJ+Yyl
         DkmTTXvOgXw2ThYtKNXIN0f7WClwNXbcajAvs/Zsoi2Z54U8DQiE2hI9EQNjS2/NzhTK
         owATAFn2dMtjJAkpz3DMuMA8K7lTHoYpsHMI1GdyEjkQKvCMeV2TnHR0EByKCqQXEo73
         okr/kOta9E6qZFX0RNrhUrnitooVAcy1ULv1wI6W+h3zSbQutmlOj39+c7NNyp4jRGzK
         W2TQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrpFRW+5xXhwEg7qCJnPFN0GAS9M/jnl8j8i5Nwq+nGPhCbPoxqL6WIQ1h/kCxbL4rpn8eouo+cdms@vger.kernel.org
X-Gm-Message-State: AOJu0Yws2DywNIt+s44sDXM2c4nyhkM7eGD9Zm82CjaH5QRtJm/4b+M5
	Ygl0bJTGPyUuA/BhFqOK4BmJ94X8bK7otFCtgqy0JU7vOSry1OBorDax5H/EN6AQdA3KgeMHxgU
	kJUPdxh0EgDphhGZ4KFAhpFCDQYsfuTVoKl1PvOZhnUnEypkxl24aInHmpo4lsXYM
X-Gm-Gg: AZuq6aIIxPgfjrBeo+yw94bz8v/vZSgUK4gIKSjGJHdCp5cN4B9ittiZzF/iDyv+X/g
	XKKI0ubuq+phmOGi9rnfZhELQ2SPtNbjhoKLX2LsrT1E1YgsRNsJ5E67BcYo1dS5cJnMVy+5+jX
	YS0jnu4CrmQNgiyG7UoA/MIGxY5AdZzRUwdNjflXEeAyR4vP0WKvieWyKLh+nhxO+6V2hwTolPw
	Bn1uuTZMGVitQgZgYnxaAtw+s3CTaDk3TPbD2K0wIrTsHwZhr5bcrkzDWFj8JnVL8LsJaml2eb0
	5QU5jiuH+qi6wK/gQcLHFia2ZVA+iIC9ZDc0PHx4q1Zz6+uM2FmpP0raJNNlrXXEzasro3E3Q34
	ci1AVv4s0Z34xN9cbwPNNI6yab6Q8A/Z72SYhPVT3e/jP/sDZorl4Bew=
X-Received: by 2002:a05:7300:7307:b0:2b1:7910:b102 with SMTP id 5a478bee46e88-2b78da133fbmr527377eec.37.1769495067822;
        Mon, 26 Jan 2026 22:24:27 -0800 (PST)
X-Received: by 2002:a05:7300:7307:b0:2b1:7910:b102 with SMTP id 5a478bee46e88-2b78da133fbmr527372eec.37.1769495067340;
        Mon, 26 Jan 2026 22:24:27 -0800 (PST)
Received: from hu-liuxin-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b73a9e1bc8sm15799468eec.22.2026.01.26.22.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 22:24:26 -0800 (PST)
From: Xin Liu <xin.liu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
Subject: [PATCH v2] arm64: dts: qcom: hamoa: Add EL2 overlay for hamoa-evk
Date: Mon, 26 Jan 2026 22:24:25 -0800
Message-ID: <20260127062425.1084673-1-xin.liu@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA1MSBTYWx0ZWRfXwSlNgGtlOFH1
 Hr7X+xId4l/5z4yObT1m8ra3ZNLvFBSdz9tGUq5SPCs26EdsBufSsTjkpvlb5np3Dr54VgHI1Wo
 KA9+iOUTqtlEupHzFkCf4F0QOz3wEOJq/o5/wr82SsRzhgQsCRoQlY6P8CznWvI3L4tW4LGU2Pf
 cGkfmMYW3a0sS11j6x0+ebx1EHhGlqjx8R1acHNaa422tV9zaAp3gRME0w/vFUJg0CKT7lTt2Xo
 xLjUligmhh3BGvLPXYEpx3zLJIuAYd+qQvEhclxsv9DzX8O97PsgCJNkpEJUqgrw0fdrn2KWmQN
 HG9k4iuHkUV7H+dpBx5M6VB3R5zJGAsOt8pKLwzLWwxHB6teHIqulGE2sIhIMaJX5T6dQigkK0r
 uX5QyW8pUz6TlvHc/0hAs39rnbVBoR6WaUY4T4sBWHi8KsWHQXhrRx1N+WL/3JUUuLdYL7XyHMF
 3lrSVvCXd/Le+zgljeQ==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=69785a1c cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=T-lse5AFNF5OJCeDb7sA:9
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: 95POrXZh40hiNebqArvwebITvq4DT18V
X-Proofpoint-GUID: 95POrXZh40hiNebqArvwebITvq4DT18V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-259740-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BDDAF905FC
X-Rspamd-Action: no action

Add support for building an EL2 combined DTB for the hamoa-evk
in the Qualcomm DTS Makefile.

The new hamoa-iot-evk-el2.dtb is generated by combining the base
hamoa-iot-evk.dtb with the x1-el2.dtbo overlay, enabling EL2-specific
configurations required by the platform.

Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
---
Changes in v2:
- Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
  Fix the indentation
- Link to v1: https://lore.kernel.org/lkml/20260125023521.3862114-1-xin.liu@oss.qualcomm.com

 arch/arm64/boot/dts/qcom/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e8..b10360fc72e6 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -14,6 +14,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk.dtb
+
+hamoa-iot-evk-el2-dtbs	:= hamoa-iot-evk.dtb x1-el2.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk-el2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp441.dtb
-- 
2.43.0


