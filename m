Return-Path: <devicetree+bounces-105567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 956A39871CE
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 12:43:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B889B298D9
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 10:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBCF1AE842;
	Thu, 26 Sep 2024 10:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KUl9cgB9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B308C1AD9FD
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 10:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727347341; cv=none; b=Ag1Id4p5V8YkGerH9hJo9OUZZVbpMdZMyHzTxqe1kbWjjtLZjXY7HYnEzCgodMani/ko08/fSjfzNvekx0YGUEzkiaW4YJm632C95LqgxcKaCncg7o2tGmTEFjfCySWi6iMewtznU6nL5QqRoShD2RyzXzvVVM58AxhjrOfE4+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727347341; c=relaxed/simple;
	bh=yX4eW2hLFE+pD/0oU3sBpz42gUQTQtE0boReuMH0kxY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OED9u0YJAtdDKnlpNZvMHfrrijo0uAN6X9UjS1Yb8d8iEO0leTzOSUrbBgP20pnGK02/Pihn1KG4dcvNc3YaKwJPeRtaQAkYQurlnTLCv3GV4hr57iXBq8er6fz2/iILd5+CZPL4IgOpUVPfktIn8/PCWXWcQNiDpBKgcC+kln8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KUl9cgB9; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-84e8406d082so298714241.1
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 03:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727347338; x=1727952138; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yX4eW2hLFE+pD/0oU3sBpz42gUQTQtE0boReuMH0kxY=;
        b=KUl9cgB90tJ1bnu2SAN50XfQ+4JXcPGNwwuOqyyxjVfnXBZi8WK13I/WgZiWowe5dv
         8kfwtu93CBpaTiRZQQohlXZ5FTYKBANo77a1voK3RanQlppNCCPzEAcpeWsDXUhHFWWP
         n5NCqt4TgRDxXaK29T4zpWX9rjVal3npl7GlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727347338; x=1727952138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yX4eW2hLFE+pD/0oU3sBpz42gUQTQtE0boReuMH0kxY=;
        b=fFSqqSy0An1SJZosUJ17DfBiMHTGfSmm0uumvUY/GOefhVWhT/evCKAc9JkkqoVTFp
         yoI4JfBOgSfn5qf8t9aYX+7Q8qBrKEqwGXz4gy5cBuXgOShKQB7z46HaKZ4w7WhY4aEX
         6qIhtnkekEATruTcN9ZvhpZVLkx0J+Nf13tXMFvDd9IMcKcgkTcHSfqFoJlqZ3nZIXJR
         xZanp/yQL8S4PnTAbGwe7KgIy1PeOn1+sxmOR9ttYlm5kxSSAKYlfyErbDTKYnsUPy/r
         HywwsyLa+/WLpcxvNwrspqDSlKsQVFMVrTCRyXGRFG4z9ZKtU/Xer0Tf/69F0cm+b1hG
         Ck+g==
X-Forwarded-Encrypted: i=1; AJvYcCWap4/FFUPjabvafe7zvfhF7wv2BZgj/bUj9j4UeSvcscr1IzaHBESLOEnnTHOCZn2Hfe48vYMI4AT3@vger.kernel.org
X-Gm-Message-State: AOJu0YyDKdbGw+7zIBfAZesq4NgCS1b6t663z2Cmg/GsL8EFgR2y/xQb
	DC9ZWrdZ5bE6SCriJkIf7tBn7sp/R0lX9zbe2crdnCrYyk1Sg+V/DygukZX5OCHdwoJ8dk8jKuh
	BBQ==
X-Google-Smtp-Source: AGHT+IH1Ja+bSukbitwLE+LZ+bRL2Kus/g1TzP6dSuL1UxqvBDBcyME7eM4a7/+Ezt6lS7FdMC5/eA==
X-Received: by 2002:a05:6102:3906:b0:49b:d12f:40b0 with SMTP id ada2fe7eead31-4a15dc39980mr7997986137.1.1727347338056;
        Thu, 26 Sep 2024 03:42:18 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a1517c0bb8sm3207555137.18.2024.09.26.03.42.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2024 03:42:17 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-502ae81b4daso316367e0c.0
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 03:42:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWeHkJzPiXU6U/ZK2IMFE63n42wu12yqiQ3olU4wTivpwvEW0T+Hce7yT+w66v0MVV0lRQoVSGfv1o0@vger.kernel.org
X-Received: by 2002:a05:6122:2a05:b0:4f2:ffa9:78b5 with SMTP id
 71dfb90a1353d-505c20ddd0fmr7058726e0c.11.1727347336501; Thu, 26 Sep 2024
 03:42:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925110044.3678055-1-fshao@chromium.org> <20240925110044.3678055-4-fshao@chromium.org>
 <fbdbe9ff-586a-429c-a987-b8ec39b485e8@collabora.com>
In-Reply-To: <fbdbe9ff-586a-429c-a987-b8ec39b485e8@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 26 Sep 2024 18:41:39 +0800
X-Gmail-Original-Message-ID: <CAC=S1njehOqkM26o=vfirZ9L8bec0jbtnvH0J2miYR_qEDeSVA@mail.gmail.com>
Message-ID: <CAC=S1njehOqkM26o=vfirZ9L8bec0jbtnvH0J2miYR_qEDeSVA@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: mediatek: mt8188: Define CPU big core cluster
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 4:33=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 25/09/24 12:57, Fei Shao ha scritto:
> > The MT8188 SoC features two CPU clusters: one with 6 little Cortex-A55
> > cores, and the other with 2 big Cortex-A78 cores.
>
> No, it doesn't. It features only one cluster, so...
>
> >
> > Update the CPU topology to reflect the actual hardware configurations.
>
> ...the actual hardware configuration is already reflected by the currentl=
y
> declared CPU topology, so for this commit: NAK.
>
> This SoC uses the ARM DynamIQ technology and embeds both LITTLE and big
> cores in one single cluster.
> Check the MT8188 datasheet for more information :-)

You are absolutely right. I found that description in the datasheet,
and this patch is completely wrong.
Thanks for pointing it out!

Regards,
Fei

>
> Cheers,
> Angelo

