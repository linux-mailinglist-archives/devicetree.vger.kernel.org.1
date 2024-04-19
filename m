Return-Path: <devicetree+bounces-60839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A760B8AAA03
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 10:23:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBD16B23896
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 08:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732534EB43;
	Fri, 19 Apr 2024 08:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9aAW68Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1BD52F6B
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 08:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713515023; cv=none; b=puq5zJg4byq1GBN9PrYpaDk1PxZXANMOUK6R1aTlS4cTx0KU4UlEwFTQnhGycWZvHINiRl7o9ODTdkLNhkhxlr8kywYxvLilCuQCMvzH6f4Oy5nW9DR8oXqRC/v+7NTcUxLGwUvXCiZcDWdNTd0aN9Pxa07bPyTcGjWlH8AgaeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713515023; c=relaxed/simple;
	bh=GXAlRi1umXGObuzBscLYTBzw0wG3g4b4OMjZxXFCslk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u2Qw7Imnoja785oxOslxnIw7phBb1avQl7ys1Ce7LtQlOA4ziwJopagmcbsLaPdJO62mvoDbPOUJOXvJrJ2AeFNN7qVIqs/7eJmgnB8Nx2eLY7DvtcV54g9qolmsqH9i4wRbRLeXKuW0vcMWT6UKT/5pC52GLob2DcoRD0VJCtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9aAW68Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66EA6C072AA;
	Fri, 19 Apr 2024 08:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713515022;
	bh=GXAlRi1umXGObuzBscLYTBzw0wG3g4b4OMjZxXFCslk=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=V9aAW68ZQO5YVrgicF7Ls/bvF2AnXim98dDy+L+27/Kh1ggbYT7U76VdnNwWKaDcL
	 USf85zN/5OXEhnd3UOjm0rGyRRTPfbQKrSuikHCpArZE5gh4tfotkW0p5i5GtcAtw4
	 OPMRapLut1GvB2SbVFi+gCwcURkTEsR1XjgvgHdUHcuOE9sXSep1En2lYYC0PqxKRU
	 2KaoMhfk8mbYaByjd0vhHxzl6Zk6PizvVIgCa3WlY5k7PIykor2a1pmbhYLzJfCvSf
	 79vqrY8p7rv5VDbYPYhV/dvPHrA5kjlN2ooSqNE4kza5/hDfjEhWNxaRxfUfyZkIlD
	 NZt4HJAmouAAw==
Date: Fri, 19 Apr 2024 10:23:37 +0200
From: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>, soc@kernel.org, arm@kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 01/11] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
Message-ID: <20240419082337.646a54a5jam7x3x6@kandell>
References: <20240418121116.22184-1-kabel@kernel.org>
 <20240418121116.22184-2-kabel@kernel.org>
 <20240418-grain-ethics-8a3ee62ac9a1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240418-grain-ethics-8a3ee62ac9a1@spud>

On Thu, Apr 18, 2024 at 04:43:54PM +0100, Conor Dooley wrote:
> On Thu, Apr 18, 2024 at 02:11:06PM +0200, Marek Behún wrote:
> > Add binding for cznic,turris-omnia-mcu, the device-tree node
> > representing the system-controller features provided by the MCU on the
> > Turris Omnia router.
> > 
> > Signed-off-by: Marek Behún <kabel@kernel.org>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >  .../bindings/arm/cznic,turris-omnia-mcu.yaml  | 86 +++++++++++++++++++
> 
> Why's this in bindings/arm btw? Seems like it is some remote firmware if
> it is running off-SoC on an MCU, so either remoteproc or firmware would
> make more sense? Tying it to arm at least needs an explanation IMO.

This was discussed with Krzysztof in v1, you can look it up at
  https://lore.kernel.org/soc/20230824131736.067c40e2@dellmb/

Basically the SoC is an ARM board, and the MCU is also always ARM.

I'm guessing firmware would also make sense...

