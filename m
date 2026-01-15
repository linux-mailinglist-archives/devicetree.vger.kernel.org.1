Return-Path: <devicetree+bounces-255794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4CD292BA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F741303B453
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0743032ED39;
	Thu, 15 Jan 2026 23:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Z5IUH3lZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498AA32573A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768518310; cv=none; b=sry4Yh1FjOyaEW+zOR/1UgNneYYCgRbl3axWVInte7+GCSWkwl3IpbSH1QorAIF+vUBl4UVBpzqsyLV9/XTqnT5n4+LmO2PwFPk5ByXUg/DPCY97NR/f5Uu/RXPv7IfxPV2qAlxDj8E8GpqfjftZQnjUfpMvPmPiKyA1kyzI1uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768518310; c=relaxed/simple;
	bh=dYKmJDEQ3HcAny/HSnaNVeQI6nrNVioX/wfvfu9LcB8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=USjXPKC5Rujy/6EXGWlLpLMXJu1EBvsSqZoySnpU9u8TIIUaazdOvoITdePWSOkjG59O9usd1jTdJcCq7F7o1RC7AyxD5J11cMkHpd2g+JurrapTXxUPKhdR6xgBMls2QjBHUIHQCob/HgeXZr/IrHsqb1jai80MX81plvNB+s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Z5IUH3lZ; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-78c6a53187dso15519647b3.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768518308; x=1769123108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dYKmJDEQ3HcAny/HSnaNVeQI6nrNVioX/wfvfu9LcB8=;
        b=Z5IUH3lZOx9XDNjG4iwgV32aHLYoJqy7VRDyyfXBebyOIU0iE4voar9OWNWANEzuEa
         VPcJ+yYcx6wN/lJuYNpz85Im+XJePngPK3nZR9szrGS0aovbWelBnFL+7lYgl51MYBmw
         rUn+MMimR4CGZtB1moExMjgXMa4IMg1SAV2HLQKzhGCf6Cx8dMya1c68ZMgTz2G2ebHg
         uvGJb+CgE5rH+9lixq+OYG1QuYMEJ6J/RsC7/5VEUcmS456lNxb7cbRa4gpFJqse9AGI
         frhAA7DXX2FCHDsF4/uGie1tj2ZrKKoSOolH42B0+sh0MoNaXxckVGfN17vz9XL6AjWq
         9D8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768518308; x=1769123108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dYKmJDEQ3HcAny/HSnaNVeQI6nrNVioX/wfvfu9LcB8=;
        b=u3JO+3htz/+tyHkICFYp24CE402z07dMjf2xu8ADL4ixopehxEknd/wVJPq4dNT5EM
         Rpf7qWll2VO2/RuuOMYrl6A/ZvAEDXohxrO5/Bj8UtSC64SV9aMuOjIhs+OoLA/GGOat
         x2AWYJtindK83a8ZkkwIiVFyON81bTGhoYZZGWwaPvm2ayizOOB9aDjPSiINfSX6HxQJ
         p2G7gkNbNo9p3WQI+jDR760zNZpAH18Lkj75oUMqbW1ybCYjS9eeBSbIAoE5C4yVqblb
         CTohMZS/on97vOlcer98BPjyhXO5Cr384om12p/YoRnRWtrve0MyffJN57j14gqbqptB
         uRDw==
X-Forwarded-Encrypted: i=1; AJvYcCU66q940Mh6aGutN/8zlPoJis1aUEJO0JjTkakjky7LIkEYFrSzP0L4G+leNgXhMANA4cu5G8JOkZ/r@vger.kernel.org
X-Gm-Message-State: AOJu0Yy391NEAdjj+pPctSvU0JfVkJerCrGrOsisQcVVnY840mE1WG4N
	/5iCzXnoyuunpdRe4Xt4FQcCRSfhpzQfvejGjpCReScWwHXw/Pz4aXQTeM4YUiHNAwTdTa+ezuy
	Ny7jN+bbw9/qBFeH3n+0d/UGBDWTDhK99LlafPBC7zw==
