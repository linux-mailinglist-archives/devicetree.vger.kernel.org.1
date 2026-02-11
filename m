Return-Path: <devicetree+bounces-264565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOfOHUjgi2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:50:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DB012087F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5ABC304AAC6
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075A529BDA5;
	Wed, 11 Feb 2026 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fwGmUgjz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RzuGOxwg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A770A2C0F89
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770774532; cv=pass; b=k3cTRPrPnJyikFaL0CFWuHspq1Ep0HkLVYXAbfzrm4TaHYt0WGHei6dBV8yZaQioNxJ+MgIluriGm6gfaoEx/Lv2POB9gIEWnr1NyowkgMihR1/Y42R5fJ0hHAm56/VFVI+/jFeIbZhQ2DlqIJ/SgU7hfM97RBuBl+/+csbRMnA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770774532; c=relaxed/simple;
	bh=xSGeYmave0IMZ0SkXbSK3JzZpiVmg9C8P170/PXGWPo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jz7/MK2NxaiyqLAoLBYUCK5I5zPMAfZsTOpoImOyz3CT1FeOkqvBP9/kR3Zly8Sh23b/g5G/JxvjUFFDoUe7GFk+2G0QCdpxs283Vv3crD/7B2oKRdhpuucdhMv6gWBNZ1eUEcyh+JCohLqycXGi/geSl0FMLvejUGoaqGLDBeE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fwGmUgjz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RzuGOxwg; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AHTeE53203748
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EBuYjZ6aifGkd1dAhK++qfqm
	5kl2DiQXlBUEgL/t//Y=; b=fwGmUgjzmRMwoYf1nUK2e1gsG0x1q/7axC9G1d/o
	SaQKNu/YQ+QzxOUsrbCsXbiUGaLdCx/qnzMX5iWyDlQAZ+dzTH0a4Dke+L79hCUC
	Dqe3ddE18USs0bSYjFB8w9E163NOMR6AFGc+UijVhis0AOcsDozykwDz7n7XnhTw
	5rI9i+Fe7/2ST9BhStUfzp7S5fC1LoLhvZOLF31Leg37tpP8DuIakBI5hfxvv0G4
	B7edLcFEpRuIHfvQhSjqF/cZTrAiNAPr7VJMNqcuVtVMLSjPHMpzDgoX0AiDLH0V
	qnn2AlwZkAAnZy5MY4WReynLC1EU9PNwSqH+BXRqhqPPEg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c894g1ebc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:50 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3562171b56dso4122972a91.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 17:48:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770774528; cv=none;
        d=google.com; s=arc-20240605;
        b=lacWlQ3GsxN+75me+QHekVsdE+U+DuWWfnDwYogU73x8q2dNtZMa0ukrILe7OFnF6v
         NFpiBYYMXf2XVcp3p+JdMrch23IP/hgi1PKKtBaPKM588+q1ZjtPrKEdLp+B2OXk12nX
         ZY5tKWppbs8/UX4hMqPKzOTRBOnGDOsaNbFl3RRw3ISWDlljO6uZRtbhvno2+ntnt39Y
         we7DdDdIL5nZs4ji22WKuk4e91kgpb9NuSB5V3fvUzid9c1YjSQ/0T1T4uHDXN3XDgBd
         OZCjXaAwXk9U+k9/qap4QoOWiKFbNX2ZVnvP9XO14Kgyl2oUe1vSuzWemHYXYKL6tAeq
         EBfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EBuYjZ6aifGkd1dAhK++qfqm5kl2DiQXlBUEgL/t//Y=;
        fh=Y/Quoy+1uerJTh7G/LMuOEQfMZwRHggKAvId+u1CWfo=;
        b=i5bcbvqnasEeFQ6cJiCynU9sIeN4wV01hq56Qk7DrDdURy5xMAaGPVpqY4YrHtcaey
         xnY17QgARVQ4tW/yRiCFB5pmEWg6PqDLkVden2nrrUHaE5JDSKFN41uqtB8+bOLAmQVx
         z88FJTYgB4Wowu4mMuEVftLiT1nWhTcC1XcpWyEi2sSIxHf8Zsq4JoS3ObSGS8EjUTNE
         JvgujABVcJZaB3p2bYOqMYMZnNTjN0HQBOOqARjKgRxAqkHzlAf1OmOUlLWilwC7MysU
         FFKP9U0ouHk0ul6rsHrs68kWqCIVI/KRlOz/QTZL62pnlwvGjF/Gix1ApdGaeS1V9PqS
         VqlA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770774528; x=1771379328; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EBuYjZ6aifGkd1dAhK++qfqm5kl2DiQXlBUEgL/t//Y=;
        b=RzuGOxwgWi78utb++D/twBmVneUIv1b4zzpvOc9+IG51A1ho9KCNSUvUdvvpGmyOgU
         phPNDY8K+72Uliim2w08E57AhKI6GsSFt2/wT1UV5cX/G1LpryEH5d7Hh0bh3pMZc3et
         4QJNlX3/I+VruCgVX6PaLla9EyDWtYRbANxzpXkvHkVsG7SzjwddCD4AJhOFQ63VvO8D
         rH8gtXIp/L1At/YWQ4qW5k0cO83LC7QvoxNXbvpryU4GzM2JO/nAQxme3Us6ogJ8WRwm
         sWcdPtmhHaRATcXUEmjC1jIwSO7+NoGwEB/ze6Q0PyieFcKSua8hn++Lpm6y1yi271ce
         x0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770774528; x=1771379328;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBuYjZ6aifGkd1dAhK++qfqm5kl2DiQXlBUEgL/t//Y=;
        b=idV85iG8ElmvK1kU4EQLCDvqb2nz/9BCvlKv/LMgHHAWZkxFd2C+vIC0zH+RItTi9g
         U//rAIHTc3gPQhKuZ6jhoqFwCdq1pTNa7eexsHxkolNvmGUBjWiIVP3gbcIeyWvjT4Bx
         AIAXL3Q5YfT4d9QVycDbJo4+8vq6Kh0UdN07qfqXcuskjTQI1MqNHgXsjOnNe4zr/GMh
         aX6Frly+CA0Dkfspzr8ylBPrSMydaj84rmvSE161cvEspBKTp0d7QNO3PN5eCzVlYPR0
         LUebDGUjDc61Qb/H9HhucTgNYTCYGC3G6rFY4nEI7eCLYBbqsc4KaCJrxO+S1Zh3xvXq
         0/Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWBW7PvDWMtIhXtqKn9ie+iNwmKFwRAp7SgMC7HCWf9QnIMMhGfTu/YjQWXjfIPFK9ID7Pz6R37vqim@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2/ZHWAjVK7W/FeqFK1X3ngQoXlbbviXrPQD+nWGM38W/JMCSn
	Y/BOU2Ks59N8feDlOulZo67ehtL80MpV4oZmNCjVU9MBFxDPeljo/3hJgNBWEGqiEz+3Hqeyv6a
	NREM+BK0AlaUiKy0GS4A/VrGCNiTHdoNoj4eh+ZAc/cMgjOmhcpY7Ap9m8Te4XWIwQJ6/gsRbmf
	8R/s1BEKXVYL6nkKZTp0o9wykvrirbEIWKzZ9Oq30=
