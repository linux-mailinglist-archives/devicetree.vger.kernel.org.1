Return-Path: <devicetree+bounces-253736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7EFD10F1C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9F5CF300DB1F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E27332EC7;
	Mon, 12 Jan 2026 07:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FvSGjiBx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8824F31B131
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768203892; cv=none; b=P70r5rcDS2m8Dy0+i8OasPcnHp6NjE9Ba+fqOOnVqUxLwbKkl4QolJ9MqFHHH0MSuLuW2Aa29ADyG08Y4oFLe4FBqaj0+v+ziB5kT+IwLNBLvKYInhS1V7OxH7UtwVn1Lj0G1evsPUg882h/jafoPlvmaJcNH+Y1kHFy8vz7BRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768203892; c=relaxed/simple;
	bh=4cxgNENcfo8cXQBg0dw/jO2senp7A8YTAU0sZZxB0f4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KYnGXzAtIMnL5emVOBGXX2Hz7BrhOnx5D/6xYoVx+mR197IJHjNZToEXHhHgnLqkH/R9vlq4y+0nsR+RvmxLQ114ep2/Vy9VsPdsYS6dY1LRfHhcbOM75xL80xiLR1o+uF+OGxHlVCEymg3WNgErggpX4EdWUGeRVbMqEetIctk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FvSGjiBx; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59b76844f89so3697214e87.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768203889; x=1768808689; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4cxgNENcfo8cXQBg0dw/jO2senp7A8YTAU0sZZxB0f4=;
        b=FvSGjiBx2d/wJd9mGGMNCCFaVIEnOzXpetwD/b/xLNs2GkTOSF3bIFlb1YsTqvEBaf
         iW9zBJS8ZGJJVQRo7+jb/dOkkYj87GK2vI8eIosIIJ0CBOKpzo6giBbApbz7sq9n/X5B
         xdF8KHZTYkD74qZD5zKlGZHdEu9EY6ancCCrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768203889; x=1768808689;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4cxgNENcfo8cXQBg0dw/jO2senp7A8YTAU0sZZxB0f4=;
        b=BodJYusq78zOtTuQhbMEUZodAIl1SCfeeO+UxWcrhjtBKlZBTT4rLrdyh6fY9PHbyp
         Pd+ZtTG2XcE7TibI1XvjtgLOW59Gf67dkk81hADwIwyvSTwluMEvjzwuMTHvIqHMWebE
         5IDQEVTH9Y0pY/utsNtfRwXcAeNim25++37ckciQNMbDC6mwZWnpRsYMK+2Jstw7SwMp
         LtOAZygIFlJbLGqz9Suzv+piwDUZ7zvTds1nkImbV43vqp1dzyAHyXI29U/SSj619mBo
         +Y3OGNxbs5fPVlKdRlc4EdkukulsUIKkaIpVrFhE6veEnEandOBvrT5O8fzQN0wc1aT1
         SvHg==
X-Forwarded-Encrypted: i=1; AJvYcCW1j+F/unQbErQ3IbLD+0KJ3437A0FgyZmHw4hzvQj43oBB9KoJQWbLZWVybt9AO1GIM52RxJulAJv0@vger.kernel.org
X-Gm-Message-State: AOJu0YzY9n3bYMm9yJpn/21rtJEv1KQxrWhzqxPM5KOhweqztVggvsXM
	+iJwl11nqM388gfgW5CHCS//nz+Tq05hqfZquon5Tno5Lwrt2qwBraP9caEb2ZZuqQwh+NLQbzi
	mjyluHJKokss4jvhPkclGzVZ0MaXOaAPN8dgi1FCl
X-Gm-Gg: AY/fxX6gT4KG8MqBaFkDrwohPTOH0VrtGfOwGVNB0p4cpj4NZKqbJKKOvefTAxxZE90
	co+mOCdr8Rh3j0x+antYoxGljxBt+1mUp8EcLQW+lx+MSE7ipUDChqYGSY9LcYOUuq9pd7oRe6h
	DRRwzVFXXRIJPS2L/l9yM241i7qaZWMVSipwr+FLGAH9J0kRh2fdV8sh6XNb4YNaD+5MF4C59+L
	s3JKBdn5+e+xPNrgF9M9gHOrQ3aKLiQhxQOkrzLbYWgCgA9641tFeIIOjrsu9KUqo7v/2mpUdB7
	kMOcsqW653AIvJIDwN4XWMoE
X-Google-Smtp-Source: AGHT+IHw7rJNOI5FOhbZX1z1+loaYEI568M1UN5tIdw0I/h/UzWdRmrgGYuJ1o+tqHTlBgV9Gn7UvOzvsEm5UoDFFCM=
X-Received: by 2002:ac2:4e0c:0:b0:59b:7a80:3b66 with SMTP id
 2adb3069b0e04-59b7a803d15mr3432200e87.35.1768203888672; Sun, 11 Jan 2026
 23:44:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-12-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-12-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:44:36 +0800
X-Gm-Features: AZwV_QhvNS01wOFUK2LxZMHidH88HiYPvQjeQAgpHhkp5P1dAOfPIn4Zb_mnq48
Message-ID: <CAGXv+5GywzbWWMEeAkexntNbRfUzdnahZ8oT72ZMdzLS6JDiUA@mail.gmail.com>
Subject: Re: [PATCH 11/11] arm64: dts: mediatek: mt6795-xperia-m5: Add UHS
 pins for MMC1 and 2
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	hsinyi@chromium.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add the UHS state pins for the MMC1 and MMC2 controllers and,
> while at it, also add the correct drive strength parameters
> for the default pin states for those two.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Format looks correct, though I don't know anything about the drive strength=
.

Side note, having a pull down on the clk pin seems a bit weird.

