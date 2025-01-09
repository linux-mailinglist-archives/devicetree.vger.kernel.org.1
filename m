Return-Path: <devicetree+bounces-137029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA798A07497
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5F8D7A16B4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6986F21661F;
	Thu,  9 Jan 2025 11:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nJT2WrEC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97864215F55;
	Thu,  9 Jan 2025 11:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421948; cv=none; b=O5OwcGhHUnvyzHjlIFQhWcz0DVC5SF1DlKOu/dZZKDhbq5nvnd96X0Ztxg64SmQrN2eDjumE+zAlTv2winAzeeq8XGvwO/sHxvOPB+gCwrkhRvoAhbZQ/nfKb62996CtW1U2LUOhP4HV4D48lLnqndqXebiARqj9StpEFrd+7ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421948; c=relaxed/simple;
	bh=9JdmXeouo0BLG98KfepszqgJ/edFg7bc7O3ujS7C+ro=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=rVZg1wE64VajbZ6qOaX45qHwy4sGOjQjZn2Ab2Ehk2qxF+AfKVEWf28jZDttkLX2y0gDw3YjzkJ3gv3hNbSBnjV3fMpDAcCzW38Pkmh+6f4T77V/yFJERf/oox/uIKsAYNkJ9VI0bpyG28QpOkyMsFF2p0N2+1i128AR3pl2qlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nJT2WrEC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736421944;
	bh=9JdmXeouo0BLG98KfepszqgJ/edFg7bc7O3ujS7C+ro=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=nJT2WrECbWz8ZIqYRAUE+K3DjE0ByA41rGlhYisnKxfI1u8KSn5auRpFvDBAfJBSD
	 M6gVmvTkGLuVJbGcEQMF8Av7yMbJskkVpa4SFDmI/6XF3OxSFUqXWkSInAMAqJresq
	 MX/iyazGkjdOwnoYYwo60rg6/xCNEe66GQiSv177OX9+x44f0MU31BiLeg+7e2JHUl
	 eNhE8JYIyu1DHoI74XdmfiFAsmYOQbm/bYgp9Rx/HqMIpl3uLcvU1RcT+Dy/y+eXN5
	 WQOEKIkPrg8twI+pBbBOhfAEadCV5GjzjAzznUKtanmDrg8WGvD8Lfqq7CVTFIIH+S
	 zOMLaPs05Yvmw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E74E217E156C;
	Thu,  9 Jan 2025 12:25:43 +0100 (CET)
Message-ID: <a84a9a5d-3574-4b57-b076-d8358b939764@collabora.com>
Date: Thu, 9 Jan 2025 12:25:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: airoha: en7581: Add SNAND node
To: Christian Marangi <ansuelsmth@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Daniel Danzberger <dd@embedd.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@airoha.com
References: <20250105150328.15172-1-ansuelsmth@gmail.com>
 <20250105150328.15172-2-ansuelsmth@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250105150328.15172-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 05/01/25 16:03, Christian Marangi ha scritto:
> Add SNAND node to enable support of attached SPI-NAND on the EN7581 SoC.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


