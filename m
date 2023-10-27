Return-Path: <devicetree+bounces-12545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B45827D9F2E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44C89B211F9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192463B2B5;
	Fri, 27 Oct 2023 17:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="0g7sNYk4";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="+ZaxvsMC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50051946F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 17:58:46 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 629AAF4;
	Fri, 27 Oct 2023 10:58:45 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698429524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oRPqztr4GahwJZPU8U9I4cKSw0U+RhcnaQCZg1prDx8=;
	b=0g7sNYk4TvIEaTnpce7boYMvFCt3CAOhS/gNq28xxDCnU8nBOB9Vl45DrzzPNae1FTni6b
	tN7XwH9PhCovOCPzrwC4SiBMf36XbTZMNTS4UmGsEeXKvxX0oUZ292aT8eeviFYsdkB2Rd
	mWPd+pD9Y973E1/C3rAEqkyHDDbiNzMrNbSjuuhR5o6an/NNzWSYxIuG7wXwCFeTIg79Of
	f0ZjKj56eK2j0uCxq4ScuHI8VDHUX6g5E+w87qWFTfs1TUz+PB3Ou8/8wFqOg1jxmRCmGy
	CIBKc4+KfS2oKrt8BEWCU89YCjLcRtqfsbRUqWLF3clc4r93vsd/XyWTwrLS7A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698429524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oRPqztr4GahwJZPU8U9I4cKSw0U+RhcnaQCZg1prDx8=;
	b=+ZaxvsMCH8Ozd4ffiL6r/6del1CGhq5YeiK+IQM0PatSZD92WWpfAzD5TofLDfBJflDk3f
	aMANVu5HLf2wJ/CA==
To: Claudiu <claudiu.beznea@tuxon.dev>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, Claudiu
 Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 3/7] irqchip/renesas-rzg2l: add macros to retrieve TITSR
 index and associated selector
In-Reply-To: <20231023102223.1309614-4-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
 <20231023102223.1309614-4-claudiu.beznea.uj@bp.renesas.com>
Date: Fri, 27 Oct 2023 19:58:43 +0200
Message-ID: <87bkck2bho.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Oct 23 2023 at 13:22, Claudiu wrote:

> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add macros to retrieve TITSR register index and associated selector.

This is not what the patch actually does. Also please explain the WHY
and not the WHAT.

