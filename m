Return-Path: <devicetree+bounces-254981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ADFD1E2B0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:44:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18143309672C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAAAE38E11C;
	Wed, 14 Jan 2026 10:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ffPbo/CT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273493016F5
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387162; cv=none; b=PmakFMn7mgQEMM7tsg5jcMtamQyLvdauv7Ki/gn+XVUlDMDxIRDsdAdQi0unmmdBaUOD9zlrM0IfcL95IGYphYWEl9MiyhKYRRfDLVair71ZbUIDEukSNz/3BCxZdLmTwem5K1M+R2+j6Xn5VJqWnnAQbNaeNNQdAUuHCyWzPBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387162; c=relaxed/simple;
	bh=NeZGER3lKepKkGnq50QW7TBSgU+zWJs6ARL5d7H5b24=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TR9kuj/CIzUq8K/u5JyjC278DepjRHGAWCMl5mu1SY5BLCwMZHNydvb2EwXyZ8u6dzo5g8JspbBsx9wMqK3+npKNUnln8KsBZsPjwoymcycqdVi4zml6AUbS7mzYYFWZbWkMmH7iq9uV9Wa80CahLA0F0v0NKRqsOWx3/Vgh33I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ffPbo/CT; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-432d2c7dd52so4597059f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768387159; x=1768991959; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cVbatpxpKElt1sAAsNQJxq68ajK6K9op7sSsIg3JJAA=;
        b=ffPbo/CT89uspMudxd1ltajyIUncsP3uszbSqL/fopNVdwppHdY0WazXN+bu3fimM0
         +ums/CHItdYy/UPClMHotLh/uKuuQDwH9HJ9aDljY6ooQpLxXY3ueuLEgCNGzafUYztR
         yTK1QLfI1zJWFdM1ApRB/UO8cQklyN7JRPlNYBXJipF3SpQvt4D1C0eM9Pqa9hcmW5p+
         0K/jiz6Vxp/NfgH13rKRUHBZ/itajkbXRvVAofsSfZau/JsrE71HFCdCP2Ytj5UEZgwp
         OzIHLvNigCNw9ojOT9Ock1YxORV6Q8lIqhtuC/3ynFvje9PCLaAAhPW4brp1lsrKlhHK
         5K7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387159; x=1768991959;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVbatpxpKElt1sAAsNQJxq68ajK6K9op7sSsIg3JJAA=;
        b=XB37uqUkFyL9zN4QJdqWw/kS1DPDmWc1xTGW63GeT+sdemKk/niSsxFtgH3GQ3xgok
         b+CH0tdUretQXbi4eAKQjLy+Lp+tzfaiTGSQyJ5Yv7PFakzadxdM+X/SwIFEiVP49tFO
         qTZ7lSXY+48Z41o/KIBsCJVsKt8vWpcGdojq8hYBd58xtOk/5L7N0kznO7PlTFp0F4cB
         MgckntxOA+vg/zJDtu6Kx6U2/rnA9MWABXaPBFMxmJRjuRUWFiOa3E1sRBG1/MEIPYX/
         T5SZ5tCUaA0dAmUT83tVtEYWi3pEGqE7CI4Okti5FahZIxE9SlnMzaPCIz6NhFibAIBS
         TeXg==
X-Forwarded-Encrypted: i=1; AJvYcCXuiRfGVtksq7H4YCZwA4wj3CCtCgDymSYTkFaEA07zsjfq9eOn1kxOQ+ND//P2UVJVrS7XuKq5Xke+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/QxXZ1rA+wmOaFlzrKCF0nXvRVRFVO5wAvVQfnX5XlSng4a4g
	/hVmsKKv+xdnMPwZES00xGo/KAa2R3TOO8lVhA1wAOt+ZRuhXqD8mgDL
X-Gm-Gg: AY/fxX57TRxmGo1ckM1BPQnkse5mhmDHRp/wGM/EQc5Zy4ykq+77jof3edKZdnaFHKy
	adervG9eL2omMHtiBEDKeAK5AE69xO0/jfaMqE9GbCYBRvIAofmXhuAJ+v1jcMjpC6RdH5L0LyL
	eix5tCZXO0kUYyFcTE1QtQoZJ6lk18Y/15zthnuFUQHbB2wVQefFA5lOqScoDIUnPlldIVOR7iG
	r76b0wfF9t9d8hi2UVnumDyQVBY6zU8EUBnNG08nmp7Ct/Y64J41F/iYy/m5oixy1MbksfRWEcF
	C0aGy4ZM+uwnEuBDaxCkwK15957RTtZxCaVyCFtWwd0jeDhBy4JFdcCPt63QjSIME1OkudWG3VF
	aa4+GvlBEivhug11maJxGaFlWneYNbzP/x/bjlN4MuJDY2Gfk5h6wkvBj+x30P8qPfBlA0qYkrV
	wBOOJto943cWQcmW752yFw+DNn5oPaDzq0ITutf6AEqgqOnE+cXA==
