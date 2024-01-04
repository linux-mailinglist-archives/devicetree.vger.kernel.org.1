Return-Path: <devicetree+bounces-29617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3398F823E61
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 10:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B11AE282332
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 09:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092AF200CC;
	Thu,  4 Jan 2024 09:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="p53t3Y3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F3420303
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 09:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704359566;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4SRiCSFjjtpimRPvqsP147KRAIehZL0MOp1p8t19fT8=;
	b=p53t3Y3bE0DAIiVIVG4SJuncMPbf1wwPvq7EuNYUSY+V8nqF3JkXbR8D8fMUgQYKUVsLzd
	CB1aOeNdyQIgB/UoLfWmlKrqB7DFMkCwPd3LwoqHuEvNAaF59MkHXaxUkF+9m/VJ7eHCgN
	99Pbe2Eg6y5l7dFN9JIvj2xQ4shWiqOeUE4kCtfLNcrhBJrPMgYQMmXPJrcAAGBD6o+6rk
	1EubrezEJnNecQHG6QSXFeWL4ks8PU4XEXXZffB8cJE1dEKV/svORuWdhlmSLOv2ZxKzhI
	BL2vFBRH64a2MkQFjD2uvHHL7xqJsTRp6TOcykxJ9U/XiXa4PWvNxws3b5N/vA==
Date: Thu, 04 Jan 2024 10:12:46 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, Kyle Copperfield
 <kmcopper@danwin1210.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <2157455.yIU609i1g2@diego>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
 <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org> <2157455.yIU609i1g2@diego>
Message-ID: <7e1d4611079375f92f6ab7d446160200@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-01-04 10:07, Heiko Stübner wrote:
> Am Donnerstag, 4. Januar 2024, 09:55:35 CET schrieb Dragan Simic:
>> On 2024-01-04 09:51, Krzysztof Kozlowski wrote:
>> > On 04/01/2024 09:50, Dragan Simic wrote:
>> >> Hello,
>> >>
>> >> Just checking, is there something preventing this patch from becoming
>> >> accepted?  I'd appreciate if you'd provide some feedback and let me
>> >> know
>> >> if there's something in the patch that needs adjusting.
>> >
>> > Merge window? Is it a fix? If not, the cutoff is around rc5-rc7,
>> > depending on your SoC maintainer preferences.
>> 
>> Ah, I see, thanks for the clarification.  It isn't a bugfix, so I'll
>> send the patch again during the next merge window.
> 
> no need to resend.
> 
> The main thing holding the patch back was xmas ;-) .
> 
> But as Krzysztof wrote, the merge-window is upon us, so I'll pick this 
> up
> for 6.9 .

Awesome, thank you! :)  I'll move forward and prepare a few more similar 
patches for other Rockchip SoCs, after I recover from some nasty flu 
I've unfortunately contracted.

