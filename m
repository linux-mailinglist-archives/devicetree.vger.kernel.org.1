Return-Path: <devicetree+bounces-256845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9F7D3A78B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 628AC3041A64
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE1A31AA84;
	Mon, 19 Jan 2026 11:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KaR/EjiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B6A3191D4
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823679; cv=none; b=EFih8XzKicFl4JwM+3x4UdkLgwQIUIUJz8sad9a/ypleyzhpUaTADZJS4gOc+5JlnuT6zpNL+yqEo58qrxrSv+QljufKXkmsMzBLYUm3YQS+6yR9BXRMjML1hfspvUWQWD94N0oFadEpQsjCJc0sVc/mxgTVzSMBFYBRsEkoGDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823679; c=relaxed/simple;
	bh=L3MT+97S25u7D70FlA35D5k+YoREX4Gvre3dbLxk8rI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=THojYO9pesIGF2i+zPvIl01Z/QyI3cQvJU1QeXtUITHFZyPlXAREmx0USx7VjOGwN01bxPO5Lg4DrbkNEhE+fwa8C2NsSl52RpcoDo8GgRTP9omIS84FzPBHx3qzQeuBx6EP/YVh75YdaiBjJE+I+IQb0AomRPzFJbUo0R/I7I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KaR/EjiX; arc=none smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-124566b6693so4345219c88.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768823677; x=1769428477; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L3MT+97S25u7D70FlA35D5k+YoREX4Gvre3dbLxk8rI=;
        b=KaR/EjiX0ggy+3UvMLKIJu95G3UhwLW/L+ICs+dORSnSI6CMdd1Ne9lP/Ht4/xfyfM
         T7X9h13Bynca0Mdj9boLZwQ0wqnpPq81Cf5O+fJ2mVayscVdxi6NRp3+gKN33cYFoQ8i
         gzk/UtkBVhnCqvg48ZTrfxe0ce2d+jflgWdqYskMLKiedWO9xHG0930vvwIclW3odhNi
         YbWyUc9WjilEusyKhQJ4cwdYL2IkfeY/U+PpxI0RTuCJALDoQADPAH0suOLS1bJ94mRf
         RDvhqUhkg/QaUBNlCY4WXAg6eRbHb2Q6ErYmeKwWYYBNmvb+2amoWU9OOUcZ6O+LQ03D
         WciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768823677; x=1769428477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L3MT+97S25u7D70FlA35D5k+YoREX4Gvre3dbLxk8rI=;
        b=MJ2ElGNXvTEOqehQDNMGPgs+3aTLgTdWF9TVTHI186e+HY8KBQWiv96wO0LIQY2nfy
         VsFLTFLYHr2SolNh7dApo0shg11isUvFQlk/WlP5g716ClqSohZWNDWBb5My2cTQ3iCf
         Ldm9Q9p71L+iqmufgCEqIGo/Sb9LuZl1K1Rikgue0ELMr/N8cxkG+C1hS4PmG/CxInIH
         8d/B2LZjacQom+R9PBJKZrQWUHdI4RhgNilc2XMNzRajSXhUaaxzdseXIaPTfzGHuBgh
         VeXaQhyXCp++gI6chsypqRY0lgZ+PusAS2MqMjupniKQ468IA3kF/8VOWV6eTDeZ8lqf
         SN7w==
X-Forwarded-Encrypted: i=1; AJvYcCXtbx7nmU8jj9NWje3UNTnqHOoJdVSB9Mg1+YFdJP5CX21a+yAb1kBOtegvzJJhVzl126C1Dpkqet1R@vger.kernel.org
X-Gm-Message-State: AOJu0YxsdxbupGuImLhSwWt5UL+7e8UI6NxQCmKNZRC2Ad3DZ7BaCDwi
	T2eMPW0AWBGFCV+cO3BH4xfg1cOthzu8OOQMjvj9XCWifAPqlCeiOzcVNXJuAmoERVQTJc3Y9/f
	ZkYd/gZTwR/7I/LcCbEVKsXRIdoGfZlg=
X-Gm-Gg: AY/fxX5xOiQoRD/p7FpMtWn2QWYnQWwxCtsMhE92XAtwPOZ+hPV8N8yREl+mdXvuCIp
	WtGDq04l5s1GLRY0pId+1EshOdIyS8npiBGZcXpjBkxR5MlKBdB+/PD9WtNiB4MVLGe7qAwwifc
	BU2NFnhbcWARkgVJszUIWdtoAxciMSpCUc2tAuKX1ChNMiL9kt135ZgT0oX+Qq5ift6suXrMS3Q
	wbkMgHQytxFS5iH+W+aivaPEYnAK4YqCed6pSkQJiRucCJiOp5f//tzeqg8RSIgR56pf20ec3jR
	gPimpKGvWqPDrjFFzUo5VZokpzEL+q7AAcT5m/N/FrZvFsxpQh/zLR2zVpbXZJxSs+LvHuG0EgM
	DYfYlervVtA==
X-Received: by 2002:a05:7022:2526:b0:11b:9386:a3c1 with SMTP id
 a92af1059eb24-1244b395eecmr9065273c88.44.1768823677453; Mon, 19 Jan 2026
 03:54:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119103654.51318-1-francesco@dolcini.it>
In-Reply-To: <20260119103654.51318-1-francesco@dolcini.it>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 19 Jan 2026 13:57:17 +0200
X-Gm-Features: AZwV_Qjn-law-_KhQdrPSaRXm2pJ9JQh-dHRP72Qm7kKPCJK_LWk9DtifbbNfZI
Message-ID: <CAEnQRZAk5awoJdkAaSEdcopkmT1g1pdJLz76DdqkQ_p5pqT73Q@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: imx8-apalis: Remove obsolete TODO comment
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 12:37=E2=80=AFPM Francesco Dolcini <francesco@dolci=
ni.it> wrote:
>
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
>
> The GPU is supported since Linux v6.9, with changes in the SoC dtsi
> file. Remove the related obsolete TODO comment.
>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

