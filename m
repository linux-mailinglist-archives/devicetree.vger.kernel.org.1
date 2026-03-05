Return-Path: <devicetree+bounces-271444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHgjNcRJqWlZ3wAAu9opvQ
	(envelope-from <devicetree+bounces-271444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:15:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 806DC20E206
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C35430AEBE0
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089203783B0;
	Thu,  5 Mar 2026 09:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O47AUWOP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ITGgh7VF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA91377EA4
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701779; cv=none; b=YPUmlETUHocnvPepsw3iL7C1Zq1oRIG6L3hgZbhlP8DsRb4hH9WLBMPyQsTJGuoSgrnYKijaP0sra1NuIaHITxqxVuGXDWFqyL4Jmvr+y6N/JyXJxKPLf+nf+QZzgcPRAOCiuL2/HW38S0+tivBXOBHPm3U3MmZl87r4PsW26vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701779; c=relaxed/simple;
	bh=+ET7cBxh4ZoH3YN/EYv8cNqrlKIIjGzn2UDYqXcCK6Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C5YjDrWwg0gQdYwhL1SkslgsNrVJaAAfzLyHRghaapU4QdPBqTcs3cujcJcRJaWPOI8t1nE0/3fXNSh/uXz/Qc1oCI0YXHbYQMM7hVt1/0dZ8BDCdvg86aHiZlAyBu9u3jArbtJ/tTxvGRpYRbvxA8UXsIaqeIJq32W5h0j4j/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O47AUWOP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ITGgh7VF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625941Dx3160367
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:09:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iWM+zFw9puuVTnXKWNi+w+/4+fyEV8c1VB6uPAwJH3Y=; b=O47AUWOPnSykjiuk
	Y3Ee9exj5809jy+mUUmuMYltHRgxuyzOV/SqdZ+Tc/L4g11ADsXQtweMbYuOiAJo
	rI0pZzj3B5E9tFceZ2zy6bdlspDYp+h90beqjTpgKxhwT9p2JHG+5kYgPud3JhAC
	mzHCS5ylcEeSFghP1cxGJzXkNHoTGxZQpDUAZ+dRkV0yDN1oGmiLM9DWVjUZp8EE
	Hkv5+h9xWD0WKDVlo9S33ws++HV/0PoQDmUk82RKrNKUfAT8XYfFGhxt0p/UlR0H
	mFC2mU1IR0n3f2U8iSKvgbSw5ybVJsUkugVE8cbXKOB9aKbTwp5Y/e2KW9yhj0zl
	XlXclw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpjh5uyp1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:09:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3ff05c73so4325389685a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701777; x=1773306577; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iWM+zFw9puuVTnXKWNi+w+/4+fyEV8c1VB6uPAwJH3Y=;
        b=ITGgh7VF6hyv0jGP1mPs8QXC97qM0syqNFhlimmyDKG2FTn9apQp/djCqdCZy5dsiB
         L4l2Zlt3Rzi4At8sHEnHMoehjaiPo0y71JG/6SGhl84hGYxUAaFN1LJd+xiWJ2HUEYe7
         Py2DJwrACvZD2XvooMNt/4XkurxZXCXUTBChmJy8hvG8p3zdnkRQuoaeKIw9W8e3+kYS
         Ld1We3L498s5IeO9/+US4+Rdt5SVDQDdRC4AYnz44sjK7wnKOzcbNxvZxQeoFicXtlgi
         Rps82FYpR+TESbK5SLNnzbtDHlIkUDtSiJ80+SY4/Ez0+E9ElNTIKK83CpqeM3h5tB0G
         r42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701777; x=1773306577;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iWM+zFw9puuVTnXKWNi+w+/4+fyEV8c1VB6uPAwJH3Y=;
        b=hFaCxxRHlZ7m6NEsQWSs+2qFNxl/roypzCLE0YESHNGQReV0ZYS6+YJWijaTK1tsst
         Ec9EXiLHP03ds1zn6DHaKzl6et+y23NtfYZ3I5/47mLX2vZw5/BG/Sq4O4k/aMRgCWwv
         CXYwKYjLntUC5lkD+2I2oe+odZa0P7A4GpIca9hLOnCkSunYlcNROX/6G+nvqkcnpXZ+
         eVZX7tIVONW3OU/Nzei/F5f/AOgnCfnvWNM0b28muVmqUwGGyRR/d+/atXnZpLHneL43
         dZysLxGhCdSqygUuuM7YRfPJOQytAz1lGsqRXeJOe4FP0vjp50qm5R9lwKdLEuvGTmjO
         qB/w==
X-Gm-Message-State: AOJu0YwzX3ximYaTkYl6M4/AcVBWKbONvfj0m3kJBSW9wEZe/bxigUkX
	vAUg2DtfiQT8G3Fk/lEuZ9gHUInvp30v2ETZd9dMZopFGRHXYmusxhuHcHlz5F4RPhxxdA/hp4G
	jlFnBUItsuAcgDbAd5h69mDQLiGTq1GlieJi5KAzXrPEv3Am8W9YGmxExXPO5lLuy
X-Gm-Gg: ATEYQzyIVYXmK5NmpaZbRLHJl7pEO+Avitzmx0VvvjFR7EC9HhEWIRLi98x3r8pceid
	NxsnY/mOo4bMOi+dgmHwdELt9xjQR9YjUrVxspx7D+AoVzZy2FoodbTDs2BVgvFZdA3+J6vIcOI
	b+xn76yf+uA8LI9WQkjQDgVHA+FigitjbLngbppzWG/YZdYHVfEkXdMhqIJHFRZlC1czr6ftWq8
	kxo1EIElDER2mqPVw5iQR8wnJAYUbu/FUfqgznFFDgSEqFG1EXI9t5DC3NZr21KUUXMOzLkJ5VZ
	WOAuM8vQZu9Agtc9FPZryvAe9/8tg5/+kNYKkoKJbdIxyaZb9NbIshPwrRxeR1gZFXXnzv89yKm
	ajCgkto+zscj3cTcLF1XcH9yL7SlpQvkVGvaPDuo5YTOE
X-Received: by 2002:a05:620a:4481:b0:8c9:eada:f3f with SMTP id af79cd13be357-8cd5afaa760mr560824685a.67.1772701776963;
        Thu, 05 Mar 2026 01:09:36 -0800 (PST)
X-Received: by 2002:a05:620a:4481:b0:8c9:eada:f3f with SMTP id af79cd13be357-8cd5afaa760mr560822685a.67.1772701776532;
        Thu, 05 Mar 2026 01:09:36 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abded86esm38817703f8f.6.2026.03.05.01.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:09:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 10:09:26 +0100
Subject: [PATCH 3/5] ARM: dts: exynos3250: Drop duplicated I2C
 address/size-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-dts-exynos-i2c-v1-3-2c8d3df3b9ca@oss.qualcomm.com>
References: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
In-Reply-To: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2262;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+ET7cBxh4ZoH3YN/EYv8cNqrlKIIjGzn2UDYqXcCK6Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqUhHF5APwpdgOAqymUIGEGtC/e9vFagAeyBKf
 3jTywOELFmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaalIRwAKCRDBN2bmhouD
 1xCnD/9YybO09CYqjGiaazgfzRedT7I3mzW26QoSpBWP57AxsfDi1dBnylZi/Gog6EXrm4+CI6B
 TuDy5K1MwuJ+nsbLxkWZJtjqXDsBcZesczQp1/Cj/8M3wPJYdT1CI+AggyFA5n3RwJbO8/7aDhO
 VWkRNZJaCI79dgMcW4C03eacgA+tV0G2SJBtwfhQo3YsWLp9v7CM0VW62yJ/z8AnPWKlOCnP8qD
 CoMnBrK2he9j1ppabWuXowCAxodgM8jV43a3NW9T2EAZGlKxlvdU8mBT7H6sTyBuuN7Cy955Msd
 V5dw5/o0g46ma5bfbyG4kvzSoF3A4DLUYbt4wjtz86g3XxlMHLz3PyBMaIupXuMYGrfTFzp2j1z
 4q2lNnMxCGvZBxss9PxaZiPvMk6c282BVdlEdmgL73OEPCX6Q8CuMrG7R0aw4zAsRA2PUBjTd0Q
 OKl03w2MeMHaAeOyOEJzp7x/5cKSnXbVXXT69XljhizTAhtrUFsPAawwbPX09wL7BbaS3sWqlyu
 5Z4gmGtV9rrgLIUA+SAKCrmZH1ZmTeVhdaUJJJw2KPoQbcMak5noS1A4rNGhJVtXW+MVYWEFgef
 9O9/KZsSLBSqogcO4cbvmPI3ndunTZIqs4UffzsQLNxL7e4gCC7Por5+9kqfNZGnBgyTH+GfZ+R
 Uz+1A7HrmnpvIGw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: wlVbGvHbH7UoYKNde1V2pVRfSa4BKScI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX1YYB00hbMaFn
 v3r2kJnjC6ADTmbCbbSYQkC7lmn5hmsONozADfNiiJAMql5qP7A3GSnhRUz54raiEJgMCWwrK47
 k5AAfSL5E8B6T/SeJ1w1LmCElzGs29mAmpV6M7LTUrSL7jBK6o8sYgWrUAtJHNnHobC/qI5aaOV
 JtjRmz47/GxzU33GRLI/LNuyGkoyjK0BGF9GOH3of/WMU900aoBUbTOH3h0Dkf0w8c7Ttap7ein
 oxA+0sqAGqSWkej9lTSb/qxM5FtC9EQnVQEol8P0ADqYhp2kFlW1jHyiTpQFKILV9FgUSJG2C+C
 C6XAH3SeFXIKovmuqWTDLgX4dQqij4MIh14LXWEsab4KESsYJ3q/pVDg8C3uN1ZLLfIsgPe6n5C
 I4rWAo98BCjppKSVYEr49yzkXWDYkVCJAQVdPAdr6yoGDZvP6sErn6kUjcNpjscMOMXxw83w5sg
 HlFOakcavsMC0srLoFQ==
X-Authority-Analysis: v=2.4 cv=JK82csKb c=1 sm=1 tr=0 ts=69a94851 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=ARXnZHKw_jpq6KYG4RIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: wlVbGvHbH7UoYKNde1V2pVRfSa4BKScI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-Rspamd-Queue-Id: 806DC20E206
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271444-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
 arch/arm/boot/dts/samsung/exynos3250-artik5.dtsi | 2 --
 arch/arm/boot/dts/samsung/exynos3250-monk.dts    | 4 ----
 arch/arm/boot/dts/samsung/exynos3250-rinato.dts  | 4 ----
 3 files changed, 10 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos3250-artik5.dtsi b/arch/arm/boot/dts/samsung/exynos3250-artik5.dtsi
index 3fdd922e635c..059c0f44e164 100644
--- a/arch/arm/boot/dts/samsung/exynos3250-artik5.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos3250-artik5.dtsi
@@ -74,8 +74,6 @@ &gpu {
 };
 
 &i2c_0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-slave-addr = <0x10>;
 	samsung,i2c-max-bus-freq = <100000>;
diff --git a/arch/arm/boot/dts/samsung/exynos3250-monk.dts b/arch/arm/boot/dts/samsung/exynos3250-monk.dts
index 68236c7297d7..d59ed46614bd 100644
--- a/arch/arm/boot/dts/samsung/exynos3250-monk.dts
+++ b/arch/arm/boot/dts/samsung/exynos3250-monk.dts
@@ -191,8 +191,6 @@ &hsotg {
 };
 
 &i2c_0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-slave-addr = <0x10>;
 	samsung,i2c-max-bus-freq = <100000>;
@@ -414,8 +412,6 @@ buck5_reg: BUCK5 {
 };
 
 &i2c_1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-slave-addr = <0x10>;
 	samsung,i2c-max-bus-freq = <400000>;
diff --git a/arch/arm/boot/dts/samsung/exynos3250-rinato.dts b/arch/arm/boot/dts/samsung/exynos3250-rinato.dts
index 36d2171c1ce8..fa983b732898 100644
--- a/arch/arm/boot/dts/samsung/exynos3250-rinato.dts
+++ b/arch/arm/boot/dts/samsung/exynos3250-rinato.dts
@@ -263,8 +263,6 @@ &gpu {
 };
 
 &i2c_0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-slave-addr = <0x10>;
 	samsung,i2c-max-bus-freq = <100000>;
@@ -594,8 +592,6 @@ regulator-state-mem {
 };
 
 &i2c_1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-slave-addr = <0x10>;
 	samsung,i2c-max-bus-freq = <400000>;

-- 
2.51.0


