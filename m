Return-Path: <devicetree+bounces-8329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAF17C7B76
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 04:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69299282C9B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 02:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423B881D;
	Fri, 13 Oct 2023 02:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="VC8r0ZqR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F13A2A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 02:03:22 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6563C0;
	Thu, 12 Oct 2023 19:03:20 -0700 (PDT)
Received: from mercury (dyndsl-091-248-212-229.ewe-ip-backbone.de [91.248.212.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ED4C4660735A;
	Fri, 13 Oct 2023 03:03:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697162599;
	bh=sKttk4Nu1SkDWKSUsvrHZFpKP7vj4n6hxYQeDBYZvwE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VC8r0ZqRFJ1DHgyi+V+LGXZMS2b4TcWQvS1VcjhTVdgYMWpqm523dPU8uXpSJpMLH
	 jrwx0MGshwhqlIyxe0xwSbAPX1KIUPBbkhmnf9HJlXZ6OysBmhLZfX1v2Fxlrg6AZH
	 dVzqzLx0EoK96WHsUFlU3blT5j1ns3ET0aJcNdRHTP74pphoXf5mTOogGZWxCk39B6
	 xm72K+2GtrGeqXG4Y6HNbgGomVMbNcJ9fxealSUwhz6i3apg4rV88Z2fJpLf4U0tsw
	 XncyE0UCeGB9fUEhgAJCbC1F1jLFbDmW5WncfYmW5v0dXNtOb8+yj1w5bvKxf9n2L7
	 3irbUQMWdJ/1A==
Received: by mercury (Postfix, from userid 1000)
	id 75CAF1062B50; Fri, 13 Oct 2023 04:03:16 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Francesco Dolcini <francesco@dolcini.it>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231006130428.11259-1-francesco@dolcini.it>
References: <20231006130428.11259-1-francesco@dolcini.it>
Subject: Re: [PATCH v2 0/4] power: reset: gpio-poweroff: use sys-off
 handler API
Message-Id: <169716259646.1002132.13986378548211553065.b4-ty@collabora.com>
Date: Fri, 13 Oct 2023 04:03:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Fri, 06 Oct 2023 10:04:24 -0300, Francesco Dolcini wrote:
> Use the new sys-off handler API for gpio-poweroff. This allows us to have more
> than one power-off handler and to have a priority for the handler. Also, add a
> priority property so we can use gpio-poweroff even when registering another
> poweroff handler or using the legacy pm_power_off method.
> 
> v1->v2:
>  - Add $ref to restart-handler.yaml in gpio-poweroff.yaml
> 
> [...]

Applied, thanks!

[1/4] power: reset: gpio-poweroff: use a struct to store the module variables
      commit: 13b4c6964665cadb9b06c085029710c43a0c662e
[2/4] power: reset: gpio-poweroff: use sys-off handler API
      commit: b16d9f49735f3d26e23f0ba4a2cf21668fc6b66b
[3/4] dt-bindings: power: reset: gpio-poweroff: Add priority property
      commit: 4ee17bd30788496a279ceaabc7ecaaf39f61cfc4
[4/4] power: reset: gpio-poweroff: make sys handler priority configurable
      commit: d03d2a8cdefe86f04cfb53934a708620e7dfbfcb

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


