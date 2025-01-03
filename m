Return-Path: <devicetree+bounces-135317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B09A00829
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9845E7A1D6A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1041F9A8A;
	Fri,  3 Jan 2025 10:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oBoVCeD4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E518A1A4F2F
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 10:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735901926; cv=none; b=DPDAMftNQe9sLkJOYkR9yoLKE3XKR4W29Vqbe53VkUeSc6JSVQbD9y1GzBwFFTl/JihtnyUDc1n6cb3LXhOMzx02QchIFVMDLkCH1HpzzxULEu0U/iFuQNX3wqFRxiw73SmpkXAKO7mVQiQOPToOaSJluQK44ykHxZSALUwfGS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735901926; c=relaxed/simple;
	bh=S2Y3f2kQVH/tjvDflF9nMzRgoypoP7J8xfTe80ikY08=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ZdfVdLnqub1FL12N//Wg8JGpkdWsy5NfMfaOWPNP6zyMiZ5HXOPaHYoGt390r2Fo3HJ5IqyCHstSp3CKTwx/SPEEYxlJ9AUWHfskr0CquEEViaMugsn32NImUzD+amWxgD0vKM2MmiT5BxJPhEKNPV2TSAr14CF0D9GNaj4xVNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oBoVCeD4; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3862df95f92so5291812f8f.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 02:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1735901922; x=1736506722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h3u4oGWBQKjEPREELrdTT/cBTk6tLIvMbyFiElHLVLk=;
        b=oBoVCeD4JOoMFNmnlhSXu9xavcF7ldgvT8AfIQSPQ1ke3TsXCEzilwIrPdvrPOsoiA
         ijkCSZp8fGQe5f7AYgF3UcBpUBajH5XyaFycaPPgLCwuhihASc0nc7N4cyu2KE/Wnbea
         lDIjRetN6pTM8EDuL7vgdrb5BsmLf+Fy2qR+j4eGszS8KhXTBDkbp6ynBqKl/P4XdSKM
         FbID9AsS/rW+zJPTUNuVfNJBEVNiF0ggy/mPS/RCMwqJb2yNEwOAp6rAjCWzxhoZgCik
         2aoZPNmc5JhJA97fY2tLFuD6uW1E7C/LL3MhtSgme5TWMgn9Nrw3WjhmhsgRPL4FLBEr
         O1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735901922; x=1736506722;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3u4oGWBQKjEPREELrdTT/cBTk6tLIvMbyFiElHLVLk=;
        b=uBeEaJvgP3oMd7/oN3Y4K7RgQJbV9BtiLFtoTKsIY1QyBv1PJSZfwF+isQC682AkN/
         kxcx+S6Tidl2pvkXVzrFIKvxI7GUD2h4ZN1tttsAqwR5nNRQT1G2TA0ffvf0Vpzzovrv
         7Gakpcdz4QRBIti+6S1CrFnKlO4cpM/HYzGcwVIiQlDYRa0y94s2rgLpduCPh3ZIJ1DX
         k4W2EELLNV6q4Vby39T4YBw5wEA8uRLcqhEA8LbWZdqhVbkReMAPIU/3qgMp2uMKowhq
         1U8XFMBGXnluuQROU9aq/tUZDwazM5t0bcwOnK+eDhI/SLK4YCHjdpFFaByWc876ISxE
         U8Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUjS2yOp9828PR/RTFoBBdQ1qDZ+luxIuV083nyvIXLwtV3Mev6AFEpXUyD4BUPP94deAux5wK+w/Uz@vger.kernel.org
X-Gm-Message-State: AOJu0YzYm+9cDDlsS1RXz5uG/ViOAOmIIM9l/T0lZa+0ZNVjHoB56k50
	mbhsfTYmKRn4ZyxioCqOWC4Pz4zeHnE5f5r0mdfoslJ35Q7zMZwM0361CJf5aPA=
X-Gm-Gg: ASbGncuvGo4eDSqZVMknHz1GlrK/7FJvOgtOnl8+KEbx6H6zbV88oYUagjh6LnREXIS
	vkrawXLL+OZr6v8uyGk/IngMuB5QEms865eHDWq3LcCt7ckMBuixG+caUscQLuy9K7jouz/CbBb
	jSiEuGcoy0wcplfvlFscZ1h2D3cvg7e/uRf3moSfFOEmd4fGPbebA3X439mlmm9Sf/+tTX/lBrf
	s2IUZYV776ADxkd/VCIZY+NfvRyAfnOCjhl2ontAFhPNG/DWWXpNnfqjWBRgtQpNA==
X-Google-Smtp-Source: AGHT+IFjtv32f9kYfRVKeyGYT0IEP5Qw+m/gGOhzKk2Cr8BmmZ9Jl41YENFOU1sjQfF0nAEj/HJdsw==
X-Received: by 2002:a05:6000:4703:b0:38a:69a9:af91 with SMTP id ffacd0b85a97d-38a69a9b0a9mr1730131f8f.13.1735901920712;
        Fri, 03 Jan 2025 02:58:40 -0800 (PST)
Received: from localhost ([2a01:cb19:95ba:5000:d6dd:417f:52ac:335b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a28f17315sm35078406f8f.108.2025.01.03.02.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 02:58:40 -0800 (PST)
From: Mattijs Korpershoek <mkorpershoek@baylibre.com>
To: Val Packett <val@packett.cool>
Cc: Val Packett <val@packett.cool>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Fabien Parent
 <fparent@baylibre.com>, Alexandre Mergnat <amergnat@baylibre.com>, Amjad
 Ouled-Ameur <aouledameur@baylibre.com>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 0/3] mt6779-keypad: fix compatibles and add to mt8516
In-Reply-To: <20241225192631.25017-1-val@packett.cool>
References: <20241225192631.25017-1-val@packett.cool>
Date: Fri, 03 Jan 2025 11:58:39 +0100
Message-ID: <87jzbcnoyo.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Val,

Thank you for the patches.

On mer., d=C3=A9c. 25, 2024 at 16:26, Val Packett <val@packett.cool> wrote:

> The mt8516 patch was previously sent in another series but rejected due
> to not using an mt8516 specific compatible - which the other usages
> of this driver (mt8183 and mt8365) weren't doing either.
>
> It's only fair to add the SoC-specific compatibles to all of them then :)
>
> Val Packett (3):
>   dt-bindings: mediatek,mt6779-keypad: add more compatibles
>   arm64: dts: mediatek: add per-SoC compatibles for keypad nodes
>   arm64: dts: mediatek: mt8516: add keypad node

For the series,

Reviewed-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

>
>  .../bindings/input/mediatek,mt6779-keypad.yaml        |  3 +++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi              |  3 ++-
>  arch/arm64/boot/dts/mediatek/mt8365.dtsi              |  3 ++-
>  arch/arm64/boot/dts/mediatek/mt8516.dtsi              | 11 +++++++++++
>  4 files changed, 18 insertions(+), 2 deletions(-)
>
> --=20
> 2.47.1

