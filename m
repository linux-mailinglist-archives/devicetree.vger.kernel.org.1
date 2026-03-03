Return-Path: <devicetree+bounces-270778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHAxDkNUp2lsgwAAu9opvQ
	(envelope-from <devicetree+bounces-270778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 22:36:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EB81F79C4
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 22:36:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3699A306FE33
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 21:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FAA237B032;
	Tue,  3 Mar 2026 21:34:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532901E7C12
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 21:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772573680; cv=none; b=THmOb3r4Jhvid5Orrwa+Vx6tpq6yghpTklJd++UAgamWuNpZLEXpvHiTOWjVCKvGlj3Muv15zqhfr01XuTIbVjzCG+AY0Wh4LHIdoYQVXCnpoV79RX5pA83IMp5ele2Rprg8BEZCDl9R3dZDx9QLJk1CZp9tCvqX0Ib+lkfdrz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772573680; c=relaxed/simple;
	bh=bS62DcYgSirJyMh35Z8yb9HMX6bQpZhbJKo9yiw9Yzo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JM2X4/eHzxSwGb5AzV2tTPqsiWDoo/mRRdIzGTMKaWRPKhtFs/dIQuJfIskyAdA1oblO17khKZ495zkZl749i6Nz8Yt0w8KxYguR3CVbx7Xv8jHIA3Ylz+4ElQxdwGtbv6sW2h4f2mh0CKzuQU+OgGJiLceyxh0TiWjOqdKU5Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56a981f44c9so2731294e0c.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:34:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772573678; x=1773178478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KeyOHxlHCpyTOk6+yaQldBTlhnYnaDxjHKFxz0vCsko=;
        b=Kqi5P+ccAV3Lkp2MGzhrRe7edmgDfMcZqg1TaKnQQCdv9jbJAiLUa8F3VEHL8575iu
         spvbV66qoPULooCOQJD4zrf6NpHKy491gwDzDYdF8oYJynAJ9hz7c+y++n38cH4QRvay
         9kEflvjj1eBxn+XfpM46XZLLjuV2j6ueUdl8vo93Ou7+glZXSlnb7ekMMEMXHhhGWL7q
         atW7UFaxckRHJiBCHEmKwcfycgpseTDmo6FnUugCpQ+/BrpUk4yoXBA5/iip5PzySuXK
         MR8beyqxmZK75SbbVII2KloqVxf+EK2liiOTvbI46sOsD3zt1t4NQEZXBYZ4fXA04EX6
         JPVw==
X-Forwarded-Encrypted: i=1; AJvYcCWYs/zlNLiMPaJKoUJdM05TwESr1oIatzI58ozQV+G/TmXIqwdKg9qf2i6yYom+Gza+rpoCqKNFEKNu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr4LkuNRXjlWLTLM/ec87MFPkRbXb5vA7TgYKBASKonATOgkm7
	7WC5fEtWDRvQSGdFamXOGh7pFnveHR848LrH7x2XlGba9WWPvhOKywgwWuhMUpss
X-Gm-Gg: ATEYQzwoTEJ7YDlhl3nKYdxzSWv7iMqI5b7WrdMKen2PU9vQqv0GYH4U1PBu6OAD+4r
	APJ683saMdaFLz8UeBQAU9I1Pat2Nz6mji3ksdHlL/0fCnWaf2rCt5Z+dawEwtymxiXU4fYed0h
	QkU1vrjSGL3cXgWYKRAY5Om5eN5X51avMSoPrFFdR80LlCkyA4dybKUp+RB26fJKCGlVQBtGm3/
	g2DF7hcbS1uIzsb78TvA9opOqLoSQeMhQ0GBNIkeMmDd7UmY1VuupLlOj8X4EH6EZ/wvDvzpmi/
	vyWFWLpuLU2hpX3qFbNjwgTg10XRk0Oh7LWna8Ph9bc0CHcTfKcQ2IrIlhoOhFEgXmwkqV+WK7/
	3HJ69yTLNlEZBSwzQy8DTu144nYil0pPcSH3qOWevBeRZrzJHxSS+WtC2JUpzPqpcunITdXX41H
	ewM+Z8fFFTmTGQYce5Okkkf6DAx0VOg+4ys9UhzY0lLR4/+m7iXzv4zRCm/5DBmWORTIrHV9+Uk
	e0=
X-Received: by 2002:a05:6122:8c1c:b0:566:21af:5d78 with SMTP id 71dfb90a1353d-56aa0aadf97mr7015731e0c.10.1772573678288;
        Tue, 03 Mar 2026 13:34:38 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df6437c19sm16258567241.6.2026.03.03.13.34.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 13:34:37 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56a981f44c9so2731284e0c.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:34:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnSD/rYfSyzcrKe2o9RrKTsbwDTt/8qHfDZz2uMLkq9jN5THiuk8Vtt2tN3EAWd5+vFNIhm2EKtZ08@vger.kernel.org
X-Received: by 2002:a67:fb87:0:b0:5ff:a16b:9403 with SMTP id
 ada2fe7eead31-5ffa16b966cmr493900137.2.1772573677268; Tue, 03 Mar 2026
 13:34:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-mpc83xx-dtb-v1-1-592d27492019@posteo.net>
In-Reply-To: <20260303-mpc83xx-dtb-v1-1-592d27492019@posteo.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 22:34:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXZYuDn5RRFFUp7kXFDn_fMZuqHbXmSJie4ofEv8NxXfw@mail.gmail.com>
X-Gm-Features: AaiRm50LfNGqwLPwMhPV4lBP43hdFBFszhhM8HNs-2mio-oWff62BhKycGhdbWU
Message-ID: <CAMuHMdXZYuDn5RRFFUp7kXFDn_fMZuqHbXmSJie4ofEv8NxXfw@mail.gmail.com>
Subject: Re: [PATCH RESEND] powerpc: dts: Build devicetrees of enabled platforms
To: j.ne@posteo.net
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, devicetree@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 91EB81F79C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.ibm.com,ellerman.id.au,gmail.com,vger.kernel.org,lists.ozlabs.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-270778-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.953];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,posteo.net:email]
X-Rspamd-Action: no action

