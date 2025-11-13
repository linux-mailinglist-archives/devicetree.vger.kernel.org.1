Return-Path: <devicetree+bounces-238362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5678C5A78E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 27E1C4EF429
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3B932825D;
	Thu, 13 Nov 2025 23:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="FC+RosTw"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C14326D79;
	Thu, 13 Nov 2025 23:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075082; cv=none; b=p1G5Mx/tqEOICIb5+91ENgjNNluY9JhR0cvyH1FzzAn8p6KuwhaD04BB+MjbKrkhUvPupXuV2jjH1dRpDL4rI/xm3v32KDChXI1uW2zqPEPP/KWVa1tu0nCGPSSZ5ZjgIP6Sbf0ikakQVLj5C49E6nMlQ8oR8sIx13givlF2MxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075082; c=relaxed/simple;
	bh=PbwY/YzG8wFUJG3HWcD5ciGi4VfOB3/Bn0/3ZEQUqJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WR0bAyfo+B52cbNL6LwGHg8juizktoMONlwgZbbHQi6UOz97OvLukFae38FuarToAlMM9ZbsEZLWOxmAJd8BQwPqVotis/eo5dKjT5ieOqBqHE1ojtcEWbR0wzGweELCRAAR0lqVTklQuc/MO5YeNhXz4R5JNKWVCGD6AQRGPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=FC+RosTw; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BJeR7t9tgTEHlG4D2WrgLlF56zewIPkv9VSl1Jojg3Q=; b=FC+RosTwSMQHdLw7GIrZ+a1ZRn
	rHhFRpXZqm1Ug+EY6LHJDYigw0jDWvHtIUoW4XpS4Skx5CEixPJpwxc66jGYpu9qgoWzy0Zf1Im+R
	1LtINKhkrqZYVI2YnXemn/1sVpml4ABSJtbyrdcPDdj+xJlSShlXL4V5g2NL5yS4Kox+zDMy2rWFV
	Q1Vv4bdGeNrnqDcnSy2uMhVBJhJT2rnpETnbyazsAheRA/TE++y4E3FNLUUs1t1UU53Xs7l9gPW/f
	5/Ll2Hamxq+iy0XG8Lilr41osaZSQpFeTYkUoHNieq7ZsJWObYspP/56DJ2EdvmQi2KDyt1+3UoNn
	s60YnlWA==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMl-0005bo-RV; Fri, 14 Nov 2025 00:04:35 +0100
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
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3288: move edp assigned-clocks to edp node
Date: Fri, 14 Nov 2025 00:04:26 +0100
Message-ID: <176307502903.495066.8544378087012934104.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <7d6fa223-ab90-4c44-9180-54df78467ea5@gmail.com>
References: <7d6fa223-ab90-4c44-9180-54df78467ea5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 02 Nov 2025 00:18:13 +0100, Johan Jonker wrote:
> The rk3288 power-controller node contains an assigned-clocks property
> that conflicts with the bindings. From the git history it shows that they
> wanted to assign the rk3288 EDP_24M clock input centrally before an edp
> node was available. Move the edp assigned-clocks property to the edp node
> to reduce dtbs_check output.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3288: move edp assigned-clocks to edp node
      commit: 10712ce694a67304a99dbba20f8cb146ca5f4fd6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

