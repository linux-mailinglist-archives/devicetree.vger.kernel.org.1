Return-Path: <devicetree+bounces-277063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNlsC2xqumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:03:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E57C2B8A03
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87E293088222
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0950139E197;
	Wed, 18 Mar 2026 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N193ab1Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IGJ42WyF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324A238D681
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773824505; cv=none; b=dMTYDbiXXCrfb/Nb8QDPvhWnerXGPC5Li4lMmYqYW3kSqgPP08Mx4H+mSnelQvLWW885GM+REFZAGu44iYpDkeEgqUqASMcHA5HDT4xTWSvKg44JskA3ZBS4p1fWT6hNnmf96nG56p3YoO29luWN/R1YPWoCT4URsYELsuS9fwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773824505; c=relaxed/simple;
	bh=qT9qLg90H57tYiOueJJhZtRn2Yv1150kwWxBzpCr1U0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Duz129aBVa3jHTWSYh1FR6/GlV1MPC73sI9pgnikQ/ZGY6xlK8R0Dzw/hgnuS/z2vCE6jlKf1Wbwh7nYq09esGDkcAdED13GJDed3JXgORIEwWsH6h8Y7mz74krGlrp+hzvGeY73En1nbWJPcGhoTePwswaA+cezYwOZ2NQ+PUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N193ab1Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IGJ42WyF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I2lOgR1144949
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:01:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h2tRNdbBQv7P+2iASGcHIa0C
	E+XHqx1uSsy6uRlRIxc=; b=N193ab1ZhMdTVVDi7rzIMCn3Hj9v8J1rm8t/Aa29
	scUKlmx5Zf6vrqPxXWrDXFMfu/2Urks+AtmkyEh0z6AM4TmpR7J6BxuMSuI7fqaA
	Q5CAZs3u0FaAYem3V+fZboCx749JCJFs4Wg4PdU2gPU7qrB0t2KMLB3145VnECFT
	F1CJeWGWNqcgy0CrPO43DhfYutHpXXvGP8ibjbsbMIA7mQgCCYTG3PnsB+oZVRMr
	P+oXQgfgbQTS7TCvLrIpBzpTzjy9ozkb7ttZSW43HRK24M/ts20tKdtDjtbL/m1o
	LtcMoMePANBTrx3z1pMwjkYzBvn2o5lFaqONX6/pHAH4cA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyak3ufwj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:01:43 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-94eb847f11cso17966368241.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773824502; x=1774429302; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h2tRNdbBQv7P+2iASGcHIa0CE+XHqx1uSsy6uRlRIxc=;
        b=IGJ42WyFTJkWGN1Yneb+8XmhzB/Q48gsquPQ8Orm5d1G/x9YTFxkIH/DSZWRowUd+G
         saBzG3y5aaP5iJaqUBk/9K4lz4eV4/Ftxf1GkG4uDwdLgHSM96/oyyrPja4CfXSrjZFs
         GuBTpf+YNf/U7/1hVdRr1V/d7sD/T31E9h1A6th/S0Apz2/SHr94p98laqISCvO0doX8
         BHGUM+yz/836Uq9JAxiPcoKmWzSm5CeW9Y5txEOEDljwBT6pkViD/ng0/DZKUgXMIYs0
         Cee0lLHU9JElYe2C8Avbi1T2oMbAQNxHB8seXHRdGkFRXr3VZ7Y5auW9bxDjGfPi2tFy
         wN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773824502; x=1774429302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2tRNdbBQv7P+2iASGcHIa0CE+XHqx1uSsy6uRlRIxc=;
        b=AHd8Y602WaseFyyq1GOgWu5etziI/fq3CoP7D3WlQazqFXRWMWPzVHcRlY6O8B5j+y
         YdprYYTrKGwEzUOIhdpdOrhokW1XAzqpkmAIcZHhH9vqCJMisSE94z7A9tRQFo8LAmDY
         IRWaSD8lF/pj40Fs59AAx+8QWM83eZqRt5KuLlv1NDfJkxVwPQnGt6J7EjSq0PkmQwr9
         wFK4bPFZxSMyrdNxEaDK0H8C9O+a42t+0/1bqmXhCMpdzfMOJX3/4c//3jVKm7cfgvX2
         bxNfGAvjfBn6gwdXyTdkTNETeqb1DA9CaF2TWlvYc9WtRx5iIMaVcw0C25Lp3z9eDhyL
         Nlsg==
