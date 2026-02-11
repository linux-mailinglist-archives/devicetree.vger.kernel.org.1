Return-Path: <devicetree+bounces-264797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCgbNAKcjGmPrgAAu9opvQ
	(envelope-from <devicetree+bounces-264797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:10:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 471CB12573C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1703E300D6A9
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 15:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE6528506F;
	Wed, 11 Feb 2026 15:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MEZuJJJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DE61DF980
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 15:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770822654; cv=pass; b=MWM2wXC3aHf96Z+8y3tXJDERBQgPZI9/RhyXyyGISCKQy3bfm2nAF+zbRH26Rn1PG8ZwnNYxSRMOuKqVXr4p1UXgsQQjltkuHlAh1fsrHpnffKYKlJUUzJ3QLz4hnXbKziku8Hqo8CVUAEcOvlWl88nqiXGwCM6J8+JxQepPsWA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770822654; c=relaxed/simple;
	bh=v/NwpDEXW8URIUkY/z1L+Djst6hDNgQKVjJgFla+dKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nbZa/xBzFhNI7Qhpowy7NsAcEBeMPQPLD6uIfK7Rvq8wpqbQs2W9vKgmH6cU7eJuUeTTchEjuiZ+9KKPzQHYl8kMw+l0wQS5fIVoNIS+wZdbVBNL/AZxpeu9R1pLYpG1dZ9BdSxzBfNaO0qHVaM/PwxEO14JRJUVj0fBrMDmuGU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MEZuJJJg; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59dd9aef51eso9231069e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 07:10:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770822651; cv=none;
        d=google.com; s=arc-20240605;
        b=TpJS+ADh//YUgLb981wAnF/xLRvjBLYGyAsCHFLrqxsYcrhmyvFudxO0SC4AoNA9Z+
         Wimz09MUZw/9dptOtzDTtUiZQ3hVdqakGBvtIzRVhE5Ou03bJOPms6XCJVzW+pr8qTtF
         I+2PtcoQhDCKzXdQrioDjoJGq9ipT4nXjXG8rXXPRtD3SPvxpNfJOAQYORlfUDW3x6Ju
         gOR915nsq7GXALFwXMVs5CILo6GiT+4Ee6XmaA2GlvCWc9lG9pvBmgTX99EbBZmg5z7d
         2TvFliS7WjRVqzXFogo2aqcALJXftLMFaPmdl6fR/Owa17r42uhTeV9WuexUMUQaI8qs
         kASA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vw7dFvllbuuNMOgLuFdxxq2dkkTEMXjhDuYA+EZxDJE=;
        fh=XUuebnLE0Os7nZDp4FoOQY/tVpb50CCd7W9fPElzgkQ=;
        b=Yg1Ip4e9ofsmvDpTnYQoCiB2898+rT/vYYBIexEW33Cqv++mDdoOHRa4MqjdlakRkf
         u+5JB55/XrE2ysD/THXQMWWdBtjHFLJkxBNjd01ndX1ZNbJOKxVDvhDjImFsy4mV7EVO
         LEXJQFOaI8IUpYeAY4ZeLTMNVt8ugYOH1t0e2F15OzJfPzqPNrnGW0ZkjViDTV70U5Or
         a9E2WpUKSEvDGYwgP06uLRpBXEVu6KIIUmo5oIHZcGi9DkL55Z2uvN/THd+zaEnQ51P4
         4SfvvPKxF2dAmoH7tgSEZjLTEUpxvsh1CVVyYc8dX1GDNuNBjYGpRwOkPFjP6XTPhM3y
         EoPQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770822651; x=1771427451; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vw7dFvllbuuNMOgLuFdxxq2dkkTEMXjhDuYA+EZxDJE=;
        b=MEZuJJJgOxSb1Tlsom2FafI60uNFlMxKCM5uXhFiFGP8U+fzbeB3JUaME+558e34L3
         pyKt6IKs5ucem3FrvvVSs2Hz5yTn2dgCntHXyEyhFlCNIjPllTWoNco8gY+fh4IE+dyy
         xA2dp2tDZiwTrTj5FbBVLHvHlXLPW0BldnojyfSFIOBN27sDPk3u8ZvFhE+3Dsjhi5lv
         FdyldCES6uxz5fL1A7h8pljpU0P/4JQg0z5Ee49Vbibpis5pPCaHpYEL5KhK7jKnGTUy
         EpNSHOIgDo0NDf3NB6NJiFoOP/3UJ4dU9LiiVNNjVi8WbEk/LnWkyLol5/xYiJk/ERyQ
         88Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770822651; x=1771427451;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vw7dFvllbuuNMOgLuFdxxq2dkkTEMXjhDuYA+EZxDJE=;
        b=CMmM2KR8ZElOn2mzQMps7+UM/YfIeHSs43SvEKZf4r6joD0jH/tC+zZpdQ0PtK4mj0
         jQ6S3jJ7juhOKEZPtuMS3TPgtivFbs2Of4RSrQ2c6jULA8PSF+QdzuSeWWvCoZWLdzj3
         WyB6NiHryAXPfR/vBp+vP7464W/1V16t3dHz2NhkYJtH0WRQvq7ouiDitvcI6m4PDYOS
         x9Y5DB5+b30ekwWXtH1k9kcd96izbeJvo9FLZIz+RYhEyz9bDXKY0UrwHRWll/YTJPQH
         e3jHZtRqzKnSJtUSggA6W4tCuhw/8uc6V7LlW0yrXPeCK1gUQejiL8ecv89YpNvOk/+3
         rn8w==
X-Forwarded-Encrypted: i=1; AJvYcCU0Zz6gq5VKCb6Hs+gUFwWbODspkwMZSE5asZ3sgrMIKS+kXeFzcFgcLS7PoCprSd909w1kQOkGuyEc@vger.kernel.org
X-Gm-Message-State: AOJu0YzuvSGvU0RQNscHOurVb+WNtLS0uQN+BftYGGPmUgDn+8hjg1le
	H8GtKPm3Gx9rKJfbWfOXCnvrsISb3JlmvdABZ+6e6PKNQMa227SZTWbk3d9zSJUpbqjAbGGQHI/
	m77fREe7p6Ed3nInvmhLW838La3tBE9I=
X-Gm-Gg: AZuq6aJnhpkPZ60N42Qjymv7f8PFrzQnT2MDO+EFvzn3f8kyjr2INTgaUp3xtseTEiC
	QBVGNJVwzSWsY0L3CIZAmePd1U3JnUAci0VyOSW01Iqyv7CLTLAH/RIEQCKfOsoFfDUyh1eOLVl
	8go95iRfFgzgt1QPhN9DLr/CCOTaudZHLXkZXOxZquSOpSSiGpoezszC6ncEXG4xpAiBsRV10L8
	9VX26P2XWPYvi0ObLRzDagPMe6UVjAZdVWJhLBwd5aIC+EW+cIXDeUlxr33eP6lYk9jQFmc2sdt
	2FZpP49dNNA7QPcOEMM6jPGQ8+B3eBYOd5pcqmsX5Q/gF7jDfYSeGOBzCd7WVhHL4qnfzA==
X-Received: by 2002:a05:6512:32d4:b0:59e:3c74:82e8 with SMTP id
 2adb3069b0e04-59e5e06da05mr942628e87.31.1770822650516; Wed, 11 Feb 2026
 07:10:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207-sm8550-abl-dtbo-v2-1-83afaa6f3ce9@gmail.com>
 <d4faaf8d-1517-4187-8801-a2dd52d8dde3@kernel.org> <CALHNRZ9k3yxXb9OfYXMSfEwyYKU8Rrrrjb-hPqLgU90X9YBP8g@mail.gmail.com>
 <487e4605-0a21-48d6-8b77-9ce2799ad212@kernel.org>
In-Reply-To: <487e4605-0a21-48d6-8b77-9ce2799ad212@kernel.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 11 Feb 2026 09:10:39 -0600
X-Gm-Features: AZwV_QgyFC3eowlmQ2KswyEQEpd8ePKe-ZXnUB3wzPTUgo-q4RyYCGflCKouI5A
Message-ID: <CALHNRZ8sqCpUMyCFP99b7nHu2onojZ0EY6YGQZ9RMP0kH8jWzw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: Fix DTBO boot failure
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kumar Sharma <quic_vksharma@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264797-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 471CB12573C
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 1:51=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 08/02/2026 16:10, Aaron Kling wrote:
> > On Sun, Feb 8, 2026 at 3:07=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On 08/02/2026 02:16, Aaron Kling via B4 Relay wrote:
> >>> From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
> >>>
> >>> ABL requires certain things in the base dtb to apply a dtbo. Namely:
> >>>
> >>> * A label named qcom_tzlog must exist, but doesn't have to contain an=
y
> >>>   specific properties
> >>> * The timer node must have a label named arch_timer
> >>>
> >>> This aligns the sm8550 soc dtsi with those requirements. Without thes=
e
> >>> in the base dtb, when ABL attempts to apply any dtbo, it will fail to
> >>> the bootloader menu.
> >>>
> >>
> >> Incomplete DCO chain.
> >>
> >>> Co-authored-by: Aaron Kling <webgeek1234@gmail.com>
> >>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> >>> ---
> >>> With a current mainline sm8550 base dtb, ABL will fail to apply any d=
tbo
> >>> and fail back to the bootloader menu. There are two changes needed:
> >>
> >> Since when? We were testing SM8550 (me on QRD) all the time and there
> >> was no problem.
> >>
> >> You need to provide details which hardware needs it, if this is about =
to
> >> expected, but honestly, we don't add such nodes/labels for downstream
> >> bootloader. Qualcomm should fix the bootloder instead.
> >
> > This discussion has been ongoing in a couple places. It is needed on
> > all semi-recent recent qcom socs. See this chain [0] on my sm8550
>
>
> Explanation must be in this commit, not in other places.
>
> > questions thread and the previous revision of this series [1]. This
> > has been a known issue for a while, see this comment [2] on the gunyah
> > watchdog series, which is what the series was based on.
>
> But that [2] still speaks about overlay. You are suppose to boot
> standard kernel with typical setup - concatenated DTB.
>
> If you want some other ways, like choosing overlays by ABL or whatever
> else, you need to fix ABL.
>
> You want to use some custom boot way of ABL, but it's broken... yet it
> is no reason to add these properties. What if I want to boot DTJUNK
> files via my custom ABJUNK - can I add such things to upstream? No.
>
> You cannot add properties to support custom boot of ABL if that boot is
> broken.

My use case here is an open source Android rom. I would like to think
that android would be a supported use case. Not necessarily a driving
force for decisions, but at least supported. And I'm using the
standard boot image v4 setup with dtb on vendor_boot and dtbo's on the
dedicated partition. This isn't some weird and wacko setup, it's what
the vast majority of devices this soc is used in are designed for.

Also, the vast majority of devices can't replace the bootloader. This
isn't an option, the devices are fused. The qrd and hdk are not
available to consumers. There are a handful of qcs8550 devices like
what I'm using that are unfused and thus are able to replace abl, but
I would prefer not not add that extra step for users to install my
project. Plus, I am trying to not just make changes that only affect
my devices, when they could be generic and benefit all devices using
the soc.

Aaron

