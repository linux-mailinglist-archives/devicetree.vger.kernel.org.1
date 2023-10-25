Return-Path: <devicetree+bounces-11925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C1D7D7124
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBF831C203B3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944802AB5F;
	Wed, 25 Oct 2023 15:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr header.b="f5ZliKWD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D24728E33
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:45:14 +0000 (UTC)
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E292181;
	Wed, 25 Oct 2023 08:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail2; t=1698248711; x=1698507911;
	bh=DI90V1bXwX/Uwv3dOT9N//AgAR2Tj2M9NCy1KVRlAJ0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=f5ZliKWD4GWYi5CTZC9fw481wKGRwUoXBR7j8DqVOl0Vb3hdYy3HwZAB9EtCRdHJT
	 h0paaejp+AsubIIG5Y59KzNtTpylq1huiC/d/9+SeUj5iIlAa9e1j/AiZc0LFN/n72
	 jsQbgP5j/B1GWxOgk+FeC4nKgudfFHdFFv0Vz5gEXr7fxrvy13bMBo67MvgKI8YsbZ
	 2mScJyrytlw7J3o2H7kbdSl12Vl62qMQC/9dDmwYHH9QKDhjb6+tA9gxCIjS6pt7e3
	 RWg5x0nDKr5E9+VkBuzMx20Mqxhf8P3BS3sTt+YD32UsMKdmDYKyo5saSkZO/pXtMy
	 1ibsvoyTUMvAg==
Date: Wed, 25 Oct 2023 15:44:58 +0000
To: Keith Zhao <keith.zhao@starfivetech.com>
From: Simon Ser <contact@emersion.fr>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
Subject: Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
Message-ID: <2wq8ssA4KblYH5JfC8KxeWWoYPleN_BcH6wSZ92tkOixbiU5k2ZU_lS4lO0awCCeomkdjsEoVlUmAH7aaaR2n-bdLKu1AaSar_JW78Kw4Ik=@emersion.fr>
In-Reply-To: <nPUOGd5_-QuZTUXhGdmJ03Bri58JI0SeYVcBLnJG4aFuqobd5i1RUBVoi4CNP3VGg5oBdz5LAGdwHERxtMwXJyHPyVxJz4UpiBuFiA5NlkA=@emersion.fr>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com> <20231025103957.3776-4-keith.zhao@starfivetech.com> <nPUOGd5_-QuZTUXhGdmJ03Bri58JI0SeYVcBLnJG4aFuqobd5i1RUBVoi4CNP3VGg5oBdz5LAGdwHERxtMwXJyHPyVxJz4UpiBuFiA5NlkA=@emersion.fr>
Feedback-ID: 1358184:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thinking about this again, it seems like you could start with just simple
enumerated modifiers like Intel does, and then only switch to more
complicated logic with macros and fields if there is an actual need in
the future.

