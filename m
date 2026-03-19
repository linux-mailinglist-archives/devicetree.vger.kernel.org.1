Return-Path: <devicetree+bounces-277838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLxeBgQSvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:11:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A562CD724
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF916329D8C2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D02A43E2768;
	Thu, 19 Mar 2026 15:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="puBqtNqk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BJwNi1C1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EE83E1D0C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773932576; cv=none; b=VXsIwhmOzpAU1DUODgp6Ajzyl5LS1KrREyoJGsJd2c5g+2tuDfgEml9VnrQ5zWV6XlHakaroC1KHXxYosOlHF6cncDpUml6Qk5pXXCfrCjfV1T42m0dqpVBWJm8t0pb4kz4AzNi6XHkE1lYUEswJwCxAEx1Wh/yZL6JyKfRnsj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773932576; c=relaxed/simple;
	bh=EJgCFwzzuRDEE08aQQ5ySdAsqiVdvTdeLOF9ywbB6dM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pbr2tBuaVhZgxVHYcKmwH542BN23V0oxjF7e/MMjygATjabuxxQ5MZODVeC66+1Xg/Ip75HrLXgrT8H2DUeNEsL1yDP4rSCCEI/aBKqN481kjmPjeHjovr8uM6RAVWiODsKSWj0vyxe9OcTQ/I1g7hQjGLHctMevwNfbB/paVJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=puBqtNqk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BJwNi1C1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J74Hpu3369997
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Gw0O0xNwYmcS0I3X5swyVCTf
	JZqlqS+Tg/Mp4oBMnNc=; b=puBqtNqk5saMSijL3fFa169BCDfTWL8pc4F00abk
	ND+mjJgcM5o8opqz/NRyd+oQ2je8XcaozsKruy3TAZ0a0PtXSutWU1RCawLQbKjs
	ibWWNM4/Po7StttWqzP5RpR1gYILZ/DmtxfURoweYyE0mKbxsYwwNmDnTrn/Tht2
	aL2nF/kCYDDB7WJ0Edn2QNINRTFHCAe+QOmql7n3PlUQ7Q35L1y7Qz/KvnLGLXAM
	ZgeFEaD3iXPnmTYchm9/e4BE+NU0gIY9gMv5POaYq04ezK6/cgxJ9J28GWFbtCEm
	lvLbkk+MwgNBBGNHvB7ZyFd8grdb3ZyeR2CK32fVBBIsKQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00f9km80-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:02:53 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ffa389eba3so1605339137.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773932573; x=1774537373; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gw0O0xNwYmcS0I3X5swyVCTfJZqlqS+Tg/Mp4oBMnNc=;
        b=BJwNi1C1EgrorgFbnxWn0Hxg4uSzuaMD8lc2RKbYR3vy4SPLeJHS/0Ej9d+AddhXkI
         ZOUmI0ky7j8GRC6X7BOp+cJkBG5gspElvX9N2qtzIZdFuyPNaGjJKli5i9QIq4hnb665
         5c33P98IBLH6EBB7XV5oVVV8I3NTqt2j0yJbsMw3xgwPVZoNlKG2GuySQlz4sAqSfOHB
         e6nYy4x/bYMYjkcLy4MvtI5owl/jdpnujQ/FG5qqqLIVfQjwkss9EN7jYV0zL1IFk10N
         L9vKIiSMkin22qRjJiY/Xs8H42OSwYphMs5K4EY54AdOvJNJ3t//d/WM181Qm7bpKsx/
         7kzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773932573; x=1774537373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gw0O0xNwYmcS0I3X5swyVCTfJZqlqS+Tg/Mp4oBMnNc=;
        b=MeD4LdTC7gY48ncpOaED3xWDi9GE9TomdjvG83FtXVfuI8h9n7oGuN0VMSIsTaQNS5
         kdghOM6cL979Ec7memhigLeyP5TvuHI9dMR7s72ceuKzY163dBJkP3w51SQKIKdQih3J
         vzapLIf3PbDBHJKGzXzzTq9y73353cPlIZIeNjIH88XTT1nxwT+fDgzNs4IBu+V45pNr
         bpv1psC5sRH8nogDAfmopaCygm1aUthopFM8sHBKFs3urFPwX1a7YJPUvBKP8jLyrdCv
         xhrZgjvjRITiFPpQJEk90vwPG5Wzo5ynS/6YD4Bddkcw6I3I6k+TlEdutdOlH5eiln1X
         qqwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVp+6aFn5uCfBvDr2Fqx3nf4rVq1i6l3QxqkqLEY03Ro2gDTrDlq38HEb7Z4jjqBCGROXBFiyw4r/3N@vger.kernel.org
X-Gm-Message-State: AOJu0YxF1/APoIxiRP3IXhKxW3KQ+Ayq6CrIhNxXSda3RDNxhNNgyiS0
	xyQVki+ru8nI55QuvqqWioxfMNAsQmesuK8+/UD289WKMfY3f0i7GaFsuR7iQDjhZRG/mlgRCl1
	P0B73uvrJ2Y9s289KM1n/zDcBf47UIiprdGrKz0JaXx2aBy9h/L15+xgRgcCEhxy2dAVvMyKW
X-Gm-Gg: ATEYQzx/479FA0pCBTL4rfKDqOMq53X4BXIWnnU/WW7ZBFBi5ySipeMH/1bc2B7q8Oy
	oScbZtLaraDP4rtYlnQYHDuq7z3zbZAY2JE1nPz2pesPZnLHhXUSEAJZ5U7ibijms6zXBG/VgG2
	s+gDJeSNot10UEDZDbNx0iqSy0gWDW4O5ukHocKdgEHBxsBxY4IQ0dHvBSASaHR32erhVXp/cgG
	WQ861KIo0dzGPmcturmkga5CiEXfl2aS4/n8rt3ydZsbtV4VlhpbdT6vYaWO7bEWcy6FnRlP4YM
	wbXh2G8CFO+1hgiCzzV4aKMQiTUgq8CJur6wWcIGFq1BNS+YVIp8Yh3INORK+hXE7MglF3D4MT7
	eNTVTliHtXtF1O/6KQsfqKI9knJUR1kTetA==
