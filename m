Return-Path: <devicetree+bounces-270557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPtGGP3upmlKaQAAu9opvQ
	(envelope-from <devicetree+bounces-270557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:23:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F441F1649
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 05BD330630F8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29EDD3C197C;
	Tue,  3 Mar 2026 14:20:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B3231F9B8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547639; cv=none; b=HrddoiPvZEQoieL1vDmGDqnvv0gMUpF3VUbqX9BgmT2iDXnRMkN3hJrmZtqQA4C0z5Pmv+VsC62kH8VoFBVWPccVADFhnazcHpIep0qZTmAKclv6a2+P0gSREdNlCe8qA5IXb5QzzThu8qtLj2ZBFbNZxW0Q2TgraQPeLOXsV0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547639; c=relaxed/simple;
	bh=wtZfk5pgxHXPCwGOwabIDD/nd1aHppTS+y5luRZOARQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q7amwgQRxDr9cbdnIHcuOoeG9c7/g8/SvEtNsKTq5XA9h5F0kDD3p9BAPUwHTvrKdbKEAtftb+l7uwvbzdj/X2LOntxosxr89IQpRHez30N0YKV9OpVI74NsAa2Abz7iZmjJ8xCYAugORtKY74fYWkub5WXNprUOQCxBqL7pxO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5ff14dd9bf8so1512246137.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:20:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772547636; x=1773152436;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JzpuaoWo4tTBT1JIh9AqPNnIh72mJI2cM1ZUvKYy0Dk=;
        b=LAwOfm7J3N8mEVLRPetCXNwtC7IHzXsui+bQmU/VH2Co0p4/JQmXmyXj1dVuq6O0Yg
         PBT+zQH0pvW4YuStUL5TrnQhqdR8RMl6ppleAcRHjnhbxEYbR1VmaZ9a76ppdwoVJtYS
         zgxHs+PgYzJ+GHkCkX+3MVQPGpns7TsaXTe4v5eBfVGnE69kCrQttI1aUV8Edm5AcS63
         9xDYMZuidu3wS02MA+kTMREjQTwuC9puvcwH5HSVzaWWOw/wYVoS/JnNw1NAgGa7tF7R
         AIRLsms7rsn0bSCrCppYf3NwqBtVMAqngRn+y70llHTquBOYoF3QJl45LaTUA5RyO/9r
         t9iQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlpA+hV4W0220i2PtCMZWPv2zFdpIAHvVl59xAmaRBnMNjDd7kHoIDivHOJlgylrY+2Z+iWzwXZxhq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3V01EXaqYEYzGf0D2aELB4pI29efhT/E9dTPqOh/1cPJw14UA
	rkNaoZbmRc2rvUn+FwIbqJarDzCmKkHwPGmQDyR5dY/HR4BVSbVwcafeSqa0FArI
X-Gm-Gg: ATEYQzweHVvvKaYpKRbW//hExF+CvsEW96YcGwpheXd/CToN/JNfLTczYvev9RiB3oL
	PAotvTdzZwK0iULp3jNTx5BT4CLPnSrANv7DQgP7kywOGogDLzuRwjn5m1a2dA/TcQFcVvaKJ/5
	spXEBoSf8EKYicf9ihWv2GK0pjFwyR8TxMoIiCHbHOMQ/f+Mq7BP6YiIrOvu2SNOnotETxKZ6uy
	UwhOJLQ0c2xXYD9u6+SZafCX+mk7lJBUx7GXZQfl2r6sMMIyz0Fd0NJI5y2epxuLGzjG/JwFl6I
	HSGKgFq/EWRgLIJxULi84IRQQiUPQxV5t1uIi/iW9nX0V6JiDjnhCRFL/5sL3PC7w6bye97LmX+
	IVbHCplrGYG8YhQtqn+1pRNWnoDs5VQf8j+CxM91aCzkHtYdDItmPFNMT28FyRBkAL70Ojkbipi
	gelAdVZ85FQ7P7z5pzcDpJ/JKnBfr9+H/y9FiZI2rxwbAcSKC7SjYK5Hicyn6Z
X-Received: by 2002:a05:6102:1611:b0:5ee:a0de:65ea with SMTP id ada2fe7eead31-5ff325c1839mr6115952137.38.1772547636306;
        Tue, 03 Mar 2026 06:20:36 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7afde2sm16795386137.1.2026.03.03.06.20.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 06:20:35 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ff05af29b4so1978652137.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:20:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV97ClM6+QQrAiDzYhn6Exj61UvG0sGl2x92jrEhKFPSvWWTSL+rr1NeQCkCkePyCrvumvAJ5eQWk2v@vger.kernel.org
X-Received: by 2002:a05:6102:d8f:b0:5fd:ee19:8b30 with SMTP id
 ada2fe7eead31-5ff3258ba0cmr5792258137.35.1772547635180; Tue, 03 Mar 2026
 06:20:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302135703.162601-1-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20260302135703.162601-1-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 15:20:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWsTqVEc3DFvgSZxTvF_F+Us5-RtKa88TYN1S_fGjdEHQ@mail.gmail.com>
X-Gm-Features: AaiRm53qSSjkvTClA8LrrJ8BcCzq-ceTd4NKfpQmi95ie9fBdePR4ZDrlLHB6KU
Message-ID: <CAMuHMdWsTqVEc3DFvgSZxTvF_F+Us5-RtKa88TYN1S_fGjdEHQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzg3s-smarc-som: Set bypass for
 Versa3 PLL2
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, biju.das.jz@bp.renesas.com, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: F3F441F1649
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-270557-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.172];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Mon, 2 Mar 2026 at 14:57, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The default settings for the Versa3 device on the Renesas RZ/G3S SMARC
> SoM board have PLL2 disabled. PLL2 was later enabled together with audio
> support, as it is required to support both 44.1 kHz and 48 kHz audio.
>
> With PLL2 enabled, it was observed that Linux occasionally either hangs
> during boot (the last log message being related to the I2C probe) or
> randomly crashes. This was mainly reproducible on cold boots. During
> debugging, it was also noticed that the Unicode replacement character (=
=EF=BF=BD)
> sometimes appears on the serial console. Further investigation traced thi=
s
> to the configuration applied through the Versa3 register at offset 0x1c,
> which controls PLL enablement.
>
> The appearance of the Unicode replacement character suggested an issue
> with the SoC reference clock. The RZ/G3S reference clock is provided by
> the Versa3 clock generator (REF output).
>
> After checking with the Renesas Versa3 hardware team, it was found that
> this is related to the PLL2 lock bit being set through the
> renesas,settings DT property.
>
> The PLL lock bit must be set to avoid unstable clock output from the PLL.
> However, due to the Versa3 hardware design, when a PLL lock bit is set,
> all outputs (including the REF clock) are temporarily disabled until the
> configured PLLs become stable.
>
> As an alternative, the bypass bit can be used. This does not interrupt th=
e
> PLL2 output or any other Versa3 outputs, but it may result in temporary
> instability on PLL2 output while the configuration is applied. Since PLL2
> feeds only the audio path and audio is not used during early boot, this i=
s
> acceptable and does not affect system boot.
>
> Drop the PLL2 lock bit and set the bypass bit instead.
>
> This has been tested with more than 1000 cold boots.
>
> Fixes: a94253232b04 ("arm64: dts: renesas: rzg3s-smarc-som: Add versa3 cl=
ock generator node")
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-fixes for v7.0.

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

