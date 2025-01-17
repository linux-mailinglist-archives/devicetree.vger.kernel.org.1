Return-Path: <devicetree+bounces-139346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1B1A15403
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:17:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1452216292A
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 16:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1949199EAF;
	Fri, 17 Jan 2025 16:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="EMwl132N"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE78C199252
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 16:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737130663; cv=none; b=WfvBRpIq6PfDOtY/Uo+Pi/R1PiWCDTo4O6OAT63tFhhx5dWSVYyhFtyrGMGH3HfDQlmGCMNqVObhkocwex+Oq2XGDOnGebdHSGkzL8MeI3u43HdmJ366s9WU7J62swHoyLCq2IddBRrHpwsNvtOMp65ABUUpOKSe75WjETfx2Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737130663; c=relaxed/simple;
	bh=2kn+h0Eyzx+YhueUsL2LuHHyc6KauMFm0Xc4mQ+/WlI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BzdM+lZk6OnuyQmZqgabLjlUJ2Yiy80gz2NUKV8o/QbmmsEkeIkFNQ7N9tieyaSqNs5yJ4M9dKtEp3QWNqW78j8ogEoyDOpg2thf+2+vyBEMuJpEBVVYWjO1MnJt4c6OerwJgTCmdEC+iahTXdArGVY87wxHKdDACBzJ3fpLt4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=EMwl132N; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <3a38cc06-d052-420d-812e-7f3c0c6ef24c@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1737130660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RrxAphLxQ/2ui++fGGP+v+/yKexgQPbirksMsmnTX34=;
	b=EMwl132N2tZ7JKWLmj/7pzYNXMraFS2HCnJJ0j7NuAWbCV/MZAmht2TcLqluGAqhULmFR7
	Igh68JdacUDY5hq1FpVca9gRoiIXLSf5NJGyeJDp25M0a+Pf8yAoDg4KKHz74g0hkXA00l
	8fRjbEtELyHVkUOujycBR4SrdV6mfSI=
Date: Fri, 17 Jan 2025 11:17:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/5] spi: zynqmp-gqspi: Improve error recovery by
 resetting
To: Mark Brown <broonie@kernel.org>
Cc: Michal Simek <michal.simek@amd.com>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-arm-kernel@lists.infradead.org,
 Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
References: <20250116225521.2688224-1-sean.anderson@linux.dev>
 <5942e111-24ba-4d1b-bd4f-6b81dcc6c5dc@sirena.org.uk>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <5942e111-24ba-4d1b-bd4f-6b81dcc6c5dc@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 1/17/25 08:21, Mark Brown wrote:
> On Thu, Jan 16, 2025 at 05:55:16PM -0500, Sean Anderson wrote:
>> This series adds support for resetting the QSPI controller if we have a
>> timeout. I find this greatly improves the stability of the device, which
>> would tend to break after any timeout.
> 
> If you're hitting a timeout that tends to indicate there's already a
> serious stability problem...

This was mostly hit when I was hacking on the driver. But of course
there are probably still bugs lurking in this driver, so I think it is
good to handle the exceptional conditions in a more-robust way.

--Sean

