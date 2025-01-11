Return-Path: <devicetree+bounces-137624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 925D7A0A22F
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 10:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A90D188CD80
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E85E185B5F;
	Sat, 11 Jan 2025 09:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppqS5Z6I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355D315666D;
	Sat, 11 Jan 2025 09:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736587049; cv=none; b=drKo4dHqDKVx5545h/uitFEhRGnyaVVH29mtAsTPVUIVOuCpefIgXxcSORQ69XSy03fC613AJwlqTWvvjBM9WV0knWZqX3iCRLjVGHVLnjHOLUuSobdbP4/oUOXgSQQGF3XbjSCzOI0qjmWIzpJOHNFXqqbKilfoPLUjhwBherM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736587049; c=relaxed/simple;
	bh=jAY3A5+U07arOiBAm81W7RPb00md+pgl+2ChnnkktS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X82zoL8BWOD1psQeGhQQWzAOpDRR9osx/ui9kXkI1+E0WzI2FI5GgVrkqdMpCRSEr/FmgBpS/5ccgUKMxjHoc2h+h1zrC3HBMx+x1SsByU14l1LQvpCCzz56D+DJbsd/4M2HHLn4eNVZj5vSDkMyDEISq8Oma36KrUfjMJPMCZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppqS5Z6I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A01CC4CED2;
	Sat, 11 Jan 2025 09:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736587048;
	bh=jAY3A5+U07arOiBAm81W7RPb00md+pgl+2ChnnkktS0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ppqS5Z6IQ0O26hKPz1Few3dyl9b7fNvHTDW/z0MEY2yi8C+sJsCvRFTFIzSr691kv
	 FvcOwS1gBlJChFnaIMlG/OIQPfQz1iBUAVKNKdqKHJiCdJkeanU+AlL3mkbxwIJh7q
	 4nJCBX+7MUJDIBt2X+xaO/UlW/gKyahhHHQm4xUxYZIuaFxoF9MwiHB2gTYe6OBI1Z
	 LRoLNs9ja5SQXbzwFRj26c74cEAX5Ox7xp1tkcm6nrijlmhfxUjuXQtbohBeT4xeXI
	 iWRPkNlGF2J6D4SLnpx2CNiA9VfRTeV+IC8m3lQZ0a50xLD1PKUxGmbKzMySfI3ja7
	 S6t4x8pUrKuVA==
Date: Sat, 11 Jan 2025 10:17:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
	Andreas Herrmann <andreas.herrmann@calxeda.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
Message-ID: <qvyhzgeye7qwppcafisvjkg4wwkrenwxq7nebnsjxdenj7wvxm@qwxzet3iyzyx>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
 <c79dd576-0a85-48e2-a7f8-e4b4e005a18b@icloud.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c79dd576-0a85-48e2-a7f8-e4b4e005a18b@icloud.com>

On Sat, Jan 11, 2025 at 07:48:48AM +0800, Zijun Hu wrote:
> On 2025/1/11 04:41, Rob Herring wrote:
> > On Thu, Jan 09, 2025 at 09:27:05PM +0800, Zijun Hu wrote:
> >> From: Zijun Hu <quic_zijuhu@quicinc.com>
> >>
> >> __of_add_property_sysfs() hard codes string "security-" length as 9, but
> >> that is not obvious for readers.
> >>
> >> Improve its readability by using strlen().
> > 
> > Does the compiler optimize the strlen call away? Maybe, maybe not. If 
> > not, that's N calls to strlen() where N is the number of properties in 
> > your DT. That's in the 1000s easily.
> > 
> > Do you really want to go test enough compiler versions we support to 
> > feel confident this is optimized away. I don't.
> > 
> 
> i understand your concern about performance.
> perhaps, such impact about performance may be ignored for linux OS.
> 
> what about below solution ?
> 
> const char security_prefix[] = "security-";
> use 'sizeof(security_prefix) - 1' for the length of string.

Code is still not equivalent - just de-assemble it and you will see
some overhead.

Maybe just introduce builtin_strlen() to string.h and use such? It would
be the pretty obvious code.


Best regards,
Krzysztof


