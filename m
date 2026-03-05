Return-Path: <devicetree+bounces-271441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGq0MJFJqWlZ3wAAu9opvQ
	(envelope-from <devicetree+bounces-271441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:14:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 249F120E1B7
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B613D3086065
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C61C375AAD;
	Thu,  5 Mar 2026 09:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K/6Q9TNy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U0TeJPmV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79F6364EA5
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701775; cv=none; b=fDvJFBrT73Hq3/qL6q6bVrty1Df0n58moWv5iv7YhEpzNY5uU1r+kBCesVgKj2qtn7x8g+qIZlBLLuzKZpY7u228xfLrak/Wgoz1JJelgugphTJGVfy13rWfAoZJd7ccGv56/aMAEl9J6O+Tt4peRIMbNDL92JppfdQDZNjLWEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701775; c=relaxed/simple;
	bh=ai5g8g0+adsS6IS2Vp/pH5BD4m97fOakeCHE7AL2bMI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gdsDpV0rY4MR/XzSytIQaIHEYC1976r7WbyTt+PT9Fj6yim6UOsWJwENrLQANcgXtV98MkUil8zeQ9rM551GgS9Jf2JEIwfx8HzCCZEHEC1jKLbKwjvwUw1gvWHo1aOe8C5spvV5MqRFLTo+Wp/AEnNGtIV0+tQ1ylXNUdMRN7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K/6Q9TNy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U0TeJPmV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62591EoP3482746
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:09:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=O1e/WtirdtbqhjjpDNbqAt
	Xh4FvgzuNdXObhodxahv0=; b=K/6Q9TNyNKLtjRnNnmPU1JR3k2UXIabC7yeq6l
	ERneT2k6JM5E60jWaK7rIzZduj2H/mFRzAY4sepAFHuLjJxN4Hil7chxOUEC1qPj
	KrlN5/HOZGvyYEBGusyKyw1/pBhrDNbLmKis782Qr7Df+myEjYkeQm8fagleWzhz
	NojHbJGyLJyJn9+xKoOyojw4g/yaT6L3jDYQhwiRp2ne+eKUYx2cuvlxHm56VLS9
	at2SsdfVRlwnF/aSap2fWDSdZL7u17d1AsMIlFA5seQkVFNtWmTIku9t/wrrAkl+
	RGMzaAzSmOxFDKgKrupLQ/Ll3N8cIOmXvR59GwA4518ZoObQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wjkrf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:09:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb4a241582so4181659985a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701772; x=1773306572; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O1e/WtirdtbqhjjpDNbqAtXh4FvgzuNdXObhodxahv0=;
        b=U0TeJPmVQ+mHN7S204dHKlzhJ0GdaXejxYtViuOV0eveD+f+iTwbShgX6zBmbQOHhj
         kErK9z95V9qZk1xVNdeHAeD3/az4jDKyctO9Bnp2TJ6wJ/K5UYMpakSFXXbNhzR+3n3H
         LB929zKIOK7YoGimyiBCcDCQmpsCJ1MrQkVWOUobj+QjlzeRJfblVIeIQRAZDJd2Qur0
         kWmBbpTEdVoOu2REiJzPF2zV16a2lLT/lLLQfIoSeXpTI7teuhIdA8wz+XadGVURbtaD
         eG6+RI9EWE6ekQMO2YA4JxXGFe2kFc70RCpba2LkEW/mE0HxWgAsNetg2+vzfMh1m5pC
         Unsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701772; x=1773306572;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1e/WtirdtbqhjjpDNbqAtXh4FvgzuNdXObhodxahv0=;
        b=gHTTVOi/iFohRuSwABaDqImK/jdCdZK6Dhss2DkPFY7AdUPv+UAF9XtzhC25th6fA/
         txv6nJnQKMfmhggSDd9z4vl/3zNVZ1/7JQUF174Dz+CzMkUphcApnQhsR9C48rGhdc6D
         JyG5rezcafAPqFL0YgnBL2c+rB8ksBKsohGTGY5hKAfAchz0VjSb6wcCvMzjnKtIVxCG
         LSO5xFiF3o27yuAHWZGgWuymTe3DXrSvyRWErXOqIKVpY7OpS1c7tnX0iqfzHP8ftsCD
         qsbh+57UsezR3mlvXA30RxpyaX3qcvccB/SfCqK6xshAHGuWQNeAqKaqC+n3UtyBqRpH
         8O4Q==
X-Gm-Message-State: AOJu0YzDl8o4xGOV2RsxnYPQmmyYIYhmn+gI/90gNpeO9JBUzHp/YPOa
	5cxDyZnLARZBvBkBeZvF1wYA7/4PvXlv+DvBYLU/9A4SC8rDU5mo/oI2vF5irpB5xoC4C/D5v+P
	UWQhlUEIpMobMK04sLPSyYArXRIoVtyGxz3SX5Wq31oh5K+mTQxj7L6RTz48kynDo
X-Gm-Gg: ATEYQzx6bgcL189OsIAoKbLGE4wR1+LQ2Xh4/N0Pd/qO389C0vlwRo6183TfJEbIaY1
	stLnfmlYP68NLhbuP+3ZfIL/UrnS7vqURukyGubkppGgFxtnkDLLJ8il52tQ11eezmbN5G0o5MB
	FT3Yd8xH2y28bAE3mjRrf6FioSuiPIRiE7AIYKD8/nS8SKDQ4VTWg+GxB8yia0LmabOQJISZjxu
	xKj6IVMMHBWdsfgNX/hbSJVf988cCDu/oF0vwV5+Gf5MIuhq1c9mpJZCLvzsnjX/c15imrDl3tn
	4XYXzy0/7J4mmshs5RByAkyn019fmg891BShETw0v1ZSP2NVGMuFEbB4PesRmG7khLxtC/q+ka+
	LG+wnSxWlUjZPL9uMTCfDdGkQppXl6qTqKhgQlTWFTyvw
X-Received: by 2002:a05:620a:40cf:b0:8ca:33d7:8be2 with SMTP id af79cd13be357-8cd5af96737mr662780785a.54.1772701772113;
        Thu, 05 Mar 2026 01:09:32 -0800 (PST)
X-Received: by 2002:a05:620a:40cf:b0:8ca:33d7:8be2 with SMTP id af79cd13be357-8cd5af96737mr662778485a.54.1772701771688;
        Thu, 05 Mar 2026 01:09:31 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abded86esm38817703f8f.6.2026.03.05.01.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:09:31 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 0/5] ARM: dts: exynos: Cleanup I2C address-cells and
 size-cells
