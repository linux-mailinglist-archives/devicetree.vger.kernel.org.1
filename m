Return-Path: <devicetree+bounces-254952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE1FD1DEF3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 81E3B30A99B6
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A445D38A9A3;
	Wed, 14 Jan 2026 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ak+wGUxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3738B7BE
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385393; cv=none; b=MLBNwseKsKiiAkJLC/XAgMrfkDe52n3EzaoU94YV9OAMnjIvyK6bZ9Ag25Lg5NO/aDKTsUCqOiUym7HvC9aa8iteZXsRF3gI5SQ5aGNEgTWdQpuGVy2QwAP8Q18SfsNvCJCFpHGe5Oh9XfPHS+Dicu8Pf+vwgx+/0gKdumxgN3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385393; c=relaxed/simple;
	bh=lglvua4EVlJZWWN+umJtgEFU1k93wWFTZGM2L08B1rA=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gKTw5LaEvoK89kz+yMlEJBg0/fdnAOGAfk7ZocidsK5Kuf7BumNnNwSkZC6AE7es1sGWVBdb1bkN5N6oxVMtn37vJjvukjn1ZzwZgt8RFhrM6TYa9HIQuIdyPlgAy7vCoRzGWidsaKAtz7IQRq05M9hT/lO8hWE4B7x8ksn8NQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ak+wGUxR; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47774d3536dso6274095e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768385389; x=1768990189; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uG9zT1M5JtL8PrqjGVTSA0LQwsZKFnwHyBL1SQPctlY=;
        b=Ak+wGUxRtAMhANd9GD2S7fBDxd/S2LaWkgelddZYIOcheH4Lco/1lkQqE+GRs8h877
         KhYkis0BsZMA8fmw1Coi8xNR5vy+OLeqWkY9FjgoB052ivNwaSqW5PI0O8/EBvN9KXRE
         IpErG78OPJJf7l1vB3qcMVb+nS0PPeMymvB3nyRQKTPbWCNu4YUxL0MTFE2AkxqAsixl
         l+TVo/CNqTVujHidMY1MBBF4//Gkusj/07pABU/SjDpso+YrYMjUEpQZS464gkdLt2D7
         mrn9NBJUeYOR95UuK13EF7vVNfG+qgFRzlYpiu3mUYhv/zQp41mBspilEP34yQvDSXbQ
         0VDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385389; x=1768990189;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uG9zT1M5JtL8PrqjGVTSA0LQwsZKFnwHyBL1SQPctlY=;
        b=MwyLRsoUwwGl4uMg/KWIsVlfeAHmEJS/3xcRrknT4ULb5br0Rol5szqor9LVGWrvyf
         FNZtqAsGgpjLoiRHpBh1az7PI3wtDjCZbKECbx0UD5W+6B06CuHsdLNAB145+/HW9Qa6
         aN2u0X+Sx9ybEM186I3ymiggLL/AIJtWGMqCJTgzz37YZ2CdiJNzm7IP1EgioHB+0BeG
         Nymm/lvSNaxA2p97rsFKcVQQv8xFZq1z4WraKlZY+bt/rYwQWmfKXjkfvOn2CbmXm9gg
         MW6MDGuBkWxA0A6TN33u7gMP69rtFLAySc2QAW2yjZFz7VCRUFz3307+XgZAD2eVP4Ry
         OyFA==
X-Forwarded-Encrypted: i=1; AJvYcCUovvdKbNnqMZPlckUFjLRDPnI0jyozjNta63UFx9p2sW6bskai6s7IO1ZzpuXcaEqOw/pjTcCSH1mk@vger.kernel.org
X-Gm-Message-State: AOJu0YzcOtY1mAx56IQiK2PCWAD8zrDqj+p9XUph7Jbj+4UdWY0SOQjm
	XVOlP25bheQFofI1Bl5SXaEz5ogXRySXP4OJmpiOwrrZTdnxLTGjhZo7