X-Forwarded-Encrypted: i=1; AJvYcCVWqP6EtMTV4Qm7y5rDbaNMveJlhaAUruxCC13q985bxEz5In8ys2Vg1YMybOZOMr44ixsubKr86JYj@vger.kernel.org
X-Gm-Message-State: AOJu0YwYGnxkyn0BVgugAq3ieg6bpGyUmy9IPDt7PQuS7dwdCmkDv1Yw
	BXiB23d8mx+BhdNyDuGvvOS+AWVwc74RCrB9eigw+5cz0gkWVZDk50rzNvLV2mchmQBzQ4RX0Hb
	VqztB1H5Sr620XcajbhnWjq9HZ3FxOrw12PVg/f+7jzuSALccOB8uQ94R0vjU4BNK
X-Gm-Gg: ATEYQzxoH6O92isYWtJfUiaCnasg6bP7znyMZHt68BS23zie6FCsKIrgr0XSvRibFH4
	QSTr5OPFWXjtzH5zxmHNsjKpIEegVKp/neKX2amaUu6lPo5RziySlpp+/ch9HdqnQ9w20t7vH9G
	Rhpi2KYJrUCUDvpMIfzmIsri8g2BWqd7Joaw1AN1P4mqEw3BL3lWKKoYqhaD3oY4Z3PN72Na0ek
	lIK9GXTacm3Py5nCrSukC3uJwTSZiw/QVL3981sx85I6k3Osct+nfPp53YtfTNW7Fe1i2OP7xcI
	PwCBUbvnLms/eA1uJBPHISQRbh+shpsx8FGu8ZUKBN+matJlreJOEiHKmoAbDlWisCr9qday/Pa
	t+jsUBGHHK4g/pIKuLaBTzynvwhJ6Lopt9A==
X-Received: by 2002:a05:6102:54a5:b0:5ff:cb2c:a04c with SMTP id ada2fe7eead31-6027d098f25mr1279106137.1.1773824502157;
        Wed, 18 Mar 2026 02:01:42 -0700 (PDT)
X-Received: by 2002:a05:6102:54a5:b0:5ff:cb2c:a04c with SMTP id ada2fe7eead31-6027d098f25mr1279087137.1.1773824501421;
        Wed, 18 Mar 2026 02:01:41 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4434dcasm48010735e9.13.2026.03.18.02.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 02:01:40 -0700 (PDT)
Date: Wed, 18 Mar 2026 11:01:38 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
Message-ID: <syhsf3ztpgvbajdzdrswi6wp7zbfhvndxkiuidlu4d3ixrnftf@ngiozebc7ob5>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
 <20260313-eliza-base-dt-v2-3-bd91367d860d@oss.qualcomm.com>
 <sf2e5rld6oiv7piqq277ppe3xqrh7q6bz2qntekzusq6w56rr5@tc2kdlnocul4>
 <vpoq5lznz3jcfiumsfgdskspus5nzotl2utoaubidfktnvw3za@txma7z7m3v4f>
 <3twoflmcthhja6sbj2jg5l4dm52zsvfpoajlkolvv5baxqes3i@rjw7kmewynax>
 <etynwixh5fmwlixdowzlju7qctax4f2iw6ogfw5zcqzpwydmiy@3737u5m3ar6c>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <etynwixh5fmwlixdowzlju7qctax4f2iw6ogfw5zcqzpwydmiy@3737u5m3ar6c>
