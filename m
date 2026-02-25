Return-Path: <devicetree+bounces-268239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGAtAZTCnmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:36:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F9619517C
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6D1AA303D687
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D6F38E5CD;
	Wed, 25 Feb 2026 09:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTVVlAJr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jGzONZ/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B899D3128AE
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011925; cv=none; b=UbPkxOJmtCezWmFA+GJAxTdRK2PuPIlvoV2RIuKMgvSWoCf1UIMdOYio8TtUtzDi3oTFBZlzZm9EH/sGTx57xKc91pD2WYWeuhfY3O8YZBs+mYGPHudwlV2K/J4fbCfkfSIY8bp4DP4IN4jWXrv3ylLQqr6VV0OSACK783Vl17E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011925; c=relaxed/simple;
	bh=HotHvEBkOaaBPwVihsqP97kDwErs4wTwSukxdfYJBKg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=F6x0ar1Fh7h+X14nbrYh2tkVlgygpULk4BoBxQtB525NXmdGcDJjeVLA9714PDQ7IZpQ38uB5A1wHOScMgfhTx5S8GOXuVHphuMXWbVzuLLqMlY5gWxWtQKTYKtmJu5l2ofsR7X3R5jM6hctMUgohGuUdIoqm9cO9m6kMpL5Llg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTVVlAJr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jGzONZ/k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TPdG583478
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=WKOYXbrCg8nl8mEaio0AidFk2esAUje5YLD
	D3qjxjHE=; b=pTVVlAJrE7J5brZmtipCGf6Vx1mcwtOUVTT6slXZIDJoN+NsXUE
	4Zlq4LsfSzur+jdjuSZ2vUKJoe1HuPXcbBP7bLFG+xgtF8jDbIDL8jvgvlzSVsGq
	tP54b8kanpI4H9oOSpwzpeWWOkK4Kc7Jy+uWIvepskMX5c1PhB254zvkv93gcmNG
	EZwVpF0d+4YF7rD+ND2w5+/j9/oRV/+PCakqMIDR+eUHH1qEFZm+9kln3EU0ca9Q
	NlIpvQ9ifFyhUF8OqZosmzu2rXBJd+GkcC4rMkh6LDD7/RAlCeyxplIrK2kVoIu2
	Nc/qgqrtp065HS/vowGNUGq5SsW4PpRQUgg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chekjb537-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:03 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6e78c4aa50so4180389a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772011923; x=1772616723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WKOYXbrCg8nl8mEaio0AidFk2esAUje5YLDD3qjxjHE=;
        b=jGzONZ/kam/cPbe5F/pFief9WS95f4BdyKiv5rkNuJJ46+fDcHSONTs7piMDIoOPfA
         ltlyYkoaSDLb3TK4r45VBLo7kJiWWyzBvgR0EaiK10W70a+1BwlBE8u/Jk+EWGGcdJdg
         FPNpwXl3QKvUgFtsNaq9Wom2M4LoanvfI1I6bN/r6wYRpI8Q8gdgBZ/QesVUZ1vl/Tgv
         Vy8QVH/Z/BUBGgbLdAfn1+HATexB8cCQ/Fk6cnMe7jhyH7OVo9KAOIcJy7Zjsn6VsN1+
         6l14kDmpLI/DgcyitJdVo9Z0l/7EeHLOIjWvsqUrB2ZohOF97+up10BbhwDac5MUVP2a
         w8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011923; x=1772616723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WKOYXbrCg8nl8mEaio0AidFk2esAUje5YLDD3qjxjHE=;
        b=EUSX6qFRFDl1XjG0AjSS8yqTWsB+AmAicsmum1eZMStjIeintJjO8zUDxkfNNzu3mM
         5AIk0hgfr4ciE9MQZ3H9US/QJgIOErEIcbAAd2Ck96rtf/V5bTushzqt5vESXy6HYNRL
         e71kzaRHEYrV7CqaxrgYfPqUJ0RrrjCZNvGH2KjgdMcTeLEgYotlTIedZVRT9/PqmVLo
         /Az5xcNUXj1EyC9VHFfAaImiyfUaYnpxbZcRS4XGw8sn6ESDDFi4JzoTKynZUTC04ntX
         eZDrGLwW/XDkeaF/W8jP4wwi0/nAdQ/ZDNP6MI115SLGJJzVpZeRPg8+tHkXi/kMaoqL
         gN2w==
