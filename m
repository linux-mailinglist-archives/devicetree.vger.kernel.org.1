Return-Path: <devicetree+bounces-253734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597AD10F01
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F6753008F18
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34E9331A70;
	Mon, 12 Jan 2026 07:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dmVHdtn/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52089330B0E
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768203746; cv=none; b=bEZBD7BV/mZbK8pqTzCcnTlwasStXICk1LcrHmDDFZXXvgGHxHUx4zEMLUJf0qQJZ/lYm29ITQebzLc19fE5EfwDqjXDT9i0dFuKQyqkz9Vd1FHNMVtAvmH+t0l7AFwSjtsK8EsL0eN0o17Ah16xbLC8wNUpP3wwh9k229p4EK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768203746; c=relaxed/simple;
	bh=3CZe0kp3YvZifht9TF7J0pNQV6O4i3Xn8fgypmpyKvM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R9R0LqhgRKzn+ccwIezsXqbOhxkqRqpwPgD1cYk1lZXZ5SKJzf+LavszSAJfrYkmBePrmJpeeM8mhvkBhAgthvZP588AMsdunkVYZH80JbERpIj6mZjh1HINbuOnCZi9ytf+FMirzkLvQMN1vOeewjImzdpliNLzL/14Y+6OajY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dmVHdtn/; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59b76c092acso3439652e87.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768203743; x=1768808543; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CZe0kp3YvZifht9TF7J0pNQV6O4i3Xn8fgypmpyKvM=;
        b=dmVHdtn/RiAHkFAaPhfdpvny0hD6PlTeUwj7bFy8c6fiQ031Va5uo8cTsNsOrkNw6h
         yS1Go5obcive9vtb703uNah2yibZD3Xw+dxolU8W8dJOhbtx9Uhn0ORJQero2xhiVAOj
         zOsRaKAeqjP8vDnS9JRbct2pssHL6SMNCkAvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768203743; x=1768808543;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3CZe0kp3YvZifht9TF7J0pNQV6O4i3Xn8fgypmpyKvM=;
        b=TJuZqHlgUmxXn/95IlwP28x4+I1HX4KehPJ9hM4fXOImsq6WG66V0AEQtHigoWLrus
         PIhQpco/MEIxWJENCdjYViHEPCbEd+eNtaKZA4Jfdb+Kt7DgVIXzDZLZjNGqiXHlq9j+
         G8uLcclmHCSCeOKRDxdER3q0qIoho0IIXAAm824MoVF7bJuP/Jr9t+eaE7RxmQ3/LQbR
         0Kz5uyZw7kgXLn9NSNsOV57+Sexas/kMzesw4pJgbksU3Vi0U4Zv+MDrPuVQ/0Lw1fjV
         IsiHUFKwg7hfqgzfzLAG7kh8fOp1zN4lMUNrldSdJN263lK4mjp446jSzw3k6SguY+7Q
         MoZw==
X-Forwarded-Encrypted: i=1; AJvYcCVl4X/gkxsFIJb83cFkBzcoHwje53XZ0meOh6BJnnf+Nj2G5ceflA6RMBo0tQfz28534tFZYuwdDVBp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3H0O+rIWn0izLMFlke6YEf+2A1Q0FDrHiP1/4oYql2CimFvBi
	bm4TRWDXu2k5rrjqComb6gtmU1SWY/3Tk8e7SS5Mo6vaIGC6TzE+//WJlBXkMieCgLSFoNnwwXI
	BXIoOWLDXx219Z7EILgacmMN9h7PlIIPyFV+XCbQ+
X-Gm-Gg: AY/fxX68zBstOOoQtqzDg0ZDHsIe9/2ewbpd5iw0Zrz9SFOO6TWwU2mdyiYVlxuyLxj
	+dkeXZ2fiQNL2+Lz9KirLCM3WKr6CE8yUX6m8sHOTet5+RNNtxky9kIVqX+BfkPvqeOS0R0HzXZ
	6cj1HRrpSKMSI8IX7PhScmSUEJIUKaw+R/9KM9HMx4gwm0fX0/C/weWI3aeS6LKK8xkYVVbotvI
	FPXOlUTaD7VEJ5+oOW/eqfB59rCTZabbYbmDDPOOzC+13C7Luo4ZtmaFSWnnBW3EgK9wQdKh1q/
	ofmOrSxoG5430MTDwO3ZgwIg
X-Google-Smtp-Source: AGHT+IGVc0Z2JDRCQM5TMXXHmh/cYXBFfOa8+kLkLkYVFEmHdQa4U5SihlDMvs5L8T4nzdOAt8JPcoXc0kdii0T5lTQ=
X-Received: by 2002:a05:6512:238e:b0:59a:1819:277d with SMTP id
 2adb3069b0e04-59b6ef0285emr6512360e87.5.1768203743522; Sun, 11 Jan 2026
 23:42:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-11-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-11-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:42:12 +0800
X-Gm-Features: AZwV_Qi-sYgNZhY-tRMlNpjpDMDSuAUofyCpTvn8OEDgVdLKfkEI96a0JTlQ-uo
Message-ID: <CAGXv+5E=Ff6iJLNJg=_crWKmGWCk8sKpNCEtdEffF997JAnU9A@mail.gmail.com>
Subject: Re: [PATCH 10/11] arm64: dts: mediatek: mt8192-asurada: Remove unused clock-stretch-ns
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
> Remove the clock-stretch-ns property from i2c2, as it has always
> been (and still is) unused.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

