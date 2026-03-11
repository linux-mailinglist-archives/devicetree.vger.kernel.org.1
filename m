Return-Path: <devicetree+bounces-274209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFpcGsGTsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:09:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E3326702E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 980763011C6B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93CEB3BB9E9;
	Wed, 11 Mar 2026 16:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cT+Msicl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BvWNWpdD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D93C3E0C45
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245301; cv=none; b=fHSrZYtKXRfl6FyCRoQYbgDDrkrST3c4NjfjjZ7WaZGeD3IrPilpqy2lvFNCO7QViK1lxoqtkArlqMTBbRdPle8NUx5C6H/iusloeNEEK8D8lnkvcxTXLoJwQQcK9pyvRISfu2m1Z+Q79zYHJnyn2fOxE4h7/vtMvU1+9zgWzXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245301; c=relaxed/simple;
	bh=7wZc9foihLtHxvuom8UQSLuUCqRA15KR99HalA6eYeE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kcXUvcmWeDwJLucWnX6cb70r2aaCyqsGSt7pdY8ZKOApsFm1EuxlxAl2BsbIZYob/eU7+wNgDzCELJaZU7DrSdoQ5YYqk2ES8E9Iw4N/mMEzt6iz1CMwl1ldXr3ocMsIsnSBVKe1qwox7LWw/oQnx6sUtV5NzbYWhCC2zM3nV5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cT+Msicl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BvWNWpdD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BAvEB42622228
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=acwQSi846tDeR6L8sBuJBM
	qOc0a1tZzopD+zdGBMQcM=; b=cT+Msicld3dBTzZaT6CDNLHOLS4TbTwZ1yA0Aw
	5rmBuF1umnq0bZyU11nto70GeN8XagS7yrM6MncKZuHQEHTbHjKZkHDAOcXAdkbc
	MqdE0IrCHdj+waAollpZltvJv+CPde4j3zJtJ5rPh8UwM280ktnmmZ5kq2AgMDxh
	Yd8lULrhNZk2pk69rTYuDE/wAc/N/XAf/1vWZyElqNHX1mm2K8KfekDdNtMUxjvI
	tpkNKcC/k1npqjt6hznhHMeTVTltuZoyzl1zbKL+hE1fWl9uVnwV5ku8zBmXV1zO
	p1xFjOdvFZYTdn0xZetWVVNhK98ubJvqYtyg57805F4z+Kig==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu73h154v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:14 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-94e9d49f7c7so34986829241.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245293; x=1773850093; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=acwQSi846tDeR6L8sBuJBMqOc0a1tZzopD+zdGBMQcM=;
        b=BvWNWpdDVT+EnSrG9xtFrDa8vnpzWFb+66NM6XojAcrjCTltZPnWW28AIysncJ8xIZ
         b+Y+ZZj2uPUTtMHUNS7GfQdX2aNXW0NW8Aico2sY8tywe/7cOhK/bXKHdHcemLWMhqPb
         fYIBxDzAAxYTeeRMBJF88VAqCjy9X5l+tYUYkmv+ZZj6oQg/7CGRMzsPFR8/kLqiWkqN
         wj5RBnMfp3DN3if/BS+HlwdclMoCM48zd+9WtTIBvFjh5ZJPKuP22D1ZyGbJN60S1K6x
         I06TJpADQuYXT0s8sDz2kpLJbO6L8t2Ts9jbv/S0VjFp06wZI5dKiamz/ylvgc7B0MMm
         xkwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245293; x=1773850093;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=acwQSi846tDeR6L8sBuJBMqOc0a1tZzopD+zdGBMQcM=;
        b=LNE/fbwN7n2eA9i0Kh1YKJClUEN/cnphpR7ELrl12KWDulXVed/hdM94YbZmURCrmZ
         4dCF6t/M8rhZvMHvc+Ls5Pk4WbzPCx8C83mSCh1fC1VPJzJpPodKKALzlIKVoENZK+nw
         +jma0gl+DjIiNrFhs3az2HxBQ0VjVZGK+wNcpqTXtBY7m0ur3NTj30ewcEsAifuDh7qX
         8N/8Q46CHPake203LIgKaFm1bcyCdFwZhIAWK0PFbRTcv7NdA+im4vkeFL1JMINkeI1a
         ukEPN2PyWUiwJD3wAnHgbc5iikgjemHEp9rv5CHo8j5g1Cr0QSY9zdzkRjd6ChyTDs+Z
         /eYg==
