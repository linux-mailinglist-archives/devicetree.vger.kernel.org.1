Return-Path: <devicetree+bounces-12353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9A37D9070
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0D40B20D7F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD04101CC;
	Fri, 27 Oct 2023 07:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Kz4Oggw8";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="64Rmxwlm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BE38F7E
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:57:52 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D77E31AA;
	Fri, 27 Oct 2023 00:57:50 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698393469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UKtr3c2y4bwdF/vP9HE6zYBjusukdEz9+E2VJT4SVls=;
	b=Kz4Oggw8+grS0WSKVO+9MyGnS273ejuWYfJtGOvjd+CrftpUcSKRYKB25UcvePrTyRUlSs
	2P0RuymBweHmZZl5FsV8xqWoBqmdRn0zbK7N8WWtILTzveoXeY2XO84P9T0p5TfUVhx3ay
	wibhPTvzyaD7ZzC3uJcb8H8Mi02++PkV8/EuKoCf/eu6/52Opr2i6yIRSQefcftlng5mRR
	VL4S1IE4ek7Hnn6UnLxbtKlgGQl2cs/U9TrZ8fjUu39NJxOp0Ivjzx9moEIPNNvVd7nWYn
	GAUKA1xDr3RyizeolP4Ma2oL4Wwbahd0nrZt1iWfAFE13FmnUArSmfTp4/51YQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698393469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UKtr3c2y4bwdF/vP9HE6zYBjusukdEz9+E2VJT4SVls=;
	b=64RmxwlmEIlKoZMqNa2m2RVJYbjNA5l71PuX77/hdLLuwKlQzC6xWex5nFyGrKhx8nwNfY
	DzKX9jc4LGiriABg==
To: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Atish Patra
 <atishp@atishpatra.org>, Andrew
 Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>,
 Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>, Rob
 Herring <robh@kernel.org>
Subject: Re: [PATCH 2/3] of: property: Add fw_devlink support for msi-parent
In-Reply-To: <20231025142820.390238-3-apatel@ventanamicro.com>
References: <20231025142820.390238-1-apatel@ventanamicro.com>
 <20231025142820.390238-3-apatel@ventanamicro.com>
Date: Fri, 27 Oct 2023 09:57:49 +0200
Message-ID: <871qdg4hvm.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, Oct 25 2023 at 19:58, Anup Patel wrote:
> This allows fw_devlink to create device links between consumers of
> a MSI and the supplier of the MSI.

How is this related to the two fixes in this series?

