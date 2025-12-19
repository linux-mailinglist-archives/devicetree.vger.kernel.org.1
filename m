Return-Path: <devicetree+bounces-248121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE84CCF008
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5ED0E300EACE
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02E0C248F54;
	Fri, 19 Dec 2025 08:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bHzfNqWP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9AA1EFF8D
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766133554; cv=none; b=PExm4gfS80rrmn11tg4t1mZ4z57FleEqOD1kgSTLoaenc2vVXvr4JjGq1iAWh+ymLRfeHj00248rDDFRcOY4WYqkbRpWytN9HKbAtOC6r+RxGZYAxECoXXSz71LhTGgvuyjGBq1meuGA2X/EY974x+HXZ4nHcPKfKJXtlOSfgqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766133554; c=relaxed/simple;
	bh=XHPtjrQR6BGiqK2vk4UpNJZFJRTk/Dln70vYvB9yRis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PiQCipuB0nGHVzqvkoJrLCsE7FL5UXVt2R3BPXFbYEBiwVjne+HW7jT8qpSSjgBNQiTw/yjEcmUSboIT0FubAuj5I6VLsZOEPBCoHL8pLzvLuVMxmHSwBndVeUS1gccy0GA1E1/Fvr05xSlYQpzxfjtS8YFVpLAP7i3x9ugUGas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bHzfNqWP; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7ade456b6abso1318920b3a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766133553; x=1766738353; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XHPtjrQR6BGiqK2vk4UpNJZFJRTk/Dln70vYvB9yRis=;
        b=bHzfNqWPcFUJBNy4s75YUwi/FgXLYV5eqxE6miBxOYYesLQpUsQT3qUZ82z2ilBV4T
         GLF6CsvCe1SfimYjxoXpjvS91WQyO07U7JmM2YSeWDvasOfGPKUutn1F/C7WpOy2ff7z
         28tcVDgieSmtdOLDF3h8LDGLDeO7EqJx8R8OKCLSi+iPglsTDNXH6gLFQ5b0Nx7Oc2s1
         bazgjtXtNWtJS/MnuA4A26njTSk0xdGMXRNZiD5LxT3RuOw+i+F6zKbsXMbO0TmYatAj
         UHnoHQWrO/JSRbVBOdSOfh4VzrOdlGVEA5EvjD0V8HQ8Hn8CfRa+vv89XyWArjXMOikt
         WtIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766133553; x=1766738353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XHPtjrQR6BGiqK2vk4UpNJZFJRTk/Dln70vYvB9yRis=;
        b=CfL5zFp7pLF1JvPrKLEJXgInQ07P4V5aNf4T+tRPlx0q10ErRYTH8HXmlnMUaT64Gb
         6jwjfHXQmFbvGGHiRUN9jXYeudJIM6TNSBidXwyC9giJiI9TFPORqTLJD9v/KbuAWEne
         ILwZinHC5bBnNwSTmglqorJfUMk8qkpJ29RQ6deJ9YgZtJzRN5r6oWnW3HK0y+M796ZX
         rM6oiOjQouhjgfKR/kyNAob2s2KSqo+vYMIpwRh0Sbn93U8tT9aGdaHlOzW2dGbR5oTj
         GObDG3peSkLiAQazHo6Gq86EZpkJ9TbAFgj9ZsNox3cZ5CKdFJJ3wCuHI1axvX2red7K
         JnNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtMMVZ9+ybjviwfo+oMmgz8l3tHlQHjvdhtkM7aOmtHOAG4LyAcq10YCQUUMu7u/CmljiaHRK2I1X2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6bvsv7A4zRQXtYdk5iaMZmRbSpQSLJaBzjbJG8L1S67edU2DH
	l73vDv2OFKnoUnW3rPSDNsVzGWHtxkhi2+TZpR/bgkLmEutIELQiy053Y/cqMjqr6mjxqGvxkVy
	AMj6A4wwHfvmD9gIy5B3tPBhppBmteUM=
X-Gm-Gg: AY/fxX4TKbmLBNDJxBYgBhNuMxtipYh6FGN5XeJxIHkKbmG9gqJPkuNlCxJEw8XvY2p
	mCyKhNNKboiMuFuT/R0/e1IqZ10+gObK3iwBm/YwXaXMUACNaCF/TawMFtR567unyMEN2qF0ElJ
	eItm0w2blFJpY2m38YRnmo1wzV6N1BykBlmAYr0QEBclJOg+6chGQ0cMG6Q+GK5Pk/qgtLO8q2C
	B5P1kRsx5B/Gs12TNK9rwKiqMiBJ41R/AMfcgjlYuQVG/Mi8Ek+ppIIiqYh/X5KSNvVsvPJ
X-Google-Smtp-Source: AGHT+IHqgr7jlDCQgsez8DnA9gOiflIl3Y0LMQ32Pm5ymOJkvX/BBOkn43OWK6VsRVbXsqbrmwwyxgH3uCLfvEaBQjo=
X-Received: by 2002:a05:6a20:918d:b0:366:14b0:4b07 with SMTP id
 adf61e73a8af0-376aa6fa3e9mr2147150637.67.1766133552891; Fri, 19 Dec 2025
 00:39:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com> <c56ef6e76858c7df19ec43a3a18ccf79ff3cc489.camel@codeconstruct.com.au>
In-Reply-To: <c56ef6e76858c7df19ec43a3a18ccf79ff3cc489.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:39:02 +0800
X-Gm-Features: AQt7F2rY9aYq6gs0_U_Uis5_kQpmhb9hiFjrZkiRiPmJac1NTUb6QoRPAfrV0sM
Message-ID: <CABh9gBcntYi6WeL6bOAAboUdic8afmn4X3-LW=zaHDditTr9OQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Revise Meta Yosemite5 devicetree
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Sorry for the late reply. I=E2=80=99ve addressed the points raised in your =
review
and sent a follow up v3 patch series. Thanks.

BR,
Kevin

On Mon, Nov 24, 2025 at 12:53=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Kevin,
>
> On Thu, 2025-11-20 at 13:25 +0800, Kevin Tung wrote:
> > Summary:
> > Revise linux device tree entry related to Meta (Facebook) Yosemite5.
> >
> > Changes in v2:
> > - Add ipmb node for OCP debug card
> > - Link to v1: https://lore.kernel.org/r/20251118-yv5_revise_dts-v1-0-fc=
d6b44b4497@gmail.com
> >
> > Changes in v1:
> > - Increase i2c4/i2c12 bus speed to 400 kHz
> > - Update sensor configuration
> > - Rename sgpio P0_I3C_APML_ALERT_L
>
> Sorry, I replied with comments on v1 before I saw v2.
>
> Can you please resolve the discussions on v1 and send a follow-up
> series if necessary?
>
> Andrew