X-Received: by 2002:a67:fc89:0:b0:5ff:eae7:bd5d with SMTP id ada2fe7eead31-6027d32d7d1mr2551536137.22.1773932572586;
        Thu, 19 Mar 2026 08:02:52 -0700 (PDT)
X-Received: by 2002:a67:fc89:0:b0:5ff:eae7:bd5d with SMTP id ada2fe7eead31-6027d32d7d1mr2551487137.22.1773932571897;
        Thu, 19 Mar 2026 08:02:51 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bbcd78sm42603145e9.26.2026.03.19.08.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:02:50 -0700 (PDT)
Date: Thu, 19 Mar 2026 17:02:48 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v5 0/2] arm64: dts: qcom: glymur: Enable SoC-wise display
 and eDP panel on CRD
Message-ID: <r5cscr3pjefm56lbbrnqn5ezkmayppjxujynhb7ta66nqo5hdx@nvhhi33e3ayo>
References: <20260319-dts-qcom-glymur-crd-add-edp-v5-0-5fc47061660c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-dts-qcom-glymur-crd-add-edp-v5-0-5fc47061660c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDExOSBTYWx0ZWRfX5f5k0MJoNoBG
 p4sk6H6RWEs5LTEMFhzNg2HlfwhzMCzkqcT8wIm/Re/PK593KYXFhxs95P6g+KS/7LrSbdZs0uJ
 5djEF8vpDlIjKhEr+Jvgaqezt72wAvlcPlDE7lxGgBX/o/fq9D/hG0dvWylGaB3rWZ/7U/QvFZR
 nCry0f1ZTVo5OBJRj2MeHUu5rrm/iOt9VE9exbNllj9cyeTyJmGsA0BBuj32ypDbYoLcLRVtlrD
 WIajDi73UNRjWUfPTTfSBRpnJmjerX3CAZC3rOEOxwsaXO7BtIR4jrrBRcm+UOHu+AuT/XorMOV
 JfedLGeD/RgpoqnB54bvcleR3A1OTPm+ry7LhHp0KPn3LOIGGhGes/D8j2WVsTCbl1xTVB/AYxv
 yHOsGIRE3F0Rtq1CxyzyAiUAoU1NfoJbXa1pMxMhT+P8TyVa4I5vrhhr4PYsHjU4B81G/YWBkWo
 lfeGdTjltwZGsRotEJg==
X-Proofpoint-GUID: 8Iuhl1ILwt1LMj0cBkPl3bkZfuq_iM0_
X-Proofpoint-ORIG-GUID: 8Iuhl1ILwt1LMj0cBkPl3bkZfuq_iM0_
X-Authority-Analysis: v=2.4 cv=MJttWcZl c=1 sm=1 tr=0 ts=69bc101d cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=ZuDrUWSDC_O3N_bgdaEA:9
 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22 a=FO4_E8m0qiDe52t0p3_H:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190119
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277838-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,msgid.link:url,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 69A562CD724
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-19 15:12:44, Abel Vesa wrote:
> Start by describing the MDSS (Mobile Display SubSystem), the MDP
> (Mobile Display Processor) and the 4 DisplayPort controllers it brings,
> then describe the PHY used for eDP and tie up the PHY provided clocks
> to the Display clock controller.
> 
> Do all this in order to enable the eDP panel the CRD comes with.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> Changes in v5:
> - Rebased on next-20260318.
> - Dropped all dependencies, except the USB DT patchset.
> - Reworded the commmit messages to be more cleaner.
> - Link to v4: https://patch.msgid.link/20260309-dts-qcom-glymur-crd-add-edp-v4-0-fe4e33acdfb6@oss.qualcomm.com
> 
> Changes in v4:
> - Dropped the RFT as now this is tested by me.
> - Dropped the 192 MHz OPP from the mdss_dp0_opp_table entirely,
>   as suggested by Dmitry in a discussion off-list.
> - Picked up Konrad's R-b tags.
> - Link to v3: https://patch.msgid.link/20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com
> 
> Changes in v3:
> - Fixed opp table according to Konrad's suggestion.
> - Added missing reg regions for all DP controllers, as Konrad suggested.
> - Fixed all sizes of the reg ranges.
> - Replaced all 0s with 0x0 in all reg ranges.
> - Added missing clock name entry reported by Dmitry. 
> - Link to v2: https://patch.msgid.link/20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com
> 
> Changes in v2:
> - Add missing PIXEL1 clock to DPs [0-2]
> - Use the same opp table for all DPs and drop the dedicated ones.
> - Drop the extra compatible from DP1.
> - Changed compatible for the panel to samsung,atna60cl08, as that is the
>   actual model.
> - Link to v1: https://patch.msgid.link/20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org
> 
> ---
> Abel Vesa (2):
>       arm64: dts: qcom: glymur: Describe display-related nodes
>       arm64: dts: qcom: glymur-crd: Enable eDP display support
> 
>  arch/arm64/boot/dts/qcom/glymur-crd.dts |  71 +++++
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 466 +++++++++++++++++++++++++++++++-
>  2 files changed, 529 insertions(+), 8 deletions(-)
> ---
> base-commit: 54526d6c29ce58d5399cd4e2237d631266ebaaef
> change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
> prerequisite-change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v5
> prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
> prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
> prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f

Still wrong deps. Need to respin.

Ignore this version.

