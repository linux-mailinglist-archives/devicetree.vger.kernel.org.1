Return-Path: <devicetree+bounces-274781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAQMLFMTs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:26:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 113C6277DCB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A76703233D7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0901034CFA7;
	Thu, 12 Mar 2026 19:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hgH3Rvsv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZJ4r0eGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B935A407104
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343121; cv=none; b=KJPeYXmYbLh6z+heZwhc3Akhx70ha/YpiHiUNG60w2gZxOSzIwTYDr5A04nz50hRTBs+SW6U6pv50UOaSflI05EUyWCSMNa2rwKjb+7UDP2zemZItoHq4RT8oKa7Te6hdH+7ukGTQuPR8U5OO4HA57hwZcR6cFjNycpQRPRvPSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343121; c=relaxed/simple;
	bh=2eJBBKN0/zvfDyAIv7Teb+AvDJL+jlkPxJ4H9aCMwlA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ocaBiAdVeIg1XWY36r1i/Vpw7cv2ctlSTTm7vf0hHQQBDLm1kxwq/qlZK3ruPlpjuyHZFacxPhDZTclbCn2yiYtjgqxtCj3SKUCreAfnJ+DjfAWz4R/o48z6RQKBWfWJwnQCDRJiQZrXUMa45YMOKYonkV9facFnXYuc2BuSigU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hgH3Rvsv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZJ4r0eGj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CHhNcR4132906
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	abY4X5u7ICIcUlo5VuQ6hpE443JTr5O4WzNv1vb06ng=; b=hgH3RvsvjOt4n8/V
	fUanCzM6FZQFo/+wnURym5s5k/glc4Iz49n1zYBZm1AekOSAkCOtEFPnxEHSlnMd
	0vqIw/RLpsGULaYtLErCPxKyowmoya8MTo976N5/f8iDgmxAVWI8QdV4ptm122Rl
	GDEcq7ts8t6yRxIS1i5Zxt81Em2p3IoqHzgSGCDzinEau4DU+wiaKyHcNwlGCB0x
	C1m+uHnCpQU2UmPv9QBNOavbEsgocemEhGyfncqz2Ob+1RX4QSlQ4aDlpCFXZngA
	Z71rBpR2gz87SKc/5w6ow56fBMfmD9jJYWmBApUskKj287QvmAPThObjeIsiL7eI
	t0myLA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w3ayg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd722c1a69so804172685a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343119; x=1773947919; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abY4X5u7ICIcUlo5VuQ6hpE443JTr5O4WzNv1vb06ng=;
        b=ZJ4r0eGjhNKWALZByKF6z9XY13cc0QCQB9wvovGSEuO38c27m4C6xoVVAoAbUox2oR
         1DILeXtx/6srivgdZqTfYBJ7W6nnJh3zqUJMaoJQpCIE/37diyfdlQdZz3C5/8iB53hu
         k9BdkWk6N9PwBk7b2HgKyU+1A89s83jV8yITfIh/Vo/RGF/k8dSgqQiO5qFTdy64JBYF
         BgiG8gGc1J30um+QQKt1GfXLeCOgma/I8nRVtq6onabkCtyfJtjI39kboHroKu+qweH+
         KZiobfcH2pVHL1hjG1sht60TAxKJw43KHpNkdcw+Ng1dWvw+uZcYxclAQUxuRYNefVny
         hBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343119; x=1773947919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=abY4X5u7ICIcUlo5VuQ6hpE443JTr5O4WzNv1vb06ng=;
        b=vG5EGvSY6pYvClp2awa8/7OPtrH+xc3tKt5FTgTXj878/ZN53pumzxud1dWbR0bVSv
         x2dZGO33iJeYQdGOKK4Ss++B0G1rBS+YbVdmbGrRPpauckygrY/O99G6RaYt5/trrFTk
         m/Eno5RvNScVNVrZqpwH5jaY4AF0JHp+rMTf+tnR4GuelKd3GZPVKISF5oqoKoXlpdJW
         x64PfQWeT/1DDU2KMJ6F2J4O7RJB7v2dg5+v9NUtUdT/nq+uEp/ONwmwWyKuKHNPlsO0
         8ULa44VO4ELTDvRlS9Yh+zllEYAcg6sy8uqXHkdyZcCupYiSI46YG3IBLYduXbnCCjqj
         6jfw==
X-Gm-Message-State: AOJu0YxZBtbbLO3AhjULt8FDijzsiN0Edsn4oxA5XpTSQtmSZYhwhqGS
	pagGCF6zDkT5g7zO8J1+6J6NIky/cstefBWgqnuTidnb5gjaBXMwvJpQHN9Mv5ZRtXdi8EpMMqV
	mKhSzlis6ykWAiw7iMvKX5MRjcrFTbUikvg4RyNoPRjB4GRDiG4Uwzq8t1EnCEZ7K
X-Gm-Gg: ATEYQzzBwMWMgymoDXIoIpuIOOT9WUC4GxXTfDWQ4wb0hN6AD546vN2wLxHRLDPFKZh
	jkYwN6yDx0fbDZ6oFW8/Give9CSx/bRQhMFZ+E9i/NjKbe7EWnCCSCg49MthKjJ/dmZOfSEekYc
	WkIT14eXSoZUvr7XhHpqCP8q7iic0hB3XOKtZLFiiAiIKQsAEaHSLNwufVgLfj74+UqFBAcV2V0
	/WiZpEdcTOfZsYUaEXqk2sRErO0aGY903fRQaxRuOA3aNOgx8DpgGMNy1BHUiIk6es8Iun8ZtD7
	OXB0tfoE/mueJjfKJGbu9RlJA89Yzw5Q3a06MQdttwACFlcnHErGWXTcbOc808D0tLArintTLJ6
	DOHWChF7HdaTeROfhkGGmq0xdft+qK0ABq41wRrH7QiCU
