Return-Path: <devicetree+bounces-12542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB87D9EE4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02BC3282410
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D8639879;
	Fri, 27 Oct 2023 17:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="0guiRZJY";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ElMFqiF1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C402F37
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 17:29:28 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6050CAB;
	Fri, 27 Oct 2023 10:29:27 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698427765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZQTIy/VXqCsK5xasPzFtCtU95N0L5Rqr8uD6BbwtUKU=;
	b=0guiRZJYY6+hb0/4VKs4gKCcYi6GHtBdM+Pg4XqYn3VXHkd/K0EMCaZn8sCAwsguTL15sb
	76SnCELLX5a2fyzD23VBJH8ebO/OeP1DB9UieMxXNhi9xD9izzPk2Bfuh7jcfD/t+rOxAe
	X9fh+Ztpv7z1sHulzexQtihJzl+gIMAAhKmIEFIW7IMb48I2s5f5uLwr+bU8c8qM4/f9Ny
	OMjVS9XAk/cx+odr/YNVDuq1+W88ID7Hu++ZITmOh6DApJRU3IhUtbz07OUW7KuZxUjPRe
	rcdAwJdtzbPWJ7Vez6FVvWAVMBeOukYUtjvB93bJ4vIsgiRlbWAcGIm6a7wWEg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698427765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZQTIy/VXqCsK5xasPzFtCtU95N0L5Rqr8uD6BbwtUKU=;
	b=ElMFqiF1XbQ/OhDxN3fBBKcOErxBAl3iqamWSWv5E6dUxWwwdHQELFu7BJvvYuvaLKSnWh
	5Q2jYoGRLKRu2QCA==
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Marc Zyngier
 <maz@kernel.org>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Atish Patra
 <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, Sunil V L
 <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, Anup
 Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Rob Herring
 <robh@kernel.org>
Subject: Re: [PATCH 2/3] of: property: Add fw_devlink support for msi-parent
In-Reply-To: <CAK9=C2VRNJGySLT8_oN=U9Pe9C9mOdPjOUr24ugXciT0Hx9pqA@mail.gmail.com>
References: <20231025142820.390238-1-apatel@ventanamicro.com>
 <20231025142820.390238-3-apatel@ventanamicro.com> <871qdg4hvm.ffs@tglx>
 <CAK9=C2VRNJGySLT8_oN=U9Pe9C9mOdPjOUr24ugXciT0Hx9pqA@mail.gmail.com>
Date: Fri, 27 Oct 2023 19:29:24 +0200
Message-ID: <87msw42cuj.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27 2023 at 21:01, Anup Patel wrote:
> On Fri, Oct 27, 2023 at 1:27=E2=80=AFPM Thomas Gleixner <tglx@linutronix.=
de> wrote:
>>
>> On Wed, Oct 25 2023 at 19:58, Anup Patel wrote:
>> > This allows fw_devlink to create device links between consumers of
>> > a MSI and the supplier of the MSI.
>>
>> How is this related to the two fixes in this series?
>
> The first three patches of the v11 RISC-V AIA series are all
> fixes hence I sent them separately for the 6.7 merge window.
> (https://lore.kernel.org/lkml/20231023172800.315343-1-apatel@ventanamicro=
.com/)
>
> All three fixes are unrelated to each other and were discovered
> during AIA driver development.
>
> This patch fixes the probing order for platform devices having
> inter-dependency based on "msi-parent" DT property.
> For example, the AIA APLIC (wired-to-MSI bridge) platform
> device depends on the AIA IMSIC (MSI controller) platform
> device.

Well, the changelog should tell that it is a fix and not make the
illusion that this is pure enablement....

> Are you okay with this patch going through the RISC-V tree ?

Fine with me.

