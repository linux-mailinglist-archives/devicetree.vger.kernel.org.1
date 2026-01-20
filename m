Return-Path: <devicetree+bounces-257272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A076DD3C641
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2816D7428F2
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534EA3E95B9;
	Tue, 20 Jan 2026 10:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="j4SndC9f"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E363ECBDA
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904330; cv=none; b=fIMWF/+H1cHlJaEJ7TSh8EBc5XnSZsAe68Irc8CNAYP8wzurmk7hFKb6478EL69c8OolUoyNYRZZh4b3kK3YGeozOlSHfQs8dfHX1faAiEIWiFrE8MSOmrA8FvGTAR1CyfvzUVJrCVVqQbr/8/XjOnqBVHjSY4d66IapWdeAWLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904330; c=relaxed/simple;
	bh=YGkG8m1PTfb4IZa9/MIu9CWYSqXN5u2kmhDsQs+55OI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dRXwg1CF1y4D3oRqfZIlvdkb+y53/D5oI++sajQsnX9eJw+dwqxH7F8Zx/AfKGB/rariXQ1EPkqrT5cdqBcvoezYn8cz7jOyCy64BrMW4rpuvO20J/MPlkwyrdepVTlXCRkvaANfwfEf9y6TfX8G4GWWXeTgIZUqAeZgo21+XXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=j4SndC9f; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ADVKS6qARuLQqspgyQSl1SCmeeYdkuiNNwIVmocQcrw=; b=j4SndC9fdWLH0WE9/XwlxWHDg1
	u+D+GdXaLixMtIuKWnt7P40XG1y9d8odzhXeRWRj6OH+kbRLHk6jHzT5kFRNJ2SUHK8oK23evypj4
	KvBUfVDiPgXg4DIPW18MSXwcAqfeNG9ebIJRXA6hp50V+NOKy5HTDV0oIT4Jjsn+pBps2W/04Y74X
	fHHatb6pKKJqw+Rggw6RnAd8hdDM3NbPVAY/GVhWBEhzvbw5huFBbBhTHtjIYsDOWIkyuRYgTB6o1
	Hci1f3BXlA/jvTnr5cZ8hooqVqfFsvmwOvhOemEDwqO/04JrbiGu0bGWKd2B3MqQJV0mgoIqUmZxF
	fm0SMQCQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8or-003MG3-DM; Tue, 20 Jan 2026 11:18:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/6] Add Anbernic RG-DS
Date: Tue, 20 Jan 2026 11:18:38 +0100
Message-ID: <176890429960.373062.3240608231791332011.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 13 Jan 2026 13:57:15 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS. The Anbernic RG-DS is a dual-screen
> handheld from Anbernic powered by the Rockchip RK3568 SoC. It has
> dual DSI displays with touchscreens, multiple face buttons, and is in
> a foldable clamshell form-factor.
> 
> https://anbernic.com/products/rgds
> 
> [...]

Applied, thanks!

[1/6] drm: panel: jd9365da: Use gpiod_set_value_cansleep()
      commit: 388df23fda2db75abe988015a1dd681a43fcdf94
[2/6] dt-bindings: display: panel: Add compatible for Anbernic RG-DS
      commit: b83a3a48edd26da7db2414797c7a428ba8b5c5e5
[3/6] drm/panel: jd9365da: Support for Anbernic RG-DS Panel
      commit: ce76a267341cb306016beedb24a205e892613716

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

