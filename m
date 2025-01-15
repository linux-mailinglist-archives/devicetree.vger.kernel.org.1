Return-Path: <devicetree+bounces-138813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38850A125F7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:25:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD4653A7212
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6038C7080A;
	Wed, 15 Jan 2025 14:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upw8EeuX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3111224A7E9;
	Wed, 15 Jan 2025 14:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736951099; cv=none; b=R8FZGXAehDqTnOKVit8D8BmIfEqOaLoDJvMNpKgxqAtx7PYbTqOTXjDvqNrgPBUFPsGuJnOmp0QZiDBREpt2QE8mM5AjzL9ee+aM95bHHfv3cj8dhaPfs632kHX5Lgsosq4RQcuvjndSrv6PVC00gzV5Qv2hZIaaqeYeOG9vu2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736951099; c=relaxed/simple;
	bh=WMcIZXIWDa7GXnAeCZ5NxIJiTsw13XWfpqK4pCdgiWc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ezejjMb6LAQa0L+z5WCyFCEM8fM5Bt3HHKsTSxEU9e950UPR/zJGckDT8GLMFyG4xh9Qn8ChDVnLTMfrdGxfMyjFnou61hwFevOhUJF5j0de8xgiAsH7a+/OI06xCVHy/KevoyzWTrcaf9F+vQyy73CbWRlLFEj/HUT1gq9Lc5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upw8EeuX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D1BAC4CED1;
	Wed, 15 Jan 2025 14:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736951098;
	bh=WMcIZXIWDa7GXnAeCZ5NxIJiTsw13XWfpqK4pCdgiWc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=upw8EeuXYaML9/AhOywPJDa8xi5WeR9m2yIsNolj7dP6UH8uX/xTo9rVWXny5BMTZ
	 5kTFQyivcoBL+oastN9JqrQe83FruI51a77YqLwe3+7tX9GRcy/piFAAR5Hi/iZ3Ob
	 D0a7xaDbn513HeQ/MUnlsaiuvxDctoKXJhl3txNtdwiRqfYrJEhk4eeo5P1X0Z6oFJ
	 jP89kAQhk5CKJsTMXGDDzO5WYoXqqIhFWMm/6UbCeTkVhvs6DUJMf816Z5iEyHUkO+
	 bake0gHU9EG6GTTYaKYBI4BEEZ1A+HJzsGVWCiqY4AVHvCQ8HDDmEv0nHySoX000YD
	 k1PSgi2nMvPiA==
Date: Wed, 15 Jan 2025 08:24:57 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ninad Palsule <ninad@linux.ibm.com>, minyard@acm.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
	netdev@vger.kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org, eajames@linux.ibm.com,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 03/10] dt-bindings: gpio: ast2400-gpio: Add hogs
 parsing
Message-ID: <20250115142457.GA3859772-robh@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>

On Wed, Jan 15, 2025 at 09:45:50AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote:
> > Allow parsing GPIO controller children nodes with GPIO hogs.
> > 
> > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> > ---
> >  .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> > index b9afd07a9d24..b9bc4fe4d5a6 100644
> > --- a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> > +++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> > @@ -46,6 +46,12 @@ properties:
> >      minimum: 12
> >      maximum: 232
> >  
> > +patternProperties:
> > +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
> 
> Choose one - suffix or prefix. More popular is suffix.

I was about to say that, but this matches what gpio-hog.yaml defines. 
Why we did both, I don't remember. We could probably eliminate 
'hog-[0-9]+' as that doesn't appear to be used much.

Long term, I want to make all gpio controllers reference a gpio 
controller schema and put the hog stuff there. Then we have the node 
names defined in 1 place.

Rob

