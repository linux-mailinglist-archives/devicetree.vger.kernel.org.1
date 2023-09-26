Return-Path: <devicetree+bounces-3527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B93D37AF309
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:36:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 71B892811F4
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EAE238FA7;
	Tue, 26 Sep 2023 18:36:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAFF3715D
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:36:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 039DDC433C8;
	Tue, 26 Sep 2023 18:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695753393;
	bh=nB/bYvjQ2YqbWoDt/ygO0b3k0aUmsxkxaDBANtllUf0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J9n4VCgFEXCzXV3XHV2G304PB6SdxK9ZIn5W/NJY5vAerglOuQQvsFjZvFr9b9Uaw
	 cJgJwLl84c9dRrkoGtaPx97/hGotwOKtDNVzOEaBUWLzbsGPwpOyKtngIHg9WNdUJB
	 1fo5aATu4GmFra5DPTpTloSvbQvV9PVUImiZFeOoeQu8io1+R6RQRFEJvLz9w/zRpX
	 icl0XqSdOUuUdD9Q2r2PRIQp0EpiumO/7RDP2bNwM4HKCkISEg8cENqYigfjtFtefQ
	 GfxdwrFC15UWTrSOyTNxCyIkdfQApRHnZ+s6VkDAkJFJ3ngQJtaaEt7OsZvIbV+I8O
	 ng6LAvBGaFrbg==
Message-ID: <77fa12a6-a81f-4fdd-a29c-145e9ca02a83@kernel.org>
Date: Tue, 26 Sep 2023 21:36:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: memory-controllers: Make
 "additionalProperties: true" explicit
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Tony Lindgren <tony@atomide.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20230925212626.1974676-1-robh@kernel.org>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230925212626.1974676-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 26/09/2023 00:26, Rob Herring wrote:
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/memory-controllers/ingenic,nemc.yaml    | 1 +
>  .../devicetree/bindings/memory-controllers/renesas,rpc-if.yaml  | 2 ++
>  .../devicetree/bindings/memory-controllers/ti,gpmc.yaml         | 2 +-

For ti,gpmc.yaml

Reviewed-by: Roger Quadros <rogerq@kernel.org>

