Return-Path: <devicetree+bounces-238426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C7334C5B097
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:53:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B6E1B4E06BE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94BB023EAA6;
	Fri, 14 Nov 2025 02:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVYEpqN1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6902A20B81B;
	Fri, 14 Nov 2025 02:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763088790; cv=none; b=YcCMQ6kSH9c7hHMqtldNOVWfgwa5lTE8VFTTHbyEGguKQrNhSKzKpEiOdv70/74KmCdsRaEsuC1B98whJwppuLcmv8F15vgzHxsSJJTMJOQJmux5cXiH8nrDkRAmIke827V4T5AANPA8n0zFEFcTVGTKd3lg8vgFp7enPwGyZZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763088790; c=relaxed/simple;
	bh=sM8hCNw/PGH4hSWT3AumbYV7ttYqEDcybi4gs9p5OI0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=R543rySZy97EO6ay9o6wd5E3C6r/BiclsfoFZUplz6Ab1w7/fucl5MVp8mRx3JAzgsdMSQpny30Q8zeP9hFJdqEseGVxJQi7P2sKxei9StiwkM910ifFqOUCV9ZK76H72owkOAfqHQ95qbI5aJi8P8mj4FfEoGZcWUnjW0+cdKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVYEpqN1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 906B1C16AAE;
	Fri, 14 Nov 2025 02:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763088790;
	bh=sM8hCNw/PGH4hSWT3AumbYV7ttYqEDcybi4gs9p5OI0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=KVYEpqN1EHdh3xUzP3COtuDaQgWlT3nOklRecY4QiGQYQZORTkb28ikEyAyLAUXVT
	 p60sLX/h7Ody3E5Mg8kxfehKRg6fnVqjbpP1UHB1zReQ20CdrTE8zjhIEan5GYv7s8
	 ng/WwXSPmzzLpK1HMoeahErbH+EWgi+i8i8VnWPOiKY2OLGquoC130X3WCqtkPB7dl
	 lft0hrw9qXS7kmhqhiw49paNV+wRKmjREqZ9NfvFTbRzV/bHtbpGGNxsZaNuS2c1N/
	 E3sSSfQQ8rMs6XIjti1GwcZFWTLifKaDtl7xk+wGGse7V0B61d3Y6tIFR0zrb9Jp1t
	 ramovy4KKzbaA==
Date: Thu, 13 Nov 2025 19:53:07 -0700 (MST)
From: Paul Walmsley <pjw@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
cc: Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org, 
    linux-kernel@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>, 
    linux-riscv@lists.infradead.org, Paul Walmsley <pjw@kernel.org>, 
    Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH] of: Skip devicetree kunit tests when RISCV+ACPI doesn't
 populate root node
In-Reply-To: <176297731621.2151636.2516355929483523874.robh@kernel.org>
Message-ID: <f5cc4e3e-ef66-7786-f9b5-f9d5f0846386@kernel.org>
References: <20251023160415.705294-1-linux@roeck-us.net> <176297731621.2151636.2516355929483523874.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hi Rob,

On Wed, 12 Nov 2025, Rob Herring (Arm) wrote:

> I guess the riscv folks don't care about supporting the relevant 
> features either, so I've applied it. Can kicked down the road again.

For the record: we do care.  However, it looks like this problem needs a 
more general solution, something that applies across CPU architectures.  
Lacking that, we might as well have behavior consistent with ARM64 - and 
for its faults, this approach is at least simpler to reason about.

(That's not to say that I don't have some personal opinions about this 
topic.  IMHO, we're missing a canonical Linux kernel way of representing 
device integration data.  The kernel would control how the various random 
device integration data formats are integrated and merged, which should 
sidestep at least some of the problems that we're facing today.  That 
would also give us a reasonable way to store superset data, such as bus 
topology information.  But as for me personally, as you might recall, 
I'm afraid I lost my appetite for trying to drive device data 
improvements during the ARM DT conversion of the late 2000s.)

Sorry for the delay in getting back to you, and that I don't have the 
ability to help further at the moment - 


- Paul

