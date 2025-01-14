Return-Path: <devicetree+bounces-138323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB6DA0FFF7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 05:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A027918884DB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 04:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8909B26AC3;
	Tue, 14 Jan 2025 04:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO5h0lhC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD0F24023E;
	Tue, 14 Jan 2025 04:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736829942; cv=none; b=XLWisxA5WaxtAMAreGEFygZzMz65+OPL8DB66z4ydytvuq7BFRvdjDaaNQgbsW2nshhKZ6SwTlh2xm1SlRO3FsOlQ6SI7kjRprw8E6Y6JH4uWezQsEhWSqExs5p5Um7hnWJnOU8QaJTGZg60R8X5kUGyAIWgKinMCVtOK5PiCmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736829942; c=relaxed/simple;
	bh=0RL1sAC+TWEMOw1/sGIgeD4+QIaqMWdSvFWI2yz1c0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qg2yup6VGN1Y1IZLGBIUMJqylr2w/4k+kVuaIeefrlTcjsZhgw5KMQ/Akdg3C6tH7WbKc4Tg0omZVVKYk3jKKTJa2CbhM2etj2pResP9iS0Gkip/4JVaOQlqrk/duchMrFql7ZQ/EHVHn/yX1aiI7mtw625nQrWGGyO+Sw2jmXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO5h0lhC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD6EAC4CEE3;
	Tue, 14 Jan 2025 04:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736829941;
	bh=0RL1sAC+TWEMOw1/sGIgeD4+QIaqMWdSvFWI2yz1c0g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JO5h0lhCvkfWvCFUbFdVblTBu/LKzKoAH79MBlFKqTZ8hQTMjYeY/dsF4ZIN6cHKA
	 NxvmxFJy43Lw5M/tPNgyrqdiFR7w1473RrRs3JXI9xfCTTq3aseuF90cluLi+7SrNe
	 p0tW2J8PQhG08eFDWzEe1+n3zKhhaouQ85w1cRZZ8n+VBGSj18K7FTGJNzCjHSJs2y
	 xAUi7kbdYtN4ANqBqQSHciQCtrCJp7IkAKqgwxzK7k1Srb6i3/WZ38oCzjK5b9f5YH
	 6ZIhEwHBe9SsLJ0iMBdFcAbA0ILrjgYrVG4Qq8DVhZ7GGS5ANHEsRNOv8RFLLhnKZL
	 TugX7i831m/iA==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30227ccf803so40080361fa.2;
        Mon, 13 Jan 2025 20:45:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOlC4sNwbNZyVf53YuqGJzYN0CO7mL8LLLF2N0NaDwv9er0oY2L8jIXZyBgXsOK1LuAmlk5evEZV9a9jaV@vger.kernel.org, AJvYcCWDfYG49RSPB6nWG5hR0aBpUy3qTCNi97uUlaKZrKrT403zZsd+tuSAlb8cFPJC4Hl96ul0qUIb6eeg@vger.kernel.org
X-Gm-Message-State: AOJu0YxTgJt49v5a5mgM+/s2jk40B+PdU+HJGuy1CKjXQwlU6vm56rod
	uCGeYTcvYpx+SqSUzz6JJcex/4IEND9+QZj1BPgQYyzHifDWOqnVyr2ilR1V96z6CJJR0Ip/G3X
	0tm+U0Dt4Z45aF4XhZVVJvC7TPS0=
X-Google-Smtp-Source: AGHT+IFromhJpMsSdG6hsFmL/T4o9doxyFHn4S/TbLsGt4ei8YSJ8yLDOMeIg9IwY/90JW7+Z833Zm9kxA7cehdDkAQ=
X-Received: by 2002:a05:651c:505:b0:300:26bc:4311 with SMTP id
 38308e7fff4ca-305f4560b73mr97858061fa.18.1736829940573; Mon, 13 Jan 2025
 20:45:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241222001505.2579630-1-masahiroy@kernel.org> <829e5a35-1f13-4d6b-a49e-8ab1a4a6d249@kernel.org>
In-Reply-To: <829e5a35-1f13-4d6b-a49e-8ab1a4a6d249@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 14 Jan 2025 13:45:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQFDCnoW8_dtGi+FzN1Fzj+2G5aX93og3OO7PEFkpZhgA@mail.gmail.com>
X-Gm-Features: AbW1kvZCH4-BKiV7JjBpQUqh7rXG9n0mFvk0WRgRK8iCmT9tAqqrqQ0xY1Yh3Vc
Message-ID: <CAK7LNAQFDCnoW8_dtGi+FzN1Fzj+2G5aX93og3OO7PEFkpZhgA@mail.gmail.com>
Subject: Re: [PATCH] ARC: migrate to the generic rule for built-in DTB
To: Vineet Gupta <vgupta@kernel.org>
Cc: linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 7:06=E2=80=AFAM Vineet Gupta <vgupta@kernel.org> wr=
ote:
>
> On 12/21/24 16:15, Masahiro Yamada wrote:
> > Commit 654102df2ac2 ("kbuild: add generic support for built-in boot
> > DTBs") introduced generic support for built-in DTBs.
> >
> > Select GENERIC_BUILTIN_DTB to use the generic rule.
> >
> > To keep consistency across architectures, this commit also renames
> > CONFIG_ARC_BUILTIN_DTB_NAME to CONFIG_BUILTIN_DTB_NAME.
> >
> > Now, "nsim_700" is the default value for CONFIG_BUILTIN_DTB_NAME, rathe=
r
> > than a fallback in case it is empty.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Acked-by: Vineet Gupta <vgupta@kernel.org>


Applied to linux-kbuild. Thanks.



--=20
Best Regards
Masahiro Yamada

