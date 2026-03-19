Return-Path: <devicetree+bounces-278042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4D6uKDGMvGlv0QIAu9opvQ
	(envelope-from <devicetree+bounces-278042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 00:52:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE7B2D4488
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 00:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8368B301345A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 23:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CCA93BED25;
	Thu, 19 Mar 2026 23:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkozyvUZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OIqX/gvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC1039FCC5
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 23:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773964334; cv=none; b=O+AdxuvtQUrWIAp67zXSaFvLt2RxcJkldL9zaXDl2GU9CWPQczaTak9prdoEUuZ3mk7rm3sZj4MJJJ/Q2B/fsECmDxE8JI9RE03eSvVOYCeivk3zagmokINesn40DEKsd6IEZRROdLtU3yrKfmMLoVKr9Kr3+HCbj0n5L3vg5zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773964334; c=relaxed/simple;
	bh=8jwBnQWJ63LrEAPhrpdPdmg4Wc9g6wd5cijcom3/byU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sy2FLJ2FeEuxDIIBittWC8lR5JtETmv3Wpx+4y0hue6zYqStBUywikQNpvCqFBThWCxbuWzYXKR6U7Ga6+XWIFJmJRlr0Z47wjJJdH5SR4Rw/OSF5l1tMtcJuXh6+grwymsleY7cQZVXSd+BXS+f9rdfczM26U9iuwgS0Cq31pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkozyvUZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OIqX/gvy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JMwvt92981523
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 23:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oFPomil0SIpk0lJD9i8IEel3
	E0KsiclzGclF7FamI08=; b=dkozyvUZyT/DtZrCZzPh3QtNV52IeQEiGPAxO1In
	N3ZbAZEGNeHXVadSSCDuYzGsua9cJD2T5QZ0Yu8c7sl/GIDZIfryqZqcXrViJdz0
	OXQ2Jx7Qr50jnma+rzJFipCY0cOVpBsgpVL6ED9pq2pqAqID8sKbNmvve7Sv3CNk
	dxBc/yD/quXZZpHHIgwzVKUcHtSBDk7bpW99O6GbmK3qP7wXHTJHmz9miAjPVNGk
	Qe3bD53EE1fjKVQ/vohTYEbN3rBm0hv1R4AdeAoag37evuzOZYTUZYM7PxwRLMAT
	491RMigpR1NYuFY0nkrYeMF7YnQZ6fnF1CgqPil0fReF+A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0k081ngs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 23:52:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509070bda13so138127931cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773964332; x=1774569132; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oFPomil0SIpk0lJD9i8IEel3E0KsiclzGclF7FamI08=;
        b=OIqX/gvynPcb8GbOPz7skNVfvmMClt19f6dicEkdmpmSVV2j24ZESWalL18tSNW1yu
         JdB8MYLaw54m2+3OM4oiqfpwtQ+PZsO1Tnl0rjVhm1v5/4ILAxpf6y0R6I3Sq8t9wgor
         vhP1p6d7vMKcsTEDv0h6xE9S1YwYikmLRvNMFGv4INJjoEurA1Ruz5UN3JXCpVoTy4q3
         9oDo/AV1ritjl7PsdfzsFnbNT8Hle5W9KFL2Y9fseVy71hSuDPljV8Fv6MdziXKqWS1z
         Cb4yMikOypIwkiHzjcF7oYioAn8MUvcNAZbUTw9RY3FmEr9S/bqxR3jfSFlHhFMxQnKX
         fFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773964332; x=1774569132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oFPomil0SIpk0lJD9i8IEel3E0KsiclzGclF7FamI08=;
        b=XkQy5rske47RRhk++siRYjb0doMiZ6i4dys6M3gi/IozqYuaV/C6oA+iL5xdvXENWV
         K0k2/HGjd89UixCbeYm2O0+7tanD5OCU6x0aQMhcGBBqFedvpVN8FXWAZ3kpwt3seOqV
         /Gb0jWQBDjUofYLGw1besfVVYhZBzFKFfUCA7UzWzCLX3d00ETs7md1WMqU4pVtAHaLQ
         EdPN/EMJkPUiWeDCepnmjONvoshRiskcPYcMhmZZnEvmyFKUpD/L9mVxZTrlKNarsys2
         Ho+/fU+lDl4xO9b0dKGhqT9wKKb5CkwijGdDkRFDbBlpIgD4/yTxemcD4M2hWTxiDqNq
         nMaA==
X-Forwarded-Encrypted: i=1; AJvYcCWcFdEOGYIgP83+GH7XObCI6fDtiRpxIIRG38uSnlaO+3zZhx/Zb9eLEaLAUhee5UuT2gUbuLRIPtKr@vger.kernel.org
X-Gm-Message-State: AOJu0YzhR7K5P0IDDOq03wrvQmKngCWfzl0rVLIK1eLlVjdeYmI+g+39
	OJfZ1OFxtNGv7gQSPAvf7umgEnDMB7BbqBOoos7TD0ybFIuJ0GurLAizVSBiL+eBuW0qg2HTQjE
	eCIigH96rWz/J3yNYYdm+vVW+ZK/O60qhKx2YcjV5qr61icM7AOWOZmyfYeoaJisDSkYPvE43
X-Gm-Gg: ATEYQzyJaZjLUkmo4g5oBVcRquCa1Umj8SPoibFbbUrFaxJ2h/moe1FLIBUFDMrYc2F
	UDBXzgvNDhSs4Qzz3Y9Bjq6nc/ZX9A519F/QrViS7GYB8fkD2Wcu0IhPabybcyFr3qxuN7sm1ZL
	+Aystc85t1tvLMcxKMO9Bp2QfFvTpUYJscPx07UiS+yVS41bIXK2dNBEGDNWJS8NNWfSPaW+OaN
	5MYcsTO5urv3FaW3uQxHrnR2X5ZhaHFtI6hm+UrqG+nFhyMhOuJAAFvY0UVartKb/GhFz9z0o+L
	p93oBdRqnD+2qesE6PUvpgePFs8mPHZaZNKaF2YF46rZu3vM4GN/c+Xu7B0f5kZkROXNCDRqRbD
	UvJDC4c1WoI7Zxhk6C67hcJiQYac/fD5yOFCeRVitxVtNPPXf/KD+mKq3YqG49jZ1lIXzPRPzJ1
	YMOgpnKfOPMlYl8/q1O6z61w48leQ5hmpHoNs=
X-Received: by 2002:ac8:7fc6:0:b0:509:23ee:b9ae with SMTP id d75a77b69052e-50b2470435fmr72460181cf.21.1773964331802;
        Thu, 19 Mar 2026 16:52:11 -0700 (PDT)
X-Received: by 2002:ac8:7fc6:0:b0:509:23ee:b9ae with SMTP id d75a77b69052e-50b2470435fmr72459891cf.21.1773964331313;
        Thu, 19 Mar 2026 16:52:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf9aac6f5sm1960741fa.33.2026.03.19.16.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 16:52:09 -0700 (PDT)
Date: Fri, 20 Mar 2026 01:52:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5] arm64: dts: qcom: glymur-crd: Enable keyboard,
 trackpad and touchscreen
