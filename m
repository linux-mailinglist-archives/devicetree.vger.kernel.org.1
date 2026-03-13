Return-Path: <devicetree+bounces-275478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPAlEW5LtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:37:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 985862882FB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:37:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F001730FA4B4
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6612A35838F;
	Fri, 13 Mar 2026 17:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T1FLUEEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C87366061
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773423277; cv=pass; b=IluOBeD/vxf5/2LxHvxxFSvnkElNyVd71vh5vrpSUuKCKeqnYUMRLhi+ulN4dcAy2z5MBp14xJZitSNE8jb86YItbWjwNZYv3si+xuMsPNJrFaQZdP9C3FPzolvxdDm4xktE69pWeBga5hLJneK09jENabL0MLUgN9yEqmbPoK8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773423277; c=relaxed/simple;
	bh=Jq2pOBm3qteHwzAasBRJA/5LsEGWq99j+KChMG2z3IE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nGvH3EyLjuUSqzkr+on0r8yS4pxQp3O1KfyaVe7ajgTtkQ+qR6AwI/A4pFBr7kLf+XOF6qtxjEb0dpaMRtRNzReIIwytP/COh+sp26/Tdav2tPabQsn1njlK1nnZfAUp5+g+zA5aTo4A5k/UT0Azm24SXfg0T9Y9mQoHLpAIFlA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T1FLUEEL; arc=pass smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38a2f196cbaso21700041fa.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773423273; cv=none;
        d=google.com; s=arc-20240605;
        b=cWrdJzcj8bFrpfSkmMpL5ZFdb3/llbK348rzFV+StQVoYqEBjRtl0wP7JcOvKJ+Zsi
         ssv8n+zZn6S81ZvQ13MknrBWqAKL4Cbdm5FvnMtfH+vdblMhPuz7wCYGTumuzxYBxBYl
         Rd8nx2mvLW7lJP9ngTYfgNSosP/IA5wQy7zeA3CWZfGiNdNcKdtKAszd1pD+OsVHry+i
         pzExqOORUv+/3sIeTozkuFqsQ2QJtwLtDVkSb0RuCl6Ru1Ne1FiQaZdPVXlh0eTja+ni
         8vk4S2qsHmlVBazNTqA+lPMFNWaEBWfRNuQhYCVd2SUmaw6XCo/YsO5j+dFhLtlDTMdn
         NDDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Udsy2jADAujrQVIdBqhGPrxq6bUInWDnOKQG+aOCOlY=;
        fh=vRm6+/Lcs7PHGhm9EMQ9NkWgoKG7CG0DgWdmdyrK7F0=;
        b=CUPepoZoSeBWFCf7S3NX585dL48SOAjdh4Gi7vUU533yDUe57CIP/OSZghmQtCxU3B
         jEjxSciv2C90XaSo0cvW3pDXrwgteq+kFeftmnQeZbaRgQgFiCK2iep3Yim2SPznAvzH
         D6dIzsal9j1yicPruchrOS7ntzoXL4b+gp+r/r8VCqGpurPxAX1ArrEIVNNYJzwoD2pX
         UXs9CeWVBRfZsFTzQaW6OGTymO04k21YUkNZq8LDgG6iT+Ts+dSUMiDSawu1LoR/cZLU
         6EuwKJ0mFoa8VlSQi6EHv87HG9ynN3d3dmFiQoUeol8E1z6uV8n2ZnK9QQf93ikZjiD5
         bZ1A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773423273; x=1774028073; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Udsy2jADAujrQVIdBqhGPrxq6bUInWDnOKQG+aOCOlY=;
        b=T1FLUEELHEyK826N4bt1uYVuwqySTnT+8ztbio7bHJ14JYaRdl094VkdPo3WBo2kNS
         12hut2vF9MEC1JNBDYTWPehT4NxuZMzHRoapRZr4vknDkMi2/uR6Lb8bcFQOgRnxpJDX
         NBEc5RDsC9Qn2JtAHV4JU9wpzNREJRW/L16as4+kAHn5NO3DrggQRAWm7M5yDBjRExi3
         WVCH/hc2z+Bxv//Jfz03sZupAQHHHNuQvDiXlroV8Vrz1O/Pjhg689oQ7h3f2flpSs6z
         BtogB/ThKYiAWARga/w/EnnKezVnwJpQOMzZRM7aUF4xrYXKLyNkeKZKc8k9D+KTkX3h
         b3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773423273; x=1774028073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Udsy2jADAujrQVIdBqhGPrxq6bUInWDnOKQG+aOCOlY=;
        b=sE8uEcJHSDaHN+zhGaTgjdPKsgm/wUdBXUPV3wnSjs+jL50CL+YtheXLoibaxxJzYd
         MyINoOBuKPIocIvsebYZWkMdyykKiB9MZ8NRVvBqr8GdHDlTgEhrajH/rV/1p1oG26Zq
         4iIS79/cabXurqvajV9zy1+ES3OIbXmx+nd1ZdhUMFuhwABOlqGGVsub3JezBHr4z0rq
         /qnfEpCrv/dJNQIGvK/uLJGOzYHyq75QKKQZTRoHGHqsqq7Bzyx44HxX4PuXGGVVQFhm
         jpeCtFODN4pA4SfyrDC0WBb2oRvkACsDBHWi2PrqIFrbno2nqc6Ko8GWHU3rSvwpFEYm
         O7wA==
