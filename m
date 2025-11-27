Return-Path: <devicetree+bounces-242586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 797F0C8C6C1
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 01:26:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FBB34E2166
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 00:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACA91FF7C8;
	Thu, 27 Nov 2025 00:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="nO1lNCri"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF47202F7E;
	Thu, 27 Nov 2025 00:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764203199; cv=none; b=Ar8tGxn9KJQmTzctmcWapZQ0ynMmsP1cquatdRDMCyHKqCdi0eKjPbulo9Y76wFcyhJ3JoVS6rAj4mI8rKou3GiVoeqWai6EE753k2QyzwC4Mruj4Y+YJcWgvary/de2ID1q4JVy65aaOYiYm3+K6+TGi9XwR+9dZkNrcjhz/M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764203199; c=relaxed/simple;
	bh=S8PvOzguiFFvAk0ij9d33PvsxxxwFaOBafwwZijKeLA=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=iP+517jtkMrGVC2hwgpEPC0N2Ob0ZuR1FJGiMUyr7BTIIC8b5U3U91LNEuc1WUtGjf/KzLiVjpSyGOOa09ZiFCyKnQdX1Hb4HrCr9OexV0GcbaKHLAL+VJV9E4Zx3nJX2Y7/e0EiumpIhyzE5/5Ed3jkHyYOwBwQ+GqXffSXIn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=nO1lNCri; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1764203195;
	bh=Hb37+eqY9LuToN0Iyo4OSvoNajzOsts2KWtu7XI2Rvw=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=nO1lNCriYhjd+Th5Ug/C9mLvQyC9pE9be4c8sZStk8tFw6J5AJ2nW8zAaZhYTp8EA
	 X4iaNX88B0ND7ko441HSsgvZlwY1kt9Kllqyy0a0UXV4/WzE3FliAT0lTKcIi3FXU8
	 sBbkJAldQFp5XkMQAuccsrp99ASrNFWMZq59J896AGQHIrY8d4fP0XviGOkZPAxLXB
	 eLnlM1q7kTk5q5LcktGXbTt4po7ygqR0bAgxULD4qEv7FbGy1IhNuZqgPy6+bQXvd7
	 PrSa5bO3Gcu3cc6gO5A9vtVPcG7mlDKbdk0qn9gsktdz4stm3SneunoNVYVHdOooug
	 AV+9dcU0djuNA==
Received: from [127.0.1.1] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id D43646561D;
	Thu, 27 Nov 2025 08:26:34 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Fred Chen <fredchen.openbmc@gmail.com>
In-Reply-To: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
References: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
Subject: Re: [PATCH v1 0/2] Revise Meta Santabarbara devicetree
Message-Id: <176420319478.134548.6539551998232385591.b4-ty@codeconstruct.com.au>
Date: Thu, 27 Nov 2025 10:56:34 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Tue, 25 Nov 2025 21:59:29 +0800, Fred Chen wrote:
> Summary:
> Revise linux device tree entry related to Meta (Facebook) Santabarbara.
> - Add IO expander node on the switch board
> - Add SGPIO line names to control ASIC module power
> - Add IPMB node for OCP debug card
> Fred Chen (2):
>   ARM: dts: aspeed: santabarbara: Add swb IO expander and gpio line
>     names
>   ARM: dts: aspeed: santabarbara: Enable ipmb device for OCP debug card
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


