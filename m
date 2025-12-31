Return-Path: <devicetree+bounces-250743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6F4CEB7DC
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:58:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C29E1300C2A2
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 07:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304223115B0;
	Wed, 31 Dec 2025 07:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="zdJhNNVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4868730FC22
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 07:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767167897; cv=none; b=mZ0TSwn1Rjo7HjW6eLER/V6Y30EkSZovmBWQbrzBS0q2GufgRkBQmCtndGOpMcrkFy/xObGrA3w/7s9OeSGTOn+qHxgBFRYfhFCK36ErRBT66UhL+p2Yf7gZNr40FojGDA3HJh5sYYGqeLKBE5FiXsGIRbx30JStIYoCesTgefw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767167897; c=relaxed/simple;
	bh=KTe+uww2iCrHymaii5h3grRGLClKo9EOT5Ashcba0hE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jeWN6tdmU3ctv2SFOweTkMjJnVNwDayYVLDsZ4F+0VQt2X1iTx2irtetebJbXhuCRgArQhJakD/LkHVK1kvkwC51Q4wAAUS8aZu4lxRBSHlfgeUe16a8K87HHwEfs0i2Z/0PjkFRouEGZKEVVj77JGYVE6FlZ+U84qOiaWJdauo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=zdJhNNVs; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64467071f9fso8092104d50.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767167894; x=1767772694; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTe+uww2iCrHymaii5h3grRGLClKo9EOT5Ashcba0hE=;
        b=zdJhNNVsanZUzoIAb1lqHuZUgQ9NqQ/QVa9JpkQyn1C53u1+Qx5cet2GDwdX5k6rzx
         11ZO0OZQz2S7QwbNP1sHpuC6N2yya+4gChhdomM4TYuqNhtKtrCkevb4Ds0Wkub9WTrl
         2Z+nJIEeGOnYZEPf3T5T+oMKDLAW1p52OQjjC8t6a3L+bIGr69wm366ryK4Xg3SwCzs+
         Nq4NP62GJE/XBX6FijspbIRIFhBtLQOH9kQgjjpQsh9Soj1qiIrxsZpemli7f/GTwtWo
         HDldwrnrvneKlyKZFkvugL/CBxx1I96d3toawRi4ZuAsYM0yYTvSNPf5YtoyqY2+uYt1
         mqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767167894; x=1767772694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KTe+uww2iCrHymaii5h3grRGLClKo9EOT5Ashcba0hE=;
        b=FmHnkmgz5FPHfxyaYQ2Wl2WLo9DXikFTjPqB+XM5OGMO7vswYN6qDyslGXiHRFzqNr
         mQoWy/MlJt2yg/D40va2RO4T5o4Y8Z0mjGWR1NV+05FX2ywwpHQIkeKbe+62FZtavrhA
         qPxfe43KSmnxwKSfj7hbZ48Ua+UUhzN40EaKvAv4QxHVYU5QDvEcAv7Moeu5o68AstHM
         2Nx6StVW3AwPFLiwvoU06mpO6M5/70o219Eha7z0BO463S5UnFWsPzzAIEzLLG9BkFkr
         quDJbqyiMox02Ndqzp+KEzEVR/EjV73UooQcSPcdCKx2cSc/oT3XLMy1phHMdTp79YKb
         bjmg==
X-Forwarded-Encrypted: i=1; AJvYcCUt/OH4fn38vZOpLw/aY1CVgn0vVv+FBAsjP6v/B+rupRCnLIA3+1UpPvhIbwpFjYd6mtWicwl0Rppd@vger.kernel.org
X-Gm-Message-State: AOJu0YwrPzvuzAIaaQNqLFDg6AYJAjg22mLDvwSuq161rjmL/3T/oZLZ
	DxtLnmIA3nKAz20/t+wobqfltwMhPYdlr+SnX29r7WYWT2vxbnDKr1UK8jRgQ2FI0+/guusjABc
	SeBEwhpCLsUNKe7KdvwF8zw3z9tyQzNKhCt8f36FlFw==
