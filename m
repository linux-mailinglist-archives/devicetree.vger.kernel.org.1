Return-Path: <devicetree+bounces-228987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9C8BF2D49
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8D21334CFCD
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F193321CB;
	Mon, 20 Oct 2025 17:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c3yeKzs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107ED330B38
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 17:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983124; cv=none; b=USqYTC64qzQH+23jWnjo/59Hbb9vxlxv3h/vqqr583PAxuZE4DFlJufQh+yMlrespwDgJ3rYrilSTAvRb9/FEbiw/DDzj0JjbDLuZxUja7CqJ12lO3+rOMHELJ62dfNaeLY+ubvs1nLTxRVypkiDUNv7hGyZsMO6B7oYDO8GO40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983124; c=relaxed/simple;
	bh=V0ywM16huaA6vxoSrQo9VcxXEvOPk2Rt5CdRZIoeNHY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Hth/FJjKvc926Fwb/Fod1YKG/Fu79xpNCpe1aarsT0vqqTerwi+q67FY2AgVzBC6ZRSFfEYJfHsP/dm1gpc8VTKuMI+hi+5WcPfGCQAjF+NCQoEh1Ww4g6NXjZzkALbxhM8ehEj5xFIk6nIh+qLejhUzgYWmNbCdlyZHNOk7/uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c3yeKzs9; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so3499711f8f.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760983119; x=1761587919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0ywM16huaA6vxoSrQo9VcxXEvOPk2Rt5CdRZIoeNHY=;
        b=c3yeKzs9FPBDpm8NfVTZjIYNE6HCojwEl7itqNZrHDIWTKGQXhd2ltwrRkFF8QCtQD
         Ny9+scbR1rdywhRHMBiNfWPOQzcqGGadc2c+aHUcB43siKJXSuLZyUBYOzZ36lTOxwnj
         ibGvhkO4KHt6Wgi7t56hlv/L877HrL3iq220+uWlidFv6c8QZEzaCv0/O/SdWbvtYuk9
         tv09hFo9/cjPwzt+UEzVwEWeWPdOH3Bx2HPjCIEb89ZOSZ6Htrjr+vnlHpwy8FcnTNyB
         WuHdhsRb3qMjs3lH2jtsmBPiCxoqZLJ6xH4OHZh/7TodH0DycyKrwd7fMJSJuOPVz8M4
         sfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983119; x=1761587919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0ywM16huaA6vxoSrQo9VcxXEvOPk2Rt5CdRZIoeNHY=;
        b=rYv9z7WNLdM+2DNuODIVn/EWSkH+TUyapoBJ+YxKOP1ckbyC0HuCsujQCT+DCpqcBT
         dhzFB36JSimCx08WrcCpxNOfFxLvsVk4rVeb6VvJcCsc8CBh9ntdnUS02VM0cWrFbbnC
         EnXVNMV/egQ4NAws2FirnpaD4ZOiGhWLW4qgFQDhX46PMIZbEemlMXKHS2XaYOQMOeFv
         Oc1yUzY4S6+ChNbkqegDKpcOfvIFANZjKiQJ1jG2bxTA3a2jZpdXljqdmilyKz5p+Ykr
         PyDcLOoCGAh9bPABNvKJT8hRdCN0ZwOKhOhdduCu6mRFqE4862jTQlg47u9jPEedns5c
         5vzg==
X-Forwarded-Encrypted: i=1; AJvYcCUKWDq0eK5rXlPZKS65zWZqqfw/DKbSPAhwsSWBr59gLrqrrgVSTf0qyz09QP21vIvI4Y6NaXtwWJ4v@vger.kernel.org
X-Gm-Message-State: AOJu0YzS3/CI5wxBrI0CPwtqmBJ73HE+2RYFO4ZQER7d6xWJ4qC7xqyT
	aCy0tgZv+AsW5WxNwoXYu/Jmqr5xN0yYM1RUwqqaMOYlmEAtOBeKeRH3
X-Gm-Gg: ASbGncszUWbjGPXaX3pZoM9KHaq2uHQpGrAdv1olUL9LVTWu9C/toDZdHjsAGqkGdj8
	lKYkplCVBi6LbcBPU9pIVBj1v3m0yXGN3o0iIaWavjR3GBPeqMrLEC6uGAPpiDoXjENjMxEeR6+
	9KgpFNGh1XpLrLEGz7O0rToghnq8vuzamwWigHJ+wKG1jOg2ZAtKJi6lWwacSlep1Ge2LtsaXCD
	jPyBfuC8gVj/Pocnsu97QImtVeI6uPTL+PdMDWYUgcm7ir5JQtKHOILHjC+z5s5HQ7u+V3yvc2B
	+qIKtjxWo1Ia3dsOlYpwVVoMWLDV6ycLjJj27l0akVn3m9Ri3KDaTJ5lWOuA6FwTSqFGaVAFlp1
	VWbRRFro2SvGJOAvl3oEZSND4KnJdEyBQ0NMEbA4g3mmSkF38TVTU3DPO0xRJcN+bBrdhTUMZnx
	NyvRxhhSRFH4oxlaSODc/VX3mdLmOavVTg8OeUFAdAHm9fHXejBwedJ0aERWQouizRBDo2gaMdZ
	yDk4g==
X-Google-Smtp-Source: AGHT+IFevLoNtuerBsIw1VuRArXCqqtvXfnOs340pTPBnyLhuRUJ7DD12vxDIIoA4Zumvg8MBc0QBg==
X-Received: by 2002:a05:6000:2406:b0:427:a27:3a6c with SMTP id ffacd0b85a97d-4270a273c43mr7686143f8f.63.1760983119338;
        Mon, 20 Oct 2025 10:58:39 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f7dsm16168108f8f.4.2025.10.20.10.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 10:58:39 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, linux-sound@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 08/11] arm64: dts: allwinner: a523: Add device node for SPDIF
 block
Date: Mon, 20 Oct 2025 19:58:37 +0200
Message-ID: <22871360.EfDdHjke4D@jernej-laptop>
In-Reply-To: <20251020171059.2786070-9-wens@kernel.org>
References:
 <20251020171059.2786070-1-wens@kernel.org>
 <20251020171059.2786070-9-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 20. oktober 2025 ob 19:10:54 Srednjeevropski poletni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> The A523 has a SPDIF interface that is capable of both playback and
> capture.
>=20
> Add a node for it.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



