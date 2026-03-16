Return-Path: <devicetree+bounces-276218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPQVISwTuGk7YwEAu9opvQ
	(envelope-from <devicetree+bounces-276218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:26:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB62D29B517
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E12304046E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335FF2797AC;
	Mon, 16 Mar 2026 14:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WpDYJ6C+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rp61m885"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDF023AB81
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773671037; cv=none; b=QzajvWWymPHf0S3fILjtqRuQGo2RLo0c05SIjT7kSzBvj9Q4Ex9LZfx8hQuN/TGlelmgbHUCZbfs9+WHkmvaC44sIqHjA4HMlmp834prYIZhVzpw3nbaR+HzU2fvKjBwZCzIJqCuHinYeFDenT8FRqaRPTaI7It68l6fUSSM4t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773671037; c=relaxed/simple;
	bh=KPyB66SFAbo4nPiXO9mam5QGs1dtG6QR7Mh2VKrzyPQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LEkNvBFBvyBENlS76F1i55oHnG0vdh44n/CXE66PMFnoDEd4oa5u0fSiCm6YYQaWIFNU1otW6WpsjPeTypmz0Mzm78U1yla4E1tPA/JbqjJO1RT7emlpiVYNA081RHvxTGtc4aZNqurXaxqHtNREZp8/00NX9EqSEsUzts0zuB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WpDYJ6C+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rp61m885; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GA46pH3124561
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:23:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ku4t2Yxi8SLiqD/0cFkd3NhXc//dPXv+T8O4azLlDLM=; b=WpDYJ6C+WQyeQYPY
	Mk/3x5/tPx3XAi8Z4PDJy4H+9zuNl8G4jlu4jDW+9FI42FRqtduFPT5VBYLN47i0
	evLw7WG/Rb3I3xlnpE6o9ILvhU8delKL7zifYrzdTg6xdn+j5lljn1wmhRkovXh5
	akue+yxJObFb/iAlhiOG+EteXoXy6Lvnl7pJfILexgRfUcQkCP1Bz99SUhqEUN2d
	DH1i3OpycV3/drfnhBIdDxPpkGjKr4VDDdJiAOD85rgMuyTwiVhuQj+e10BFthaJ
	elxU03I6uQwow9/slzqHTcj6xMNtcwvPuLBFRLBBiWlDQXIN9KLKek6pJ0H3NMIy
	KGRAZQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxfsmgx1f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:23:55 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd849cd562so3079622885a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773671034; x=1774275834; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ku4t2Yxi8SLiqD/0cFkd3NhXc//dPXv+T8O4azLlDLM=;
        b=Rp61m885pU2CgzlKymspiIavGMErRP6/uefSfBCm+MVJpsvvUBId/eKSWT9/YcRkxZ
         gHUyUoTHORlDLgS0oY9rcQL4y+76uPx0YYBwu592cNyjXWHxgPrJQE/rNHfquC64fFkm
         oiWROdpOwInEY26TvxVYDIqEKcUxSvAMBMPU79WH7sv4zz0gNZsedhgD0K7yc0wwApYL
         4L2ZUkzU2pH8NmFgy9noEounnFXtoC/2X1XgIDw60oLm10y3D6b8dsbAAgAqipxGQpxt
         4HZT6VfqyaJc/tKuSwY9cgA06mdaU96+1uXy2n+H9XNCQZ9eb8drjfSB2Y0VgA90cSac
         WBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773671034; x=1774275834;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ku4t2Yxi8SLiqD/0cFkd3NhXc//dPXv+T8O4azLlDLM=;
        b=NZtdRcVEX38Vl7CvyTEPLb0k+zPhEUUoHdqr4w15mM31eL4s1M9v+wZUqDGpw7a1ld
         uFQxP+PHH4hvEcJTIu1D+g0ehxk91dX9itEKohTF0uyogU8H9dtqkVGbozQwQHNjuwfV
         XeiCR0W0ih7FIXnxiGYKjUfN+Ym9jzT5RTblITBNeDZrm84NFhrx5U+teO8WiSIgj13U
         rj0vitPgSPPxecuhV+juHdma5Xz4smRHfG9A8CQYGuNjfqECF5lcBxO2Ci+oqIszXcZU
         MMy6OpmgL4eAn41D/roDgkQRRHuhstYTG9gnU6z3WfYjIw0rRVKLxwlm8Du4dztliyA7
         PXZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXegoAya5XCwxVXdGP4UOOR1KCVfg5gV3u4DoV+l3yLpn8qeWlvxD6wDQZHQJR48xN2RZi3GUdDNQX4@vger.kernel.org
X-Gm-Message-State: AOJu0YwekX5jqt2RUK0hUMkQgt9sHlmMshYvJsV1DP26p2of5LCdMIIy
	0XakQxuh1ddzqDqZsjgu+B6I1F7yr/LpnE4gKESgou3qTpwaavDReD+VrLWsTamFnEmDyD+bI9A
	ZTT07knldGrxoDVRKreVSvQMKh37Ty/twfLGA2ucKCXsOqvFQgupiidqEsB8Wp0/q
X-Gm-Gg: ATEYQzxJH5sKKwv4lAv55HbGsSFP5c/LQhMsMwmNal9SRIs1tFc4PBu79L1Q9042UyR
	vvgwypllubVsdqjsnMCu/y1P7u4ar816TBe8uMRr10ujocKuYoesd9QeFlgVTYpMHA0PrmbZz9p
	aRl55bzYrbN88Jfze5pbvZvFkJaUo1qwcyquhnzFm0J62OaEIIixzI8ckwLuP8GAnpkniRxwJrD
	Pb7XJUqRjITDtlYJiZAgpeuNRyrWsy12Xegwpic/VG0TnloxsukI9JB0hlYOi2Ax4nH4NemfOkE
	iGab6cJm9xovKhleJFrmNSxtwvEI+C2z1J5dZqcvSuj9vmQB50f4yjlFdhp1CqcngZtn2DSelmK
	B1ZYFyhPDelc1Kib/osodfFXO+QdrBr/qpahh6Zc3hutiQLA9grBWb+vF5GUumsL5OV0E3ymY7n
	gMNzMNGtdT32TcA7XX/ww2iEbtyjJcWlza9WU=
X-Received: by 2002:a05:620a:7103:b0:8c6:db3a:3735 with SMTP id af79cd13be357-8cdb5a5028dmr1639125285a.5.1773671034228;
        Mon, 16 Mar 2026 07:23:54 -0700 (PDT)
X-Received: by 2002:a05:620a:7103:b0:8c6:db3a:3735 with SMTP id af79cd13be357-8cdb5a5028dmr1639120685a.5.1773671033649;
        Mon, 16 Mar 2026 07:23:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156163055sm3459525e87.45.2026.03.16.07.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:23:52 -0700 (PDT)
Date: Mon, 16 Mar 2026 16:23:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/6] arm64: dts: qcom: msm8917-xiaomi-riva: Fix
 board-id for all bootloader
