Return-Path: <devicetree+bounces-261863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wB38Oei9gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:08:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A320CCDE93
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:08:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FBF530472A8
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA34374725;
	Mon,  2 Feb 2026 15:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dcQ7YMOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673047E110
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044438; cv=pass; b=eEzD4vAGYxzIuy9omLCn3vgXcQTlhw1vOjUwhyRAoTlBS+5bXUK2w+2LyuqbW2qoCcYVwZXK+0c9zYk+6ZwK5P+jalVoYV90SF1a4n6UuG2VXoFfVpIBLhQ1u5GznO8P0ks6dJgqDDYf6+skMjYnfvQiqUvuM8M2DljyNSbrCg8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044438; c=relaxed/simple;
	bh=/f5J2Sr8vMu8D3rzhsrUy2kkF1nH8LK32/MXs2Qtic4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N6Xj/iFfEFYcfHJGG5IGA3WZE2Xlt+4Ov0gGjUKWoVZ/+iOwTLv7aozXdLZNu1iiJj78umPrZTd2VFlGNbUiQMD1gpWcJ/LxTval+0mxtFR6Asafen6tu537y62IoqY33jEZDkJ6+O50C0xihv2VMEyc5OrpYV49gkBkkk5Dxbw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dcQ7YMOY; arc=pass smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59e0d5c446cso5538731e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:00:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770044436; cv=none;
        d=google.com; s=arc-20240605;
        b=h2WHmTeBc2Xp6dGyDwB8dvIjoZBkoY0hhTpF2356o1MzWF5o4SMfTxA9aQq36iRSJz
         i98Yvvo9+oD6o6B9Ys4LPrc+oQdmW/3vpE7pDQe1RLULsanI6IeSK7Q0f/cNSw36raDV
         LPO+GitmzkxE2EtFbPYHF6s5OM7peob/+Rjx2G073FKVoXZGVgloyRD5fHmP5jABVQaa
         376KRb+RNe9C+Cm2BgklS2hUVjwvhUDPFPq6nIvUvG3QwiWzlkKYyKSnG4EG3sFCaCW6
         ph0W+1+ztjakAS3oA+4wx6u5Agwn2yajjsSGQzdkL8DdOlgztMSEAGStFzeCazlq6pgC
         tVlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tjY8IMEcwraRaAcklulnPu0XEgItry8qPQsBSr8viBU=;
        fh=wnKnENWOe9dGyDwb5Pp/DIS1Ol5nk/ALg2PTWthN8UU=;
        b=Pxk1qnu0TsPkI68GKpofFoFepyw6IFAjBZqsiYvC8xiswVNXyeoyDk/rWB3QLrFF3H
         r0SE+3TlvDvTP5Z5aEeZ/7zCEqYUVSFvJgtWjcCmX+ZGPe0RXyEg92+rYlMWuLKa1Mjk
         fCdxAUKf4KEda7P5+9sAl5dVYvIyl7lDa7nMyrXcg8UA+E7Q9bQqwpG6WpGqlw1/MdjW
         bGTC9M4URwQQXi9vpHcKZuI+nLW8okbK0jpffy91lugIptLgoBbhR9XFzw+DWIID+0in
         e+3uRW242ybT0AoYVCxhR2iiEmK8tU3vVS3FZFmkMMrVbcZr45PQZGmkmrYmdMmHtDx2
         hEZw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770044436; x=1770649236; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tjY8IMEcwraRaAcklulnPu0XEgItry8qPQsBSr8viBU=;
        b=dcQ7YMOYW9wxccJztqL+nbMIdmfMOz/nk2Lx1NVMIg5y6Dhx2/JHttwfR2tHklV2xC
         FJBqp7QYagpI398/2Orvbahpk87XlxanjEVYErOAU9BruEhTbSjyRSS8VpSBRWsMqZu8
         +tqvlXUVIAZ0aIgXnDkozhFJd1VX2ztzNnQajpO21iJx0fRqyi0PxGkERL9w2J5potYL
         frglArS7XtjUz2vIVeNfVm7NxggpmQeiNv8rfOZWane5iDczTkaCK9O0baFxTQjby8EM
         5bdWDVneEpGic2u3sUE1iE58MRTBMxx8HyEfeAB3P76HIOMo5ah7uUnsgtv4FC/NUv0D
         0uXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044436; x=1770649236;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjY8IMEcwraRaAcklulnPu0XEgItry8qPQsBSr8viBU=;
        b=Bfdp3XxOr7Ay93ZZHuojBVJ0SHdUTjPs5MymXTsKJyPOJqsdzyM9lDruvyeUdRia8X
         Z/KlWJyqc9AZQyCz5+ZJv+Xg+aKEUi8DGx+qvSgeq7NNj1e9oITmpXjOvLhVx6MTgGgt
         9ZgSagMB5hn1G78Zfs8PPmUjm9e7flT26NTxZDMmw6CRDwbqraG65XJd2woLm43SZo9D
         uN6WN+H/RhmRhNCS8DY2X6e5ZGh1z6W848mz4HeuW/K8LEMY7b9Ra8mAoJ+kgMP7t1Sk
         CqbGqqquMRrUHdEKEB9Vy96MG39d16qVZ9Iqtu0O7O8uiGrvmLHR/wuRlnOz3FiH7cuc
         wAtw==
