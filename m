Return-Path: <devicetree+bounces-255614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB67D24BFF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:34:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D63F300DA74
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B09239A7E0;
	Thu, 15 Jan 2026 13:29:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFE13A0E84;
	Thu, 15 Jan 2026 13:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.201.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768483778; cv=none; b=eLvTENLJQuFkghCPaXp2mE0BBKyj1qf4wcqu+61Yid/tB22ANaD9WkdZcRUEN1LTjJZ7Y1dkZWPzsZAiBKhDufyeWdSplJ+FXY8P7hidlRGgcRFzYlOLHNElfkKtWQ2egYhEZOVCbn+cYLpYoCaAqqBTisl0lzdmgX2RBNpGiA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768483778; c=relaxed/simple;
	bh=8wKvmCVsDgDYkKqu7ws+LeZod5rmDFhzLsuC5/UpM48=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:From:To:
	 References:In-Reply-To; b=HEUFIZww+s6eCGVCAbLMtQ/YR8Tow0eP3tUXuGXJ3Cd0g6SaPzUo9sXKahi4v8MXIOxMMpT0A/buKLFezpY2KAO43QfUlu4v3QpIqAoVq7JYe2+q/oGhdccimcJyD2yZQyGIp24XqCDoSC0x5e1bHBxB//b4Z9kriqBUMmLRFBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=walle.cc; arc=none smtp.client-ip=159.69.201.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=walle.cc
Received: from localhost (unknown [IPv6:2a02:810b:4320:1000:4685:ff:fe12:5967])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 3F3CE691;
	Thu, 15 Jan 2026 14:22:09 +0100 (CET)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 15 Jan 2026 14:22:08 +0100
Message-Id: <DFP70PIQL6YL.19MHNMOLO4FQD@kernel.org>
Subject: Re: [PATCH 0/2] Some minor fixes for the SMARC-sAM67 board
Cc: "Udit Kumar" <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
From: "Michael Walle" <mwalle@kernel.org>
To: "Michael Walle" <mwalle@kernel.org>, "Nishanth Menon" <nm@ti.com>,
 "Vignesh Raghavendra" <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20260115131431.1521102-1-mwalle@kernel.org>
In-Reply-To: <20260115131431.1521102-1-mwalle@kernel.org>

Hi,

Borked the subject of the cover letter. It should have been:

arm64: dts: ti: sa67: some minor fixes for the SMARC-sAM67 board

-michael

