Return-Path: <devicetree+bounces-277287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCk6D/S5umlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:43:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B53D2BD64C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D12C330308A6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 866573CD8DE;
	Wed, 18 Mar 2026 14:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O6iaqcOU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fq2Z8iR8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6583DA5CC
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773843840; cv=none; b=YjpQtVcbhlF4SxLYGzdiQP85Z2jbnhu+Ag8mTmLQo6u/kMXCKE4y9rKEmrbgkj++byHFrs1hz6MdfDRxyjMrFEeFhqoTyLHAbPabIU7hCs/nB6TrSezGdbRbp5GHrLwidLW0G/AQMOqFxcXxmOMRuWK8vPp8129p1ALgwREC0eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773843840; c=relaxed/simple;
	bh=xoC8qERbTZsWJeulLvkFU5rfX7y2glnCDJXVLm4BJmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cs9t+8EpCAUo6IiyCArMNwymrC0cKOBceAIJIHpWEioG/5HyI6ETbRH0BkGu9/VyXRFLp/WFcceLR/cg2FJDn/mslA4VNoXpbK+cZoak8fzbbetx1ZdctRlt+VVWUfCPl9EG59Y6Rx11dW2ZADDXeHnV7J2eayfFp8K1VXqpx/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O6iaqcOU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fq2Z8iR8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8mDIS1145393
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aA3pZ9Y3wY60uFkWUZrTKWdx
	EOkTXWfo9jhysoDrIvI=; b=O6iaqcOUUAoR59wxA/sD0W5ATdmUwjsZxAf0YYfa
	m0tlJ15N34sJ/EOq2Jvf6xBtXH7B7SUvPuN5wW/+fV9ksgPNENJKLtopvoNac9AQ
	/IHBv1InGLm4O0ejd+VRUcxgajQBUjW7/S8JuMGhmZF0/MQ8S10ktPnGjJHN9JuF
	NJkow6vMD2oEya2FEKt8qnP71qN+dlfQoTtTSreNX0fWPOvmtMkuAWDqe7U9xD9h
	ESZGuFCIkZYTVe3U/tP+SgstVN5zjI+xO4Pk8rg9phfM9+TigZdQF5jhrdTPuMnn
	Tbp2T7Yk98p4g+s3j8y/KvV7QKQKIJjG0TY60j5atjP3rQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyak3vksn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:23:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50920055f0aso66033341cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773843837; x=1774448637; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aA3pZ9Y3wY60uFkWUZrTKWdxEOkTXWfo9jhysoDrIvI=;
        b=fq2Z8iR8zWVDnWxw75FhdMO8O18jjd6BcYiFWHpKz4fL6lg3hSCO935Rlq/0pR99pZ
         monRnmf5OwQD5s1cVsGicSJYW6eYKLk53N/Z7OtT7XGovXVWuJKJR09G34j2dAkF1S4Z
         WULNvf3WcrBvptUrqLXz9ejvtp2Nfonby83ecRGbhE6nmlNgM1+zUGQHx96Ir28FoTiH
         BV8DgyvOScrjY0X2/5n0qJgWw2rkPNwaTOe9++VyFXlq1g4Fnt6AGFIO3SFGuQQiabwr
         w48iKo6G3mWYIAxyLGZ+JsPrHDTSEHHmWz2fw7qCGRgrWRbUsEwPP2nk4YJaA5gkUzfa
         kseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773843837; x=1774448637;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aA3pZ9Y3wY60uFkWUZrTKWdxEOkTXWfo9jhysoDrIvI=;
        b=sNEJnHxQRjYhFlO8pKi7T4+rAufjHsM7el3eIY8LmN9OisB4pk95jXlr+A4BIdyrJq
         Yg1eLAasS/7zsTY0HqQ26axFNABwcCoqsNw6KlaGOaN357jf9m3ZzujWhxAFqUST8da5
         o5JIsfUcitUjgMHI1Pqg71EFlgYkYY3lkxfxjvCL8jrptAvatLuruihaiB/4K6+rZmAr
         oXGQoLOFjbRHsWFEGpyZs4r7H11t+3rK8xuUuLeosWdCq0nRYSiPErS0EJ9ZVPONXKDY
         Sg06M7WSFVv7cMR5Zb4Vr0VyJhBnACm0ly5lXu+MTslJemd0uyhoADKT/6YLpCGDqIHO
         0brg==
