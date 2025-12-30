Return-Path: <devicetree+bounces-250489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8CDCE996D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ACE543002BBB
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516B42D839F;
	Tue, 30 Dec 2025 11:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eajWuLiL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4421C5D7D
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095861; cv=none; b=I3alLKnsUKE/8CixYJH9Pd2DAy3ub0sigqNS9uBrYK+Jpsq26LQfFWO8wQHQQOXQ4Ts7CMmOG9nYuyU4/wU9Hrc9yR4acyUsdOHg9BvUHRn74iX43+KKppF5/6KBUKTNJyWKccs9Zj3mbM9FpSPRUbBIzxzSddhdR2t+URTLazs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095861; c=relaxed/simple;
	bh=xwY+8s+qiFi2bTDin3wjfDjBovzcRu2poy6GjunyXWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F/A2Lnf84q/pSOU0GOoFito7WfLjT58FMVpfbvb6BaUa5JpNuYFg5pg90yo2aFW1tSzO7jBoLGROF/liXp4c66SCLWLvU2bePMgLC9xvO0PfsA4/Z65KnmB63iSxeAxbozDEaAis//2jwiKMSMSUTvPIWKXLWBvX+gwD2UOPS4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eajWuLiL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A1D8C4CEFB;
	Tue, 30 Dec 2025 11:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767095860;
	bh=xwY+8s+qiFi2bTDin3wjfDjBovzcRu2poy6GjunyXWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eajWuLiLNPLlFT/fU8lzu5tJprIACSAFsnGnx32C7JjPy8jno64gXTbCdpwvuYFCJ
	 8jy13Ro7UUbGrQ7jXtrDX+Pi40v21iIBjFc19zKaqQiRH0ej4R7XyGMPsr5qOv4um1
	 21j7mmjM4dD/s5MLzWc2N/nCLEPgDnX2BqPAFfk0nHlJ6HVJH9zcfdcL51yK91phLu
	 PkeuPRhyXSbHO5XpVdbHH8R3DHHNgXoYiAC+cZBXWrnT/7eqkq1rcakjJ0iHgCPC1l
	 DfnL+YoM/h3r8BqLb2kIFQUEkLUYborT1O+ydzkGZxo+67EWrqcsPA44PkmcfJzYkb
	 R/vcGPQoEc76w==
Date: Tue, 30 Dec 2025 12:57:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] ARM: dts: socfpga: fix fpga_bridge nodename to
 fpga-bridge
Message-ID: <20251230-platypus-of-unusual-poetry-c8810e@quoll>
References: <20251228221846.863904-1-dinguyen@kernel.org>
 <20251228221846.863904-3-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251228221846.863904-3-dinguyen@kernel.org>

On Sun, Dec 28, 2025 at 04:18:44PM -0600, Dinh Nguyen wrote:
> The fpga_bridge node name should be separated by a '-' not '_'.

Please fix it everywhere in the same commit, not only two nodes out of
40...

Best regards,
Krzysztof


