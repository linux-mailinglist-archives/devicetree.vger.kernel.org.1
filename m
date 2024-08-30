Return-Path: <devicetree+bounces-98478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7D6966444
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 16:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F1701C2139E
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 14:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 219621ACDE2;
	Fri, 30 Aug 2024 14:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNkjsdgP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B9018FDA7
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 14:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725028505; cv=none; b=EUZi1V+Rl5J7nT1jcZmyyxrBVy5hOd+e6iEU9xjfWLVQHly0KHYO5ANd39u3ZW6Vkk1pEz9NqvujW9SUVL/Nejo9NkoOgielnI4xlybL2DCir9xjLR5Nrh/ACLy21IXxlBQU26BsufR3EQZJGk2PGRi5d9GtAZSM5b5Jq5yYIzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725028505; c=relaxed/simple;
	bh=aZ7EU7G2LPLLu3+QRcBX5EtUaKDFmFsPxt3aunPw0Zo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uHNT2qX3V8izXjETKGpmwkdgZFrYy6R5OmDtCCulwYUlVQauxElCn2sbrnwRfd2DvYU3K279tyCWuZ/ZtbI8vpHnxVEcML7UHRfc1f5jZj2uPIRJ4zJxcR6cX68HniN0VbETdXefCZBYwCrdZxkuUbMO6Syrg/6aQUJM+lhZ3Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNkjsdgP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DE40C4CEC8
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 14:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725028504;
	bh=aZ7EU7G2LPLLu3+QRcBX5EtUaKDFmFsPxt3aunPw0Zo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gNkjsdgPyFl8Nzp5ewsNUREUY9CON1yoR0HgaLpY1GiaE9yZvm+CzPcoUwcR92Ens
	 kG7OJz3KyY+PQykV+zpz3rfGcyONUfNGfirnUfK9zRlARKKxXo4yf6PitOg7+Nqns/
	 HuvIaW7DoFOWhkyfG9K/0YJzUbXylF1RSBd4GO4bPDXa0gkxFX1v8WfX9Hdhh1wXl/
	 0n8X1mgH1LEH5cE6rjOalGAmIOS4bSD7senD600j2qKn8HrRWrk2djOu3hhL0119My
	 oM8Vz0uYZ6MfxoOPT4YuVHV3fecOWguRz9xujtwtd7pd+T8yCI6J99R6bVTVVG0O6z
	 0nXFcDFOUCEBQ==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53349d3071eso2518224e87.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:35:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUw81eCvoVdypvyL/OEAssQwxDIttWVlz/KgBXPtgzjOYhSa2kM+weQs+QZulo7OJoFah2FEY5GLHLZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxmqFoehaAuMOL7JjI2HAOBcs6QT0Z2Lr0PMcthuhUbOkLnnxA9
	tU28bNPrrS5uv6UxCXwWgYshspMiWk2M2bLRpZ52JlRTcou5QUTHnBGZF0fDMHc69O5T7a91aKj
	5fC9KB4Y4aoXMDX04IJgoZY2f5Q==
X-Google-Smtp-Source: AGHT+IF7NOjX+GmHIAqjeQXNwg2qAPPBWmOssnharOTfgrRfJbgxtU9VAfFliVqapFPXSedzbwVV5+7TZC7p/OLZ9xo=
X-Received: by 2002:a05:6512:3c81:b0:52c:e012:efad with SMTP id
 2adb3069b0e04-53546af9ffdmr1699238e87.12.1725028502801; Fri, 30 Aug 2024
 07:35:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240830020626.115933-1-zhangzekun11@huawei.com> <20240830020626.115933-3-zhangzekun11@huawei.com>
In-Reply-To: <20240830020626.115933-3-zhangzekun11@huawei.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 30 Aug 2024 09:34:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+S1BkZ_YE0egd5e9PAQBDUhx8CsfP86kSRu346msjGMw@mail.gmail.com>
Message-ID: <CAL_Jsq+S1BkZ_YE0egd5e9PAQBDUhx8CsfP86kSRu346msjGMw@mail.gmail.com>
Subject: Re: [PATCH 2/3] of: irq: Do some clean up with use of __free()
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: saravanak@google.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 9:19=E2=80=AFPM Zhang Zekun <zhangzekun11@huawei.co=
m> wrote:
>
> __free() provides a scoped of_node_put() functionality to put the
> device_node automatically, and we don't need to call of_node_put()
> directly. Let's simplify the code a bit with the use of __free().
>
> Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
> ---
>  drivers/of/irq.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> index 36351ad6115e..3291f1ffea49 100644
> --- a/drivers/of/irq.c
> +++ b/drivers/of/irq.c
> @@ -341,7 +341,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_raw);
>   */
>  int of_irq_parse_one(struct device_node *device, int index, struct of_ph=
andle_args *out_irq)
>  {
> -       struct device_node *p;
> +       struct device_node *p __free(device_node) =3D NULL;

It is desired that the declaration and (real) assignment be together.
See discussions when adding the device_node cleanup support.

Rob

