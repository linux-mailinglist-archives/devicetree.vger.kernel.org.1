Return-Path: <devicetree+bounces-242585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE96C8C687
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 01:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CB6B3AF35F
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 00:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE1F22F01;
	Thu, 27 Nov 2025 00:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="GE6RTA37"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616155695;
	Thu, 27 Nov 2025 00:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764202167; cv=none; b=C9zhtAvtaPlAl/ByI1AJxAkR/W4fJuCot3NpGEnFGny+wSVjYBl+XJpwf8aH9ZyGKdmlhpj5VZKFNv63NfRs8KAO/mBEP0c8RYULQNNI7+DqDAtZSsECVlXLaW+ON1a4qAoLHbhX66YLRgzPyI9EyIqHDHmYo+ZZrLHia+0SEUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764202167; c=relaxed/simple;
	bh=0dgqsCjxJjIi7jKBNovGM5NEce3fD1zg6z1Bkut+UUY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XjPBtITcn5Wi0koIaO0Tkh0jnExizRMH+edX0lrOxgitIlD0NEjRCFDbwVmHrZT9lwx//eN17Ux2aNs1TLgeEjZ6X4ey4izICaOT87eNHn8a3y+/kj76XQOE7WTFovZakFzXH/+0MDDXFkwRzBS+UMtVyWiS9wQIUXjl2eauEsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=GE6RTA37; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1764202163;
	bh=YSyiRW1FlOenglm2u/M08PCHR36GOfF+K01IO6BA5Ig=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=GE6RTA37oHwxcE3MmkkWQlnKhuyPc50WN4YCD/uIHWekOMcWGHMBIGnpSh1ZsGjMS
	 E02qnWPiyPhJhhkwPiSyk78cnsjwNYsrG/kw6LC3VY9bABUGr+oDRPu56YGv/jXufh
	 VYNSHsscnTxRPnQfhJ/i9BgcRJoGkmvZgZ+ToNgyGbR1Nc9HahM2nUq2V8wK48tR4O
	 dcrbhTSJ/nK9Fiu3RFwsJ4ls6ouGdG3x0Kf1OjgXsp51P7vQoIY5ldZcNuvkUaEW38
	 NE5NhVKc+DLl0fz7jxGireNzjoHA4gwQ8YodAMcnzgRFLzKN5ilGl4ot+C47c8FAcm
	 6jgH2SBAy/bvg==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id D1CE36561D;
	Thu, 27 Nov 2025 08:09:22 +0800 (AWST)
Message-ID: <f1a18e7b8deb5987164b4506f8400dcad67a8862.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 2/2] dts: aspeed: Add a dts for the nvidia msx4 hpm
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Marc Olberding <molberding@nvidia.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Thu, 27 Nov 2025 10:39:22 +1030
In-Reply-To: <20251124-msx1_devicetree-v4-2-a3ebe3110a67@nvidia.com>
References: <20251124-msx1_devicetree-v4-0-a3ebe3110a67@nvidia.com>
	 <20251124-msx1_devicetree-v4-2-a3ebe3110a67@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Marc,

On Mon, 2025-11-24 at 15:14 -0800, Marc Olberding wrote:
> Adds a dts for the nvidia mgx pcie switchboard reference
> platformi hpm. This is a dual socket granite rapids based platform.

I was looking to apply this, and set about tweaking the commit message
in the process, but the more I tweaked the more I felt I needed to
tweak. So rather than do all that myself, I'll ask that you work
through these requests :)

The things that I'd like addressed are:

1. The subject prefix needs to begin with "ARM: ", so:

   ARM: dts: aspeed: ...

2. I'd rather stick to formalised naming and capitalisation, so NVIDIA,
MSX4, and HPM, Granite Rapids etc

3. "Add a dts for" in the subject is a bit redundant, as we already
have "dts" in the prefix. We can trim that out:

   ARM: dts: aspeed: Add NVIDIA MSX4 HPM platform

4. "HPM" hasn't yet been expanded anywhere and it's still a mystery to
me. Can we unpack that in the commit message?

5. "Adds a dts for ..." in the commit message is self-evident from the
patch. Rather, can you please talk a bit more about the purpose of the
platform? I'd like to see discussion of its use cases and any
interesting points of design or implementation.

Cheers,

Andrew

