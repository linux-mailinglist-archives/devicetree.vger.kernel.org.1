Return-Path: <devicetree+bounces-109997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13144998CF7
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 18:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10FE3B2FDBA
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 15:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240D51CCEE8;
	Thu, 10 Oct 2024 15:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="WG3dY42F"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772D01CC89F
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728574496; cv=none; b=FBbc4hFAj62U0SRGmQEZJpnqMFce4V52VRkVk1py1jrMva0KreqHrIrP2bE1wPYaykZ9yvcGPxAaCOZEFDycg1IslEZ89ZlbLs73oZF1VwlyvHv1mtYcMUOD1G63Yjh/mi0tmKsBOIvG+2pUSfxxkVJa6BE9KztTwybsBdUc7xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728574496; c=relaxed/simple;
	bh=IHfGFVFpzeyoiNdlI+PDUKGy8fv4i/qhh73fARwIQwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=igPbe0CmZiUcB97CrY/U4V82NShgoJFo9cmE6hkoljb+A1bGluIdwvSKZYIvEFkCp6OQ9x+Rv0l4l8u1f3itEp9jt760+gsjb6M1KNalPjcZIO/BI/RkawiAwvYo3ZRQez1PpzCwrnAiGYbfRro0YbiX/osXWvSv9IFltmrbJ7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=WG3dY42F; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id ylCWsEBdwumtXyvBfsu8ZL; Thu, 10 Oct 2024 15:34:47 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id yvBbsYJW0ky5UyvBdsnIl9; Thu, 10 Oct 2024 15:34:46 +0000
X-Authority-Analysis: v=2.4 cv=Cum5cG4D c=1 sm=1 tr=0 ts=6707f416
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=VwQbUJbxAAAA:8 a=DPoJn4Cox0Z2GlYLnjEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7ZILJKIEXwoz7iU/aC8w4Ldjs73VMDFGeUrEw/ggIFw=; b=WG3dY42FXgb4GhOYql7yfdHP+W
	tPu1de5GiommDcEFZCPNZu2aG4O+raWfJc5Bq+SuCzlDW0QCFbupMvGWBRrkO4nbDdVvpJXoJB3s9
	ismHonGBfGZpubIDz5BPUKNacB8GFD1ZB9BvMpQ3oUeAavMykAGqXjmNrdyg62Zkv41G0J6H0ss8C
	LlgLp/T6M0AgBjw+xCpoeuNO6kI6L8Zd5nJFKJ5gC+zuSbiR7759LdM7JjA4oCBxsvEqVQYMUpljg
	d98CKSHj+r9ZpmHzwQUn7gkzLMJsSHFGEeE+RZdBxqwdEyqL2iFmbHyZv2uiy+8gQ0pLtZ3sO4BjW
	OvkqgiHA==;
Received: from [122.165.245.213] (port=36630 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1syvBa-000Y39-0Z;
	Thu, 10 Oct 2024 21:04:42 +0530
Message-ID: <6dd5f092-1711-4fd5-baac-f66edf74842d@linumiz.com>
Date: Thu, 10 Oct 2024 21:04:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/1] Add RV1126 compatible watchdog string
To: Guenter Roeck <linux@roeck-us.net>, wim@linux-watchdog.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241010061408.1351865-1-karthikeyan@linumiz.com>
 <20141056-15a3-4e4b-9100-d1a570f39e83@roeck-us.net>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <20141056-15a3-4e4b-9100-d1a570f39e83@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1syvBa-000Y39-0Z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:36630
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 2
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfDWk8fnvUNwCMT/VtfzwVOLjAbXdu7Yi3L6I/i0KA+rcKJ3fc4i813mZ7nyg4N1QWek99jhKvKxRbFXReE0LITMYGe+xytILzvwoYv//DH2zwLjdzIpa
 phddLY3PEokufwLmwHuQbhMHdgEm5gKjaY4FS29k92PCkiASJN7icH1K8rbEFx1HOy1GWrPaATsY48UPXnwEj4MKrHM1LlmK3ng=



On 10/10/24 19:44, Guenter Roeck wrote:
> On 10/9/24 23:14, Karthikeyan Krishnasamy wrote:
>> This patch is introduces a watchdog compatible string for rockchip's
>> RV1126. I have already send this patch[1] in the series[2] but somehow
>> missed watchdog maintainers and list. So resending this patch alone
>> again from the series[2].
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>> ---
>>
>> - Link to patch: [1]. 
>> https://lore.kernel.org/all/20240912142451.2952633-2-karthikeyan@linumiz.com
>> - Link to series: [2]. 
>> https://lore.kernel.org/all/20240912142451.2952633-1-karthikeyan@linumiz.com
>>
>> Karthikeyan Krishnasamy (1):
>>    dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt string
>>
>>   Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
> 
> I am curious: More and more people send introduction patches for individual
> patches. I don't see any value in it, the intro patch is not available
> in patchwork, and thus the context is missing when trying to review the
> patch from there. This makes reviews much more difficult if one doesn't
> reply directly to the patch. It doesn't make any sense to me, yet people
> do it more and more.
> 
> Where is it suggested to send introduction patches for single-patch series,
> and what is the rationale ?
> 
> Thanks,
> Guenter
> 

Hi,

I had missed watchdog maintainers in previous patch series, and received 
a tag for this patch from the one of the maintainer. So i thought, 
mention this make sense and added this info in introduction patch. That 
is the reason. Looks like i made a mistake.

Best Regards,
Karthikeyan

