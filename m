Return-Path: <devicetree+bounces-271442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iA8MDMVJqWlZ3wAAu9opvQ
	(envelope-from <devicetree+bounces-271442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:15:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E10C220E209
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C4C9E30518DF
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E517C376BEA;
	Thu,  5 Mar 2026 09:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pxD5fvTF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c5ctAdCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652D837649B
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701776; cv=none; b=LH8/KJqG4nB0MAh1CkxAGgqJjbTNSxPqpEke00gMbZ7SukmFRXK6ASLYAxucHW5WS9L6n5B2O+VzPgcs+QP71UVfLdCKOo6rdMgH6zo+iZKp+AYYlA7TiHGdJ7Jhen8zsWqoJyu9E0lifMBHeO8l/ngsN1hA4IpD1tzsIrYFcjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701776; c=relaxed/simple;
	bh=+Vu0U+uodQM2vRCCFHaRzh/6ti+sDJbXFNI3AqN6BW4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WAVAtSHdyYifnwV5RazBBXo1Fyy91uz1yFWBb1GKHnLyx6SBcWSwFwTbnmUc8DFRwBadg1t0wUWE7/QLaMxg+nlFeKQWOUtrpUNor/o7Pkd7g3U37BrGSa2ULP5gQ5pd8CLixQqNC/uqUXsV/G8LljdYdH4tgXtidt8mUNLTfHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pxD5fvTF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c5ctAdCp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6254ta2U218456
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:09:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ErWliXlFzZLPiPi+HOPVdOq1nti1MLUqJWvk2Mt+DVc=; b=pxD5fvTFh6pv09Mh
	mmG1JNtDSiZN3bF9ckWmy7iusYCqkkpq5wDOYgtTLNJBkM1uJYPplE/hELFSLqYD
	IZN/ysIhzTFA84bj2CifG5fAkRc0F1vTcdw0qEAT1JFNCfAA39g4kUcMO+LAseIV
	jqEDf6QQO8P+IgIYyXNjdE33WRTYjcFSUnxSl0f5QYfKQCIgujTu5rhRh/KO0Qom
	YA+PNwmTtHYabrXYeep8LOHbiduqJd06jShvWqJq81Bm7M1EZ8uO4UiRX+AIB543
	O4CO2s1NPSStza4c323vlr0DL6xxOS1pbhSP4yHQrqAZdidW6wui37F9fE1zpBAc
	F0AsJw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq380rtae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:09:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3fae6f60so5392842485a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701774; x=1773306574; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ErWliXlFzZLPiPi+HOPVdOq1nti1MLUqJWvk2Mt+DVc=;
        b=c5ctAdCpkK34HXuwfH1tY6+x1aJL6XLtWDawj7DE3PEXREUw70m/YUiCZsHbe3EymU
         LrSDyGeBA6SRA4s2xXuRy+o1nGQJEv/p//5JlM3prW8LpWqwpm5gkAwA712cWhJKvbgk
         XjMHpYe+HQTtpishCHQpkGGbIiSF1Idjx3DcCTMBQztIsHtCPvjBGhuUW0GFNDqgIaJC
         azIUTn1c9BuhAJzrhzyBpnIw4WQKeAfQtt1LwVnsZjxmdJ1m3fhgH8Vm4Nph+4OUF6PN
         XVR9EkXm6/fyJ0FPJhpVqZPWrsGsAt24WIN5sHcJXq/WLjTxx7f/5Bjza15U1/lv1bzv
         yqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701774; x=1773306574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ErWliXlFzZLPiPi+HOPVdOq1nti1MLUqJWvk2Mt+DVc=;
        b=E8+4qhbrnel95+LdpwB+KoGeKQ8pN60wU+rYfC/PIPgtsLW/hYIAM9Vk9fu61v/e92
         tAswPyGR6/Org7Agjvps7gSDjWaGkFZUJWeq4smPG9zwNYJ4IPAaZreQcxyJtW5U0DnJ
         wQxzHlBLvTCb6TkgXyQEbkfyTMk4hJKVG21ROdCmXCFjnK7NWE6Oqu357P/wQ6Mk0BbY
         WXvcVcAe7oVOop6FlTnzYGy1/tG99UNlH1gc4sENZ2aEgOc8OzmQC5yxy8RDu4fBw9jJ
         +dVTDhW3KkdiHxLARaQAVRzjxIDzDr63j30UtKiTLhLgsm6XNeCkFsTzyGFnd9T//cjC
         9rzA==
X-Gm-Message-State: AOJu0Yx5lDOv3PO73bCD7zOq6ZhF11QnzTztaLFm/dDT3xW908Qj2lHa
	CwucDtMr+gziZQ1InIF8mbXzJzT65zq3BZAdFBkjHxyBr2oCu9CF+JsMRPnLAp2EcPlsD0j34eO
	35IQw0O+IvXD41jvT2rudtJ5LalFif0pGNtj6PngwSKsTrAIrUh4EUBBEhyNTRuYt
X-Gm-Gg: ATEYQzwLslCTJyOjomkdPGNdIEKIFfSxbJMON2tzoE3qhMhsqk83VEiO5duTt0m6g42
	kokbIWgB2YaA42Tvhh/KSvsuiOLqED8fBnSaMfs17kWyVVvJQhF45eb4yyZ71eZfIz+3bqTpIzq
	vnszvmykQTtb0IHepS9cWHRHUcWmHuf89xxCgNzq0q7sw4uP/KJwKZdSFeZVQKYlO99Zvv9XOfY
	XrllNOYjCQaye0Ldft0rE7F1YJX+gSs/jKAA1s9hSFQ8WojSYYWwteKibjCNV3h393WEpIXaCQd
	5fVPwXvd2caqbk+KTy+qgYCW4JRyUXU/zncPlHWigk7okadbGOy6mdmTySUMoIxoEWtFs77ZWOX
	jYv5ymkpS9RVK4TdJBmTWebQzr1cEkGA+wgLAxbnAooWU
X-Received: by 2002:a05:620a:269a:b0:8c6:df6b:93fa with SMTP id af79cd13be357-8cd6352e2a3mr159774985a.43.1772701773710;
        Thu, 05 Mar 2026 01:09:33 -0800 (PST)
X-Received: by 2002:a05:620a:269a:b0:8c6:df6b:93fa with SMTP id af79cd13be357-8cd6352e2a3mr159773285a.43.1772701773230;
        Thu, 05 Mar 2026 01:09:33 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abded86esm38817703f8f.6.2026.03.05.01.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:09:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 10:09:24 +0100
Subject: [PATCH 1/5] arm64: dts: exynos7870: Move I2C address/size-cells to
 DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-dts-exynos-i2c-v1-1-2c8d3df3b9ca@oss.qualcomm.com>
References: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
In-Reply-To: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7820;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+Vu0U+uodQM2vRCCFHaRzh/6ti+sDJbXFNI3AqN6BW4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqUhG7rT1a7SSEsIbPl+uSbgi21hzQIWjQOQeb
 WQHt99Voy+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaalIRgAKCRDBN2bmhouD
 17OcD/9Qc+iFQXmVgMw7CDXgIImMcP66CuOSMRASFlzz4OH1y6yJmd9aGQ6tp80da/PhHNEOCX9
 f3j4A7PExFNP6NzqkvNJnxaIV9UEnsAY6ytmI0oZbdG+mgLjiBoaEkT6JM/BvOtdEvru+PQWdOh
 ak+6GuNMK8BuXiB8yX5kUrRcDBFKpCpw4YlMwNvgoyA3APHiILYYBIJ+fVM/YQQHEA+Wd7PYccM
 OI5DoVij5CQyu0n+EqtAVqtmwlSPkQiJqoiwcdRShitiZ5S28zx5CK9Zvsq1W/gZ1HgkWsujMKD
 fbGH5q7CcLdTkp/c0ysNjTkfJgVmSGFNafmTtqUkTWklfrLOgmhievdYreptTTfW8ufRvO01JzO
 aBervUfaKTYPqUUS5cF33/HDauHmfKCgitiiZiiBAMbtHUeORCktmitcstZhU3vBIoNS29o23D7
 d/v/767S7Go5kPdJCAFWxVd2xYtjRa7fUjsBw1i9KGuct+VPJ8f39jHRieUI0fcf2K+/eyvfruC
 a6TyH2HozXjDe8kLnyhSuYUGEWmCZYOAgNKWg1J6rlklQGAbg3B6nj+u8na+GVVZdi6PU9whhmi
 RCL3yqqX09eZx6v3TWjzxUSAE7Prd0dTa6f3/UICAVnx2uQCHwTg5SoIU2lVx2rYAzoxHkJvixr
 pKMIdNqQay/jIGw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=I5Johdgg c=1 sm=1 tr=0 ts=69a9484e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=5Z7oIvSdy9aBhWt1b4QA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: MFMIx0lBObTQ9Ehph7-4xWiqcQcwuEJv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfXyV2+9Qo1qQCg
 awWiFuxdqzzZCA6OT8uKxOBONYrxc0mDFTCD77RAf4he5L7bPN937GrLG5d5TlSwJn2FkPNtEjp
 KDpPzAGCevflbRwiX7o/AmG8q5Xwn79G2Yq0E6RlB9HwQir4AmAtZfrZxzjezuJGqKZHutufitZ
 HQbzP0rIvvvaJhUsEneLuDOOJmtT+PdTgf4SB686Z7eiP6C6YQDdgjaI0Fih3coigO3rvW9MTUv
 nePiDHdGpugafA+15r9dBMppzCFM4hAGPwwot0PqA2IGv25wgNI15IHfCV8s+WS+BbyjiMVg+Cs
 87jJT/j3ktXsDboTH8WJVQRt4bOVJdud2r49+l6QQcJq2/b6/gjBSBTDKhm+4grhX+H0A+bqlBW
 VV0WygpO8mh5ay9buIzfCL18UR8zK2/D4HRZxKt5wFBEmD9vTpErbcJTY4QmY78LET7Jz2uKtAt
 Ak6ZfCUH/iLPRyDmApA==
X-Proofpoint-GUID: MFMIx0lBObTQ9Ehph7-4xWiqcQcwuEJv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-Rspamd-Queue-Id: E10C220E209
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271442-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Convention followed in all other DTSI files is to define I2C controller
address/size-cells in the DTSI thus reducing code needed in each DTS.
It's also logical, since I2C is a bus and needs definition of addressing
children, even if the bus is enabled without the nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../arm64/boot/dts/exynos/exynos7870-a2corelte.dts |  9 ----
 arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts |  5 ---
 arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts    |  6 ---
 arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts  |  3 --
 arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts |  9 ----
 arch/arm64/boot/dts/exynos/exynos7870.dtsi         | 48 ++++++++++++++++++++++
 6 files changed, 48 insertions(+), 32 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7870-a2corelte.dts b/arch/arm64/boot/dts/exynos/exynos7870-a2corelte.dts
index 6f40ca4350ed..0888cd2faca4 100644
--- a/arch/arm64/boot/dts/exynos/exynos7870-a2corelte.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7870-a2corelte.dts
@@ -158,9 +158,6 @@ &gpu {
 };
 
 &hsi2c0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	status = "okay";
 
 	pmic@66 {
@@ -394,9 +391,6 @@ vdd_ldo35: ldo35 {
 };
 
 &i2c5 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
@@ -428,9 +422,6 @@ proximity@48 {
 };
 
 &i2c6 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
diff --git a/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts b/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts
index d685bc0703cf..36c327668db5 100644
--- a/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts
@@ -129,8 +129,6 @@ &gpu {
 
 &hsi2c0 {
 	status = "okay";
-	#address-cells = <1>;
-	#size-cells = <0>;
 
 	pmic@66 {
 		compatible = "samsung,s2mpu05-pmic";
@@ -358,9 +356,6 @@ vdd_ldo35: ldo35 {
 };
 
 &i2c2 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
diff --git a/arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts b/arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts
index 09f2367cfec9..de30d0970336 100644
--- a/arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts
@@ -383,9 +383,6 @@ vdd_ldo35: ldo35 {
 };
 
 &i2c5 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
@@ -409,9 +406,6 @@ accelerometer@1d {
 };
 
 &i2c6 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
diff --git a/arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts b/arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts
index 1da826ca1087..079b2b581307 100644
--- a/arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts
@@ -334,9 +334,6 @@ vdd_ldo35: ldo35 {
 };
 
 &i2c1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
diff --git a/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts b/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts
index 29e124c72e9d..29be4764f84d 100644
--- a/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts
@@ -398,9 +398,6 @@ vdd_ldo35: ldo35 {
 };
 
 &i2c1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
@@ -438,9 +435,6 @@ rmi4-f12@12 {
 };
 
 &i2c7 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
@@ -464,9 +458,6 @@ accelerometer@1d {
 };
 
 &i2c8 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 
diff --git a/arch/arm64/boot/dts/exynos/exynos7870.dtsi b/arch/arm64/boot/dts/exynos/exynos7870.dtsi
index 2827e10d6962..19f9ae783587 100644
--- a/arch/arm64/boot/dts/exynos/exynos7870.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7870.dtsi
@@ -220,6 +220,9 @@ hsi2c0: i2c@10510000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_mif CLK_GOUT_MIF_HSI2C_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -422,6 +425,9 @@ i2c0: i2c@13830000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C0_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -437,6 +443,9 @@ i2c1: i2c@13840000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C1_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -452,6 +461,9 @@ i2c2: i2c@13850000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C2_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -467,6 +479,9 @@ i2c3: i2c@13860000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C3_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -482,6 +497,9 @@ i2c4: i2c@13870000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C4_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -497,6 +515,9 @@ i2c5: i2c@13880000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C5_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -512,6 +533,9 @@ i2c6: i2c@13890000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C6_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -527,6 +551,9 @@ hsi2c1: i2c@138a0000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_HSI2C1_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -542,6 +569,9 @@ hsi2c2: i2c@138b0000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_HSI2C2_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -557,6 +587,9 @@ hsi2c3: i2c@138c0000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_HSI2C3_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -572,6 +605,9 @@ i2c7: i2c@138d0000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C7_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -587,6 +623,9 @@ i2c8: i2c@138e0000 {
 			clock-names = "i2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_I2C8_PCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -602,6 +641,9 @@ hsi2c4: i2c@138f0000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_HSI2C4_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -617,6 +659,9 @@ hsi2c5: i2c@13950000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_HSI2C5_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 
@@ -632,6 +677,9 @@ hsi2c6: i2c@13960000 {
 			clock-names = "hsi2c";
 			clocks = <&cmu_peri CLK_GOUT_PERI_HSI2C6_IPCLK>;
 
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			status = "disabled";
 		};
 

-- 
2.51.0


