Return-Path: <devicetree+bounces-246951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C49CC1CC2
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95B4F300B9B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA1C344047;
	Tue, 16 Dec 2025 09:25:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60923343D7A;
	Tue, 16 Dec 2025 09:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765877146; cv=none; b=Ib/cQW48VmYhc9usPo5uNw1UK2lIsNgMaxPnTNJEBTn/bsz4+G40nVYCN0Oot807pavmD1o0MZnouqtqPKiqz6S5j6YlI7Yuht7cb9pbZxX2m34yFSg+3SAmpAUwr5hAUIIUjZ0yMfWPa1ePZ8/ip6RbNWfrDxOa0IK1+NLdsVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765877146; c=relaxed/simple;
	bh=1b4XBN6CqY/XMfuE9x31wECLZJQrxIS/h/SXyzeRXvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ujIvUAy253ZFsrEiVbc25q0lzaYm4effYUET1RoJOuYHTH40RMKCSVG4ujyYMWf87FjDJgexNfgOc4/GoAIkUExwRovrAWCsxq+/DotYiug7haG36jaf5z1JwjoRGQQ0WP5kWnbqgGhJgY2R3B9+xkr3PVaJSA+IYglNqmFpRJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5B68FEC;
	Tue, 16 Dec 2025 01:25:37 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24F593F73B;
	Tue, 16 Dec 2025 01:25:43 -0800 (PST)
Date: Tue, 16 Dec 2025 09:25:40 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm,vexpress-juno: Allow interrupt-map
 properties in bus node
Message-ID: <20251216-thick-zealous-shrimp-b7afb1@sudeepholla>
References: <20251215212932.3324144-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215212932.3324144-1-robh@kernel.org>

On Mon, Dec 15, 2025 at 03:29:32PM -0600, Rob Herring (Arm) wrote:
> Allow interrupt-map properties which are already used in the bus node.
> 

I assume you will be taking this via your tree itself.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

