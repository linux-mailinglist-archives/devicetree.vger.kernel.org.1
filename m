Return-Path: <devicetree+bounces-152214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6535A48541
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88BAA1892E31
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36011B85E4;
	Thu, 27 Feb 2025 16:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b="WPCGCACC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA531B0421
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 16:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740673887; cv=none; b=lr12TidAsDgyVFZT4AsnFyWYCGs0au2cxv9sza4D3G+925j+4Xs81NU6wn7+vFtWSqngev8G/8bZhaZZpNOwX8heiym//K1PjohfbMsVviReHUjVPmX3l5wt4a+wRrem9z9d4rvdH95YN7yhq7yZPee5QaK4U/N4kTd7ywc9KsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740673887; c=relaxed/simple;
	bh=1nsRb1XE68pAoDOedgqpujvZ5YurZyAb7Ed9b/zZEqs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VZXXwgeP2hw8nscslj3ADdWBkLBuVRJtyC3Hq71giZ1MimvC5K7qYDPq+/Fn3pGfzyBYaK8+CmPp574jrOpAtoNzef99MUpXn9Kzs67USkp6rxDDYfnxWUGs6WSs902PQfSzsxffAkd9B4G8bntZvUXXSznKrrxVsHLXcpHtAjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net; spf=none smtp.mailfrom=minyard.net; dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b=WPCGCACC; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=minyard.net
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5439a6179a7so1348803e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1740673884; x=1741278684; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GeYTXENMr3flP3ciwo2GiPqCMR91G8nXsrWmZtyddE=;
        b=WPCGCACCTAkoQB8BQ4PvbLddE0fMiPEQr4SjVJU1SRxhxISQJK1zBOkYXMbXqCVxui
         aduIJvVsu3k3HW/g0q1Va3bpxCn35qKl5gsiJPC9x1lL2CGQvKt3qU+YCtwpDKzzhyxN
         Q4uoMSBlV5aSI5keieTXoLhHLX7xHpuNM/2s5GLD9+3jW1hCNOHoUkWZdlOAEiJ5vkiD
         lKWfcb0Xsr1fpanECEoA2fvnQcfUtdyiTyeKCZs/+x9vgcRBe4BIBVyVjRt6X0kRnoRJ
         O3a07KDX8S+Cr8/KClx4TF8X8NLzSQtmA95BrcbM95ymY6aNiye73Gi0vGvEejZCR+WX
         cRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740673884; x=1741278684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9GeYTXENMr3flP3ciwo2GiPqCMR91G8nXsrWmZtyddE=;
        b=wGmNACba8m5pMfZ4641zcQTvHF8ZEaNe0yHu/yASH15J/hGD//fc2fzHhsmWdAvfcb
         pZrQ6SaHk4vchkp5qDQPIAv0YS+4ZAFpGYvtfCxz0/cQSu5LD2h2WfYVAv12Ic4J8DiB
         m6O53IZQ83I+yn1naLCGAgAZtr+sko1NZ/LbgubXUv0VR3GqIwODidD+qLOnISqUdVj1
         dk6ctcHDUAGK9kuTp6gSoKOgUS5bEqbpv+yEb8+TNrc61sp1i0tsJXCaO4+aQhmKPUfc
         Bw8hlEv9VD+W7KA2fy+7M+B5yM4KoBBznvZMLtxw3I/ErNtJ6xD7apUVj3t7T3OoxlgP
         vVng==
X-Forwarded-Encrypted: i=1; AJvYcCVW6KhckOcLsg+wlZvmMDXso7Wt6ixnHn9Gv9j29V7srUdkTgEsuP/StppIJx3e7e3AzIiiOENQJmD3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6UCyWRS5FishBR4Q+PftBTOPtZSoIn3T5yN1mVSjyqidQ5evU
	/utsPxdLLUcOtzznHwvUwG6zACYSyCASvCk4Mq/ri6rdHrj1ItJrWQXZm3/Y9cKrgkZKT414OfM
	xGTXjZqGIYbTB8xrRTgxkGSVSOPHtQ+1lr94G5w==
X-Gm-Gg: ASbGncua4dXrx6cZpgiXUslvpvhfA8Y+duraGTqU1OfRhsFx0yD+ADY2vrFTGdkHr9f
	70fXpA9VDkqnn9zv7n9ukOIjNsAJdjLqUwD0PtPX8MJ+W0c3UVMSgrwdeFxNB/dFhQZR9Jnj7Ga
	Mj5BoXChge43Vp2+M5lGvvPXUswnV/b7tXl+x3ig==
X-Google-Smtp-Source: AGHT+IEUbAC3kjl5eNNXKnBI/MMkmVbVJWoGnJKM7ezHnOTqe5P7XXqY0IVO/n+TvmfZpG/9CNbmwSisZkbfQ+rFnfw=
X-Received: by 2002:a05:6512:281d:b0:545:d54:2ebf with SMTP id
 2adb3069b0e04-5494c107e76mr52906e87.3.1740673883880; Thu, 27 Feb 2025
 08:31:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250204194115.3899174-1-ninad@linux.ibm.com> <20250204194115.3899174-2-ninad@linux.ibm.com>
 <fd92f75620e48957c2875cdcfd1285c33d3176e6.camel@codeconstruct.com.au>
In-Reply-To: <fd92f75620e48957c2875cdcfd1285c33d3176e6.camel@codeconstruct.com.au>
From: Corey Minyard <corey@minyard.net>
Date: Thu, 27 Feb 2025 10:31:12 -0600
X-Gm-Features: AQ5f1JrxG1t1lSqYDcbZpYZ-TVphariQNf3aM6dUFwiyKs1tLOEBbUdBR-9V5Rs
Message-ID: <CAB9gMfqkRZY3y5V+WDyxvyrdzWNWu2gjmyEnj8mygo85hjX8sw@mail.gmail.com>
Subject: Re: [PATCH v9 1/9] dt-bindings: ipmi: Add binding for IPMB device
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Ninad Palsule <ninad@linux.ibm.com>, minyard@acm.org, andrew@lunn.ch, brgl@bgdev.pl, 
	linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, openipmi-developer@lists.sourceforge.net, joel@jms.id.au, 
	devicetree@vger.kernel.org, eajames@linux.ibm.com, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oops.

Go ahead and take it through the BMC tree.

Acked-by: Corey Minyard <corey@minyard.net>

On Tue, Feb 4, 2025 at 6:01=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Corey,
>
> On Tue, 2025-02-04 at 13:41 -0600, Ninad Palsule wrote:
> > Add device tree binding document for the IPMB device interface.
> > This device is already in use in both driver and .dts files.
> >
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> > ---
> >  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 56
> > +++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-
> > dev.yaml
>
> Would you like to take this through the IPMI tree? Otherwise I'm happy
> to take it through the BMC tree with your ack.
>
> Andrew
>

