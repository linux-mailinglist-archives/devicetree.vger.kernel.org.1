Return-Path: <devicetree+bounces-115574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9529B0112
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE8351C211CB
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 11:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD4F1FCC7E;
	Fri, 25 Oct 2024 11:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TEG60jEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1B91DD0C7
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729855223; cv=none; b=ZXJ65XVp2nclaTfYJM9WzrDFhKw1wpaKuUxP+FAs/SWT+KAcQNA1NzEkmVMbjF3TaqU6jw2hb51YGNb7pZWCrre1pl56DkMuAgJRCrP/961AFn6ZiC/HmlJeNmqC9EZErt1cVGEXHK2+EFnhN/ptdekR/yjisulpksK9ci5y5WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729855223; c=relaxed/simple;
	bh=WI7XrMwtXL077tWZKycguwQfQ38m20vMCPsqD+m+N3M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NHyU2ucmkPXJdGdyK8dD83EAzWoEugav7vM4YNhqdRJs2uGj6RGXSkSkigT90vG9a5hnmJM8UT4BT/ls80mIkMXdSHu4tvV7umomT3kfNenu+8gBGdyY0sDjVCFsAA3OCYIvXzGTjH3rxEb14Wm0SL2jVMxVhMo99W2yX4eHz18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TEG60jEl; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-4a47fd930b8so596834137.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 04:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729855220; x=1730460020; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WI7XrMwtXL077tWZKycguwQfQ38m20vMCPsqD+m+N3M=;
        b=TEG60jElpzEJC1VT5+OpLoLh7NHPJDqvghx13/98TBO75B/lWbpz8YtKUt8JdPFU5q
         h/A+M43tkLl8JpPOIb/OFOJDi+A+gOPU9JL1AELX58S0ny9E/0l+kQQfNr85YgUogu2t
         mTzcSz+y9YJ8rVjN+FpM1g+ZnVLZ1neu2QPAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729855220; x=1730460020;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WI7XrMwtXL077tWZKycguwQfQ38m20vMCPsqD+m+N3M=;
        b=Bpc+ugRaWtG1B3uPxk6TleFArteaY4BQ6bJdayKOzqSC3npMMA3XCYEjv83xoNkdUY
         36xwktCc4kxLrQJ/wSTC4D80Qs4hhru0WckVm3VpwphUZiQOfctH73IStPnGpjz/TFIF
         4zmwDoV5Tsws1cuz/ITrbPFWHkbCIwVhuAvqB9+Bg79KgHDNcG7DSr/u0yUA+2j61lCS
         QIn6xa/aiS6eBWdMvvQ3fQPWNdHyJ0EtcPqrqPB6A9t358wYwj8HEXF9mV0Edx1p3Pcg
         ldgvk8R0v7JQgoEcBf0WHO9MsLyblGhBOHSJU24Q3Bq3GNAwKAbOOlX9ANOiIJJ8B7oN
         r9fg==
X-Forwarded-Encrypted: i=1; AJvYcCWDa1WnoLc97c6zAKmu1jFKrdyA9Ae7YlhCBEgV3jFTHK1qRLQz1NYdaOZNXsu3C6CVvced5Cr783kU@vger.kernel.org
X-Gm-Message-State: AOJu0YwpJUn4gYwXTjSn1Pe9AYqXrhBkbXuIHm2cdgO0dp3Q2U3d/wKq
	AFJDP5JZTQ8kSAkOI8lf2ij4dujduikktvhTgVausPV8ioKd85yX5lwyZPF0qUce4sUun3q2pVB
	CdQ==
X-Google-Smtp-Source: AGHT+IGTYqC5hq7kVT8WpNN62keA+gY53QlKPJwNTdpcZKZqWr3/S8/A4yhQJ7qdYrJZQsmmHWt8dQ==
X-Received: by 2002:a05:6102:b09:b0:4a4:9363:b83c with SMTP id ada2fe7eead31-4a751c9a69cmr11966360137.23.1729855220459;
        Fri, 25 Oct 2024 04:20:20 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a8c52096e1sm169342137.1.2024.10.25.04.20.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 04:20:19 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4a47fd930b8so596820137.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 04:20:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGs9NaOm0AEYrbldNfoZjF01zFa65RUytzX2ThF+bRyuToR7NfoGUmGk5hmNFQsOFYP01ZV0QvnbwH@vger.kernel.org
X-Received: by 2002:a05:6102:954:b0:4a5:b712:2c94 with SMTP id
 ada2fe7eead31-4a751bff426mr11555515137.14.1729855218618; Fri, 25 Oct 2024
 04:20:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025075630.3917458-1-wenst@chromium.org>
In-Reply-To: <20241025075630.3917458-1-wenst@chromium.org>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Oct 2024 19:19:40 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhPsPRYk_w0n9or7KrEhF_UzLjN8MFCL6xw_FLR1b1++A@mail.gmail.com>
Message-ID: <CAC=S1nhPsPRYk_w0n9or7KrEhF_UzLjN8MFCL6xw_FLR1b1++A@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: mt8183: Disable DPI display
 output by default
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 25, 2024 at 3:56=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> This reverts commit 377548f05bd0905db52a1d50e5b328b9b4eb049d.
>
> Most SoC dtsi files have the display output interfaces disabled by
> default, and only enabled on boards that utilize them. The MT8183
> has it backwards: the display outputs are left enabled by default,
> and only disabled at the board level.
>
> Reverse the situation for the DPI output so that it follows the
> normal scheme. For ease of backporting the DSI output is handled
> in a separate patch.
>
> Fixes: 009d855a26fd ("arm64: dts: mt8183: add dpi node to mt8183")
> Fixes: 377548f05bd0 ("arm64: dts: mediatek: mt8183-kukui: Disable DPI dis=
play interface")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Fei Shao <fshao@chromium.org>