X-Forwarded-Encrypted: i=1; AJvYcCX9nHrNJa56xiY0BalSf9Gnx/qlPdSj1P7phOz2QTVKvv+jjbz2wzrRreOhYMwML8C9+tO6NOzcSUhN@vger.kernel.org
X-Gm-Message-State: AOJu0YwCH19gs9uMGX2LOnis8Oo3bGufdA7AdEH1VdrS93iJHhr4806Z
	z3ijogDxGMmVADVw2QTlUe7AX3uFKddEMBY3NtSfjZFT3RsxrAB5fT5+SO4V649UAcPSn6WTuXH
	keePKWzG8AQASDwOiKz2xwV+dI8bm2HGFTQpF+Y1WqDJ7VgxCH9PORpuaDiOCW4QZ
X-Gm-Gg: ATEYQzwTlVh8+2l0mHxF62/O2DjEboU5TWhiFqjqFBOT5fWWL4QdFSDfeWFDrauKo28
	JNIVasukxaIOT5C50jItJFnaozcv+IH9bZ/1Qp1WRXV5aGxzQU81eUCZ6vlrZe785YM204ncipO
	eV7UNe/qGOZb+tzqk6KK6mfIY/XEDyIfdvz+v55KNUqGKoiHaE0WU1mLtv2zCiX/IwgzmFe3qAe
	TCyXg7jbxTxY7o/tbMxjGpTao82hohRaizzzmUsKkgZhFx8QTc90imyF1QLugfxqFdaus3PV/jk
	RpYLn5uQc26AZ1HiWcbM1M/lIlvP4oZZjZPLI74DOicYL5IOzoTx3P1x1bfFir0byDtw9NJ7NUH
	3bc0tm4koqAV5WfP6k/hMAem5+RO1sO1LN25QfEg4beP8PH5aVJaYSpE=
X-Received: by 2002:a05:6a00:4303:b0:824:ad1e:3b6e with SMTP id d2e1a72fcca58-826daa2579bmr11682950b3a.49.1772011922532;
        Wed, 25 Feb 2026 01:32:02 -0800 (PST)
X-Received: by 2002:a05:6a00:4303:b0:824:ad1e:3b6e with SMTP id d2e1a72fcca58-826daa2579bmr11682884b3a.49.1772011921973;
        Wed, 25 Feb 2026 01:32:01 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd688aa7sm13628098b3a.14.2026.02.25.01.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:32:01 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Enable tertiary USB controller in OTG mode
Date: Wed, 25 Feb 2026 15:01:52 +0530
Message-Id: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RNe+3oi+ c=1 sm=1 tr=0 ts=699ec193 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=BVbIWkHW3BUUPBfwmv8A:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: kpNtsMEq7JxbcvdNpg59XfDdmbEq8Yts
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA5MiBTYWx0ZWRfX3n1UMteTnblh
 J5IeyGsw/EXHOVyxh30IFrSPg1AAAgsPQLodwwfTh7nAGXIocKpVxgQAGg9A7rBe4AMRUzXNHQt
 8FRhvJSi0tGuU0/VUGWgY565V3NXmTLO3ml1w5wERhJVwgkxv3p8wzPNcoCdPSVvkJ3P3tx+MXg
 J6D3TMpiemIL3+KUaxOg8iuU7+xtsF164ouiRs/N3hJGDUrvbW3OiTOvLaRCNSpvxOe/CeuBXa1
 agiaUdB1pqA7nbZf7mMVJWwsnmtnPmctkNRTCC1qMID/59jQYscDoooCGGoC5yIyGrrbo2PxZCt
 66Z4DBrTNuNXsA4hntpaH3QaPQsZGxZoFeiWzGs0Px3DHJp5AElA9D7y3CNHw9gax/40FVB9EoL
 UXYbNGEL4SME8pG/XyXUaxaz7LhuT0rArnWOZ+7XxX7np8ltbwYaNiYLj6x8P+5s+iIsNbf8SwL
 NgZALy4O+mFVuTQxYLA==
X-Proofpoint-GUID: kpNtsMEq7JxbcvdNpg59XfDdmbEq8Yts
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268239-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 95F9619517C
X-Rspamd-Action: no action

Enable tertiary USB controller in OTG mode on lemans EVK platform.

Changes in v3:
Separate patches for lemans and lemans-evk.
Minor formatting changes.

Changes in v2:
Added interrupts for all expanders.
Minor formatting changes.

Link to v2:
https://lore.kernel.org/all/20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com/

Link to v1:
https://lore.kernel.org/all/20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com/

Swati Agarwal (3):
  arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for
    Lemans EVK
  arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for
    tertiary USB controller
  arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 96 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++
 2 files changed, 103 insertions(+)

-- 
2.34.1


