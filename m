Return-Path: <devicetree+bounces-267881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCZYAGmZnWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:28:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 567DE186F5B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:28:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8133F3090EC4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A943396D3F;
	Tue, 24 Feb 2026 12:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nSBHgL08";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h83DhRdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B89396D27
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771936073; cv=none; b=Jqf+TR+qLvU3T8h52Th7nZOvlQX9vSL04mCLGKuElOGCe5dj3SHAyb/5zkDB1gW9s1ePQH9gOs7GRoyNauDQH2UAcIJAfcBGfWTtLQtdmBCoKxk7OjPSDVFZQ+oHGgLTX2O9GgHUXYkzp2VNWGteN1XSHeg/EI6qSqFYJDg7m8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771936073; c=relaxed/simple;
	bh=J9Qef/qoIJidbPmIW/Z2j438gZALQ1kgT5Gn27Ae9xk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=u6Yheqi8CWoROCrw5HHnY01HzcvlqS99YsVkHooBAXxJ8XWjTOexOtGPJT8Xtv8cZj1NBz/+2Mv1qWkFAwBNZzMZGcRm2i6Crs/rD7+OfIhyi9VS7X2+omR1FtdiRMUppZLMl7pGw8VAOpmnh6DkevF4zLuAguwx+KwJcuGrR+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nSBHgL08; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h83DhRdb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFUVp3884521
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=9Ir69B/GEyfS1puBfTgdxzD/7c4cirDkBJ4
	obVkyjhs=; b=nSBHgL08dO2nmd67Ftux2WonYJ7Le4osBhaK0anZmbWilGtSxwk
	dL6adwJahus23lMqCJ3qMS4BduzBmBBjx9c2lfO04DpjzVgLnhtgVxz/81lMqB24
	6u9WgVuxjTRtfKMI4TVinRRhtReBtoNNLbtYHPSyO6vEbtvb+8RYXv+ro9YWGPVG
	gP/rOXdLAj8S2QwQcuw29qjcUEJlfvHlRE5gsiHCrpMsNNs8wk9rlrweGEbqtnW2
	Qqqd9eGg9ZbVT/Uv5IeE2By+Wejf1H1265wympM8xIgCA1KgwE9WZUfVpM2zmJQ4
	bYF+RT6SNVZyEqWV7kEr8bHCnhFByMoFEKg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8u3sw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:27:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3d11b913so4495936685a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771936069; x=1772540869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9Ir69B/GEyfS1puBfTgdxzD/7c4cirDkBJ4obVkyjhs=;
        b=h83DhRdb7m4DP/BtFv42u8gmSCxe6rEMIX6BDm1fx9goiVul6aCIBf1XP3bAnS53LJ
         bDRxUPnPCESAUZ2jJnmxAVjbPH5pRHuNxPHRVtMVc/1gfWbVik8eNIYyeX+Mr1du25YR
         3+bS25wbciQTMg6w2YIlwPV3dYI6CjrjCiUWKlmAnfADrpHvnmnRr/M6o0UxFtGQyb2q
         QjC8l1ZGJdJaH0hT7IJiYmbqhDR67C1sj/St/yU/+EDKJHOtgFcAJ4QnAkezJ8pTUWiI
         4nP2soUYzOlwfb3cag0NgEmEvTotASM0z2cxV2i0TsLL8Fgmj/fveYgkUZHNjblM+ra2
         /uFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771936069; x=1772540869;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Ir69B/GEyfS1puBfTgdxzD/7c4cirDkBJ4obVkyjhs=;
        b=ZETnFW1Jf7JunpCCo8uSUvRKUZlWSKekaKZnIhWaSMXH839uJVCdJwayeZw8OB3XkX
         aIB+Awk4WRR3h6XTIV/JuICwX4xEmZWx0z7t+BbzvL4vsB3pMpHTNt8hCxUB46tvByyz
         fBTFJy9/khZ3ef1h03Z32f04dPkZQNS9Td3yrLSAfpzW+iIpG1OHTuycc4rGpERERgAR
         a3oFDnSmunpDELbDp2lTOa7QkAngPBrygNQG6ZirsI4ehI9VQCE0a+Yz8/jyf0zeBlGG
         ymNwFvIy9YZyRj9yhSSOEOhFj4FERCUB3GrGCXoqJeeCO16F7nPu35+pYG86dfyevFQR
         I4Kw==
X-Forwarded-Encrypted: i=1; AJvYcCW8DnQaiwwSnpJuAJpZVNtAJB/K+y2iS/Sp4vK2az34vsXCZyV0uykJMwLCTV2pIzEYUSUpPheyRV+5@vger.kernel.org
X-Gm-Message-State: AOJu0YywntATFtH6KicEv01VGfTeSDF8xnfU3NRS+nwcrNJ5gzo95q7G
	zNCd1KXUQUl+MArU7uDn5WoZ+5UUzgUH0e1N6VjvtAQaDUhEB3lV9FaNWrfD+d/lSHXD5Wxj+Sc
	uLAYdV3cNFxN1zfaAvxZHr02OfjCbFGSDSeWXog7nEXGLq3NaCAwEmJxDNTxHTUBc
X-Gm-Gg: AZuq6aIj4ri0qY24AE/jBAk6Zb55RUMJZlPIH5jw9E2nm68qqgkgi/FKm9AVg13xB+5
	wAnnsJ2KgEk0ZYPeC7vhR0a3An5HpLxQh/E6GE7Ial8qV+CSHgGlCTOTABXqAGiOew8RwZ1co8o
	WjyMnz8aUZTbGZCY6VuTvG0BIdRxvjIVe1ZOcIHnUNWWk8GNaG1FydAF2f8Or6+6OKVxvV61CXz
	GOz5BbeTSriovsAnufBC4zh++Z2iRYumKwd47UdwvosncwjC4ZH0qn2HhJZEdrjTDzlN0Z2CdQv
	cnPgviLvUXXIen8TPVaLvsCAVJchPNQCaXNb0yyo3rqwtSSNLI3iOFgQ8reDtDyrhPqb8BD5Xs4
	cUF+BoafYwb4kWZdGpbPp0v5glzn2dAbAG2KiHA==