Date: Thu, 05 Mar 2026 10:09:23 +0100
Message-Id: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAENIqWkC/x3MQQ5AMBBA0avIrE0yShFXEQtpB7Mp6YhUxN01l
 m/x/wPKUVhhKB6IfInKHjKqsgC3zWFlFJ8NhkxLNVn0pyKnO+yKYhxSt/jeOGupIcjREXmR9A/
 H6X0/o2yhvGAAAAA=
X-Change-ID: 20260305-dts-exynos-i2c-07fd82c55040
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1571;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ai5g8g0+adsS6IS2Vp/pH5BD4m97fOakeCHE7AL2bMI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqUhF3OzzzFwF6cCEKB9NbNfqNWY9/5JFjTYUA
 61Y2ySXPJmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaalIRQAKCRDBN2bmhouD
 1xJ3D/0Z3alg3ADG4aiPfhsMrJrOgxsGDZ63CltQik+60C23WOkmypdnYBEAPq2zshzqa1BNUiY
 fdUK/DDhBpKSwUkzYOynhjaKw1o33quRSs8i8S07gOeYopQZA8aoffHzxQ/urA60KuE8EdjKdUv
 zS7aKXVpGRm8GmcBeHf2mNBElHTd2CeDQLJ7HUnVpvS2MCKOf9MmoXd/XdmfCGZkb8S91KPq5fi
 co0jkF/YeTFKWkoM0eH6jShFZ9vMBIWuxgmm8+UhgqCoCorFYbD9+E43laUhgnJiAhBCDmRzxcv
 3oXdA2nYZKdYzYFA7Ao0nmmqjAgJr3uRtXRSs+HroRtuR8fW66zsIl5DMwIfH+jFTomNV5V0Mby
 741mEeQhiel2731qL3VN7Zd/kCIoKWbHBrH/wV6LUY1F53Jktp62NcKRnP9/hM//FF8w2vG5y/d
 fy1+G2QmCKcl8QUpKpCSqSWhuFb/11CoNUiUNp8VoooAHPnGbaVel3OmCVMzvScJ7lug8envMHQ
 0QgIvBXyojkCRDElRcgU2QVV2Ood9sCfVdb+PBX2MbiQYAHvwTYh6pJbMMSuA4oqLRAATPJRScJ
 i7BdO/26B4FPjehgvGqIZWS520FTnD0BvqDVRm3OFA5cmybjntqmh0fsQPp2aqHudjKWXdyZEt9
 ISMBbi6w0cf+Ulw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: o4vkc8orCC5m4n4aQb-MN5YO1Zi8W67g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX1t3ka7o14WDE
 J011bIPtW8sgm/4sEzhbYh9INgg9fqvWF66SWLpsPuRINqIeHLBthbnnPrvlHlMw96w9XPpIkR+
 QmZtuH81mOb4iBJiVSmDrE2Ac/mXSgo+usHz/lhKbBnKdZS+B0bJS1zZQBUt8RGcZ8ERxG0EHtP
 l7oxoXJOoBjEAmBJC0XiyIM8SfRxUG+/6dRq1VGhP2smuHYxzatveTvDRUZ5SqTiEu+8Fo6Zn09
 FYd1SMSsHzKFMVkEjUqlptCtbHEyX0xx02kQjxwSPj6YSgdhUiuQ1WyG6q3jcyVNaO6dQ3A+YDj
 6HzLwmqcg/Q4Cw+W28sI3P/8CFrzYBedeTUkiTSrsVCMNEq0hCYlkscg7ArFU/W8103RrSyX6FO
 7hr3k0nT5AQDrRf1aopZMY8Aexc3L9kN3oNrOvfadcf0AKM2ogsnahLtT3sWLopWVVojkdjSGJG
 IxZOIlN2ZvRxoaqO8qQ==
