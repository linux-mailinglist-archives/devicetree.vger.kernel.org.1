Return-Path: <devicetree+bounces-70236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DED8D2E9F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F97128A916
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A989167D87;
	Wed, 29 May 2024 07:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZTJSoJTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898AC168C04
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716968558; cv=none; b=jUYNtB0M9qPGRYS3QLiAwm+/fbFXcQ6AAj4evZBEycoaYwGa7h23wPQsQGCZtFSvkoUkPnfHhY21Vz+rxftZwCTTofd52X8XzYBPyBE4l7TYBLvWYtRt/dmAXTjIFXVDNXeb6to/an6X5mQ/cckmtEGUU5Zx0YIO2eaXZpmD5cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716968558; c=relaxed/simple;
	bh=VaO3aHdjj7LC1VgBgX7JPhJKKz+gG9+KGKvv6CQHqWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m7Mp/IrbdBrt3hjFQFV5JDCgIE/6nO/4A4UI2Uo/nsHIqwMbYKT/EClUEu1UebQ95K9Ed1LRtCXTcioOWT15YmhrFOzufef8uZNCQwsYdYmKyRdbJywEd/+19Hm6SJtins080xHK9VdbHYvDshiGO2H5eaKCkJlJNaIcaxadrsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZTJSoJTh; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dfa48f505a3so360688276.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716968555; x=1717573355; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaO3aHdjj7LC1VgBgX7JPhJKKz+gG9+KGKvv6CQHqWM=;
        b=ZTJSoJThrQhp+SaoTm/739lhKfsnV8i5MbhXOQTGngoH8u68i0TC8kTs5ZcK0YgXjv
         7QCfiznOirg+GGjiEyFyi//9LfPODRgNKZ5zl0CvdffdBExzcIBIZq8GfzcTMHxa4Xdk
         5AZpDPTtJdjNlOezPKd8KVVy4lc5Zw+qP6MOva2wAt7Wl8lKaSIHhxtmybSAQNb2cr6F
         BkoDH8yhWnjKCERTST1WnVZYyr6HdJTbOMRtEYO50xZ4dIwp/+fV4yU+MDsJ+O8MFucd
         fet2GXJ5Mr4sXzLbZxLSn2mBuQ08hDEyjLxZwvoCywQ7G2bEfkIqrLGxkK4KL6SR99xZ
         uZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716968555; x=1717573355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VaO3aHdjj7LC1VgBgX7JPhJKKz+gG9+KGKvv6CQHqWM=;
        b=vBng2oVP7MWaqB5pz1oyldW8RyRhs9s+b15JDIujs1Da2Gnm/thUO+alnB4Vkc5Uzr
         6riu2J0dICj9n8JGDuqv40Uvym6/e23BsNol0C7FkKfGy64U16rYicusYY/ZlCKNgQbx
         dNOwGO9LTTa94rzJyZI1tt2xzKKOfw206DKf/PntSEFyns36M2IJ6xCdgkyj1jwOTMt3
         sqBrj/ZwMmZBPP6HGdnfeEHyhj+is/2hMhtCY2LOZHKQF6XLqkO4M2/uaeILAOvap3dP
         w0X4m76tmMnyECrZc7yku7u2a1Vg3iVUxORzEq/JCPOwjYN62Z2+CBv89+uRhnv/V5bb
         oBXw==
X-Forwarded-Encrypted: i=1; AJvYcCXuNiaPoHSfchXTpsLDPyaHH9DGW7FnFv5yvDocRF8t62vo8CdFBo0+9YcG8hiW/d/LjV/5VHkDtZ5iHeNg8SHDJllkJNTeAE2R6Q==
X-Gm-Message-State: AOJu0YxX+It3okqQ6ABgG46qrvmuLu7np8wKbz/a8xbH2CCEV+/hWxBn
	YYMTXEDRvatDdhsh+eJF1mEmhLLdRAuQGaK5P9upiAEl1NLN4awEsXpQnNFW6+SxJvgIs8+GqYw
	oEB+nFSXlposIGmyfiCk/WBVMwqgqBxabYQ95dw==
X-Google-Smtp-Source: AGHT+IGFvz606hz3gC7JBXtHPotg3mTma00HFlofyRFsegTt///1sv0tQAk8wPQUbRZ5YVVVf8iIKVOpjk0LeEAjzLs=
X-Received: by 2002:a25:7446:0:b0:dfa:4680:21eb with SMTP id
 3f1490d57ef6-dfa468034e8mr1388083276.43.1716968555460; Wed, 29 May 2024
 00:42:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527115933.7396-1-zajec5@gmail.com> <20240527115933.7396-2-zajec5@gmail.com>
In-Reply-To: <20240527115933.7396-2-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 09:42:24 +0200
Message-ID: <CACRpkda-egxVtP8Tan9T_EfQX6ekqQDf3LaVUu0by7aWY1Qmag@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add OpenWrt
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sre@kernel.org>, Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 2:00=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> OpenWrt project (with the help of MediaTek and Banana Pi) has produced
> its very first own hardware. It needs its own prefix.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

