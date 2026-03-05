Return-Path: <devicetree+bounces-271446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEz6IkhKqWm53wAAu9opvQ
	(envelope-from <devicetree+bounces-271446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:18:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFAD20E2BE
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD95B30B6F03
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4203E378830;
	Thu,  5 Mar 2026 09:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jt6+k1nl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VKgM334I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD163783DE
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701783; cv=none; b=Qenb5XJCa3gGcTsRJpIrAovQug7809jV4HCUW7apGxuoh6LG/GQfK+jJ7auAjU8TKcyW/nKqjQtxjDD7VwIuRyLojIrXmA3Edccn8WW7tPahrpyTYhb8oLP8lWog1fXT/x3S+WA9eCCxDyoj5RSNSR1KB7vBQ8ic39ajCoGBfYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701783; c=relaxed/simple;
	bh=DfajksrGcjq0LJQysaqze8aovqdA8pPK47mtqHPAEV4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IPVjFPxi9d6M1W1dc67+4xBUIAbpBNphnuiR04hUykl1EIxSR/M6YUYTUmkX0jkxVqifNnKhajvfiZX1XlTWt0QLy6ccQDd6XP9vxvDpyJJvv85MdLI7h+X80PaSx12I/M6lJ5teKhqNzsQMc1X4LYbNLZvRohdx1CsT3EvrrcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jt6+k1nl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VKgM334I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6258paRY1193182
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:09:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2XLSH/VllHO4/R5amWSzTjK20IvQyA+qXLE5tuqFPiw=; b=Jt6+k1nlOOCkT+aA
	vlK34BXw/2VI9u8uJ32hfWIlqSIWGWpp3rMq+6O45XQEikP2gXqqYmpgSAhQrOTY
	rB0VixPAvhB+wbbAuQkjoMdwkUTcA55oOnStW9mrwFc4XjrCNoIHvmtDTzeBsFTA
	gn5tNVolmdYZQ51PqI2mfM/mspcMY9GgrpFrseetjRhjlsnhD4hlagimuav/ghcK
	l+VL005+JlKzJBUXDxtew6FGb5f9z0zkuWJh5eDN64CYw5zc5QrG25XP/KzW7cRW
	xqUQB1jEVmZZSZDG5lAZqnjbqSD8IMlEpIzyvHEPHu4juaxMib2JByRr6+YgAUCR
	u54kdA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpqwgauv0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:09:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb52a9c0eeso5823212385a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701780; x=1773306580; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2XLSH/VllHO4/R5amWSzTjK20IvQyA+qXLE5tuqFPiw=;
        b=VKgM334I99nIEYJ7ccmHTbieOkycC4HVjHsbPPvGiBkHjFn6TdwGunHJ5PudLkpkxD
         juDLJ1Hr8REN0p/k3YFbnVg1cX3qFd1R4c6Gf8wOrXMndTP3tl8OhFeWZRk+lHQs68jX
         itNdMef8UH1wMYakWX8StZjX20loxIA7aJojo85iKb+HDyIeS45cJYk817z7FoW/f3/i
         Ptb7C2M6LXkPx67Zn3GR6r9K9LQUpxLMLA5v+7zUS6bT28I3jYALYz4vmKcTApUzZ5Lc
         J1j0lu+y6wGyoo3sfbfYHzzmKDuuSj/5A4qbTLOpQ5zEZbiQ/4OohnyTBfX7oH+WehfX
         +J+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701780; x=1773306580;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2XLSH/VllHO4/R5amWSzTjK20IvQyA+qXLE5tuqFPiw=;
        b=isUsZSnQR/g1yLcwaBX4A8TeC72Pf7U14klRDyBycfqXUBMUY6+AbycOjP/yZg8oCn
         orYHKXC29sNZwTfwwJQptQVo9bgCX9fzplcuS9DtkAodP2ePSfhlfwQwml0Ekbi6K6B5
         w0neM7pLMklUqG/URQsfnYXGyl9yZtcdanN0qP9exr3UeqbeCSZn3XTss3hMxUzVylxV
         xrSNpLAkdTR0h1RBYykR/6S6OhEmwv86LCz+2563S+ffiwq879wPU8DwH1kW70m6pp8P
         ka/GV4+0I667Sd0TipDQKiEsdmCwlMII8uCW7vb/Ka9G2w9ghxucJs85JwE/GmABongf
         Tt/A==
X-Gm-Message-State: AOJu0YwlE06b6A9DB5M4SA6VcswSy9MlzeLFgH8zz7SOPme3MS2x29TT
	LwibCv8DFdISkdhVwCp4iS7S0CoI8OyvLy9QmKtt8ExyUgf7+lClElkFpeM6OPtkWpYBXxyLAdW
	oyNlcNvfEuGdTq1OFaBu1OzL0DWA1jsqY7Ek7rNN29lrLfG2jZd/wTCQTkTDIaaST
X-Gm-Gg: ATEYQzz3A7hWFETJ4Cy/R9xo4WA8Wo7iO2G9MivUzh+DdeCaiMEgzHUQErcuQ0Gap9s
	VrFiR8xSXrdjGkwD1+wgVqqclt4VIRorUoxOYCH5IfmmHLgkc8fkKvFVSY2Z1ZQGnR74mAbaonX
	B18wTkLRH75p/jL3Sj5OG8j2ahKZ1U/y+o5QO5L9osAOBdbWmo3DJOxnUfTs/wQDMsNgIRHzyFk
	C1iOxLUIGe0+dhmfEqSn4uykYcrNdAYSnt2MbYDL6lW1rSob7Pf13y0QbviMYp/EFJYAEaBhyOv
	QaSTno/gt4BPmTdgdndHMSFXEvROGB8CFLP9FKZZ6kVvzpwnoziE5T8V0+uZRvpsksO8AcV3iiC
	pMQqwruI5gR26KWN5S+OppklVdMbfDpjpumdMyeQHcQ4G
X-Received: by 2002:a05:620a:29d1:b0:8cb:72b2:2a15 with SMTP id af79cd13be357-8cd5af12a64mr580767785a.33.1772701780112;
        Thu, 05 Mar 2026 01:09:40 -0800 (PST)
X-Received: by 2002:a05:620a:29d1:b0:8cb:72b2:2a15 with SMTP id af79cd13be357-8cd5af12a64mr580765785a.33.1772701779738;
        Thu, 05 Mar 2026 01:09:39 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abded86esm38817703f8f.6.2026.03.05.01.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:09:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 10:09:28 +0100
Subject: [PATCH 5/5] ARM: dts: exyons4412: Drop duplicated I2C
 address/size-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-dts-exynos-i2c-v1-5-2c8d3df3b9ca@oss.qualcomm.com>
References: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
In-Reply-To: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1333;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=DfajksrGcjq0LJQysaqze8aovqdA8pPK47mtqHPAEV4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqUhJh2kpc2NzBYOMDl24QA5vGv92yqs0YU6wE
 IYIhpS/JxqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaalISQAKCRDBN2bmhouD
 16KKD/sEuHd8hbKj7Ipv6E2ThTTgkiR3ia29G7i6Dw4oQuwwYcaNmp9MuHXCCuJUPH5uFn8fpJu
 IWOvDXHAIsp/YS7G2owceGOyVDq1CvKjVIwuLs+bsXqSOZkQ3YoGnDT8U1GMbz4tBv2FwqOxNIc
 l9uitb330z5LkXufy4MTwCXKOXjF8Me1jrtiIARV1VTHPD2jp7Q8OfP8LbCd7G619RDzO0oEY30
 esA6sw6lwX+qCeVisgThBDUMJ/+3gQzdsfROcZC49HACCGEH4bdTOGQ04gyPKV0LhZV2ZYuGYEV
 n3NJYVdxtwVpYD/zccnR08IpYpXjnYhnexAYc6qgYBWXLPuP1501emnLLs0rS+E35KhY/kQVZ0v
 jxBpnuSZTaxauO6DZ/abHcYD8yqMsPZts2mTUuJe7xUkDOgpDldfd3yi1mPyXx7XwOEp1NEHWrG
 7H8vDheA1N6jpfx3MSTFq8c0539sDZAfhHR3mIhH37H5FwKPXHvUbbcxr4NQB125iovDR9aiHc5
 B/XQ2FXFWh0+tUCnACuvHPpkgReDfIhuL3fsl3u+Rt33ch+2utkK51XJrKjt3zyjrkX/jN1/J0c
 v4xD4uJpMhgCBQhVjCFW6Y/jHLIEK2GzV2vbrX1TNAMph19paAsBSh/fXO5j1cKjrJJwAhE8hp5
 V6OO2rqUzvg9sVQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69a94854 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=os_Ci-yCVAlAVq4Xw6AA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: U3Va1DytYDPjrFa2JFqlMGp-fRxaP0sy
X-Proofpoint-ORIG-GUID: U3Va1DytYDPjrFa2JFqlMGp-fRxaP0sy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MiBTYWx0ZWRfX2gLlY0uRXYZ2
 u1LHyRKJfpVHOFul3VU84b5UgwChuUJ1CwFkHM/wdswx+zUlPzF2JtyUQ7FNh+h4j7GN09hhfkd
 6y9uMXPiSnNleeqAyhO1w3865jZpu5xK0YSi57eT610nAZXu6Gx6YDolqqh2QeIyYWxkkqa7XnN
 JNuZNxp8BsbvNVmBhfs0z2Uo4eBVB3yOVasqolS3TCBhqEvhQer4ZmHjTalL6iRWqxkzYA2GkM+
 9fvmMefeEFbSxiyMeQHnbP1fiyR+PjBNhGZRw30in2AqftCgvvYevshilACVhcfsZ3NH9xbK0g5
 eAFC/Zha9VkMT15FHXWcVeodNDeTl6BWLIenn/BQSzpIngbptUkPJfoA5/ZOrrM7393tXLsG5g2
 n4BChCexWMe9wpBBKCP1us97mPMoShhMVvCgFYilPKfyTifZOaosBhR+04T0L4abse1S4vt/2z6
 dWARy07EMXvyPZTbX4w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050072
X-Rspamd-Queue-Id: DDFAD20E2BE
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271446-lists,devicetree=lfdr.de];
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

The DTSI already has address/size-cells for each I2C controller, thus
the board does not have to define them again.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/samsung/exynos4412-itop-scp-core.dtsi | 2 --
 arch/arm/boot/dts/samsung/exynos4412-origen.dts         | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos4412-itop-scp-core.dtsi b/arch/arm/boot/dts/samsung/exynos4412-itop-scp-core.dtsi
index 7bc6968af9c3..223907e5919c 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-itop-scp-core.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos4412-itop-scp-core.dtsi
@@ -130,8 +130,6 @@ &hsotg {
 };
 
 &i2c_1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <400000>;
 	pinctrl-0 = <&i2c1_bus>;
diff --git a/arch/arm/boot/dts/samsung/exynos4412-origen.dts b/arch/arm/boot/dts/samsung/exynos4412-origen.dts
index 10ab7bc90f50..c5fb551ab352 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-origen.dts
+++ b/arch/arm/boot/dts/samsung/exynos4412-origen.dts
@@ -113,8 +113,6 @@ &fimd {
 };
 
 &i2c_0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <20000>;
 	pinctrl-0 = <&i2c0_bus>;

-- 
2.51.0


