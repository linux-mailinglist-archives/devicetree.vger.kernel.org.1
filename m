Return-Path: <devicetree+bounces-24690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E97C7810E29
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FBBC1F21197
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6E5224ED;
	Wed, 13 Dec 2023 10:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PqjWfS0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BEEBD0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 02:15:55 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a22deb95d21so259695666b.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 02:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702462554; x=1703067354; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m71FV5vGmPVywWzxoFuxmmARDOatcoG5xbVNtimxsKM=;
        b=PqjWfS0J0LTq1aRD/+QxD77CcgJqq0x1kPEoUfQTOrYeSNEH9TyCrmOI35mB2kihcB
         LtZYQoj/x4jpLOhf0wmfAMdoa3gljesec2sZ4bpSSZsYv2B8BVW5fjEZbKAktmMRnedk
         bK4EWVell39DNEmYIIoyg/cmxP3XAmS8h4wRjFkD+lGxm2lE6RxBsJOSIigTVHOYGzSQ
         h0avvBLvvPWuPwU5NgfAzOVMcuarh4nO9lJ0fRmXzXI90FZEjXEQnT3QcdYDLqoW2ysA
         aFBge+wfUzXSoIatSBkEivrAEST2TQYsDD/YQ87mZImKw5fQsIvdmmCxBISg3uDLKjg5
         /VEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702462554; x=1703067354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m71FV5vGmPVywWzxoFuxmmARDOatcoG5xbVNtimxsKM=;
        b=kIGfIG5aEwPCUuRLDPq7uAWdxaMv+bOXfth3pzi/dDqezBO4SPTUJkOg8vSP1psmPt
         qcMZwflwzzCpir3SOAAmWu2tMyZUbBw8SFXErIQHPY4FZPvW1mhs3u2yKnApyZi0oCQl
         eEfWAF8YjxAcV5bUxAWeaDx4HTcxKy0JXzn+BZdj+jRqXQkmWye1He3CNz6QlX9q7h4w
         G3FHkaWVo8uMpdWhs7Crk8xlPDyIz6S65dDxwncZeAZoXJEQlHRpxJeilFGH2QOHPn+V
         7b7KT3E2wQNhCxjNmvPdI1Tkrti2CrL+5Nw92RytQADuggIS7fdrJL5bfo/kT2wpPRVp
         Q40Q==
X-Gm-Message-State: AOJu0YzUbju2E4z5iuikWc9dyojS1gIIsjNYPHNED5dh6MZe8zKLjJMb
	vmGCNpithrc61XIRVviiGiuSrQ==
X-Google-Smtp-Source: AGHT+IFLhx9mrchCh5E2ylqHbgPhyi2ITVUtOX/P4qGORrsYs/M4rF8Vci+B58KQG68twiIyDl6XRw==
X-Received: by 2002:a17:907:9905:b0:a1c:f745:e0b3 with SMTP id ka5-20020a170907990500b00a1cf745e0b3mr3808358ejc.97.1702462553820;
        Wed, 13 Dec 2023 02:15:53 -0800 (PST)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id q18-20020a17090676d200b00a1d9733f2d9sm7400403ejn.209.2023.12.13.02.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 02:15:52 -0800 (PST)
Date: Wed, 13 Dec 2023 11:15:49 +0100
From: Joakim Bech <joakim.bech@linaro.org>
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Simon Ser <contact@emersion.fr>, Yong Wu <yong.wu@mediatek.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jeffrey Kardatzke <jkardatzke@google.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Vijayanand Jitta <quic_vjitta@quicinc.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
	linux-mediatek@lists.infradead.org, tjmercier@google.com,
	linux-arm-kernel@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
Message-ID: <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
 <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
 <20231213110517.6ce36aca@eldfell>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231213110517.6ce36aca@eldfell>

On Wed, Dec 13, 2023 at 11:05:17AM +0200, Pekka Paalanen wrote:
> On Tue, 12 Dec 2023 16:36:35 +0000
> Simon Ser <contact@emersion.fr> wrote:
> 
> > Is there a chance to pick a better name than "secure" here?
> > 
> > "Secure" is super overloaded, it's not clear at all what it means from
> > just the name. Something like "restricted" would be an improvement.
> > 
> 
> My thoughts exactly. Every time I see "secure" used for something that
> either gives you garbage, refuses to work, or crashes your whole machine
> *intentionally* when you try to do normal usual things to it in
> userspace (like use it for GL texturing, or try to use KMS writeback), I
> get an unscratchable itch.
> 
> There is nothing "secure" from security perspective there for end users
> and developers. It's just inaccessible buffers.
> 
> I've been biting my lip until now, thinking it's too late.
> 
The characteristics we're looking for here is a buffer where the content
is inaccessible to the normal OS and user space, i.e., Non-secure EL0 to
EL2. I.e, the content of the buffer is meant to be used and accessible
primarily by the secure side and other devices that has been granted
access to it (for example decoders, display controllers if we're talking
about video use cases). However, since the use cases for this exercises
the whole stack, from non-secure user space (EL0) all the way to secure
user space (S-EL0), with various devices needing access to the buffer at
various times, it makes sense to let Linux manage the buffers, although
it still cannot access the content. That's the overall context.

As for the name, it's always difficult to find a name suitable precisely
describing what it is. "Secure" is perhaps vague, but it might still a
good choice, if you carefully describe what secure means for this
particular heap (in the source code and the documentation for it). For
example, the definition of "secure" for a secure heap as here could mean
that buffer content is inaccessible to the host OS and user space
running in normal world (using Arm nomenclature). I wouldn't have any
problems with calling it secure if, as said it's defined what we mean by
saying so. But I'm all ears for other suggestions as well.

Safe, protected, shielded, unreachable, isolated, inaccessible,
unaccessible, fortified, ... would any of these make more sense?

> 
> Thanks,
> pq

-- 
// Regards
Joakim