X-Gm-Gg: AY/fxX4Btw7s6rIOjVtzlcyLYYGDp0dc6P+4lNb6IN/v/XZC3i7DD47r3c1kae7Ipfw
	uAJ/9oDTd/ultndZhJQ5AWeOBp56z2arAVspLW8/RxSAY7cLfgzwl5PAsWbsaCLEm+KXAZxes2K
	NWa4DxyPSRQ64CpLyS6IiVI5GRq/369BWlHV8wATDRa0+TDTDfOoDdsWECNa0+PuVeBk6auC+dQ
	xC+MLwyxDkll/aFkSzxAQdzrCdAYK5Sv+2Mj+7AiUWQpD/pQVNwkbfByjHgcqLpqwyw3VifGiDJ
	OyBhEj+ECMz5COLBGII8ZG6cRDyEUqi5yMVhCIrHcake
X-Google-Smtp-Source: AGHT+IH53FvUpz0dR04OFmctNYeppfU38AmPI7x8yHnkIoO7J4A8mQkJ+AGynPvCIOVfnVQmo938afWT4z4sYjqeQLk=
X-Received: by 2002:a53:b98b:0:b0:63f:ce86:8b81 with SMTP id
 956f58d0204a3-6466a8445c0mr23299917d50.18.1767167894213; Tue, 30 Dec 2025
 23:58:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
 <20251229-k3-reset-v1-1-eda0747bded3@riscstar.com> <20251230-charming-nonchalant-goat-98bbde@quoll>
 <6ed0436e-e03b-4b17-a70b-6f848f14e1d8@kernel.org>
In-Reply-To: <6ed0436e-e03b-4b17-a70b-6f848f14e1d8@kernel.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 31 Dec 2025 15:58:03 +0800
X-Gm-Features: AQt7F2qzhgUj-QKv44VxiXKT9CGYXUenv1CyhrZqOLWPCsSao1lPbDdY4t_Ch_U
Message-ID: <CAH1PCMbKwBUJoVfL-wqsd_5RWNVFVVC_UPxk2B3VFeRkDertng@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: reset: spacemit: Add K3 reset IDs
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Krzysztof

On Tue, Dec 30, 2025 at 8:24=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 30/12/2025 13:21, Krzysztof Kozlowski wrote:
> > On Mon, Dec 29, 2025 at 07:04:04PM +0800, Guodong Xu wrote:
> >> Add reset IDs for SpacemiT K3 SoC.
> >
> > Why? Where is the actual binding? You have entire commit msg to explain
> > that, instead of duplicating subject.
>
> ... also because then I would ask what is the compatible and why the
> filename does not match the compatible.
>

Thank you for the review.

I see your point now. It's my mistake not explaining the relationship
between K3 reset and clock controller. I will update the commit message
in v2.

K3 reset devices are registered at run time as auxiliary devices by the
k3 ccu driver. This way, they don't have their own yaml binding file, but
reuse the K3 ccu binding, which is built on top of k1 syscon:
Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml

>
> ... also because then I would ask what is the compatible and why the
> filename does not match the compatible.

For the filename, since it lists the index values for reset data, I
chose to put it into include/dt-bindings/reset/spacemit,k3-resets.h,
which mirrors the clock part at include/dt-bindings/clock/spacemit,k3-clock=
s.h.

I will update the yaml file (spacemit,k1-syscon.yaml) in the v2 version
to document K3 reset support and include the reset header in the
description, so people can clearly link 'spacemit,k3-resets.h' with the
binding compatible.

> >
> > I am pretty sure I already asked this for a different patchset from
> > you...

I apologize for that. I will be more careful in future submissions.

Best regards,
Guodong


> >
> >
> >>
> Best regards,
> Krzysztof