X-Received: by 2002:a5d:5d89:0:b0:42b:4267:83e9 with SMTP id ffacd0b85a97d-4342c4f4cdemr1980366f8f.2.1768387159401;
        Wed, 14 Jan 2026 02:39:19 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-81.ip49.fastwebnet.it. [93.34.88.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df939sm49038091f8f.21.2026.01.14.02.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:39:18 -0800 (PST)
Message-ID: <69677256.5d0a0220.2dc5a5.fad0@mx.google.com>
X-Google-Original-Message-ID: <aWdyUuN3TnelxAh9@Ansuel-XPS.>
Date: Wed, 14 Jan 2026 11:39:14 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: airoha: npu: Add
 EN7581-7996 support
References: <20260113-airoha-npu-firmware-name-v2-0-28cb3d230206@kernel.org>
 <20260113-airoha-npu-firmware-name-v2-1-28cb3d230206@kernel.org>
 <20260114-heretic-optimal-seahorse-bb094d@quoll>
 <aWdbWN6HS0fRqeDk@lore-desk>
 <75f9d8c9-20a9-4b7e-a41c-8a17c8288550@kernel.org>
 <69676b6c.050a0220.5afb9.88e4@mx.google.com>
 <e2d2c011-e041-4cf7-9ff5-7d042cd9005f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e2d2c011-e041-4cf7-9ff5-7d042cd9005f@kernel.org>

On Wed, Jan 14, 2026 at 11:34:55AM +0100, Krzysztof Kozlowski wrote:
> On 14/01/2026 11:09, Christian Marangi wrote:
> > On Wed, Jan 14, 2026 at 10:26:33AM +0100, Krzysztof Kozlowski wrote:
> >> On 14/01/2026 10:01, Lorenzo Bianconi wrote:
> >>>> On Tue, Jan 13, 2026 at 09:20:27AM +0100, Lorenzo Bianconi wrote:
> >>>>> Introduce en7581-npu-7996 compatible string in order to enable MT76 NPU
> >>>>> offloading for MT7996 (Eagle) chipset since it requires different
> >>>>> binaries with respect to the ones used for MT7992 on the EN7581 SoC.
> >>>>>
> >>>>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> >>>>> ---
> >>>>>  Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml | 1 +
> >>>>>  1 file changed, 1 insertion(+)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml b/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
> >>>>> index 59c57f58116b568092446e6cfb7b6bd3f4f47b82..96b2525527c14f60754885c1362b9603349a6353 100644
> >>>>> --- a/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
> >>>>> @@ -18,6 +18,7 @@ properties:
> >>>>>    compatible:
> >>>>>      enum:
> >>>>>        - airoha,en7581-npu
> >>>>> +      - airoha,en7581-npu-7996
> >>>>
> >>>> This does not warrant new compatible. There is some misunderstanding and
> >>>> previous discussion asked you to use proper compatible, not invent fake
> >>>> one for non-existing hardware.  Either you have en7996-npu or
> >>>> en7581-npu. Not some mixture.
> >>>
> >>> Hi Krzysztof,
> >>>
> >>> We need to specify which fw binaries the airoha NPU module should load
> >>> according to the MT76 WiFi chipset is running on the board (since the NPU
> >>> firmware images are not the same for all the different WiFi chipsets).
> >>> We have two possible combinations:
> >>> - EN7581 NPU + MT7996 (Eagle)
> >>> - EN7581 NPU + MT7992 (Kite)
> >>>
> >>> Please note the airoha NPU module is always the same (this is why is just
> >>> added the -7996 suffix in the compatible string). IIUC you are suggesting
> >>> to use the 'airoha,en7996-npu' compatible string, right?
> >>
> >> No. I am suggesting you need to describe here the hardware. You said
> >> this EN7581 NPU, so this is the only compatible you get, unless (which
> >> is not explained anywhere here) that's part of MT799x soc, but then you
> >> miss that compatible. Really, standard compatible rules apply - so
> >> either this is SoC element/component or dedicated chip.
> >>
> >>
> > 
> > Hi Krzysztof,
> > 
> > just noticing this conversation and I think there is some confusion
> > here.
> > 
> > The HW is the following:
> > 
> > AN/EN7581 SoC that have embedded this NPU (a network coprocessor) that
> > require a dedicated firmware blob to be loaded to work.
> > 
> > Then the SoC can have various WiFi card connected to the PCIe slot.
> > 
> > For the WiFi card MT7996 (Eagle) and the WiFi card MT7992 (Kite) the NPU
> > can also offload the WiFi traffic.
> > 
> > A dedicated firmware blob for the NPU is needed to support the specific
> > WiFi card.
> > 
> > This is why v1 proposed the implementation with the firmware-names
> > property.
> > 
> > v2 introduce the compatible but I feel that doesn't strictly describe
> > the hardware as the NPU isn't specific to the WiFi card but just the
> > firmware blob.
> > 
> > 
> > I still feel v1 with firmware-names should be the correct candidate to
> > handle this.
> 
> Yes. What you plug into PCI is not a part of this hardware, so cannot be
> part of the compatible.
> 

Thanks for the quick response. Just to make sure Lorenzo doesn't get
confused, I guess a v3 would be sending v1 again (firmware-names
implementation series) with the review tag and we should be done with
this.

> > 
> > Hope now the HW setup is more clear.
> > 
> 
> 
> Best regards,
> Krzysztof

-- 
	Ansuel