X-Gm-Message-State: AOJu0YxTwfHZPo+ZrwETGXB+HSVJkJJEoKZQmj34c9bNQdxfrfzVM9yr
	Q+sDQoqSIe7p0W7HyHnksR859mDZ4/+nd5p2RF07XH7tfpq4skwOER9CA1nasXICai2b+GUxMlm
	mB3sy7tUtZNUcZFlmIeVTR9S5TaHO/mW553BTbo5MqcXc/tlRypfMmqhHJzAcNeH2
X-Gm-Gg: ATEYQzyX9lS1b++mti7AthtrrVaPbKqNaJ3H8L9uPYXNw5K0CCHewkIbagqGTzunb55
	YUCwWxO1pV0eDZ/jrGPuI15T74XCvkqN8DChs55ahkJAu67E9VWgV5oihQLMcAoc83TYwIr5xUZ
	RmmFS45OgjPrxgf6tf/dbfCR13lMWbD6Ci5h6hNMuY3J6ZMpxNzaef7HPTvS81/Nlm5r3Pp4Jp/
	VZ0wp3AcJnpVtMwrQbXpcufkTivNnk1x71l4za9KNnoPla3rGqNeVpmYAa+v40EfSPRp0nuaHLF
	bVokCm6cDSX6sYTlWcfCfmf2zc10Dx1Ae4T3pDE9VQUfsTY0SWe5DgXaPJt4T3ZsWcCllyN0hq2
	fN7urq0jOzx/qpG9iuWpLykp9EHvvVLuC/flW6uVi+pnU
X-Received: by 2002:a05:6102:390c:b0:600:d0f:bad2 with SMTP id ada2fe7eead31-601deb258cfmr1501627137.2.1773245293332;
        Wed, 11 Mar 2026 09:08:13 -0700 (PDT)
X-Received: by 2002:a05:6102:390c:b0:600:d0f:bad2 with SMTP id ada2fe7eead31-601deb258cfmr1501596137.2.1773245292806;
        Wed, 11 Mar 2026 09:08:12 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 00/12] arm64: dts: nxp: Use undeprecated reset-gpios
Date: Wed, 11 Mar 2026 17:07:56 +0100
Message-Id: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFyTsWkC/x3MTQqAIBBA4avIrBvwByK6SrSQnGw2Ko5EIN09a
 fkt3usgVJkEVtWh0s3COQ2YScFx+RQJOQyD1XbWzhgMTVBSEawk1DAWzoKBtPPBar84AyMtlU5
 +/u22v+8HlCToq2YAAAA=
X-Change-ID: 20260311-dts-snps-reset-gpios-de03ad20a831
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9075;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=7wZc9foihLtHxvuom8UQSLuUCqRA15KR99HalA6eYeE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNeBgm6UuQFXIJm0gY5eOWLjeBW1CdohPIiD
 D0MN2Ll4ZaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTXgAKCRDBN2bmhouD
 18n/D/92b/Zmdimgv6e8sUr5TlziGq635N5ne+ej4A6FxXmYnaTLAlTGLqyEQv6RKonT7bBDpYd
 OHsLZJ1HGntu6g84DlepRAtPSiz+6cPsiJ6YckI1lBPm0XM2i+ei71liASzXS7AHb6caSlZcWCe
 YxbQy+aH5ou46WpT5TQNO22CDuRY3PpgdKh453OWpiEhFeGySFeD8fevdIwbnbIuJtctmo16k2w
 7kqWYJHuTrlOHPtotncGEmNmZm/iKgpalhh+zbho+mvO1K5dGHxkXDkf6kS8zeU9d2Sy48Thlmn
 PnZAVXPZJcoWh9Fk2E9B5My1aWOsx/TQg4WBZXGCTajtr0vJRCEbR/PuQvozAUYtxmzsLHZN865
 fp0f/Lx4zpY2Jpk/K48/F74CGhfVAcoeMADlLf5mHcScJksHYqbIL43nI/TfUA8033CqbqWrWY6
 gT6930VJOuGXrvYDZZuNmSMWZbe6Vj4MMolM1X4XWDuy8CaMvT9dL7JReQGgGkZhBOgGLoC4auz
 sPry6ko2vLxQsAgSt0wSq16sNmRonismDufygGOO7vCCaZ5AW3m4uQ114N5/hOlbAwfzo5xI8sS
 Y+XeLiO0aR9XhRYi6G89IrfFFKkdomcZ5+XqFGe62MNznQsZ1hcmuii4MudW2NIZvPG/h+ktU7G
 STHHQCCH2R+T6EQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: TnmFuiDxp1tMgkojpRy3adMvW-1XHBIu
