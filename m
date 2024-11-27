Return-Path: <devicetree+bounces-125114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DD09DABC0
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 17:27:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69307166A83
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4B4200B93;
	Wed, 27 Nov 2024 16:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PjAcdS7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76FE200132
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 16:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732724834; cv=none; b=N8uNk/Pn9bUB9lguMHn7383U6f3EuPrDbA46LDejiAQA2oY3fs65EbloQgf5QQy7ECZD6r+FZrfrlkI9A+qIxva27yX9gtjWFZKQ/VnC8POXGEaiE2CsR4X/m2bdsv3V5hkIkYxKiklcxPKpTmL8ZpyT16pPGmQzcyG8AIAfxMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732724834; c=relaxed/simple;
	bh=mOKMr2rmARyVxmtacbasnCb3Rp24G0x2C/kgLo5QtYQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ieui3xMR2xV0uK61m3symzmP9ZNMzZ4sPoPu+IS3nK5gY1A0rPoZOehUsRqRaeupQ0ABqx7igZbaNbFPuIjVp5GsHyuUipWWqHCGLihf0uyF+a3MIqa6OXIb1ctdNePcss/aQnclJLVmfvF9M72h59Vf88GK/AHSaA7d3SNazNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PjAcdS7C; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4349fb56260so29686205e9.3
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 08:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732724831; x=1733329631; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mOKMr2rmARyVxmtacbasnCb3Rp24G0x2C/kgLo5QtYQ=;
        b=PjAcdS7C7NuSfXE/iwem1j770tASQvdfBcXVXqdbEZsRrj84yX1/70KP5ofldrowCe
         ZpLnvOQUFxQlWBlGQ+kShhuv+F3kHDlSvDb77nFbjDNyxVodq5z95xzir3oEeEqxcMaO
         8z/oMk9vaasXfHSelCn7Gmnzio4B5fsBvs3qTZ0Q55j939Z1RxTIDVbhq0//A/GNC2KM
         CUL5A37+VQm3As+VgDmhj1yI/0SG+djhaqe0hz77f0i6d18XuU5wOfw7Konr1juxOTwK
         gQ81CfvZpCbuaIZcvBUnYXq+mwE8UeU+7YQsvlOSXsejECK6GR5OEi9/qrkeRqbFhhJB
         JAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732724831; x=1733329631;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mOKMr2rmARyVxmtacbasnCb3Rp24G0x2C/kgLo5QtYQ=;
        b=HTIjLqkcwBdBXvgodiEaUTGVUDbl5G8S22+2XQfJEG6wUk08AxB9BaLz+9Oe3sfS8K
         /fY4xMffL86Tl1N2p31pYuTFML0W5S6CPbGGlpVFBJiP/y5pBE3xwPc8cFnzsLjniR1f
         7oE3H+m3FwczOqtmfM4ARGDCaLIWrVlg2+dIRGdCRx5pHe8a06kpdp3sdYeOpCwIZeE3
         Anfi/EI4ojyasxxoyUCQwtqeLnLmk7nqaNcAd0++J7pDZkm/gGZL0U2L8/mAnwqApTVa
         nAUYYC6MQH23oNkgkgXv2k9CDRHlp5VB+n+hjEsWaWQXBmSOLdbk/HDgiA5hysbGDgEV
         3Z2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVW3veWSk2HcOl8bxX5uA/jeY9owCqJzA8UZgVR2+mFttxwxQOiClYpjSqn1sNQya6qQw4E9yIl8Drj@vger.kernel.org
X-Gm-Message-State: AOJu0YwBg+ibvS/MHeeLK3SCkDrHGOp6+ISoKWltpimPof8aCZcozyH+
	NzjSYKnS1M4oG3v/AWhBSL9IqDj+fdgTWBEKBflTygszGSptw8wWZyGfHd2HIlI=
X-Gm-Gg: ASbGnctRtuOlrZvolSVEBW959Msw0xBuaYUoGp60YzkaxEdaK0WUCaK0pddCMdYbK9p
	8N1a0c172i/EgYRDU4HSzbY8p4iJ411U0dOBis+sLCEQ2sY6oo4OQVtW/wojxWicJt2ubtfij4H
	eGGUC0Dd8Z++srZHri2n+b0rlTgIUoHLHx7mNnfwRPR69wOYivGhDA6Kef+M2FAqESl6iA3NDBK
	hVwKjeyGiKuybm0WSvTjQvCqI0An04j32GlZHEQTjIZQALFtPXN9Q==
X-Google-Smtp-Source: AGHT+IHUXF8Dlt2R0M0tUhRjJZfzXWTd2QVl3Kj7qIQfuLN+iAXj3NQBYlBwZKmabbvWQBuy4HyzAQ==
X-Received: by 2002:a05:600c:474c:b0:431:5aea:95f with SMTP id 5b1f17b1804b1-434a9dc824dmr37930625e9.16.1732724830938;
        Wed, 27 Nov 2024 08:27:10 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74efbesm25624895e9.7.2024.11.27.08.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 08:27:10 -0800 (PST)
Message-ID: <fba9c9df33dc2e060238a9bb3466a2fea020efde.camel@linaro.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 optional orientation-switch
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Wed, 27 Nov 2024 16:27:09 +0000
In-Reply-To: <20241127-pushing-baboon-4afafcf8322f@spud>
References: 
	<20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
	 <20241127-unturned-powdered-d9d1b695732d@spud>
	 <20241127-pushing-baboon-4afafcf8322f@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Conor,

Thanks for your review.

On Wed, 2024-11-27 at 16:02 +0000, Conor Dooley wrote:
> On Wed, Nov 27, 2024 at 04:00:59PM +0000, Conor Dooley wrote:
> > On Wed, Nov 27, 2024 at 10:58:12AM +0000, Andr=C3=A9 Draszik wrote:
> > > orientation-switch is the standard declaration to inform the Type-C
> > > mux
> > > layer that a remote-endpoint is capable of processing orientation
> > > change messages.
> > >=20
> > > Add as an optional since not all versions of this phy currently
> > > support
> > > or even need the orientation-switch.
> > >=20
> > > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> Actually, this patch unconditionally adds the property to the binding.
> Is it valid for !gs101?

Good point. I've only made it required for gs101 in the next patch, but as-
is, somebody could still add it (in error) in !gs101 cases.

I guess it's best to squash patches 3 and 4 in that case, and update it to
disallow for !gs101.

Thanks,
Andre'


