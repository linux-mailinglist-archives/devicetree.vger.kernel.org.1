Return-Path: <devicetree+bounces-249322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF93CDACDA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 00:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C5F73026BE3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7263830F529;
	Tue, 23 Dec 2025 23:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="DQk+IT1W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C0230C363
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 23:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766531381; cv=none; b=U5JYzwSTxycmmjbC+ljx9eRWLQbj49bdlK78FotgV5u0qR8v5Z0uEb25nKfOqB6YebVFjpPxX0eLyZ7IvpwOkISM1gd/Qx2fx0YnrrMH4ITpQcWHy4sbem2NJY5X37hgzU1UWd395w/W+BNc81RPqYJYqXeh/uJKzyFfdfaeu2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766531381; c=relaxed/simple;
	bh=m1EjGYP2UGBwtZ05v+i9zGbhr9QL9BrOQBe7XkYsNk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cwW/xoCoOl8l+o8grCJussz/1je0VizG0PhmxtPEYKrG/eV3vr/WfEvwVU34O34QY48dUfKt1kQjQVsIJVRtA0Vq+7Sl0kgQWBOVQQKT9XtBvEi8na5c0AOPiK5dwhIGc7AJL5J4Y5pWB4c4+povGyo8v8UBWIswiqErmqqtQ5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=DQk+IT1W; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a0834769f0so55147995ad.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766531378; x=1767136178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1EjGYP2UGBwtZ05v+i9zGbhr9QL9BrOQBe7XkYsNk8=;
        b=DQk+IT1WHcGXDpTpZL0wZtRtlueKNEBNZu0U4f4PsiT3EY405Wci+RHPPt5+2LPWc4
         xEJSe+1Gy/bltJibj+dka7rBwe2WEJYjDFE9xHTqtJrz5hWagLCJWIO0uykYmV7oa/e8
         dEm/l+FM8eVNT5X9SAzJsKPbCn3LBmJVcOMEHq2Q+MOZ+fenGBev/1IuxzSFo7nR42zG
         AmFQIrvetkg8dEriQUcoE/+AYUe0bYv+2eHuT0QCwB9nES4o3ZwZ633USw3BxRNsbAHe
         0bZTb9Y70JULYf5ePvDaYZLCEgvrf3dmtIiiEW3xGzbwb2hFbnrdGEGAbYEwADlblcY8
         /TMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766531378; x=1767136178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m1EjGYP2UGBwtZ05v+i9zGbhr9QL9BrOQBe7XkYsNk8=;
        b=sbL2o5vtyolNkGtSeKZjZggI25HoFYcqYELaM1MEhcDktW3520KzQy/GNOz/viDCO6
         btQWTb6OjfByntVl71IZCBDFazQqYDsWB6nOp9tkMxKgi1wqhNxE+OEl5HHeTIvWOl41
         0MscmGFqZ3DGZzb9xDni0qz+RCB/QDPa+sSAR4kGBbSRuWSj7Kbz7ZnmxLPnqhzW/Yqd
         ZH4FCJiTdcXfY9ysaQgE7/etSogV+CBKWhBSCIu1ZfprRQToPVRqvNVyBlYiYISVzbRZ
         Z0mVdIPJglMEAr+dgqUn6eb1u3W6zNPxxslz1usBBAYJoIHrDX1/orU6baNDqXanQChQ
         vgZg==
X-Forwarded-Encrypted: i=1; AJvYcCU3m9Bnup6Bc3sr+PjHF1mjJTK1gKVXFSm82DU63WVnWEFGQQRlcFfgnSeT6BJ6bjlxk/t9pohwzVom@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm4bqRAgu857DOZHINinQWeSEJAB/coD+ZZutdW1r6NCVyZ5V0
	/8lRfXgGtn9OLUWnE1ERVgiv21h/GEfKdEQ73qJdSNUlTYYcbtnRxEUGymXlsQRY9lEIT0Rm3g2
	JJdIJOiYHAtGEsuTbhq3EUSmlc5xiwlQ=
X-Gm-Gg: AY/fxX5LmUnCqURdjWgsilN7qMN1d+rAoUhHzxIf1+Y7Rdq0vU6Fket8NXn0aKMSLvL
	HpQ5OKxXdQcWudO20X+5bQ+Fh541BM5InPpD/0Ye8bKXBcUzusD2XjeLytlPW5zLvJJn5+s6khq
	8ZqI7hy/YlDt2MgOT4HiKA66M4AYRmKnpkjF2CpVs/4aE2jj5dn0Z49c+yrlMeP5qZoLSWlfZao
	N/Ne68W8afeTlYJSpg9yZ88yOkBoFg4CU1HD1XDh9AvC/OYcYp0XchuIdNP+fuQBzDIQH/9iB28
	v7+Y3S3PdxoV+JODHa6Szx04Bddu
X-Google-Smtp-Source: AGHT+IFUSCkAfRP0I6/HxdHEcLNE7m8wfG7D21SpknHBGNN89HP7uArZIqvkPs7+jmNig3meugYVG6juaO/qZ6BfIYE=
X-Received: by 2002:a17:903:3508:b0:299:fc47:d7e3 with SMTP id
 d9443c01a7336-2a2f27350f8mr156126155ad.31.1766531377964; Tue, 23 Dec 2025
 15:09:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com> <20251223152510.155463-4-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251223152510.155463-4-krzysztof.kozlowski@oss.qualcomm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 24 Dec 2025 00:09:26 +0100
X-Gm-Features: AQt7F2ryDIpXSRh1nF6x1WRfdFopeDKxRaQNT7WxGxtmZzK7QOKWjATFSuNf3mk
Message-ID: <CAFBinCDRUEKeE1ufjiqX=jr3nrJX6crg-rBVU5DW66WkFA5NAA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: Use lowercase hex
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 4:25=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> The DTS code coding style expects lowercase hex for values and unit
> addresses.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