Message-ID: <jpnjqvaezrqv7l24dotzbyz2s7scyltlhn7xhwtb4akkrggkyk@5epol7lyk6wm>
References: <20260319-glymur-dts-crd-enable-kbd-tp-ts-v5-1-4a440594348b@oss.qualcomm.com>
 <funq3yjordebprhusdkkapw5m4fuqpavhyeguoo7tdffv2ebub@ozh5c7a3py6f>
 <pnd7eeijf5cmo7nmydsd7bvuxhhqbkup6xv2fgpb5gfwqyfnf3@dfr44uwneph7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pnd7eeijf5cmo7nmydsd7bvuxhhqbkup6xv2fgpb5gfwqyfnf3@dfr44uwneph7>
X-Authority-Analysis: v=2.4 cv=MYhhep/f c=1 sm=1 tr=0 ts=69bc8c2c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=7Yi0-eleOIVXHynozEkA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: nHKDSxYL-UlRjpGW7zzQo0wveVpJb8sr
X-Proofpoint-GUID: nHKDSxYL-UlRjpGW7zzQo0wveVpJb8sr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDE5MiBTYWx0ZWRfX2foG1qmaAh52
 j3TcaYFHZasqNa37bsroW5DbOmTyoa073z8lqsHGyj/qIdzyD8cBmJZcyPuHCP7Uzl+0VdHnPRu
 Xv4uV4QpgnXu0TpWZAG5CW08xACcuc+bUlDAR2Pcw99FzoG3DGOYH6jNC3LC0ioC8nrFALCqiCb
 xdmEQ+VJBqAauIc0TsCuY/H+qVFx2UsKGUv1XvyI/JUi3NUSsQdi00k2S2glKixqRwuLzomzbku
 d/KcAD+xQXIVtcUrx+JPtMJuT+HzoGn9Vfn+bF9MYI/hxJuYWnuXAapSRXIrZ4G18alBfXCjnrP
 qyPV8wvzfi6UPehFMk96qnnSc3RYx/PuEYGjkFVpZVeAaxsQFKSRwy/t6r3tk+gXfqMQsr/3m8d
 RVTo2RkScJp0pHnVLzh5E848AUbVptfMP3Le5/ACBlI9K47HJV+9CMUzvtogighgQABlNHwIGK2
 +d7U7rJAHWO1aU8M3qw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190192
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278042-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3AE7B2D4488
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 11:11:18PM +0200, Abel Vesa wrote:
> On 26-03-19 21:49:07, Dmitry Baryshkov wrote:
> > On Thu, Mar 19, 2026 at 05:30:48PM +0200, Abel Vesa wrote:
> > > On CRD, the keyboard, trackpad and touchscreen are connected over I2C
> > > and all share a 3.3V regulator.
> > > 
> > > So describe the regulator and each input device along with their
> > > pinctrl states.
> > > 
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > ---
> > > Changes in v5:
> > > - Since this depends on Displat DT patchset and since that one
> > >   had to be respun in order to drop the non-merging phy patch
> > >   dependency, this one had to be respun as well so that the dependency
> > >   tree is correct.
> > 
> > Where do the dependencies come from? Would it be easier to merge this
> > one first? Or are there overlapping supplies?
> 
> The USB and DT patchsets were on the list first, so it makes sense to be
> merged first. If this one was to be merged first, the other two would
> have to be reworked due to conflicts. Also this is the order in which the
> support was brought up. Also, keyboard, trackpad and touchscreen don't
> really make sense without display.

Well, up to you. Let's hope that there are no additional delays with USB
and display

> 
> > > +
> > > +	ts0_default: ts0-default-state {
> > > +		int-n-pins {
> > > +			pins = "gpio51";
> > 
> > What was the sorting order here? I assume you had one.
> 
> The way I see it, it should be based on state subnode name.
> Which currently it is.
> 
> Do you suggest some other sorting order though ?
> 
> Thanks for reviewing!

Then ts0-default-state > pcie0

I think the recent recommendation was to sort on the pin number, but I
didn't switch myself to it too.

-- 
With best wishes
Dmitry

