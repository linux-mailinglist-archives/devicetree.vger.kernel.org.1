Return-Path: <devicetree+bounces-156531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BABA5C219
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 14:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80E2116E345
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 13:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ADE678F5D;
	Tue, 11 Mar 2025 13:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fhhd/r+1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A052F852
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 13:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741698830; cv=none; b=CF/Zvx2dKSjpk4Y7MR6QNXp7qPjGw2TLLJcSNqMI874ML8vDfKedC6nuyDo40V27T5fFv7R6Hx3FQAhRfPUsgva7I1zGbXjEcyx2GM0FfzAMmPTgGhrb5Xt7rPY+WFrAQJAgr837hE2mQ8fB8dk1Q8hXDsLTqiuFFlxE5eN3FSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741698830; c=relaxed/simple;
	bh=We+qTpJ/iDsJEqwkcfstYNJMapFIca/Guut9mZeMhIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TvxMJB0AY2Gwkbj1f1Z1q4KlSZvUb5ROi31EzC008MHQnGxy6Ac9bprngULpTFakFnMB5fSzr0sqNIIvImfJijpLEa8ogr7o6RVVwbBF9Lr5CfjVpCFdokynwX0OMf/iDiMgFSYz87kpZ/S5BEGTmlhRJLdsqyoM4Hf9Irig9D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fhhd/r+1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 923C5C4CEED;
	Tue, 11 Mar 2025 13:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741698829;
	bh=We+qTpJ/iDsJEqwkcfstYNJMapFIca/Guut9mZeMhIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fhhd/r+1G194i4MC2V705IMN1XJeEpNbDiydv+rm1kF1BXv4RrLpQuv2pvX2NZOob
	 V44fA7DOEkKPqZMNWU0RXi7fVPA4sMNGSoRZZQDT3ILcvmzRBhnLJg2ourr6E6t8xc
	 Dddd5t+QasFIYT/PTIVBUrDFvPBxGIRRej2LAyEozwglp7hcIMNEMnssWTRUfYKI6N
	 O46AK4nNoWA4B/f5oBSZN77in5Pn1U9meFE92d2u6BGVis+aqtvgKi2NqT/qXjkveM
	 1znjpjWtOWk7aG9gONc/2/dROTxALiWzc9vsXOpHrObrSCrSTHySbambnL62Qy7JBs
	 aT+1HMXOrAu+A==
Date: Tue, 11 Mar 2025 08:13:48 -0500
From: Rob Herring <robh@kernel.org>
To: Ryder Wang <rydercoding@hotmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: Bug: lock problem for the function of_find_node_by_name
Message-ID: <20250311131348.GA2859052-robh@kernel.org>
References: <MEYP282MB3164D0271E9BDA49BBB7E7D1BFD42@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MEYP282MB3164D0271E9BDA49BBB7E7D1BFD42@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>

On Sat, Mar 08, 2025 at 10:00:31AM +0000, Ryder Wang wrote:
> It looks there is a potential bug in some device tree function in 
> Kernel code (It does not depend on the version of the kernel). 
> 
> One device tree function of_find_node_by_name() calls 
> raw_spin_lock_irqsave() to lock. Then it calls of_node_put(), before 
> unlocking (raw_spin_unlock_irqrestore). of_node_put() will call 
> kernfs_remove() in some cases. So problem is here: kernfs_remove() 
> will always call down_write() which might make the process sleep. As 
> we know, sleep is not allowed between lock and unlock of spin lock. 
> That's why there is might_sleep checking within down_write(), as 
> there may be dead lock risk or disabling interrupt too long.
> 
> The actual call trace is like this:
> of_find_node_by_name
>     raw_spin_lock_irqsave
>         ...
>         kernfs_remove
>             down_write
>         ...
>     raw_spin_unlock_irqrestore

The bug here would be the reference count going to 0. Do you have a 
case or unittest that can trigger this?

Rob

