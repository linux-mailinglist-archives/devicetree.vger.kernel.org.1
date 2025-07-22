Return-Path: <devicetree+bounces-198510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44227B0D3FA
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6DC4169B62
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E8128C02F;
	Tue, 22 Jul 2025 07:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JqFtkeB5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6062228B4EC
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753170850; cv=none; b=hmh9R9W9gsGZBMGOZ7lpg0Fwk2qS3ISvNgcviIsHgYd3Ifq55d1ab9a169+Zlf3vS4e9Sw8PHuTMGZUhmkwf8LwpC2oyisKp8Whsu62p373vK6DeDHbm6opIwZClyxR6uXQYMINQgkovBSiTd9WBq53IURO5bt/zcvvmN/yPXhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753170850; c=relaxed/simple;
	bh=af9/HxJ93jBhwt0lMkulilszM9L0i9sACKD+lCDDKOQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=njN1msqaFxLpZyqbfm8PgJLWQJxUhrmsX7XCpHTqX15RqXuoBJS79HIout6JV77XYNY0F75AIv3+Jr+5SxTRBO1oE2imbgFeO/lqrHR0yZPOEHm9zkj6CShAkpJyDturm5MExiS9vOguxfT2NA2YvYsRoUZOYp/Z3sXIImBEWU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JqFtkeB5; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-32b4876dfecso54787671fa.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753170846; x=1753775646; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fH/qbpM/oCacWT5ERGejmJZ7cVyfNVWKI9CytSuSAyk=;
        b=JqFtkeB57Jy5PS3F9AKkPBc27M3UOcKQh7sL+BomYf+uKtr8umTT2N8SIif6H1UUNw
         uThzSANZ1xZ6r2pwgVwXl8aHFBNVIHxoUXeMJkh+jtO6qw19GqoPhDM4Qlsc0CKR47bd
         /g1ybgQ8qPD9rmQvdzQRDeRs1S5RoMAdfsDOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753170846; x=1753775646;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fH/qbpM/oCacWT5ERGejmJZ7cVyfNVWKI9CytSuSAyk=;
        b=GtZBcZdLGjOBiqbfNXMRsV/bn8a9MkpP/YU5cF3jNEEiD6JdscSslJCAqOnvnhL30v
         tjbCiT98rBqDl1VOErdX5nyToy6CUnD8p2y/EUHsYfEi1Noag9yxWcihcIhrYIO8l00V
         ZesHiv/lbqqxpuf+48FdQRLpNyMqPb6ZAVGWLYIwBXgE+l1do8rIQQ2+JG6hMTW0RtmP
         lVssYiY6TADT9o4IoKyosHd+tXqj4g9Ozfk1TySeQ5lzEBYziLEt9FmWku/SkXUpuWkG
         9Ox4Wib4jC9X4LpRofBt2/qrkXPInYuGV0sSjs39DPITInhz4B1AFdzoT6aHq4thsTms
         oguA==
X-Forwarded-Encrypted: i=1; AJvYcCUWcVVgZO76OTvC0FsGS3+3gNaUljdDG2+cMzye/TinWLZG4Xo5fVwhdCBgeUYcCqG74ljKzSzDQiq4@vger.kernel.org
X-Gm-Message-State: AOJu0YwLfv7IXr9KUTrdYvBstOjYY1OrLnm6QhRv7ns91/NRleI674Zj
	rfxuwX+WUCOTAd469mp1n5GtoHABQy8nREZOgoX8orrIUebA3DcPvwRTGEIf5LuoE/w8HmoSJKL
	DusBinJqk87hk9YU4lWZiEBxvGPPBE2LO1r5T8vPD
X-Gm-Gg: ASbGnctEULXRQFsBsCDN+IgCakS7GriN634Bbm3abWt+SqsdKj07Omg7Icv7iL0vJff
	cDbugrwb3xLP8BxY7u2UiV8KNgnBo5+zcIcfVwZp6hJfAulOLJHI9sv/o8JDvUUDbmUH6LDx59I
	kG20335Z8V5JVyP6xIXcVlDnI+WcC651RO9vOJ4DnPnWC3+5H5glzFmjUBu1gaqn0CPIzHs9l0E
	FC20J/1thWNGOQP4t7TaWc+C6KYlkphJgQ=