X-Forwarded-Encrypted: i=1; AJvYcCUtVDpCP4QTNiSlWa1buXnKdMv31Wk4G0Y2EExnS19N4amw/gmHVOlMjhSyn5ryGcAiZ/Zxyk7tUq/E@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Am8zCa6h3qScxzVzy4o8+0CetK1vgYC9JZQEEiEtyibl4Qt2
	ny80qHwbPRu8YMsop6BmZZXslLohZFPhvZOh6QD63sOSdJHPX81iPq333fQuJYWQkmRBc8wWF66
	ViEYTaipA0HHz7/AW/90W2FZm4Mau0yr6TQsTTBZlUQ==
X-Gm-Gg: AZuq6aJNk96ZaSnmRR91UFPoJlG+4/sH1rLCP2KKQOUesWcguwsDSmqOGxgjvlbxvHj
	HK247Zd4eXT0fMbi40AelznSmUaZIBwzImBb9vXDuAr0q3BQDeZ3ANVMXDtfBh2/WFsszqo6rw+
	1Hj9Hj6y0i96YvVJAboUrpjNe+ND0YU6n9qulbNKznahKdCW0dxdR+rHB+1GBFHJZZHNGJRiIJD
	+vwYptFuuVUUEb4aJZMThv1yZFbKg9J1EFtmFgiLUtyy/IvlBfqyxcSNBHtWg66ix/ARl2c
X-Received: by 2002:a05:6512:1114:b0:59d:cb2c:9b60 with SMTP id
 2adb3069b0e04-59e16443c8cmr3908427e87.40.1770044435428; Mon, 02 Feb 2026
 07:00:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202064820.347550-1-irving-ch.lin@mediatek.com>
In-Reply-To: <20260202064820.347550-1-irving-ch.lin@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Feb 2026 15:59:57 +0100
X-Gm-Features: AZwV_QgUchHwCanQC14NjkrQfkr08G0f7AUahWDnGm1YzWor4lHgCWR2MlI4fGQ
Message-ID: <CAPDyKFokrMP05rqbACON-ov+=diKpRfxywEqyuJHNnUk72L4kA@mail.gmail.com>
Subject: Re: [PATCH 0/3] Add support for MT8189 power controller
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <mbrugger@suse.com>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com, 
	vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261863-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,suse.com,vger.kernel.org,lists.infradead.org,mediatek.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A320CCDE93
X-Rspamd-Action: no action

On Mon, 2 Feb 2026 at 07:48, irving.ch.lin <irving-ch.lin@mediatek.com> wrote:
>
> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
>
>   This series add support for the power controllers
> of MediaTek's new SoC, MT8189. With these changes, other modules
> can easily manage power resources using standard Linux APIs,
> such as the pm_runtime API on MT8189 platform.
>
> Irving-CH Lin (3):
>   dt-bindings: power: Add MediaTek MT8189 power domain
>   pmdomain: mediatek: Add bus protect control flow for MT8189
>   pmdomain: mediatek: Add power domain driver for MT8189 SoC
>
>  .../power/mediatek,power-controller.yaml      |   1 +
>  drivers/pmdomain/mediatek/mt8189-pm-domains.h | 485 ++++++++++++++++++
>  drivers/pmdomain/mediatek/mtk-pm-domains.c    |  36 +-
>  drivers/pmdomain/mediatek/mtk-pm-domains.h    |   5 +
>  .../dt-bindings/power/mediatek,mt8189-power.h |  38 ++
>  5 files changed, 560 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/pmdomain/mediatek/mt8189-pm-domains.h
>  create mode 100644 include/dt-bindings/power/mediatek,mt8189-power.h
>
> --
> 2.45.2
>

The series applied for next, thanks!

Kind regards
Uffe

