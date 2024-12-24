Return-Path: <devicetree+bounces-133836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C619FBD58
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F8261661B6
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C47D1CDA14;
	Tue, 24 Dec 2024 12:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="f9IvIx1g"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BCF1B414D;
	Tue, 24 Dec 2024 12:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735043424; cv=none; b=Ev14fZ0dXBm8iC+apmHPPFq8ZPemQXzTa3EScOA8Q4OIbpC0phP7yglLm7Is7wUZyKl4WiAypEjDzMgcyNfnM55fTQqoQwXpl+tT+Na+wcc0qj2YbXclA/Kil9E36U1MM3QY2aWsoALSxdREHDXLlGczNGGDFe92gmBB8lpeLOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735043424; c=relaxed/simple;
	bh=olMfb7m5MvI6gvlwrBDmprG90c472yWRjwKN8LHnkPk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hBxFQbiRC9emnflQPb6sOU0F/pj1RG7yinKf9yvpJBxco0DvQahRj+7NIXzjknn7lUvvOaqb9dsZczYZslLdurQf3Cn6CYBzg8Srq7XrADPEWjM0BCsz3vPwN1IcDSefJiLO9vcgto6NPk/fS7inWlG8YR3dxSFgAprlfz55zXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=f9IvIx1g; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4dyEAv3A9O4YKkslfXjx3dtbBj+iHetygGQxkZZo12I=; b=f9IvIx1gExi2NQvCb7U8Rs0YB2
	KWLntdwOHLv1jDtsEFUF1ssTNIYv69SNjpIhp9OYNrH2H2U1/Q5nenWJCXXmqSsUDdILbzm56/nqB
	kTTUZf6Cq7JtkORvZHwjsy98MNy20iZEbd9YrKvQmnZzdjhubqse6PgmH86k4ZkmJ5/1mSiwxgneS
	tZzfbDJoeQDq3aHoYib5DN37We8m+BmuxtwMva/AC2IAMnAU/nKvKDrudosJBvJuCPYogjJozaj42
	eNaZUUqLXvDTHKdTQ2/Dd2n6OajxGga2mVQbeac1NMGO9Yf+TPhYih8BX7pU+CYAiwiFns2BDlMet
	TjlGBROg==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQ43I-0001Ap-VH; Tue, 24 Dec 2024 13:30:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject:
 Re: [PATCH 1/2] dt-bindings: phy: rockchip: Add rk3562 naneng-combophy
 compatible
Date: Tue, 24 Dec 2024 13:30:20 +0100
Message-ID: <4353493.mogB4TqSGs@diego>
In-Reply-To: <20241224094217.3817100-1-kever.yang@rock-chips.com>
References: <20241224094217.3817100-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 24. Dezember 2024, 10:42:15 CET schrieb Kever Yang:
> rk3562 use the same Naneng Combo Phy driver as rk3568.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



