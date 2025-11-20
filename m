Return-Path: <devicetree+bounces-240854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F859C767D1
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 67F19352C59
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24085365A0B;
	Thu, 20 Nov 2025 22:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="neVmwqpR"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2EF35E53D;
	Thu, 20 Nov 2025 22:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677404; cv=none; b=oAjqqmaFprf3JSV3zq+L7wegbdHJOjNoUqvkZxsBilozmnzC5xCKqeg458rAkx7pbCwG6t2KMhG+sb2j+aQS27K++CJzHK1Z93TiRy5Xvikc6v92GNzpWJHUMqGyFeRoaSA+0hbXNVRgGwztzMXQ9Tpdw5EozKCmUyxefuxswHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677404; c=relaxed/simple;
	bh=vYcDTjzvlTinqhTcVaCqGJk0LWEYP3VrGM8CXu42EcY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VJ8PPnAYlmYzSTLPPOlGBDewVjvqLLiB8hjME6umXl14wUg5SzC/HQh+HDsLVnEtqcwJAoMHzxW5B2DzFPKR2cb8ycMRpf2ceShfwsBTBhfrxQl73WAuPeub/7S0/VFqMiOCS6/K9h+dNDDVJXCVXKzWTfas3+O1fvw4dAv9h0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=neVmwqpR; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2ZGagKo4E8U1fZXoJGY97Lp3D/2VCHDTxHIn0BKkUPc=; b=neVmwqpRrRcYxienEvFOjVQW0V
	rf8Ybi5e6eMmT8PnqVjM1yI8eJ7v9SzIiiSZc+ljONYiq3gJWmLwjNd8ofGSs3QJAkugieLg2ZvOU
	CysQh7LZx0k39Lu7eZRItkNrCdlGTcJoVmQKzREZNGe26WTBW9KgOpjdQDnnmkyQ+VWK9pLA5RYpq
	S2+6i4uLtOPw46IJvxVKEc892ehJjYGbMNmkKgUPubD5X983e1TDbYkGE1WFftbWe5HEgKtAqN9Ow
	wKq0i4GCYz1mtC67lQgS6vgah5tzcXrdM8eXVM64nCvHv9jwfFhD1bIXxxzUyqqCA8SEW6980oHTQ
	8iPlZGmg==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3Y-0007Je-OL; Thu, 20 Nov 2025 23:23:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: merge Asus Tinker and Tinker S
Date: Thu, 20 Nov 2025 23:23:02 +0100
Message-ID: <176367711159.9778.13398191776805888348.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251119-merge-tinker-bindings-v1-1-4072b55750c1@rootcommit.com>
References: <20251119-merge-tinker-bindings-v1-1-4072b55750c1@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 19 Nov 2025 09:22:38 +0000, Michael Opdenacker wrote:
> Merge sections for Asus Tinker Board and Asus Tinker Board S.
> 
> Asus Tinker Board S (Storage) is just a variant of Tinker Board
> with an added eMMC chip.
> 
> 

Applied, thanks!

[1/1] dt-bindings: arm: rockchip: merge Asus Tinker and Tinker S
      commit: 605945281a65ca68af00f3d7592a191b20b21ad4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

