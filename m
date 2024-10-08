Return-Path: <devicetree+bounces-108797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E6F993EA2
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F2F6B214C0
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 06:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B52D137C35;
	Tue,  8 Oct 2024 06:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tdid+FNN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163682594
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 06:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728368241; cv=none; b=uxokIrpbAklRGpUo2idBIP5SRLUVlnap9YJpsLcrDM6S3TjVbhqJtbUhB3WKf9O6LOJr8UtYzzPQFsOMfoqKMbgDN09tEeXzIDy4Wxv8FJ/IA5mHOcBpDkxFhG0fc2lJEdmGX/w4yAarwme51HSOqfWoWh3JNjWpv5gZVSo4ehQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728368241; c=relaxed/simple;
	bh=i3/YYK+zwGioFP3KdfCLRz5j+sEhuuUKcpg34C+yTZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ulhmnd8q7fd6nc8sXZhuKsAx470CwRr6SJq6nRksyuj+53syOS6QsW3/mnbYNsQsL7YpCqhH5hGrLocaP9MuzBmrjZIr+4LQ8kdR1tn21ircIoloJ9LoBCdoNIHA87n6VVjSWXkw4/I4WzkI3jl+EInvp8qf/VO1QpZjm3zKdxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tdid+FNN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F862C4CEC7;
	Tue,  8 Oct 2024 06:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728368240;
	bh=i3/YYK+zwGioFP3KdfCLRz5j+sEhuuUKcpg34C+yTZY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Tdid+FNNDTBLLNzMe1h6DBOKbPFbic7Dj1F6be/W19pIZnyjQuBOdOAqLoSa6rn0y
	 C1ybfQlBssqDmadm10iWkh2mFv45gi2Bxn4c4npm3NTYnvyrLdBJLJ/MvMmm0PjSfh
	 L6Yu7Tn9RRR/Zl/YSQCY/RHXFjR6AZ1c9xGkcSpci8xmbTofyUfaGihreG00/gxH5o
	 mEI2yRfbyQRZyvaFe81dbaKPZTQXXSUyELILnBntnxYPwZUMflhdOJ5L2523EYPm+6
	 +dJejTw4L8v+Vln/RO7CybohM2LMBdd7po5EMtM6gd4RkmGMZ8wSUOuOm1L57wVAMu
	 0BItUXet25jEQ==
Message-ID: <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org>
Date: Tue, 8 Oct 2024 08:17:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
To: markus.stockhausen@gmx.de, linux-phy@lists.infradead.org,
 chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
 <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
 <000b01db1944$5bd444b0$137cce10$@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <000b01db1944$5bd444b0$137cce10$@gmx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 08/10/2024 07:38, markus.stockhausen@gmx.de wrote:
>> -----Ursprüngliche Nachricht-----
>> Von: Krzysztof Kozlowski <krzk@kernel.org> 
>> Gesendet: Montag, 7. Oktober 2024 21:26
>> An: Markus Stockhausen <markus.stockhausen@gmx.de>; linux-phy@lists.infradead.org; chris.packham@alliedtelesis.co.nz; devicetree@vger.kernel.org
>> Betreff: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
>>
>> ... and still not tested. Sending untested code is waste of our time.
> 
> Hi Krzysztof,
> 
> appreciate your feedback and I do not want to waste your time. My fixes where a mix
> of your feedback and some half-baked "make dt_binding_check" feedbacks (because
> packages where missing). My fault and sorry fort he noise.
> 
> To get next version in better shape two questions regarding your feedback:
> 
> 1. "Messed wrapping": According to checkpatch 100 chars/line are accepted. 
> So I designed the comments in the driver. Does devicetree differ from that?

checkpatch is not a coding style. I asked to follow coding style, please
read entire document in Documentation/process.

> 
> 2 "Bindings vs drivers". The idea about controlled ports came from other bindings.

Entire property description speaks about driver, not bindings.

> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/interrupt-controller/st,stih407-irq-syscfg.yaml?h=v6.12-rc2

stih is rather poor example to use. The property was added in 2015 (!)
without review (!!!).


> E.g. st,invert-ext. Something like this will be needed in the future because the
> SerDes allow to swap polarity which must be changed depending on the switch
> design. How to do this?

I do not understand the hardware aspect discussed in the property
description... probably because there is no hardware description at all,
but instead you speak about driver.

I do not understand how polarity has anything to do with U-Boot
configuring serdes.

Best regards,
Krzysztof


