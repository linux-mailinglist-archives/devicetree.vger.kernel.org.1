Return-Path: <devicetree+bounces-273011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKMuOnrormlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:34:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC4723BC12
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:34:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C7E8F3045E14
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3ECD3E5591;
	Mon,  9 Mar 2026 15:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SLxY740e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wl/oIEIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172EE3DBD50
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069881; cv=none; b=Jqe57LXzsIOGBJHMPYbvIXuhrhG95s30HAs5AP0sGoHSL0S/Zo+Omew4SFgIh+zqFTpUCmmPu71mwXeO44iZTDk73sxY/iFC0wIAjbdzJD3oQDgVvCXO84pgId/5g4Sw8BKKXbn+hlevXRDiB6oE5dtgzCV2rPWLl3fQLWoMeS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069881; c=relaxed/simple;
	bh=F9n0ftLKGlM6JU8PeQyKHdnuFLu0ujL0nGM4mPk+Qlk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A9QOIm2wZMT9xt17WVKc2GsZHlllN6bFsBplVzJ4Ofn8PF49q5sIXBARYd+GtzJ5T3CCa43njJf7CIR7o8O/kUgRHwlKik0PHytKsmiYjPhKJDX6C9aJaYJPtpSNQ1zwIwghNIiNpSrt32gaPt89csJHEjdJePYSHEnk6aIj0Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SLxY740e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wl/oIEIj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A6ewG2195118
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 15:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fT0QxTs3w4o
	nOwpcb/N6xWIFXq4k74USa4Ia+RJ4IcI=; b=SLxY740eFeMHXel3oQxGTx/vPOK
	ts6zQHxpSRpSOu5czImJIHPnK6ylFHpIb0Y4gSDSJeuMIrw/oV6U6Lq1pPkj62l8
	HvXJ3JdLuVInwI9U9XFozvYpvJk9dKWOwWcUBYbprdrWE+fsPKSf0YcFE5fNIkt8
	nYzhCxeyVJIKZhjmrBMkKri63WgVbUyT1KxOkBEs+xJ8v2P9HKG6eMXuoAT6VeDr
	HVuSFxuymdMwRfsBywCv9MXm6fl5OTd7BNWyky20kd1oysVxVRn2HkM1y0onnlTL
	brJAsia8VZepycP9mXshbkryi3kLhxbHDwxDNa75/B+gsCjF1qy/RFh48eA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u90fs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:24:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7fec8d44so791016185a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773069879; x=1773674679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fT0QxTs3w4onOwpcb/N6xWIFXq4k74USa4Ia+RJ4IcI=;
        b=Wl/oIEIjkvaMJU9P5akmev2x3UEGnOFsSNaIC0L+VVkqiJI+XRW/Xe86klFNxrt1es
         Xis4VjPiHpxZI4gWw9Itt2mc28aZOjhJIFcI94blq/wKbNQR7Sz9m8+xPViWb05ow6wx
         NX4GIVjzBR/iKeVZUWngWX/cxHQjWnopD2v5b+8xDtPFWZ1gEgO2rD+yUXDbLrwudYTh
         HaYgofe2Ol00lK+YNhboonJfW4ncCs8Xc3chqW9h+wGRAc1D8lKN7yJ6/7yrF1smVyuK
         4U1BuG7xiP+VQD2Ra0B25+iI45kekPn4Lda3ZFVPiTb1aCUJTzZNiPaq0stJCylDk0WK
         hEcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773069879; x=1773674679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fT0QxTs3w4onOwpcb/N6xWIFXq4k74USa4Ia+RJ4IcI=;
        b=gTGCL2xdWjOFe7Ye8bOTv66jLuM4832BK4tPapNro4PXa6vF4YX67TowXznwEnmmhJ
         HKoAQoyL4n1Vsr1amcF4Irvj42SH7XdGDJmVi9AjyNia8QWwFqWG1errXhYdQ5kUEyxN
         Ob8G3R3MVHIrwbX+dPzagccscufB+yrkd66IzWGhu+OHka58TV3qvYG9EBGhbOqrHxpk
         gkXrOSAj0zwhINYC+RPhy4/cct/SQPcca4vxwQAEROKA/ZPgY3gtkzJZzmLXyBd8DU6Y
         BWpdbA0cx1z8hT9K0hiqyGxLauzbUun0e48i1ebE7a3nGpUUspTJ/IhpodjRWyuQ99mN
         8XCg==