X-Gm-Gg: AZuq6aIkfz3EAx97MimnTdurEewzlgiPsNz3Ct/riLOZxDB+C5u1kipc+lPXzq6qSXC
	Dd2Y/RkK4xf7h6V0h4pnvws6z8QgXtOjdXGEFVatgTY2ltA7WJ3XsV/4EF/2cZK4P5I0NDpdMgf
	MkiNYEbWQc0utCDTKvIDDT0nMTH40nhgGnDGF1DfLLYB7NVPhyy9fLOmf2p2bKCXG1Fri5K5R2A
	EYU
X-Received: by 2002:a17:90b:3bc5:b0:34c:a29d:992a with SMTP id 98e67ed59e1d1-35667d72a8bmr3144200a91.34.1770774528467;
        Tue, 10 Feb 2026 17:48:48 -0800 (PST)
X-Received: by 2002:a17:90b:3bc5:b0:34c:a29d:992a with SMTP id
 98e67ed59e1d1-35667d72a8bmr3144179a91.34.1770774527960; Tue, 10 Feb 2026
 17:48:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com> <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
 <cbc0b42d-fb5f-45b8-9074-d0bcc64a9de1@oss.qualcomm.com> <erc5u6hzofidlf54dsz7htta55o4xwgihgh4tu6mqkg2ijz3fo@6hd6q6iljrfq>
 <dada4a44-f464-4325-9082-50029d6a4555@oss.qualcomm.com>
