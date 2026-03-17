Return-Path: <devicetree+bounces-276669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIc5DahNuWnj/wEAu9opvQ
	(envelope-from <devicetree+bounces-276669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:48:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0762AA1A2
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:48:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 068873043009
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553463C5544;
	Tue, 17 Mar 2026 12:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KMrrbhaN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFCD3C456B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773751609; cv=pass; b=QHHtGKBZGSMCijuAaBq94+4OZPic+lKWsvch3ogegjaxo9zXfkGMFspTQfO/J3e7wLEpg4SUECMpvmOJMmqcz+Xt3mmMHA8fbBlgRvnyOKSkqNcH04qUXmK/V9SBL5AHc5sTvcKqkVthS3ds5meI7Di5LEcSbEMbEzvt9Xx8DGg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773751609; c=relaxed/simple;
	bh=mYjGwKJGXb9AdcAJcVyQZLzkZJfik89IS4+cyqBDMrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TL6BJJWQJQjr2lQCHgRs/N28W9miAM//x6FNBucujBegvYei9j9c7WcByye7lNa1jphmbP00nyhUlhkD4wq7jEOe8b6qCXcFQRNHtPTNW2ym2q/rdV1jyBx3ugb+0T3rJAQxP0nLbBrZArBKMVawx20fB80k10HxXQKdWgI7n48=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KMrrbhaN; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b9358bc9c50so709699066b.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773751606; cv=none;
        d=google.com; s=arc-20240605;
        b=BTGil6dxnO9XMR+FVpsa5D5SiQq+oE5tJVlAkz7V4K0GIMQsTugsSQqLh00EfhuyDf
         DGwkdReXyZ4ixGTYkNMLSOATmKd7XfDQf2Pq4koiXZayp7YhGo+j2CzdTOn1rUJST6qM
         Vk4ZanJd4zzuWE1CFOk+jCmvNVbFm5s+eOZk6aH51xXbwDh4iDnimARoQ8gjqUQNJPQ0
         FaztGDtClF74/O2qTrAIbn6v5p5PZmX4zM5xqORrqRFfWOrJIsFtl/mbi/bSOqCfL+wQ
         p0lTMJSMA6DYKyFJ0aUsy5wiLlfLQ11nlg15a147DXFAefBGbjuUMBF0dSUm/CW4C5u6
         dQ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+JaAdR+BAKKabnEcn2fmDmSU35qTJcdB+x0PjifxyzA=;
        fh=xuD/2Z87vCHGS1XPN1fjyPc/K/Tj+AEFrXUApQOSR7U=;
        b=Bl3ArfWHOjcGRfHUbuB+1MdPGxn4ODBJllhF6TBRNeUfsmainfNAxqJG6rfeUPml41
         bqG30Tglbta9PPqCeJha5KgZcbdOPNLeNQ3w28Mr335R2sUmULE1P+7MOhJECh80ETCb
         6TSMDxi8u4kIQSts2HnP7NqUKki4sZvdV09aAX8s5BCoRi8duwEHMkRBBQ0GfbDBUyoo
         EeOTrT+eN6sUU+cExAJxJpDi4pOkMZhi19howPWNityhXF5Mk64Zb9ZuAVPyX2u3K1fB
         3koFm/4UjZODd1SIEH0cb8yTkL9s80q5D85hfZBvAjNZspvXRorozLrQghB0N7kt8g7U
         SoVA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773751606; x=1774356406; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+JaAdR+BAKKabnEcn2fmDmSU35qTJcdB+x0PjifxyzA=;
        b=KMrrbhaNuwNNANo2/hQcNx8kTR51uAplPxKS6Se10KwBRAC9R3OHVdTJKE8+FX6BWe
         zdxMm1dhGJ/fIwutGpoxJ+/qG285q0FhxmYUqlCgxgK5BFO2e2GHydqWTrut0KMtNgsD
         kJ0f1PBmK/8vuC9SMAJxj8HerbbMhX/4zARcbELoXS0Sn5S1Y7g6eWqM+ZE+nRizRt8n
         cUw5ReZKZC5VghCQjTUCejBbY5Qqf4O+Vpo4O3xcEJfMpg2w0fIh+KaNQHJ25jMes4rG
         g0ToivDUYRdQZVEorWrjnU5EVMJT2c9PjpLxzFuhbplTJ4zCO3gcdxSpJ5x6Hz9B/ps+
         cb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773751606; x=1774356406;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+JaAdR+BAKKabnEcn2fmDmSU35qTJcdB+x0PjifxyzA=;
        b=gFe4TwMcAQrHzRmYvh9fyCiJBb4mBivrGhoayQRl6Ujks3YQVqUaQQx/4rhHaswI/E
         Q+TjOZHrTiuynBV4jyABJ1wo6+fgR5AjeAgCOnoPSJU4QCVooSFecgLrLN7xEEax6UR2
         4ET+iye2mL2qqRuAwYo5pkGwq24hE3mCBtuvcD8hNXQYNAIVJVwY2LZLctBPWVAnP6+R
         5PP425KVuThTrsUF7UnNzc0qImNJGCAsEdLAVBpuv9DPb2LK0TcLmYkmuX1oh8kLoQlp
         jLVqqVEFGua43GU88LjOuTb1WPodLp5aMISJdW+LZ3hJbyHaYQEgRtIkdg1To2PxQfqw
         wmXA==
X-Forwarded-Encrypted: i=1; AJvYcCXXl4E0tuy3kCDpArlIVOzLP46tMiuWOo/b/QJGH4TxlgrxqIUwO0IjL+duBxdS6qLsJph3br/875LN@vger.kernel.org
X-Gm-Message-State: AOJu0YyfNVuW2ZCNgE9BZ80BzM+BXpguHeizgBpaQIJm/ZYN5JVkGND6
	fu2dyz8OY9k0BRUvBEFFrfJOg0rHCAamZzUkOJWyxTM0MBK9Rp+OoIEESwsxI8luBMRkyuWqXbf
	tjjVNe6vU4nvcWTESIm7W7+kZOJ8EQaA=
X-Gm-Gg: ATEYQzx4doxhUdqPRfub5TKyk4g1o1ZDrsP6RgOSaM8Ae4e0nw9P8jghuBAhVCGaYJ9
	FUIQaai/WyH4JLnn7nTzWzOFj6pE4P1Fzj5fscvmfzpZ3RzeMI5pRUvz2QKr0tW5iDayVSok791
	N3ROFMPv10D6QpOIdh2jBXi1lrYSXdRqglWePT/AuSqlEX35MKRl5PRUdx7vkZpdHyCgfnb7WGl
	I96GU+hVBI0SCI576k1ofsUyXsE0Mak3xELdB+KZntd7FZp50KEsc3ibYbpqEbuNgXN3ieW5tK1
	bsDBLOP5lw==
X-Received: by 2002:a17:907:746:b0:b97:6384:2317 with SMTP id
 a640c23a62f3a-b97650e5609mr1098522666b.17.1773751606032; Tue, 17 Mar 2026
 05:46:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1773107475.git.zhoubinbin@loongson.cn> <cb7062433863aea0d66959fc0f4aee791cab6402.1773107475.git.zhoubinbin@loongson.cn>
 <dea0bc84-c039-449c-8a6b-652062df75aa@sirena.org.uk>
In-Reply-To: <dea0bc84-c039-449c-8a6b-652062df75aa@sirena.org.uk>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 17 Mar 2026 20:46:33 +0800
X-Gm-Features: AaiRm536vGSN7n9-qJm9TBI4DE0o4d3kzNfShcfuQTENhCd8atZI4Bolz7w2-c4
Message-ID: <CAMpQs4+ASJ=ZC9wH49cnSGk8BRMx35P-OVdxzYW-pXsN6QwPEQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] ASoC: loongson: Add Loongson-2k0300 I2S controller support
To: Mark Brown <broonie@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276669-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[loongson.cn,kernel.org,gmail.com,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8F0762AA1A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Mark:

Sorry for my late reply.

On Thu, Mar 12, 2026 at 12:15=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Wed, Mar 11, 2026 at 02:37:48PM +0800, Binbin Zhou wrote:
>
> > Due to a hardware design flaw, PCM_START requires an explicit reset.
> > It has been tested and does not affect other machines.
>
> Are you sure?  It just does a reset whenever we start a stream which
> means if one direction is already running the controller will get reset
> underneath it and disrupt things if the other is started.  If this IP
> requires it I guess that's just unfortunate but presumably existing
> devices don't require the reset and will be regressed.

Sorry, I may have misunderstood that.
We just need to soft-reset the controller in
`loongson_i2s_plat_probe()`, similar to `loongson_i2s_pci_probe()`.
>
> > +++ b/sound/soc/loongson/loongson_card.c
> > @@ -61,7 +61,7 @@ static struct snd_soc_dai_link loongson_dai_links[] =
=3D {
> >       {
> >               .name =3D "Loongson Audio Port",
> >               .stream_name =3D "Loongson Audio",
> > -             .dai_fmt =3D SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_IB_NF
> > +             .dai_fmt =3D SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF
> >                       | SND_SOC_DAIFMT_CBC_CFC,
> >               SND_SOC_DAILINK_REG(analog),
> >               .ops =3D &loongson_ops,
>
> This changes the clock inversion for everything - should this be
> parameterised as that seems to be a fairly generic card?

Okay, I'll add the new compatible.

In addition, this series of patches seems a bit disorganized, so I
plan to separate the first four patches into a standalone patchset
focused on code reorganization.
I plan to add GPIO-based headphone detection (Headphones Jack), which
will be used by the Loongson-2K0300 SoC.

--=20
Thanks.
Binbin

