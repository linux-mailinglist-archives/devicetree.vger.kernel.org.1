Return-Path: <devicetree+bounces-240566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C83C72D38
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:27:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 432FE4E8BF9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2200A31BCB8;
	Thu, 20 Nov 2025 08:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQnVPQRO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14C931BC94
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 08:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763626882; cv=none; b=ezPFnvsPOghSRWl7y7Rfk4kCyDZP8iggVhmVkquVyX81kILOGeDQLqhQZxWFc7qBpsBrer7CEHVkxG4OnbHD8bk31YdnBw8PtrnTlqfuybxbfRUtad7pl2BgFg3kjJj4zvwMAruHE6AcQzmwpBaDSTGy652KVp489Hm0vEdUOrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763626882; c=relaxed/simple;
	bh=933EAaqq9l2q43LYNZsKPma4ID1G5HUyOXTFCYQInCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cuOIp8o0DI87Q5AIiY2pSQ8CwS7mZarK/bUE9XEjpN/6qbxM9/iP+GUr1Cgh6wEdefdQ8IZX9rcE36srA99Au1KgCdNM3csmfyU7kk6p6/qG39snwW32tRXs5i1cTWZxkCxZo8G17ZbyFqNyBrtj5KYVVV+uZ6iXa6AQCRivUIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQnVPQRO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13206C4CEF1;
	Thu, 20 Nov 2025 08:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763626881;
	bh=933EAaqq9l2q43LYNZsKPma4ID1G5HUyOXTFCYQInCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YQnVPQRO1ogYSZ6LAdtENDpfRctdQ4iYaEFx8miCDUstH7VRVbhBv+3QTo5/wK1y0
	 XcD6JmNKuHu6RgfdGTBhic4d6m/3dTjJvNPrlHgC0iTThiei2B6JP+fVwqVDOea6hC
	 yVV34ytRP5BSLnfIIQJvOXxIv6mlAdsg79v3e5N9EdxUdxANuaejb/fA2wU1tJKZF7
	 CJLENMw8XlVMT5oSpqKUYyAVW84ur5WIJK4P1zOpgOkaycyN/1i/cseuUioujPk189
	 IAc/0jI26jVAiW4ZbdwOaYDs34bE+SdD0bSUUh2oMpVk6FliDUT5SeaDvoAxLHJdIo
	 kLTURL7HF4lbA==
Date: Thu, 20 Nov 2025 09:21:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: net: allow the Agilex5 ethernet to have
 a fallback
Message-ID: <20251120-zealous-unyielding-angelfish-b2aaee@kuoka>
References: <20251120025820.41308-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251120025820.41308-1-dinguyen@kernel.org>

On Wed, Nov 19, 2025 at 08:58:19PM -0600, Dinh Nguyen wrote:
> Add the generic "snps,dwxgmac" as a fallback binding for the Agilex5
> ethernet controller.
> 

I can see that from the diff, but I do not understand why.

We do not want generic compatibles, so obviously you should explain here
WHY we would accept something we do not want....

Best regards,
Krzysztof