X-Google-Smtp-Source: AGHT+IGL92ur7ffGC5QA28t0VJ0IAP0O69TPsrcbMFMvkXkG72ebSReqvSaw/FaQHvkyG1SDQnIsCB2Mxndj8zgqVHg=
X-Received: by 2002:a2e:be83:0:b0:32b:c74e:268 with SMTP id
 38308e7fff4ca-330d2679241mr6503361fa.17.1753170846371; Tue, 22 Jul 2025
 00:54:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250703115828.118425-1-angelogioacchino.delregno@collabora.com> <20250703115828.118425-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250703115828.118425-4-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 15:53:55 +0800
X-Gm-Features: Ac12FXxbLNU48YxsduL3ktDoYmrQimXCC613atDW57475GhtNzvIVTwz9Iodg5k
Message-ID: <CAGXv+5G2dVyKzrpofTu02CcX7inpa0OWw7Bhvv-5a3kEepNnQw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] spmi: mtk-pmif: Keep spinlock until read is fully done
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, hsin-hsiung.wang@mediatek.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 3, 2025 at 9:07=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Move the spin unlocking to after reading the contents of the
> PMIF_SWINF_(x)_RDATA_31_0 register in pmif_spmi_read_cmd():
> since this is the only register that we can read to get the
> data from all of the arbitered busses, a concurrent request
> for reading (especially on a busy arbiter) will show a race
> condition and a unexpected or corrupted value may be read.
>
> Doing the entire read sequence while spin locked guarantees
> that concurrent access to the arbiter doesn't happen.

I think the driver should have implemented this from the beginning, so

Fixes: b45b3ccef8c0 ("spmi: mediatek: Add support for MT6873/8192")
Fixes: f200fff8d019 ("spmi: mtk-pmif: Serialize PMIF status check and
command submission")
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  drivers/spmi/spmi-mtk-pmif.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/spmi/spmi-mtk-pmif.c b/drivers/spmi/spmi-mtk-pmif.c
> index 68f458587c67..9f416b231ab8 100644
> --- a/drivers/spmi/spmi-mtk-pmif.c
> +++ b/drivers/spmi/spmi-mtk-pmif.c
> @@ -22,7 +22,7 @@
>  #define PMIF_CMD_EXT_REG       2
>  #define PMIF_CMD_EXT_REG_LONG  3
>
> -#define PMIF_DELAY_US   10
> +#define PMIF_DELAY_US   2
>  #define PMIF_TIMEOUT_US (10 * 1000)
>
>  #define PMIF_CHAN_OFFSET 0x5
> @@ -372,7 +372,6 @@ static int pmif_spmi_read_cmd(struct spmi_controller =
*ctrl, u8 opc, u8 sid,
>         /* Send the command. */
>         cmd =3D (opc << 30) | (sid << 24) | ((len - 1) << 16) | addr;
>         pmif_writel(arb, pbus, cmd, inf_reg->ch_send);
> -       raw_spin_unlock_irqrestore(&pbus->lock, flags);
>
>         /*
>          * Wait for Software Interface FSM state to be WFVLDCLR,
> @@ -382,13 +381,16 @@ static int pmif_spmi_read_cmd(struct spmi_controlle=
r *ctrl, u8 opc, u8 sid,
>                                         data, GET_SWINF(data) =3D=3D SWIN=
F_WFVLDCLR,
>                                         PMIF_DELAY_US, PMIF_TIMEOUT_US);
>         if (ret < 0) {
> +               raw_spin_unlock_irqrestore(&pbus->lock, flags);
>                 dev_err(&ctrl->dev, "failed to wait for SWINF_WFVLDCLR\n"=
);
>                 return ret;
>         }
>
>         data =3D pmif_readl(arb, pbus, inf_reg->rdata);
> -       memcpy(buf, &data, len);
>         pmif_writel(arb, pbus, 1, inf_reg->ch_rdy);
> +       raw_spin_unlock_irqrestore(&pbus->lock, flags);
> +
> +       memcpy(buf, &data, len);
>
>         return 0;
>  }
> --
> 2.49.0
>
>

