Return-Path: <devicetree+bounces-136297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A95DA049C3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 19:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BCA97A0390
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 18:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20B11F37C8;
	Tue,  7 Jan 2025 18:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKK4Px1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92D1132111;
	Tue,  7 Jan 2025 18:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736276324; cv=none; b=prcOEtHQFJQ+fanL8cI45zdL7/alxVSf3bNXcRl8j69LtT53fm7MZSZ6mYVdaQgt5SPNecynQjo5tBXxdE4F9TgbAFoJRqU64kSfhfxAK8BVkXwM3jJ4ARQ8GBi+GbfSVrqzCskWvezmK2dvJBN8Qx79lwH+53bS+QAByJf4cms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736276324; c=relaxed/simple;
	bh=QxDtnYr2UAx+CXovQxyraRSDMmkk338BolrkERgCU0k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UjJgk8i8cVP1bOhTIberQpRprPXVjAhZm25mnheyLVrsIKEQtmr34m8H+SKjhyXB6jm9h7jDu+MBK0D6YyM5D35LFUyGgw4+QVGV6ryUQQQ2G2wIWro0b5SZXOZn8jN5J9rn0d6b35t+Zm5atiMg/Sd9PDxI4MXhxXPNENRF58U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKK4Px1Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13E48C4CED6;
	Tue,  7 Jan 2025 18:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736276324;
	bh=QxDtnYr2UAx+CXovQxyraRSDMmkk338BolrkERgCU0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKK4Px1YK2eYpM1Gkuty0thfZ0MB/cB/YpHsBb1D2gzh5OMYAKNq7HS9tQ/oyn155
	 ngZImjmJPXR4JmqBi0athGKx5AQLuv+qk3S1rT44LAecjo/dO4b2dzdPr06Gcoo2IY
	 uoQdOjkIsvPeJHPzJCly1zQX75sXjzRis2WFuYo/t1MwKsBARPKq5bqWuWwPksA0Ra
	 DXrDfcfPSYsi12QBRgjre4koaZPWUbawgGl2CQcoqlBSNvb+73a8+QLHiAgKC40qVP
	 uGEFlUpeWlgKeuWRy//hhg1S25CVLzL/esUhFSc5/Wf9rTGaQ2v39MXEdcVV3tcGuh
	 v578AMbH7WPQQ==
Date: Tue, 7 Jan 2025 12:58:43 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: niravkumar.l.rabara@intel.com
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: soc: altera: convert socfpga-system.txt
 to yaml
Message-ID: <173627631713.1313974.12406062300344642954.robh@kernel.org>
References: <20250107105129.2784203-1-niravkumar.l.rabara@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107105129.2784203-1-niravkumar.l.rabara@intel.com>


On Tue, 07 Jan 2025 18:51:29 +0800, niravkumar.l.rabara@intel.com wrote:
> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> 
> Convert socfpga-system.txt to altr,socfpga-sys-mgr.yaml and move to
> soc directory.
> 
> Add platform names in description for clarity. ARM(32-bit) platforms
> Cyclone5, Arria5 and Arria10 is using "altr,sys-mgr" compatible,
> while ARM64 is using "altr,sys-mgr-s10" compatible.
> Removed "cpu1-start-addr" for ARM64 as it is not required.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> ---
> 
> Changes in v3:
> - change to altr,sys-mgr.yaml file name as per review comment.
>   v2 patch:
>   https://lore.kernel.org/all/20231017192131.GA2531944-robh@kernel.org/
> 
> Changes in v2:
> - Added detail description of changes in commit message.
> - Moved coverted yaml file to soc folder.
> 
>  .../bindings/arm/altera/socfpga-system.txt    | 25 ---------
>  .../bindings/soc/altera/altr,sys-mgr.yaml     | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
> 

Applied, thanks!


