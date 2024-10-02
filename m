Return-Path: <devicetree+bounces-107171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4715698D141
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 12:31:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB3B0B22DEA
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 10:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5851E633B;
	Wed,  2 Oct 2024 10:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="n8YRS93d"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6415D18027
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 10:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727865057; cv=none; b=QHOuatJF9t+YPhc9tOyVGuIJKNCp+3g4jeP8ATL9LgwXGOcGRnNTCvmlcn8EZJl/opxKzZ+cbzWmnUQO6R8uKgJLhl6v+mdPA/YZXnXn11EdE9RC10W63u+pMhc0RP1zAIjgw7VbId9qdOBGgBZ3V5LaPvSBIuWQcH77wGcD+gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727865057; c=relaxed/simple;
	bh=Gd79QcJxRs0c7MxVsLOexYIm9KUJ2F2ufM7fMk8Hm8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=k0SiRuTzSP0bWsBfCDlbf5IocPPR/eoWxCXmfNztvPslSDkM1J5haXmu3z/g4sjhHsXreNjBXDCc/a8FKcBByZY6ZoaN+HNxIKGMda4N9sAQr+gyds5AjD7a6rmzcJ9x0O9UxPLnEFoESNZ3cUYfkBOYtEr2LgX0/Vfl1m8GByw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=n8YRS93d; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Hy07rBgoHRslj4sPGDvnHmNWupEY5u+zxq1ov9k/fw4=; b=n8YRS93d8w5oA6CSFNgHpkGg6I
	WUAyW3YHuA7Sq2WgKHMj13SZrk4fnMtoOxsrEMQ4IYvzJF+0q9HxzTDk3T49PzioChQsBWuGAaDi/
	vGs+xRVT/hKj8GTrXZI6FnFAEn1jgQUSscUpvxBmI4ZB/mQ1rgZjeMMX3YnJm0RnEj57TKYjUkoQ2
	BeC8T9l2rP2tyUQ0evnDjkEAlvnlsI5PFtMZXXi3F8WJcKeHc1p8ge98U/1pFlBb8q0fhIwy3dnAs
	dg8DvR1wCgnPF8cFQXLr3xIh/pQO4xxX4zEfQBK7cOCnATjgg3B839xanKGyLnWg9n2L7KwfDfOz2
	KigJcoaw==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwdC-00057r-5F; Wed, 02 Oct 2024 12:30:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH 0/2] Add Powkiddy RGB20SX
Date: Wed,  2 Oct 2024 12:30:47 +0200
Message-ID: <172786503305.2125927.10368247142330125313.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001154016.87386-1-macroalpha82@gmail.com>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 1 Oct 2024 10:40:14 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RGB20SX handheld gaming console. The
> device is mostly identical to the RGB30 but with a few key differences.
> Namely, the size of the battery and presense of a function button
> differ from the RGB30; these changes cannot be detected at runtime and
> necessitate a distinct devicetree.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
      commit: fbfff2f64673b5bc7e937ec806db6bee31c5d32d
[2/2] arm64: dts: rockchip: Add Powkiddy RGB20SX
      commit: de7e071ad5e46515e2d930862820c65fa53dbe2a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

