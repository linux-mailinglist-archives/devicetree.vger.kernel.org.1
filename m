Return-Path: <devicetree+bounces-135739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF08A01FCA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 08:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2380A3A3DA9
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 07:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512B41D5CC6;
	Mon,  6 Jan 2025 07:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV8Sptgv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2102D2D600;
	Mon,  6 Jan 2025 07:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736148079; cv=none; b=jvBdJ4ROhoym/8q+2VXHbpI7d62mCM3WKSBzUEt0+Hl+wgf3DePs+jZ8V1cCpryj42wf4WQW/6O3DCXBqcmQF7immtSl++0skqH5ULL49MsxHzBCqrszAWMmhjTaPztPZvWZlZJ1/cLsU73uIwvJAItSWoyZXoXLKzlkr+DbWjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736148079; c=relaxed/simple;
	bh=W20Hpo9wQCcQIFLLeltlonfqTa4Q0wWoCnzBw4PzpZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TinLZj6cl2HgTLgmdNVogYp74k69UpnZIQwY3Z5COr5w7nl+USsXJ73OqQQdRASO/TG9UNivtVFEDrst7p770FKgycwxPP12II787bOKCpyINrcwQrddZvLcgRRKZhFrTOUDTUbDNfVq9Ib9TSNE/qZPCL5sibS+UOeVcnNVmTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV8Sptgv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4512C4CED2;
	Mon,  6 Jan 2025 07:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736148078;
	bh=W20Hpo9wQCcQIFLLeltlonfqTa4Q0wWoCnzBw4PzpZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NV8SptgvVpNqK/EG4gHBR8AbU0WvErYoh4ZDYKbFw7HorgAFRo5JrVOtUD9Y5wX/g
	 h8aknVp3HmD4PTpqHvTTKtvCrv3lq9Ic9XdlNKxSzXFYN98mHEbVJ2ntgP/xSNaAdn
	 ZVLJUt0PfTc9bx52vO4QBhi0DxlaO8xGogQHAUvNUY9CfB5cyp968iHwWO0qmRN8ob
	 PgwprwkvEuXzKQs4TnOLXE98rBMR/He0UbODX/rQf5AwduSM+nLo2m4BWkChNitqXG
	 NstOB4xKZGYn87CTun8Obv+w/uyCQdmpNt7/eZNAk091mUlYG1ZdGbcQXO+Mk0syXE
	 AKPaQYBCGUQiw==
Date: Mon, 6 Jan 2025 08:21:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 2/6] dt-bindings: reset: st,stm32-rcc: update reference
 due to rename
Message-ID: <53g3kssqc4jdz77iiwxvy6fbwha2ukrjh7s7u3upltmpjtp2y6@2gcbhg7n5kle>
References: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
 <20250105181525.1370822-3-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250105181525.1370822-3-dario.binacchi@amarulasolutions.com>

On Sun, Jan 05, 2025 at 07:14:14PM +0100, Dario Binacchi wrote:
> With the conversion of Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
> to JSON schema, the reference to st,stm32-rcc.txt is now broken. Therefore,

So you introduce broken code to fix it in next patch?

> let's fix it.

Please stop splitting patches in some weird, either non-bisectable
or artificial way. How this can be a separate patch?

It's the second patchset recently doing such incorrect splits.

Please read submitting patches how to organize your patchset.

Best regards,
Krzysztof