X-Authority-Analysis: v=2.4 cv=A7Zh/qWG c=1 sm=1 tr=0 ts=69ba69f7 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=8MBofLzAf-rrxkIDIyQA:9 a=CjuIK1q_8ugA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: 7E_DkXd7Pqegr6MJ6a4ott3esPn4aj5n
X-Proofpoint-ORIG-GUID: 7E_DkXd7Pqegr6MJ6a4ott3esPn4aj5n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3NiBTYWx0ZWRfX96TYIQd2Gzlj
 Zg1DqPswHg8fFk0wsN1YjnVPuTdtlZTwqTf6/rkSBkdq8oZqlrMCRZf8ZMe/JkuDsKOxdzK5vwg
 O25HOIpBC185e1poWwu1oyzsjadIzKLlRUh6JtenJ/9qWesyB6Rhc+SSY0XhKBeXKJr+IPnCtLv
 /Gmon6JtglLnXvFqhgARriIsPAdld7HGOQviJ5NP7a10k5RWX8h1dAOs5dBFg8LMXnH5RjVLJGE
 gy/KUjiMMOoj19/yAdOa7Xu0mpSRvPOSEMr3jCDCGw7n79z5s0BuOXmD0nJQ0C1Gmotvr/hLGBR
 9+uDuE9trVbtFckzMMpTOmZS7ZRTLgo/OB2ThxBMBy21vpjNN386k3l4dHKWxIUn4Nb1EwDhpO4
 vclgJodyd5d31Pkj77dvvp501Wn6zn3s+9RitxYqUysYz0mQVHOt8tQu3icCUMUW1Js5lO+5AXo
 c+apIRNkaKC286L3QKQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180076
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277063-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E57C2B8A03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-17 21:13:22, Abel Vesa wrote:
> On 26-03-17 17:10:17, Dmitry Baryshkov wrote:
> > On Tue, Mar 17, 2026 at 10:47:18AM +0200, Abel Vesa wrote:
> > > On 26-03-13 17:51:37, Dmitry Baryshkov wrote:
> > > > On Fri, Mar 13, 2026 at 03:23:52PM +0200, Abel Vesa wrote:
> > > > > The MTP is a one of the boards that comes with the Eliza SoC.
> > > > > So add dedicated board dts for it.
> > > > > 
> > > > > The initial support enables:
> > > > > - UART debug console
> > > > > - Ob-board UFS storage
> > > > > - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> > > > > - board specific clocks & reserved GPIO ranges
> > > > > 
> > > > > Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/Makefile      |   1 +
> > > > >  arch/arm64/boot/dts/qcom/eliza-mtp.dts | 407 +++++++++++++++++++++++++++++++++
> > > > >  2 files changed, 408 insertions(+)
> > > > > 
> > > > > +
> > > > > +		vreg_l12b: ldo12 {
> > > > > +			regulator-name = "vreg_l12b";
> > > > > +			/*
> > > > > +			 * Skip voltage voting for UFS VCC.
> > > > 
> > > > Please continue with 'why?'
> > > 
> > > Actually, I think I'm going to drop the comment and add the voltages range
> > > in here.
> > > 
> > > For some reason, when I added these, I considered that if other platforms
> > > are skipping the voltage voting, Eliza should do that too. But now that I
> > > took another look, I really don't think the voltage voting should be
> > > skipped at all.
> > > 
> > > Downstream does the voting as well.
> > > 
> > > So I'm going to add the following in the next version:
> > > 
> > > regulator-min-microvolt = <2400000>;
> > > regulator-max-microvolt = <3300000>;
> > > 
> > > Thanks for pointing this out.
> > 
> > FWIW I consider boards with different UFS PHYs to be different boards
> > and so there should be an overlay changing the supplies for the
> > non-standard version.
> 
> Yep, me too.
> 
> I'll send the next version tomorrow with the range mentioned above in.

Sorry for the back and forth on this.

Just had this bit explained to me by the UFS folks.

So the MTP can have different UFS devices which support different
versions. The UFS devices, depending on the UFS version supported,
need different voltages. Bootloader will pick the right voltage
and we should rely on that. That is the reason for not describing the
voltage range.

Now, with this in mind, I think the overlay for each different UFS device
is a bit of an overkill. But maybe I'm wrong.

So if you are okay with this explanation, I'll fix the comment to
explain why and respin ...