X-Forwarded-Encrypted: i=1; AJvYcCWGLMyaDmvhMz4I1//AGteYS5yxXhjNGTMPKSN0+O+DEpf8nmaTPx5UhxuD/AiNp2QOcZ5cz3VU8ZmR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd+bXzmSVVg/Y6fbk4udRv6qwB4US/hOK2yS/uFoY7KCqTVeHO
	Mjs9Dep8OWTPnjPPeZMOR5NbLqKkOPN5nagn1nV/DXFHtlicrhXlWMt4dA2kc899M7ihQ79AO7L
	jy3yBpZpnrkhi/IgA67ArMeqeThRVYGc=
X-Gm-Gg: ATEYQzzBQfd4YKq3MUkflVWD7n5WZwebNUYf6c7wyxPs+WeAC88Upr8upi8IjEB5ghT
	n8dw0DnyJjDbSArC2is9UUZjJwjwiq28q7huk786qOrMKwBoYQ0me6jIxACpaeBPWlLAhCyC5no
	HvRYgSAMGG4kEGAFM5Ov5rIecSovaa/VcPH3LQ+Ls6dvGUBgtBcCEoux4JH42JoGgkmc5jcLOsZ
	qmkdFw8EgZnKTqK8YbluG+wa+/hmzDjUiDmfG/1mVGaxlF5EffrfkioUN6t3LkT38QHmqH1x6dg
	8z2Nb4OSv0PTNzmfVNLv3C+jWypSk4gRlXj1P1+cwdgTHWkdCJEYctykDDrJLVbY6S70iwKOjjK
	2CIs=
X-Received: by 2002:a2e:ae18:0:20b0:38a:18e0:6433 with SMTP id
 38308e7fff4ca-38a8982bc52mr10293091fa.37.1773423273049; Fri, 13 Mar 2026
 10:34:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com> <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
 <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
 <quybzbqxlohu6kiqmno2wzyltwejnc2vebxdgvdl3fdib7zg7u@wz3bkop7psu6> <20260313-urban-prawn-of-success-cff01f@quoll>
In-Reply-To: <20260313-urban-prawn-of-success-cff01f@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Fri, 13 Mar 2026 12:34:21 -0500
X-Gm-Features: AaiRm51VspXcjEKHXmJc37HLPjgLi1YxqpxRPyKHzV8n0-Gps0zwXBk9qmWEjPk
Message-ID: <CALHNRZ8iBqGGRDKhDNOasfyf8TY43ne1N82irkuzDZfWUuV5sg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Val Packett <val@packett.cool>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275478-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sobir.in:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,packett.cool:email]
X-Rspamd-Queue-Id: 985862882FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 3:37=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Mar 13, 2026 at 05:19:27AM +0200, Dmitry Baryshkov wrote:
> > On Wed, Mar 11, 2026 at 08:39:37PM -0500, Aaron Kling wrote:
> > > On Wed, Mar 11, 2026 at 7:49=E2=80=AFPM Val Packett <val@packett.cool=
> wrote:
> > > >
> > > > On 3/11/26 2:44 PM, Aaron Kling wrote:
> > > >
> > > > > From: Teguh Sobirin <teguh@sobir.in>
> > > > >
> > > > > This adds a base dtb of everything common between the AYN QCS8550
> > > > > devices. It is intended to be extended by device specific overlay=
s.
> > > > >
> > > > > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > > > > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > ---
> > > > >   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> > > > >   arch/arm64/boot/dts/qcom/qcs8550-ayntec-common.dts | 1777 +++++=
+++++++++++++++
>
> Common is not a board, NAK. This could only be DTSI if you provide some
> sort of HARDWARE arguments explaining the common parts of schematics or
> hardware design.
>
> > > > >   2 files changed, 1778 insertions(+)
> > > > > [=E2=80=A6]
> > > > > +/ {
> > > > > +     model =3D "AYN QCS8550 Common";
> > > > > +     compatible =3D "ayntec,qcs8550-common", "qcom,qcs8550", "qc=
om,sm8550";
> > > >
> > > > Huh?.. All existing -common files are .dtsi includes without their =
own
> > > > model/compatible, and the compile-time "dtbo" support is only used =
for
> > > > EL2 where we want to apply the same thing to many many devices with=
out
> > > > polluting the tree with extra glue files. I don't see why this shou=
ld be
> > > > a "common device" with its own compatible string, and not just a dt=
si.
> > >
> > > My use case for these devices is Android, using a single base dtb and
> > > variant dtbo's in a single software build. Given the aosp boot image
> > > v4 setup, using individual dtb's would require different vendor_boot
> > > images, which would require multiple build targets. This setup allows
> > > for my use case, while also having individual dtb targets for a
> > > standard Linux use case. To my knowledge, the final device specific
> > > dtb from this is the same as a dtb using a common dtsi.
> >
> > This needs to be explained in the commit message. But do you need then =
a
> > model/compatible in the default dtb?

This was added because schema checks failed without model and compatible.

> Not enough. We do not add compatibles not representing actual hardware,
> just to streamline boot image handling.
>
> Plus this code is not even truly correct.
>
> We do not write DTS to fulfill broken Android boot process.

I have been trying rather hard to find a reasonable compromise between
mainline requirements and a normal Android use case, something I can
actually ship to normal users. This seemed fairly reasonable to me,
since it can generate standalone dtb's transparently. But if my use
case can never meet submission requirements, then why am I even here,
getting shamed for working on Android? If I have to fork the
device-tree anyways to fit my requirements, then there's no reason for
me to put the time and effort in to submitting something I can't use.
I'd be better off just keeping everything out of tree as googles
kernel-platform supports. And never look at mainline qcom again.

Frustratedly,
Aaron

