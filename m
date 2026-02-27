Return-Path: <devicetree+bounces-269418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMUfG1X6oWlkyAQAu9opvQ
	(envelope-from <devicetree+bounces-269418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:11:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAD01BD4BE
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 442BD305A876
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFC747276C;
	Fri, 27 Feb 2026 20:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F3WYDC8Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MQogIwf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC4046AF27
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772223010; cv=none; b=TP1obSRHX7qhOkJcpB6Wdol6sADCrbkBXMXP41DhqxETfe9ntoQZ9bntn/GjUkG8hIQZiP7Chmg2mNS6BNq135s3xXdvL/LYZ+P5bMShcxKEZ7dYMZb55Qz4OjS2AJVwc516kcTAxYzgkLcMuGOiNfR2GtPDcLv6AKSmipgS+Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772223010; c=relaxed/simple;
	bh=o5aHsvJaTFuPji0E5MKJdnk2ycrDX7jf32FdPIrYtQY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uvVssgFN7YAQzYwH0nav/0akuunwntvV66waRV7c9FsxQXuwNVTEKpCQCnzkYsnAagXXr+nWTU33K16LqV+vXw6YjBRxCwjRzU3ewVIHQTKkM11MlLLYdW/v3pPUEJ80u050fnf2Q4dShXGgHR7GpF3loKkdT8U46dfBb4uKjJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F3WYDC8Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MQogIwf6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0IDj131618
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aPFcKoIqKpFHQXXPANaemdqA
	aAJwlADq8XtlaqdUVBs=; b=F3WYDC8QuuZimsf+gZPS2WE5l0iNTrYJQ9ZxQUJ+
	thD6wxh9CqKNuYSYs9pVMMgnZWtRKvuwhyxCpBMqDPICCRuHSN1e+w3CUQunFnFy
	L30nP+NkPdV2jjpM65bzd99e7ucR00d4skbw5HugholEtIiVtVoCThZIxOmFeBIH
	jzo00rIJdKBHH4zLVbHSOSLjRSZrvtLpbiBlbJMwQ4n+gFul1OGmNTyl00FD7ujM
	n9ol4S2jo9e5XeNeLBomVt7dlidhhrmCN0FE37jKVFq47bpXh6n72faCj6iIwXzm
	3ikNG1RJvCeBMLtmD5i1SxIfrwc3lC6MwuZSXmp2loVF0g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43rb0mp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:10:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3ff05c73so1867554685a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772223007; x=1772827807; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aPFcKoIqKpFHQXXPANaemdqAaAJwlADq8XtlaqdUVBs=;
        b=MQogIwf6lSvYJ8Do6xYib8QicVQD0z22GCziVqHc48n+9Nk9qZhwee5IuLl38asRq1
         l2Vk2KfmjS+Ko3Zd+rqd4c8d4jLXrQJFxJ6+rvyuHYzNyAag1p4XV1mxWIuy1L+eweq7
         +WP8wH34PODudoZc2SGJCCCC8+3mEVhdBBABN8awds+ogifnjmlpEzSuFDpM+b+bHvB6
         9lMxDp4V92eL1LBtGjBy4ZQnivuqLOY5VZ290ztmjvo/pbxWrAkYVowA3kYhwUCBeAWm
         U3FOnEpj0bOKzOjiumYuTmjuTQcZliSDXrD3X3MJj8EkYzNjF3EFhAAlBXUoZyPPHIqM
         nqEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772223007; x=1772827807;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aPFcKoIqKpFHQXXPANaemdqAaAJwlADq8XtlaqdUVBs=;
        b=Or1YJ4aNVMM78eKDIlRvKjtCAplKUTvhnwGLrXsS0y6LHQ2vsPCa0En/wsFtCrtEQJ
         A8JFhsCyE58SL+AELX4IsRKm8IiMPg3j/2ly0YtunutPoLUNF9ejWZeCRkVmu3hpuXPm
         zsE6T+auYdM9JgIvXpX1iZuUJ/E+PE0gmS6PDvj0F3s2LZIwTkcH40F+Z9rhQiAokpjy
         BLH978TRxyD8C5v/fPNm3v2g6cgiuVzH6F0zBbi4sS4EM8UlOBMP553X6E2L0RbERVwR
         KI4bN5zJxTnjfe5k0h5/yZ3iu2bmHCjGv0DS3wb6dExJ/DXlraPKGb/oGCLbXObxUIui
         gZaw==
X-Forwarded-Encrypted: i=1; AJvYcCVaUNMMGkuw5lupCFimCuJuUiKfhD5XGTilDBvkPnJgJoUrUhDgHkCvLBRXl7i628L2ifw7gL2YCuCW@vger.kernel.org
X-Gm-Message-State: AOJu0YyuUy1+VtcnzbGSfgFBvhUs0f9ocEsgYiQZyXk0SO3A5DBoBjVx
	27R2IkBB+iLbMuFqo9/M7reXeXl06FhEihhCv7sghOHbaIHK1iIgr1Fnf/z4hf7IRENeFqHrLj/
	8/L/Z5b/BlaG6CCbyz+e8BY4JYdtCUM5QG7n8K0zoUOrwkHYUtnhu0OPt6xSDOreX
X-Gm-Gg: ATEYQzzxmVDlwdN6oZ8KFTKq/OxcTfbdzzi1Vvu8Rto7ObVqakxX7k0XuJ0XW4/dvPE
	VblRz+8Cw2VoibmUtmkNGfHxEfSPe1WtyG47jwSqkGzzMxUDy3K+MWD1dbgJnuNwK7LsPgOYslH
	9o+9uUskyTYP7oYAad+sLol15Ihi8Balt0YkqNhTb4/FT49HuICJZ13igX4+ScWl4UxSAtKRgt/
	h3ugMEUU9oEWs+gXb9oNP29EpvwZVty9VKmJMjesmJWz9/CZZ1wCDwPE7e4Qg1KwwzL+J2vCekN
	+DaltWYuQP1o0p8BQ42I+dwNqaqmOwNsxJRtG+AMeEPrWslCXEwyj8gXfVMg8g8uMi3k1/PuSx7
	PqeBlsAiXhuV1E13WzdL8SYl5/a02aK5VHGeiTJb5Cm7n/i2Mr65umt6jq5ZNWQ/y1N7gr6eXcZ
	pzbfkL0lby3XjewIOuq0DNMlKYICrclv+Er/U=
X-Received: by 2002:a05:620a:459f:b0:8c6:e2a5:9715 with SMTP id af79cd13be357-8cbc8f1b6edmr587673185a.55.1772223007207;
        Fri, 27 Feb 2026 12:10:07 -0800 (PST)
X-Received: by 2002:a05:620a:459f:b0:8c6:e2a5:9715 with SMTP id af79cd13be357-8cbc8f1b6edmr587665685a.55.1772223006750;
        Fri, 27 Feb 2026 12:10:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115c33c37sm147621e87.82.2026.02.27.12.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:10:05 -0800 (PST)
Date: Fri, 27 Feb 2026 22:10:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH v8 02/18] dt-bindings: media: qcom,x1e80100-camss:
 Convert from inline PHY definitions to PHY handles
