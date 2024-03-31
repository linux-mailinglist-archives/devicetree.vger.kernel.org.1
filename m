Return-Path: <devicetree+bounces-54885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8164D893134
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 12:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29C5D1F21D43
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 10:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6F278283;
	Sun, 31 Mar 2024 10:26:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE63EEC0;
	Sun, 31 Mar 2024 10:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711880776; cv=none; b=NlbATN29fKgUZJ1RFuiiKuW7srwXyVHqlssiYiJSzcLsL9rVn5NJvBYcTc4ASjLlGJ1+C0zlrG+F1F4niptvPQAedO6qxgAa3CYtSOHv8Jbf8e0MdPLISLSj9VweqGGo4Rd9qibNFKh7ms+qgbhQEmExHGVvtYHSz9AkAhY45YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711880776; c=relaxed/simple;
	bh=5H5Rkbny2lXDXd+mZjvIiVRcIX90EMvw9Uwo1ZW1gnQ=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pj1IVq5wIloxtyQll660O5pkyoGfgrTWXE+uaXI/73iKUkSRjz8OlwRNqz/LW7wmLqAFMEAUcUuIlIIFkP0zbL/Q3D192Pd/J1tUH0i0NVtRD7RlFtSipFv+QeOGqlimcSULxC/bXe6w4pyjlgkcw6USbsYIcpc5GALeCk+opbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A99D9C433A6;
	Sun, 31 Mar 2024 10:26:13 +0000 (UTC)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: sprd: minor whitespace cleanup
Date: Sun, 31 Mar 2024 12:26:04 +0200
Message-Id: <171188072142.23696.1594882936300797845.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240208105137.128601-1-krzysztof.kozlowski@linaro.org>
References: <20240208105137.128601-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Feb 2024 11:51:37 +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before '{'
> character.
> 
> 

This is waiting on the lists for almost two months, so I just picked it up. Let
me know if anyone prefers to take it instead.

Applied, thanks!

[1/1] arm64: dts: sprd: minor whitespace cleanup
      https://git.kernel.org/krzk/linux-dt/c/6ff7ac1c4c93b686ebc132d46975d9e8608befb1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

