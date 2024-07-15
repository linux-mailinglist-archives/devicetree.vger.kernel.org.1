Return-Path: <devicetree+bounces-85790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D24931696
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A86561F2225F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF2518E77F;
	Mon, 15 Jul 2024 14:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kArY6Fbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33FA18C17A
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721053368; cv=none; b=S5AzcPvraNclCAAXxRDoBd7BPGaRih6yET5QOoFHRzwe3/ZlK6zCe9RpaHmyUS2+kisB4mMMq/d+jq2ZzkXTtqYjSlxgpFhbKUtTMKDUzfC16OsJaHm5Ue/OFRXZv9hDSQk90oi/l14LbMfPT2HDd0pVv/n1YQXknM7sq++0iV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721053368; c=relaxed/simple;
	bh=akLoDmbDPs+NEvbjDftdXeJMTJGD6oHfGcOTzt9l9co=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j0IXYWpv39BkBjyit2iRB7zlpO7aPm6ZMeiAuvcqCSHACJZdqWULBs0MYOl+s9czkHbK+XO/pYDQtZvreabrcY9zzvBAVtG1+kzJRBoBtxl3woUH8LIBHhdW81FHXMnLZp+0mgoy39oY0M+QurQrQN+bFoSl58QYcVcTC1qzrPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kArY6Fbs; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-447df43324fso507581cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721053366; x=1721658166; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akLoDmbDPs+NEvbjDftdXeJMTJGD6oHfGcOTzt9l9co=;
        b=kArY6FbswdD3bIC/7VmyL5/ynK8w3PmxNwWnv9NuoedUFq9ufOmtzhV/KIfsKdqoVt
         W+8sViUWeTkkcJ2hZNWs5UFKodp6CZoewcBYd2bxRPOsjYSOGclvAV6rP6hHjB37sO9K
         J8VuftPxZcEhCApAbmkRifeUXdxOoK4a/p4M6D3Vtw5dMkUoKZMMVwYF9l3LL6geTG/J
         p8WD0clGNwUGPffh7b4cEz9GCuBn1wQsZkbqnEmCrus1iaOrG4Evx6Yc9eyp9s25W2Yc
         61fESWw7S+VJ/H1zZfObi3muuRF2fOc3BbTL9DB+PYm+WqP58FG8dzx9BT63wFK6aMUQ
         79sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721053366; x=1721658166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=akLoDmbDPs+NEvbjDftdXeJMTJGD6oHfGcOTzt9l9co=;
        b=WYMPQ6pGgCNkmuOOKCLhJRyuKyPOLpC6Y28XoI02cNB3A7ax0p+3rXXGQrKy8/c7q3
         bB/AOvA3CZudFAqv5k5IRYVUNXZlullJgGPTcTcXWT5V76KmZA+Ssbhtb3y8KFkUl/Z7
         au6y27FkwtWaBVm3wMYmib31CDFlEKxsgsXkuBa6bT93g7ja9BmfXUY9PdULPz5baXQl
         pk2Tk78qga3ZJAes4E/+03g8waQoZx9rFTuTN0lDQ124H6vQ/0NkK+8nCY2K+BGt4mPC
         YxQ3J2iU/4nJpCKGIoAd9I5wGrGgpVPSMV3Grhny9+ak77SdXSfCAw7q3JRndOKdc6j5
         8J2w==
X-Forwarded-Encrypted: i=1; AJvYcCW2s6U3nymRdWglQz7VyaIrrjeWY++tbk9xIB+KXaqLuTKtXL/BDDykzOPZmUOUxogphXDm4DAFJ3lksRrlxuuO8eDjOHI4G35ZHQ==
X-Gm-Message-State: AOJu0Yzu17sER+JaNFc8nn0JFrRwQ8WkU9lEGPrgKcQ+jnD7pMYwEuNS
	a94BTWmxzv+I8gvx2niluQFhttk68PPSSJcXbdEGZCAGKvFev0u0Xf0PIDcvDJSVjbHmVjgaoRr
	o7YZwU6LfaM8n+33UNfGxFupCdLN/EejZb9B2
X-Google-Smtp-Source: AGHT+IHgg91W4475NpHdXcKHyv1HYgpe1WM8KIiuzYplyzBGaDbvdiQnNL6KYb2XilWjHQWvHuedrSmfj2F8s8OAIiE=
X-Received: by 2002:a05:622a:544a:b0:447:dbac:facd with SMTP id
 d75a77b69052e-44f5a31ec96mr5088861cf.24.1721053365546; Mon, 15 Jul 2024
 07:22:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240715073159.25064-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240715073159.25064-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 15 Jul 2024 07:22:30 -0700
Message-ID: <CAD=FV=VHDksKiZXrauiipa3HjtK4sE5+dbmXmVfhFoM-RKQP6A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, linus.walleij@linaro.org, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 15, 2024 at 12:32=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> The Elan ekth6a12nay touch screen chip same as Elan eKTH6915 controller
> has a reset gpio. The difference is that they have different
> post_power_delay_ms.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

FWIW things have changed enough between V1 and V2 that you probably
should have removed Conor's "Acked-by" tag here and waited for him to
re-add it.

I'd also note that when posting a patch your Signed-off-by should
always be at the bottom of any collected tags. For reference [1].

[1] https://lore.kernel.org/tools/20221031165842.vxr4kp6h7qnkc53l@meerkat.l=
ocal/

That being said, the new binding seems OK to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