X-Received: by 2002:a05:620a:a1db:10b0:8cd:b644:5ff5 with SMTP id af79cd13be357-8cdb64460d9mr66146485a.80.1773343119225;
        Thu, 12 Mar 2026 12:18:39 -0700 (PDT)
X-Received: by 2002:a05:620a:a1db:10b0:8cd:b644:5ff5 with SMTP id af79cd13be357-8cdb64460d9mr66142785a.80.1773343118787;
        Thu, 12 Mar 2026 12:18:38 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:59 +0100
Subject: [PATCH v2 12/12] ARM: dts: imx6sx: Use undeprecated reset-gpios
 and drop reset-gpio-active-high
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-12-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2852;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=2eJBBKN0/zvfDyAIv7Teb+AvDJL+jlkPxJ4H9aCMwlA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFrMte27J6SRtK9+CWbx3Z06eGmGDG+WO3l5
 c/TjNTCwyqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRawAKCRDBN2bmhouD
 1wUIEACTssPNQiUCrJej1xy53FJ+Rl+xTZon+RDEzfqwv9hf2EDgUb3RCjRfvZ8SfbNDdk68vV5
 rbhELbPJOi7opn6rvtX1D/uXWswMT1TShxTVmMmPK+aNWQYI4Z4LRDOgSLfzPyxcFHndTYu+jD+
 RCP+NYuV+vE+ShmSckXFL5BnKTW3XWBVn361wa53tf9NL6Sjj1OJGRBSm031yGBLLOV6VYW0w4D
 LCcpAJ+E3jEKQY/rLuF6FewkdZM3aXuDH1sS9j/k78FLv+r0g9R1ba+JLNtWv+FuIXGpx0GrJmb
 8b/i4eqNQwf802adrjXmBRaTFcwL0/Xw/UvRgP/YUUQIxjsUnIPnOR1373sIDhL29Yv6WwsOMIA
 zeS5UZMFnc6HD+tC7qpXRlyM/n8KDzgW9Nsr08mT8Br5VZ9OGvi9VYEtp0BeO/jK8Tfe+c1IqA+
 1vlXPK6tRwgHxlO9+0IF+xgXxn7P/L03ks9J7K/EY0EVUiJw29YwWHZ5QYbumTPq7wxsLvicJyr
 NkFxhCzxz+SKjnTmOb7b/RSeD8DzIPhNrV5lZCjxjL+K2Hg/TqTTw+3OX7t35UBrquX3kdKq5RB
 AcxNBcf3xmd05I+IwQxnDZ5s5XVrq7pFloSzoV7h6wZo2GyTzEylcVKV36lK4TK7Cl1ZmCfryQi
 22vFcWTgYQb5U8w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: JWy1wYfdzXvHLwRQUxWpTdujks5RmPZr
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b31190 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=uXk_wYd1RWWgzoKNaEgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: JWy1wYfdzXvHLwRQUxWpTdujks5RmPZr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfXzCsAwD6NNQ58
 GIsNkRhBCl7V4jqeR9iHfRM19cLGqen8gqFNiTaRp80jUyjN3xMrdwi7ceOBjS9w3GnYrPmqdkJ
 BpKGsxYvB2LhjERCrJewSEJduzhSy/qT2mWUFrGLRAre3dPY6V2Idv4ZYHsxHB2lUeiVqMWZ8Km
 eYOWrl2cu1vYCRVw45P66rlsHebSwIfGxsdTUzG8bA5O0H22EQeChFs7MF4r+JEO2Q4cdFcNcwJ
 hoMOJD55PKIgrL+lOnXhvJUidE05FObfUMTLNVVSW2P4qtenlpfL9hcnD+po96N3E51zXQXDyFz
 3xluq/biOS3IM45X0XpLY6ns/LLF+wxlJo2w0y4FtuzevneT1jerthkYINjDx7Nn4JmerodSF/s
 YESdlnqlvYTM/qcufpXesTXym5Xc12asWniGM68bElX8Y7kxJYhhl4+Ko7+PFKx3xBc3fuHIhs6
 rVFFPBW8gP3ElTojSYQ==
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
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274781-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1a:email];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 113C6277DCB
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
1. Fix subject prefix
2. Drop reset-gpio-active-high, update commit msg
---
 arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi                | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts | 3 +--
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts b/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
index 1c1515a854c8..6dd382cffa3d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
@@ -224,7 +224,7 @@ &i2c3 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 10 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
index 3e238d8118fa..11e8efcc1fce 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
@@ -282,7 +282,7 @@ codec: wm8962@1a {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio2 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie_gpio>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts b/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
index 2ffbe2df4776..9be9ee92018f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
@@ -499,8 +499,7 @@ MX6SX_PAD_SD4_DATA7__USDHC4_DATA7	0x170f9
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 6 GPIO_ACTIVE_HIGH>;
-	reset-gpio-active-high;
+	reset-gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 

-- 
2.51.0


