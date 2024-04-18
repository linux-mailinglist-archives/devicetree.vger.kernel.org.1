Return-Path: <devicetree+bounces-60485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B61748A96F5
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67C691F2323B
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BAEC15B559;
	Thu, 18 Apr 2024 10:04:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424BF15B544
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 10:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713434665; cv=none; b=iBSICENJaEMFd3yhftDqTUNfAtuW3ml8tTnZDa8ecqf8kp6gS8SOwtvEbmRvRcAAgOnxePkahrKPDCM1CDsGNFWmiKUPq0fGIYGjPsIVRJeM2ZwwJ66lPLU1+b1/66hGo+dPnPeVa7SRt8HRA80wG1Wn7G7fw+KfiqG5TEq+Xr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713434665; c=relaxed/simple;
	bh=b6lJQFNCjjDA0yhwUv4MRwEUg7K70HKbhEBMnS+OHew=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=htKs6uyxx2yk5tT5rfMCA59FQgXE4Vk2kenSOvvNj5MNLhHxwOve8lIpYwjEHwuTws7bC7+cPTAaMn9tFLrChHIPKzWE0SvTDWR9J/tpvsumKjq42cRt9kb0FrWXhp4W80qyy7X61DatFnGJ2i+MCJhPq0wybNj5xdXtjXOlRzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59C19339;
	Thu, 18 Apr 2024 03:04:50 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 73C563F64C;
	Thu, 18 Apr 2024 03:04:21 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: firmware: arm,scmi: Update examples for protocol@13
Date: Thu, 18 Apr 2024 11:04:16 +0100
Message-ID: <171343460224.3089128.167397556240377927.b4-ty@arm.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240403111106.1110940-1-ulf.hansson@linaro.org>
References: <20240403111106.1110940-1-ulf.hansson@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 03 Apr 2024 13:11:06 +0200, Ulf Hansson wrote:
> Recently we extended the binding for protocol@13 to allow it to be modelled
> as a generic performance domain. In a way to promote using the new binding,
> let's update the examples.
>

Applied to sudeep.holla/linux (for-next/scmi/updates), thanks!

[1/1] dt-bindings: firmware: arm,scmi: Update examples for protocol@13
      https://git.kernel.org/sudeep.holla/c/4625810361d6
--
Regards,
Sudeep


