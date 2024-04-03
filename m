Return-Path: <devicetree+bounces-56059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0970F8978F9
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 21:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 246871C24DCB
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 19:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C7F01552E0;
	Wed,  3 Apr 2024 19:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="S3RWZ5Lh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta254.mxroute.com (mail-108-mta254.mxroute.com [136.175.108.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821CA155308
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 19:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.254
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712172397; cv=none; b=MbC24LcJ0yOqUE0NRpzDIQoQYXm7xd9QmG4CDWFWNuo88JKBqduJU95m45XTE9FNvKEum5XQqN2Wso7hEtik1SBvi3UDRqrzCbvJtvf1dGUwgDLFDZibJ1PaM95iJIUhiEgHcDp3m0ZhdBfxaq2kk2IhPD7cGWyjtY5XVSaFf9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712172397; c=relaxed/simple;
	bh=76e1lI7VK1Y3AgcsRGYmgm3RKxk+3ajIlh4AMiSSYYw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AQPtj82OpqepE1FcBTVM1rMvU2clEHoApQQt6gl39smmP5gkTgn5OpRLenmas+Wd6YSRtZ1kvK7hugZ3pn/JKoq5AOIUKUiIVWpLtH/OLnbUKsd6AYg7l+tEROoCaIDYL+Pgw/GkmAUHs6ICEDSmxzCFP9+y13oQIAV6NXdWP8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=S3RWZ5Lh; arc=none smtp.client-ip=136.175.108.254
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta254.mxroute.com (ZoneMTA) with ESMTPSA id 18ea56d55940003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 03 Apr 2024 19:26:29 +0000
X-Zone-Loop: e6ed2a8e36641f43dab6eb8faf6fcd290e0999fdcb4f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=prk1k47e+GREA5iKHYPoCAjBnY3md7g8P9MzIfZYATE=; b=S3RWZ5LhYHLgJ+xuWVCEJmvHkf
	SxOqkj5rgwWtDMB9uguiR5x+S/2TfjJWZ7ZSKZ03ImlbBp31P+q7zoVlDo0pB1FK5UvftgqgZcWpD
	GVqLXEuXWr177zg411MIN7FdK4a94eg10BgzYMzuf85IfMZdvcl1wQi6JDfVVcu2MjheC506XE3n8
	W+rrAQkNAD42UxyzAW9Jj5SRaX6zprTrM4LpDzCLGmmYrx/Z2uUIcA2d0xd//XYYNMqf6NBwQr/BW
	0AL+090ts1F+J9BUDsTleVi4PYwVkykJrkjbAF7aCKie0H7tnAOS3DC19eC4LfhWCW4yCgb3VDnw3
	vj/vaxJQ==;
Message-ID: <c5c99f06-cf75-479b-ab1c-a28d1cd7c4e0@luigi311.com>
Date: Wed, 3 Apr 2024 13:26:25 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 22/25] dt-bindings: media: imx258: Add binding for
 powerdown-gpio
To: Pavel Machek <pavel@ucw.cz>
Cc: linux-media@vger.kernel.org, dave.stevenson@raspberrypi.com,
 jacopo.mondi@ideasonboard.com, mchehab@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 sakari.ailus@linux.intel.com, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>
References: <20240403150355.189229-1-git@luigi311.com>
 <20240403150355.189229-23-git@luigi311.com> <Zg2kn5/5T9ukP4nd@duo.ucw.cz>
Content-Language: en-US
From: Luigi311 <git@luigi311.com>
In-Reply-To: <Zg2kn5/5T9ukP4nd@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: git@luigi311.com

On 4/3/24 12:49, Pavel Machek wrote:
> Hi!
> 
>> From: Luis Garcia <git@luigi311.com>
>>
>> Add powerdown-gpio binding as it is required for some boards
> 
> "." at end of sentence.
> 
>> Signed-off-by: Ondrej Jirman <megi@xff.cz>
>> Signed-off-by: Luis Garcia <git@luigi311.com>
> 
> If the patch is from Ondrej, he should be in From:, I believe.
> 
> Best regards,
> 							Pavel

Ohh your right, this was broken out from another patch and didn't
set it to be his actual commit same with the other ones. They
were based on his downstream changes and just modified to match
up with what Dave had set the values too. I'll set it to him
for the next revision. Thanks!

