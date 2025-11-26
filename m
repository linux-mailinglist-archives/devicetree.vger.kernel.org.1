Return-Path: <devicetree+bounces-242313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AB1C89196
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:51:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F9F43A6E9A
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D462031B83B;
	Wed, 26 Nov 2025 09:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ud+zlubt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A273731B822;
	Wed, 26 Nov 2025 09:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150565; cv=none; b=GcdUMr7HwzfqZZrXzk3NlZ1cw1u5E2AFE/QJ+8qejaUjL1/jzda9U37WGmPKF2i7nelv8X3jqQIeqZbLOOAsrjPXkW8f4C74Eu9i0FgYkzgHziCbhgGFx+GSMVKzU337v0zbS82mxO+MrJRLsa6mWpB5D1GErn7OiLG/8O49+28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150565; c=relaxed/simple;
	bh=oF8eMEzLWxo3Hz4qhOECk9homyCvsXvaIDH2D4Eo1pI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O9Fr/4Z7qbH6PKmMOEwfw159gT9jbgpAA3tUSW5f+VO84uFxhyS6wEvcSN07+r9zIhbF3Cag+c6oTHDj8S9B4AHPbdimjzdi3+FUrWHh+JP0J7ygCzsq/rTUPoYkYaoEt5r2mai2eM7WE0KXTe+77Rx/cHD8HUKgAqyszID9t6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ud+zlubt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2B85C116D0;
	Wed, 26 Nov 2025 09:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764150565;
	bh=oF8eMEzLWxo3Hz4qhOECk9homyCvsXvaIDH2D4Eo1pI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ud+zlubtuTbHUt2lQbv2SQk6nSHoLFo1MZ3+zWQqL3xDH590rf/zNnPkAeIspi6VS
	 uh/QVS8e0GJwbx9PHyVj7T0AR1cHhL0JLu16Zrwvhd6/pMB7O/yEsT1Y9S1Kr6m3ST
	 oWIDV6qlqENmVLTcpuRdOVEy6ZRNrgSaUxWYI3mc19tSuC65ubGNHQ8Dl/gey0mq7b
	 uKlDkDs7uQ5SuM7sMXYaNqANGmcOLzPHpbT9aoYZ3jvqb4mhUN/11IbTs/50nGbiI6
	 T+StPRx5rV5uIU+JT5U4dWuxCZbHlN+vHLVXEGZn6kvhU4JKiN+hwVltOgyl32C3y5
	 THwCYi1Bkv9GQ==
Date: Wed, 26 Nov 2025 10:49:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH 2/2] dt-bindings: soc: altera: combine Intel's
 SoCFPGA into altera.yaml
Message-ID: <20251126-blond-bat-of-emphasis-81c0a8@kuoka>
References: <20251125134004.261165-1-dinguyen@kernel.org>
 <20251125134004.261165-2-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251125134004.261165-2-dinguyen@kernel.org>

On Tue, Nov 25, 2025 at 07:40:03AM -0600, Dinh Nguyen wrote:
> For all SoCFPGA platforms, whether it has the "intel" or "altr" vendor
> prefix are referring to the same business unit that is responsible for
> the platform. Thus, it would make sense to have the device bindings
> documentation in the same location. Move the Intel AgileX board binding
> documentations into the same file that contains the Altera ones.

I had impression that "intel" is the new, thus preferred vendor prefix
and actual owner, so please describe here why this is the other way.

> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>

Best regards,
Krzysztof


