Return-Path: <devicetree+bounces-265259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBXHG53MjmkRFAEAu9opvQ
	(envelope-from <devicetree+bounces-265259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:02:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C442B133612
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE56330602CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2663A27E1DC;
	Fri, 13 Feb 2026 07:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HQ7QopFP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="btYcHED7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCAD26F2B0
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770966165; cv=none; b=Vt5yyGtiBTTkxrk3pBKuHXvszsY+9ty1vzvvZG/dbZcFFOsWuIxGg+rZiZhUuOlT60qMvcjdr2JWt44hWfb3B/19elYcr7rrWr9ZN9jgQAC44cGyLq/metLARU9Iv73TZQF3SjVjP1J88WjYcSR1WjN/PqLFOLHg3ySKN50A2Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770966165; c=relaxed/simple;
	bh=YPjLcEY4rANgxIqPduKrQOQlDIe69vI+TN1NbWtesA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gsXsIhbQ2JVXv+qfYXu/wPDWFhYstDoWXz0CvznNiGTpldOfoosg3yGdpSBm3fmVY86qJTrrqy3HRIigga7UeQlwIwkoYijBP8oNX3cFyVwCQj4j8QSmP3HIhyhSOWcL0ElNhCsEBl2x21C54kk9+lBLnIgNHdWZFCyO4MKe8As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HQ7QopFP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=btYcHED7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D54CjL1827825
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:02:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ueBVrP/Dr00G/Np3iU43iq53
	p6C33zJvmbCUg30e9pU=; b=HQ7QopFPL/RpnoPwudVfqTytYZ0AKVkGtx/A8X6Q
	eAzQO6RUfjg3wV/x2yhH8z0FNP4zsbGJ1Xq9Fh02rywfcjJ4VE88y7tAZGy/R2De
	vMeP6MWrEAK+VOZaym2raJmZnfrrZIj2RUq7VovGlCotlFcrmS+YRORazApFv272
	vb/ArNsHH5409DZRY2Ajw6UH9c00MZrgza4Bqi+8w2d+JHGPrc+GVntQyWg48v8b
	ebQUvzQg0Wi52tg4vxAIohmo3kBLFkLC9vlBINRzg1cgJ158mxrVLxwDJte4VP03
	2AljHTqQED3QOjPXaGWDssLbzR4QnSS9LXKBP1Sa50/A9w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9wg00bk0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:02:42 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a944e6336eso26807695ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770966162; x=1771570962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ueBVrP/Dr00G/Np3iU43iq53p6C33zJvmbCUg30e9pU=;
        b=btYcHED7SiHi042VVYlPd58rSk4B8XMt9WFq26+4PCtfuPrMf9x9x1NVGiPIu3iHak
         DHbMYQ2Mlnua51vCvA3Y/I6yYYPD23dplqs+W6x3L4qwafVMQZFLSCf6t84EtQRWChR7
         CcZhNVbdtzrsHSckFBtfLMII1OPy8rng+4TEwPXe3FixqGapOvgM4LVbrr95rwCVvQBr
         ZOmXojWhPeMgEiUz+9AHc3eHBYAM4Cl6TXuDcx2mvY/dUKa/JqC0OHdSFdqZ4Zpp4Fes
         k7pHz7VVn4+ymZIOHIwx7mKpW2FjN3DGFR0tBLVH9A6M8JoLdt6fmbQORzzNw3b9+fjs
         n46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770966162; x=1771570962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ueBVrP/Dr00G/Np3iU43iq53p6C33zJvmbCUg30e9pU=;
        b=hvvv/H4jgzhUgU+VnH2rwA848lM22zVlpT5RVXmf/48ZSr9I1YaRDZbqmqpafXnXgC
         qawFvjmyDRhlWyR+BW9Gt0k6kjUcnLmn896cizVZ7jxERn9OZrw3F2gyOtyAvuvBorRS
         mT/GoiKg/ZswkCepRJZ/RGQwwLZBErveRIuv4TwJvUI2kfgNulLsvkcJPXQaioxBzXzW
         ndF7ahHt22LUGYl65sqlt8aJNRWvk4yEN7P6ufKUdGksoGpjyq2gvYDk8LWPa4SQgVRC
         Yj3V4dIEbW3gzURN28ENthM3OWEcTLD3nrRMrV7XIoBIEcxTC9coDMzZrpYXpWybR/Ml
         C4Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVx/Bpkn+XF0OxmlBBjsqmxYpXVr9vdWcqOgeYLlk5Hbx3GAMtluyohew2gNVXeZtGW8nY9jHLeLMHb@vger.kernel.org
X-Gm-Message-State: AOJu0YxDZPuEREV0LtDcIN1jO5MFmWM7mvocC2sO1mW8S0qnROdyCmX8
	uIWITdg41dW3l9JOwyGnLf1JPDEy4LHHh4IqB1D8aRsVyRk0DTgp2/r62Z+80cw3gicT7r+R/22
	1tMYouEKFXI3Q7Qdw1oWWe2s5y68Uc5K6/XO79X0koIfAyXhzAw1onm2dYgMXAmp/
X-Gm-Gg: AZuq6aLqPNC1hNLkWN8DiTDKKV1qfpty8HqutzjY/VZgmVXEp64UNmFVDBlhsjqTokj
	45QmFBz5zpaSXxzXGd5ud+vUaFGPWmrQ11n5GExDjjO8d2qVnqPCFiAb3XQymXF1+giHHRqyjTp
	+gc0cRC8nSPyw7KlwdXJXAsIxLrQ9jvPlnNZp1ub+Oe0fTrBBP+Tt3l2vyrKUMNnTYh2Y2OL7rG
	uGls4txNG5mK2tnCmMd4mouDy3x/Q4K/O9qF6gPXZEknnPl5M/jLb66WX9n94WMjDLQ/hhpuj0P
	RYSdXN2uyZDsGowjbZJBsawGHv8oXpXkwb71CHwQdIBe0CMKMExaZXI7RMrM52/cLOulqBOEriD
	2glazuC+5CnSOzwoBf2dDUvidU7Pvt/i42Vn2N3XJuk99Ae7jYa0ADpFWlNM=
X-Received: by 2002:a17:903:2282:b0:2aa:d350:fbf0 with SMTP id d9443c01a7336-2ab5054aa42mr12147825ad.26.1770966162127;
        Thu, 12 Feb 2026 23:02:42 -0800 (PST)
X-Received: by 2002:a17:903:2282:b0:2aa:d350:fbf0 with SMTP id d9443c01a7336-2ab5054aa42mr12146895ad.26.1770966160833;
        Thu, 12 Feb 2026 23:02:40 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2997a660sm74391245ad.64.2026.02.12.23.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:02:40 -0800 (PST)
Date: Fri, 13 Feb 2026 12:32:33 +0530
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
Subject: Re: [PATCH v5 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
Message-ID: <aY7MidG/Kcrs83O9@hu-arakshit-hyd.qualcomm.com>
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
 <20260211-enable-ufs-ice-clock-scaling-v5-2-221c520a1f2e@oss.qualcomm.com>
 <bfbe04db-bf64-418b-a75a-88879bf0bf2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfbe04db-bf64-418b-a75a-88879bf0bf2d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA1MiBTYWx0ZWRfX0CMfy7JO39JG
 X+YaBRLy9egFXxMSSM/PMpM6/iXm+gR5Jg65+XyBx1xluO6XaWchdvY02WLTZfmKKH0qwbiITdS
 E0i/XKMfQ7VlqD1WF8vd9h1XIvEokHabPEYRrP/cLCSuNrWMSpE0jREIiP8Xz3x+2raWqYTJw41
 THxaAMp4NObvWD6pbpYGM19hoYrEID8KxUh60OUFCDWtSDu02u3Z/LQoG4azLDPH70S3kYX2VwK
 poS9SUCr/g0Nt1PS5u5m1RtXhpAw27fef2xbsdYSAr6wWC8pagdKTaepxHjbbSk5VsTTI7Wp/1D
 pLkuMiSRt0aP1+i91bFi/5/JXUyj+HVQwUtNqciEjVG12sRPKYJLJOuY6CZOskjRI3+QsUgCNvk
 CDxPNDy+Aoqbq+IYIUwSmxVMJaed0F5kbzxoJPonPuW7ItvDayhgA7tBvILeLNbxznTd3jz5x6X
 15g0IzLXFg6YymfJlqg==
X-Proofpoint-ORIG-GUID: 7z_ffnVNvE-r_qT8NyJ_THUpLvoiRkUQ
X-Proofpoint-GUID: 7z_ffnVNvE-r_qT8NyJ_THUpLvoiRkUQ
X-Authority-Analysis: v=2.4 cv=bo5BxUai c=1 sm=1 tr=0 ts=698ecc92 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=q3I9YNJuSRWBU34YNAkA:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130052
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265259-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hu-arakshit-hyd.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C442B133612
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 12:30:00PM +0100, Konrad Dybcio wrote:
> On 2/11/26 10:47 AM, Abhinaba Rakshit wrote:
> > Register optional operation-points-v2 table for ICE device
> > and aquire its minimum and maximum frequency during ICE
> > device probe.
> > 
> > Introduce clock scaling API qcom_ice_scale_clk which scale ICE
> > core clock based on the target frequency provided and if a valid
> > OPP-table is registered. Use flags (if provided) to decide on
> > the rounding of the clock freq against OPP-table. Incase no flags
> > are provided use default behaviour (CEIL incase of scale_up and FLOOR
> > incase of ~scale_up). Disable clock scaling if OPP-table is not
> > registered.
> > 
> > When an ICE-device specific OPP table is available, use the PM OPP
> > framework to manage frequency scaling and maintain proper power-domain
> > constraints.
> > 
> > Also, ensure to drop the votes in suspend to prevent power/thermal
> > retention. Subsequently restore the frequency in resume from
> > core_clk_freq which stores the last ICE core clock operating frequency.
> > 
> > Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +/**
> > + * qcom_ice_scale_clk() - Scale ICE clock for DVFS-aware operations
> > + * @ice: ICE driver data
> > + * @target_freq: requested frequency in Hz
> > + * @scale_up: If @flags is 0, choose ceil (true) or floor (false)
> > + * @flags: Rounding policy (ICE_CLOCK_ROUND_*); overrides @scale_up
> > + *
> > + * Clamps @target_freq to the OPP range (min/max), selects an OPP per rounding
> > + * policy, then applies it via dev_pm_opp_set_rate() (including voltage/PD
> > + * changes).
> > + *
> > + * Return: 0 on success; -EOPNOTSUPP if no OPP table; or error from
> > + *         dev_pm_opp_set_rate()/OPP lookup.
> > + */
> > +int qcom_ice_scale_clk(struct qcom_ice *ice, unsigned long target_freq,
> > +		       bool scale_up, unsigned int flags)
> > +{
> > +	int ret;
> > +	unsigned long ice_freq = target_freq;
> > +	struct dev_pm_opp *opp;
> 
> Reverse-Christmas-tree ordering would be neat

Ack, will update.

> 
> > +
> > +	if (!ice->has_opp)
> > +		return -EOPNOTSUPP;
> > +
> > +	/* Clamp the freq to max if target_freq is beyond supported frequencies */
> > +	if (ice->max_freq && target_freq >= ice->max_freq) {
> > +		ice_freq = ice->max_freq;
> > +		goto scale_clock;
> > +	}
> > +
> > +	/* Clamp the freq to min if target_freq is below supported frequencies */
> > +	if (ice->min_freq && target_freq <= ice->min_freq) {
> > +		ice_freq = ice->min_freq;
> > +		goto scale_clock;
> > +	}
> 
> The OPP framework won't let you overclock the ICE if this is what these checks
> are about. Plus the clk framework will perform rounding for you too

Right, maybe I can just add a check for 0 freq just to ensure the export API is
not miss used.
Something shown below:

if (!target_freq)
    return -EINVAL;

However, my main concern was for the corner cases, where:
(target_freq > max && ROUND_CEIL)
and
(target_freq < min && ROUND_FLOOR)
In both the cases, the OPP APIs will fail and the clock remains unchanged.
Hence, I added the checks to make the API as generic/robust as possible.

Please let me know, your thoughts.

> > +
> > +	switch (flags) {
> 
> Are you going to use these flags? Currently they're dead code

I agree, currently they are not used.
However, since its an export API, I want to keep the rounding FLAGS
support as it a common to have rounding flags in clock scaling APIs,
and to support any future use-cases as well.

> > +	case ICE_CLOCK_ROUND_CEIL:
> > +		opp = dev_pm_opp_find_freq_ceil_indexed(ice->dev, &ice_freq, 0);
> 
You never use the index (hardcoded to 0)

Ack, will update.

> 
> > +		break;
> > +	case ICE_CLOCK_ROUND_FLOOR:
> > +		opp = dev_pm_opp_find_freq_floor_indexed(ice->dev, &ice_freq, 0);
> > +		break;
> > +	default:
> > +		if (scale_up)
> > +			opp = dev_pm_opp_find_freq_ceil_indexed(ice->dev, &ice_freq, 0);
> > +		else
> > +			opp = dev_pm_opp_find_freq_floor_indexed(ice->dev, &ice_freq, 0);
> 
> Is this distinction necessary?

Well not necessary. However, I wanted to have the scale_up option as well and make use of
it in the API. Hence, I thought of having this to be harmless.

> Konrad

