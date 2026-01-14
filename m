Return-Path: <devicetree+bounces-255275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F29D21C2D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C21B3036AC4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A3238BF8B;
	Wed, 14 Jan 2026 23:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NRckAmLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE67A33B947
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768433263; cv=none; b=XvWt4I7pWHfJ57T7ZJAaosv/13dplWGBpHC4gQgltb/GTxn3BCLE8dLftvMMssGCdjjDhDb5SAqAIf7YT/FxCRaNQtUro4Cu/qe/OR5IkWR9tzXSrPGDk6H6o9NtnTaaemjntP0q+vwL2x4Mk9XxaU0D8t50FMRlYLpma6VPzaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768433263; c=relaxed/simple;
	bh=7CUg3xaON2YJyNDUAfyHXm5zz5PYeFuwzhozRYxq9FY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZLwvvNjLAXceJbld/lOVkAJ9pr4mMqzRSZ/B6SOlNZtdfyhatVSh21cyOvCse/jZAdWPGs14L/FjoGXb6ipfHdVWjCvMpu8Fid2PHLmUWRXyqaMQuUrMQ0G3CgnuVqE51eUs3qfxYDz4Mf2KOXp4NwFhm0m5mnYiNA52c5fjqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NRckAmLX; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59b6f04cae6so339802e87.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768433250; x=1769038050; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zO7/rwLXC5yGRDXneYIJQs+eB1xaWdUmRL6MCrxGUVo=;
        b=NRckAmLXQTmDNgYWUlmjejyavZ/T3x8/2/qWB9kSI66UFZehw++BSp/DKq90LkJ9Ys
         BU8NidRECMCIlegq0mx/vXPs8bChq+lJTwr7kndaW2QEey2NswfGJ42IWjhJBT/1oAzF
         ezLvefXuNi44ehLrTNIqEwS0vy51stKVJEHTTGGi4xluA70qKPKhtM2uV4eUxUwRGIyW
         eSxsR9ZRwJ43S8Gf7q54FFbghR01YzGPGPhQW5zv8MjYKXck1vgFDCeporbbPuo3JkLK
         J32leOzGqQVhJAEjDAAmk5Lqifv1rOUELZ4LlwuCN8sWYFFPy/YdSklB6ODtkX0A0u1G
         09/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768433250; x=1769038050;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zO7/rwLXC5yGRDXneYIJQs+eB1xaWdUmRL6MCrxGUVo=;
        b=SZ/0jX45bfzwDeazd+MgzbEeaRjRZr+ROp8WyjLdEksDO0R+Mcqnkfop+xLPSN2yMk
         GsNN0giu4FklZXV9SsKGb+Pb5b+aH2e6FwQ6vugSBdp0TiJqDoUpIr0HgmvoOQInz3lJ
         Yz1WfGUt86FaXSuTNOJPUytPafAtNwllgzhh99u/pqQLC7K2Gsx4SAOWiR2sY0jS+kuP
         j/6NFQCH8Wv80uEhPn7BPNcIksa2nthAry8Zq67+5OHU+cgY0jHKIQFcnNAHhCc1FYh4
         UQfmgBY58sD5bcRPGxhF3x2JnGea/41WvOi1ft6Dq++racbXsWfC3tPoZAcLYUupOfVy
         USjg==
X-Forwarded-Encrypted: i=1; AJvYcCUv/z0CkYMi9YYdUGk1H0n/jmqjxXE50oMXE+yWwurmCNcUq8Y6wXvHuFQIiHSMhbEdoC31Ovqgr5ex@vger.kernel.org
X-Gm-Message-State: AOJu0YwhryqcH28EVBnZsBDUK01qYgeF5eXdk7R86ES3K7Jyj8wNHb1/
	3IogapCCihatoa1jMZInuYHjOIbJIUa4jpsan6ABiBWUZjjw3yYnENeW27k465L8EjUqk2RNcJV
	5RtmKyQTxpLnX9K9ue6hdJTNxZnAP9joBdA==
X-Gm-Gg: AY/fxX6ILjk/4N+PnT5Xr3UQCgIEsVdCtI5erydR/356H6INXtp+cR7ejNH3eF98Or+
	xf9ljSnJDKZ/FOCu/xIwebjV774OsGOEAQHEMKj9HvWPdn01swBPUVBA9awrWDZpjUfl7QBmTen
	K9+s8qwRCbg/tpBoQkffVhDQDQOql3mENASsjm2zeB7jZHt36Jf8mcV9C5zfIYnjzYPm5TDlckA
	B/JJjFDLvIGsrNDrIuueCp5p66IfbD+krkb8yVaPuPAcwQ6h0+5N80Q1OlhW+UHYQ8GMwPrOHMM
	VgepEEJYY6HMdMe34ARYOrnzDh4=
X-Received: by 2002:a05:6512:b90:b0:594:25a6:9996 with SMTP id
 2adb3069b0e04-59ba0f5fd8bmr1478472e87.10.1768433249392; Wed, 14 Jan 2026
 15:27:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114-mxsdma-module-v1-0-9b2a9eaa4226@nxp.com> <20260114-mxsdma-module-v1-2-9b2a9eaa4226@nxp.com>
In-Reply-To: <20260114-mxsdma-module-v1-2-9b2a9eaa4226@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 14 Jan 2026 20:27:18 -0300
X-Gm-Features: AZwV_QhLF-nZE9rj0D3-1M6Zo3V1EfOAoeRCu5Cv2BQMtPfiN1SS9FZTgf1Ap2k
Message-ID: <CAOMZO5AF5-=-2F2W_U9=VbkwtBp2_hzKkJziefLeufD97xNj=g@mail.gmail.com>
Subject: Re: [PATCH 02/13] dmaengine: mxs-dma: Use local dev variable in probe()
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Shawn Guo <shawn.guo@freescale.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 14, 2026 at 7:33=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

>         ret =3D of_dma_controller_register(np, mxs_dma_xlate, mxs_dma);
>         if (ret) {
> -               dev_err(mxs_dma->dma_device.dev,
> +               dev_err(dev,
>                         "failed to register controller\n");

Better put the dev_err() into a single line now.