X-Gm-Gg: AY/fxX5G3YUm6zLhc9o8EqwoVxyqU7ZQ4B/HOBkozFuPcI+IHTN5KxE8W+4c7xacler
	RhGO9nm3ug6/AFEiplh6T1dUk2vnwycE07zAR/EKqHI0IHOnZ4CJlVmBE1oOLBzRY19DMiwV5bP
	1sMq+IOiHFAE2d6Ey1W8p/YlaGeLP5TFgMKXJqtLj/8kvpUDYBV81PWHEACcdjsiesrHDHSVlJE
	T6Z9I/qe4nTvfK+y+HJU2CzbcqEsKiUthR7rxetNMG5LRvL0qMBWMRe5F/O3TvykAcqOaJOlWqs
	hWiANbbT5mi36ln0FZOzPzxecO4B9Nyo3rSmKQ==
X-Received: by 2002:a05:690c:6089:b0:792:7113:a305 with SMTP id
 00721157ae682-793c671a7f3mr7321837b3.29.1768518308331; Thu, 15 Jan 2026
 15:05:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com> <20260115-phonics-reversal-80541ca1f2df@spud>
In-Reply-To: <20260115-phonics-reversal-80541ca1f2df@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 16 Jan 2026 07:04:57 +0800
X-Gm-Features: AZwV_QgpKX7QEi2C0Yhv9u5ga5ukQKR3VN0_gQKQrF7MKWPbynpMV7kUo4W9FqM
Message-ID: <CAH1PCMbc_QGZMicNNie9mvicaHHUbvLF-C+Xb-mgvPC59Sgnbg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] riscv: dts: Add "b" ISA extension to existing devicetrees
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Yixun Lan <dlan@gentoo.org>, 
	Conor Dooley <conor+dt@kernel.org>, Junhui Liu <junhui.liu@pigmoral.tech>, 
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 3:13=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Jan 15, 2026 at 07:18:56AM +0800, Guodong Xu wrote:
> > ---
> > base-commit: 31d167f54de93f14fa8e4bc6cbc4adaf7019fd94
> > change-id: 20260113-adding-b-dtsi-148714533f07
> > prerequisite-message-id: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscst=
ar.com>
> > prerequisite-patch-id: 0c859b4d131b3360875c795c6148c6176b55fb91
> > prerequisite-patch-id: 2ed98dc1ab0f5ed923cc252415c345dc8caf6f17
> > prerequisite-patch-id: 1be1a031763fac029076a768f012af31e455be66
> > prerequisite-patch-id: 21bb8387c946e050910440e7a7622305d46d946d
> > prerequisite-patch-id: f3bdc2c74b230663710086bd770a755d56cb8b9c
> > prerequisite-patch-id: 1f162c02f8bdb5bbc8ce52ead4fcb76258f5c2b9
> > prerequisite-patch-id: 76e1ff26c2f1fe4019cfa574942b568000e6ca1f
> > prerequisite-patch-id: 77ddc9e5dc85495adc803cdc605bdda2ddc7fa47
> > prerequisite-patch-id: a75c798383b46a14d40436357c769c3671184768
> > prerequisite-patch-id: 781fc10dcae2c38c84c25bee887ef7474786dd36
> > prerequisite-patch-id: 5be5d3e62aa73024bf9e1de6aad155be6d618f40
>
> FWIW, this kind of prereq-patch-id stuff isn't really helpful, because I
> don't think there's actually any dependencies on that work. It actually
> trips up some parts of b4 that think they're needed.

Noted. Using individual patch message-ids is better in a case like this.

Above, I put the entire series' message-id, which creates unrelated
prerequisite stuff, as you pointed out.

>
> I applied the Anlogic patch.

Thanks Conor.

BR,
Guodong Xu

>
> Thanks,
> Conor.

