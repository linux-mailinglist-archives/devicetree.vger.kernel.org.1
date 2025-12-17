Return-Path: <devicetree+bounces-247221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9921BCC5BF0
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:06:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB560302EE58
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41EB0238178;
	Wed, 17 Dec 2025 02:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="IhscHFIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB80E5478D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765937184; cv=none; b=BRrqjb0Ol7GFK65rhnzkY3XcRNAeR9vbRmMSl4du8RSCwTpy3Otmz6Ed37wyhitrG2cbpfXoYi0FkYC6KP55MA0Km0aqhi45xeC+SkAmi6dw/h8w1ak8DEnwHw61VPS7sCvsRl+PjtDH+1BMy9U6HV8PIYLGUWjpMHWCTDyKxCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765937184; c=relaxed/simple;
	bh=6D/RvGr+Byo9QF6bP9/bKjr88t5+qZCl7V0ljTkIQxY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VK5btNEgxrVc+rL6+aC+mL54Vu3+8xJ4Kb9/KpR8Duuca/VRLB4FJqU+tOvuyromWlBH+VR9WtegrY/Cd7ZtVF6QeeynXA33sjR+DXQu4Ldf9bfNfaIng3Zf13LgI26qwAZx2PJj9iXIIqpvaC0vvkPAB7uMZmC0bVpS6SvlZCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=IhscHFIz; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-64455a2a096so4305464d50.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765937181; x=1766541981; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OfiOZIpxg0tDEyK2KQTYkmCtCk2RA8OzRoQCSq29r0=;
        b=IhscHFIz4B2w3L0b5routyCYwNZKsYK5hfMjKJ/Yrijwt+1SgXBanPRHzeCW6dmIrF
         GuF7IxO45UpEYpniYezkiaqD7R85o/R0UAJeRKBPLbfvb3XfxxhRw88f28CiOerT3zhW
         s1RACYWcwKI5RCj5FIT+aHSG7eBHsM8MFzHeZw/rH68W+DIPfzBOXCGbrJIlDJDv6i15
         G8g2qMY9T8wG1CVx0yQ/nAkA8zqulsDLVmbG7mIjyWcjbpB+2klB6HXqQEj+KaAAkeif
         Sn5NF+Yw0Nfp/HDnOZhDWAJrQwIw0jWKqk3fHoZgFMV/Zl094gBEupj0zsfJoDr7bMDS
         SfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765937181; x=1766541981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0OfiOZIpxg0tDEyK2KQTYkmCtCk2RA8OzRoQCSq29r0=;
        b=J345REMAlixZN0JDKij+aQVEKJpqtg2VaWSdQwH95jYCvBTcF96RAop1BQ5cWVGpes
         IKgpXvq3m6xhT9/dqqPh5V3KjEZm+RyQ2lHJ5ggdv9c25mXLAT41y5iaQkLXkdV9XMq3
         Q92+2VuhiZEkBdG+GIpE5UgqGBFb3toBhfxp/rfby/ydPuICZq1CqSoduc7wP+3SdmoR
         VZPQURtYqhoKys0dtpAurORMXxG5cV0ODr4yCd8kxYyQSR7XuuafNNrugaLvBr3xRg++
         YAdvf9km3XhfsHr5aPUH8eLxrDAZGpmyOFig/fsTtiEjhMUXsdi+jcXVRHoYbqcRzOuF
         4gBg==
X-Forwarded-Encrypted: i=1; AJvYcCWpF9nGq5RlSjwyUsTkRgLoozKUNjdDaQWvhkfKUYJDzkg5KcQZhAPHW1lmFB7NIDTGdJ8jbPLPZiUH@vger.kernel.org
X-Gm-Message-State: AOJu0YyFEbUfxHyQxUDgjSOGSQ1Pe3T3+xd9LTNfwaMvj4GbuC9bTi+W
	+1gF8i4e4qqJ6/E/JAkMjRqOtdd4/Dnc2yKDxA/2VkJOoTsBVv0KSjQI1McRYZvy4c8mg5BNBeM
	BikAXNmpWVWRVrMIu9f2H+/ceZ+mmoMPLoFchafsdTQ==
X-Gm-Gg: AY/fxX7ms77E1She/9/f6L+X24mZWWE8UvWQ0ilRZ/iFCDpvLAXbwdyX4DGWK8USXBJ
	PEz6egOejUDWGLMniwN+AFaDvnKh9QJI8WmpjqCAY0Vi7pFLjWmCd5m/pE3H78qSCxO9jRfimeZ
	87zuRe9L/fEcWpiH6dXIpWCyJVwGY3tGoxWfIXblgqmVCeWeUwoanSkBoMBiJrUizXf5rZxy/Op
	p/Y9TLwuiOdUOlQiWu2JAJ8ZWfaniB9W76bDtVvjp1/0W/m+0SMUjsPbalfQ8r6I9ICxx//i1b9
	+DGxLRRNLZft3zRav9OJotKMMqeird/+PduLBWqJD+3m
X-Google-Smtp-Source: AGHT+IFjkXFLSpb32ATeMly6o52Ldy94ZE2+rmmrjPmVwuAfzYm/nWP3oN74EKDLdVk0KisKe/00zmf/rjIbLwNuY1U=
X-Received: by 2002:a05:690c:7088:b0:78d:687c:8583 with SMTP id
 00721157ae682-78e66cded17mr282776567b3.20.1765937180750; Tue, 16 Dec 2025
 18:06:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-1-a0d256c9dc92@riscstar.com> <20251216150748-GYA1937017@gentoo.org>
In-Reply-To: <20251216150748-GYA1937017@gentoo.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 17 Dec 2025 10:06:09 +0800
X-Gm-Features: AQt7F2qw6wE-Ygw0dsVQyWLoaQf00ZTdNYPMUaVd6F0gE6fbGRiPsUhouMY1MOc
Message-ID: <CAH1PCMYQhDf9eNRQYTaL3KjBCUC+ygXFKTOVqULdp0UNAM=wXA@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: riscv: add SpacemiT X100 CPU compatible
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>, 
	Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	spacemit@lists.linux.dev, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 11:07=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>
> On 21:32 Tue 16 Dec     , Guodong Xu wrote:
> > Add compatible string for the SpacemiT X100 (RVA23 compliant) core.
> >
> > Link: https://www.spacemit.com/en/spacemit-x100-core/
> >
> no blank line here

I will fix that.

> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
>
> with that fixed
> Reviewed-by: Yixun Lan <dlan@gentoo.org>

Thanks Yixun.

>
> --
> Yixun Lan (dlan)

