Return-Path: <devicetree+bounces-240243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D97C6F334
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 350774FF867
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D01B4364EA7;
	Wed, 19 Nov 2025 14:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n9e1t6jf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D15364EA2
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763561400; cv=none; b=htfCzknuBP4V9hdWTSqITCzoTvOotym8Ob8QrwTfOLI3hvok06CmCKSUQXZlrYwCtEVwGmMSXeYdzQl5ml+DNBfnWxNlhkmqmKyMGxPlHbXC+u0RXwAmdwrtbSIJRMZ1j2YSjoi4y7Z5KX/MCegDHte2ZIWkB+dJKA7gEy7O394=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763561400; c=relaxed/simple;
	bh=sAF6O44vT1Mi7jeJcCwnvWvkPvnj9D57kUtkjUGBZbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uVsRYdCLxosKT8NyL6W4lK5gRIu7IoUnt3dQ4ZKPcnBYC44RV332AlgtJDpxCU3Pa2Pq1Aq+HJ+1YMr8gUSDisKsy/CQ36yDu3IRZ0h1C0h+35PXtuI40Id0LvjUGrXio93Oenrk7cr2Y7WJeEzNuMxdMdGqx0Esy7LjCQcrv2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n9e1t6jf; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7866375e943so56688457b3.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763561397; x=1764166197; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sAF6O44vT1Mi7jeJcCwnvWvkPvnj9D57kUtkjUGBZbs=;
        b=n9e1t6jfYj1+9mRB4uuDOZCFO5oTLN6s18NhdvTN7N8Ts4iCsAQIYq1G+txvpeKWd1
         nnZsZ35FeI9N1gYQxi3G+L6+lRqrIcyPdHoOW7SMJBShgm9rMxyc7c/S+w3gJ9NsFp+I
         x4AhiP0aw/z5rPvwq3Vm9XCj/qo2NnV0kwtnTblWtvlbEy9wylP4N6jXKMmUI5sX+sJ0
         EEU1TMpK6xDYGZtrQQpb+4V97HZlTCuA/JB4XZeZCy1zzdW53TIDyhKYWWVN0xp5MASF
         64DRLhIu5VHj18VjXU+o2KTpDxamwts0bl1GmF0ihaIIxegW6WKh8jUyGvjXFwdZ+gvT
         jnrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763561397; x=1764166197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sAF6O44vT1Mi7jeJcCwnvWvkPvnj9D57kUtkjUGBZbs=;
        b=b7adFX1pLWe2FXyRBg9tcbPFVf9c+GwLtmdta3zPOz+rzQkJ5Qi9duHPK3Ylw+k6GQ
         An92V3F1LWpwY4j5XBhZmPPpbADrdJG08GMRO+pFaOjZ8TD8+Gnnr/D53LwChdWg/OKp
         GcYz7AEByejPPse1HfTMvNQGVPFV4PZdKNgVAh1WWp3NR2c/soY2FfGHFjqLzKjaQKHb
         cmVPGSdbwyTzRLSZUjkURg5Cy8vfwFWMktKc0aae71sATj9Ku4pTEfC10EnrdZp8LDhB
         ctLYqYKF0wFEAh5v3KHidpCvOLs/rVHEj0KvRrlQ7FC1F7Pav6dwPDRmnz/iXxbxnk87
         nfCw==
X-Gm-Message-State: AOJu0YzyUAhhZ8/ZwrgutnUZ+/bap+zO2X/qH8L3UW7dZD2Cf+PcB6Ms
	+C//VBgOaJqDzMYROOofJ0NABeHFhRtFTCBYyanxXfYKVzkpTMNn0c7mUlRSlpq6U3eKZXaKTzU
	aYFT5QGq0BIgHHL0JwzuRN7Q+WoSWcnXaJJQcKr097Q==
X-Gm-Gg: ASbGncsq4SU0p2rJCSUcgO4m3FR7jtsSP6gm2Xf5Dry+ENH9r9KPk1H7IoMEaFIt3Mw
	ZyuM9VlH7p6IyidK/axTNxunV5Qq2kM3yH/mKYBZn8Jn9cvtKIsmwAi3eL3bqho2K7hY+ItQExF
	udwYkrbgdB6czK7GtEcUcYoaV9flDrQclNEOIdA+G0Vb5D/EN3Es+dNu/7npK1uUBD0x29mYgGA
	TFskPPlR94EK3VwzcHRirvpevTaML380OYHhoqySH6LQEOc/GVdBZ+yySpsh/BT7kUTz7T2qkNT
	N+1ffg==
X-Google-Smtp-Source: AGHT+IHP6E49Qj73d/B4xepPnYRr8fxGgO50zw8XTKBQCHoFhJrGEfuTzbCQ39L2P4YWRz3nXJpXN2/2sI7cpVjUQRI=
X-Received: by 2002:a05:690c:2784:b0:786:58c4:7a21 with SMTP id
 00721157ae682-78929f4b0efmr168702047b3.69.1763561396960; Wed, 19 Nov 2025
 06:09:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118121148.88165-1-marex@nabladev.com>
In-Reply-To: <20251118121148.88165-1-marex@nabladev.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 15:09:42 +0100
X-Gm-Features: AWmQ_blZTI0HEONzvyhOKKH_YzW5Got3D8XtC_2fvaieaZ5gnpDbY67xf-4Il70
Message-ID: <CACRpkdajTFSyabCUy-jG5M4bYXBCobvmQxAwy6dND_dkCon6Zg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: cix,sky1-pinctrl: Drop duplicate newline
To: Marek Vasut <marex@nabladev.com>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Gary Yang <gary.yang@cixtech.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 1:12=E2=80=AFPM Marek Vasut <marex@nabladev.com> wr=
ote:

> Fix the following DT schema check warning:
>
> ./Documentation/devicetree/bindings/pinctrl/cix,sky1-pinctrl.yaml:68:1: [=
warning] too many blank lines (2 > 1) (empty-lines)
>
> One newline is enough. No functional change.
>
> Signed-off-by: Marek Vasut <marex@nabladev.com>

Patch applied!

Yours,
Linus Walleij

