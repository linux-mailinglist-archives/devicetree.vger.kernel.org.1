Return-Path: <devicetree+bounces-265483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDPQBseqj2m2SQEAu9opvQ
	(envelope-from <devicetree+bounces-265483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:50:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD8F139DD2
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:50:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 96135300622D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA2763176EF;
	Fri, 13 Feb 2026 22:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eQJ1NuQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663F9315D46
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 22:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771023040; cv=pass; b=ZLIizrQP7vkdkvhLyRGJldtNq8f/ospYk47sT3Ss8l7gQlZlDke3qX+ksCC6zu6dlE8zfXy0Q/pr4+AqvSs8PHQrkVag9RQEQtOBMvK3/BoUngI6f9VUwTkyES5roIrLsYwNSLFEiZcSMiIt1CcoGs2lqbeoe/SuTIT+YLlLEeo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771023040; c=relaxed/simple;
	bh=lr5p0UQVbZf3BUB9lAWHgkkUnoSiqgJtH4p8mksrrhc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e/s97swvFxxOkUnplnSHZGwsGN3LnArt2HzjIe9t9xRpnlhHOjpYUy2rMizt0uF3R/pY6turzxY/LaLZooTMPqsoRIPIV4zAa88hp4hoDy7ZrZP9Hyu3s4tPS8hXClRYuAH99u3WKH9bCOqq7zaEuh8qwgfLe8a3WuMmSYd+SIg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eQJ1NuQ9; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38706b63929so12142241fa.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:50:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771023038; cv=none;
        d=google.com; s=arc-20240605;
        b=iOYNp5fRyHWgyfb+3Uag8nshk+jQitpidkRhJ3xV5xJJtLIsFDH4qNnpNwS+NELYFL
         i0hiySWWk7YJ0pPm9P9pzq4vO9ghRPfDP0KUDORffWtgCfryl5jqKH9LziAYVy37SrBA
         MEmnW6XlLJEirwGhZoyMVU0mlRcvo3O6XpBwE4bdFNyGxbBDflrs9QOPK607f5Z4byg6
         b0cMIE5Rk5ykuUX16CJF1++XJqwYpszB2HRFwvh2t1dQ61Lx+Xjhc6pSaNMB3mEiRcHg
         Hjf32JVfhWczTefxqinfxsFWcM8opRJTOmmlo3iPzjFHi6d1IziQzRQI7Ayb74kbZjHs
         fntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vR+6cRekOZtXr2Qr1FAp4PgFafu9msNtuU7NWkZnbjo=;
        fh=TjVO2E6aei+2zO6dv1mQBBMKWTisBB9CbVdi7u2cXMU=;
        b=MVwKNBmMEWmXvnOUHypWuF7R2emwwiF+U77XL1ZFxjCt5U84136b84cFSgKPJ9JILx
         FBUcbftLTaYfARzJ+Fqh6zSBRl8VGxvZnF8ITopUKKiBWn+FkPBpdA/zXGMooK09W2i/
         6P6UMllgUZM8m3IGoA5PFz1mTlHR2HIbdZCqEFIU6UtEc5xzkFavH+3s8fYUU8pAYHHK
         zRRYMnjxzvlMNMCdB1OWdwg+nOGvDDC5grGzQ3nq5yeolVR5cD2KDicqlk/FrWkizdsm
         kYbmwt0KA++om5qKy/L5CsimEO0M8VbNmXDWU+MP1fPhfOZAXdbJJsRyRWMTtzpvCHF2
         cBzA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771023038; x=1771627838; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vR+6cRekOZtXr2Qr1FAp4PgFafu9msNtuU7NWkZnbjo=;
        b=eQJ1NuQ9cCoHgiL/qW1TMVJG6Ig8eyPCw/nRY06HCcBAFDRm2nLGVgFz+gyig/eWOk
         LnKa+wu9kBa8oFpy50FmLSuIZ9sI17x06boPdrFjtalEn6PNM5iUaR9AYvO5QzUDnGrQ
         yAERBUhdG7+bCBzvOGEK+GC4nmLEkdJwf8m5fqH1Rm2N24VcKtmyiu6jF7IyWyyGe7ep
         KJpx3AFs9K2mjHx426+reXQGU6myQy7OpK4p+g/cF5SgA2WQCSxh5G7ryjRmiCRnLR1r
         TCzrVQLkvhCMKROPKfzl2wiZkK9kMUkUznZr8fJE3T6kq56jVJns/aL9TG1D9FmsJIef
         NTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771023038; x=1771627838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vR+6cRekOZtXr2Qr1FAp4PgFafu9msNtuU7NWkZnbjo=;
        b=noFE6DosK1AV5f6YJbajIx3j4Vxib3pBYGqeIzOyHDfII/CWrKOCAz/BnX+M6WGmF2
         iFiIZqlbVCJPSu1UyWvkOc8OI5y+iuyf1U49NsUyuxMllzQ5GbXWbNuXXOVxU+E+F8jb
         N5kPkWm/XWqS1OkPM/JM40OKJ2uOet0ccicVD9OFjvCBzWUnfhg0wRsLdzQMbFOUWk8A
         2ty2PZGSogQtnXOkb7IE86cs6Kx1DCgTusa2SGWQ57LMkDhnl3PvEOr9aVds2y+x/FFW
         moFft82rkD5LNWiMAte9hCWFml2rm9t8Qw2o411EDRE4TXtfkH7B/RQXFJ273hIMPbpt
         sD/g==
X-Forwarded-Encrypted: i=1; AJvYcCU4seRjhNYDNN1BUMMWl/aU6rtPaC07kPbgkCDFSvYnjxLpas/pwWyNcAE0DrIBGJdsgyoT3PsgTtGp@vger.kernel.org
X-Gm-Message-State: AOJu0YwKlAoIOuv1ojjTS4yvpayy1kire4dEKHcT+TOO9bAJ8f0BstVw
	LRab95aKaJ0xMZq/cx3TvASPhQpVThX6rqn81+8hUW5N4noiZAeYOW0ExgOfpvd4zPf2W2WSugN
	PRyojVGmkXHijf567zqInZC9LCS42xHA=
X-Gm-Gg: AZuq6aJ4iDmer5bIBXfIbtWQ8rhBd2FqEr/w27TXsrhYegwqj2qZC3/Dy8SPgsD2DFv
	PrJIzt9X1WF4gg/Mmd0Faa+f5LyN9VT2nUHiiJr05hw6pSPNSHBlydE/9qQhL6hhyVKHbzDQsJG
	Q39fXOXY60t2JNRN4Eaol9IT0pUC7zvky51pc1xTgDX5k/LpSNlKPZFsTvsvV38qdlYU5ur94PK
	IwZe3xz3AmP0mTV6DzRnq0HMj2Vf2lG+FXJrbo62feX2C8UKLEqQPEMWxkjGL/ix6ZbIrj97EM5
	KpFMz0y2JxHQRuQUxK6x1QipsEHrqsSIwR60ymjAiOa5O2Cc8hAeIOMpXKqxPbPdbd3Rrg==
X-Received: by 2002:a05:651c:1594:b0:386:8f97:d0b4 with SMTP id
 38308e7fff4ca-3881056e9e0mr10978961fa.33.1771023037226; Fri, 13 Feb 2026
 14:50:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207-sm8550-abl-dtbo-v2-1-83afaa6f3ce9@gmail.com>
 <d4faaf8d-1517-4187-8801-a2dd52d8dde3@kernel.org> <CALHNRZ9k3yxXb9OfYXMSfEwyYKU8Rrrrjb-hPqLgU90X9YBP8g@mail.gmail.com>
 <487e4605-0a21-48d6-8b77-9ce2799ad212@kernel.org> <CALHNRZ8sqCpUMyCFP99b7nHu2onojZ0EY6YGQZ9RMP0kH8jWzw@mail.gmail.com>
 <gd7puun6xy5bh4q73mqc5ooza2kzla3rtov6d2723zc6tw7qwi@gxbsnloi2qcw>
In-Reply-To: <gd7puun6xy5bh4q73mqc5ooza2kzla3rtov6d2723zc6tw7qwi@gxbsnloi2qcw>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Fri, 13 Feb 2026 16:50:25 -0600
X-Gm-Features: AZwV_QjheQFWIEOHHIv32Xg63eRnwZ_m1h48teuA8-xoaylzGjylpNz_BX-gxLI
Message-ID: <CALHNRZ87j=j5LEMA=P=D73vOz1C-p+BDKcXV2bH7rcPDtAx9JQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: Fix DTBO boot failure
To: Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kumar Sharma <quic_vksharma@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265483-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3DD8F139DD2
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 2:34=E2=80=AFPM Bjorn Andersson <andersson@kernel.o=
rg> wrote:
>
> On Wed, Feb 11, 2026 at 09:10:39AM -0600, Aaron Kling wrote:
> > On Mon, Feb 9, 2026 at 1:51=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> > >
> > > On 08/02/2026 16:10, Aaron Kling wrote:
> > > > On Sun, Feb 8, 2026 at 3:07=E2=80=AFAM Krzysztof Kozlowski <krzk@ke=
rnel.org> wrote:
> > > >>
> > > >> On 08/02/2026 02:16, Aaron Kling via B4 Relay wrote:
> > > >>> From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
> > > >>>
> > > >>> ABL requires certain things in the base dtb to apply a dtbo. Name=
ly:
> > > >>>
> > > >>> * A label named qcom_tzlog must exist, but doesn't have to contai=
n any
> > > >>>   specific properties
> > > >>> * The timer node must have a label named arch_timer
> > > >>>
> > > >>> This aligns the sm8550 soc dtsi with those requirements. Without =
these
> > > >>> in the base dtb, when ABL attempts to apply any dtbo, it will fai=
l to
> > > >>> the bootloader menu.
> > > >>>
> > > >>
> > > >> Incomplete DCO chain.
> > > >>
> > > >>> Co-authored-by: Aaron Kling <webgeek1234@gmail.com>
> > > >>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > >>> ---
> > > >>> With a current mainline sm8550 base dtb, ABL will fail to apply a=
ny dtbo
> > > >>> and fail back to the bootloader menu. There are two changes neede=
d:
> > > >>
> > > >> Since when? We were testing SM8550 (me on QRD) all the time and th=
ere
> > > >> was no problem.
> > > >>
> > > >> You need to provide details which hardware needs it, if this is ab=
out to
> > > >> expected, but honestly, we don't add such nodes/labels for downstr=
eam
> > > >> bootloader. Qualcomm should fix the bootloder instead.
> > > >
> > > > This discussion has been ongoing in a couple places. It is needed o=
n
> > > > all semi-recent recent qcom socs. See this chain [0] on my sm8550
> > >
> > >
> > > Explanation must be in this commit, not in other places.
> > >
> > > > questions thread and the previous revision of this series [1]. This
> > > > has been a known issue for a while, see this comment [2] on the gun=
yah
> > > > watchdog series, which is what the series was based on.
> > >
> > > But that [2] still speaks about overlay. You are suppose to boot
> > > standard kernel with typical setup - concatenated DTB.
> > >
> > > If you want some other ways, like choosing overlays by ABL or whateve=
r
> > > else, you need to fix ABL.
> > >
> > > You want to use some custom boot way of ABL, but it's broken... yet i=
t
> > > is no reason to add these properties. What if I want to boot DTJUNK
> > > files via my custom ABJUNK - can I add such things to upstream? No.
> > >
> > > You cannot add properties to support custom boot of ABL if that boot =
is
> > > broken.
> >
> > My use case here is an open source Android rom. I would like to think
> > that android would be a supported use case. Not necessarily a driving
> > force for decisions, but at least supported. And I'm using the
> > standard boot image v4 setup with dtb on vendor_boot and dtbo's on the
> > dedicated partition. This isn't some weird and wacko setup, it's what
> > the vast majority of devices this soc is used in are designed for.
> >
>
> Android isn't a weird and wacko setup; but I'm guessing that the
> proposed changes aren't related to running Android, nor are they related
> to dependencies of the overlays, but it rather relate to some
> runtime-generated overlay that ABL wants to apply?

I honestly can't say what the underlying cause is. A couple of us have
looked at the public abl source and weren't able to find what causes
this issue. We just know that this issue happens when abl tries to
apply a dtbo off the dtbo partition. So yes, in technicality this is
not an android specific issue. I mention android because having a dtbo
is generally expected in the aosp setup. In my specific use case, I
have four devices from the same odm, where it's simple to split the
common part into a dts, then the device specific parts into dtso's,
allowing for a single software build to support all four devices.
Requiring everything to be baked into a dts would require separate
vendor_boot images per device, and thus completely separate build
targets.

> Fixing ABL to be resilient against such failure cases certainly seems
> like the right thing to do. But I'm guessing that you're on some device
> where you can't change the ABL?

My devices are unfused, and thus I could change ABL. Two problems,
however. 1) we can't find the necessary changes to make to fix the
problem. And 2) this problem is more universal. Per [0], this affects
8550 and 8750 using the qcom baseline abl. By extrapolation, all odm
copies will also have this problem. This has also been observed on a
sm7635 phone. It appears to affect all baseline abl copies since at
least sm8550.

> If that is the case, then I'm open to a pragmatic solution where you add
> such workarounds to the specific dts that needs it, with clear
> documentation of the circumstances.

> PS. Not all SM8550 runs Android, not all SM8550 has that specific
> version of ABL, so therefor the change does not belong in sm8550.dtsi.

Ideally would be getting this fixed in the baseline abl code by qcom,
since this issue seems to be continuing. That's not something I can
affect, however. But I disagree about making this device specific,
because the vast majority of devices are affected by this, it would be
the exception to not be affected, from what I can tell. And on more
soc's than sm8550, but qcs8550 is the only qcom soc I am currently
working on.

Aaron

[0] https://lore.kernel.org/all/91002189-9d9e-48a2-8424-c42705fed3f8@quicin=
c.com/

