Return-Path: <devicetree+bounces-145422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5FEA31462
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 19:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9187162422
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 18:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59147262163;
	Tue, 11 Feb 2025 18:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="hf0Vx52f"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB8625A2DB
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 18:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739299852; cv=none; b=tdvOypEAMt/5lTPNGJbfzfC2f3f6bTXnD0kVglhjQ9aoa4rZm15u+UQ0+4eHM7dEZIzc6Co4tBEWukk4/abz6scWWrmM9UHdfcyQX3IBzcy3Fy+5FmXxwoxCZElh8/ANb5NmaD8Zmwcy2LuxsoJXZ/5RijDsFxfyiSlpvc+i9iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739299852; c=relaxed/simple;
	bh=s6PODYxY5RnytTNIj8KV6t9ZdRS0oHqDjSdikX4DsVE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W7pfoW9kZRwQ8QqkAs3cVlpstBQcJAXydZCFlGZAhlQt3VfE+YyJza3djVMOtXe9hSaTv9TmtyUaia/+EjD/26uaSsdCbeo2jNLUvT9SOifXzI3622ZQmaruFnyAZdF/Ihty93bNCK2Noawmm7gt5fudpXy3+BsOJ3oVPxOUpOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=hf0Vx52f; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 3CAAC240027
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 19:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1739299842; bh=s6PODYxY5RnytTNIj8KV6t9ZdRS0oHqDjSdikX4DsVE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=hf0Vx52fcE7YaqqbQSU4Mp5F/I4ZdPxN3R9A5+189cZo/xwOLmN0Dg1xdbjFmozNS
	 KT5umMwRgCy+wSbfD2E1OoDg9wOGmKYBxjd+bX4N4pEZrTlXBcN8boUA+ab5nWt0jw
	 QueuYsjS45e/lYXf7GL+T0uVp9ZWxMRMeZLhHEjlPXbDF1sJbLxviztdOwcX4Kgmsm
	 XyqGLO9M4LWruf1XkpqPZDSEVq8y2heSwfEO5OBqj3dwVJic4OVF1y7I+yxJk2+GFO
	 i2cj/Neo3QqX8Rpf6eOzYpRscIi7phTxHFMxeo0IsfywxL9YpcEzQ0evIOrgd/Dvaj
	 8JSBnPxDcEOig==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Ysr9s0WCpz9rxD;
	Tue, 11 Feb 2025 19:50:41 +0100 (CET)
Date: Tue, 11 Feb 2025 18:50:40 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Lee Jones <lee@kernel.org>
Cc: j.ne@posteo.net, Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: leds: Allow differently named multicolor
 leds
Message-ID: <Z6ucAFNauWkhfYZr@probook>
References: <20250209-multi-led-v1-1-5aebccbd2db7@posteo.net>
 <20250211144300.GW1868108@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211144300.GW1868108@google.com>

On Tue, Feb 11, 2025 at 02:43:00PM +0000, Lee Jones wrote:
> On Sun, 09 Feb 2025, J. Neuschäfer via B4 Relay wrote:
> 
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> > 
> > In some cases, a board may have multiple multi-leds, which can't be
> > distinguished by unit address. In such cases it should be possible to
> > name them differently, for example multi-led-a and multi-led-b.
> > This patch adds another node name pattern to leds-class-multicolor.yaml
> > to allow such names.
> 
> Which H/W needs this?  Is it upstream?  Where is the doc / usage?

I encountered this situation while upstreaming the LANCOM NWAPP2 board,
which has multiple LED-group-based multicolor LEDs:

  https://lore.kernel.org/lkml/20250102-mpc83xx-v1-16-86f78ba2a7af@posteo.net/

Since they are based on leds-group-multicolor, they don't have a unit
address, but there is more than one on the same level (as direct
sub-nodes of the DT root node).

I can add a comment about node names, if that's desired, e.g.:

  If multiple multi-color LEDs exist on the same level, they can be
  differentiated by unit-address (e.g. multi-led@abc0) or name
  (e.g. multi-led-power).

Such as a comment doesn't exist currently either; the existing
"^multi-led(@[0-9a-f])?$" pattern is not documented in prose.


Best regards,
J. Neuschäfer


> 
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> >  Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml | 4 +++-
[...]
> > +      - pattern: "^multi-led(@[0-9a-f])?$"
> > +      - pattern: "^multi-led-.*$"

