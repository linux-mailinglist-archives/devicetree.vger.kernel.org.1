Return-Path: <devicetree+bounces-13071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4F77DC77C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:42:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 553A528161D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45CB10A01;
	Tue, 31 Oct 2023 07:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohZ00+6v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840EC6FD4
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:42:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03DCEC433C7;
	Tue, 31 Oct 2023 07:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698738127;
	bh=Ntji3BYvyMWI2O4plkskfkqHFK/VJ90VPxsK6AyDuV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ohZ00+6vewOgEN1PRcDT9vuDdbxXGzQwBKRCOB013cjpAPUICewAAptjYVo3Prlsb
	 G+B1qIEgL9ivT7YhB6iprOUJIcb0Hn/2HyGGyIUA+r/4I12QeUqdXmjZwYBDuhdgNO
	 idysZUtsQNkagomgQ2JAzN+czGY1aO+WdsK1ATyTBMZl2iyHBndk72odsXD69HEpfB
	 QBpcV9/VXIBtctHgfrP+Em9pOUN1sjNo6aV4QM+4ss7wcd6vfptOJ6VOLjXXJ+cQ+H
	 bd5CtaANwgf+XRd7rusmai+41sEm5gXLs/tMdHjnu0NActiKiW7d8g13zirsQJlZjz
	 F38hRduKxhAMQ==
Date: Tue, 31 Oct 2023 07:42:01 +0000
From: Lee Jones <lee@kernel.org>
To: "Yuxi (Yuxi) Wang" <Yuxi.Wang@monolithicpower.com>
Cc: "pavel@ucw.cz" <pavel@ucw.cz>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"wyx137120466@gmail.com" <wyx137120466@gmail.com>
Subject: Re: [PATCH 0/2] leds: Add a driver for mp3326
Message-ID: <20231031074201.GP8909@google.com>
References: <b2a603bac3aa47e2bfbcbcd7154a4166@monolithicpower.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b2a603bac3aa47e2bfbcbcd7154a4166@monolithicpower.com>

On Tue, 31 Oct 2023, Yuxi (Yuxi) Wang wrote:

> Add the binding description and the corresponding driver for
> the mps mp3326.
> 
> Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
> Yuxi Wang (2):
>   dt-bindings: leds: add mps mp3326 LED
>   leds: add mp3326 driver

These 2 patches and this cover letter were all sent as individual
emails.  Please re-submit the set using `git send-mail`s --thread option.

>  .../devicetree/bindings/leds/leds-mp3326.yaml | 184 +++++
>  drivers/leds/Kconfig                          |   7 +
>  drivers/leds/Makefile                         |   1 +
>  drivers/leds/leds-mp3326.c                    | 632 ++++++++++++++++++
>  4 files changed, 824 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/leds-mp3326.yaml
>  create mode 100644 drivers/leds/leds-mp3326.c

-- 
Lee Jones [李琼斯]

