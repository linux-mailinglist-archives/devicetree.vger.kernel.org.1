Return-Path: <devicetree+bounces-271445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIF4FTBKqWm53wAAu9opvQ
	(envelope-from <devicetree+bounces-271445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:17:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F0620E2B0
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:17:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6AFCB30B1E7C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95A0B3783D6;
	Thu,  5 Mar 2026 09:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S0+dBSzj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZcRh0Xnw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA2B3783B4
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701781; cv=none; b=dWV9wbltE26JGz6HquIKX3OqgPv5+pICQZeWIDZdVv+VAVeFoE+jgbVLaUimIdX7k6Jbmpjz1uU1a9u0WvCXaZE/gDD/rjrkRf/9mZLIc/TkL2o7LIfMFOZEcAolvDyn1DkrWP08F68lnjC54MlQ1FUFd+iLC9dUWlRsm5Dbm2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701781; c=relaxed/simple;
	bh=t/sgi7P0rEH01LTRs/rGMHpg3gopQTSzKBVQq6gpe18=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kX/XQ21pqIh24oGh1/dDc1rZ8QkLkrUYWxfsSAlTSUsuMMRE5XKwwC8jNB6pdT+NMDVwqjGa6m/NInyYzF0AkjrIsjhmD4CgGxv+f6H7i4z2HBZE+4O1fAXDTJf8B7JryK3vcUA5tLd/IdXdvhywNBSLBaHFFT/XO2cTdIQTETI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S0+dBSzj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZcRh0Xnw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6254tXQR218418
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:09:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OOhXGxZIJ8v5LzBKTzgeyUeFw8EGCrGa+cTSiBNVIxU=; b=S0+dBSzj4cwEJ2zM
	xSrD7HqQ9miYhvpKaUwx646pGsHlZZ8ODjl1P3QMikTbAOgSryaGtiSphxfczwbG
	2hnpM89U2GOdGBpsLfnDqCfGARIBp4xZ6crrJXyCEegM1ei583iVoCo8J5gX3NBh
	e6cIJ6eIHXXVv6KL3kMIGd/HwpG1KCj5qiJ5rUDrlgxrxXe63X8ziTQ+kb0i4OSf
	razlEh5EY3BrzNl03Bq7heYu2IOqgJjEW/HEZh+IkhTVku9f2DPjr00UlLXcxzzr
	OXZF/7Nq3LpyEosKQKZwIbNzl2D9G/tDiFph2BsW8UCMUvRWpIMxKC9BEVSKA+4r
	Bo24xQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq380rtau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:09:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb706313beso984561085a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701778; x=1773306578; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOhXGxZIJ8v5LzBKTzgeyUeFw8EGCrGa+cTSiBNVIxU=;
        b=ZcRh0Xnwmrn/POFu//AvReJ7evv12lw0ucUegy/M7ZCAGLsC8MXHIJvXyZeResqslP
         hdZwpVJn0/5ai2e6kbJ3Nh6hH+OC7gXwGYOERFBfM3WeBGQJB0bsqeKWHr4OWmPxpDhn
         5DFTz6p7pGRVUx7CfF37nvCzskopOACLk40H97Cp+2bl4C/iw6fv9kexEwowyJvPn8yr
         6ElXE/UweTXIC6bhUtrbSIEFqebDsUwN3KXdsClaLaXL+1qEwPhbKEuW7TonklbmcIu3
         urmQ4LClJfO2cdhEK26WcybJtmWcC2BInPp7DuXnxh+ptc1UfvcN73RqnvzQ+MEwKBsp
         Xp1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701778; x=1773306578;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OOhXGxZIJ8v5LzBKTzgeyUeFw8EGCrGa+cTSiBNVIxU=;
        b=kup08NmMXQjvWhs1x4OBWWXxkmfvXLJrIuV4WhR6IvxJN1bVFKjbUn2506hhFBKi+e
         OEw3lQqtnG5EEcONDqHy5GhBj6zLbqpmPfyfAwRf8JaVMO/KyyCSb8I4EO50YpInhF8S
         Kyy9t/9LaSV3xqlZiFp4U+KFruHRIJjhD6PkG41w1msgZI8nxDFZS6uHzhD/6v4hNtEX
         KQDQAQ+dR+29tkZfTQS9mVL5kfF9Z3ifP7XnX/m1IbTUYqvH3F6wKPB7b9wthiu/760I
         BkLI+bthCYRvXAg7Uy4yd9pbdA+BtDkbEqysn9yR9TW9wEtO62tyncasuiuEVCz1B+uU
         kr1A==
X-Gm-Message-State: AOJu0YwP9HGByQWGhiA3LFsLJKTNYJVUGbHiE6DTFz8KPbQGMrls6eKA
	1JyglTdZC9N9vrV2nUCaPV/8CjdDm0QXDWOGHhrD9gpMLyX/ceegsH09NX3RaOpzxC09YQcFFGY
	KBHcf/xckkhKvcii1fem5dwb2XzsJibCXXC6TajSpgGWyy81c1aDe/0KjRjLuqTBP
X-Gm-Gg: ATEYQzx3FCz9XOXiEV2/g9E+4CpEkOQt+bb8M68U3zaIS3RydLDMCctL5or5wmpANf7
	1UfSjaz2XBUNHWfd7So+rs+QsekIOQAbzo92bmxvcroPeNP7XAL3vo78OYXlndsUzvSwPo/TqvL
	y4JVVpVeKpiujrRK5FRHXsq/ljAWwFWi8P3ATvmaFHuqOSTsQOj1GXtHqDDdRosUiJDmnhAbnpR
	TRtTKPPzAggS6bSArcjw6WGCNwlhHhU3Snd53i1yMFzrpsHdlRKtIT+qJe0rNFYCK4PRuVIVF58
	d65TMBy86I0lZ1r6Cxkh3WADUbqrORezdW704GgMKjo5bItTeLRq7PkubF001fyT5viOUwibj+U
	fGVigHb7uwoHtDH4eoanIH20jm6E7/lK4IwLpdSWOYvWp
X-Received: by 2002:a05:620a:1994:b0:8c6:adfc:48fe with SMTP id af79cd13be357-8cd5aeff3fcmr617492585a.23.1772701778488;
        Thu, 05 Mar 2026 01:09:38 -0800 (PST)
X-Received: by 2002:a05:620a:1994:b0:8c6:adfc:48fe with SMTP id af79cd13be357-8cd5aeff3fcmr617490385a.23.1772701778029;
        Thu, 05 Mar 2026 01:09:38 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abded86esm38817703f8f.6.2026.03.05.01.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:09:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 10:09:27 +0100
Subject: [PATCH 4/5] ARM: dts: exynos4210-smdkv310: Drop duplicated I2C
 address/size-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-dts-exynos-i2c-v1-4-2c8d3df3b9ca@oss.qualcomm.com>
References: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
In-Reply-To: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=766;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=t/sgi7P0rEH01LTRs/rGMHpg3gopQTSzKBVQq6gpe18=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqUhIqDb++ZjL5w2d02vjNcF0zJCMRjuqZtizh
 hIGsPRIbm6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaalISAAKCRDBN2bmhouD
 12RvEACNUl2XDJOmNnV/wDCuPf1eLG+y1YzjFNCMOt0aI2BIacy6jEcIF7f7EQUKFX+jLYxRXmY
 jI7zvl7AtT+mnH6NIN0YYFM11BdjYCg4T3J/3+5xPEfubFSbGIztbdZ1pkKh++pyhhw0+Z8QB6E
 ZBuuF/JXsUARhUK5rQMdDx/R2s9CUUFCbzwCfDSTyc2RuDaRFGsSC001WsaHNE8WTrljsGVz/4S
 2IHtu7tlf8OVUuQqJEsxlgEHZjp68kATCow047qIzg0NtDRVMWNakjx/bgYNDIgtL0n+1dsorDj
 UU0pjrZNZ6W3BhOK5i1bZMKZnTQ7Eoe3a+0OIEO2Bb+ngkcV722DNV+sygVydykIpeenh2p6GCX
 jWxoOG5mfWvl/IoTp6OzJ5QDv9xoDHJoi4Jy5UZw8aoIx1fXh2Nd0fS5992ZPfD2Eydqf9tfZkj
 tSW1XsBZ3gRSB2YXlNjJBWtHYvfpm7S9r37B3tFEJCXUNjb0GHiU2RqMIcZFnHGHzbnn03Yf606
 y4CK8vUfv2IOofyMNwH9nlFf+mIFezBLcyh7gev0S06DkBNjrnZ585FXTmGYxSoy+fS000iC7xY
 VxXRUskzZdBDdzyzspT9CoRfhT1hOYfEnUaHjL8rPTU1gBjT2/mZYwD044G+xiHjlz4AWu7fi6P
 Eaiv1MhsVRA4HlQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=I5Johdgg c=1 sm=1 tr=0 ts=69a94853 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=_8SJKKBjhkPuRUrh8E4A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: EjMLt_VGG6DoGG5ID5-hU7DwQIHkycnk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX3WRKWUmTg/7G
 vcmtcBY8zwv2uFucdZ7K0qtQt3sqBsAiXgODIY82c5ZAYdoQjC35EInzkxFsCavsmGXFjKsqgzI
 jS8p604AGkhW+rZ4lVhdi6DfuKXZ1aJUkpVv311nfBHuT4NBHYflBLYxl1UPy84kVbmHqdxmieR
 Mq/GIEHhBt2WYZGTD9i9ID3ZgJRzATZGmVnsOkdpCvWuRpoCrTMWk6pgqTbG1JTVmKYBY+ziz3W
 1cc6Z6RN3PiAi54x/nfI17NwCtBsAfKRzyZUjkkO9Rr/EqSKf5ugfXsXbeiwtcNLaWDgV+RvQvF
 bPm8ZbNNH7/N3GMw05IxFEbyhWzNA//b6N/aQ/8t3YNdRUkUwLpKekmnYNhM6fVlN+KZOvDbmz6
 PdlPBiq4J7cWRYK4ahtI7AZYcD21UGHvQJEQaH/TIO3KVcqzEu+G616E933nEOCGcXpb+l8H5+u
 skS1WAdvu0vWgsxLBYw==
X-Proofpoint-GUID: EjMLt_VGG6DoGG5ID5-hU7DwQIHkycnk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-Rspamd-Queue-Id: C3F0620E2B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271445-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
 arch/arm/boot/dts/samsung/exynos4210-smdkv310.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos4210-smdkv310.dts b/arch/arm/boot/dts/samsung/exynos4210-smdkv310.dts
index 18f4f494093b..a6b73a8967c6 100644
--- a/arch/arm/boot/dts/samsung/exynos4210-smdkv310.dts
+++ b/arch/arm/boot/dts/samsung/exynos4210-smdkv310.dts
@@ -68,8 +68,6 @@ map1 {
 };
 
 &i2c_0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	samsung,i2c-sda-delay = <100>;
 	samsung,i2c-max-bus-freq = <100000>;
 	status = "okay";

-- 
2.51.0


