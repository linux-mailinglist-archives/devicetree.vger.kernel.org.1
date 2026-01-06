Return-Path: <devicetree+bounces-252093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49213CFABB7
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDD1F33FA7AA
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 19:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E23935A942;
	Tue,  6 Jan 2026 19:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVClewuW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F44350A2B;
	Tue,  6 Jan 2026 19:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767726313; cv=none; b=J1QnqwhTc/2y8YRlJSq3SEWf4vsEyd1EVmY0tRt7vmLaFiesrsdjzhi+YpJ8IXd+qQW+6EkC4IWgseHrHf2gSJZc3U+FaO1gXwHpXglJVHr3aqQosfWPb2mg1tKs4Aw9r0/DLpezsFSEqedYLPTnF8/T09RiyeTTjo5+F7u4IEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767726313; c=relaxed/simple;
	bh=6T16q4mVBWUHrgd/3cDG5y57Q1mWojginmhCDBOAyMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r6dlL/s4CQ6Z5Rq+mK+Ha03aq+y3UM+WfVagwt7sJBNH6wLezwbWuhtNbjVDmgFMp3kY6FdWDqvU+vq1yc3QAXt8vKQ0AQurCM8gxn/iCqItu4PjlNuU8EoV3cyaCIUBVq1s6QquFsA3AeyXNH5UpKlTxYm35t4cJhQ65uJmB/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVClewuW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF5FDC116C6;
	Tue,  6 Jan 2026 19:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767726311;
	bh=6T16q4mVBWUHrgd/3cDG5y57Q1mWojginmhCDBOAyMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mVClewuWoVNaWDk0kCEx2259CUTGGPANExnKfWcHWR+b+2A7b3IA5mUhO0DupgJ+0
	 IjtGcNcnBcntVQLUc1/xhPzAalNQV6uED/+FM5lLxtEuu2NW9DnKRj1JRiAWYv9QW5
	 S6WSR0M4cILeM0rtU4cSXfV0P9RmB7y9BW+7z/t+qe60OzHAvcuf5lRHXBdQZAMLgL
	 lEWIiJdLFHZlTlxX8r+lJ1bm4V/0OudJX2dydGMLlGtVMhF/11BmvhShEOd3xRXCXo
	 1yu8ZZ1VNthnR4u9VvEO25K3huI503hlU15F7kBW8MSLXMeAkoxNNtv2JvynOlxlb0
	 Dd5h19YaSBRjw==
Date: Tue, 6 Jan 2026 13:05:10 -0600
From: Rob Herring <robh@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] mux: adg2404: add support for ADG2404 multiplexer
Message-ID: <20260106190510.GA2546640-robh@kernel.org>
References: <20260105120117.57607-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260105120117.57607-1-antoniu.miclaus@analog.com>

On Mon, Jan 05, 2026 at 02:00:29PM +0200, Antoniu Miclaus wrote:
> This series adds support for the Analog Devices ADG2404, a 4:1 analog
> multiplexer with low 0.62Ω on-resistance.
> 
> The ADG2404 features:
> - Low RON of 0.62Ω
> - Flat RON across signal range (0.003Ω)
> - Dual supply operation (±15V, ±5V)
> - Single supply operation (+12V)
> - Asymmetric supply support (+5V/-12V)
> - 1.8V/3.3V/5V logic compatibility
> - Break-before-make switching
> 
> Applications include automatic test equipment, data acquisition,
> instrumentation, audio/video switching, and communication systems.

Isn't this just a gpio-mux with the addition of an enable GPIO line? 
Wouldn't adding enable-gpios and support for it in the gpio-mux driver 
work?

Rob

