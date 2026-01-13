Return-Path: <devicetree+bounces-254506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDDED189C9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 683BB3005BBB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA48035B12B;
	Tue, 13 Jan 2026 11:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGK1u/tJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A65341653;
	Tue, 13 Jan 2026 11:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768305563; cv=none; b=VZbRi5aaHsOTT8hBe2zadlj89QBgezXrRuKv+tX/w0jjGrWk61kdFnk8RSjAuonMkMGCR3NX01R3aVirhaZkOE7dbMSo+zP1Ms/9c3GoBmwvC+P/DOR1n1linweirI89Tt9BXhIMtcbaolj6vfpC8GVZyhyI6uOx7NRUka5CReY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768305563; c=relaxed/simple;
	bh=YlM4ZddPuo22HqM7jOnnsFg+qeLmfQXwQDMvYw3UNrg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ATngAvRPjJn4fLnFWtQgT/HqJEdpSaKzFZ1O71mjQNt1P1EsND+tBDRjm/3nrQ3qVs+hZja9nZ5mG9M1/Jqn2JDNgvEf2tGKFJfkED8OSn6QQA5Q7dGgJ4pER2/iU0oIe5vf8/7QsEmoaPVavBcfZOPE7IGxgcUyYBTSu6hj3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGK1u/tJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7E47C116C6;
	Tue, 13 Jan 2026 11:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768305563;
	bh=YlM4ZddPuo22HqM7jOnnsFg+qeLmfQXwQDMvYw3UNrg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BGK1u/tJJnDOWB4nEmE6341O8Y6aTKqu6jajKHbXlPUxCawYqxCmaJxkT+EiZHfnA
	 nhwA7W2OiHxbqkRSl9/9YtvWJfYqlTUtO2cWE+/qPE6F/KSp+5TeGIOiO0mu1INf3q
	 LjaEQV5N4cYmz04CW8FX9lvg0MyNcd8Ag3nuto1K0Az/6AR080GCs8bfmsuyeS8ERY
	 Na23+rO3kyS8DklmJq9XnocDjZTbozff0Fm5P1QxraqnpxmO0dBKQOBJS+5774WKvC
	 rpgl/3tBdCQkUmEd9G+2I0V+G/kcp2y/dBwp6FzgzPrE9J5TWImllo8m6ClSvQoWgi
	 +xp0tRGaqSU3Q==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260104173310.2685852-1-heiko@sntech.de>
References: <20260104173310.2685852-1-heiko@sntech.de>
Subject: Re: [PATCH 0/2] qnap-mcu: Add TS133 support
Message-Id: <176830556163.2818350.7195069440412413434.b4-ty@kernel.org>
Date: Tue, 13 Jan 2026 11:59:21 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Sun, 04 Jan 2026 18:33:08 +0100, Heiko Stuebner wrote:
> The completionist in me made me grab a TS133 1-bay variant for cheap.
> Not yet sure what to do with it, but at least once one understands the
> basic layout, adding support for more variants gets easy :-) .
> 
> So this small series adds support for 1-bay consumer variant of
> the QNAP NAS series based on Rockchip RK3566/RK3568 SoCs.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: mfd: qnap,ts433-mcu: Add qnap,ts133-mcu compatible
      commit: 7093a9f58cd759fcb9bf77a6a4c93a06c00f9c3c
[2/2] mfd: qnap-mcu: Add driver data for TS133 variant
      commit: 5380ce6d573059ae840e846a643a06521ef2cee3

--
Lee Jones [李琼斯]


