Return-Path: <devicetree+bounces-144704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEC7A2EFB9
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DF4E161895
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77622528F9;
	Mon, 10 Feb 2025 14:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GCD/39I9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292652528F2
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739197617; cv=none; b=fX9UDenIu7ObM8t5lzagg2bNZU9tJ5a4NTjDYTyob5U3r4tjmqwtRY01o5l+vykC0nmW3wBn+K3E40zRwXz3KdEK/7Xlw2WK6gvXOkSSxLUOc3biPNiFHkNzD8OKhd2DjgltUvF701zC5oXzvQ6wk1+prgNnUoiFj31lTzqxWEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739197617; c=relaxed/simple;
	bh=oASEPjHAaowh4iL42KmWLyDV/ZIihkVhkEpMzaq1FYw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gPSOppelTAZ85CbHJLN3PbFj+SY6ILwSbFATpDF/IgUfHCKuAxzvJeXffb7ED7oLAMOf3oyefqaz+meYAhQKQVzWauDjbl6Dq2/s2Jw2naXy9lSOlxDFpPUfDgpwomdaQeq/NrcuKJPs7Sd4Dir/sBIzfZ0ZxFya0/JkFDYlg8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GCD/39I9; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso10979565e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 06:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739197614; x=1739802414; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VgraRHso95F81B4DXSSaBLV0feh+tpXbSVAWbEyzHv4=;
        b=GCD/39I9m0umYzmGWR1IwFzRUt27zuH/5jFktzo9buNRLOaBjfmupxWCMeQgMc1PkD
         CJEJH+MIpb+cGlBbAC8ZvV+k3lL+gMdAzaEJfEpZzMKpBjq0b1rrPdQEYQB9rArNKfto
         PFtcXfrEfPRW5GpwIkGdjc3vHiIEBeK49JLnu2vkAUKdjcp7r5zM1O1iJei9NGW/hoIY
         KQFOVnvFMUJVeVs0onzXeKdZeJZaxjMi+9+7vMv+zVzZjQy1PFLQE/6gcvbowVjBU7yZ
         ieWnm8Svicag2r9T1vXJrCGe1KLkKGJynJXLrKhNMUWnG5QsEmOkCbeRKUQJB+Y3funu
         1cCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739197614; x=1739802414;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VgraRHso95F81B4DXSSaBLV0feh+tpXbSVAWbEyzHv4=;
        b=t/hSVaD7L5hqGHy0uhrrqhftqdJkm1QkR+6vgjtZGZqoGrfbmnWI/3+wqYk6hf48tk
         4CqsgSLgwsjpHeuCKFGcE8ehGWxlFPBZfj9Wcss/8XpuIZ1sUKjdJ4A7eH7YdsKwHt7q
         DLnBg9YtvvBa13biN5M7YlB3OdH5AWdDERaGKxq5SVixdUbtP2LDjbRGZFcG/Yir2j+u
         1pSsWmlLv2ZDge542DZJ3uVzItsfXIHW5W+M/NDApB0PID2z6Z+KhQ1PXRSZ0su/RwNN
         xYFfZWGE/g797pwdIBriRgnV7/f9UEtBvkOt1R86aN1tpUhhD9+D8T97qq4G4/4VLwJA
         pTGw==
X-Forwarded-Encrypted: i=1; AJvYcCU2F5Cdt0fzRy6OIHhvvSO1Y35j5ISEf7yHtJje3/IGORppS+wteywa9wFl2HqzWj9guWHgLyalDU4k@vger.kernel.org
X-Gm-Message-State: AOJu0YyNMJYtQq/Llbd2W38Wcdtb6oK6nmoLpKB7FgxBNSGB7jNWGQwo
	7XsSRpjlPU1v92rdVKT1Q/LwxBSTDccPycUu7RU8O4YycAWtKYfPse43FYQI
X-Gm-Gg: ASbGncvsyaH8tVxE8f6jKltaRipEyJxRrodZrcz1oBj1A/4miKmIjoj6bSsrJULhaET
	5misEbLVgNW2HuylvuI8fVjvwYF226rZo5JbPjOtsSA2tQhJdi3ttHMPzBvGcOFE6EHVnTC+syr
	vrtwFJKy3GtBf5Ey1R27wTJlREOVfn2x3It/lqSCtzqJtJyBblgs4NSL0FPyJkfE+ACwZGg5Puh
	WKipaurB7h38MAGH5jFAWFy5xTNrUqnkXKFK7KmjGprW/rYq0TywuTj+Y/OJU8zHVhwu2x7/LwF
	+3IUsz76EZEfDH66ZgmQgtzpxHe4jJoh
X-Google-Smtp-Source: AGHT+IEYNgbdZHkRJU1UDHCBy9QezY1XmzJ1vuM2419I++2sRPB2lMGddbBAfie6JehAjN/mVPK+vg==
X-Received: by 2002:a05:600c:5351:b0:439:3159:c33d with SMTP id 5b1f17b1804b1-4393159c5abmr70934525e9.13.1739197614251;
        Mon, 10 Feb 2025 06:26:54 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4393f202721sm49032005e9.21.2025.02.10.06.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 06:26:53 -0800 (PST)
Message-ID: <4d171a4fdf7ce9bfbe6352b36d6b6791584f86c4.camel@gmail.com>
Subject: Re: [PATCH 02/10] riscv: dts: sophgo: cv18xx: Split into CPU core
 and peripheral parts
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, soc@lists.linux.dev
Cc: Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Mon, 10 Feb 2025 15:26:52 +0100
In-Reply-To: <dda5297c-fdf3-494f-854f-71a5000729e5@kernel.org>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
	 <20250209220646.1090868-3-alexander.sverdlin@gmail.com>
	 <dda5297c-fdf3-494f-854f-71a5000729e5@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof!

On Mon, 2025-02-10 at 09:43 +0100, Krzysztof Kozlowski wrote:
> > diff --git a/arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi b/arch/riscv=
/boot/dts/sophgo/cv18xx-periph.dtsi
> > new file mode 100644
> > index 000000000000..53834b0658b2
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi
> > @@ -0,0 +1,313 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> > + */
> > +
> > +#include <dt-bindings/clock/sophgo,cv1800.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/ {
> > +	osc: oscillator {
> > +		compatible =3D "fixed-clock";
>=20
> I really doubt that external oscillator is a peripheral. This is either
> part of board or the SoC.
>=20
>=20
> > +		clock-output-names =3D "osc_25m";
> > +		#clock-cells =3D <0>;
> > +	};
> > +
> > +	soc {
> > +		compatible =3D "simple-bus";
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <1>;
>=20
> No, override by phandle/label instead of duplicating SoC.

Is this one critical? Otherwise I struggle in v2 to both keep
SOC_PERIPHERAL_IRQ() in [a new] cv18xx-cpu.dtsi and reference &soc
from cv18xx-cpu.dtsi. It's kind of circular-dependency.

--=20
Alexander Sverdlin.


