Return-Path: <devicetree+bounces-263362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBoPEyvrhWk0IQQAu9opvQ
	(envelope-from <devicetree+bounces-263362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:22:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAC8FE0F4
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1ACFD301F79D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B7B3D646A;
	Fri,  6 Feb 2026 13:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PpzXYYF8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C6jJmH4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878EF3AEF5B
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770384161; cv=none; b=gTpcoq/F15ufyUftrmqkR09J4D/rk6bSK0UpOJIUSXObWnt9+Cth9HWIcrKuZx9g+7MtJ6xA6n3xPbFHOM6N+V1TMAGe44x3yMVCrkQy/phdXbGBLM+/s+JXtggKPl+QhPinIpUfT03W6C48dQmmr+1mXr1BOwCLpbL6b0HUyc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770384161; c=relaxed/simple;
	bh=ilT/E977HzfMfImT0754avNv49Vz/Hq1ePSPioS9hcg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZfCkN/PStZIHs+lItM08LNxjmmYI27YSklzu7lNR9kdNpPur84ErTeC+Wzjsd+T7uEeMKkU7wsbHSGwF8IBtrVDBGlhOvRCvWpB/qEJcFVHvHuHLUce180KPsYsknxth9MtvmAvZg1UoMVd0TpyzrKfiNhdZdQrFT6Qln8Rmgo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PpzXYYF8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C6jJmH4f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6169QPsV2228081
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 13:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3VwgMedd8yB2ZhuRAgPLlFfRSeW0mFjQv1ZUAldmExI=; b=PpzXYYF8KtFUDGji
	OXb2hBQJB7+6JQtuaHQH+/hKZjgT2SHJFO0dA3wj1mkG3WwHnMD7U1Ne3Oh5YyZf
	8+G3nezx3kYhTPAwYs7JDJQCZd6O1HGD4G0Qsm9bCe9JzdtyVNqmYedB4ncDsA/T
	2+F4GkjAAKt+Msekf+uUwZsCEn4AbHYNerlFd6h/Zyy3df+9ORCyu1Ns/TJ1SAoV
	kkcW8hLY5q5lNm0FmAH9ASbwxmANpeRWbEfetvdkaxIxBZgh9XF/vAh5XLfQEbn0
	667CunZVhdWOyHiYfHJ+7DE/+OskPp+WeRJAtkEO3HHh0Y20D9zfZh80QB9i++JQ
	Nv3LIg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5dnygne0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 13:22:40 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35449510446so1783205a91.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770384159; x=1770988959; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3VwgMedd8yB2ZhuRAgPLlFfRSeW0mFjQv1ZUAldmExI=;
        b=C6jJmH4fsheHOJW7Lx1gl8aSZzV6LV9CGt8Vtjb7ZjH3QqjBHvD0ES9B3wNksv6bkJ
         b7jC4QGsMeiX+1erKJK7BhynXCEg1r6KO1Mv4hae4N7S/jXwoETeCTFPtVdF3mVPFDJ2
         ihWNyXi9hZGL9JOgrPh4gLpKwip93KgPEJ1Fw6ua21FZPjMcEDMjAXSGx/+Ag8L7Nn4x
         tndV+Yv+4xrqF91wCAyrFjapI+yhKKdjHL6GshZWZ9wTU5s8+LqWRHxOMt0YkqVKzoWM
         Bh6eBe/dWb89uerG1Os3lZKinK3x73A+6sBgL9mWkqJrUxOzkrHIio6nlfc0ygrpfiFJ
         w27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770384159; x=1770988959;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3VwgMedd8yB2ZhuRAgPLlFfRSeW0mFjQv1ZUAldmExI=;
        b=DU+5yH2wBbjwhN78QFD+Q5Fllfha9bfboLh3QFo+9X6etJvu5YRkoeDfBHzl7XG3sK
         7FbXKPKt4h5VtLqNHR8sOedbHO+XYxo345owe3zJHAUY8x2XWO/n7Feb5tTArtGylzf4
         nSRMIw1HtG+lK2K0A2c2QaUYoB6jsd3SvADZNMUEi7z/fBmH4CfASRyU+ZtYpHIi84uC
         iYYv4ptxHbZ/+pufpehHo8HwryLfNJOpfXSmS8bwSinayhtDQQ/hn6X1tpUvrEkyf+wM
         AUpe+XHpuKlR2Nxks7Pq2XiP7BsRUCRw85J83C/W+lDvoXbs8klDvG2DsajEGmXlS69o
         3eig==
X-Forwarded-Encrypted: i=1; AJvYcCW8+ipg/lDhIeU/7C61K0r0a/q4TjFYbRaUOXHitINewZCtse7ZSIz8JKowZfKibHCdgP1r2zGxcsn1@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx4V07JBOzalKB5EWg7N/zvhYY2LL9vCarj8PA89JOSoosqnKZ
	HNjsCTjayofA/RZ+YjwQnW7sTC6nhoXjpUYLKl8/iXNRNdbzE9qkN+zBUuBdUMWtxQPnYoEX40c
	rTUchJHX5tYvELWXoq/str1rOtMdGl75Om1SXhd6l+8mWV9+Mystpxzsy2DUaYAhA
X-Gm-Gg: AZuq6aJMJvMiaLKeOdCRdCQqW65gkhgYkp5vKjT7Hmosozw7PzHp+wcevqOHj6cV1/u
	dpqJLCRNDD2OeNsLw8fNPJ/JmjZLgQiDBZgSzLaAMQL2h405lRvqpjNmiRqqF1jqaUOjYQ+ipSu
	2ou7r9GOdbfSPZ0uP0n9i0npU/PHbpNWu/m+ANTSUMWCTsLXAijTABO0Tdjes9QOh+TxQHEFuqR
	SwYnsUccEddZ75i8m4J86DRysZ0dSYxZHSEZuK8yNkBuzjKrloa72QcwA6ZxLHl5xeNoTtlDZ0E
	HjZkvD1sPuhijdVUUMB7eX8Ol+aav+cbKvuonIF8XieQHyydOvK5igqtDYZ08Jy96OHyeU3VjPg
	qocJEEgrW9Nhso5Wu6R77jyE/gf2dMv6aBmptK6a0PfkmD8w=
X-Received: by 2002:a17:90b:1d0b:b0:354:a8bd:e441 with SMTP id 98e67ed59e1d1-354b3e6f6c4mr2335911a91.35.1770384159384;
        Fri, 06 Feb 2026 05:22:39 -0800 (PST)
X-Received: by 2002:a17:90b:1d0b:b0:354:a8bd:e441 with SMTP id 98e67ed59e1d1-354b3e6f6c4mr2335869a91.35.1770384158881;
        Fri, 06 Feb 2026 05:22:38 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b21f9178sm2804210a91.11.2026.02.06.05.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:22:38 -0800 (PST)
Date: Fri, 6 Feb 2026 18:52:31 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Enable ICE clock scaling
Message-ID: <aYXrF31eYsnAee2Z@hu-arakshit-hyd.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
 <7b219a50-6971-4a0c-a465-418f8abd5556@oss.qualcomm.com>
 <aYBF3Geeuq2qHmYg@hu-arakshit-hyd.qualcomm.com>
 <cac8e14e-63e4-462a-a505-cd64e81b2d1d@oss.qualcomm.com>
 <aYXYmnFiFbZnVRqX@hu-arakshit-hyd.qualcomm.com>
 <32e65de3-5466-4a91-b7d7-9c0ab9531ef3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <32e65de3-5466-4a91-b7d7-9c0ab9531ef3@oss.qualcomm.com>
X-Proofpoint-GUID: z38qM59Wa8VeVU66EAuM9HMdRiSYAye9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA5NSBTYWx0ZWRfXyDaJe/UZ6rh3
 1lGEfSmZfGBk/Qv7DImrz45b2uZTInZxsTynORlDNvOveZ62wfUf7hbDE6d7h2rF5omokOdMS98
 fEJcPb8ypmWFQRKiVOD1Ih7HDPOrnCuy5KAmCzIcqySPLG+05/2HmJdSVfc0XjbQD1ELz8FfQKQ
 dhGjvaMpC6awGI+qMJInfHxo8cfuWjAAV6X0DXQu1pkfqOQ1fBBu1NUo+oXuxxmmMv7vlP8V8Mh
 BTyEHI4oyKnaegPnCdd1IrzDegWqFeFm5quFV31Bfro+76YVUrUyycG5p2nxmfrQ9dcV6bVg39x
 OtuFOU0VFgpzJw7fF3B1G8D/1Ic4n5BS8MhckvrQtdXS+z9eusNpHeFefZSjVFgma0/Wp/4TSZj
 5B2dCTM7JOlqwTpN8Edai3XA1C1ZwUPrDHKytaURndmE6NF9lJpgFZ/aBU4K2Du9bLCFKigRUKY
 03lSlXRANXG+PlYy6MQ==
X-Authority-Analysis: v=2.4 cv=C73kCAP+ c=1 sm=1 tr=0 ts=6985eb20 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=p-Dtmn_q0YB1zajlIU8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: z38qM59Wa8VeVU66EAuM9HMdRiSYAye9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263362-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BCAC8FE0F4
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 01:14:28PM +0100, Konrad Dybcio wrote:
> On 2/6/26 1:03 PM, Abhinaba Rakshit wrote:
> > On Mon, Feb 02, 2026 at 04:01:38PM +0100, Konrad Dybcio wrote:
> >> On 2/2/26 7:36 AM, Abhinaba Rakshit wrote:
> >>> On Thu, Jan 29, 2026 at 01:17:51PM +0100, Konrad Dybcio wrote:
> >>>> On 1/28/26 9:46 AM, Abhinaba Rakshit wrote:
> >>>>> Introduce support for dynamic clock scaling of the ICE (Inline Crypto Engine)
> >>>>> using the OPP framework. During ICE device probe, the driver now attempts to
> >>>>> parse an optional OPP table from the ICE-specific device tree node to
> >>>>> determine minimum and maximum supported frequencies for DVFS-aware operations.
> >>>>> API qcom_ice_scale_clk is exposed by ICE driver and is invoked by UFS host
> >>>>> controller driver in response to clock scaling requests, ensuring coordination
> >>>>> between ICE and host controller.
> >>>>>
> >>>>> For MMC controllers that do not support clock scaling, the ICE clock frequency
> >>>>> is kept aligned with the MMC controller’s clock rate (TURBO) to ensure
> >>>>> consistent operation.
> >>>>
> >>>> You skipped that bit, so I had to do a little digging..
> >>>>
> >>>> This paragraph sounds scary on the surface, as leaving a TURBO vote hanging
> >>>> would absolutely wreck the power/thermal profile of a running device,
> >>>> however sdhci-msm's autosuspend functions quiesce the ICE by calling
> >>>> qcom_ice_suspend()
> >>>>
> >>>> I think you're missing a dev_pm_opp_set(dev, NULL) or so in that function
> >>>> and a mirrored restore in _resume
> >>>
> >>> Thanks for pointing this out, its an important piece which is missed.
> >>> We can use dev_pm_opp_set_rate(dev, 0/min_freq) in _suspend and restore the
> >>
> >> FWIW
> >>
> >> dev_pm_opp_set_rate(0) will drop the rpmh vote altogether and NOT
> >> disable the clock or change its rate
> >>
> >> dev_pm_opp_set_rate(min_freq) will *lower* the rpmh vote and DO
> >> set_rate (the clock is also left on)
> >>
> >> Konrad
> >>
> > 
> > Thanks for the info.
> > I guess, dev_pm_opp_set_rate(dev, 0) seems more ideal as this is
> > API is for full quiesce mode and the clocks are anyway gated in
> > the suspend call (clk_disable_unprepare).
> 
> Yeah, please make sure to call dev_pm_opp_set_rate(0) *after* you
> disable the clock though, to make sure we don't brownout

Sure, that makes sense.

Abhinaba Rakshit

