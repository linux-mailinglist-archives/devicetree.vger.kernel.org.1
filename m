Return-Path: <devicetree+bounces-299671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFIGO1+rC2ojLAUAu9opvQ
	(envelope-from <devicetree+bounces-299671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 02:14:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A448F5756ED
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 02:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 515D63025C71
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 00:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BBC1624C5;
	Tue, 19 May 2026 00:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d59lwcl8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64807082D
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 00:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.196
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779149652; cv=pass; b=aiLtRZ3NplzbRnJlPa6Zlhc/3O6IFZRwCeAMS74GX3lD2JmG8/9BXMTG4srHjuxS70e0GttRdq0jPdOjFNiylDY4YnGmjE0DjtluH4OEx7WIEs8QcATs94cDp//h8Gi5VuIyqhogn3rAQ0gLckjINbxIBC7cHPQLwROnQInAtGU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779149652; c=relaxed/simple;
	bh=LPwsRaL3/VhQKGJMHLIVfCwqYVCTUXR7opK9047JBWk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MJnhIsYmXKiVZTQuvsdqKTjHAdYBNJSDG+ArPG2CnyiLu6UjKPlXbDztpC+xdTsECd2xjtgJkAIwOkXRWjqmKAOKUPVgto1GRFCnmFFTFhObivvYzGruL8Ni8/9pwJQrdv8BIMzwgileVqMQfYIvmHtSlCueAEfhmVUxE3/pM48=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d59lwcl8; arc=pass smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-911488599e3so355971985a.3
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 17:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779149649; cv=none;
        d=google.com; s=arc-20240605;
        b=CIuNVFhKBbGA+1AD7zNWyKJTY8Izw4zzawkPAXiVOFk317HiwNjkInjmYIzLkvzDX3
         x6n7L4Bgjj59X69shPu/EplShJVVnpvF82f74R66f3W/kTOExV3ASlCrsM99IRP4kMzH
         RgFcX1P6CHRb0POwGrqp5cioiIVy03cBxOF9ZmArMFFVbjPQNCvuQ11ere1yzGoWdefS
         0MHoYMteh9YhhrXXQx94IsUQjD4uoxRqNaA5bbXQEURsw24Rguy6lPrKf4GJiHQeuHlM
         dJxMqCd/xSml06kLYjkHSI/7Y20aZje8Fo5VP4LQXbzo5zYwk8WJ3ZCkOeKnU0e6/Zw0
         LVWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LPwsRaL3/VhQKGJMHLIVfCwqYVCTUXR7opK9047JBWk=;
        fh=/7ZbUI/MnH+i/WE6Y3L7kfVE3ZZSAFn18hTxHqsmULQ=;
        b=E+VWzvuRoKsNfkn4lEwW8EKGae3g5RZMhqWlIPfZpUdH/mmvflmO97BZnuHrwAQ+hf
         dPFM+8VCBkSiHiqawhbuUzQxdGVcl0UAY06TrLqWyBl6roqDu+0DjTt4+GwXg1z9frEl
         yjHdm1UEQ5FmsB2HaOCegUlcpXBa7bcrV7r0az/eavHPgIVyeKFa+zIVmkwp8ipKH+4c
         qoRImsuSs25bcjmRwfCfjbq6XrdK39APCcerygxhXQakbi1utWJndu5Uc6DX8LQGMf9h
         hEoXi9gEn6wrkqRTj4qsr5OTKzgiOVNO+UGWzGADnKj0nH19yi/x2JqnBw0nGrc0e/eI
         fW/w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779149649; x=1779754449; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LPwsRaL3/VhQKGJMHLIVfCwqYVCTUXR7opK9047JBWk=;
        b=d59lwcl8NvuOHlMwJ/jtLfvIVKwSl887jI0zUq+n+MokZhIz5kSNG+Q7m83cRRj++o
         7S3rzqts7N4yutIkInkFXV9kygWG7yxiMPc0JWryBnFhkU7pGX5375FZhqllLsu46QxD
         yqRXefPbKqpNqDqlvNkmKy9NH53MH/MzNhs5i0t6EGN/qbHwnG3z9w6y+vTpWbbm4ui8
         +Y/emkK8/ZzUeQNXSb3F20EcO2qGGKw0KLfo5yfAg9tQxjLb8ir1PQn5DJpL6n74Uv7I
         Kzy/KgWqFZU9F5z3/y0h3xh8lwac6mtJi6nFuR/ealUBmYZWKM9xgcZKuPtDs3lS0PL6
         E+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779149649; x=1779754449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LPwsRaL3/VhQKGJMHLIVfCwqYVCTUXR7opK9047JBWk=;
        b=kinSGLcyDFffYAeQ75iAYnAZeSfcEFKXjEpb9SLjHDnjqtgpeg4MblyXuTqqGSCwUZ
         25VqwqCLHLQpVLA9VvvciGpPeI2mrAK0DqBPxvul466ErIHoVQO8xcb4az/A+wc7U8JP
         S7Zo6XdJmwFbpQIBouwAoqVpEke8RV6ZiZIrYGJR7sDE94trbgtyJ2wyJVDtLtoblYwf
         okc/gqwT7fGJplfsPR0PjtG4TMbFbS5ExZEI8YObW3N7Xa7LIzH0PycluyeQF7COQ6Yy
         Tiw2Ft4pLpAuWZprgCDLyusxGorJs6T//IacI/929uux83gvufSmA+A6NVOt0/Q+XCqV
         DkWA==
X-Forwarded-Encrypted: i=1; AFNElJ/w6IAWSvEKityB2noCvyw6Qm4VtWefy4h/MoqkpLEvipvrPJdd1lX4m3tgy7U8jGsomjhANCQWhRFg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw41kIEEfC2GUiRFPzMDC4xyUgIEb1MIPmQpmjy2xMR7x+KNbCX
	Jazq1Hs+W1Oi0XF0sNe8QooXrqgxtB+3Ltm5zLlYe5Ky/xPjMzDg80+B7ZfGJb65GJyvm9uAIkW
	5uTOx9+W8e0BCy2BxlJhSVQMy8DxpTbU=
X-Gm-Gg: Acq92OH7waRokSRDSOHUGdXZibpZvGfNnEa3PgsiNADASNsWcB4x7sMkzCnW8klU+Qc
	svC3Z/mhz0asAdVv4qsi6D6vGLKvbn/L19qQJQQOMBKeUNDfwpXeS7axBlOwoDj/xqtydaCeK+w
	WjKtDKnf5PhtyebssGbmCW7Dv2/7Mkk+phTEQSnYmkMJor8fTbkaH6pZWMKBrj/HIBoB6UqWUXO
	kdtDTYOetuJ7+rl0jmkGo09TEmSMP0WRffbPOAnCjCpUrtBMANR8vi2hNd+Hpyki5kx2NWFRIPH
	Qa+CP26cECrWCBZqNEJ1EAZ23pOAxSdbD3vgShK7urz2+hoJTFnE/h2/ABbZd3rYHJ+WQJdnloh
	qrNM=
X-Received: by 2002:a05:622a:d0e:b0:516:707a:cf8 with SMTP id
 d75a77b69052e-516707a0e9amr149948671cf.44.1779149648695; Mon, 18 May 2026
 17:14:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260518042833.272221-1-enelsonmoore@gmail.com>
 <d40b1e80-37fc-4c88-9d7f-dae6458efe6c@app.fastmail.com> <20260518105735.GW3126523@noisy.programming.kicks-ass.net>
 <20260518172444.zyd47mcagrcwu7wt@dev-vm-schuster>
In-Reply-To: <20260518172444.zyd47mcagrcwu7wt@dev-vm-schuster>
From: Ethan Nelson-Moore <enelsonmoore@gmail.com>
Date: Mon, 18 May 2026 17:13:58 -0700
X-Gm-Features: AVHnY4ICd7H9-70Xucdx9uJAfA9u6BhUaXyRyteuNE6Jo8mNtePRuTvmeSFjqyQ
Message-ID: <CADkSEUjhq6HSdg4ignzbuJiN5uXATsTdxFbRJ3BMxs5=WUWLDg@mail.gmail.com>
Subject: Re: [PATCH] nios2: remove the architecture
To: Simon Schuster <schuster.simon@siemens-energy.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Dinh Nguyen <dinguyen@kernel.org>, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, 
	workflows@vger.kernel.org, Linux-Arch <linux-arch@vger.kernel.org>, 
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-iio@vger.kernel.org, Netdev <netdev@vger.kernel.org>, 
	linux-pci@vger.kernel.org, linux-pwm@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	"linux-csky@vger.kernel.org" <linux-csky@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Alex Shi <alexs@kernel.org>, 
	Yanteng Si <si.yanteng@linux.dev>, Dongliang Mu <dzm91@hust.edu.cn>, 
	Hu Haowen <2023002089@link.tyut.edu.cn>, Kees Cook <kees@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>, Will Deacon <will@kernel.org>, 
	"Aneesh Kumar K.V (Arm)" <aneesh.kumar@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
	Dave Penkler <dpenkler@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof WilczyDski <kwilczynski@kernel.org>, 
	Andreas Oetken <andreas.oetken@siemens-energy.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299671-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[infradead.org,arndb.de,kernel.org,vger.kernel.org,lwn.net,linuxfoundation.org,linux.dev,hust.edu.cn,link.tyut.edu.cn,redhat.com,linux-foundation.org,gmail.com,baylibre.com,analog.com,lunn.ch,davemloft.net,google.com,siemens-energy.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[50];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enelsonmoore@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linuxfoundation.org:url]
X-Rspamd-Queue-Id: A448F5756ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi, Simon,

Thank you for notifying us of your continued use of the Nios II architectur=
e.

On Mon, May 18, 2026 at 10:24=E2=80=AFAM Simon Schuster
<schuster.simon@siemens-energy.com> wrote:
> Unfortunately, as we are an infrastructure provider for civil energy
> infrastructure, the refurbishment cycle is a bit slower than for
> traditional consumer systems. This implies that the traditional LTS
> support duration (max. Dec 2028 as of writing [1]) is rather short, and
> we would be glad if we could keep the architecture in mainline for at
> least 5 years and only then "decay" to LTS.

Your reasoning makes complete sense. However, there is an alternative
to maintaining the architecture in mainline.

The Civil Infrastructure Platform project maintains super-LTS kernels
(and a set of base Debian packages) for 10 years. They are intended to
be used for exactly these kinds of devices.
See here: https://wiki.linuxfoundation.org/civilinfrastructureplatform/star=
t#kernel_maintainership
and here: https://cip-project.org/about/linux-kernel-core-packages

CIP will maintain kernel 6.12 until 2035. Is this long enough for your
lifecycle? What kernel are you currently using? If it's newer than
6.12, we can easily wait until the next CIP SLTS release to remove
Nios II support to avoid a downgrade.

One important thing to note is that the default CIP kernel branches
are not equivalent to standard LTS branches and include new hardware
support, which has a higher likelihood of introducing regressions.
However, the -st branches do not include these changes and follow the
same patch acceptance rules as standard LTS, so they are likely a
better fit for your use case.

Also, CIP focuses on architectures used by CIP members - currently I
think they are x86 (32 and 64-bit), ARM (32 and 64-bit) and RISC-V.
Since Siemens is already a CIP member, you can simply ask them to add
Nios II to the list, and you can assist them with testing and directly
submit patches to them once the standard 6.12 LTS period ends.

I hope this information helps you decide on the best course of action.

Ethan