Hi J,

On Tue, 3 Mar 2026 at 16:56, J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:
> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> Follow the same approach as other architectures such as Arm or RISC-V,
> and build devicetrees based on platforms selected in Kconfig. This makes
> it unnecessary to use CONFIG_OF_ALL_DTBS on PowerPC in order to build
> DTB files.
>
> This makes it easier to use other build and test infrastructure such as
> `make dtbs_check`, and is a first step towards generating FIT images
> that include all the relevant DTBs with `make image.fit`.
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

Thanks for your patch!

> --- a/arch/powerpc/boot/dts/Makefile
> +++ b/arch/powerpc/boot/dts/Makefile
> @@ -3,3 +3,158 @@
>  subdir-y +=3D fsl
>
>  dtb-$(CONFIG_OF_ALL_DTBS) :=3D $(patsubst $(src)/%.dts,%.dtb, $(wildcard=
 $(src)/*.dts))
> +
> +# PPC44x platforms
> +dtb-$(CONFIG_PPC44x_SIMPLE) +=3D \
> +       arches.dtb \
> +       bamboo.dtb \
> +       bluestone.dtb \
> +       glacier.dtb \
> +       eiger.dtb \
> +       katmai.dtb \
> +       rainier.dtb \
> +       redwood.dtb \
> +       sequoia.dtb \
> +       taishan.dtb \
> +       yosemite.dtb \
> +       icon.dtb
> +dtb-$(CONFIG_EBONY) +=3D \
> +       ebony.dtb

This fits on a single line (many more below)

[...]

> +# MPC5200 platforms
> +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) +=3D \
> +       a3m071.dtb \
> +       a4m072.dtb \
> +       charon.dtb \
> +       cm5200.dtb \
> +       digsy_mtc.dtb \
> +       motionpro.dtb \
> +       mucmc52.dtb \
> +       o2d.dtb \
> +       o2d300.dtb \
> +       o2dnt2.dtb \
> +       o2i.dtb \
> +       o2mnt.dtb \
> +       o3dnt.dtb \
> +       pcm030.dtb \
> +       pcm032.dtb \
> +       tqm5200.dtb \
> +       uc101.dtb

Even when it wouldn't fit on a single line, having separate

    dtb-$(CONFIG_FOO) +=3D bar1.dtb
    dtb-$(CONFIG_FOO) +=3D bar2.dtb

lines not only makes it a little bit shorter, but avoids the churn of
adding a backslash to the previous line when adding new entries.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