X-Received: by 2002:a05:620a:199a:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cb8ca8c47dmr1409091085a.65.1771936069354;
        Tue, 24 Feb 2026 04:27:49 -0800 (PST)
X-Received: by 2002:a05:620a:199a:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cb8ca8c47dmr1409088685a.65.1771936068880;
        Tue, 24 Feb 2026 04:27:48 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43987f3ed03sm4678682f8f.16.2026.02.24.04.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 04:27:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Jesper Nilsson <jesper.nilsson@axis.com>,
        Lars Persson <lars.persson@axis.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-arm-kernel@axis.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: axis: artpec9: Fix missing soc unit address
Date: Tue, 24 Feb 2026 13:27:40 +0100
Message-ID: <20260224122739.95168-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=917; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=J9Qef/qoIJidbPmIW/Z2j438gZALQ1kgT5Gn27Ae9xk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpnZk7YL+y5BtlCOGbKIsde/kmK84p9VqZKPbbc
 9SBtBQp4bqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZ2ZOwAKCRDBN2bmhouD
 1zahEACLGmkzLLklQhtZqcb4Z4zRNXWDokwSrb46fcOxI0zB4wDMy1U2kfpWP8f3wYQa0F7B00U
 9ad+D0+rDK61kav5GVYNptR5RLuDdjHrsrTy8mBNLLmiWDuSlroI9W6QabvJDSbiwiNVRi/mbnZ
 HwZyac41zwc0Rzw3q1qeSg3Ihd1s4QPSxmg73fkoai+gZhP0X+40xk1AiZ9hCSpXbssBhrfv0EX
 TlHgrjT4e3Jns4OdD0/Z0pFMrg/A2ndK5bTNi5NlHmqEiofQCjht59xQcN/dlSkB2k18bH/RoA1
 6S/+P+5i9LHCcdrfod1We6/SiMBPdk+bipOauy9b0MGm+EL2kWFayd6Xm9zZWpUSzORTUleOUZq
 ePlAPu+BkpuTbnvk5cxSeryvfFOFzL3nqK2R87RjcVG/97X2qTt1goUo1wZRE0eVOWYEZzfqs21
 S9xAew11x/89ijbLyLG+7xrCij6RBwxTz/T/cKOJCzwZ1RibkgbAfXIaa7U0HSEfZ+trRe6dCbs
 EeIXeALKfCHlWdzCFcL+NpSHgZIAer2l0BJWt3riiO7W2kxW0weiSetRni51zPp1hTBjJzWOx6R
 VIp80iF5hvon7OzEN35T3tZy7fv5eUSiEYFuC1nMD1MKhAzmX7p49QSKZEZZgfSSBu9iAn9lf3S z2o266kfRE5+Vkw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: rvxwC52u7d0kAPbCHqthndyJh2jBTkT9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwMSBTYWx0ZWRfX9RH65BMaNFk4
 fRFBk7g79MMVfHzr5FNceA/aUU8h63kiKBeSfgDyA/cDoFGKPSXyI3uJSGW8LscqPbE+j91rShp
 TMBVhEXyH9H83/T8Mn0XGjrPZRrJzAOdJuO7XeIPG3dvTd90YIc+G7o8vkFNIQ/stJ5EC1SORBv
 Q4ULLXjP7nwbe67k+Ia9TPBikZ3+KYeEyrt5mjs/Mb0K+22frR37N82J1Rnmz60/0XyZ1Q74nbu
 5BgL+qKhbppOAqmJys6ezEA0Gk0XqtgAnoYhbN5ORrhCxyJVzXuMsmBy8AhQID+nhebAxfUbN3h
 YWXPCzbRAg9Ca2M3nJRNhmxin7Ft2+KTVrkuZ5R+n5JVv2oauj2swJSY9XPdd6OS4Vmn60DsKR4
 t2NynYONKi0U1g10cIntH5/jbT5r/SdrrS4ImmDglAWQTtaBNhUZv2oTUhWRSkY7Mao77JpxV9t
 C0lAPhS5cehvdRo4Aag==
X-Proofpoint-GUID: rvxwC52u7d0kAPbCHqthndyJh2jBTkT9
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699d9946 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=MnJphn7iKxffC-OSF-8A:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267881-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 567DE186F5B
X-Rspamd-Action: no action

Fix W=1 build warning to comply with Samsuung SoC maintainer profile:

  artpec9.dtsi:121.11-268.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

Fixes: 3ae2b7442cb8 ("arm64: dts: exynos: axis: Add initial ARTPEC-9 SoC support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/exynos/axis/artpec9.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/axis/artpec9.dtsi b/arch/arm64/boot/dts/exynos/axis/artpec9.dtsi
index f644198fa80f..f8ed43c6e825 100644
--- a/arch/arm64/boot/dts/exynos/axis/artpec9.dtsi
+++ b/arch/arm64/boot/dts/exynos/axis/artpec9.dtsi
@@ -118,7 +118,7 @@ psci {
 		method = "smc";
 	};
 
-	soc: soc {
+	soc: soc@0 {
 		compatible = "simple-bus";
 		ranges = <0x0 0x0 0x0 0x0 0x0 0x17000000>;
 		#address-cells = <2>;
-- 
2.51.0