X-Gm-Gg: AY/fxX7LW0ZDU6cQ1V7YRfXDqnLEMdCLlDfwaNAXCHRgIQfFcqN2v2/RedsxmCoEjWu
	BNECLMqJdLAP4hiQaUm6ASSWcTeUCDYbK7ltbU9XWeg0EKI4yknVw7uXanvtBSxjPRCqqGY+utE
	WdVzj/zEZa6eLy8EjckycnRWkhqX6X+qKAEpwrB0hos2eStpAuSlMjuM3o+xd3HDVFoRBsQjZ5u
	YFmxSVCpeuicmjXbzCkGgpnVC5sfvLmcy9nScRTAfgxSjlts9PvbGS3HTrt4R0NcpVnB3sZh55I
	3O+YlI6wNdlkxml6Lc1CjFB+F0tjrHr57Qlhm4KZ5c1N6+caLiWcecTgzPRV85KPk0YUFG0pZa1
	wQKU2pBa3IE8py5tVrzxPjl2WtZc2cUFXp0IHp790jRPJJEhJMunsumxqy+KQ0g5u30+w95lhM2
	v4re25GIYeb3Xk4ROoROjADu6OT8ZS8i4H6thiG8I=
X-Received: by 2002:a05:600c:3d96:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-47ee37a442fmr23416685e9.11.1768385388706;
        Wed, 14 Jan 2026 02:09:48 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-81.ip49.fastwebnet.it. [93.34.88.81])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee27d9aaesm17665225e9.3.2026.01.14.02.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:09:48 -0800 (PST)
Message-ID: <69676b6c.050a0220.5afb9.88e4@mx.google.com>
X-Google-Original-Message-ID: <aWdraCzEqwc4D_1x@Ansuel-XPS.>
Date: Wed, 14 Jan 2026 11:09:44 +0100
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
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <75f9d8c9-20a9-4b7e-a41c-8a17c8288550@kernel.org>

On Wed, Jan 14, 2026 at 10:26:33AM +0100, Krzysztof Kozlowski wrote:
> On 14/01/2026 10:01, Lorenzo Bianconi wrote:
> >> On Tue, Jan 13, 2026 at 09:20:27AM +0100, Lorenzo Bianconi wrote:
> >>> Introduce en7581-npu-7996 compatible string in order to enable MT76 NPU
> >>> offloading for MT7996 (Eagle) chipset since it requires different
> >>> binaries with respect to the ones used for MT7992 on the EN7581 SoC.
> >>>
> >>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> >>> ---
> >>>  Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml b/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
> >>> index 59c57f58116b568092446e6cfb7b6bd3f4f47b82..96b2525527c14f60754885c1362b9603349a6353 100644
> >>> --- a/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
> >>> +++ b/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
> >>> @@ -18,6 +18,7 @@ properties:
> >>>    compatible:
> >>>      enum:
> >>>        - airoha,en7581-npu
> >>> +      - airoha,en7581-npu-7996
> >>
> >> This does not warrant new compatible. There is some misunderstanding and
> >> previous discussion asked you to use proper compatible, not invent fake
> >> one for non-existing hardware.  Either you have en7996-npu or
> >> en7581-npu. Not some mixture.
> > 
> > Hi Krzysztof,
> > 
> > We need to specify which fw binaries the airoha NPU module should load
> > according to the MT76 WiFi chipset is running on the board (since the NPU
> > firmware images are not the same for all the different WiFi chipsets).
> > We have two possible combinations:
> > - EN7581 NPU + MT7996 (Eagle)
> > - EN7581 NPU + MT7992 (Kite)
> > 
> > Please note the airoha NPU module is always the same (this is why is just
> > added the -7996 suffix in the compatible string). IIUC you are suggesting
> > to use the 'airoha,en7996-npu' compatible string, right?
> 
> No. I am suggesting you need to describe here the hardware. You said
> this EN7581 NPU, so this is the only compatible you get, unless (which
> is not explained anywhere here) that's part of MT799x soc, but then you
> miss that compatible. Really, standard compatible rules apply - so
> either this is SoC element/component or dedicated chip.
> 
>

Hi Krzysztof,

just noticing this conversation and I think there is some confusion
here.

The HW is the following:

AN/EN7581 SoC that have embedded this NPU (a network coprocessor) that
require a dedicated firmware blob to be loaded to work.

Then the SoC can have various WiFi card connected to the PCIe slot.

For the WiFi card MT7996 (Eagle) and the WiFi card MT7992 (Kite) the NPU
can also offload the WiFi traffic.

A dedicated firmware blob for the NPU is needed to support the specific
WiFi card.

This is why v1 proposed the implementation with the firmware-names
property.

v2 introduce the compatible but I feel that doesn't strictly describe
the hardware as the NPU isn't specific to the WiFi card but just the
firmware blob.


I still feel v1 with firmware-names should be the correct candidate to
handle this.

Hope now the HW setup is more clear.

-- 
	Ansuel

