Return-Path: <devicetree+bounces-198456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB977B0D109
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 06:58:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5C061AA56F9
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 04:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08C728C2DE;
	Tue, 22 Jul 2025 04:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LATWByUv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7B01581F8
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753160317; cv=none; b=p4MSNdJPs3/TryPQQLU83vY3bWDDYlxf41XJWcV/C4AragPJsmGUYHekbgKz91TE0gqKX+j1gy9V6kuPjCuosv7Vd9dR3ATHiXu9tP+B8bItDLdWcs6iHwjaKJtt61MRUEf3Nmg9ggVYg35UN4i1yw3PDYp3XxEOoMtg9lPenHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753160317; c=relaxed/simple;
	bh=zUf4AlEkQu4akq53baJqj49MOp0hPw1pbtMFQqaD0kY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GeBmBixPPcsni6CPMjOJK0eQF/+a0m/4t6iyp+uAJBedo1Wd65LZLepydA1AjFFIqqM2FT5fnKBpRThxa0hj7QnE5JBZ0KiaXf/1UuQDxdo0WNVufe7kGw9lEr5o7x0/o/UNME1glkkpR1+2LLUnMLevINXi9AuS0ifXW4m/53w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LATWByUv; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32b4876dfecso53796971fa.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753160314; x=1753765114; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUf4AlEkQu4akq53baJqj49MOp0hPw1pbtMFQqaD0kY=;
        b=LATWByUv+olVJQNT+w8RvwbcWmVtfd0mY+op9jUDOoD+KPeFMa5+wbaSuwprYc4uEi
         FUKxxdArznBM66EcWk9sE0iPorYYB1lbWPJwEqGW3SMa/osFVije2FzTCXItK5I8OfPR
         WG+fq1LtZkp/o6g3pZd7lKSc6jhE773tDVpAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753160314; x=1753765114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUf4AlEkQu4akq53baJqj49MOp0hPw1pbtMFQqaD0kY=;
        b=Qj0jHkI5IOFARp0ieDPapuJwOU9shvO1Fd3OMPJci9Y5KlvHBW0kgcy6seUARTk7r8
         3v3bCguOuEumjJiJVDaUAgFzJLGPwmWnO5mY3KTc9Gdsa+hhrBa8KjAzdwGEqNzCxkuP
         xxJCFsouPU3u0BAGk4B+eHpN7ur470zPPvfgzBJF3EbSKB1KavgZfsYQrQJn1TFWmyyw
         ssmwDy/B4vi/vKwpCt548pyNUSocee1Rdk/DKgxbsto0ZM11vnN5XmjKWufoIsuegcUj
         rK9+KR4N52SDk59c5qiV7s8rRBLwdEkGM8OFDyr3D6GnCZpOU7orafB1doDX08nZbzuK
         mBag==
X-Forwarded-Encrypted: i=1; AJvYcCX3LjJtnN8pcafZjyTg67iocKOWohE6/oQsR/od6A501+DiFTZFurKh2OqWHfRMkB5HTENhsUyd2Dhu@vger.kernel.org
X-Gm-Message-State: AOJu0YwzG57mfl6tBk0NAlTvCJbDzv73Gg0ux/iNub8215as68MIdcb/
	mgMTYsxyzZakzyTGb2O71a4MOIIGF6GpF6O8dt/n5RABOfRCZp4gHOaBZGU3MruDPN4RqQYRxPH
	ZQP57Rhf3U8soCU1qLUJ538JZ9TFXhUgEt24RzYsOFnBuYfU7rk6tzw==
X-Gm-Gg: ASbGnctB0rciuZa0Bi5T0wTmMNPBFUedC0yRiPMYY/wZwM5QlqIYxhfSCuoN1tnvz4E
	PabNlsLHaJ2cyTfHm2284Jm2BU7hV5TTYqU5QAcjNVusul2Yz5Ij7BFtbwQycywx4CjBqcSlcwC
	dJvlfgYUOhsHDCYr8FEQdMWKQXt6Gj12q7i6vPWfaWa+j92TYf5LIEDRJy+pObCwEv7VkwLRfbE
	uBjHvvkmd2CbVUzE3LEo++6keqAYBLyslk=
X-Google-Smtp-Source: AGHT+IEyU+tFAsFMORjYCQnykMeU/pbwHrSE3Y7T/aLBjOwuzBCNRlXwUTyFrlR8NysXmCw/f9p80hu9ipZkTsFJIJQ=
X-Received: by 2002:a05:651c:40cc:b0:32b:4521:73d1 with SMTP id
 38308e7fff4ca-330d260dbc5mr3824561fa.20.1753160313915; Mon, 21 Jul 2025
 21:58:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250715140224.206329-1-angelogioacchino.delregno@collabora.com> <20250715140224.206329-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250715140224.206329-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 12:58:22 +0800
X-Gm-Features: Ac12FXwqm1vj4VltrzTTMYOVI1lGXo2qDa8kdMFLAUiRJFcrn2uXXat6X0eoKOM
Message-ID: <CAGXv+5FXr-mGDG4mfqFx0o_dhi=Q3s=Yjpj79UVfEQKf2Wit2w@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] dt-bindings: regulator: Document MediaTek MT6316
 PMIC Regulators
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	lgirdwood@gmail.com, broonie@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 15, 2025 at 10:03=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add bindings for the regulators found in the MediaTek MT6316 PMIC,
> usually found in board designs using the MT6991 Dimensity 9400 and
> on MT8196 Kompanio SoC for Chromebooks.
>
> This chip is fully controlled by SPMI and has multiple variants
> providing different phase configurations.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

The descriptions match the datasheet and design notice I have.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

