Return-Path: <devicetree+bounces-250449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBB8CE915A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A14C030049FA
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43F2230594E;
	Tue, 30 Dec 2025 08:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZccvwS6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9562DEA89;
	Tue, 30 Dec 2025 08:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767084365; cv=none; b=XhgcIBNh+jTr8KglmAG2S1mBNQLA9Eux0OYVCnN6fETyfgpLjWNDuBI/xWqe9sGJEdrMQcRwYqqMUvJVkqGCCOaKpj5oI9jSLdGqWDzUz0jyMB0DCPOUlhkFfSlrj7OjYpGgWPk009RtU8TylsA0l1b9q3TibpHclqbsP6XaOIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767084365; c=relaxed/simple;
	bh=xNRxgng69p3lmr7nvljneo8pSEZGbXBkepxe7xcVWUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JAJggqWe+i7OtqcAtDYQTaXquQLTv23t+Qj0VKeCQraevwqUDsSi1X7WpUUXzZArAQR4sJeILDusRihdl7/6qU/wYay0UNp6oXC71fheb/jmYEZp81tAsMrSlRt21eiOAMLAKj+gRwvN7STzQv+ADgEzm71a2TsI2t8a1tZ3O94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZccvwS6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF2F1C4CEFB;
	Tue, 30 Dec 2025 08:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767084363;
	bh=xNRxgng69p3lmr7nvljneo8pSEZGbXBkepxe7xcVWUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DZccvwS6/l4VeKZTE7+rbQjozC8NX/4D+ODnTRkL8SyUZVvriInFIXCZHsEdYmfg+
	 EGO27xwYekMT9cBJhc9pUzVWSNNopUDGPruYsQWNx7nSbaxLz1A+xKQ+VtUjvJ4npx
	 eHyqfEV3FIBOF7HfeG2rL+i+uF7KQllF9YlehO2f+tZVNRlxsTQf/QO6DZpGFAtxNa
	 wpCgwLKrMyl62jxdN9Fk4E/DAcuLRI7wRrLl7NBmrzr1wUL07Rf2j5pTaBrWYBqxni
	 JhLD2q9F6aYxeR8H17XwJOG6tzNfhBfo5GPIBHs6uxlgVWVIZFW3d07yehdoQZzFSC
	 YQWV4S6R3ThGg==
Date: Tue, 30 Dec 2025 16:45:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Jan Remmet <j.remmet@phytec.de>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, upstream@lists.phytec.de,
	Yannic Moog <y.moog@phytec.de>, Benjamin Hahn <b.hahn@phytec.de>,
	Yashwanth Varakala <y.varakala@phytec.de>
Subject: Re: [PATCH] arm64: boot: dts: imx8mm-phycore-som: Update eth phy
 impedance
Message-ID: <aVORQQlMpbgonBlw@dragon>
References: <20251218-wip-t-remmet-phytec-de-bspimx8m-3841_upstream-v1-1-2ea15181aaf2@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-wip-t-remmet-phytec-de-bspimx8m-3841_upstream-v1-1-2ea15181aaf2@phytec.de>

On Thu, Dec 18, 2025 at 01:00:06PM +0100, Teresa Remmet wrote:
> Update the DP83867 ethernet phy impedance settings to
> to optimize signal quality and reduce potential signal integrity issues.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>

Subject prefix "arm64: dts: imx8mm-phycore-som: ..." is good enough.

I fixed it up and applied the patch.

Shawn

