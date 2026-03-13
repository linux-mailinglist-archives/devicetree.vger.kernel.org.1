Return-Path: <devicetree+bounces-275518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJNkOwpetGmKmgAAu9opvQ
	(envelope-from <devicetree+bounces-275518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:57:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2708D289011
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A26630C0FFE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C5F3D5230;
	Fri, 13 Mar 2026 18:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c6+a0cvU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jxG+mimu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E209D1E8826
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773428055; cv=none; b=o5x6qH9LWQ/F8n2cnAY7fblIc2nvhNuC07VtR35B2D4pOmK86d9DP1Xt3dyuXkW7uk57P0Eg+jEHA1Yi9q8tunSH/n5RmNGwIx+dmuPqMDPja3OGArZgLzg2hCJG6S47igfCCAsHzU3v5neWDMJThKC66f5+8nfbxAjSZSCmx9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773428055; c=relaxed/simple;
	bh=tz8h4ZA8jcO87343iRDIfY50UYMeh40p6suJpbrCWZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=swjnpzrJtWnRXrkrPBqrMdQx+cot9CFpWeGAubGKiEetIeMkiDKGxRiQJylmwD8W8+EIBnPka4cvWAfpEbQX9kAQl4/0GyYQOcA85Gbb1ajY734c1eVJl209ayO5Z4pLf1GXXeirH1xh5Q1m4LOLck/GiYClhwIHkE9RjhtBD98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c6+a0cvU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jxG+mimu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DHY3JL1499474
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:54:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Vlg9UmCxk2V4x0n3r77DcY9V/pbY3IvvtRuidclsGQ=; b=c6+a0cvUP1TqEJz2
	4c7feK3F3zOuGhi+9DeLpzK+rHxBTT+CrmLeWWQ+TVPNNFcexTlrp4v+jqdxcDZu
	JrUWMhUn0gjYi7yo8Q7iXfjGi0MEWQDmsYSLCH/9WyPM2YJsqgeIdLmi68N7omLa
	4H9F3a/hp0/eeY0F3DcEBlsp0jeiP2YR9CnRNh7IitD+6Gxh4Ui8MzEgACJwFHMh
	UzT8T/46e2Q6nrw8fVLqh0ZMHGklhJ8JzDEJZLNnUqNKaORTNEnlq65zHCZ4ck4A
	wzLvU5YAvfelCxVu9Bx4F79ccX5dFC62SdJRjIjooxl5aY0ZFjwkVY3Ak72wba1P
	j2/yPA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvg0hhwpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:54:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd91c0262fso1626470585a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773428052; x=1774032852; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7Vlg9UmCxk2V4x0n3r77DcY9V/pbY3IvvtRuidclsGQ=;
        b=jxG+mimuE7oKMalMQhUGnSvDHxIGIEzRQJ3QegnI5a0HljF1s6TvuVsMPs4ha8/9IH
         MYQN+PaNw5eQHA+pwyn0ZxpLMTXfwD+DPcy8bOZo5/3fTX5Krn7BP2RXQXAyFb8xJuR6
         SmTyFHRYXWT4sXCOwKAHpI1Z37XlY0ZGnRSyz7ams2jI1crYkxfAw0QConSexD/JFZ6E
         kk8uFhwBHGfyuLiw7PxKRZcGmBLopM4YxSTe0aNPfeU2z65lzfJTkiXL7orRFDZDAmjm
         Pl3Tj6AiJFE70l3aUj8skw38lIqKpmymR1Gq0DskfoipjUOOef0vPrYwqANGPgEfqkIU
         s88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773428052; x=1774032852;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Vlg9UmCxk2V4x0n3r77DcY9V/pbY3IvvtRuidclsGQ=;
        b=PhKoQK7jzORIpgE9sQzqu9JMS3BnrSVXy57WTe2ykJAPcfPiOLzz4TPo2G4B3iO1T6
         7i5IwcXeNoP5M98XS7afXsShkVgMXY83X7RjfpCZVDnEygtLj2tpKYGSLX/YRKW3YZnP
         9Hw+su2prdubJVuKiPztixHK/hNkNM1fyusBCgQmqsHvZ0rcRsmuhKVN6S8EI3V34vFV
         Qa0Ix+zlAhbGPjJVt19Ogr+gcvcr8fpzcG72zLPNqClbHj0/6+NzUQ4arnc9fiu1RMCc
         auyRzdUQ4bZr9sF01kyOh/CBi8KTws83YyiRzgwN0BV9o+17qbgZdiEhyC73CaIa/tYy
         YI2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUpuX+k3cOkNHEH3TjC9grS+kFUjHvLy1Yg9ZXN/0Ne9W1nKTeFBM3eD0SchFN9YMScZhZx1/Df2kZh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8PRWqPW72zDULy1reI9i0ME6xquV2l8T6LnM6UWIAmYSQzZjU
	pG7/AegPLrD8QLSugsZTOwXVrkoYFak81FtuM7l36gxpG/N5hNsWF8o7yGp0i6h9XxmawLVY3mT
	+ltHNmTGfHFKzJvQvaZfWbikL4jxZadhCrkUSynsMIxI9l14HQfbcKZVHIbGgL5s8
X-Gm-Gg: ATEYQzyrJtqsDzgzu2xMfeJokK+ZXOPAjEn3vDqMyQbEYb8mmvtUxcGLPUr78x5YEE1
	KnfK+//RJnLLaco6sDMDRB15YHi0S+YtxmwPVBq55uynxGSaTL+4LT4rvW/I4d7MR1cI36BH3UB
	KImMt9ZW/0wmFLaUeu3+fkIwqlPpY5Ep/egcTy/lKg4MgfmSiZRGqIWOfuB3N42c9/vAyXUsGDh
	P7VspZdfzNnYaNLEmsOsqCnKysNP3nHDdaCVArOkcvylnqULd5M2rTng8C98m8JU+1uFpCUH+Ra
	04JsYirP0qBebJ+Pb41N+Peu5r+nimqNds8HPivtWTD4iv08MXHqsXo+qH2p3AgTS3LiQu/ewYj
	az5A26tPRRvmHbSU09kYxE/Td5rhiO0Ke1greXKi3FFZRm1cVnsoPLsq5UjsVlHa3m7+/+wlDEw
	TYaCubrGAxz9lrrJ7Bql0wYcCkjSICgD2uP4I=
X-Received: by 2002:a05:620a:4452:b0:8cd:7271:65f0 with SMTP id af79cd13be357-8cdb5b1aea8mr588836885a.44.1773428052086;
        Fri, 13 Mar 2026 11:54:12 -0700 (PDT)
X-Received: by 2002:a05:620a:4452:b0:8cd:7271:65f0 with SMTP id af79cd13be357-8cdb5b1aea8mr588833085a.44.1773428051554;
        Fri, 13 Mar 2026 11:54:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33d16sm1751868e87.6.2026.03.13.11.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 11:54:10 -0700 (PDT)
Date: Fri, 13 Mar 2026 20:54:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aaron Kling <webgeek1234@gmail.com>, Amit Pundir <amit.pundir@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Val Packett <val@packett.cool>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
Message-ID: <wsque5bf3wqfrsdsih2dyf2kiocs7rktyo4uf2lz4ze6473kts@cxpvzl7xhfa2>
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com>
 <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
 <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
 <quybzbqxlohu6kiqmno2wzyltwejnc2vebxdgvdl3fdib7zg7u@wz3bkop7psu6>
 <20260313-urban-prawn-of-success-cff01f@quoll>
 <CALHNRZ8iBqGGRDKhDNOasfyf8TY43ne1N82irkuzDZfWUuV5sg@mail.gmail.com>
 <wzle4bdmemfknhflwhxikq7rk7x3ao3z474bhsr5zdkvtp67cc@jddzjpzwlfrc>
 <CALHNRZ8_Lzn=mr89dezkC6hVwgxh9kYmg8ntLf5RDuNydc9VLQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALHNRZ8_Lzn=mr89dezkC6hVwgxh9kYmg8ntLf5RDuNydc9VLQ@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=69b45d54 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=YkChhca8BFtPpglWv_AA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 01OI6BvG9OxS_09DZAVcRaV2ZDLszq_A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDE1MCBTYWx0ZWRfXwVbaJrktVkIF
 xnxKuDE6LvalT/4Qc7TpPrKZnPK8xuZEWWZp4+ygwZgvpyQa+ptv9bSQY9OHyAfXPkyCHtSDZm1
 43MZCej++HVKOR8yJJSX3tRhZjQM9jskuiWcpYv/N/Sw1e48a+LsLx9k9gGkIN5bspC8RPkZfNa
 3qs+m0lMqttUQZfQo+uubIAcykjHf+kq9SP1YQjBD/sehNh2bG9DiN+Q4Ocgvq+5Ht4ZNLPiN/1
 nBuiCzBy4dO6t2MkQZeGG+MEyTv0taOzarbzuQNtiyj3/Zo3Z3Ef+0sb7WcuCHDdr8PO/jyvhOJ
 HWN+8lZsx0MF7fLcek/9XnSZH0Z385iNtz5fogK/MbUQfmfk8904H5sFoYQxAmLEYeAsldiN4u4
 knYNjQ7RqXNWfSWLViqgI4CIedddD25T5pNeM+AjVYUEG02PgNMtYgXQCOZ5UM7HEfv2cIK770E
 fwgN5vZkELldq2GlKGA==
X-Proofpoint-GUID: 01OI6BvG9OxS_09DZAVcRaV2ZDLszq_A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130150
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275518-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email,sobir.in:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2708D289011
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 01:21:39PM -0500, Aaron Kling wrote:
> On Fri, Mar 13, 2026 at 12:48 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Fri, Mar 13, 2026 at 12:34:21PM -0500, Aaron Kling wrote:
> > > On Fri, Mar 13, 2026 at 3:37 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > On Fri, Mar 13, 2026 at 05:19:27AM +0200, Dmitry Baryshkov wrote:
> > > > > On Wed, Mar 11, 2026 at 08:39:37PM -0500, Aaron Kling wrote:
> > > > > > On Wed, Mar 11, 2026 at 7:49 PM Val Packett <val@packett.cool> wrote:
> > > > > > >
> > > > > > > On 3/11/26 2:44 PM, Aaron Kling wrote:
> > > > > > >
> > > > > > > > From: Teguh Sobirin <teguh@sobir.in>
> > > > > > > >
> > > > > > > > This adds a base dtb of everything common between the AYN QCS8550
> > > > > > > > devices. It is intended to be extended by device specific overlays.
> > > > > > > >
> > > > > > > > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > > > > > > > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > > > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > > > > ---
> > > > > > > >   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> > > > > > > >   arch/arm64/boot/dts/qcom/qcs8550-ayntec-common.dts | 1777 ++++++++++++++++++++
> > > >
> > > > Common is not a board, NAK. This could only be DTSI if you provide some
> > > > sort of HARDWARE arguments explaining the common parts of schematics or
> > > > hardware design.
> > > >
> > >
> > > > Not enough. We do not add compatibles not representing actual hardware,
> > > > just to streamline boot image handling.
> > > >
> > > > Plus this code is not even truly correct.
> > > >
> > > > We do not write DTS to fulfill broken Android boot process.
> > >
> > > I have been trying rather hard to find a reasonable compromise between
> > > mainline requirements and a normal Android use case, something I can
> > > actually ship to normal users. This seemed fairly reasonable to me,
> > > since it can generate standalone dtb's transparently. But if my use
> > > case can never meet submission requirements, then why am I even here,
> > > getting shamed for working on Android? If I have to fork the
> > > device-tree anyways to fit my requirements, then there's no reason for
> > > me to put the time and effort in to submitting something I can't use.
> > > I'd be better off just keeping everything out of tree as googles
> > > kernel-platform supports. And never look at mainline qcom again.
> >
> > Well... It's a tough argument. Getting your DTs into mainline would help
> > occasional users that would like to run something else than Android
> > (PmOS or some other distro). Also it ensures that you can run Android
> > even when Google (Qualcomm) EOL the current SM8550 msm-something tree.
> 
> Oh, I'm not working on the downstream kernel either way. The question
> is whether device support gets mainlined or if I keep all support out
> of tree and only update when Google forks the ack from a new lts.
> 
> > Speaking about the boot process. I remember that historically it was
> > possible to pass several DTBs in the the Android boot image. Is it no
> > longer the case? Is there any way to identify the boards (I think
> > historical code was using qcom,board-id for that)? Then you would be
> > able to squash all your DTBs in a single boot image.
> 
> That functionality is still there, the concatenated dtb slot in the
> vendor_boot image. Unfortunately for this context, the odm did not
> change those ids per hardware variant. I think they just left them at
> the hdk or qrd default that came with the bsp. I do have to jump some
> software hoops to slot in the correct dtbo to the dtbo partition
> during inline updates because of this, but it's not terrible. And
> that's not something I can reasonably do for the vendor_boot image. To
> my knowledge, there is no way for the bootloader to tell these devices
> apart and any attempt to do so would require a custom abl build,
> probably per variant, which would then desync the boot firmware from
> the official OS, plus make first install more difficult for users,
> both of which I'm trying not to do.

Adding Amit to cc, maybe he'd have any recommendations.


-- 
With best wishes
Dmitry