Message-ID: <onzbp5pbauvrky7uysu5nd452cytyj23vhk3ey2j5tkyutlwjt@xxey7hetrrsd>
References: <20260315-riva-common-v3-0-897f130786ed@mainlining.org>
 <20260315-riva-common-v3-1-897f130786ed@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260315-riva-common-v3-1-897f130786ed@mainlining.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDEwOCBTYWx0ZWRfX7skdGo+1Jfog
 fKcjHNEQt1D8D9WNoN8XZin2306DNJVGCyS4NQ0bgiVXgad+rGpJgQqyygij/ZolwvBsg19I6Bv
 VG6OesgzccTPxu4SeTO8zKozTZNB+ga9FlipakWw6uP+GHPo+0wYhB5xztkYYlcNZjDvSWxFTqH
 ZvFcc56xfqFYTbLZSsehTqalzbiv9BiMNyCMA8cA2OZDtDTb1XCyKDsSn6WPaIz0vB8/hseTAl0
 3twEWmnO5/jqTo6JGro5zdKZyCQFFe2yHDoeukkb3TJ6vLF8nzcK6X7keQCJxHhcZmOGjPSbIiS
 tCDi4UCEP9pA0mgao0R44fksLiSJMt9XllmugcyU+YWFimwICZWi2cfrUb7+QIYA6xNI/mQs723
 v4f6G6FUk0b8StnFnjci9eKLU9ZSI1/WwFPrLYtg0atb27k7Gemt1w7dwuLyHN6t82sRclqu3PA
 Nkw77BwTurVVvccTb+g==
X-Proofpoint-GUID: 24Gyq4Y6Qtv4Iktus59grmf31npnITsV
X-Authority-Analysis: v=2.4 cv=V/hwEOni c=1 sm=1 tr=0 ts=69b8127b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=OuZLqq7tAAAA:8 a=qJtDQxWyQGT2TDQmBm0A:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: 24Gyq4Y6Qtv4Iktus59grmf31npnITsV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160108
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276218-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DB62D29B517
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 15, 2026 at 05:26:19PM +0100, Barnabás Czémán wrote:
> Redmi 5A comes with multiple bootloader versions where the expected
> board-id is different.
> Change the board-id to unified form what works on both bootloader
> version.
> 
> Fixes: 26633b582056 ("arm64: dts: qcom: Add Xiaomi Redmi 5A")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

