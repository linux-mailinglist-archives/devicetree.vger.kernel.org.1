Return-Path: <devicetree+bounces-275598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id f4b6COC+tGk/sgAAu9opvQ
	(envelope-from <devicetree+bounces-275598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:50:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CD028B4B9
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5C9C304B006
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10E62296BC9;
	Sat, 14 Mar 2026 01:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bA8cQ90E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC454315F
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 01:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773453020; cv=pass; b=B6RMqHcXifQckcwhimoX+hqwFqcmphfRsaGDZUjE2HwLeY3LAElnWd+L0yLxyJGOent5NuK8hEY05X+2lPnD4K96fs0aWNs+7u5fQ4RC6swNNxDxo5kOw6GZbcOugJCTprJe/Js9llGgOYQbF5sJibPP8E1/p2ntGWv+KVyFZw8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773453020; c=relaxed/simple;
	bh=rVE5ewjcH5qWdhMHZs8Ad10FOpOfDspK/YJDZNkG/oo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=InUWT34joD7d6XmigjM/KMjNCiN7n/G4e/bnJzSr5LDzlEdvHQzi7q8nP5okv5JUhapyhmsKGRLN1e9+W/pFvNHXLvn19ZOkMHJJq7yMypK7RugNsMwjN2/dXNtQoXHL0SjvYDubgq/8rUXLysK1E0lpP8VzkMMdelF0uZtiaDc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bA8cQ90E; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5a140efd2d5so5217650e87.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773453018; cv=none;
        d=google.com; s=arc-20240605;
        b=J+s4b+OMJdINjNMGZxj6Ach1kJOB67K7gL3kI/38uusJRb0uVbHaYtCMXQOWX2+cwl
         gpHk/eRqUYK5cnvtuuMUH7cZ+iwF4EHuZTYJZfbO2oLPwWftOWIOk+8R5Y9xrkTGVHEp
         SmuVgT+lOajiB6uB/UDwYMVHDoOU2CaYYxCnPUvs+X7g+w+d2GtgPntdkHvfpgxM6tZc
         YCCZjbbfV2tDXHVjtSu0DH8MgcfxxvewZlLL7+R4AEmCofpXB634D4OhUmHf09dNarOf
         9/YdMR9K+SifxwfIyw0oMfQFYOo038VxO7/GxAq79PWqDGU+qTMxSmJxG+pMYjJg08J/
         7WRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=99cofb1KudahkwvDFsorLnP67GLLdISpRqHfNmgJjnc=;
        fh=CLH/GuDZxF9/uOQYLeIDXUsycWczXxSqr6yv/iYtJRw=;
        b=Agi4i/FUwbgGCuRzWxi6dse0XUemD/6gJK4eKSavq9+kgtqn8q6ZUMzdjjlUDjSZF9
         /WL8ncI0jrnOwKBlhUO5K9M0ilVE269FpmkuHC15k0shCpvJp+mvgHMMzZIIPJa3qRUT
         prBywNdZTNgbbPiuOKW3M5xsYklDm4vICOD6srX2koa7nw3OtWotCgavurOCc4t/aCST
         Jew5IjdBrM7bCfigz34jum82pE20DsR3cKBAfTBwfPIb1XKh7/LZpzKt5JS55JXS5v2n
         tZpwyBzMkmwvdUPYClKZfsmuAN6Y/eShhVV57zj1+fgBwDEQO9vyU3OLhGZPIL+G0tlV
         lS1g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773453018; x=1774057818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99cofb1KudahkwvDFsorLnP67GLLdISpRqHfNmgJjnc=;
        b=bA8cQ90EGZHdQ3JYXOkMUzmanJVWZluUByCsPATzxnYBB5BsbCI0XaCZdAjz1XjSJN
         iHNNriQUuD6sGv2FEgetLtB6M7kUeeKg2GYV/GefaQFqt10IrJuw3BaL5UdBxjZGbvpn
         b77ENDwKbtcDuIE5kNp0UfDZhonFxPUUR5t5WyZZKGQ1sylBGiPUe3YsGXOSayFzeIzF
         5DIQYjk8ELgNKaUdvP/cAQb/zTRhUWouNvIX7qQ4DSttIkVyWIwSqZdiqgNX9/XLUW+o
         gD4NK0ulJwPwpLonKBNYdABvUXkMEpyUqmk8XALkf5uAVsg3BUSnub9dDkEGG/YcHlkt
         yrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773453018; x=1774057818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=99cofb1KudahkwvDFsorLnP67GLLdISpRqHfNmgJjnc=;
        b=XNuk5GUszQr4Tbxf+ldgIuSqJt6PrkUZn7YB1HSlFOBXmQnIgJB2k/rzWU1TXxDRo7
         RNZ91t5zIvRCFhwsJ0mNIWOTJ2p2dfhv6ESKHt1KTEXb9EdbQ6iggIf6IlCZn60ZZILs
         IR8w4J/sQiGl3EAmA71cbZdivqt787QtOVTAWUDPg1MKq+Tq7shkITlfbQ/zTL3mcgE0
         yk1NG5oIeL5c+r9o2bWhMoiwtFINuWNcJtfSZFC86pk7xTJgPGsh2jKU6pC2oxzs6XJm
         1dMnj4y0isZ/4i+A2qzMR2JwiWTrqzqDeZRR6plbfqKTH2txEAMNuuqFkm0f0lZBptHz
         BCpg==
X-Forwarded-Encrypted: i=1; AJvYcCVrvU43GhvCeF1rmtwWPJvOUDGHlQ4WmZjWEl8gTeh79813LaSVYxNMZg8zmhs/qP7Ug3GKTDFiQkH2@vger.kernel.org
X-Gm-Message-State: AOJu0YxTqJGrfAFe5FF8jaeU4mMRysjS099qkTapCst8dAD6iqHIJA8q
	aUS/n1IqjdMyyHbebuCZJdGb6EH3f5M3dYnyLD0QnbTQTpGk+8odmE28x8BZsHiQDzpr3CQh3p/
	JS09TOoaSqVgTUHuLdap6hVfJz9/nT1MOqF5Q
X-Gm-Gg: ATEYQzx170Gsc/AiHloNi9vDwe/hzPo2B9oZWRYk7jFENSKnk0p3ovNWOD8wx2tq7zZ
	hcrTNbRTIha44sjOOrZy1/ukXm+nN8164Z9EOZzu4U/P6OMiATQPo9ZekT6ZsXBF+ffpZezHCd6
	hMGicANkdaWaQTYfymN0IkWafgamzpaf8wQ0Tv+jrFz8DhRSHz5sM/cn7K8AzBY15703prddj8m
	rgx/ICPLhSowcoiw8AITGr52ta9Macz7Iv+PrG9TGnzdBSClzY/RdqbXpbjvtiuhsU9+XCSogOd
	ppl+PhqxVX0DuhF879TSUUGJR25EBwy27MzC9i32C8saZJERHvZDypWJJVY5iKuRhLn2q6Q90H5
	tHCY=
X-Received: by 2002:a05:6512:3618:b0:5a1:4bd3:7b8 with SMTP id
 2adb3069b0e04-5a16270f8d7mr1569371e87.17.1773453017289; Fri, 13 Mar 2026
 18:50:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com> <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
 <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
 <quybzbqxlohu6kiqmno2wzyltwejnc2vebxdgvdl3fdib7zg7u@wz3bkop7psu6>
 <20260313-urban-prawn-of-success-cff01f@quoll> <CALHNRZ8iBqGGRDKhDNOasfyf8TY43ne1N82irkuzDZfWUuV5sg@mail.gmail.com>
 <wzle4bdmemfknhflwhxikq7rk7x3ao3z474bhsr5zdkvtp67cc@jddzjpzwlfrc>
 <CALHNRZ8_Lzn=mr89dezkC6hVwgxh9kYmg8ntLf5RDuNydc9VLQ@mail.gmail.com> <a045299f-9be1-4e91-8b3c-132a30613f41@packett.cool>
In-Reply-To: <a045299f-9be1-4e91-8b3c-132a30613f41@packett.cool>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Fri, 13 Mar 2026 20:50:05 -0500
X-Gm-Features: AaiRm53-p_yjr1m4biSBf9Hd9oX0gSvuW45ASNIKSHT640CSE25eHMPknY38Dek
Message-ID: <CALHNRZ8ei06Fxivm1+Su2a+tCxYK8-3mxgJnULTA_+bwbfcGNA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
To: Val Packett <val@packett.cool>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275598-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 39CD028B4B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 7:11=E2=80=AFPM Val Packett <val@packett.cool> wrot=
e:
>
>
> On 3/13/26 3:21 PM, Aaron Kling wrote:
> > On Fri, Mar 13, 2026 at 12:48=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >> On Fri, Mar 13, 2026 at 12:34:21PM -0500, Aaron Kling wrote:
> >>> On Fri, Mar 13, 2026 at 3:37=E2=80=AFAM Krzysztof Kozlowski <krzk@ker=
nel.org> wrote:
> >>>> On Fri, Mar 13, 2026 at 05:19:27AM +0200, Dmitry Baryshkov wrote:
> >>>>> On Wed, Mar 11, 2026 at 08:39:37PM -0500, Aaron Kling wrote:
> >>>>>> On Wed, Mar 11, 2026 at 7:49=E2=80=AFPM Val Packett <val@packett.c=
ool> wrote:
> >>>>>>> On 3/11/26 2:44 PM, Aaron Kling wrote:
> >>>>>>>
> >>>>>>>> From: Teguh Sobirin <teguh@sobir.in>
> >>>>>>>>
> >>>>>>>> This adds a base dtb of everything common between the AYN QCS855=
0
> >>>>>>>> devices. It is intended to be extended by device specific overla=
ys.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> >>>>>>>> Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> >>>>>>>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> >>>>>>>> ---
> >>>>>>>>    arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> >>>>>>>>    arch/arm64/boot/dts/qcom/qcs8550-ayntec-common.dts | 1777 +++=
+++++++++++++++++
> >>>> Common is not a board, NAK. This could only be DTSI if you provide s=
ome
> >>>> sort of HARDWARE arguments explaining the common parts of schematics=
 or
> >>>> hardware design.
> >>>>
> >>>> Not enough. We do not add compatibles not representing actual hardwa=
re,
> >>>> just to streamline boot image handling.
> >>>>
> >>>> Plus this code is not even truly correct.
> >>>>
> >>>> We do not write DTS to fulfill broken Android boot process.
> >>> I have been trying rather hard to find a reasonable compromise betwee=
n
> >>> mainline requirements and a normal Android use case, something I can
> >>> actually ship to normal users. This seemed fairly reasonable to me,
> >>> since it can generate standalone dtb's transparently. But if my use
> >>> case can never meet submission requirements, then why am I even here,
> >>> getting shamed for working on Android? If I have to fork the
> >>> device-tree anyways to fit my requirements, then there's no reason fo=
r
> >>> me to put the time and effort in to submitting something I can't use.
> >>> I'd be better off just keeping everything out of tree as googles
> >>> kernel-platform supports. And never look at mainline qcom again.
> >> Well... It's a tough argument. Getting your DTs into mainline would he=
lp
> >> occasional users that would like to run something else than Android
> >> (PmOS or some other distro). Also it ensures that you can run Android
> >> even when Google (Qualcomm) EOL the current SM8550 msm-something tree.
> > Oh, I'm not working on the downstream kernel either way. The question
> > is whether device support gets mainlined or if I keep all support out
> > of tree and only update when Google forks the ack from a new lts.
>
> IMO landing everything with proper upstream style and having minimal
> customization/patching during your Android build process to convert it
> into a base dtb + dtbos setup (or a blank base + everything as dtbos
> one?) during would already be really valuable.

The end goal was to get everything possible merged before the 7.x lts
and use Googles Android Common Kernel repo as-is from that version on,
no vendor specific fork. Perhaps overly idealistic, but still the
goal. There would be a few android specific device tree things needed
in out of tree extensions, but that's trivial with the kernel-platform
build setup. Including a common dtsi and extending that out of tree to
a base dtb is trivial, if said dtsi doesn't get nack'ed as was already
threatened if I don't provide documentation I can't possibly obtain.
But if the device specific parts are a dts that already include the
common dtsi, extending those, cutting out the common include, and
turning it into a dtso is potentially not possible. And even if it is,
the method would probably be approaching a crime against humanity. And
if I have to fork the main kernel anyways, I'm losing a large piece of
why I'm trying to upstream things in the first place: cutting direct
maintenance of that repo out of my workflow and only needing to push
fixes when new issues are found.

An empty base dtb is an interesting thought, but I don't think it will
work with abl. There's been this whole back and forth in other threads
about how abl will fail to apply any dtbo, even an empty one, if it
can't find certain labels in the base dtb to apply changes to. I would
expect even more of those to pop up if I tried to minimize the base
dtb. And then there's still the issue of extending a dts into a dtso
that might not be possible. Which brings things back around to having
to fork at least the device specific parts out of tree to make dtso's,
if they can't be a dtso in-tree.

> >> Speaking about the boot process. I remember that historically it was
> >> possible to pass several DTBs in the the Android boot image. Is it no
> >> longer the case? Is there any way to identify the boards (I think
> >> historical code was using qcom,board-id for that)? Then you would be
> >> able to squash all your DTBs in a single boot image.
> > That functionality is still there, the concatenated dtb slot in the
> > vendor_boot image. Unfortunately for this context, the odm did not
> > change those ids per hardware variant. I think they just left them at
> > the hdk or qrd default that came with the bsp. I do have to jump some
> > software hoops to slot in the correct dtbo to the dtbo partition
> > during inline updates because of this, but it's not terrible. And
> > that's not something I can reasonably do for the vendor_boot image. To
> > my knowledge, there is no way for the bootloader to tell these devices
> > apart and any attempt to do so would require a custom abl build,
> > probably per variant, which would then desync the boot firmware from
> > the official OS, plus make first install more difficult for users,
> > both of which I'm trying not to do.
>
> Leaving the default board ID is a classic=E2=80=A6 but on many old Androi=
d
> phones you (read: an intermediate bootloader) can use the cmdline
> injected by ABL to distinguish between models. Nothing like that here?

Maybe something like the panel params, but two of the variants share a
ddic, so that might not even be sufficient. But if I add u-boot to the
boot sequence, then I lose a lot of things that abl handles and have
to set them up in u-boot. Things like loading init_boot and
vendor_boot ramdisks, handling bootconfig, avb parameters, etc etc. Or
drastically change the aosp device tree configs to disable those
things and in doing so become non-compliant with current aosp
expectations. Long story short: chainloading another bootloader and
staying compliant with vts is a *lot* of effort I really don't want to
do. Booting android on qcom via u-boot is certainly possible and I've
seen others doing so, but those have deviated a lot from the OS
expectations, and the more deviations there are, the larger the chance
that unexpected things go horribly wrong.

Aaron

