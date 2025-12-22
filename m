Return-Path: <devicetree+bounces-248818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF96CD5F27
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82177302048D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AF186341;
	Mon, 22 Dec 2025 12:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gW37mSay"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF7222083;
	Mon, 22 Dec 2025 12:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766405786; cv=none; b=e0g3fq7z5um9Aw8NsrT3AZJU9MfPDjFTfVaWmEJpVyVY4ILe27yYYHNtfmRAaFs9E0amths0NJcBiV7KRXsEGSYjZUdMaDk7m5izTIf+vEMy5ckK2OlbXQDArenrDY/RS0PC5DY2z3qzZn1aKZGYEM2Kc15m2qv+aEEbP++FQjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766405786; c=relaxed/simple;
	bh=3cUvCwke9aBb+hn3CoruuJuD83kjDIlFLKOS0UxiUbY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=jgeUtX5T9Lst5lhjJPb91u0EkLAuOdrheugW0vgOaZMvn3aKYSnA/3jF+W69KjFl1VFLqdlVMxK4erhNkzkX573fqG4IwVAGs5MjtHXydEHDbJZ+RZyHPwDJBpOxsgLqOKlImk87ni2LQ2I8nvKSDK3LAH6KdCork7OrR/s33a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gW37mSay; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8AB4C4CEF1;
	Mon, 22 Dec 2025 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766405786;
	bh=3cUvCwke9aBb+hn3CoruuJuD83kjDIlFLKOS0UxiUbY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=gW37mSaydnDPUi5T8796hKdtggv6ghl5qJ+dd2KkYMPTMRDZmdHnEG5e5g4DnPV+u
	 ptIh53l9U2K4a8fzgl1yBbGjyN3Y6Zsms/oNrmc9pNNBElipT85Qs4c628OefjRzDE
	 36s2O87huOOgXWGPZUKV7Y5YDzGTmiowfbVZfiaJhDUVB2mDx61W/frKhw5oJU3MsX
	 eZUEjNC4zUNFYCY4m7Oegbz22kDUBZjMjOpVzkL4pC3QNHvF+bJyCx4hPyyB1mo+lX
	 sa2E7yKNyfB/geXjODXDq8IBqb3DWK+IjOzTok9h+tvJBcP7X+fxHsQembxsHLK7LH
	 8B/DiBp9j9M/Q==
Message-ID: <ce602264-b685-44c7-a463-e040819a07e4@kernel.org>
Date: Mon, 22 Dec 2025 06:16:24 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] an/rm64: dts: socfpga: agilex: fix CHECK_DTBS
 DTC_FLAGS warning
To: Khairul Anuar Romli <karom.9560@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251219234858.7543-1-karom.9560@gmail.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251219234858.7543-1-karom.9560@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/19/25 17:48, Khairul Anuar Romli wrote:
> Add start address and ranges to eccmgr. This change corrects the warning:
> 
> socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/eccmgr:
> missing or empty reg/ranges property
> 

Sorry, but I'm not seeing this warning on my local build with v6.19-rc1, 
nor at Rob's build[1].

Dinh

[1] https://gitlab.com/robherring/linux-dt/-/jobs?kind=BUILD

