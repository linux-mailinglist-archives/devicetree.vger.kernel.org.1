Return-Path: <devicetree+bounces-259763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNoFGad4eGmdqAEAu9opvQ
	(envelope-from <devicetree+bounces-259763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:34:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 199B191194
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 010883048059
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A9A2BEC2A;
	Tue, 27 Jan 2026 08:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QQ1H41g6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DzAQOd8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711D2BEFFB
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502860; cv=none; b=IJ2vLYBGdaBoeYGTFsNlQRQtet7U3EVTow4UL6rR8qh8kL4yHN3bMyDNG5v7t2fuf2ndzD4f8HOKOML/9UXWgv5maY9a8gB/DrY3pFPMZz8UrEYghB07AKwQSb4k342iezYeO4oXuFozcxGSmt91E+uhBRuBsoG5uk9ujSUr4C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502860; c=relaxed/simple;
	bh=/ZMmm8z/CzK9Ydn1qk72zGpHkz9/CApKnE2xT9rSk5A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WmbeFpAP0EH0+iJa7Y5TlRzf+HLn8Jr+diN5roGV7RWRcBdBAXBSD4vta/SoL1sPSYoKem2S3dkyQjpylfwdOtsIvjvTWJXFvdLhQmr5M0gj70pK6tXCUqaDx/W0dMPB1hQiJvm61kSmyhErNDabGZntLNawazZz8Vc3631cSPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QQ1H41g6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DzAQOd8V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4U0Tg3857550
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6T+0bGfJO+QEwo6eacVFOYxwrvZQtgEF9AfHVdIHomI=; b=QQ1H41g6HGviYmJO
	QQeeZNatjK79cSdq3ULP5D1a8HAYtlVa05Cib7kBhlgTtR50TK0q4mxe+euAW59F
	BSaWIIAtL6I93Atuq/K5OFiaY8gZLz8EETEKOQbL3SZA99sP4SYknd6OfSXrl+3w
	nB8oWsvoOJQMm0Qn0FgwPgfvAgBvS434qnlLZJCmDYrjGpmnYnz0PG8I3bHDRIgf
	75nyPKbsFL53j9xIDdq2Yd+QIlNQJ2NNB8wEF9ac9UkXSjd817foZRg5z23ZHdHe
	vkiyr8j2y7YBNSJmXbHU6unZYtwHR47hUJsjZfJ9gyDm/sOawIfe5cEnI4qYbRBo
	3gI3cA==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxffs1x1x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:17 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1233b91de6bso9244496c88.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769502856; x=1770107656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6T+0bGfJO+QEwo6eacVFOYxwrvZQtgEF9AfHVdIHomI=;
        b=DzAQOd8VOwgxL0q0ME4MsQ+nUjw3Y2dge7Vq4zEhMiknu0xaBfVGxJEunGtrlkBQZ0
         TkYM84hi22K2OU5jTbc6UEBpywXCtVoMO54tXmvkpiAtRmiuWOReOc3Offi258Ruk3XX
         RZDtV/YtgTwYkQ8qrh7hX90WuUqPYxQYDeEQP29uH37Wn1YGqew9GLHDnm505N4G+MnN
         QTI3VScfZIwIPGid9A4aQCkiYhgAdrUq37esL0Nd/A90YxC8X9TJOHbGbAfHcxuFfd2W
         eqM+52G77yTRFbyKslUVz2fwEUroxCxfJmtexUtOdTY11C1wP4GG7iOrBkaxUjSyIi9P
         SKEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769502856; x=1770107656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6T+0bGfJO+QEwo6eacVFOYxwrvZQtgEF9AfHVdIHomI=;
        b=IRLUSqYrg4hd1lnv/DEfXlUwK1XeUwMqFEDoKVK4BhL/dkVmiR6B7SJLV+USQgZD5K
         MAOGKuKPDjciCftQ0WVOfOlVsga5zVsMnmencG228IfIMY9orOqRQ/CmqAHv/6zRQaRd
         Vn4maFXolxmoTePdcHVd7uDrAYt/ug+QbSV/KXXEIeuQB8nEAZsNzPkY/KE1Hvy5GWNS
         imD6IzElVKLthuLCUqvZlnaKL9Aip7L0gzNEG5wV9VBegTovdBrF9cILpROBX6+WnybR
         oQz3vGLpNhrH+03b8cG3TznUDaqDhomFbIwiyhgBLeNfqScswsvdK02ySfgTgLhdlCTU
         LJ4w==
X-Forwarded-Encrypted: i=1; AJvYcCUlm99+hAWIV5soSdc0engd33z3XROlI8uuTGGPIpxvlnt4L/rLitWK6bxdNrkBNsYFW4Pvm2dzPn6T@vger.kernel.org
X-Gm-Message-State: AOJu0YypaxjBClxeR6GHJwsKaPtLVHWProGYRno5dS00knlBttFMjhdT
	cRzTw3WjBCeVYH+dzUUQTdKp9JMX5MzkCgyiZ04j3BgM+ZQNo42MxuaTqtCTCtsKcmP4hWwFn71
	0hPJfBGgn7NDMKhe4T5Qop3cqwRRHcteezSoKXDP6tm8+oju6qA9H1HE1FEHHXY0L
X-Gm-Gg: AZuq6aJhN606AAK63fanlflAo/vZXg1n45WeWAXsmFGpq3/dg1oPeokKGrl1k/SC/24
	CMzb/3MjCILKDP0XJ6CLc6r/xtMCbpscAYMjt1J37AHEHk8ftz3IfdZPXWuKdbMoyEso3yoZrnD
	7zDy9v12nUNhq8GGpcsz21OnMBTolNxa+BTYFsSLJtCdZSJ6w2N8xmtc6KqpYZt8Sc8N62IBr0P
	9ON62HYj7OinSAOl66Ysv8QSMXgAf+ImiBJnamhRBXEthp/pYvAF7dZNv9i+UEK1tdxWZpIP2zj
	sScAUa33N5E17O1xdr/2+ZEdAFEsWtYg483H2uIXU7J2Tg1CFfmDqcTyo6uN7dQ410O+WW1wO6j
	gt97rBVqwmBxjgGMdiZp1YMjk3YZeFZbiznO8VdvlUtLShTd4zQAumkqdou5p
X-Received: by 2002:a05:7022:4194:b0:11b:1c6d:98bd with SMTP id a92af1059eb24-124a005f4e3mr527932c88.9.1769502856259;
        Tue, 27 Jan 2026 00:34:16 -0800 (PST)
X-Received: by 2002:a05:7022:4194:b0:11b:1c6d:98bd with SMTP id a92af1059eb24-124a005f4e3mr527874c88.9.1769502855657;
        Tue, 27 Jan 2026 00:34:15 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90cda6sm21064235c88.1.2026.01.27.00.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 00:34:15 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 00:34:03 -0800
Subject: [PATCH v4 06/10] arm64: dts: qcom: kaanapali-mtp: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-knp-dts-misc-v4-6-02723207a450@oss.qualcomm.com>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
In-Reply-To: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769502846; l=954;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=/ZMmm8z/CzK9Ydn1qk72zGpHkz9/CApKnE2xT9rSk5A=;
 b=YnsGfZ9dbB1/ND7IxfJ0BimfntJBM7x2Wwgue4IZnoMl09Q99U+wgvLc/ZCM+h7rAI5tcg9lT
 Kb4IVI0Bnn6Czx2KIp10RpUoJxC8zP7sjUxy/nSLA2lcScO/Koay+92
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: CXW6uDQo2YBJkQ72jurvjEZuBIj4SHUX
X-Authority-Analysis: v=2.4 cv=YpcChoYX c=1 sm=1 tr=0 ts=69787889 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6pSOtZClNuHiBGgWezYA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-ORIG-GUID: CXW6uDQo2YBJkQ72jurvjEZuBIj4SHUX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA2OSBTYWx0ZWRfX+uWgPaHEQuwY
 0S7Y8BMFLLDks9SKn+rjyvtHLpnRbA+od8rfTgQxvaS4XFc4GKf+v9ILA3Icl7/mdIvBxJtZ+q0
 88ImEUmTWRRX4dVD7nVbLmqNOO/EHNdTAMYKqTUBJiqkaPiCkMxJ/VPjpBlADpFa4JF0RjpOPUT
 Bn0Dzfgw8f4wDrRlWWl/VF/p4v3Ie1X08c905ZcIzwOkTot+WVedOY17xO8ivdBObEX3IhW0fRz
 CyUhOLi7rvpFX5W4tcGAwhPNP2c/jUOew33oO2LlyJ+rOX2dnvWhGtQhqWa6jqNIvQwijv+kGnG
 GyjWi5QRpEvE1QrTpc8k8ZdojV8VsDWLHSDPMiShW3lUkVfE5i0sw6hqyn0mjukP134sBUDMF74
 OEh2saz9I6VsB99iz1W3c0M94UFV3mnxtWWFECffLJwLa9XwDWXYZ/fsY5f2bYnni9vPT6avsE3
 kdi5C3F0eCl9I72GO8Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-259763-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 199B191194
X-Rspamd-Action: no action

Enable ADSP and CDSP on Kaanapali MTP board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index 32a082598434..3544f744fd1d 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -684,6 +684,20 @@ &pcie_port0 {
 	reset-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/kaanapali/adsp.mbn",
+			"qcom/kaanapali/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/kaanapali/cdsp.mbn",
+			"qcom/kaanapali/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &sdhc_2 {
 	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
 

-- 
2.25.1


