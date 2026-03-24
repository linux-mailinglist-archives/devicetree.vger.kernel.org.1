Return-Path: <devicetree+bounces-279986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BSVJGbHwmmIlgQAu9opvQ
	(envelope-from <devicetree+bounces-279986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 18:18:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 904E3319E5E
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 18:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0872330055E3
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BBD3D1701;
	Tue, 24 Mar 2026 17:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="i35miYNI"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1303CFF6C;
	Tue, 24 Mar 2026 17:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774371913; cv=none; b=Bfeees3/yfcoAGZippG/WgLgIIRwCQLQrtJ2OKCsQFWBowwsVD4N/5HzWCLFVOWZMyhyNhsfOQLqlQqnp6AQE9aKAM1RdXtrZ6jDwV8PS8Y+RsHGEc/DBHZimSPy8w2G18IF/Gkw7IgU8OnhTdRKKm2I02OvyNBIP9Y27BQbSSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774371913; c=relaxed/simple;
	bh=BG/07Gmpvb0VTkxFyscLtccTKU7iKlmplRk5HuF/I9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OD4ul1swEcOSmNwLs2e4/2nH7vpV92SuZIGQABBkcwdLSN2BlnCmpl5iUry8yKAtGTsQw3g+Jfg0Ycqmtsti4LsEW/E+c85Ly7Kfm1Fk/wiRj154tVxIhYQAUhrjIq59GU3fg4TIZy2IxwqemMlml3+S9APFSpK8Fc9YpHkbI8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=i35miYNI; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0t+oQcy1b0wNBqxu5SQctA+VyPx8zQsKT5ERHccPGCQ=; b=i35miYNIRP18uL0KgzsFD3vHdk
	Gq1pmFn8+Tf9XOn8UJ9OLQ2yHL48PWhNSK4FS4Mad/mnFQV6oj0sLtQ+kuJ/g/GMYs3o7KLfnf4LK
	9IosGWCaXgBphwGmPL4okhcb4obf2EB5PIzsB5ZfOna/Uo5ILJiNRQKcbLHiBxUSXINhGp1saKDoe
	BhMj6sKCsxU+befN48vspJ9hnMed6hc7FlKf5KAK70L/72dSlHeLr9iPHGnAS4vo2nR+2sSvorl+Q
	tjL4pF3Vu3aw1WgYf3Ub2DMACNHTBqdBwx3za0DaSAd+GTgm78H12zZAEDEe7TqoeaccqOgH0hqmk
	8lUpCYEA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	=?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix RK3562 EVB2 model name
Date: Tue, 24 Mar 2026 18:04:53 +0100
Message-ID: <177437177533.786081.8620014414771033959.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <tencent_78E7E3F6991FB4403D5ADC9E6A6BC3BF8307@qq.com>
References: <tencent_78E7E3F6991FB4403D5ADC9E6A6BC3BF8307@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279986-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:email,sntech.de:mid]
X-Rspamd-Queue-Id: 904E3319E5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 19 Mar 2026 13:55:00 +0000, 谢致邦 (XIE Zhibang) wrote:
> The model name should be "Rockchip RK3562 EVB2 V10 Board".
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix RK3562 EVB2 model name
      commit: ede6a05606892bab4f6d785ffcfc124150c2eb32

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

