Return-Path: <devicetree+bounces-71838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F608D82CE
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 14:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51C2E1F21DB8
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 12:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D00B12C487;
	Mon,  3 Jun 2024 12:51:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E22839EA;
	Mon,  3 Jun 2024 12:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717419082; cv=none; b=pirTqgphTnSmV08ixj86nhHrqolKXaYbQY/rUXmZDIe7IuGXEmC09Jwnd262PXDRKjiRWG0NM9zEbZMFPnm1Yv5CY3bAVLLgXekdBXkVeNzS1/cVzWxf7N+oJNsYODVooxN8IGyoTfQQMlCgSm3O7fd2uY9Tx1LduIMhrP+S99I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717419082; c=relaxed/simple;
	bh=TlAVZ3zRGmLoisDz6SoULUOuNUe2YF4FM1TqMY33sLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pr90UfpR8/tMMVfrvFkFuISm8GnovOmTrVv7nZ3ozRy6t3wW6EnaWvzPUggJS+FP2URIC6NetR0QJrTJ5e0AbVdEvrmqsWCHpcKlD5zaqYjxIrOtbNsGoVTFT2FEnGt4Mqlz594xgYSJn4kqEvkNnJyZ90otcH1nUPMJt+wJ0mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 411821063;
	Mon,  3 Jun 2024 05:51:45 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 54DBC3F64C;
	Mon,  3 Jun 2024 05:51:19 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,juno-fpga-apb-regs: document FPGA syscon
Date: Mon,  3 Jun 2024 13:51:12 +0100
Message-ID: <171741897752.2195655.18414699008765504203.b4-ty@arm.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240518203903.119608-1-krzysztof.kozlowski@linaro.org>
References: <20240518203903.119608-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 18 May 2024 22:39:02 +0200, Krzysztof Kozlowski wrote:
> Add dedicated bindings for the FPGA syscon registers on ARM Juno board,
> to fully document the block and also fix dtbs_check warning:
>
>   juno.dtb: apbregs@10000: compatible: ['syscon', 'simple-mfd'] is too short

Applied to sudeep.holla/linux (for-next/vexpress/updates), thanks!

[1/2] dt-bindings: arm: arm,juno-fpga-apb-regs: document FPGA syscon
      https://git.kernel.org/sudeep.holla/c/3e295d8b4731
[2/2] arm64: dts: juno: add dedicated FPGA syscon compatible
      https://git.kernel.org/sudeep.holla/c/2e84e7ed7b02
--
Regards,
Sudeep