X-Authority-Analysis: v=2.4 cv=OYWVzxTY c=1 sm=1 tr=0 ts=69a9484c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=_sLVMVooNu3QwFCXD4AA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: o4vkc8orCC5m4n4aQb-MN5YO1Zi8W67g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-Rspamd-Queue-Id: 249F120E1B7
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
	TAGGED_FROM(0.00)[bounces-271441-lists,devicetree=lfdr.de];
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

No functional impact expected.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (5):
      arm64: dts: exynos7870: Move I2C address/size-cells to DTSI
      arm64: dts: exynos8895: Move I2C address/size-cells to DTSI
      ARM: dts: exynos3250: Drop duplicated I2C address/size-cells
      ARM: dts: exynos4210-smdkv310: Drop duplicated I2C address/size-cells
      ARM: dts: exyons4412: Drop duplicated I2C address/size-cells

 arch/arm/boot/dts/samsung/exynos3250-artik5.dtsi   |   2 -
 arch/arm/boot/dts/samsung/exynos3250-monk.dts      |   4 -
 arch/arm/boot/dts/samsung/exynos3250-rinato.dts    |   4 -
 arch/arm/boot/dts/samsung/exynos4210-smdkv310.dts  |   2 -
 .../boot/dts/samsung/exynos4412-itop-scp-core.dtsi |   2 -
 arch/arm/boot/dts/samsung/exynos4412-origen.dts    |   2 -
 .../arm64/boot/dts/exynos/exynos7870-a2corelte.dts |   9 --
 arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts |   5 -
 arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts    |   6 -
 arch/arm64/boot/dts/exynos/exynos7870-j7xelte.dts  |   3 -
 arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts |   9 --
 arch/arm64/boot/dts/exynos/exynos7870.dtsi         |  48 ++++++++
 arch/arm64/boot/dts/exynos/exynos8895-dreamlte.dts |   2 -
 arch/arm64/boot/dts/exynos/exynos8895.dtsi         | 128 +++++++++++++++++++++
 14 files changed, 176 insertions(+), 50 deletions(-)
---
base-commit: 5665c3a48685646320635b46081350191cc67e18
change-id: 20260305-dts-exynos-i2c-07fd82c55040

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