X-Forwarded-Encrypted: i=1; AJvYcCUzhvm9WpeqeLZjLzmi2PT/YW/anHzJFcDiNLqiZPOTaGbEGGkvvJeuvvh/Is11Tb28Qo7Cli89rgsk@vger.kernel.org
X-Gm-Message-State: AOJu0YwAhPZHZSbjbnFIW2OHQxlBFv6lbFW0URg6QIowTCsmfJBnYwKk
	kdH9QjrWMOVi6oEgUjHc3cLE/vHq1lXz44WJVOg85di3MSXDefFntZ9auDCam7eLU139LEsOhTe
	NLt5msCL+7Aavc2eSAtnQzAEqX8i116cbe6krdYjta6GAU2S0FU7UdXCie6xryOe2
X-Gm-Gg: ATEYQzyk7l0ukdyWYoyTfH1RX1WAHCkbS7ByhDmI2D1TbcuNC7WWQAdUCeYBxQEZMdS
	PbzvNpVjXXNsdhyIEx0lclQz5s9NC0J1CujMEWPiCmNE74zkeGdqojY72PlVGunUpWEelCbt9Pw
	1BSc2kZeG633ICQdqrE4wd+cTFW38sMuBnunAJXRm5zVlkq5TQHXKN1tooVCWdzIl41f3A6YpEJ
	kCgAp1Z68aQa3kQ1CNX1i9WCIm2FAmfybU6/2Av7/SMOILhczGpmWTyRqjJ8FClcfTmVNv44buV
	1C6On/fagL0oX3HBRQO+2vkDKBzIyTA7UbqbHMPrYUF6QJeMBdmJ8bJ9iKbKcx0IYAbI/aFiW/Z
	oEdizBUuzW+Eyx+ugD0P/YVAlXVgXuwBkoa9CDJ/LWsZDLVav+ICQ/0U=
X-Received: by 2002:a05:620a:480c:b0:8c9:fb0e:ca43 with SMTP id af79cd13be357-8cd6d3868aamr1381784685a.24.1773069878673;
        Mon, 09 Mar 2026 08:24:38 -0700 (PDT)
X-Received: by 2002:a05:620a:480c:b0:8c9:fb0e:ca43 with SMTP id af79cd13be357-8cd6d3868aamr1381782185a.24.1773069878230;
        Mon, 09 Mar 2026 08:24:38 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a59fc36sm192812515e9.9.2026.03.09.08.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:24:37 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 7/7] arm64: defconfig: Enable configs for Arduino VENTUNOQ
Date: Mon,  9 Mar 2026 15:24:18 +0000
Message-ID: <20260309152420.1404349-8-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: OJ_hzv3NXoUjkBs5cKGfQw70iefVSMg3
X-Proofpoint-ORIG-GUID: OJ_hzv3NXoUjkBs5cKGfQw70iefVSMg3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEzOSBTYWx0ZWRfX6+mwQ2ml1h3r
 Z5tO7kyrPGzpjdzuvenf0+32Vccchu55DSqF5cbSJ+fCvnLVYtTBCgbXvD2xBYLhVI9sqIz8RWA
 rSVu45oNFDq6IO/ii44k//JxAGGiFmm/fJHFoJLfH2+3jMK+LucIAnoTLoXRa0Zkq3W4kokiu8u
 wN4t1EbSbDZR0Em/Wjnpy1F0NillGzBMVyetwQXLRbdGcGWafh80F0EEIyG/TOi72LEM3HdDT6k
 7G/lKmh92gM9sOcvVp7/bRJ4dI84aBnFIMBb66+WZ0DYHMrFgFKh1o84lKpXEsCYHHbi33Kud4I
 893/THLyq+TcpX6n6YPofjrIZVbxveINtuzUpXmL38kRaPjnTaZ2KoZxiNdbtuzIpgIVvqeN9rp
 zkSMZ7gZAqnTJ9Jk5+YYxqZ2BaWkmeBD7JCFgVl77geQzRpBRG36HedXQXZ6gEgS/iyx162I13t
 tajho8m+KungUzAURJg==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69aee637 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=rO3wVDe-YCVyVCuK1RsA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090139
X-Rspamd-Queue-Id: 6CC4723BC12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273011-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable ETHERNET PHY and Analog codec configs required for Arduino
VENTUNOQ board.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4ed70ab7ee85..aefb8a81b78a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -416,6 +416,7 @@ CONFIG_MARVELL_88Q2XXX_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_AT803X_PHY=y
+CONFIG_QCA808X_PHY=m
 CONFIG_REALTEK_PHY=y
 CONFIG_ROCKCHIP_PHY=y
 CONFIG_DP83867_PHY=y
@@ -1145,6 +1146,7 @@ CONFIG_SND_SOC_ES7241=m
 CONFIG_SND_SOC_ES8316=m
 CONFIG_SND_SOC_ES8328_I2C=m
 CONFIG_SND_SOC_GTM601=m
+CONFIG_SND_SOC_MAX98090=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
-- 
2.47.3


