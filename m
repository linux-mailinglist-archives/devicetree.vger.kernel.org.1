Return-Path: <devicetree+bounces-263397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OmjFlIEhmmyJAQAu9opvQ
	(envelope-from <devicetree+bounces-263397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 16:10:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB810FF7F7
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 16:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D82273013DBF
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 15:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C689286405;
	Fri,  6 Feb 2026 15:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q6AkNa4t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bjotwFKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98E2848B2
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 15:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770390587; cv=none; b=uSc7bgFFaJgIPirLeGgtqyvrEZYVVAPkP41Pehu1JUID1MeoAoX3GQoakUgNjpdsYvUT3yyCYgWEG25dlw9hN/HC8ckqWrSO3UwEZVu4VRAlqjnD5vsi078JKjcRRyZekJJiVy9T+x/Kt/JGdQDbCNC8/8naCFJfD0/17Jars9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770390587; c=relaxed/simple;
	bh=rdx3OV+nUN93GHAqETEZwEgh+ENPZq3ETzFi6DimpXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ElXwVpTn9psi8sDQFGvwhU4UQPJ7NZgGhSpnf4GWRdd6ipOtBFF1QIJJestfqkwcpVKnZAw5Vq8xW9s8ZV5KqLMv2/lNdNr8zwTGwbSuePSJmYLWv4dU5PF03YUax2m2HDBEPYcJJDkcy78/MCya71MF5dSIuPtlNmyfYZPWDso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q6AkNa4t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bjotwFKJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6168Zje61420290
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 15:09:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lcs4pjDWug9NOgYAjE4oCiI3J7ua4/c74IiXacv+yFg=; b=Q6AkNa4tpF7NF+Z9
	LNSqfgkRZ5EHCySJQM+l+BsFwhdrdsUmh/9hTV1//IYJtkaHrqUvqt9Hk0INRxY9
	VVybfsKO/IzvtX/wgIGb5XSQkkOqsvBUqcmtSAj2kDDpLlLc3LXPP5L/atB2zd1a
	285+qX8bbUy7dTqos0lGzWF7wP0L3tWgxtlk4IWXehSX3/ORgD0nf7MREHbhfjln
	aQHKvb1eHaEcKdlYvpBncBWK1iOwtA/eQoHyjRrgdRP5bXMgvyTjCMsIdmfFqQN5
	HsjxgQv1b/PuvLQZbdJRTSsgFrrfIrxUrLISjKo1CM2uDDf/c5W9QvS/GVK/YBI6
	djLgpg==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c50a9bpmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 15:09:45 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-45f39e21e1bso6947685b6e.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 07:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770390585; x=1770995385; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lcs4pjDWug9NOgYAjE4oCiI3J7ua4/c74IiXacv+yFg=;
        b=bjotwFKJB95/ETa0uS0LBRtKFGnGXzYjMrgRSb5sir0VRFBTbAUm4tGVrDR//B68uT
         d1gAuLmq3PwWWCalmhfGRdfcUC3aU4em+udLWUPzAcUcHlnKhwgIzWV+x505tcchCfdE
         3J6OpS8hIHSWze120RIJ8vaL4rMkeu8XqFGm092xBr9G9Su6LvKrSaOnhMjyCuesPkqO
         UvdZYMog/wgGNITbSpf/BOupBlMyEyDVlVXpcAkJEunevfElrKBrbNU7Hfz8ILQDUoeI
         Fa1X6ghcBDXyzzyiduuK4YT3aHC4gDm/xeDhq6uTlJsEGJ5M7zHifzCDTmUPQ+hr5Uln
         iakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770390585; x=1770995385;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lcs4pjDWug9NOgYAjE4oCiI3J7ua4/c74IiXacv+yFg=;
        b=qNyiMoVbwhvjkvKzpdWIOrc+Vqt+arSuz3CoP/OOlKC/8CJK5tCKohbS27RObixSVQ
         t+Sq/lTEFicgviYlcrgYhH03i4IZyE0gWejhAZsAAx9K6WyMNCPLK++CMeSQVGRa1cO3
         sXLhPhUHcCm/7GbZzAnqFy27hBxuX42+93Mr2oAE4QuxhleJJ4CAdE99izeQKzwXyTOT
         JLCoUDhE8aj9P+P2m2hi/CzOgbbE6vMVdbQtvyeCad28i1ySaXcwkODpauOpUVcVxVg+
         o/puVoXwAH/uqa+0LQrTUL0MK1tu5BYz7lipQBgbXzidPwQS93jLsO9AHDAZaRMatwgs
         dMhA==
X-Forwarded-Encrypted: i=1; AJvYcCU1WkM/++LEVSMzENrhvAnF3qE3XJIOjT4d0lWw0gW6EFXxJYHy3tKb5OMQ3gq8Hdj4xWVT2gJ6HtPj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxbjbe50Lly9qroE6PlubllZu7rXzsiZPT4hNGGKJtka2yvKbH
	nh14Jpa1DQtqwJ3Yj/s5aPWy5YRsi9375N7wE+TqTXWHMzt88tX4M2VaOrTrojhx3hSG4/gxNLI
	XBuMwsNKx4oeATTAXRK5basCCFeBuQwUcpZy6WsEu/3Vvapld/pwoLA8B32sf1SSK
X-Gm-Gg: AZuq6aI0kA7uksLt04jaRsAYLL9x+MZatE2bfycn4nFca9SHjQJziE7oMIUVkxkH4gg
	4z9OQKaWzBCpaAwh2ojYzFcZ8xtCARy4KJJYpnJDtZZJXGb8lLM4ZYh0XK6falIH1KgRe2tOEkJ
	ovqPlKy7F7D/NlFItzbl+mlZ52GcYlM/Yzv4HppGrnPAH43xnRwCFvEakXTkOga0XCcmlfTcTFu
	HrafjXK9uqlcCyz6o1p123y4GmcdeHKpiizM9p95rDfbRwg5/JN+0ckOpWN7lEWD4FyEcOLsqMb
	uxxABcajpyAujUuzcHDTI2alv+ayJ+m1XybGrMT3ezHHxy0qCzQ5Va54O34FT2FJEHeMNfolHdf
	dDLg7gJfWp0h1OAYNWYs=
X-Received: by 2002:a05:6820:228a:b0:661:ae2:95fb with SMTP id 006d021491bc7-66d0d2faf29mr1460740eaf.75.1770390585135;
        Fri, 06 Feb 2026 07:09:45 -0800 (PST)
X-Received: by 2002:a05:6820:228a:b0:661:ae2:95fb with SMTP id 006d021491bc7-66d0d2faf29mr1460723eaf.75.1770390584637;
        Fri, 06 Feb 2026 07:09:44 -0800 (PST)
Received: from localhost ([140.82.166.162])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-66d391aeb93sm1202941eaf.8.2026.02.06.07.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 07:09:44 -0800 (PST)
Date: Fri, 6 Feb 2026 09:09:43 -0600
From: Andrew Jones <andrew.jones@oss.qualcomm.com>
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Zong Li <zong.li@sifive.com>, Tomasz Jeznach <tjeznach@rivosinc.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>,
        iommu@lists.linux.dev, linux-perf-users@vger.kernel.org,
        linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
        devicetree@vger.kernel.org, Yaxing Guo <guoyaxing@bosc.ac.cn>
Subject: Re: [PATCH v3 3/8] iommu/riscv: Add HPM support for performance
 monitoring
Message-ID: <xukccsqgwmagqq5egx7i4op6nfot3t3lusnaso4pfzcq5h6bfz@adsm5nusnocx>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <9C0A2AD4850D179B+524146e74e808db90d5f28fcb6ee791cf1d1bfaa.1770195980.git.lv.zheng@linux.spacemit.com>
 <p74snip7yykhogvzqld4gyjlygmd2z4kqnat7w3qj63fwebnmm@dlz6tloevgbs>
 <4D87481E9AABE2C6+72d18f72-9407-4d68-8195-edc6c171df14@linux.spacemit.com>
 <CANXhq0q8N5eHx9ytabZR97Y7AULKwgS2-uEGhcaOOGp9mvbtRQ@mail.gmail.com>
 <6C65A3873186B07C+29da5dbd-ed27-4ace-a5ca-355b3983d60c@linux.spacemit.com>
 <zzbwkazzgeovgmbvg4qnibipzsldqcjnw4axnxlamhgvcld4hs@4m4cc2ctuuvf>
 <752514AD54FA2A1B+513d6894-b3bf-44f3-bcc1-7d30f2642cc2@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <752514AD54FA2A1B+513d6894-b3bf-44f3-bcc1-7d30f2642cc2@linux.spacemit.com>
X-Proofpoint-GUID: qyQgnkYSW7Kitj8nXwEbmLv0eBm8odOd
X-Proofpoint-ORIG-GUID: qyQgnkYSW7Kitj8nXwEbmLv0eBm8odOd
X-Authority-Analysis: v=2.4 cv=e6ALiKp/ c=1 sm=1 tr=0 ts=69860439 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=cvcws7F5//HeuvjG1O1erQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=pFyQfRViAAAA:8 a=pGLkceISAAAA:8 a=gObE7mBVTb-_oU6ProoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
 a=oJz5jJLG1JtSoe7EL652:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEwOSBTYWx0ZWRfX6zoOOq3tP3G+
 kFlednxQ0meZv+5f43sOJsL9hOA33QtZyZAaZL4HdOxF5+kdJejyokQiFDFSjvJz1uM3rkd/4NF
 7FoNHOtaoaSJDhISIJvxNNSw1LQFu/v+eduunXBlr56U/i8cwI3YY4sdQCp5t+PKL8u4Rjs6vJk
 9X2xrXzOl7OhVQ90s5iFWPXyVvpkR2wM4OaYGlLI5+5snKOYoFzBCwNtl/RJfHYhRqdESfCWnRu
 C0KBD/l9ubdOSBCau3YyiJ7Z7PYi4iLxCgXS5Ti27/MYw4vet8b9B+LBee8Tfp+egJFSeFQb1Q/
 C8RPByMcJS0BUmIuEKjwg5isdbq0qgEIo0Afgowg7MQJwvjMNeQ8Cpd2MGm/2H7CwM2CUsBiOor
 rr+WoJEaC0SVTLOJl7pP5lkFnfCrcZVXefyxde9Lfa8GoGcSMjNH4KKCHmUARsqQtn3C4chTtVN
 q6aB+R8MhorMtXY3bQw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 suspectscore=0 phishscore=0 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263397-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew.jones@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.982];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EB810FF7F7
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 11:42:39AM +0800, Lv Zheng wrote:
> On 2/5/2026 11:23 PM, Andrew Jones wrote:
...
> > Since Zong Li's patches were already on the list then your serieswould> at
> least discuss them in the cover letter, explaining why you've opted
> > not to adopt them. But, most likely some of the patches can be adopted,
> > so those should be extracted from Zong Li's work (with authorship
> > preserved) and based upon in order to respect that prior work.
> > 
> 
> You can see we have contacted each other in community, and decided to
> cooperate in this way to honor his contribution. But final decision is
> left for the community to decide:
> 
> From Zong Li:
> >> Of course, if the community would prefer to go your version, I’m
> >> perfectly fine with that as well.
> 
> We respect all contributions, We'll add the link in cover letter to the
> follow-up revisions, let me know if anything else should be done to the
> new revisions.

Just do all the communication before posting, allowing that communication
to be summarized in the cover letter and in any appropriate commit
messages so reviewers know what's going on. Also don't forget to CC
anybody previously involved to ensure they have a chance to chime in.

> 
> --------------------------------------------------------------------
> 
> And let me describe in details to compare the functionalities and
> addressed comments between what is provided by Joey and by Zong:
> 
> https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/
> 
> There is no missing functionalities between the two approaches, I also
> checked the original Robin's comments, let me describe them in details:

My concern wasn't whether or not Robin's comments were addressed in this
posting (that's important, but not what I'm talking about). My concern
was that Zong Li's work wasn't addressed in any way, so appeared to be
a chance for duplicated efforts. Indeed his reply [1] indicates exactly
that and even that there is a third patch series being worked
independently. Please work out who and what patches are going to be
the focus going forward and describe that decision in the cover letter
for the next revision. And please don't forget to CC Zong Li and Yaxing
Guo.

[1] https://lore.kernel.org/all/CANXhq0oi9nE7ffLGsz5j8GnC1UDTD-4bE4cantRjW2fXHYrjHA@mail.gmail.com/

Thanks,
drew

