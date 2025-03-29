Return-Path: <devicetree+bounces-161775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2415EA75688
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 14:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD9593AFC13
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 13:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FEF01B3957;
	Sat, 29 Mar 2025 13:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="cGcTw6BN"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA561E4BE
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 13:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743256785; cv=none; b=a1QAwitapjEjfdod6h+yKI+xNZB+90tZPbe7KKcZykd0TiIV/q0+onQX35GQYJOzRCQDYXh0mwUCfCVLRRyGgX9dMKGufdYV9Cn//6eqwYt2vsmsJ4MpWqBnijZEdLZ91MAPGMDXk/MWvJvziznZY4jyangHOyhLsC13d2huCYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743256785; c=relaxed/simple;
	bh=vjaEBPCj8oLavyF6cvcW6c7u48OjXqgEPZwbyYOsh/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RCmwHe3cEatdocPnGUcVyIK4T56u1shNZbxPOmbNZq4MQ6Bf173IfsUbD4TjoS5z14gmHikI7DWK3AfiDesl0mGLpl5pSTYa6XbDEGY6CB6iC4Ta11JNmYpRu83Kp6/tigJ6jMusG0XLrMUJ8IilpOiHgEBFcIKRa91YFhp5rNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=cGcTw6BN; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <2909146e-dffa-400b-b3ae-c0432c4a0bae@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1743256771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=36gri5fD2xCnOVAPYs/LSgPPkt9zRhINUlQM2IDvXSc=;
	b=cGcTw6BNm1vP1awkZJO0tJCiwL1WMjvxz9EzJ59JDqvhKT/bp4L4+24TbnlVTNZwghSAFh
	WAFY9+S82iTQP53LoSM+bttb7IAdSWSDELJGbkfKq0ASyOuFZPTDl+hnUzOtDmHQpGOtd4
	ujnPPHdaPxKvUNPrtnlS7+lsigmP+v4=
Date: Sat, 29 Mar 2025 19:28:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 0/4] drm/tidss: Add OLDI bridge support
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Simona Vetter <simona@ffwll.ch>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
 Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar <u-kumar1@ti.com>,
 Jayesh Choudhary <j-choudhary@ti.com>,
 DRI Development List <dri-devel@lists.freedesktop.org>,
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel List <linux-kernel@vger.kernel.org>
References: <20250226181300.756610-1-aradhya.bhatia@linux.dev>
 <20250328124413.GA44888@francesco-nb>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250328124413.GA44888@francesco-nb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi Francesco,

On 28/03/25 18:14, Francesco Dolcini wrote:
> Hello Aradhya,
> 
> On Wed, Feb 26, 2025 at 11:42:56PM +0530, Aradhya Bhatia wrote:
>> The AM62Px SoC has 2 OLDI TXes like AM62x SoC. However, the AM62Px SoC also has
>> 2 separate DSSes. The 2 OLDI TXes can now be shared between the 2 VPs of the 2
>> DSSes.
> 
> Do we have support for 2 independent single link LVDS/OLDI display + 1 x DSI
> display? From my understanding the SoC should support it, but it's not
> clear if the SW does support it.

The AM62Px SoC does indeed support the configuration that you mention,
but the mainline tidss driver does not support AM62Px DSSes yet.

This series only adds support for the OLDI TXes found in TI's DSS
hardware.

-- 
Regards
Aradhya


