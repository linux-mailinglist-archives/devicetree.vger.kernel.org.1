Return-Path: <devicetree+bounces-265959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHY0JBDSk2m38wEAu9opvQ
	(envelope-from <devicetree+bounces-265959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 03:27:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A83BF1487A4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 03:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61C9430160DF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 02:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84446221FBD;
	Tue, 17 Feb 2026 02:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WEIzghR+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF581946C8
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771295245; cv=pass; b=W72V2XoB8ofHKjga54/5BNgbTHaX0N6s6UFelA4fYlZhui13OLPAwhzZJEVxwlS44US4ZFGWA2GMoOM60wsY+VbLrbx2zT0tBgqofp5iX+s/JiwMqIxWVMsHWXo2glc64H7q5UO3U2Xotxu1l8s/I4wzP36oQT0EUO7HA3geexI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771295245; c=relaxed/simple;
	bh=ZMegS5EihBIpU2aachnCxCRGFqv/ZLCzO4Bnl9LXTC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J6JDnpApoQh9bsYXz5wvbgVJ5nBeXGHrwkXMR0J1kafHmUhaF0SjfzpVJTp8ZUEG+SGzsImVjlpoDPUVnoBeT8dZDcf1xRPVhwWlocP3XnWPM7CQ3YfJAg6db8JNr+SdOsU6pPhu7LLRfyrzgSLLOfHTHmIW5RjAfhZ7LsADQAg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WEIzghR+; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3870902760cso29293581fa.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 18:27:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771295242; cv=none;
        d=google.com; s=arc-20240605;
        b=PRHEH6IWl4t4u8jx9gDyg9aMt6Cqnxydoz9Ed7lx5KBvfqJiJpDMKfkmunKOfBcRlC
         99icZJojgbUsAI7FPGxRm/iraNQRYWoH9tImzpPPYRd4yzcBya8aviEU4lDfP7zzsATH
         wUFgo9lx8eCvudjRqv4+Nl6qf5T8gcQUO3tmJxnrgsp7C07CjHLRaC5TgPngTlzHkrZu
         +92G28+acxQ44dWpU3GZeWdP+YXkWmNGiumCJ3Qqs38h5XbgqgV7k/ckGbpdJmqY7vyA
         SMjqUvEHTesnQgoKGusVsSnWEnG00bykRj7bcuReMTW/BUXz8DuZD9hUOrDLEaumf+Vc
         TitA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LHnzww8da0okZLNTHF2U71/vr0itLbMLpoiCwJGa0gc=;
        fh=pgueoioFWy6uIuw08A+NuRWWwuWH1wJCFtWE690ceoQ=;
        b=jcjP8QFwu+wYdayLY15VDKGVbHjCTi81apoDutrsl1YNVjDivyPmcXlG+RWSqG2O4t
         nYkhgBhUzAw4AoawnUzS4suPBxh7s98PI5zKOU/RyOuMEssd1sEXYIzrqqg6hZReC+KK
         c173dlHtRhpVjFWiGcXfzAGAu5Zv5ull8dzl9WTIwS058loz+t3cOACJ1K+VR66yXUX2
         owsdXuJPSRQXsNrf0GUqrq0OmsDOYLME1FX1X7CtHozqcsX0542vduqqZir4wgeD3TWu
         kO5zFVQCO4ObhHfo8MPlzTsvzSdSj7cDCarkSKclBaj2rgIM/xdoJ0XAp9rZ7kw46EU6
         EVSw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771295242; x=1771900042; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LHnzww8da0okZLNTHF2U71/vr0itLbMLpoiCwJGa0gc=;
        b=WEIzghR++ehDKMW2Dqyne4T9ehiRdlD0TeqGWB7Hj8E2aUaKetOWq/TFh+bvFZzLpj
         sCs/iny79/hHsNC8M2tCJ0yGAzBWZOBEfCEItghRPLW6X5hA9eWD3hEu209nfqOSMxZf
         7pA0sXa/dEUksbGBtwCGWu/eBUXJSI9Z1miUrrZMnMjuouVlxyTp1G75P2JLcrTYL+Pk
         yXvJbiznReKU5E94qpcsCxOt0qCmlORMKEyVF6hhitbSB6KTWgRommCKgLJeZH7/tHyZ
         jTMq9GbvQ1dAbuEKcf6Cq1oMRomYcidDKulIfHODrZufcbQ9Fq0F+cOy9N/mcv6QFCYz
         fUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771295242; x=1771900042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LHnzww8da0okZLNTHF2U71/vr0itLbMLpoiCwJGa0gc=;
        b=HDWDXU9VFAy10zQCWRwIPLWhPxRS7iZ9muisF+tPBl4HTqyy94j7ii8bpiMZZ6xg0U
         LLV2Uz7fbm6W4Eoz7KhVf04/kSLFe2F0+OHXYRbr4eruFBJTlyj+/kKlT2niVMc8FgeW
         VaemhVBhFJSJ6yY9SKQj4QAr7tk8c1ure2zW1G2cfpq5lDyE6EYVzg95hnekV+beRa3p
         9jY7VvKWkOqypuo5jE+p2/ZOkUE0GloQBgkfjxQxpTjgdev/Pd4z2vIqbm6xxhzxkVZH
         2G13pTIuhtOqFajCS8wrT4QiK7SgOkR4aNlgW1DMuIqVTEgxwogsPxTmKfT0zDBCrO0j
         9MsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlXsOVw57cabVjt88sAz7YZwOh93gypLBGPy0UwRCQecVthZihNVTOuEl5M7dg7+9BSngMDRfkdfQp@vger.kernel.org
X-Gm-Message-State: AOJu0YzHkNY7be61lmN3F9M067itXfyYqNRGo2NbBn8m7W774poybvKp
	jfpywV0YrQm8+q/nho6PgCR3dUghqFMlwEPJhNShH5eJjZfVoGfWncjVq3WI6JfaYp0qSZSOwpF
	0KKoKOC3NTzepfK3YiUSJ5+XMbsKuoi8=
X-Gm-Gg: AZuq6aJrLvBTJbgh6d7Sa/qtrgg9bQQ3rTHSrGaRJGVTbMJaoejQu4L4A6BoKqE8vIs
	LYQlGKkdOmbO3P/BaO/31TgaPApPP9crNsyuEamCfIKzTjrOt/dcTKBpNYdChAqF9PS5hyoM++d
	Ar4Qv52vQ0c6E6S3zCyijhbfbodrgzrnOaw+NumtJkTto1X9PpOTsjcb6s7qJPWgUghol9hRM3Y
	Mk6ou609sgKkjhXh1HBZEQ0HOLqsDX27ZkBp5RxObYA/wUPCTRjg0+Fs8lT1GflLqs0EwcGoJou
	GG9TLJn7xYtey3nUa+XOJ3sbNB3EK1d4NFsk8ugyR1/Z4nOZfPjYEojAjwE9usmXbcKm5nFOOmE
	z4PI=
X-Received: by 2002:a2e:2ac2:0:b0:387:170:7411 with SMTP id
 38308e7fff4ca-387ed8dc2c8mr33128501fa.36.1771295241675; Mon, 16 Feb 2026
 18:27:21 -0800 (PST)
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
 <CALHNRZ87j=j5LEMA=P=D73vOz1C-p+BDKcXV2bH7rcPDtAx9JQ@mail.gmail.com> <dczz4uvcq4hc6p3zb6xnrsgmfeomwliagwhf36tewdz4z6mndp@afbxzhjziiwv>
In-Reply-To: <dczz4uvcq4hc6p3zb6xnrsgmfeomwliagwhf36tewdz4z6mndp@afbxzhjziiwv>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 16 Feb 2026 20:27:10 -0600
X-Gm-Features: AaiRm50UqmPebJUkgI6TzoRzzQLnrTmdoL_-LjKdkwLe_gjJcHebPLiAxwAIrVA
Message-ID: <CALHNRZ9eT+mEqaAbj0-My4DriKWP+WPy4M21caXhOJPQuuVNhA@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265959-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A83BF1487A4
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 10:02=E2=80=AFPM Bjorn Andersson <andersson@kernel.=
org> wrote:
>
> On Fri, Feb 13, 2026 at 04:50:25PM -0600, Aaron Kling wrote:
> > On Fri, Feb 13, 2026 at 2:34=E2=80=AFPM Bjorn Andersson <andersson@kern=
el.org> wrote:
> > >
> > > On Wed, Feb 11, 2026 at 09:10:39AM -0600, Aaron Kling wrote:
> > > > On Mon, Feb 9, 2026 at 1:51=E2=80=AFAM Krzysztof Kozlowski <krzk@ke=
rnel.org> wrote:
> > > > >
> > > > > On 08/02/2026 16:10, Aaron Kling wrote:
> > > > > > On Sun, Feb 8, 2026 at 3:07=E2=80=AFAM Krzysztof Kozlowski <krz=
k@kernel.org> wrote:
> > > > > >>
> > > > > >> On 08/02/2026 02:16, Aaron Kling via B4 Relay wrote:
> > > > > >>> From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
> > > > > >>>
> > > > > >>> ABL requires certain things in the base dtb to apply a dtbo. =
Namely:
> > > > > >>>
> > > > > >>> * A label named qcom_tzlog must exist, but doesn't have to co=
ntain any
> > > > > >>>   specific properties
> > > > > >>> * The timer node must have a label named arch_timer
> > > > > >>>
> > > > > >>> This aligns the sm8550 soc dtsi with those requirements. With=
out these
> > > > > >>> in the base dtb, when ABL attempts to apply any dtbo, it will=
 fail to
> > > > > >>> the bootloader menu.
> > > > > >>>
> > > > > >>
> > > > > >> Incomplete DCO chain.
> > > > > >>
> > > > > >>> Co-authored-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > >>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > >>> ---
> > > > > >>> With a current mainline sm8550 base dtb, ABL will fail to app=
ly any dtbo
> > > > > >>> and fail back to the bootloader menu. There are two changes n=
eeded:
> > > > > >>
> > > > > >> Since when? We were testing SM8550 (me on QRD) all the time an=
d there
> > > > > >> was no problem.
> > > > > >>
> > > > > >> You need to provide details which hardware needs it, if this i=
s about to
> > > > > >> expected, but honestly, we don't add such nodes/labels for dow=
nstream
> > > > > >> bootloader. Qualcomm should fix the bootloder instead.
> > > > > >
> > > > > > This discussion has been ongoing in a couple places. It is need=
ed on
> > > > > > all semi-recent recent qcom socs. See this chain [0] on my sm85=
50
> > > > >
> > > > >
> > > > > Explanation must be in this commit, not in other places.
> > > > >
> > > > > > questions thread and the previous revision of this series [1]. =
This
> > > > > > has been a known issue for a while, see this comment [2] on the=
 gunyah
> > > > > > watchdog series, which is what the series was based on.
> > > > >
> > > > > But that [2] still speaks about overlay. You are suppose to boot
> > > > > standard kernel with typical setup - concatenated DTB.
> > > > >
> > > > > If you want some other ways, like choosing overlays by ABL or wha=
tever
> > > > > else, you need to fix ABL.
> > > > >
> > > > > You want to use some custom boot way of ABL, but it's broken... y=
et it
> > > > > is no reason to add these properties. What if I want to boot DTJU=
NK
> > > > > files via my custom ABJUNK - can I add such things to upstream? N=
o.
> > > > >
> > > > > You cannot add properties to support custom boot of ABL if that b=
oot is
> > > > > broken.
> > > >
> > > > My use case here is an open source Android rom. I would like to thi=
nk
> > > > that android would be a supported use case. Not necessarily a drivi=
ng
> > > > force for decisions, but at least supported. And I'm using the
> > > > standard boot image v4 setup with dtb on vendor_boot and dtbo's on =
the
> > > > dedicated partition. This isn't some weird and wacko setup, it's wh=
at
> > > > the vast majority of devices this soc is used in are designed for.
> > > >
> > >
> > > Android isn't a weird and wacko setup; but I'm guessing that the
> > > proposed changes aren't related to running Android, nor are they rela=
ted
> > > to dependencies of the overlays, but it rather relate to some
> > > runtime-generated overlay that ABL wants to apply?
> >
> > I honestly can't say what the underlying cause is. A couple of us have
> > looked at the public abl source and weren't able to find what causes
> > this issue. We just know that this issue happens when abl tries to
> > apply a dtbo off the dtbo partition. So yes, in technicality this is
> > not an android specific issue. I mention android because having a dtbo
> > is generally expected in the aosp setup. In my specific use case, I
> > have four devices from the same odm, where it's simple to split the
> > common part into a dts, then the device specific parts into dtso's,
> > allowing for a single software build to support all four devices.
> > Requiring everything to be baked into a dts would require separate
> > vendor_boot images per device, and thus completely separate build
> > targets.
>
> Your use of overlays is very reasonable.
>
> It is an Android-specific issue, because you store and apply those
> overlays using the Android bootloader and its way of doing things.
>
> If you run e.g. Debian on your 8550 you could still use overlays to
> solve your problem, but you wouldn't want abl and/or vendor_boot.
>
> >
> > > Fixing ABL to be resilient against such failure cases certainly seems
> > > like the right thing to do. But I'm guessing that you're on some devi=
ce
> > > where you can't change the ABL?
> >
> > My devices are unfused, and thus I could change ABL. Two problems,
> > however. 1) we can't find the necessary changes to make to fix the
> > problem. And 2) this problem is more universal. Per [0], this affects
> > 8550 and 8750 using the qcom baseline abl. By extrapolation, all odm
> > copies will also have this problem. This has also been observed on a
> > sm7635 phone. It appears to affect all baseline abl copies since at
> > least sm8550.
>
> It's fair to assume that there's leverage between the different
> platforms, there shouldn't be much hardware-specifics in ABL.
>
> >
> > > If that is the case, then I'm open to a pragmatic solution where you =
add
> > > such workarounds to the specific dts that needs it, with clear
> > > documentation of the circumstances.
> >
> > > PS. Not all SM8550 runs Android, not all SM8550 has that specific
> > > version of ABL, so therefor the change does not belong in sm8550.dtsi=
.
> >
> > Ideally would be getting this fixed in the baseline abl code by qcom,
> > since this issue seems to be continuing.
>
> Sounds like it, but I don't know what it is that ABL is expecting to be
> able to insert. [0] seems to mostly say "I added this and then it works"
> :(
>
> > That's not something I can affect, however.
>
> I can ask the team to read this thread...

Thank you.

> > But I disagree about making this device specific,
> > because the vast majority of devices are affected by this, it would be
> > the exception to not be affected, from what I can tell. And on more
> > soc's than sm8550, but qcs8550 is the only qcom soc I am currently
> > working on.
>
> I understand your argument, but I don't want top-level quirks for things
> that is device-specific.

Very well. When I put together a submission for these devices, I will
add a device specific patch for this then. This series can be marked
as rejected or however that works.

Aaron

