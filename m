Return-Path: <devicetree+bounces-253733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6FAD10EF8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7131030102A9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F5F3191B4;
	Mon, 12 Jan 2026 07:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e7aPK3jr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84373331A5B
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768203635; cv=none; b=XUjcWCs1jVVRcLHN+MEc4O7+FTHT01oQvV4BkVcSuUAc7tTqL5RojLF9NQcyhdAzSdGiu2fcQhYCWNzd/4abshgwHK31EmnTF0rYlFbMi/aDBLAlJvceBjjIdtdOyelzUFNAV2dHEcigZ0EMAbDABXe5c0KDO5IDx8YYk7xUz/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768203635; c=relaxed/simple;
	bh=JtRi6MFrPdl+19+cK1e/kxjINMsNs/Hr2ADMl8wY1zQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oKz4CsvKfHDDQ0KjQlXbuqcvZrdqrex/DshxT6ig2HUoAX/PeylAIKLkTUPzg1Plz0prctOBhU4u6A5WCsA+i4ATxQ9N71O55S/V5JORzTqAJzpdOapzYjPXkKGwVfxEtig+tyH6d83OVdI94jWiE22G1qFLNzDbeJDnEhWL2IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e7aPK3jr; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-598f8136a24so6538010e87.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768203632; x=1768808432; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JtRi6MFrPdl+19+cK1e/kxjINMsNs/Hr2ADMl8wY1zQ=;
        b=e7aPK3jrTi7kbFL9OoqAbBbGznNgFUvkA86Ut1uPEW4zYvMuC7SGRgKz4ch20Odq7d
         tbBXJLohK2ny+5du8eIzBs5emYaJpfe1HH9vkuusB0mvJ2ZwJCLhwV54rLi601hc+CEa
         Bkwmv771VQfad86xlrARqHicrbkQ7HHDnwxGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768203632; x=1768808432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JtRi6MFrPdl+19+cK1e/kxjINMsNs/Hr2ADMl8wY1zQ=;
        b=pP/KjW2WToHUjwEQRT+CRIkg7djJQc4wU5nurA9Lk04LrqBXkMKpT/Ac20wzhIaOCY
         /TgOinNSfeDA1HHkVX+evne0PdOwevqtrsyG1s9j/AYyGNF7K2noO52fAxc0EnpSI+y5
         Qc5870vskgVO2oJaPxwOMcnARdLa/j1kVirhxrr6HfDV3LIGKxMPS2L4xoLp62d95H6G
         57WR9izQ144ej9gqdzHe231ff+fA2/MtrwwIHazaJ497jnO55daoDxGW2i49I6FkgarB
         EPmNNbTSzdkE2/iq4wgqzNZa9Yjd2FnSPOGaOhoSDVJhWlCZDC4b9iXelDBRndvXAqEa
         K/MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVum7Xt5p8ie8cd9nLXm61uN/x7uklMH6nab/4AUZ1hi4PSoH0GuBFs/eAqsF9rStt09TRXGfSADkqq@vger.kernel.org
X-Gm-Message-State: AOJu0YxFhesDN+A4bVN2SCq8chc1U1th0mldsnVbMX0ayYuGNr4SPoWE
	jAq0k2gRpE3+ATcPAEZkCHNQXVAUzQvjO/2m47Ax5AYZpXFltOJpeBpHGabA2m/2JcsUGPTV/e3
	dTI7bOhnQKeLjnG/8fMkRX59ahUKl2QjzYMZE7CJl0J44WdNuyVdzwg==
X-Gm-Gg: AY/fxX7tRLQBZ45QwSg3POj3u9fOJT98Xs3EsJGWt3Ds3ZPJxFLlSHhLgDLfztQZKyD
	eIofZzkkGK8LKYTsSG10ZcJs5+ME4Ht8fFWLeDAUtqmoRkruoeuPbK8Uygu/C/46b266OBBFLKO
	grYcWvH1cPmjOyNUs2RA5ojy3iOLN7amlQIeKHFjSbJdaA6nx476xZD7D0IWM7jObNtheNCaXOL
	G8baa5YWVqyEtvhXOaSMJb1g/E/ND8XbwedtK9wIXA0QAhQZ9FJwQ1Jgk0Swbv8Ikm1RwwfzO4f
	cH8lDnVhJGttxKhddEsSq26O
X-Google-Smtp-Source: AGHT+IFlCspDZCPT9FMQStGT61bv+dAucJwKR5nac26W67Y6fKeZtDHqcvUx1A1+f7pEcKY9oNXx2pViJv8f4miGw+8=
X-Received: by 2002:ac2:4e01:0:b0:595:91dc:72a5 with SMTP id
 2adb3069b0e04-59b6f03b941mr5675948e87.40.1768203631712; Sun, 11 Jan 2026
 23:40:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-10-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-10-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:40:20 +0800
X-Gm-Features: AZwV_Qh7fVNNMWj4l5kX9MHDq3r_XLplwxlkLkGSZaHxXqk6sxgyDlZM2EC7dDU
Message-ID: <CAGXv+5HEFEYhKFuxx+tozMxyJsey-0GHgHR2zMZOfNWYj25U0Q@mail.gmail.com>
Subject: Re: [PATCH 09/11] arm64: dts: mediatek: mt8173-elm: Remove regulators
 from thermal node
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
> The only reason to have a regulator in the thermal node is to keep
> the CPU cores up while reading temperatures, but this is incorrect
> because the AUXADC Thermal IP doesn't need any regulators to work,
> at all.
>
> Since the thermal node was inherited only for adding vregs, remove
> it entirely.
> This change is safe also because, among other things, the actual
> driver never used those regulators anyway.
>
> This also fixes a dtbs_check warning.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

