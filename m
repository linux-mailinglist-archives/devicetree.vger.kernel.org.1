Return-Path: <devicetree+bounces-150321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 471A5A41BAE
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DE003B5490
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 10:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C9C2580C0;
	Mon, 24 Feb 2025 10:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JHKrH7o5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5261A257AF5
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 10:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740394270; cv=none; b=e/m3YObEmRyIb4OuqsS7INyc2w9IO1+urgBXFSVMLKaDE/rrplgLwRI0nQNc0VxEmmlEazf+zxQKjoY4ySutLD2VcKsHBPV3mxt2rEi911vOlCjR3zdk8IBn0zI0t0AkzFvS7xTn0vXHNXAncRcLr4oKuSL0CaO6FQum4/qeDMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740394270; c=relaxed/simple;
	bh=j9ewN9UcK/O8IjxS4nzCWkIr6XMGt3xZkhfiGiwkBrw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iSSA8x3AG+GuyBfOubEw5kHp+9w6SM9n8Bee76gvL/V8nLBkNywerfE1oyA+cdVAewp82Erehd5xjf+1TbXPI3dVHMydvUtF3tTWZXYySFLEPTQKsuhV3mce+NvVBTo7qslx7V2hN6s0Z3aC6UbvwytA43HA36IpZyE2TW8EV+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JHKrH7o5; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3076262bfc6so43369851fa.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 02:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740394266; x=1740999066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9ewN9UcK/O8IjxS4nzCWkIr6XMGt3xZkhfiGiwkBrw=;
        b=JHKrH7o5la5ka56vx+4hCUT6En2tXkWzjY4vlBzl6WEshLbvuNTMCgV5Ajp4qsy9Ad
         aXXV3wuRCBeiACzpJ+uusacLGmwTkhngdwomHdULCUthAOR7xn9YHXp8IFDO/rRq42jt
         YxpQU1rRGkUCsDHOKxOjLjfURhQfTwtBdn9zI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740394266; x=1740999066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9ewN9UcK/O8IjxS4nzCWkIr6XMGt3xZkhfiGiwkBrw=;
        b=JyVhhiiIemyhXY5ZeKUVPL/mrwZp+r4CrsTyKRayqvUN1EZEyrxNnwk3OvWDJXEoGR
         lMN6R0q/F1+7hvm3X+/8njt0eosTm8S76xz6oJ52lEZDBeDYIBTFe29IZb+BZVax3Tsm
         bnB8y5SdBzT5YfO1gUoC3PJm3hCGwXIG4dNL93NLoLw+rm5fE95z5peTbkHeJrQTBSq/
         xGh0Dz8rWbciY2h7SJGJuOqEfS1FzkDISIP6Ply0BUtDvtH0jHdcuSqEVF7NTiLX/Q5z
         UdW8QP1QULSprju+VV89NJFIptlEhL1Tv2YoET+BMdGzVbnnSm0bupWXi4yeC7onWFYL
         zqjg==
X-Forwarded-Encrypted: i=1; AJvYcCVdpmvLTu12ztP4saMkyc4b9AbxE4UL1kRbMaOeMe2xpPzNwwP95k5Mt8weQA5d1CzQ14HoKmThbPkT@vger.kernel.org
X-Gm-Message-State: AOJu0YzxAky2OTI6iM92QU9gwgrUZ55DlGRQbOMes4XUr1CO7dtSY4Qn
	f8ow9DqMwNP1dhA66iIfOzky4IyljWl66+jR9q8WoxMqJhW59T8bfwVZqFKxRsT4l4oL9DYBPQf
	+lFo41p+EXDgGupVxxavhwGpofZR1N1LJe7sf
X-Gm-Gg: ASbGncsBWEC09otUNY3LrLhOdCM8SqeqmwO+J5vYkfNhIipw3LkLF5CrpQ0+UoCEjxe
	TaPxg5XjLwX539QCCrovpB+LFVWRYK9r9PIuHScfvWHOu5zCFWtgs4mrfvSP3g+eQaEPsIG9zeb
	A7GjJUKn+vyGyYnnhoUeRwUEBE7DBvYRJ/TxM=
X-Google-Smtp-Source: AGHT+IHt7LwH1FhfjAD5OKjp2mvKbAZ/8l+aQ1Ipxz03xtQO7zWSEdSFIHFgBDAxXVoiGz8lGaTL7HUC1kS6yhy7A7E=
X-Received: by 2002:a05:6512:3e08:b0:545:1d25:4604 with SMTP id
 2adb3069b0e04-54838ef07c7mr5016745e87.13.1740394266393; Mon, 24 Feb 2025
 02:51:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220110948.45596-1-angelogioacchino.delregno@collabora.com> <20250220110948.45596-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250220110948.45596-4-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 24 Feb 2025 18:50:55 +0800
X-Gm-Features: AWEUYZkS0SprGNFPq1iPBVTH9fxdvLxcztVS14fJMBAWX6iv5wuTONgtw46vcv0
Message-ID: <CAGXv+5GwY28s3m5jXX_CqKfK6iehJRhrwbEvd2=7Qn3u=L=mLQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] arm64: dts: mediatek: mt8188-geralt: Add graph for
 DSI and DP displays
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, pablo.sun@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 7:16=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The base SoC devicetree now defines a display controller graph:
> connect the board specific outputs (eDP internal display, DP
> external display) to fully migrate Cherry and make it finally
> possible to make Chromebooks and other board types to coexist
> without per-board driver modifications.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Tested-by: Chen-Yu Tsai <wenst@chromium.org> # On MT8188 Ciri (int. and ext=
.)

