Return-Path: <devicetree+bounces-8450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DFF7C8373
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 640011F20F64
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC68111A1;
	Fri, 13 Oct 2023 10:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovVdzscB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2009C63DC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:43:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 635EAC433C7;
	Fri, 13 Oct 2023 10:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193837;
	bh=JVPe1ma/Ed+P35neF7yaxCDpkQ3MjQ9w7c4PvaAOM+k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ovVdzscBiTqQF0j21wfy3LIsCGZ7bRmRGAf+VU1txLKAcsz+sxslfdLI67h61WY/T
	 yfpg8n7Cc9eyN9cj9xDv3CG2K07nIB5KdJc66tYeB8HlNbaoryNr62Wyhkvv0GUMeu
	 EwWNNPHFaewzVZhqM8nQbIzUD6F9uYrFR6+LL1AkSxOXHYWNDVAUxF6XzVCDhcG6WJ
	 HBFnv18WuJ3i1cvOUXi13u5YJyjdLgSIF/ErFjfcg6BphiAucV2t6uXq6GLzUOMzvB
	 VhCEjzmnPeJZ97QIhKVDv97plGuSZ1wZF/v64QVMSGWN6w6itnV15vWEEXP7vAcR8Z
	 2+9w00pg4aZYw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231004-pxa1928-usb-yaml-v3-1-150c9ef3ab9d@skole.hr>
References: <20231004-pxa1928-usb-yaml-v3-1-150c9ef3ab9d@skole.hr>
Subject: Re: (subset) [PATCH v3] dt-bindings: phy: Convert PXA1928 USB/HSIC
 PHY to DT schema
Message-Id: <169719383504.165658.18236925418957176222.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3


On Wed, 04 Oct 2023 16:34:43 +0200, Duje Mihanović wrote:
> Convert the binding for the Marvell PXA1928 USB and HSIC PHYs from TXT
> to DT schema.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT schema
      commit: 03c866cab420e2e3381ca817be664e714107e39b

Best regards,
-- 
~Vinod