X-Authority-Analysis: v=2.4 cv=T7uBjvKQ c=1 sm=1 tr=0 ts=69b1936e cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_YOUY-ToEASP1VAxC5EA:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: TnmFuiDxp1tMgkojpRy3adMvW-1XHBIu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX4c4gMfZnvOGH
 EHaKZCnLpkK3xbcFiLQi1IKHD7W5953lKcVBdpWVU6/yckJCafo7eo90QZfYJnDvP2vTu/nKJKo
 ru931A3QORdj8xBAkyFlvlH1xIl2BGYqfn4C+2tZZL3p5fGQGI7eEcm2H3b7tl8jpwkAyDO8OOz
 yMpfPAJ6G6NHL8Zz6DUS6mgNoFxfN62+dxGHg7EMw86yTjgLaIXigoZB82RGff35sec51JmwuxT
 8LKqUKV4JqsqDz4VMybKmpgfrI7JH5zRjJ+yJfWoe/t7DJbr4ugcX4Hw8bH4PcE6RgJ8ElXOZed
 8mKupcQi61o3tP1YE5T0J3XdFXEJsapLuiiA7azmUFPmyR2b0fBs1lER8p212UA2aQJ7jEQaOEO
 9wK9kuYFRDPrPQy0sCvoeZ8Bn2sxXqSNqCp+JH4ssiS22VbP17SnToG1i0pMsByAECACJcTd4Dh
 OFNHgIlhwRUn4lOuJPg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274209-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Queue-Id: B4E3326702E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

This fixes future warnings expected when this is applied:
https://lore.kernel.org/r/20260311154955.145120-4-krzysztof.kozlowski@oss.qualcomm.com

Best regards,
Krzysztof

---
Krzysztof Kozlowski (12):
      ARM: dts: imx6dl: Use undeprecated reset-gpios
      ARM: dts: imx6q: Use undeprecated reset-gpios
      ARM: dts: imx6qdl: Use undeprecated reset-gpios
      ARM: dts: imx6qp: Use undeprecated reset-gpios
      ARM: dts: imx6xp: Use undeprecated reset-gpios
      ARM: dts: imx7d: Use undeprecated reset-gpios
      arm64: dts: imx8: Use undeprecated reset-gpios
      arm64: dts: imx8mm: Use undeprecated reset-gpios
      arm64: dts: imx8mp: Use undeprecated reset-gpios
      arm64: dts: imx8mq: Use undeprecated reset-gpios
      arm64: dts: imx8qm-mek: Use undeprecated reset-gpios
      arm64: dts: imx95: Use undeprecated reset-gpios

 arch/arm/boot/dts/nxp/imx/imx6-logicpd-baseboard.dtsi               | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-eckelmann-ci4x10.dts               | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-qmx6.dtsi                          | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-yapp4-common.dtsi                  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi                    | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts               | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts                    | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi                           | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts                          | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts                     | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts                        | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-novena.dts                          | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts                         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi                      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi                | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-dhcom-pdk2.dtsi                   | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-emcon.dtsi                        | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw51xx.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw551x.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw552x.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5907.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5913.dtsi                       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi                 | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard2.dtsi                | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi                    | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-kontron-samx6i.dtsi               | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi                         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_max.dtsi                | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_som2.dtsi               | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-mira.dtsi                  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi                | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-pico.dtsi                         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi                      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi                     | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-zii-rdu2.dtsi                     | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts                      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts                    | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi                           | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts                            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts                             | 2 +-
 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi                 | 4 ++--
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts                       | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi          | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi                       | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts                | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts            | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi                    | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-edm-g.dtsi                     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts                        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pro.dts           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pulse.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc.dts             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw82xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi                    | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts                        | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts                | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi                 | 4 ++--
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts                        | 4 ++--
 arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts                   | 2 +-
 arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts                  | 2 +-
 arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts                   | 4 ++--
 arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts            | 4 ++--
 arch/arm64/boot/dts/freescale/imx95-libra-rdk-fpsc.dts              | 4 ++--
 arch/arm64/boot/dts/freescale/tqma8xxs.dtsi                         | 2 +-
 99 files changed, 107 insertions(+), 107 deletions(-)
---
base-commit: a111dbdd99557fbaee8c3d376d6b361f96966d7e
change-id: 20260311-dts-snps-reset-gpios-de03ad20a831

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


