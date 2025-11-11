Return-Path: <devicetree+bounces-237112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD344C4D125
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FD8B426738
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0543491F4;
	Tue, 11 Nov 2025 10:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c4rMP1zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6564334886A
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762856342; cv=none; b=b3trGbSwQ0GMsJbddEzFkSmS1HnxpVQZZEa2oAm+Rw4QQpphMK2PjCRI3Bs8mmkMtcdPboDO+9Zuq53JomQwulr9UDCKYgzIpcfGsfN+xfEpKJR3NJyivzJuxE5QJRMb4W+WkTUL9VEM/o1KkpYedbmDhUvxTFNB1TT1n+PBS+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762856342; c=relaxed/simple;
	bh=sD00pU9m45ar5Ai3zpltFpzvxBL4raSGmlVVUZkRQc4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A9GTxIBnV3PLXgbiW+UrB2zCXTFx23PrdS1GsYRm4Au2D2BMxz7SC/AG50zWA+6lcwfAHdIZT86UdG1niuN2YzqMrUZanF/QeB9YZgtG5kZ5NV3Nd9+nXTE8kuoIfrFGAvVb9bF7NVLCklVaHRCg/qW8dE2u2JecjWIQWeyilUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c4rMP1zd; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-656eb0b1294so1232684eaf.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762856339; x=1763461139; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sD00pU9m45ar5Ai3zpltFpzvxBL4raSGmlVVUZkRQc4=;
        b=c4rMP1zd0R6QfymMZQTLwQOe4Wsw1fFq5AvCnd1LKNIRLcs2jPV4VJUrpeK33tYsrO
         S9/VK2RWJAiUsCIuEtwe6whzRAxiBUTCqBLh1FUMXpWHCCijMq+ExydGhKBBqk8QdXRg
         aWDI0C3OvfZNcKY4ot1QUlufdjXyEHPWtSvCyS/wMADYvuIoL9sWjpVNV1lTXl/y7FaX
         mT9sT1hiq/mgyk2iHrdAJreBFMIZkEKIVUDIIhTSXn+TEyvLHUw6DZQHYXMYMIAepPRH
         9UvaP+W2wEPAfxMZR2rg+Uk+xJAg1X9+SRaxOA4Zbwjeu+J3w4xVKUTif52lkqxsI4wf
         nSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762856339; x=1763461139;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sD00pU9m45ar5Ai3zpltFpzvxBL4raSGmlVVUZkRQc4=;
        b=L8zZSjum9kA1PwLWSPnKqdXn5kuXCOT8juE/4BElo55px7tvn+fO3RvLP/8nJP6EyX
         uCilXVIMDx1jckt2n9yxVX+cLOug5radPfxtpz0NgEAmr0L+5Xq4VZxyQJhZrVy0T+uS
         oTB1LvxhbifogaUphHlIG9YqTN1qL56NzDdKo162RbVMpRMgE6t1ZOa8T38LFixszaQ+
         QSKv+4muiXuJqXcE88epfhe0Y+q0IvrOwOh+TEJ3D7U0495SruWB+6WJZA8+lvo6jqjE
         85c96ADD67r7zbxRDu4wTiK1msvMS43stqXPZskrfueDSh8KvCF0t/V69qcKE53LlyA/
         RTyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgAAsftuyaYHu+RwB/QBD50aS9AJ4VF2WLU9XzfQYB1bL8pZI7x5GBFux4s8olnMl3U0gPS6jMFHnl@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd6d8D+m3X+ucP0t2+PbgcbgCbMXtYPg4hQKCgpC3DcNu7OjuS
	+yHRDSFYXYfD1/AtVANTv6tP9qjA/ezMdxL/Yc3275UzyX6WKiPLxAwPl8Plz3Yvf7NRgfOjW1L
	TCDIRFISgjNfNEbpgueuChwvxV7TjVgJNgrVKH2vs1A==
X-Gm-Gg: ASbGncvPVqSc0sgRJVfBCQnTsP+QhLgGmew6Bzka+D4tC3U0ujTbzGdYd9NGKy7FtZJ
	9MR1m0nb2IS/53XCeuOXZQ7c0AO2k/o6zL6uDm12H1TXf1jKeoPE9h+zQfSLoorOcK73OAAS71B
	F8f2p5eFwmpy3sYjNTpFRwX96znwRVpO/M3GtumrYE3iQ5UgpFOxoKzzQa/YwMmm9GJevwuquHp
	aD3j8odnOpgWLE/uRCJRpfBbUsDMI6CiVoCfy+RZs4qeKhGLMgvz6KMTMljbkwf4bKH1bI=
X-Google-Smtp-Source: AGHT+IFKS2q0YYMWvzAONoaylj8ozlLuIkMm1yaexf13YEyXcWtqn/MOGkO+d0PlUIAQQu2z38TBPdf0/w+7VAh46B8=
X-Received: by 2002:a05:6871:660d:b0:3d4:7d3d:be84 with SMTP id
 586e51a60fabf-3e7c2865eb3mr6778775fac.23.1762856339399; Tue, 11 Nov 2025
 02:18:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103-remove-pmu-syscon-compat-v1-0-f2cb7f9ade6f@linaro.org>
 <20251103-remove-pmu-syscon-compat-v1-1-f2cb7f9ade6f@linaro.org> <20251105-guillemot-of-demonic-courtesy-6127ac@kuoka>
In-Reply-To: <20251105-guillemot-of-demonic-courtesy-6127ac@kuoka>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 11 Nov 2025 10:18:47 +0000
X-Gm-Features: AWmQ_bkZo0YG0fQozggW7w_kHLivwxPGKZYOmMZ80TBXcmQKFtFsfLDWdlG11ZY
Message-ID: <CADrjBPog8u8sRsUjcgKNG87kdcF5HHx94tUXPdTrCUG-PxSXWg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: samsung: exynos-pmu: remove syscon
 for google,gs101-pmu
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dan.carpenter@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Wed, 5 Nov 2025 at 08:55, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Nov 03, 2025 at 08:03:10AM +0000, Peter Griffin wrote:
> > Since commit ba5095ebbc7a ("mfd: syscon: Allow syscon nodes without a
> > "syscon" compatible") it is possible to register a regmap without the
> > syscon compatible in the node.
> >
> > Update the bindings for google,gs101-pmu so that the syscon compatible is
>
> That's an ABI break...
>
> > no longer required. As it isn't really correct to claim we are compatible with
> > syscon (as a mmio regmap created by syscon will not work on gs101).
>
> ... with kind of a reason, but then the question I have: was the
> standard MMIO regmap exposed via syscon ever working for any part of
> this PMU?
>
> Original posting here:
> https://lore.kernel.org/all/20231209233106.147416-2-peter.griffin@linaro.org/
> did not change PMU driver and did not express that the syscon is broken.

With the benefit of hindsight, no, PMU write register access was never
working for any part of the PMU.

On the initial posting I didn't hit this as we were only disabling the
Watchdog on boot (which doesn't write any PMU registers). Once the
issue with accessing PMU regs became clear, I first suspected some
missing clock. Then later it became apparent we needed a SMC call and
after some initial proposals the syscon driver was enhanced with the
of_syscon_register_regmap() API in 769cb63166d9 ("mfd: syscon: Add
of_syscon_register_regmap() API"). At the time that commit was merged,
syscon driver required a "syscon" compatible, but since ba5095ebbc7a
("mfd: syscon: Allow syscon nodes without a "syscon" compatible") that
is no longer the case.

Peter.

