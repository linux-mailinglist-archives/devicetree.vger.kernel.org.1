Return-Path: <devicetree+bounces-250964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D9BCED409
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 18:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E45CC3002289
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 17:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF8A25DB12;
	Thu,  1 Jan 2026 17:52:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F4223ABA0;
	Thu,  1 Jan 2026 17:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767289955; cv=none; b=sKPLejH3T0ZfS5nhuSRqSMJhgZi1iOx65mPb02aBIteUcd1aUU8qMmHw8lBjXip99+LDJ/kRSQGAXv2fumzUQJnQuA8RZhs3lR8NfrfEjzPPNnb8vHI5GpYeIpsXqdeNl1mlOQ9cl5ZhDiIW6+Ed9xSMSMWpF9Hg3MWgvNeLg1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767289955; c=relaxed/simple;
	bh=uwkyZd/akYUEUjTYWI6dwcjzUBfNZc1ZFXsRKqX6AZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N6jCMdRcPiZy+kIHFX6Xlxzl0/22eVo6Sa5pQR2jE7eMTAULwfgi61VHpKUvBQ8Pm30m3RjZuTGlnzXv9HEyiTQTRt+HZM7EawiXdIKQ1pZaPJZ4c4a/+GrqdzF6ZeAxez1bKDOLf+HjWoKAFnEqXxKFS+afaPBRUIDJiLb6BjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DCA5497;
	Thu,  1 Jan 2026 09:52:25 -0800 (PST)
Received: from usa.arm.com (e133711.arm.com [10.1.197.51])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 284543F63F;
	Thu,  1 Jan 2026 09:52:30 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: arm: Use hyphen in node names
Date: Thu,  1 Jan 2026 17:52:27 +0000
Message-ID: <176728989347.117137.9756787781927906118.b4-ty@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 23 Dec 2025 16:24:58 +0100, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/2] arm64: dts: arm: Use hyphen in node names
      https://git.kernel.org/sudeep.holla/c/f0d0f087227c

--
Regards,
Sudeep


