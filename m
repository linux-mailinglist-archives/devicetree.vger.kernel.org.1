Return-Path: <devicetree+bounces-79683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1EA916719
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:13:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8FCA2815A0
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BE114D6FB;
	Tue, 25 Jun 2024 12:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b="xrwqItSk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.8bytes.org (mail.8bytes.org [85.214.250.239])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D982414A092
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.250.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317603; cv=none; b=Qkoapv7jmuzhzGlX45uZQYB9kH3hRSk09qxHXGWLbM30mKBxvDDxKJf2EAuRUs7wJ1YG67NX28tApCn8oUT5FQqtiCvVSs5jA+lgxJvDnCFKY1tjHECoHIbBMNGDavbi714qEpw16Scvj4T/Hd17Eh451iZw57jbwzi2iyvzt28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317603; c=relaxed/simple;
	bh=rwwaCkbojUUBIL2Bhzi9mHZ58AJL4vjRYVsvvoAUIL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OFZTVaFZudctPPqOzmKxFC1qaENxA+BhXU0OQHyDRDFce8eamsB+F+xNUQQsMf5q8csNsr0eW92g+t0rwGq0zEmEy/vkPaL7O3nmFcMcJdg6QTunckl4SVkroEvQ691CqsGNTpbm/0Su8AEbWvhZhrOxz2KD9rJ5+yvUESu1a2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org; spf=pass smtp.mailfrom=8bytes.org; dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b=xrwqItSk; arc=none smtp.client-ip=85.214.250.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=8bytes.org
Received: from 8bytes.org (p200300f6af01e500c6341f51fa179db0.dip0.t-ipconnect.de [IPv6:2003:f6:af01:e500:c634:1f51:fa17:9db0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id A62701C8629;
	Tue, 25 Jun 2024 14:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1719317005;
	bh=rwwaCkbojUUBIL2Bhzi9mHZ58AJL4vjRYVsvvoAUIL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xrwqItSknzqGvT3hLlhTmW3emfK2fJ6jRBfhLvjtUP8kVdAwdVEMAyLjK33Xjp6z9
	 CznaOmFm4vS56uJGzAgmj43+d/3SDj0gAYoEtIzmLK1XaVAo0wNzZmpJDUtZ9o+mCO
	 8fYP7cL3hC/24H6eYy/jzRIicv8q0xgx8EIE+PylSsR9dzPtadY5VzfsOwgCWUEVUz
	 KSV0BYhM6fcYHpyUw6/CoTrDiiYBFXInVyJhJ/TrwlyxPcrkzugiyXjILqWQh/e/Da
	 PkL844/IqULAqG849J6uWMD/rdREz2J3yW8eHAuam22uqWmdHZT8v8ODGrbYMRlnEw
	 n8ChZ8wsL9iOw==
Date: Tue, 25 Jun 2024 14:03:24 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ryan Walklin <ryan@testtoast.com>,
	Philippe Simons <simons.philippe@gmail.com>, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] iommu: sun50i: Add Allwinner H616 support
Message-ID: <ZnqyDLMzND_qJiOl@8bytes.org>
References: <20240616224056.29159-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240616224056.29159-1-andre.przywara@arm.com>

On Sun, Jun 16, 2024 at 11:40:51PM +0100, Andre Przywara wrote:
>  .../bindings/iommu/allwinner,sun50i-h6-iommu.yaml |  7 ++++++-
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi    |  9 +++++++++
>  drivers/iommu/sun50i-iommu.c                      | 15 +++++++++++++--
>  3 files changed, 28 insertions(+), 3 deletions(-)

Applied, thanks.

