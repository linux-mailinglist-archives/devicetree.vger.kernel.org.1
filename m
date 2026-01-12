Return-Path: <devicetree+bounces-253722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5B7D10DB6
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 162143007E69
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C6E43233F4;
	Mon, 12 Jan 2026 07:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oDuvNKpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E0C7262A
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202814; cv=none; b=fe/BJcy5VHPcIUbZZGsoJPGz75yFHsX8L0GNe39zlZYxQ0KwdOAe0s0BkDfM4eL/RY8+MjVzAfPvaA4KAmjgt4WAvoYgu26ie+Pdq7A7U/0SJlgzJQszZ/vlZ3UPkavDl5AVjtKpwweVaSHipwrkE086opxLf8RRqPsxF/p8o9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202814; c=relaxed/simple;
	bh=mgp98Xl/Ij96yBO8OoKZQJN+mUE2nEt7kKcPNZRNTLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SgBDlZAieNyE7qalH5AKAnUK9u3SZMBRPjg3HlU29jRokpkQTx64Pb9n8b3NeWaWtBl/2duTxTK4FCgWx9rd/uK4Ygcom2zekenqQtcDUcwI7316H6RIRjc7lcK4p3s/+cEfJ4z5WrI9Y6cUmhgOTW1/H5AnGk3dS+SFCtEHTnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=oDuvNKpt; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59b6f267721so4572532e87.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768202811; x=1768807611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mgp98Xl/Ij96yBO8OoKZQJN+mUE2nEt7kKcPNZRNTLE=;
        b=oDuvNKptgIRAzuhD36w2uDGdSBVqGM7mWO0tIch/6nUHM/jYSMSVWU/xNxfZ7DcCni
         zg/BSKk7ezvVJu+/A4JDM3HiOSfv71slHiQbR+ptjZpwusf7zX0PXnquIL175ltxPaPs
         fyqjM7981gPmogbv4+Y8xHPhNRi7o9cWT76OU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202811; x=1768807611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mgp98Xl/Ij96yBO8OoKZQJN+mUE2nEt7kKcPNZRNTLE=;
        b=wkI1Eefiw0tyyESCKosBccapk1/I7Mr5v/yHXQeB4L/NZPnzTS/EnY3UhiRoWQ/Yjn
         uuCGn33+bwy4RFlmoMn4psLKgLSO1wtEwePsQYCGhsL9HAX/H+r05TRFoeI7cS79xN7R
         MdCSVJ2M/+w8/i1FaOh3DTbQZ8uTBI5chz//J5khnEpNkzhJ1Xyn+3/ioxjUaw4CelLw
         KGRBHcQ/LmNe15b5i54rlBhizdZMU+4gFHY2IzgylCE3c97A+GaT6vLJD05Fc/HLTwfM
         DxC52Nu3lEirfOJk0mp8P6DtlMPv+oSfiygwsVzFQfvCuIFQS6DbCUC994m0bADFSSYm
         xxWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcd+dpYVvsMO/PT3X3eZLZPQQZ42VsxKno7so2aOAwA6/PQTzTQwi+90u+eU7JCncLJMAALP+11EtA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfpq3TIXaI2bLR6+Sf5MSblgM6l27NSJZO3QGo7kRZWaQaOW1R
	3pRAYdc+iWyDBTbqkzy+tF8cwwhLow6atRUqbG+wYZ8unXoDml+2v/Yw9MdZvEtwBRjgCgk2xBG
	n76iPOEFGEy1vamwB3jaSJe80CpsMMPVnvlNg5j7g
X-Gm-Gg: AY/fxX6Xqmsnrh8R9JoWlmDut5YeXr4lbnhzeVGKTQTm1kApICk7U0JsaM2ruVqTao8
	Qky1TzcFQRlQCJ+6x/cOkwVhYxJP6Oug++sLceR+FOj1XkaHzRvZfozVTzFWALMZLIqI1V02w2H
	6MGRgRBoVCR3qN/YqnxY6aZVNhj8/GNH925hDHXg5g+GTu8CIwyKgZBNeDy2c5gLoXqxGP1u/8x
	4lWmYyge3wmsRbjHIekarXQJH5wa2zYZ0h7tgfvYnjmg02xSgxgcPzTrni4jeXADvSxFiXk2jLy
	f8yaVq5Cfz6ZWz/RXvOEw4WF
X-Google-Smtp-Source: AGHT+IHq6HJyogErRwRuF8uYG0l1rEuOGyuyg1CLZdmDapOhugecy77eR2OV0LOvv0EJZ7znHYv5yg4KCxxMDd1cRnw=
X-Received: by 2002:a05:6512:b17:b0:59b:71f4:3df8 with SMTP id
 2adb3069b0e04-59b71f440d5mr4669766e87.32.1768202811171; Sun, 11 Jan 2026
 23:26:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-5-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:26:40 +0800
X-Gm-Features: AZwV_QivUko9VD5wl2tpLh_Jtkrw2h5oLTr4Z80Ltaif0J7lb0PaGCnIE1AKRSg
Message-ID: <CAGXv+5FDQ-GeBDQk6MBj+Ddao+6pkr9Xm-n+CLTggzZPTuC+=A@mail.gmail.com>
Subject: Re: [PATCH 04/11] arm64: dts: mediatek: mt7981b-openwrt-one: Remove
 useless cells from flash@0
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
> In spi2's flash@0 there is only one `partitions` subnode: this
> alone makes specifying address and size cells useless, but then
> this subnode has no address and no size, which even makes the
> currently declared address/size cells wrong.
>
> Fixes: 869b3bb5ada2 ("arm64: dts: mediatek: mt7981b-openwrt-one: Enable S=
PI NOR")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

