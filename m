Return-Path: <devicetree+bounces-241206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F0137C7AD9F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2F9874E3699
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E76C2773C1;
	Fri, 21 Nov 2025 16:30:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0819BA59
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763742639; cv=none; b=OpKo4g6KtGg0C/C0bvWXjOrYL7AxK6RMwEveqTADO4RQ8uwzSfJ4Se+BWQx4QOGdpaTwDzmy42Hcr8bDcP1M8EXq1PP7fENgvu204213JJj+K0E+hY83Xgmsp03CXm/XdwufGBwlpks+kjfBkYv/rYkBxVw5wZtcJK+iQTnonb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763742639; c=relaxed/simple;
	bh=miUYp13Tg68gtXfjxpodBeV3EU7nr6kyS9YRTomit/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pG2iB3PAvX3u4s3w5lVhyBLTWzjLk5SsxFLRd1OOXOSU4u+RPFzEhE+dB9+npefxsenCsjc9jA7QY6zJhp09iXTsk8/Y4/ixLMyXjxTAdWUr6wfpFxdqSoYWXAF6nQ/8obIsSkeBbYu0w7vsa+dWO8L29AD0ChAZwlbp08uYc8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dfd4a02638so763044137.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:30:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763742637; x=1764347437;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zfme4CfywnSRg8zjFjN1q1faWbrMVER83csGlPhpKYs=;
        b=SL++y3AxPCVDzqzXpMFkDLByjVAnkoPkKE34sgLw7gc4LvP68SoZ1GX0WAv85VZ6I7
         5eEtEAsKmgsZrMqA8AeZSRmZxSI7UT4Wpowv3Pbitoo6R6xIYg70pYY8Nloqnx33nx0C
         dvFioBfJ+eyuOOPT8VrJA3NPxQ11AxsUd3pkPa3En+/UjBzHNpv/4y58rb0wbMln0Ldo
         cHqzJth40ejhS1ZtqxN+sVKbRNUtOcfforz/LXPed1UMIk1H5qGfv1cpTcqvlNzRorLQ
         lWpF+lf0J2vEo6Jxscp1FEvQ0rsqxVq0EoInnHkYfteX76U3JOVLqC4yDQj86fM5iGkg
         6keQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDNzCI72aqXWYfn78x29r6CeRfzhVEA9GDh2Kxw+zm5hmrdY1hmkpk8yo5Z/P7T7Atd45HShDKldjt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5e2ONHCiZKJqd//BBxsA2YAZQDVL7nQAuooAF/VUHYPb7K6HB
	QZoKvopoL3oj7LZydAL/qXtVZK4rN1WSnG9LjJtjFnyu6QeQeCyIEwtrReNny8U1
X-Gm-Gg: ASbGncuKLwXm0BrIONmaEiuiw1w3Gzp1Ml/N9AgR9x86gPerFsyGjiV9A16BEtWl8oj
	0xVN2ayHZ4FzSo+9tZtM2OwqDS6P7Lby4Wly5o6rQaNcdpv6tNE/kmOX4HtU6aOeSmpu0Fl89Z9
	id7VtiOG1AmRtYVPN8vmYmuPTZNQalNpEPyW5h/GgoMaSeF2y+srCpLpsp8bCC99rSvTYB+1rzx
	awKxQ0kQgR0VIM6QJKFIthRxsIwWRAdo55h/hStmHHb2d4XRNk4Mobif44A3C1mFzpzwhrcW/T+
	YYn44xfIiwWqkQ7ZoQC0apRNcN2Gh2O02RYwPxeRpqG/Intb50iMkzk1VHACnvXKH1oKcjAbhMX
	3scNZE7uGleO8md73VjV7mU899jAso5LFCJ/bNIOcU9MX/wijR9L5042x117bsWO50g2xrTb/1F
	+4uN4IgiF0PCrWlbovOMv4GCq7ZKMvj07gqsyYbODDtiNWOWhV
X-Google-Smtp-Source: AGHT+IEN4MgtDFXCaci2BAnyclB2JltEf05bdBoKBfIDzWed7DujI7dnf7RI0UC6ar4aAtoUuJt1DQ==
X-Received: by 2002:a05:6102:161f:b0:5de:93bb:c531 with SMTP id ada2fe7eead31-5e1de43fabdmr1046185137.34.1763742636896;
        Fri, 21 Nov 2025 08:30:36 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e1bdd27f22sm2323012137.9.2025.11.21.08.30.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 08:30:30 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dd6fbe5091so947912137.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:30:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUSmS6wIJZcfHBjOQKIgj3OomeNSuYd9CN3L2AutZAEibtcobQoTT53OpeopSqNV60b4Ae+6lLiFIgn@vger.kernel.org
X-Received: by 2002:a05:6102:9d9:b0:5db:3b75:a2aa with SMTP id
 ada2fe7eead31-5e1de1a0867mr893336137.18.1763742629852; Fri, 21 Nov 2025
 08:30:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-11-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-11-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 17:30:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWaJ4Ou01FuKdXMd4WXNMSu4FeF3U7ykpmy4mN8GWcpCA@mail.gmail.com>
X-Gm-Features: AWmQ_bkY8NTotInu8fmLPPbpJHXT1kn4NeHzwLSDXbeLRL28njFMQmX7rlOiRTM
Message-ID: <CAMuHMdWaJ4Ou01FuKdXMd4WXNMSu4FeF3U7ykpmy4mN8GWcpCA@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] serial: sh-sci: Make sci_scbrr_calc() public
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Make the function sci_scbrr_calc() public for code reuse to support RZ/G3E
> RSCI IP.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

