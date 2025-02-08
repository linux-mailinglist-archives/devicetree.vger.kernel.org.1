Return-Path: <devicetree+bounces-144240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C827A2D88F
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 21:25:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEBC818889ED
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 20:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1958C18C03F;
	Sat,  8 Feb 2025 20:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DOQvV8rC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1541714AC
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739046335; cv=none; b=QYkePIFoyrUI8JTlBDKYWnGfDw+6nWulUuvl1JhwZETHpHcwILH3nCasNB4co34V20p5ZRPTpDPoQHKDzyTE9nVPhYHsKKcs7KizZdOtQSFESGY6B/jFME1edRtY3Y+W5sziDPp2HkSV1Yc6P3TGa/5GLZcP0o4GKRMua0l80A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739046335; c=relaxed/simple;
	bh=lmZxWKz4sEB4pMTPwriSxKlyI7xubfAYb1BbOdCt3pk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yt2JobTMy9v4zgjtX70N+wByNXYfVRdXr9FewGIKhuzmrBa+QDz31zDoiS5pQYJqcE1yEiJp+qRI6B97wiUQqaO4LJuhFaJ5YD9ew1SOuNOhxGSvdgKJY2Nar/B6s+CChTJTQB5/l7cLxK8ZPvDSGdD8K6xi1WVaA4sYv7XzBrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DOQvV8rC; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-543d8badc30so3600022e87.0
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 12:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739046328; x=1739651128; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAwQ6v6YdN6RFTuWQVOHau4xzP3b5faxbAOmvcpMZPE=;
        b=DOQvV8rCJWQoLm1zOW8D4ZgE3hhaTS6+lYD1xYzv53ut2P6Lzp7jWFJnWjfvI9ThZV
         AqfkSqiYjnQ6tgfr+4dKgq0zcZLrCfyKXgRenXf7aCBB1drHStN/PNfEu76XbtZyknZJ
         Rwrd/KqbP1gBO5vpCHCVCbtZ0FCYEElGOTh7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739046328; x=1739651128;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cAwQ6v6YdN6RFTuWQVOHau4xzP3b5faxbAOmvcpMZPE=;
        b=F1AMXlpBSgK/Y7qwF+6NsUwl6FDzbqq997qWdwvF+YcVmc0chhtHymFxJg92sp8ra5
         KG3taxM/mSe7lRP6+oZDI5nLvK2nIaG8eOnKt4RlJKWgzTnnB1he+c0Yqv6SPyibwlIi
         j+vCBB/McPtEYlzO9bOrzrV6PSrv/ilxzn/eUO2KxijOttkDGjRc1v5jC1GrWiVB8Qjc
         5zR3/OnKtBfCXJXEl9OZt1PiizmQqChmIH5MyqncY+JpGum5eo3RLp2fanVSDeY6wSoM
         bJ7Eb2ztVy3CCe51cUwCp86VoPDdwPD84nWpVVmqGGx5ct5OBGItljLB7aIU0TK1ImkN
         8bSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTTixMhqrWunckgbTSn5D4ocnaUclyXc5hp8iponXYsYMOtetI4X56yg4oGhx66R+rM8ePYTX2nwoW@vger.kernel.org
X-Gm-Message-State: AOJu0YyGhZL7BT/8s+FI8UO5DURWEGIej6hVSrC7fGO4MN3C8Mz2ko10
	nM8uLt/1ighEaraQgkCLgOgMvQt7aco83v4lJ8F7COmYkZ8xq8ffrXu/Hh+61wNCJHGAwJiXBsO
	a4hA/
X-Gm-Gg: ASbGncuvs4CrwH4PYzuwb4xX1Cj4gls+DBL/kXFU4+MtxqH8DbA2Kv8xi34RDvIVguf
	kCG0/5A8ATP15oCdeHXeb5BN7aOisafNGeOZ1w2m4ZpdpMFZDipTIXpq6gwamIRJ6QwpvxcYpSV
	jjjtlfjgYow4octp38iZozRaM6QCNxazjXgudZU9IiqLc4nYrqqBHnKQtjrBw8DCNDJty6naybk
	88qqQXqf/nuKdXxiHrJxc3aSj4/hf8o7It4J+ehpEkdgW4uQ4Tjo3PhaVDoqH4nyREwjZNVqHHQ
	63CseHGII5fkXs0X1RhbbDhDnfqZl5KUHEcoapZCK041EHHUjEQuHbg=
X-Google-Smtp-Source: AGHT+IGXE+EV1PE5xfUyi0qlkc6bLb0tB/rIHettbrfQ4vB8stTNykAqeH9DO+yGe/9f36LWp2tDhw==
X-Received: by 2002:ac2:54b1:0:b0:545:54b:6a05 with SMTP id 2adb3069b0e04-545054b6ab4mr895038e87.45.1739046327666;
        Sat, 08 Feb 2025 12:25:27 -0800 (PST)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545004c07e4sm389415e87.132.2025.02.08.12.25.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2025 12:25:27 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5440d5b30a8so3753187e87.2
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 12:25:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVUlv+VKFi4FU+wlz0BINI3jXaXMc9j7A6tINoz8aR3vJT4T3Qz/BcYpm25YEmjHyEUCeg67hr2IVd/@vger.kernel.org
X-Received: by 2002:a05:6512:2254:b0:545:5de:f46e with SMTP id
 2adb3069b0e04-54505def563mr665702e87.39.1739046321893; Sat, 08 Feb 2025
 12:25:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
 <20250208105326.3850358-4-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250208105326.3850358-4-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 8 Feb 2025 12:25:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UNaOrZVnhmj3cNfJoSj9fc2g5p8w+cfk6XwV1Bcz+a8A@mail.gmail.com>
X-Gm-Features: AWEUYZn-n6llQrHDzAHqyqfKx1wNx3VrYtKrPGjCS9vT4XhM_5671aX3dZRAK0g
Message-ID: <CAD=FV=UNaOrZVnhmj3cNfJoSj9fc2g5p8w+cfk6XwV1Bcz+a8A@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] drm/panel: panel-himax-hx83102: support for
 starry-2082109qfh040022-50e MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Feb 8, 2025 at 2:53=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> The starry-2082109qfh040022-50e is a 10.95" TFT panel. The MIPI controlle=
r
> on this panel is the same as the other panels here, so add this panel to
> this driver.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 142 ++++++++++++++++++++
>  1 file changed, 142 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

