Return-Path: <devicetree+bounces-82409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C31BC9242C1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 011F21C24936
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A418D1B47DB;
	Tue,  2 Jul 2024 15:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QHBExrmG"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C57116131A;
	Tue,  2 Jul 2024 15:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719935197; cv=none; b=WwKfvPndKbn788MjER9Fa6Csm5FKrPTw7EVqV1YDLEBmBM87HqdQXnOVrTa5goxuoXXjWHqaJF3dkT7ELu6TVrIcrGw6W8+QP7YIwdTbm1O3StKDtHV9YYuBR5WFDLRxbyCvkZVDqKVGsRohF1NntQKPsctkTVZN6z1SnrlVW0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719935197; c=relaxed/simple;
	bh=yzcbRenGM3jpzA+mNG/K9hQ8BmAQxl16A/ks0PQkLuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D4cdTXGA89LMi+wcCCr+LMYK9DpuXrydggn++TjAJXxq+Rf4ir3RHaVVmoQ5ZA6URek+jMd+7H8sPu89+Bpmxo8WyvYvcY3SnhI3Nh+p/2blw1XiQEHj1XvsU7KqmEyjBrjYCzMQYjNuOBuEnItun1NS6aH7GNnDClUWkm7PI5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=QHBExrmG; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id A486A24000B;
	Tue,  2 Jul 2024 15:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1719935194;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eCLEHHMs8TKwsyPqFlqkEt37rO6vSiGhbAPQUHabSEk=;
	b=QHBExrmG1KTp3MyHBGlyK1iBLu942FLnOOBmbQ5d3v3W0XSdp4UMcYWTiMRpsRLubfaN9/
	7B90FPbiHmI8+Cs06SqekIz0U2XWB1rC2xd7BGz8ZYLf9vl/zP4Rme+1dTUByOpJ7TPK/W
	5w6oVrw4NuKBJsLA8J0eQjizrJAMDFLfQQCzt73mwPdEco5949TALhziPt1fRnF+zS8cuR
	RFuOWWYcw9X+nsktf6WPKWMlFzDTtTTEU8SoPVqeRKZQBGjtHNzMuMDFYW9eJHy90NtZwl
	c9BBM7JQZHG6Y+13fOV8QZyso05hg5Us1Vw1MEBBX4yAY5A370+4ZCao6JN7xg==
Date: Tue, 2 Jul 2024 17:46:31 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jeremy Kerr <jk@codeconstruct.com.au>, Joel Stanley <joel@jms.id.au>,
	Billy Tsai <billy_tsai@aspeedtech.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Aniket <aniketmaurya@google.com>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] i3c: dw: Add apb clk
Message-ID: <171993518387.372117.4302073519974460495.b4-ty@bootlin.com>
References: <20240624052851.1030799-1-aniketmaurya@google.com>
 <20240628153829.303719-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240628153829.303719-1-aniketmaurya@google.com>
X-GND-Sasl: alexandre.belloni@bootlin.com

On Fri, 28 Jun 2024 15:38:26 +0000, Aniket wrote:
> These patches add APB clk aka pclk to the dw i3c driver
> and the binding doc. Also move to _enabled clk_get APIs.
> 
> Changes from v2 to v3
>   - moved to _enabled API first and then added apb clk.
> 
> Changes from v1 to v2
>  - extra example removed from yaml file, minor renaming.
>  - 3rd patch added to migrate to *_enabled clk_get APIs.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: i3c: dw: Add apb clock binding
      https://git.kernel.org/abelloni/c/a75d62ef7c30
[2/3] i3c: dw: Use new *_enabled clk API
      https://git.kernel.org/abelloni/c/48a74bb38b24
[3/3] i3c: dw: Add optional apb clock
      https://git.kernel.org/abelloni/c/145ca7b61e95

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

