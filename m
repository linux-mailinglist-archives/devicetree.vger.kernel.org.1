Return-Path: <devicetree+bounces-200936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EADEB16B3E
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 06:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 892F118C6A70
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 04:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1127417B421;
	Thu, 31 Jul 2025 04:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="h5sXc2d0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7668C1DF25C
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 04:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753936407; cv=none; b=cI3X5PfSu7R9IcNSge1e+WLMz2/em15jNvzXpcSha4so0pcmBP0GOqemu7A0rZ9zwiS3wFzr2lty6ZqI85cs4E0iRvVCSmBJjIdRsZdK9axIT7BRLAPRWLjG1jj8cJHPEEC8ZF9Dc+CA6M3TPIjXJOuLm+cwd2byFYvKv0ESvTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753936407; c=relaxed/simple;
	bh=e5Pt2D+lJivBS28/plTuvgaI+t3rSje6fmXy3hZeQKs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BAAnJrcLSeOU8UYn17U24ZdJEoIu3gaYjfBsLsSr7A/TbCslMEeNju1Ne1Vho6o9X1n3I8CzA8BI3ILYlRCnTvRCeJoAhw3qbmmkRwbgBQjvUvqJk9wUPJWfkEs8rddZNptZxCOjmEXbcOe/vTvtp53u/2/mV2oZKqoHXbaFJq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=h5sXc2d0; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-704c5464aecso102596d6.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753936404; x=1754541204; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5Pt2D+lJivBS28/plTuvgaI+t3rSje6fmXy3hZeQKs=;
        b=h5sXc2d069D4FzBctnQ0JkNwuF96IYVqEBhrfPmS7y+Njyp7NkonvxXA4vA3u/mqev
         J3jSzPuLRW05wEaP6S1tppGtshlRypNM3n0hZEFlQ+CoomnSgLhznSywe2H5JvNWsh9l
         tmERsuI7vJCBc8SObme0EezHBCgUaYHnNCP1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753936404; x=1754541204;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e5Pt2D+lJivBS28/plTuvgaI+t3rSje6fmXy3hZeQKs=;
        b=ivRsg0JNyT9p3ohU7ej4TqeFJJFZNok+GGPTj8G0sWh3LzQU6OHcFnmpJCkfixI7FD
         FQMrPYPs9lxvKegt0whpr9A5loYZO6m7LTC6sPsxp++QgqvDGK5VyX7SnDYlRB14xtLp
         T+cUfdHij7p2xY6g1T2RVf8R8mYu0bQGfCKr6RMebN3ZROXwIakXIL0q4ufDUiiCswJ5
         /+LPuCCoui1/yeOEYo3SbRaF1QcJnfurkp5xA/lhSeL+GriYGhfHwAgFp0wualyaas5o
         /yzIaMnme/6WUmJ5J83b7HlH5BV/FjdtcpKBDAOj5hp8jNLKKQbPtUNQufmhJY5jcijh
         VvMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsLwt9mpnSNg3ORGphKotDDtJf0SQ3pXjJeOv/a0mU0xHJIaMXGgvZOV254GViGVXCxpKFk/6oXN3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwXIOOQ5NhtsEtdTflMyy19Qph44raP6WxCiOvYyh+NklxPEoLa
	g/cbldVR/K0XwiSty1NfrtwUtRylvRH0z7+np1TvV0eWVL3s5SVXEzwZ7YJgFz+7w/LVMc40epf
	+g/8=
X-Gm-Gg: ASbGncsdXepqTjOqFGIVA+caGUNukVygyr9P/KkXwVnDfyGzn+i5YODAkNfkIRuEXRD
	FGK1LEIoL10qodaXOhHbFccahtXIqur0+eAujfUiE2FRDj5MxKE1KVJ1ACYwad+9/eHpTqhTPdF
	+fd5bylZDW/NkNZJjgZMmg9XaxVz+xmi59c6dmacmKg7RZpUWXIZdhUI3C1s1mxEKUMZkRJJvGJ
	ZRuXhuwsXWcCIRqwYaYrw5KUkSWYcyFvRzOlcyN/WyczjgBc6guWDtsszaCScyik0kI6DW4Dxcu
	8+rpO3Q04YXcQ4247UxWEQSgRNO1QVUsnN2TMPniUHr+/02JR4TopaaDelLZiyyKtADKLjPaEaS
	Xk3rD1oKjYT9qRceejhCmRqMTEhKKzW5boLbq0I7a7amMv3+Z97NLu22p5ByfFg==
X-Google-Smtp-Source: AGHT+IFf2OhA5aaaao9Xa73mAuZQ38TJBigHVBSPJUbZWOj8fYlVa3C0pcUya4OuUoKtSrFfEcYM2w==
X-Received: by 2002:a05:6214:20ee:b0:707:5758:c0ae with SMTP id 6a1803df08f44-70767114bd8mr70353356d6.32.1753936404007;
        Wed, 30 Jul 2025 21:33:24 -0700 (PDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com. [209.85.160.174])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7077c9da7dcsm2695466d6.12.2025.07.30.21.33.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 21:33:23 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4ab8403b6daso6185001cf.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:33:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX17bMvWWiIYfz7S5polPEt3dRQNp07jmZtEo/AbjQoChVfkFtBv/v3OLfh5NoW3ey9JtDLGFWjcIWn@vger.kernel.org
X-Received: by 2002:a05:6102:3c84:b0:4e2:ecd8:a27 with SMTP id
 ada2fe7eead31-4fbe7efb067mr3218583137.4.1753935982767; Wed, 30 Jul 2025
 21:26:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730152128.311109-1-laura.nao@collabora.com> <20250730152128.311109-7-laura.nao@collabora.com>
In-Reply-To: <20250730152128.311109-7-laura.nao@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 31 Jul 2025 12:25:46 +0800
X-Gmail-Original-Message-ID: <CAC=S1njcFhyY6+dT2MHU02ZsLDq+k_vAVv==bWuoGt3KA18PHg@mail.gmail.com>
X-Gm-Features: Ac12FXzpMbFxjUu23GFYxUNlitLi6oNpjwDf0fTbw3kLbAuwV_H195C3EX5jG7A
Message-ID: <CAC=S1njcFhyY6+dT2MHU02ZsLDq+k_vAVv==bWuoGt3KA18PHg@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] thermal/drivers/mediatek/lvts: Add support for ATP mode
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, andrew-ct.chen@mediatek.com, 
	kernel@collabora.com, nfraprado@collabora.com, arnd@arndb.de, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, u.kleine-koenig@baylibre.com, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	linux-mediatek@lists.infradead.org, bchihi@baylibre.com, 
	colin.i.king@gmail.com, lala.lin@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 11:40=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> MT8196/MT6991 uses ATP (Abnormal Temperature Prevention) mode to detect
> abnormal temperature conditions, which involves reading temperature data
> from a dedicated set of registers separate from the ones used for
> immediate and filtered modes.
>
> Add support for ATP mode and its relative registers to ensure accurate
> temperature readings and proper thermal management on MT8196/MT6991
> devices.
>
> While at it, convert mode defines to enum.
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

It's not visible in this patch, but a heads-up that I see
lvts_ctrl_start() also depends on whether lvts is in immediate mode. I
wonder if anything is needed there for ATP mode e.g. a new
sensor_atp_bitmap.
Feel free to ignore if this is a false alarm.

Regards,
Fei

