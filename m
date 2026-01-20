Return-Path: <devicetree+bounces-257250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 241D6D3C56E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BE65870A162
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260F13A4F4D;
	Tue, 20 Jan 2026 09:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="chN0uBNG"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64609346AF8;
	Tue, 20 Jan 2026 09:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768902869; cv=none; b=LZ+IveCbviKYbo1ueOGD07NOc3acBkPhmVlZT5VC7djOspgB7lVXiCEWPZIrm0GEUns4WReUfgi/MKTz9SsnxPh6V14Y45FRNkN9NOj/6Pn+rERf06IpOsbZLkeawqx7weYr0mk/gQ62ptP+tfCHUS43h6oyH8QxAIoj+RDPLN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768902869; c=relaxed/simple;
	bh=N9MQnuFp+ImeCgzKG7Nw2C1PR0MlcLjFUjDDctBHTf0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CaIGXrU5U+q6cMiVI2IJ6VyN6MMYYuBYWdwIkLQAmEl5vL2Jb6tAReEuNWF1BCub/ATyUwfLB2VfgUrabyPgMPhYEva+niZ18eczErWVgkSB0/YAvSd5o2Igvt1GGTQUpX+nDpoQTYpkldyrSZlxOootiQ/vXHhOTZNOShu1wNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=chN0uBNG; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=++C4BR9kRhIK6ZGnlEciRqdKbN7OqMlfx3AqNBoVUzA=; b=chN0uBNGfRCR6oDPEmcJiKgGJZ
	efQsN0uVcDkL3qsvoMhlIa/4HMAB7M9xKMPBpD53U7IIUnqkqW4CPxDO1JaEI5IXI2yi8UjA48H5x
	aCqJppwjTtZRwjXloMyB4y82KxagOqUAjpMYSg0DHNJFRmL7KxXAPQ2lv5hZMhfocABapHpEB7Cg1
	ZGwlBAR0KdyorLhgpUpTOJoZB4LNToCw4cBFUhqMIcAYfpJo36XXQAqIA9qb/BD8+we1EJtkxwzVu
	FTdwuA23yEPU1peSEOWzFSlZ9dWJGcbbaLAXTmnzNe5jHnJ4Kf4ZUeE3sp9jd3w5eN06vX5Do/E5j
	ieZdoo5w==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8RL-003Kkl-4R; Tue, 20 Jan 2026 10:54:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
Date: Tue, 20 Jan 2026 10:54:21 +0100
Message-ID: <176890285667.327842.5975737500132048199.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
References: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 16 Jan 2026 22:05:24 +0100, Johan Jonker wrote:
> The use of mshc aliases is deprecated for some while,
> so remove them from the rk3036.dtsi file.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3036: remove mshc aliases
      commit: e546c69ac54e907d0c33bc1fde55689db301981f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

