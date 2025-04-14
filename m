Return-Path: <devicetree+bounces-166524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F28A8791D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:41:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E045B16BF38
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 07:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9BB2594B4;
	Mon, 14 Apr 2025 07:38:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEE623717C
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 07:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744616289; cv=none; b=CLQJD0DIElA6nwSggZlf2UgRfyVcRFz2t+ksC67BD8SQtLmGwy5Y602EdDUsxw4Asay9qjQTUZJPenmH+TqVvUf+o4BKVdj99tB07juo8KzW2jlR9H/BsmNP/YOSuClasNTWlmAYbLSOTu95f9HA85eDSDKHmCqZjXUHEJ8j4QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744616289; c=relaxed/simple;
	bh=KBgcLZgZ04rQIVeeXInxaBqHYguuULvUqdyZoqZcCso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HC0HFM+YCYFv85jqe6vjKf7xHR+QZqdNtTrlDICJb5XqqZd480W4cbLPUS62Q8fzE+7leCGZ2nqDormbSOlulsBMJ2oxxXsV2LsyEh5XHt+4cnA6PMMhMhRMYClX44ljJGZbYw9f1x/bXMJ5WrsD2PzEcXpgl/OZ8/TTgAaj85k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4EOE-0003g2-OI; Mon, 14 Apr 2025 09:37:58 +0200
Message-ID: <c28945bc-85ff-4353-8215-8c9ff4d6c2bd@pengutronix.de>
Date: Mon, 14 Apr 2025 09:37:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] checkpatch: suppress MAINTAINERS warning for newly added
 device tree files
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Whitcroft <apw@canonical.com>,
 Joe Perches <joe@perches.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de
References: <20250113-b4-dts-mainainers-check-v1-1-794ed5749a94@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250113-b4-dts-mainainers-check-v1-1-794ed5749a94@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Dear device tree maintainers,

On 13.01.25 22:47, Ahmad Fatoum wrote:
> Linux ships with thousands of device trees and device tree maintainers
> have indicated that they don't want to see hundreds of maintainer entries
> added for them[1].
> 
> Yet, checkpatch.pl keeps warning about it, which is annoying:
> 
>   WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
> 
> Avoid this by making the warning conditional on the file not having a
> .dts or .dtsi extension.

Any thoughts on this patch?

Thanks,
Ahmad

> 
> Link: https://lore.kernel.org/all/e3b73baf-b36b-17c0-f414-bbf2dd746411@linaro.org/ [1]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/checkpatch.pl | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 7b28ad3317427a6bf9e27b77065aa3915cb13053..269cfa459162bbc00c2372cfcb0da709f9202a79 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -3401,7 +3401,7 @@ sub process {
>  		}
>  
>  # Check for added, moved or deleted files
> -		if (!$reported_maintainer_file && !$in_commit_log &&
> +		if (!$reported_maintainer_file && !$in_commit_log && $realfile !~ /\.(dts|dtsi)$/ &&
>  		    ($line =~ /^(?:new|deleted) file mode\s*\d+\s*$/ ||
>  		     $line =~ /^rename (?:from|to) [\w\/\.\-]+\s*$/ ||
>  		     ($line =~ /\{\s*([\w\/\.\-]*)\s*\=\>\s*([\w\/\.\-]*)\s*\}/ &&
> 
> ---
> base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
> change-id: 20250113-b4-dts-mainainers-check-fa069e9c63ee
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