X-Forwarded-Encrypted: i=1; AJvYcCUw5H9KxGTDI7tLx8MGKYRjzycL5i59t287ByEff7zBqkiAWyKHBYa/T+tsCNbn3dRhlMDzWGe5ufWa@vger.kernel.org
X-Gm-Message-State: AOJu0YyjpujUuE4NCk9o6+/aEG5WmWTYXavj8rrP3HulYfNMidg02X1r
	YCLF1Xj8HrxYGcu5wLR8dAgBx/mJwE8ha2S686z3mGYVG/z/79Wl5iNfwVoRjxDEitApjHQVFVx
	jGjQB7ZQ+gJ42NnQZY5EI7P6slmOOMPdPjxJVl19jozCr/fhOng60fR4LIpaE9Ukl
X-Gm-Gg: ATEYQzx1/d4dAOUZcgqXHFoUhrpnd1UXAhxFlsQKivUVVBPk+dmUXTRi525O/bfJQbH
	Nx1wVe4jJ0S+NApwHvfT67o3RCDHoZp7T7G0xW6FxwlYg2k3BFu4a8DEkxOsBcscJwQJ1yt8W0N
	2avY6bypFeiPkNvAvyAAFJJ+SIlES4do4Ran95X6sj7nqKMLRVtrP4MnUExsJfggVbx9MvEpf3f
	kI0U0bLtgOYIbdgX2fsxJSQJelqkmuVuBoG9x9/aeMyYnVw34QkhGmMPO1o/jNhAOUsBuLFk7n0
	Z1xDTy9ZxYoTRj653++4GaLGCXDX8UOctlySk+u6dB24Edkfm5G2jP1/U8ceKzWbI/gjczLTRzk
	pgXdqtHHOarEu/0NKXzRnDInkyXthD19Hb58x7jUNkBA0NGXPAEVqMkIEBToiwXWUW8c89CAc6R
	a9CuiY9hjEYouoegW0U9kLBsSL7FNt1SOvZYQ=
X-Received: by 2002:a05:622a:150:b0:509:15d8:2c10 with SMTP id d75a77b69052e-50b1491a07dmr35254861cf.44.1773843837144;
        Wed, 18 Mar 2026 07:23:57 -0700 (PDT)
X-Received: by 2002:a05:622a:150:b0:509:15d8:2c10 with SMTP id d75a77b69052e-50b1491a07dmr35254181cf.44.1773843836437;
        Wed, 18 Mar 2026 07:23:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd5488c21sm5921061fa.23.2026.03.18.07.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:23:55 -0700 (PDT)
Date: Wed, 18 Mar 2026 16:23:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
Message-ID: <hnqbx2vf7rbe3hfd3apalypn6epfn4k2nwfdkmcnuyub732zie@voo765pgfrql>
References: <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
 <198ccf60-a4b9-438b-ad92-bc4d2cc84b83@oss.qualcomm.com>
 <90b3a7df-cd02-4878-b614-1499589f0906@oss.qualcomm.com>
 <uukjr4c2uymzj2pe544hn2w5ecpmqle56mir642zieip4ixwor@3uuhplnfo5qt>
 <822cc610-7984-4684-99d3-8abd679eb06d@oss.qualcomm.com>
 <jup7h7tyf4efv25mqj2sz4jmztpqbng3jgk4dvz33ec66wj4dr@kgmp5g5pnbon>
 <e874bfce-1cb1-4b81-8d05-557f061904f7@oss.qualcomm.com>
 <6kywpew2ttav7enc6euwbmn4jjx7mx2vpm5v3fjvey4tti5bbs@xhspy47zyto4>
 <60a70a6d-7683-475a-89dd-acecac1a0e36@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60a70a6d-7683-475a-89dd-acecac1a0e36@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=A7Zh/qWG c=1 sm=1 tr=0 ts=69bab57e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=3HUXpPibk2-1nb6KBxAA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: KFtHGs2KvrFAmjDBWMApeEF89BKXdPIk
