Return-Path: <devicetree+bounces-29608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BAC823DF5
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 09:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 212ED1F24B10
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 08:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B241E506;
	Thu,  4 Jan 2024 08:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="NMc4BmLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98481EA90
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 08:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704358536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pbNALQpXNCDpGEp9DXfwz7sC6bAlhKRk9rvFEXGRAhA=;
	b=NMc4BmLiSHOfYytOUBp+Yj92EzTSfGqkiB5eJORd8m14T0IOlqtCU3/qsEcOgz7LfvKD1W
	Mnwex3uDFaZ4do0I30D+FA715QAjNv7oIYBktlFArv2W6gsaQtigf6XLg2GeGzURi4WDyG
	A+isAVLqz7G+nfEgT2/UHuh2ZyUs7VyhVIVkYZyfI+jVluv0d9AIVySnrvzwKPBpMRFTT8
	fRxfzeqx2XVPq0G1FKBxy+OuY/fv12GhDPgbH+oZPfXsWV1c00lVSpU5/3wxb0NAETPWYG
	ANTJSUQwKhldoOMFQjjHOdRGYdmbz3AudIEjC5lqBmMFMxcI2Gw5FiWuaEx0qQ==
Date: Thu, 04 Jan 2024 09:55:35 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Kyle Copperfield <kmcopper@danwin1210.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <665196c24beafec415e4a3123cc625c8@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
Message-ID: <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-01-04 09:51, Krzysztof Kozlowski wrote:
> On 04/01/2024 09:50, Dragan Simic wrote:
>> Hello,
>> 
>> Just checking, is there something preventing this patch from becoming
>> accepted?  I'd appreciate if you'd provide some feedback and let me 
>> know
>> if there's something in the patch that needs adjusting.
> 
> Merge window? Is it a fix? If not, the cutoff is around rc5-rc7,
> depending on your SoC maintainer preferences.

Ah, I see, thanks for the clarification.  It isn't a bugfix, so I'll 
send the patch again during the next merge window.