Message-ID: <woncxvvebqt2iyoozkjnpjf3k5w4ibwzf2yhk3zbtck4fz2lgo@ai6rrd5iqpvp>
References: <CuJMpimPBtwHGAd5-YHUArL6FkU2HQeY4SjbxeMwf0ToQ7LKO3zWSTn86L-HKxC1KfarWc4rRbZqnCMQsv0pcw==@protonmail.internalid>
 <20260226-fluffy-complex-malamute-7ecec6@quoll>
 <35b1ba2a-e156-4542-b33a-d4e53f6a62cb@kernel.org>
 <tVxcOw7tqTRGXAoW06WPM_voMVBY3SO7Mm_MTMWp6OuotVmgmyi0DOgVHdDavO2V6o3iRH7ax0NosgHuzGkHgw==@protonmail.internalid>
 <4ebe2f26-29fa-4104-bc90-3f5aa7009ec3@kernel.org>
 <c2d9742c-3d82-4340-a11b-16370bcad5ea@kernel.org>
 <72f0ed74-ac86-4571-8a72-d41282349718@kernel.org>
 <d1ddaa7f-cfba-4e71-8a9f-70014c57de74@linaro.org>
 <934812b1-a853-471f-beb7-3988eff0856d@kernel.org>
 <71fcb165-7fda-4714-b56b-40d6537b8ccd@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71fcb165-7fda-4714-b56b-40d6537b8ccd@linaro.org>
X-Proofpoint-ORIG-GUID: R5cx33xx8UzHogP2dC-hTfO0_LU2T9Fy
X-Proofpoint-GUID: R5cx33xx8UzHogP2dC-hTfO0_LU2T9Fy
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a1fa20 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=IO7rWolNlSVxHX4F2dwA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NyBTYWx0ZWRfX6zkczBioRYrx
 +MM67Wt5Lh3JUex6UsmTScehMRZ+opI0Sd6S5N9mjBkYaqh5HTqqjmxnZr83okzDEresJU7Xzln
 3hHbLQGn7Bdd9HmJgwOIswQqI4icsWeuWFxoVC6PAMRNf4oZ0fjp/EYcMlv9+y3HQY0S35A+eA/
 b8cgUgYiktWvO0ky/DCFAnj28+Faxk6tsH3HtnxmrJpoAk36z+vxEu35z10Be2P0ximL2RRNzeX
 GF1iuZDMAuYeuoFk/0yuq3N0rjoan1JSe8imwCCbw/fAazjCsx3fuXAwalQJmB3OQghw3Z2pWUi
 jz2OqVD765E6kDQhmaWQsM160b3Dbl41NH4J+ye6z6t0GqMEL6pMfXJOH7lhYL4KlcBXHQQJVHN
 B8m+7sni6j8bGOW7+LBLx8lfo61P/XIKpPDiXccpiuQGiLX/y9EH+0aboLyqyFbUTZoEG7V2sA8
 7jHWYfyK+24W1UOfDuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270177
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269418-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1DAD01BD4BE
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 08:48:45AM +0000, Bryan O'Donoghue wrote:
> On 27/02/2026 07:24, Krzysztof Kozlowski wrote:
> > > Well, is there a way to support both then ?
> > I would just not touch x1e80100, but if you want then probably binding
> > should stay backwards compatible, where you keep all properties intact
> > and only add csiphy nodes.
> > 
> 
> I really want to stop adding new stuff with the legacy way that has broken
> power-rails, even if that means x1e has a bit Frankenstein binding.

X1 is fine. Please thing of a migration path for the older platforms
too.

> 
> > > Right now I have csiphy and their registers listed in the camss block.
> > > 
> > > I could add phys = <> as optional in the schema. Is there any reason to
> > > stop adding adjacent csiphy nodes ?
> > I think no.
> 
> Great so, that's what I'll do.
> 
> ---
> bod

-- 
With best wishes
Dmitry