X-Proofpoint-ORIG-GUID: KFtHGs2KvrFAmjDBWMApeEF89BKXdPIk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyMiBTYWx0ZWRfX7HclL18BsU3E
 yf9rxvN8Rf9zMZD/f6hpGw+ZI3D5KlZQ9hbAD3ynUdRs/DxoLPCsBBvS2BUVJrryd2ecQfy07as
 sSUv1jJVzPuj2eBBV+0YUsXxIZgfu9b1GiR7KhSjGSrO9KsHJ3OvOUGZtKgeUPSaDgef80UY9Ro
 HXpSwxQ1hSGqlmtqmz6f6U540uWQ+2x0D00j0A0WDMsaUYLrcFMM4He3eIeEXttvW67heL1lCw4
 Jj+oS8IxAZSat+lHHfLnp8CXVfTQljeLM1va/rmTywJwQR5Q9UiY/Q8lseKiwsZFsk725/LRySb
 IAhT6gqWXVEznNw1/+qcMxa7L1cgun9mSa5rWk1vzEWaBMiM0X5XNNu8srvgxZFiAen59ZDU3tp
 LfthvLt1mBIXHnpe9EirIYPhF9lGmMpQYwMui2Ua103ccPOff6BaCId949bX5cksVi3LtppFoTO
 KK/VAsssgH1NYV5YPSg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180122
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277287-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3B53D2BD64C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:39:12AM +0100, Konrad Dybcio wrote:
> On 3/18/26 11:38 AM, Dmitry Baryshkov wrote:
> > On Wed, Mar 18, 2026 at 10:33:28AM +0100, Konrad Dybcio wrote:
> >> On 3/16/26 3:25 PM, Dmitry Baryshkov wrote:
> >>> On Mon, Mar 16, 2026 at 10:39:09AM +0100, Konrad Dybcio wrote:
> >>>> On 3/13/26 3:48 PM, Dmitry Baryshkov wrote:
> >>>>> On Fri, Mar 13, 2026 at 12:59:46PM +0100, Konrad Dybcio wrote:
> >>>>>> On 3/13/26 11:12 AM, Maulik Shah (mkshah) wrote:
> >>>>>>> On 3/13/2026 7:41 AM, Dmitry Baryshkov wrote:
> >>>>>>>> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
> >>>>>>
> >>>>>>> d) Add separate SCM child device (with interconnects) under SoC.
> >>>>>>
> >>>>>> We'd then have to probe it as an aux device or something, which would
> >>>>>> either delay the probing of SCM, or introduce the need to ping-pong for
> >>>>>> PAS availability between the API provider and consumer, since some calls
> >>>>>> work perfectly fine without the ICC path, while others could really use
> >>>>>> it
> >>>>>
> >>>>> qcom_scm_pas_is_available() ?
> >>>>
> >>>> This comes back to either having to wait for the interconnect provider
> >>>> anyway, or allowing the ICC-enhanced calls to take place before they that
> >>>> happens, stripping us of the benefits.
> >>>
> >>> Yes. However this way only the PAS users will have to wait (i.e.
> >>> remoteprocs, venus, IPA, etc.). All the basic providers would be able to
> >>> probe.
> >>
> >> Do you then envision a separate qcom_scm_pil_is_available()?
> > 
> > Which calls would it guard?
> 
> pil/pas/whatever.. auth_and_reset(), probably

I see only PAS calls.

-- 
With best wishes
Dmitry

