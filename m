Return-Path: <devicetree+bounces-100056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BEE96C04F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B88E1C251A0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FEB1DEFFD;
	Wed,  4 Sep 2024 14:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="TTG5uyMG"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9F81DEFF1
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 14:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725459829; cv=none; b=dJ9lGRxrfu8ydMoUovI1cH/HmMS1/IfsNjnGMZs6E2/ChmM2Ej3FEBTICrrmxKWNArnI/YqvwC+FhPLYPYZp8zgDTC6SrrQmJL0MdnDYP1ZgGzRJ9ss+uc3MsCc8ZedPhpQXq5AUkxnn5W0AFJWWA4+OJS+sJR41+aGU2awnVnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725459829; c=relaxed/simple;
	bh=jDxosuXrzcBbOxaPlz08zYKBFslvCTkiK84hKv76KGY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e1pOO7tzkr/NL+oCprF3bxPGmswUV9CgsQqGkAkJ3WrdngVF9K4wt2oFro2B9Mjr44zXUp36pM0uLCgyAha0j6UR8ZpnCXu7QQQbzpKzxJRu8JzxgoRuXHkC9q1cokaH25IF0uWOvd2kU5YEaTe1+sD0e87abK9IKMtJXzd6dnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=TTG5uyMG; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id laTasbdyTumtXlqvDsSI3P; Wed, 04 Sep 2024 14:23:47 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lqvAsj35XaPL1lqvBsdPnr; Wed, 04 Sep 2024 14:23:46 +0000
X-Authority-Analysis: v=2.4 cv=OoFJyT/t c=1 sm=1 tr=0 ts=66d86d72
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=VwQbUJbxAAAA:8
 a=CDJ--hqRtXxyQu1MzM8A:9 a=QEXdDO2ut3YA:10 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=n9N1T1b3GYjcRtNdTA0eRt+BVdBxLA/iS8Tvd/9BiNg=; b=TTG5uyMGqpvP6hbpopOPtqgQYs
	cnPjiMnM6MOsyRTDhg1Z6dGFL4C29Kq4yCHyz1grE8dHjgmcLKkPCZ7/RBPiarQhT9rwseT/l0c4g
	Kj8zLuoyGys2GZIaRgCyE0FQnBcy3ufuB3vhuroQoUUA7HYe+v704KDRCedK3+l8i3M+BQddExODZ
	tNqMs6s2/8JQWhVxFDAa0ddfLsZG4lbeY54qBne0+PPeki4fmdOqSPMZbaGr9dai+L9no7UuLijDt
	EbhAEjiQDNi7dLcVrtuD68bENOpjc5SXgCR9QUzr0hiwrJSd8EuMSpJMtgqDBbNdErzBWFK41aFj6
	QH/0ORRQ==;
Received: from [122.165.245.213] (port=53602 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slqv9-003mnG-0R;
	Wed, 04 Sep 2024 19:53:43 +0530
Message-ID: <5023c87c-993f-4264-b950-5a47edd5e9d0@linumiz.com>
Date: Wed, 4 Sep 2024 19:53:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2 0/8] Add support Relfor Saib board which is
 based on Rockchip RV1109 SoC
To: Heiko Stuebner <heiko@sntech.de>, conor+dt@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <172544170317.2587256.1675013741817340842.b4-ty@sntech.de>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <172544170317.2587256.1675013741817340842.b4-ty@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slqv9-003mnG-0R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:53602
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 25
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfA+/cD2/COBQ9v1I1NpG3pmynrXN53DQVK3NVyi5x67b455Tcv3reN/bvLKEkPurGFRm2Xdzj5JJD6v+GeGyl9K9U/IPm1TLGkcWWdWB74QjNwUdr9sS
 8uSGa4EPKj99yvbTbvot11Iw5EcgNIH/JRvAzRhMDIzCUAMSIj4HNgkcRkeIfzki4lg1maZnNc4VKgkDavLtxiee+MJeKf/jL0w=



On 9/4/24 14:54, Heiko Stuebner wrote:
> On Tue, 3 Sep 2024 16:22:37 +0530, Karthikeyan Krishnasamy wrote:
>> Rockchip RV1109 is compatible with Rockchip RV1126.
>> In this series, adding required missing peripheral in
>> RV1126 and its pin mux.
>>
>> Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
>> Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
>> ir transmitter and receiver, etc
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/8] ARM: dts: rockchip: Add i2c3 node for RV1126
>        commit: 15db79e0bdcb883f0d7a678fe8701a270467a339
> [2/8] ARM: dts: rockchip: Add i2s0 node for RV1126
>        commit: 212cda94739b1644e38ef4f588bb580c12feb9a7
> [3/8] ARM: dts: rockchip: Add pwm node for RV1126
>        commit: 898eb75f443eaf6cb46facf52fc337fbdbdca079
> 
> 
> This means I applied a part of your series and you don't need to
> resubmit the patches mentioned above in a next submission.
> 
> 
> I re-sorted some properties and nodes according the alphabetical
> sorting we use. Please see
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst
> 
> for the details.
> 
> 
> Best regards,

Thanks, i will updated the other patches in next version.

Best Regards,
Karthikeyan

