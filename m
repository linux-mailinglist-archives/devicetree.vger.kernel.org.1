Return-Path: <devicetree+bounces-1266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 187517A59FE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43AD01C20B7F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 06:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A15BF20B29;
	Tue, 19 Sep 2023 06:33:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A9C13AF3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 06:33:01 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91A92102
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 23:32:58 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9ae22bf33a0so176940166b.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 23:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1695105177; x=1695709977; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GbXneqlvqIGCYRFq8SaQCy+9zDbbsrcbESBLAJ+M0h4=;
        b=Xqb4aqcH/mtSprIbTMmuPlGtNpLgLIFKrFe6vR9y1G8EOoniPOKh2czR4P/Er06XCT
         ToHfJOxlwfLl9cME//Mc2Fkaz31Qyhy48NQaqOXgdz+dqKn4iym2cpF+NJxpTePsbPFd
         qKEEvBr1yOQl2IMzs+KpeCq9zfo3/nZSKzueTDsnvhs/J1hSdrFHU+bpBHNZikZYqffP
         JeOTw9sajiHm3dS6uj+aSDRKrrJjyiUa3ke03Q68nfvlv9pNS0zrJCZQV8EN5T0S7EaA
         qs4KrrnsdW5sJ/M6gTv8LUDzfyJlokOBoT2eBGNAUbMUHWVngDDRjb09JqoDlCsasCCi
         BY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695105177; x=1695709977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GbXneqlvqIGCYRFq8SaQCy+9zDbbsrcbESBLAJ+M0h4=;
        b=D0jSHceRQgX3Ol4ECua3AKWwOruCPQILLAa9qGIrRu063pe89ndoorbGKH0Qq1vFIf
         X9RY5pHcJbrWlQxVIcwIt+9v07ntQtDHhW1qEu9tx1U7CA4bAP0zhLYbw6hcar2kwuGt
         pN6XXGYCYQ/pCNM0dtDvt3eJNM0IhhFB5XeVa6Os/osiCDrd5jSL07m/svNKUwA/rDxx
         mK/YmTGVnlMNc2+iTRcrapAqNWg0X4bE9JJ85awldflX3uS6TGflAzlfLDr4dCq7gi32
         eKaKA1kkqAiihittNHDv9EherzxOfwpiPD6/e40zcmiDXLBNxQNbdGPLrlZtZTppiaoT
         Srcw==
X-Gm-Message-State: AOJu0Yxiknclcto8YlCUdeQeFSMePKDCeNSX2nuDAbFSD9ir65kpgtCZ
	RQU7lB6Zgicba6M2lmbru+Wrm6cGxtD+M2BgkrqiiQ==
X-Google-Smtp-Source: AGHT+IHpV5Vew41sZRDC2b41rJaSvmNBj24K6LKHAVA5Q188InmpQ7BMq5mvfnybMr2PJTT4+AhBMJwTFm7hYcrfhYw=
X-Received: by 2002:a17:907:97cb:b0:9aa:f7f:e276 with SMTP id
 js11-20020a17090797cb00b009aa0f7fe276mr2314608ejc.38.1695105176878; Mon, 18
 Sep 2023 23:32:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
In-Reply-To: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 19 Sep 2023 07:32:44 +0100
Message-ID: <CAPj87rOHctwHJM-7HiQpt8Q0b09x0WWw_T4XsL0qT=dS+XzyZQ@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add mediate-drm secure flow for SVP
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Singo Chang <singo.chang@mediatek.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
	Jason-ch Chen <jason-ch.chen@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	linux-mediatek@lists.infradead.org, Shawn Sung <shawn.sung@mediatek.com>, 
	Johnson Wang <johnson.wang@mediatek.com>, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jason, CK,

On Tue, 19 Sept 2023 at 04:04, Jason-JH.Lin <jason-jh.lin@mediatek.com> wrote:
> The patch series provides drm driver support for enabling secure video
> path (SVP) playback on MediaiTek hardware in the Linux kernel.
>
> [...]
>
> Memory Usage in SVP:
> The overall flow of SVP starts with encrypted video coming in from an
> outside source into the REE. The REE will then allocate a 'secure
> buffer' and send the corresponding 'secure handle' along with the
> encrypted, compressed video data to the TEE. The TEE will then decrypt
> the video and store the result in the 'secure buffer'. The REE will
> then allocate a 'secure surface'. The REE will pass the 'secure
> handles' for both the 'secure buffer' and 'secure surface' into the
> TEE for video decoding. The video decoder HW will then decode the
> contents of the 'secure buffer' and place the result in the 'secure
> surface'. The REE will then attach the 'secure surface' to the overlay
> plane for rendering of the video.
>
> Everything relating to ensuring security of the actual contents of the
> 'secure buffer' and 'secure surface' is out of scope for the REE and
> is the responsibility of the TEE.
>
> DRM driver handles allocation of gem objects that are backed by a 'secure
> surface' and for displaying a 'secure surface' on the overlay plane.
> This introduces a new flag for object creation called
> DRM_MTK_GEM_CREATE_ENCRYPTED which indicates it should be a 'secure
> surface'. All changes here are in MediaTek specific code.

To be honest, it seems strange that DRM is being used as the allocator
for buffers which will mostly be used by codec hardware which is not
mentioned here. I can understand that minigbm and gbm_gralloc make
this easy to implement, but it's not really right to add this all to
mtk-drm just to support some codec features.

NXP posted a patchset a while ago to add secure-memory support to
dma-heaps[0]. This would be much cleaner (e.g. avoiding strcmp on
allocating name, avoiding mtk-drm being a render node when it can't
render) I think, and also allow common secure-path semantics between
different vendors.

Having common secure-path semantics between different vendors would be
very helpful, because the first question when we add new uAPI is
'where is the open-source userspace?'. If there is at least a common
interface through e.g. dma-heaps, then we could have some standard
cross-vendor userspace code which would work well with the standard
interface.

Cheers,
Daniel

[0]: https://lore.kernel.org/lkml/20220805135330.970-2-olivier.masse@nxp.com/

