Return-Path: <devicetree+bounces-252108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F18CFADFA
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 21:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DE463044B8A
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 20:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB36234F472;
	Tue,  6 Jan 2026 20:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aooa5/e+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E1134F27A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 20:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767729817; cv=none; b=aP96wYhPuffg2Jl5K+FZ+BpgQ+UOBHupAmj1Xcc2CE/efKeBXZUdrYlp85+Qv8zPdMjeucnMB802npFL8GlFmiRHYGZ4HnCmH/hGRMqLgrcUQRorasHBeT9xWovMdxI+PlDYf5aAFt1+mdXyVl9fRFZ0vGk+i/9GP7PZj/WpAyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767729817; c=relaxed/simple;
	bh=hDKC/3noErk1Q8ZsV7ssZTkXWKMDpO84KVg5itJCTxs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PtAty9MYwVwgQ4h80WbrCkcouiAiMmyOMoEh4I671GMVDDOQtR1s/TYAiiDPa2HRhvvHO5CWgQ11j+vum1VPsxVmUsWnd/jB+cAQqzEgo8GbiWhxL8Hscgczxua7qFFzAEUlzsmptpc4BwOanwzU0p9tuYOCPNGptzbPBmtinXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aooa5/e+; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b79af62d36bso247095166b.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 12:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767729812; x=1768334612; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hDKC/3noErk1Q8ZsV7ssZTkXWKMDpO84KVg5itJCTxs=;
        b=aooa5/e+oWtRhdnfriJHRmLDfHXFrjiStkLph4hzhtEIcCzaBC6Xfu23rVY5BU61Ml
         lbBJHjQsFhdRLXhzbm+MeS42mVr9XnE7jQppW97EVjngfGSNg05grlaQYdnt8k+j0ErW
         PSoo+pI6OI3hGTwDI7AAgvhXkIh/w5HlhpJ4LA7k4mj1b6/8lp6jBa8q6i4ydH5uw1Si
         fT0H35xJ8bixUVvfxne+LI31dCpR3tDx2wjNegh3X0S+N153PMCL0Rb+sxiEdgrmlMny
         AG9PHTHY4K2J2Z+eI7cSp8oeud/DN4mmdXFccnHGMOPX/z5LE0pZOWRk6TiXDIoLA0zN
         M+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767729812; x=1768334612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hDKC/3noErk1Q8ZsV7ssZTkXWKMDpO84KVg5itJCTxs=;
        b=cFTFPewrIlu8OAU7Fgm72clld4cWPKGSV1zVhtafZ8758/DH3TSNh9ehpomE29Zbvy
         yEFD3xFRcw0gpPqRDzEl8LARNw5ZmNb83YXRbbH5F0By/syI5jadsfw0A4aYvjrAO7jj
         pBdiJ2E+NyFpfItak7j7wD/CaOwG77K/A/uz8ljLsvYOZK1hWfAzQiIn7/O0SUcoY7vX
         5YoNYj9idjp7RPA4WpcyvB6g/Uu4ywVII7xpAPuh6c1IW/m37FW83gNw+qpTRrsx7OfG
         eCcAVmdZf03PpyVEwIXjHV2ysZKawKRedfiJ8tN8ZvqXCyXkeYpMmH674ozloP7rqrtp
         /tvg==
X-Forwarded-Encrypted: i=1; AJvYcCVZO5LZr60Jwot3Dh8r6raeSL0GDf8AAk4ukD71OZdrbOvnYas554p7lrv5uhasNyHq1DqURdvafBu8@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg0NhFpjnpP4OD7TQrJgSZ2XpDR8qFklqYQ0RpIEZ6Ln0LljZy
	u6A9VbXQLOcIenDlLNAOn/C1cXuH9KHusa1W8a0UpWHJGi8bbtLk6Evz4tgmaeoRk/bXHoG/4pH
	kEUVKyqcMP37yna9up3Z7Sr2GDoSIlZlrsjcZl59cJg==
X-Gm-Gg: AY/fxX5MLS78MWg6R1RmpD8eVud1Nuh3f5Oc/F9xlgOK6BKVoPBfjEFNXIN9IC/8Xbt
	mxT0kf/AsGRaQFw8fHiF6lzmhgfV44LWOIrx3mr5rtAVtf9mr1pEBHFAjUPFX68dHO4xHOK6Mxi
	rI3SKxIgeChTVV1hWvY43zWxkd/WWoy1w69B+HDnzEer07Z9AWcDzdPSh6gayzv2pCFLg/XuQBN
	jv9v1b6a65wHqUkV+5mPllSUbvhTAFzBbWhuauAcKyYqhlkti2QtPI3RHEWSY5U//2DLZQz
X-Google-Smtp-Source: AGHT+IEmmXc6X3lklLmC0mCRNpoBur3TPS2BGNaDYr/bqjA6QRWH7eFRQJKdL8KVJ+yPvHwZtBcG2RvEv+KputuzJWc=
X-Received: by 2002:a17:907:96a1:b0:b6d:9576:3890 with SMTP id
 a640c23a62f3a-b8444f9664fmr26102366b.45.1767729811848; Tue, 06 Jan 2026
 12:03:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-automatic-clocks-v7-0-fec86fa89874@linaro.org> <c0eeae31-6951-47ca-8651-868db18d349e@kernel.org>
In-Reply-To: <c0eeae31-6951-47ca-8651-868db18d349e@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 6 Jan 2026 20:03:20 +0000
X-Gm-Features: AQt7F2oLfa1exLAxy6kjOxPF0LQxcKRjhYroQ-B3HvTQJnB9vgg9Cr5KITN-rwA
Message-ID: <CADrjBPocyZFz--xCaZahyUA9wwuS7P0E9Gt4Z=53rbT-nEQ7ng@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] Implement hardware automatic clock gating (HWACG)
 for gs101
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Will McVicker <willmcvicker@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Mon, 22 Dec 2025 at 11:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 22/12/2025 11:22, Peter Griffin wrote:
> > Hi folks,
> >
> > This series addresses an issue with Samsung Exynos based upstream clock driver
> > whereby the upstream clock driver sets all the clock gates into "manual mode"
> > (which uses a bit that is documented as reserved in the gate registers).
> >
>
> Applied.

Thanks.

 There were several checkpatch notices/less important warnings
> of which most were result of existing code but few were introduced.
> Please be sure you do not introduce new warnings NEXT TIME.

Will do.

>
> Also, DTS cannot be in the middle of the patchset. It's almost always
> wrong, like in this case as well. This was raised, also by me, multiple
> times on the lists and it is explicitly documented in submitting
> patches. Putting it in the middle suggests you try to fix up broken
> unbisectable things by reordering patches, but you cannot.

Noted. Thanks for pointing this out. I suppose the last time I read
submitting-patches.rst must have been before Feb 25th 2025 when you
documented this rule in b31cc6af1bb1 ("docs: dt: submitting-patches:
Document sending DTS patches")

regards,

Peter

