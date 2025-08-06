Return-Path: <devicetree+bounces-202146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB66DB1C330
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 11:22:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C09B1844F3
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 09:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C9C28A1D3;
	Wed,  6 Aug 2025 09:22:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B8486359
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 09:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754472150; cv=none; b=LGUaaA2W1ii8zuH3EzRS23RsPMYX5/w7HyT0cISSZ1YiHY1+O5stsAeE0kSG0l3uSyQLSrF842i+C01EA74se91BLwd15ONyy8c+CyrAFJRUMWcGW1c+v6co/yiUCF9pFpdoTa2jb07QdegoyjQZME92YYpQBG5gZILLAxw7gnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754472150; c=relaxed/simple;
	bh=Iks9JauBpwTPTgCTEwzz+I/Nh4bnexP5Piqp9O9AIRk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o04xUTApuxyJFuomEbztIJ8TmAjvERVWH4QU/hnGPBR/GLIehRvbL9W45OEDcHgOK/WKX/5X3y9CFXBHNFiWA1nbkYwMD06YnmhEONsOMdPKhqnvfkBIbzZazg/vtWo4MvR25m4i3iks2M9TXKGtq1Ds2jchlAnKhXx2vBJRjGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9270619F0;
	Wed,  6 Aug 2025 02:22:19 -0700 (PDT)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C96E3F738;
	Wed,  6 Aug 2025 02:22:26 -0700 (PDT)
Date: Wed, 6 Aug 2025 10:22:23 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Spell out acronym
Message-ID: <20250806-first-godlike-basilisk-d7fb5e@sudeepholla>
References: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>

On Wed, Aug 06, 2025 at 01:03:08AM +0200, Linus Walleij wrote:
> When I authored these bindings I had no idea what "AEM" stood
> for. Now I know: it means "Architecture Envelope Model".
> Detail this in the bindings.
> 

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

