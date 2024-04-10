Return-Path: <devicetree+bounces-57734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D245889E9AA
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CBBA283056
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 05:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAA7E125AB;
	Wed, 10 Apr 2024 05:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="dRCvWeMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04167168CC
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712726672; cv=none; b=Sr3ivYm7FkjRvq+5oHsF0Q1dK2Edw2wKhpmCebFnyNnnTwDm3v7e+guZ+icGFmIyH0gQdsAgj8/LLlIBrkYQCjmaaOJdvzY4VwQHGIckm+6IhCsphS8ly64NQVxohyvi74LuK3VDWIXQObV3RfGG1njm5gKMZ7ya9IeTpq8mInI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712726672; c=relaxed/simple;
	bh=Ti1EN4nFfDJYPH8JDUDuaQJ0xwR5fFhuu2GkUgW2zQw=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=TY6u0NgWcSeA7+YVPO/t4Rj0M8zk8NLSGhhj7xcQgab9BJnPq0lgKLHi39I/UyYySkqHfuRC0bjsI+JOd2I9xoXeiGOP9eLhU+ctI7E2CZtJe8opplR/TLk7b1HCxD8lw/hhYYKB68KvE1mP/yB6edaa13lVjz9aMf3Lz5vJYk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=dRCvWeMQ; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712726667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GRp2XHxjjL0oPdAnwj+GE/FeGz7oZPrX9tVo9HNUQug=;
	b=dRCvWeMQY6aMFslHJzQe1GCqWfIWV8b2DaYBSCtwbeS7i46TIf6kYZ+PSwjRFeVAtDJ7WG
	+pMZ46ViAI2xUWzCyQ2/rZQ5a6T6l8iKp6+vk1v43QU0oGHdH2m57AvgOlAurhMrRJoCqq
	8Mf24+2cSghQGkCpSrgCZQlZWevGTpCqPF1W7N/i+F3W2rXYzatSJdTAprT8VQh+LSTr4b
	+zIsWXDA6BHMdf8wV6UO43Gaio2qZ5WWhgG3a/3KIDzfXv37GWusu0eB2v7qTeb63k8fhW
	QjoIj0KqqWYr5KUGTDSX4QTByEL8wAMxmsiL/h+O/INRNVYpINmrd0u+7knLTQ==
Date: Wed, 10 Apr 2024 07:24:27 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Designate the system power
 controller on QuartzPro64
In-Reply-To: <171272604789.1867483.1717225065687252209.b4-ty@sntech.de>
References: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
 <171272604789.1867483.1717225065687252209.b4-ty@sntech.de>
Message-ID: <231f154d66369b5c204684ee9f47b3ce@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-04-10 07:15, Heiko Stuebner wrote:
> On Sun, 7 Apr 2024 19:56:24 +0200, Dragan Simic wrote:
>> Designate the primary RK806 PMIC on the Pine64 QuartzPro64 as the 
>> system
>> power controller, so the board shuts down properly on poweroff(8).
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Designate the system power controller on 
> QuartzPro64
>       commit: c2b6d3a2bbf6352f7cddff2abe81dc4af4887672
> 
> Added a Fixes-tag

Great, thanks!


