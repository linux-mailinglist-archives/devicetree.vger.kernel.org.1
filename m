Return-Path: <devicetree+bounces-238436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EE9C5B2E8
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A1FD345E01
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFDF24A076;
	Fri, 14 Nov 2025 03:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="G7YEiJQ/"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE4A221FDE;
	Fri, 14 Nov 2025 03:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763091590; cv=none; b=tIm8vbU72Fzoueo5FIQdbwQzS3CL0AG07rREUeosEtar3/hU6Z4Tb2eeghm6QFcEJdPkirlB+wLSmZzlDKcFs0SwqeB/k6yFY+nbRU8ZSQaz3wTtH3um5lQoOt8jwxmdY5PSRNqyEWCZgK55t9B+RRPZ2LjrYD6tquwgDcnCoFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763091590; c=relaxed/simple;
	bh=hvvpvFLbe9iyF9g257vYa81hXpdyyoMxY1ZKaV0ULO0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qTAKHwUjiS0NqR/dH8eoyfuJ74nmBoLLcr7cjT+y1oP2fDr8l6Bax9uK08pAX5vs1GwfIk68tgHrUDreuaKPUaxrbrfa7EhsyRmaGKqcddTJED7fzg7KhRXmiUvTuKz2fNb/nyCUTIoEqxaEC9JNCvQ5cOSF67dnFfzfja6b5TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=G7YEiJQ/; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763091585;
	bh=n7Wa5zv6kJms6DiLqqXPzKVowzYle1GvZ5G3rdIqE/s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=G7YEiJQ/nxh6zWkZGsKi3M65JA1ugHSdZF+jmP5H0v4cN2bIrF3lkDgJhefkRuRtZ
	 UoMGsHHBNydzEo07wb+HD8z+eObQllZZngvB6J/SAX9eMk26dBocMqPGSLL7/J4a2q
	 CMzlTPqPSHnMgM3MevKx9yTqVLp0OAi65gj8Yn243xBowKCbx6LuJ1bbEJ9XMWgxtd
	 Jbod5EFnS4u7ZgBBBXA5nhIf0XBr7YmDNKZQvEzyTDU3NkB82OolpnYLXfKk8BWqV+
	 dYGrIvy1yX7VIDEIPY9CW9KxdhmqoKh/acHgEvJzNub9rpK0aBSpL8FOnPYMOE95tD
	 6v56rZV7xlryw==
Received: from [127.0.1.1] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id CF0CB783DF;
	Fri, 14 Nov 2025 11:39:44 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Leo Wang <leo.jt.wang@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 george.kw.lee@fii-foxconn.com, bruce.jy.hung@fii-foxconn.com, 
 leo.jt.wang@fii-foxconn.com
In-Reply-To: <20251021-leo-dts-add-nvme-eeprom-v1-1-33166b3665b4@gmail.com>
References: <20251021-leo-dts-add-nvme-eeprom-v1-1-33166b3665b4@gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: clemente: Add EEPROMs for boot and
 data drive FRUs
Message-Id: <176309158432.894995.1068506101584521049.b4-ty@codeconstruct.com.au>
Date: Fri, 14 Nov 2025 14:09:44 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Tue, 21 Oct 2025 11:15:39 +0800, Leo Wang wrote:
> Add EEPROM devices on the I2C buses used for the boot and data NVMe
> drives. These EEPROMs store FRU information for each drive, allowing
> the BMC to identify.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