In-Reply-To: <dada4a44-f464-4325-9082-50029d6a4555@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 03:48:37 +0200
X-Gm-Features: AZwV_Qg2qm_Ag_s2JkmIG-Y77QYxnHbFnwvbLMtmQMEho97MeZnPXtM_u5rHzFo
Message-ID: <CAO9ioeWhNO1vYVvN46wNfr2NFAjD-oERLhMKTXyRkRDLtJTMqA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Bluetooth: qca: add QCC2072 support
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxMyBTYWx0ZWRfXxvPC3u1EHXkW
 J6gMc9ySjjPE9dSSmnyXmOj99zMBoyJSXtalv/7Bg3qJgUcNPzIF0pj5s06qmUnjuPqCRGI7Nwa
 N3irhTGlZE1CpRYONc/4vRj4WblC4B/HmxMpM0xuvwIlHrhUoPEqcYuUkdLN8JacxnulinKGkvz
 68EZZPzraCUjz5BCmdBAWyHo0/yixYfIl24YJNtkOL0YRcGXuO/I4pqe90N3uRpA4tCbaXrPJlG
 slrcxEQ+0x+3B5lSdUz2K7rSnHxDCRjpXKqgmK0I9F7Z5tUkSWCcpDrG8uf42TyeWjVg6y6wGob
 Yxbi14b30Y7Ep/q65hAnU/44jYKTldM4dD6rwTyBdj41jWW2YdbPUZKsO4OMeJe6yzkh3nz14nv
 dk+P/yJDKA3Z3C/YlXS3OHs67b4xnrsXUfJaCk1Mt44xp5lW/c2N8B8+khEjz3nWR6wjEZ/NZB6
 9py9XJ27P7n1mAUTwaQ==
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=698be002 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8 a=TCK52CFr6wQZEBS1tEMA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: SrPd1JqjHq-T4icv380Wg0cwYAmCkBE-
X-Proofpoint-ORIG-GUID: SrPd1JqjHq-T4icv380Wg0cwYAmCkBE-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110013
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264565-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,quicinc.com,vger.kernel.org,holtmann.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 19DB012087F
X-Rspamd-Action: no action

On Tue, 10 Feb 2026 at 15:53, Vivek Sahu <vivek.sahu@oss.qualcomm.com> wrote:
>
>
>
> On 2/10/2026 5:46 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 10, 2026 at 05:41:13PM +0530, Vivek Sahu wrote:
> >>
> >> On 2/9/2026 5:04 PM, Bartosz Golaszewski wrote:
> >>> On Mon, 9 Feb 2026 09:06:13 +0100, Vivek Sahu
> >>> <vivek.sahu@oss.qualcomm.com> said:
> >>>> QCC2072 is a family of WiFi/BT connectivity chip.
> >>>> It requires different firmware files and has different
> >>>> configurations , so add it as a separate SoC type.
> >>>>
> >>>> Correct the sorting of other chipsets for better readability.
> >>>>
> >>>> The firmware for these chips has been recently added to the
> >>>>       linux-firmware repository and will be a part of the upcoming
> >>>>       release.
> >>> Something is wrong with formatting here.
> >>>
> >>> I would personally split the sorting and support for the new model into two
> >>> patches - without and with functional changes respectively - for easier review.
> >>>
> >>> Bartosz
> >>
> >> Yes, I'm now splitting this patch into 2 parts, one for sorting another one
> >> for new model
> >>
> >> support. Please ignore this patch.
> >
> > Please stop adding extra empty lines between (or fix your email client).
> >
> >>
> >> Sorting change has been raised with tittle "[PATCH v1] Bluetooth: qca:
> >> Refactor code on
> >>
> >> the basis of chipset names". Please approve it at quickest so that we can
> >> raise new model
> >>
> >> addition code changes on top of that.
> >
> >
> > Why couldn't you send it as 2 patches in a single series?
> >
> this change includes driver change and yaml change. In recent
> bluetooth-next branch there is a new style of documentation of bindings
> comes as "Split to separate schema". I need to re-modify my patch again
> and compile. Splitting patch seems more convenient for code submission
> and addressing review comments.

It makes maintainer's life more complicated as they have to cope with
dependencies between patch series.

-- 
With best wishes
Dmitry

