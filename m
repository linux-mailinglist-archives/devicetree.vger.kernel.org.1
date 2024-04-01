Return-Path: <devicetree+bounces-55208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C078947AB
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 01:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B94B1C21CA6
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A2056B8B;
	Mon,  1 Apr 2024 23:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="KY6eRwOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB0955E72
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 23:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712013931; cv=none; b=ignccfLnlANbqYv4nlm5lIUoxAeiuBIn9xounhdLEx3jw7lEGUA392ET1bHS6qRfHtHs4hzSVuSItYcy2lHBF0UaObxPP8o8CCWSWgWuA03oLQThtbFYlOTlRcvL3wOH5wQlhtBYdTnpOl2aR8crt2e2TLrLwpviC5j8sNtv3HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712013931; c=relaxed/simple;
	bh=7O6ujO5rc0L0/KR/mKMdDyxpsqTMox7YCAlN6/iMYXE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ptt2ehb5dP5KCCQ45PBLKjUHq1nMhv6Xp8pelsHT3T3uz+couwuGrEruFjRahqR/zElN3ufA3H0G3eHe7fizgGDsTSEJpzBA7TIoiZA427hYKZcqpDs7LeD442EWybYrAym/rpJSeLSNsZTbekv3sv14zUpNvJ6myhj1XwqwPUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=KY6eRwOS; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-432d55b0fa9so674311cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 16:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712013928; x=1712618728; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBFnvPatyDI2+u+ojuWnolOosfbwXQU3OHbOSZ7OXrI=;
        b=KY6eRwOS14eHK97iE2iXuQOKSL0N9OGC4+SfBT8VsYoaGZ2Jj8XZjmEmp23StOk7B+
         2hhN28j6uWwmekxqlyqoYehc5EJwkHPMMm8+xBjyWPVIYVphvvMiZUF84mpDEvOYFcLA
         JFLdirO+zoJDgPAv9KTg/zhsLzklKjX/BLMc142PXtQQPgb1l52ugOcvLyWpeE+jeFom
         UgQWRSawKDn7O750Gzetqu2wIr5VTEUT59wvS8gcrQSxuAIdMNqIJyhkoBVokrCo9kzE
         hJzHpFj5vJ4Y1q4JMa6wHkdBHXilN7xwGqOWU7dh9QG1vLLHJLhgQaSWcninbBu6EeqU
         ucmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712013928; x=1712618728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RBFnvPatyDI2+u+ojuWnolOosfbwXQU3OHbOSZ7OXrI=;
        b=j/wlkgBBPuIAHhdPcLIL+xtdz1XNfrMK9swvFEpEE/g4+TvymLTHvwgUPqb0HkLEHZ
         naBLDUN7CYyZNj/+cLS//GSsG2Jj1E0aEvTaonf7ia3AyfKyxP2WfPULjKOq7yNF02f9
         mB2/+dsyPlzpwsoxXaH8AV32aBUxZDq/ASxUq4piWLu9l7gGiZsWrXWHdLGJ3bLvP4DR
         qPzl/Gt+g/78CCIp6judw9J4aLWJKLwVblqcCOad/cDmrqOrnr4W+5/BgjCjhC4arXIO
         vTnEeDgBW6T6O3Z/feMCGt4An8NcuJH/kjeim9feaZvnIacJv/JF8oz0LxIk0EJ3kUUM
         9rnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZHNdpQYDXghU4wskFLyMIrH6IdwD1P+OZcYU2b2R/+bDkyK2qAW1Kcfj9oxlOqGuO5eKZf+5ph9kegmkWLbHvCSgvYfrLW+WKbA==
X-Gm-Message-State: AOJu0YyEGIGhABJT/hEU+JeVOFMnduPzGwnvUuKU1hKJL8G9ThltGqQd
	OnWu12zlNsrXCiXY1S719qrnMn+lQeBchnZRT0+IgJcRrKKyo7HIus2t4ztMfdU7SKNVxjk+9LK
	Tr5LKY767BzsW7TPv1gQdzKI53ncWRNU+2yqc
X-Google-Smtp-Source: AGHT+IFcZ8LGPNpxD+CyijkSEakaabqejnuTmSNnd7xvNofgmBOU9Q+hLp0gjmEcQ9dp7UWhkk+oSQSje588a0Wc16k=
X-Received: by 2002:ac8:7fc2:0:b0:432:fea5:e3b4 with SMTP id
 b2-20020ac87fc2000000b00432fea5e3b4mr179052qtk.3.1712013928247; Mon, 01 Apr
 2024 16:25:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
 <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
In-Reply-To: <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 1 Apr 2024 16:24:51 -0700
Message-ID: <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
To: Dragan Simic <dsimic@manjaro.org>
Cc: Pratham Patel <prathampatel@thefossguy.com>, sebastian.reichel@collabora.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	regressions@lists.linux.dev, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 23, 2024 at 10:10=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> =
wrote:
>
> Hello Pratham,
>
> On 2024-03-23 18:02, Pratham Patel wrote:
> > Since the introduction of the `of: property: fw_devlink: Fix stupid
> > bug in remote-endpoint parsing` patch, an issue with the device-tree
> > of the Rock 5 Model B has been detected. All the stable kernels (6.7.y
> > and 6.8.y) work on the Orange Pi 5, which has the Rockchip RK3588S SoC
> > (same as the RK3588, but less I/O basically). So, being an owner of
> > only two SBCs which use the RK3588* SoC, it appears that the Rock 5
> > Model B's DT is incorrect.
> >
> > I looked at the patch and tried several things, neither resulted in
> > anything that would point me to the core issue. Then I tried this:
>
> Could you, please, clarify a bit what's the actual issue you're
> experiencing on your Rock 5B?

Pratham, can you reply to this please? I don't really understand what
your issue is for me to be able to help.

Also, can you give the output of <debugfs>/devices_deferred for the
good vs bad case?

Thanks,
Saravana

>
> > ```
> > $ grep -C 3 remote-endpoint
> > arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >
> >                 port {
> >                         es8316_p0_0: endpoint {
> >                                 remote-endpoint =3D <&i2s0_8ch_p0_0>;
> >                         };
> >                 };
> >         };
> > --
> >                 i2s0_8ch_p0_0: endpoint {
> >                         dai-format =3D "i2s";
> >                         mclk-fs =3D <256>;
> >                         remote-endpoint =3D <&es8316_p0_0>;
> >                 };
> >         };
> > };
> > ```
> >
> > So, from a cursory look, the issue seems to be related to either the
> > DT node for the audio codec or related to the es8316's binding itself.
> > Though I doubt that the later is the issue because if that were the
> > issue, _someone_ with a Pine64 Pinebook Pro would've raised alarms. So
> > far, this seems to be related to the `rk3588-rock-5b.dts` and possibly
> > with the `rk3588s-rock-5a.dts` too.
> >
> > I would **love** to help but I'm afraid I device-trees are not
> > something that I am at-all familiar with. That said, I am open to
> > methods of debugging this issue to provide a fix myself.
> >
> > I would have replied to the patch's link but unfortunately, I haven't
> > yet setup neomutt and my email provider's web UI doesn't have a
> > [straightforward] way to reply using the 'In-Reply-To' header, hence a
> > new thread. Apologies for the inconvenience caused.
> >
> >   -- Pratham Patel
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

