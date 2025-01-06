Return-Path: <devicetree+bounces-135804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B8201A02463
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7C5716470C
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 11:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3687078F20;
	Mon,  6 Jan 2025 11:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b="O+eZgIxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.8bytes.org (mail.8bytes.org [85.214.250.239])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C7012E4A;
	Mon,  6 Jan 2025 11:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.250.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736163411; cv=none; b=mktBovl+dy1v0wTwgV7VKAowa0DbYZkKzfx97yGMtXmJjVdTvAq6ml8pfKXlnAKtt0iXs03mEgAAKDrE0j6s4cfVZOUcnFq9UDV/zfmYoT2LiSRApxTepIT5Efii2ruLHWeYFi4aUhYoYu5GgHioraWNMEnGHSXRj6ZYAuXC8RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736163411; c=relaxed/simple;
	bh=YN58tjVz70PHm/pGFOJ+/GEdu/r7pxe7tJRI2ZBFXmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mZljMPZWVC4akJQ8UNfH2EjH3udcgdBqact3DVwru21a3D9G2MyLg6cmZGX6X4EXzrE4NxmpJcHQVqEJFGJx4se/KY1XdR/ZI/F3/i/jUnZbh3lUj/OG/uwiEvWivzfbeDHAmWU7aw1THmsXSiugQ01XrKc871jXWglidmmLAzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org; spf=pass smtp.mailfrom=8bytes.org; dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b=O+eZgIxO; arc=none smtp.client-ip=85.214.250.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=8bytes.org
Received: from 8bytes.org (p200300f6af348600d06e0009f19b6c7e.dip0.t-ipconnect.de [IPv6:2003:f6:af34:8600:d06e:9:f19b:6c7e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id BE4222E0016;
	Mon,  6 Jan 2025 12:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1736163406;
	bh=YN58tjVz70PHm/pGFOJ+/GEdu/r7pxe7tJRI2ZBFXmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O+eZgIxO/FoAd8/RTShOPk8F+f5IpkpVxsuPx4+tZ/b33HJTWqYVLLffeHEUgKAVp
	 +QEWB32R5ziD8qV4vLWUSPxDPMg+qQ/S/9AzF2qFvf1QrCbkNHUYLVr33dTgPQc07N
	 sOLK2KQtkDPiOv/ftv290QVXDlkRuo1Yg5rfNjFs6piSWshM5UNgx9GHc472Usn06f
	 ZVBYORJ/SCcnS0xhJAyLXsQxLfwZwT2GeoQD9ba8uLNhOIvKMhGHmf6V4RBqfK07X7
	 4T4uaZ7osSNna3/vMPLs9C1OJTyPZhZX/giQJbTdP578ibDMzyCKSt8DlFS1NRt23t
	 BMrVvluk5MxBQ==
Date: Mon, 6 Jan 2025 12:36:45 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, robh@kernel.org,
	devicetree@vger.kernel.org, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [RESEND PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
Message-ID: <Z3vATdi6q83QAcU1@8bytes.org>
References: <20241231093154.252595-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241231093154.252595-1-andyshrk@163.com>

On Tue, Dec 31, 2024 at 05:31:50PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Just like RK3588, RK3576 is compatible to the existing rk3568
> binding.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Applied, thanks.

