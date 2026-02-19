Return-Path: <devicetree+bounces-266576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IaYAJa0lmkxkQIAu9opvQ
	(envelope-from <devicetree+bounces-266576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:58:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5849D15C8E5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 240C73015CA7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AAEA326928;
	Thu, 19 Feb 2026 06:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c3h8FSmP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WOyekluk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5A3324B10
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771484306; cv=none; b=kXKTx7tE4iSn3MTbK3pM+Di79NI8Y5d3NP8LymywR8jZp69Z8Hsq1/9xtbvPw3buQi7PBFzZJLDiOF/rR0Pltvxegv6mTaSHW2bMylwnJyg7VCDnNRfXhg3E66hRmNSZvxVXPeOs7F7/Phfx9/P2n9nArgJm/Mch697jlpjULeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771484306; c=relaxed/simple;
	bh=Jd/iVGZrI5LCZy3rIH9NI7sKGXsgL7BqsTw09ud7sLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n3aV/oMXqMkt2QKz2zCUt1SIhjaCUzJ6l3iG7uXD8T3C6rXSXnrVgnMV0JiiPGVqDgwEWRqEFGSETWTL1YL0hQanFAlqAlqq8+Gol2mbGKNZW3r6ciS1UkccFVNenB0ZaaV/eo6J5gKK9ufJdhXL/Mnz82TZXQUIchcR8Tg8VLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c3h8FSmP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WOyekluk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61ILBF3v3154851
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:58:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lqplant/6FSykouNMq6DvQkb
	3IcKO75fKGnpTGwWpfI=; b=c3h8FSmP3lrJgmTfq2UOsj2h7OQ8YrTY3t8ac5Sh
	OTux7ORSaLk+FQ/346ymHsJLCYDh4hifW3of7cmrzsDtqO0WKmxBoI1IUUetb7f7
	2fdvzBFpy0772xK0fETTjdRAI8NcJvufkQg7qFlwQjRw0iGsXoiqrCMCNkGG/XyQ
	fBgtCMpWiATeRfwElBTh3xMM97Tyrwtg/iTQtvdNj5lKBDpUoYV1ERp/3/zuo+Nl
	5/XdEkm5XDWcpOE5Om4zc3efOjPlZjl3AXgmfrTnqlWFL3GTF3Gh1oQ8I+G2EraB
	hfc+JIx+6Bg/Sw48da5KodOIzI8yEMpMjdjb069iCjUSzQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdmxvs4vq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:58:24 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8947d47793fso111680696d6.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 22:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771484304; x=1772089104; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lqplant/6FSykouNMq6DvQkb3IcKO75fKGnpTGwWpfI=;
        b=WOyeklukAQuqpdU8o0v8NFroXmBjhiEhT2e8I2BnykDxIMHMys1U2RvRJcpLHfFj52
         GezSqDqO6B935kk58SKj6h7YVUGWfZcuTjFdXJDz3aFpnxioWZ5f43IFumJWqkCsPpm6
         GmYE5TFBRJnuDU5yG0g3ws4HbyJeOrIpkcJ9mgtgtLrMDDq/A/utWxU7bEtE9is2gfjI
         KgsEfj+jfTMtgJGshTBs5H+C8rvxsdJvl9l5rp7ZjH4JZMuB+qhmmDQodsJk3taaE+1v
         Ij3jaPAt/PNZUmoqoD74yTDKI7TqvC6M13ZCMeUbyU4sBxZnVkTnkVnnsuaw4sFQX+Ea
         sTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771484304; x=1772089104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lqplant/6FSykouNMq6DvQkb3IcKO75fKGnpTGwWpfI=;
        b=QgVGKpFFOxPJTHmGFUjtDzlUN51lg32Uc08GxzvZDBic932m82TtorwvlKjR8JLBIu
         mFc7uDh9ccYHha+K6o0tBHahteNzVUAUX965A7BsGTO6A3sPtFBIJ5B+iL9gr6CegTs3
         9p29+gul6HjkFb+qCGfi+zzD8f38MjL0cxxY/8FKRtsZaWerxZirKmV95OCY3kDT3NVV
         cr+RxpB/sk3KvWJ0merJF7fB/hBYNrZ684iTyqOzmiDIoH1lV0+srdEPnxyHnAuUV+XD
         U+K3hYWZKs4xq97VFRFNy8hS662xph36RSqgveCB3SQJihoSSuno1diB+OcmB7eTu+Sj
         A7Fg==
X-Forwarded-Encrypted: i=1; AJvYcCWwcwKNQZMKiX1hvIjPSAa7Njcmdw1Z8WLzbk91kZz2IuXqHG2vzJZizaxAgv2iq8FXOVGjCwsT2Gcj@vger.kernel.org
X-Gm-Message-State: AOJu0YxVuH4pcuchrIzKkKKPWyoWb69L/s9Gd/7MrO1XQslgj3SLR4kZ
	VW1CokBi1/oQD88YAkiMJCZixBcJ0J6YiMcNGw4WsunwxFsQ56fd46SK5Gq1NhRmRRMCo6mAw5s
	z9ksnql2pOs3KAm0OIM7ap4uG41zoQu7vYHvfxAtk5BVSOcmQcoX0MGc5HvQa2DaS
X-Gm-Gg: AZuq6aIrzsEP1YlpLDiJ9FZwV/8qaA+kHgzyGmSX+HrI9HDN10yP71PfBnCoexKpZ0u
	4hjrsNr4JKi5rW/YUip0W5kD3SFR+bnL9mAWuVkAW6x7N+GQ/ZRtpXVRN76wrJzbhP2kWe3dXAF
	9SEi0UiuzXNV2KfDv367QupxPYyrc2d1ARZ7JtmJDPn47t8omAmlbR/6phqsdxckAoVJsXFxIDo
	SoLQ8wj8c78NLM5+y9kCaayKBRvpwYO9Rv4QrSHP31yx22i3NVV8pDIjOE1YUeJI4q24NnFKdgu
	meEIL8Ym1wMo6K1SFVxT+bpbDWqiuvM9cxL0YAskVDER3CX5u80G0CQGvfElT1UkMLQ7gSsU8Hb
	nNIrOsTcI7Suglj1+vT2RKL3nZygISgiYNkj6x0kRrkVHpqU3d2FArKbfbLk5GgvYAwjr4KG01U
	zz+8QAWGfrRdjnvoNSnUU9mNT4MjyNyjdeUCw=
X-Received: by 2002:a05:620a:4487:b0:8ca:f268:c6ec with SMTP id af79cd13be357-8cb4c0143cdmr1972028085a.56.1771484303607;
        Wed, 18 Feb 2026 22:58:23 -0800 (PST)
X-Received: by 2002:a05:620a:4487:b0:8ca:f268:c6ec with SMTP id af79cd13be357-8cb4c0143cdmr1972026085a.56.1771484303212;
        Wed, 18 Feb 2026 22:58:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38706892623sm43616171fa.6.2026.02.18.22.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 22:58:21 -0800 (PST)
Date: Thu, 19 Feb 2026 08:58:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8650: Drop redundant VSYNC pin
 state
Message-ID: <kozkers3bckgntmfyeknczrhwtvkgsfae4s4q4cyvtyurtpnl6@73ygmou7plnp>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-5-2799b8a4184e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-5-2799b8a4184e@oss.qualcomm.com>
X-Proofpoint-GUID: dt_902O_f77iM6tF91QOHG3QuptnX-X6
X-Proofpoint-ORIG-GUID: dt_902O_f77iM6tF91QOHG3QuptnX-X6
X-Authority-Analysis: v=2.4 cv=XpX3+FF9 c=1 sm=1 tr=0 ts=6996b490 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=NMe5sQuIffPLTvoV0ecA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA2MiBTYWx0ZWRfXwJD4kcg7S22z
 6VAndaYAI32QV5zJPmBVblc3wp/so3GsNx8XKtARPTXj81HmuZCWZM71H+hfIAamNbKFmnCYhfW
 wyrQTkJUxKtl9cexgXftg/GyjXgzOW7lxwlZuA/4TmpnCRemfxvb+nB+miq486XFPB48C+L1i6y
 Lk5OzwFsU7JkSBQ5H2vZAqZUk3bjPA/RxyzFNSbNcpJ1oe3n6HwBHUsq4NzNPDPiowlQln0ihtT
 xL1MHxY87lwx8caKukNJF3ZZ2T3GGShy1SaqVjqlqt71WXWSgOpzrg+shRQtA+MYweUKOT6FGcB
 wOc+C3XpX/diptg18SwQUpCWDp/pY2Up6Nezd/lHDhgnmIO+y+YVFqxy6z9+wmVyd4oh6RFnRw6
 Y/3wN39BCF6glao7dVvnj9Z4zuOHwOsWC2sdNI2cWPuEaPX0mG9cHrjiLpS+YRjjGkqH97B/Agm
 Ube/n3ceDyhDVuw51pA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190062
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-266576-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5849D15C8E5
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 06:24:27PM +0100, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 13 +++----------
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 13 +++----------
>  2 files changed, 6 insertions(+), 20 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

