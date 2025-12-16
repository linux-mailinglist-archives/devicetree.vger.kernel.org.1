Return-Path: <devicetree+bounces-246949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 989E0CC1D5E
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:40:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CACB0301584C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D7C336EC5;
	Tue, 16 Dec 2025 09:14:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C74931DD97;
	Tue, 16 Dec 2025 09:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765876499; cv=none; b=T9Vr3wZVtMnL3fVoj2OeKAUJAhuDyFVLkM+xT9DYy/8Ex1uumYBcRVP3MIVmkMPfLz+xHhQiMkmW4QqrU+3Tuli0QrlXtYLHTw0dxhNzowC5ysSTlBqhk5KUWGaTUaSkOZQv2f+d5nwcs61JT9VAVTHMtwmZbaDv4cGYd7HndYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765876499; c=relaxed/simple;
	bh=RvyHAe20ktfirPe3lmUmh/t66DJv1PrMlCjsIhGUIiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g0M3L3l1I3dhnXZvZB5RSdgvb2gIhOC1MdSp4CAY1TTRr4DfP08BAsAxt0lJIpgWXwVq8Pkbwp+fyWY6GhzFsdRdjcSMbnGG9GmN64jQqMcIv6Z55T6TtTvECIoP/JLc6etnhu6ke/fY4vTafUMLXUVXm9gKYZGt2cQlTXeJZ5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C057FEC;
	Tue, 16 Dec 2025 01:14:49 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E70C3F73B;
	Tue, 16 Dec 2025 01:14:54 -0800 (PST)
Date: Tue, 16 Dec 2025 09:14:52 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: vexpress-config: Update clock and
 regulator node names
Message-ID: <20251216-proud-centipede-of-reward-ad165b@sudeepholla>
References: <20251215212914.3323741-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215212914.3323741-1-robh@kernel.org>

On Mon, Dec 15, 2025 at 03:29:14PM -0600, Rob Herring (Arm) wrote:
> The clock and regulator node names were updated to use standard node names,
> but the binding wasn't updated.
> 

I assume you will be taking this via your tree itself.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

