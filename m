Return-Path: <devicetree+bounces-248664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0D1CD4E62
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4F16300C28A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B142FF144;
	Mon, 22 Dec 2025 07:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="at94+Fvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48856288537
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766389718; cv=none; b=gtv3BlOAWUNOMe9O6iWvv4/4pHHw3u3/9RhPRFS9PEI9yZH1qcsN9zM7BfdLM79opV2kfwTK60MVTpgITR13kpEYbUwOWdPipS2WEXqCqAzf9KpLbZSFGdKLbCvvYGZ32zpXitVfWpwBNyLkX9/KBmyWg9f4kTiHBtIE9PPLjl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766389718; c=relaxed/simple;
	bh=O9OCWFingE0nz2wPBjE6WWnDNJpfpwzPNb54tcsJZ9Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ec4KUSm+0Nz9rBOo3YjOBphrzD0L5b66UyXfoqrPzPigyA3Qqq+Y8tsYxChJnQx8HD/GRzW6g38aanAFLjGdXjqKLMOwxgX1RHCSUsny6BQ/OUW8sXmacFiBd24nIaEu9yEfx4xtNVfjZsZtD9iXyc+tj/8OL4/Yuf9Mbw+9aZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=at94+Fvy; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a0f3f74587so51215435ad.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 23:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766389716; x=1766994516; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9OCWFingE0nz2wPBjE6WWnDNJpfpwzPNb54tcsJZ9Y=;
        b=at94+FvyzTIB41PL4MVtHGfPJii2tPyBk7s39XWTrjSRg6jNWIlY7p7z5rXP+SKYRv
         TZqXfAYkHY/Pum5bsoRbjrnkNJdELdB2v6qJceYmuteg30zPSDAkdUEcPGjy6bdWlWUo
         Xhg/zvSYp7ZDYf8TR42kp25LkcWAQhV7isiXub5xH2r8l2hsbZ+YPh78MmZJGDddgy6x
         pkTSyNBLEdZWk+vbMwpGOdtAfSxNKOxA9XrkGj7wsPRm3paKTGfxY1T+PclOtIiazzvC
         mqMtCF6bVCBNLeh7AyGZEAQqAsLOk5R3v3KLcFcM3oogrCosuH5RfCsYZ26yjYgSaVNy
         +kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766389716; x=1766994516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O9OCWFingE0nz2wPBjE6WWnDNJpfpwzPNb54tcsJZ9Y=;
        b=MQpeIQCUknB7UNLQ8QU6yLPLXXD68QlQuVaT225PGoRKVpl0kCsinxdQfA9Yk9GFJM
         x6Z1tdGxS9RqC6QvdrMmeeVCKqf87FpO9MBI7DjuKXFlEThgE0b8AzglOleD1/swRCQG
         M9uEouNM2tghL9pqfhe5Evo+Y258N7Fc57OkIyWFTbbpaTqpK08HREL1TjCp4G3EWGXa
         TmGIB6EIJ68p73W4eFVtSLNZqw6U+C4iPnO6wMxiaVehmT5J8qqpUEVsk9H2yFVob6WH
         hFU+evu1iUPHxYE8xz8HDDUHMWmwWPhuyH72eXbMi7bVZ8CSsDyjiqYOHhOaiA0km2N3
         f2VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM8/FJC1bkyXobJFuPJ3ciZ7tptfg88dQYf1LLovs4W9L6wgc+A46pccx1T6ChWBxJGr1EW0WS0dI7@vger.kernel.org
X-Gm-Message-State: AOJu0YyoPME8sKgAswmcwT3MNsSf1rVvNmWB2JkhPkJ8PIkLp8S5th8P
	dhFflY9JU0b/5hFmChHJUq0LEwM8rRKjHdNLOzy/o88KjeAbwUDZNQBCATD7dH2xRRn0R4v46o3
	YVNYs1o/S94NefERsrnumTz307Q2y74g=
X-Gm-Gg: AY/fxX5BfKQtbEX5ARoYQ+OS7CtQTvuIhayHahzN48RbRB5ZOexuwjW7BXRiXVd+694
	FSNxnUSijasuix580S6HL8UXFpwGNw2EJRbVRaB5tTRp9is0KCQm/wI5gXHE9QXXhfx01cQZ7Aq
	qPqpXXmhTNg4pzCaiHl+tmb8oizEBsFiq7Pi89ZW7VHuluAexKqyIaHFc+0f4rqgnpzFo+X/h7n
	TaRw7og3erw4s3HIM+dZhbYUjRG3+cyWF4iILEuZc8MsFtuVvqS7Tw9+Ik5fJzvUDdGFgad5uce
	Ns/6gyFSX/b4VG5oIEJ5WfSlILFlSsrqL/tBGpOnX4l7eXrcLaAtBpdJy87OTZSXr7mNZmP+w0U
	O10AjDcjALgPh9r02gGHfCVouNU9cWRwBNrvfKK1eipuU4Z7bWe0ZgaY8ng==
X-Google-Smtp-Source: AGHT+IGC5H9pk2WaAHD8EAkwNOOrTOxaDyXMdLCEf3TKyiNUxIOmfbIBS3iQduGYUv2H/hy//X3ygqs5vwpMpN5DTqY=
X-Received: by 2002:a05:7022:6709:b0:11a:29e5:12e5 with SMTP id
 a92af1059eb24-121722ebc26mr12189814c88.30.1766389716505; Sun, 21 Dec 2025
 23:48:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-imx952-v1-v2-0-8793ec8bad6e@nxp.com> <20251222-imx952-v1-v2-1-8793ec8bad6e@nxp.com>
In-Reply-To: <20251222-imx952-v1-v2-1-8793ec8bad6e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 22 Dec 2025 09:48:22 +0200
X-Gm-Features: AQt7F2qoIk1PNyyX4eWETsNou92XZKeudB4OtSdua0GthSZdmgmSnIjsrscm7Fg
Message-ID: <CAEnQRZC44ftit9y3hj3x9tLn7G+o_PFnJUOy6cGkD9iGSJGHXw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: fsl: add i.MX952 EVK board
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 22, 2025 at 3:44=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Add DT compatible string for NXP i.MX952 EVK board.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

