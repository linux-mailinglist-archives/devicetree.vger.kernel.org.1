Return-Path: <devicetree+bounces-266825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBTeMl8OmGlF/gIAu9opvQ
	(envelope-from <devicetree+bounces-266825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:33:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CB816551D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCE77301DAF4
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C633321A1;
	Fri, 20 Feb 2026 07:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q34j58us";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gPuTGfjm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C752B1D555
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771572828; cv=none; b=c2tgLsT0hrZ5WPeslPkoReaW2MjTI7PWbIwfir1cfPgC8FexOKomY1itTU+EnyP2GFL3eWwTikQtbYucqGvi0MuSFVEIC6dJxmJg3GOlxLQta33Nl6HZoEUMGmWvbEkTPQmSBOmvdG4W1YIFiFwbHWAIlx+EGQlpo0gaJYWbzHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771572828; c=relaxed/simple;
	bh=xsvf9jYLQBHdxJveFh1wo9nT6UQDkdrlu1DELW+03LI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5GBhJD+OjRD0vdqesixy03KysixiJU1LIjzJqhl0UlExDmxy1HT/YNDL51AZR9fOC/qsoludp/2ECELrgjIIwjjAsFmPODaIsxQ/L4hXbJmzQc8C2pk5qgdnjvg1EyaohIX6ikYj6yqImMhFoYZMzLlnJNTVABnugZ4UUFqJRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q34j58us; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gPuTGfjm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S81w3337648
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4qV3RCnNtuJMys8ptmXIK3yq
	TjaBi+kJiADEiO/bAwU=; b=Q34j58us3ZFKvTyOKKsR7HHKlHXgTMmIqP+OhCfB
	hfH4FlNralDhDbpYMp8UhQZz4mpDTw7V7fK5MGyDemoX0bPl1PvA7LYumGR/eVCz
	NU7hfCMa01ea+rlqkeYXjbHDI/jcbJd+6v3BjTU+W2lbT2KXZmyQ3QsII5ww6seF
	kV9i/8LiOEFosAZTwAEWeuVC9RRQuE0VCI/i+cxk1XZzwc8j7vn+ahkof8AEiktn
	xg+Et7tB7JcQ3Im54bAgyMzDV5yxGDWPj9anwwv75aOdIEXzTuzFKPf2Ks2xU7Xa
	y5pNYAVmiD/tsLtOlLyVPAOp1wE5DmAZ8BZsMpO03STH3Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6gv2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:33:46 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c5291b89733so1400767a12.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 23:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771572826; x=1772177626; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4qV3RCnNtuJMys8ptmXIK3yqTjaBi+kJiADEiO/bAwU=;
        b=gPuTGfjmThFGFJ7vDA/nldhNkVLjQaKBT5RfUBxuqjNqsC+T7HL0DvLi+niqb3P/vd
         Jpetz9KvTcMMtpbLm+poF4R4soFyZqyV/scYb8V3PgczPhQ3v2XWCFadnYCoiwmecR/O
         44c44P1/drLOG2D8GBVdE/E5bpQ7VKLGe+zLzsefSLHoB9dhvq18wU8Cyc0tkN8lx3GS
         ddMH6l+rghliHTXnSsadODh366uns0wieugqhLnwUsBJKb7DPHp3uhWIXaBKpC/yXqse
         M0JZdUgwSjaXDri3LhiWwR9lv2w5ft8YZoRVTbdLiT1YblpFNsvEifNbSn0z4IojC/d/
         veNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771572826; x=1772177626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4qV3RCnNtuJMys8ptmXIK3yqTjaBi+kJiADEiO/bAwU=;
        b=EU/7F/+IL8v1tU/dbjKRuaBzQ7UXpnImT/sTUDZbTZQmPl8dvR16jCm3bB+02ap26M
         w0bbbO3myNwI2r1lgscQpOPsLpRnz6Fl9wddon5bMeRS/vwtp2WkDsbycrqm7HaYrsTF
         C7AFtKTrwB8xTFyewr0JRvehya/mHcVXT7BYWlc9NCtCBVTJeoFeq6oqnfpgsQ5zAeq8
         mOwpiKS48T4JcEzS6gUsDOjwvM+vPzspNauW9Zj7kLEIlOT/1i7Ru7lkJ/qve7HTl/RQ
         WaYVyYvYRBhTH5CZ9H2HApHrNWDlwmmNqiCxoDMoqzSXsxiiQ7ma5CkRkB/Hmcc8lQyc
         L6dg==
X-Forwarded-Encrypted: i=1; AJvYcCVC/01g/Ts34UCsZqkBZKoIewwb4hqpUzgQ9akHWxSecSkonINADTuTC6MGC8TwS6nBH6GLT+qKso2F@vger.kernel.org
X-Gm-Message-State: AOJu0YyqNw4+x9bvEeEwOR8+ZoTcNl3cudpdUdL4Y1QTocS9v6KdjZyR
	1FhJCdhQjhpZDspGM22fkwm5aRNx4FoKQ0WTYQDJeC5UbnKqitaRF47r7j6wzH7v2D03WJvDDQ6
	L2L7KGbdWJnEFB6hubZkwBOVNTeEe4w2y5CtXuSDrVPeccA724tkvCE/H0ZysCOas
X-Gm-Gg: AZuq6aJ/6rutHOD0kcMpmvMjAp7jdeIxWq/aGxNt1gmw7V5wIOS5DjIsOyKBa0fy29e
	Eh1IlrJ8MvqllgqlV/zVDXByvU9JA5e6rkpO6dZYeYLvpXGNUAZZpJANs/Y16YSqsyPM9b+r0kJ
	MYeU7mFGMB5T3jrHp40oYTFspWO/nlqRrtNSkfYHDF5CLWXbB/HL+GEBV7k3/pyYHXcn6j44/wq
	kMQ8iLQYGZLAl3pV4dJnZ5Iw28EetGYOKO+MuNwt467aae0zzqQ/Q2zDEbqy83m6qkDErCrqwOs
	fGCWZwtCkPJkjvnP9/A9Zb7hK3Td4pPvAu2WUNJq8fBg7eCuVUnFivQ32syTFpPqz1KwVnHkow2
	a+fDIboT/PGvBK1sKJUXM51KLXIQjoLA/W4nTHPQRw4NWsx/wFyR4wByoqzk=
X-Received: by 2002:a17:90b:1b41:b0:341:134:a962 with SMTP id 98e67ed59e1d1-358891ca0f2mr5846324a91.28.1771572826218;
        Thu, 19 Feb 2026 23:33:46 -0800 (PST)
X-Received: by 2002:a17:90b:1b41:b0:341:134:a962 with SMTP id 98e67ed59e1d1-358891ca0f2mr5846304a91.28.1771572825705;
        Thu, 19 Feb 2026 23:33:45 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e532f2ba0sm17096468a12.25.2026.02.19.23.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 23:33:45 -0800 (PST)
Date: Fri, 20 Feb 2026 13:03:38 +0530
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
Message-ID: <aZgOUv+QweA7vE1W@hu-arakshit-hyd.qualcomm.com>
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
 <20260211-enable-ufs-ice-clock-scaling-v5-2-221c520a1f2e@oss.qualcomm.com>
 <bfbe04db-bf64-418b-a75a-88879bf0bf2d@oss.qualcomm.com>
 <aY7MidG/Kcrs83O9@hu-arakshit-hyd.qualcomm.com>
 <3ecb8d08-64cb-4fe1-bebd-1532dc5a86af@oss.qualcomm.com>
 <aZYMwyEQD9RPQnjs@hu-arakshit-hyd.qualcomm.com>
 <6d2c99c4-3fe0-4e79-94e8-98b752158bd6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6d2c99c4-3fe0-4e79-94e8-98b752158bd6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA2NCBTYWx0ZWRfX9uQpqu6M07w+
 kCz/VCi45O9fZuDSi8wjprT8V1Fj2fvyn/OXP8COksoU+bjZP9ndkz/Bv8HjNXgTe5IiQGdIfjI
 4i5ogWFMyqL+AOccwcNegfutp+jy0JQ3TVVsfmhcnoj88vEMUdBH25fHonWC0ERqvMJ/YGi0LBE
 N38hJwFHZJV1LSJGXIlOazbZ/7m9ObYiWqXJ85TN62XbNOtTw/1O0TBrBr4PFroJ4lNQT6xtxYw
 PjGNKrh4LO7zgV37AhqDF0POKxHd7HGwZkXDJqFdioEvWm2Jrdmg3Dq63zmVgi8Uym8UE3cYAws
 EXVsl5IkGnGe6BjvcwQemfj0dKpvKYGtUux8gy1AGK7q7YusQRSQxYScN8NI0iCCvT/XCI5P4Oz
 ATCWQ6WWOtgw2W9yoUfJnZIkEeto7EX+R3VtRo0ohN3l0C5WkTRR1gQ+s/+q4P+K6yP99cKicPk
 KIvcJGhRG2b8SM4ZVKQ==
X-Proofpoint-ORIG-GUID: UvANAPINBvCoXz7BnVG3C3_ymMmm1WHr
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=69980e5a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=BdqzZBkdcrjdDIVejFcA:9 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: UvANAPINBvCoXz7BnVG3C3_ymMmm1WHr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266825-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hu-arakshit-hyd.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 23CB816551D
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 03:20:31PM +0100, Konrad Dybcio wrote:
> On 2/18/26 8:02 PM, Abhinaba Rakshit wrote:
> > On Mon, Feb 16, 2026 at 01:18:57PM +0100, Konrad Dybcio wrote:
> >> On 2/13/26 8:02 AM, Abhinaba Rakshit wrote:
> >>> On Thu, Feb 12, 2026 at 12:30:00PM +0100, Konrad Dybcio wrote:
> >>>> On 2/11/26 10:47 AM, Abhinaba Rakshit wrote:
> >>>>> Register optional operation-points-v2 table for ICE device
> >>>>> and aquire its minimum and maximum frequency during ICE
> >>>>> device probe.
> 
> [...]
> 
> >>> However, my main concern was for the corner cases, where:
> >>> (target_freq > max && ROUND_CEIL)
> >>> and
> >>> (target_freq < min && ROUND_FLOOR)
> >>> In both the cases, the OPP APIs will fail and the clock remains unchanged.
> >>
> >> I would argue that's expected behavior, if the requested rate can not
> >> be achieved, the "set_rate"-like function should fail
> >>
> >>> Hence, I added the checks to make the API as generic/robust as possible.
> >>
> >> AFAICT we generally set storage_ctrl_rate == ice_clk_rate with some slight
> >> play, but the latter never goes above the FMAX of the former
> >>
> >> For the second case, I'm not sure it's valid. For "find lowest rate" I would
> >> expect find_freq_*ceil*(rate=0). For other cases of scale-down I would expect
> >> that we want to keep the clock at >= (or ideally == )storage_ctrl_clk anyway
> >> so I'm not sure _floor() is useful
> > 
> > Clear, I guess, the idea is to ensure ice-clk <= storage-clk in case of scale_up
> > and ice-clk >= storage-clk in case of scale_down.
> 
> I don't quite understand the first case (ice <= storage for scale_up), could you
> please elaborate?

Here I basically mean to say is that, as you mentioned "we generally set
storage_ctrl_rate == ice_clk_rate, but latter never goes above the FMAX of the former".
I guess, the ideal way to handle this is to ensure using _floor when we want to scale_up.
This ensures the ice_clk does not vote for more that what storage_ctrl is running on.

Also, this avoids the corner case, where target_freq provided is higher that the supporter
rates (descriped in ICE OPP-table) for ICE, using _ceil makes no sense.

Abhinaba Rakshit

