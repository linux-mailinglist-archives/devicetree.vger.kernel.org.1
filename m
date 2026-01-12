Return-Path: <devicetree+bounces-253759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B64B2D11285
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96AF9301EFC5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E701033F8A1;
	Mon, 12 Jan 2026 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XuWHv97+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E9533EAF5
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768205910; cv=none; b=kTFUGAnwx1oJthInga3KJqsYLtij8G9gJOIxLvO22PAu/dj6uUS+QETB0tEf++HgY1NMqFSDAtu+vUDFed1FvWGpx2xuutJocdU2DsAw2dyOut8p77AyPctfEcwTwMr2LMISV7lsAq7CRmTpQWOvMRYCLgN9zUAqMaErmcrRM0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768205910; c=relaxed/simple;
	bh=L6bCLbvW5A/zowtZrBrPo/Bq03CDcWcOqwDwQh5SQ14=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U/0MVRHZb4URVoBSAeCsNYT21C8jKoyjapcN7z9KhiSzewGOWHZ0SZCieKzS9ZuZwe54HyuwKjX7eZrSwb5EdiZkXzH71TnLhp2AFeAjfG0/A6wxH1MeAzqCZmYNqG7PSGVLhcIZpOUeW1pOUwToL1iSmXZ69BbrpjKogSGL1aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XuWHv97+; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-383247376a4so20926531fa.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768205904; x=1768810704; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L6bCLbvW5A/zowtZrBrPo/Bq03CDcWcOqwDwQh5SQ14=;
        b=XuWHv97+9F7hml/zhWXkMM+R2M7NfCrfUNmpKzOGERBz41ce4KNXwyXVL/hP7l0rmg
         q1btvOSanhjwx0j3SFEZr20KB42hvcLd6/e3+3wMSwMj1bX7bi/BZpbmTQ8G/qEU5tDl
         6MzwEhEiQgDS/Y4wCgFlUEYs/uhW5dpUKHkiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768205904; x=1768810704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L6bCLbvW5A/zowtZrBrPo/Bq03CDcWcOqwDwQh5SQ14=;
        b=Iwf3UPbS6hWv/dzxGhVFnl3d7DxAdE9/RMSnd8clg1GsBRwI9dw8QVM08250N5eisz
         k6Ald8UoKht2BNtKTir+xONAsumws5Rac6SyBT5HwVf3KcdNGK5JjUzC+RTjCOqJfakI
         ALY89mXfQFaKLlcgEB5DZyAcCdyl3SHD/SSCxRsPk5QREoSS1oT9lF7l8Jxkc8nyfEoY
         JtJcEpl39o6q0OlXUw63QRBSjivlE6NfH9Dyu/i6zG3RVRk3tE/PIKqZljebhzYQgqw+
         2NwJbaDTqkvAAHM3hR5khY7195pvg2gz28Tas5lm1rfNMgXUKPm92fgkLUkUF4AIkTC9
         fHTw==
X-Forwarded-Encrypted: i=1; AJvYcCXd7T54LszEjQazVazhzJ8ycMfZvWLRE0AF5tqwX5NC+9C9H/qbU9aBDP7mpv6zFcJF/15wi1zwpLnH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1hx6Tps2OL47w+FG8hymrQ0RWd7+dInMzVcjZ0DN0L70gWKkE
	E466HRzg2IJoiJhmuwT1obLgX3wGBgzeXpVS78dVGCNbjiKs3AL8rqVqz80wBD7q3/W2ti4SJMA
	KzVI4J3hT5Daoy7nJmOQFxei5NSAuVI+wuQeYwATj
X-Gm-Gg: AY/fxX671gaZXj8FDmGIJ0M/oY0/9a56drWiGwEYFRvO59a17ZWsB0jvBgZIPuj9yMW
	4v5kS+aY9y80DzWiQz9PSpDsg0q+O79+vNIg+RNDwcRHcmv8y2Z5FYPkhwsimtIOeM8VHvdyOG8
	5XBxCS6HV5GkEevBnh5VSGdwgGMULuDSEr0lh+tuNZRIW0BArPDp/vehSkgJm2gqsHzGDmh8IKN
	o7S8of7b73nJl6YIzLsoldE1BE8+Wnoojlf8KvEd0KYZjN5pnrs5m+P9znpAFhQracJ4r7ff866
	uyk3hqNQioYcfFalqvSai7Lv
X-Google-Smtp-Source: AGHT+IHZj8OtKhvjb8Ys8ElSyf3nhdRjZrZvnNua8ODxVvC28Gw2WXeKLgSbqyeYTY7AH28BYlDFxpSNkhmnPhK2TKM=
X-Received: by 2002:a2e:b88f:0:b0:37b:b00b:79a2 with SMTP id
 38308e7fff4ca-382ff688d40mr47364531fa.3.1768205904306; Mon, 12 Jan 2026
 00:18:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com> <20260108143934.69634-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260108143934.69634-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 16:18:12 +0800
X-Gm-Features: AZwV_QjyElcmXKN67UO8XW7VC_1mJ-HQyn22SZQ60IamoKaOC4_dQt9Okx2MZZo
Message-ID: <CAGXv+5E4w==FbYVGdh+7+btZJBT6UQa3V9buMKO_z7M04RL8Vg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: mt8188-geralt: Fix warnings for
 vdosys0 endpoint
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 10:40=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This machine needs only one endpoint (@0) for vdosys0: remove the
> address and size cells declaration and rename the endpoint@0 node
> to `endpoint`.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

