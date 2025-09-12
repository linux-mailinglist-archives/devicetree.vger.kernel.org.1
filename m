Return-Path: <devicetree+bounces-216308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01869B54542
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B66FF585C03
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07A9F2D3ED2;
	Fri, 12 Sep 2025 08:26:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295452D4B6F
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665559; cv=none; b=Mwz4Cvi7zIsGMKNxd6gwFfzqYKIm35H7fECOGk+X1npEHR9QC7ow1O3EUg2anWn85wiBB5WxIL9VaDqa9fkNEj6ekjtw/W58N539VZFz4UXBE/yHvD80WeE/FM5e++vklfTq131m1IFzpnypaN1P/jULKWRD7qfeC88O8WSa4dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665559; c=relaxed/simple;
	bh=jHlaG8Rvrr89c3/jwlzVU9wBaMZ6AxQm70VM3ThbnXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aNhmbbHoLe1txHERi8NGeK6R4vWN44wQDLu23Uza5d3zbyOfpdAEFUbjbML0cLCeJGMMI7mXF13f8RyfUAUhI5qJAd2jiOMI+Zjzw93113pbDyYrERogKkDupR8BozjmC3/2BJN6JOjXRpAtOQ/Cju7PjBFREldO+M9uGHDpVJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpgz1t1757665514te2290d7d
X-QQ-Originating-IP: Oy1QpcqzeLXgls4v6iC4lrcLJlW/95LBchnsiKAzef0=
Received: from [127.0.0.1] ( [116.234.26.9])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 12 Sep 2025 16:25:12 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1419117904616151380
Message-ID: <A671BED7100C2766+849829a3-7da0-4d9d-817e-f8ce78daa56b@radxa.com>
Date: Fri, 12 Sep 2025 16:25:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250912-radxa-dragon-q6a-v1-0-8ccdbf9cd19b@radxa.com>
 <1ae48740-1788-4304-be86-455251a02ce3@kernel.org>
From: Xilin Wu <sophon@radxa.com>
Content-Language: en-US
In-Reply-To: <1ae48740-1788-4304-be86-455251a02ce3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N2uUxVy6vITVyRMIsDAQZZ4UjkpqI4fpPgJ1eOqMsaMPSW4VOuGCFo2H
	60/lHiflp2KpA36C5JJc1hUbHtKEvQKwMpo0jzL+0fmpTNmGfusNa8JgLhvg8JeBOzsN2u1
	KDqW+vgHeb3O/r7TtEEDjJcLYq1Y88Rk11yaj8z1uA/LhE5Pz5DMjEPCYv2lye7qnccjtbF
	/DxAzcsRgBCofzf24pURbuKffpgio3Y/Yn2ZvgC2vU/Hn23IwYOwLDax64L2Qc4Zd7joNbz
	tuyuZsLsfnluL0OW6pezG286Su5byGD7WnTwu3q3Je1oflQBn900uNw116tcciw0Q88Zq0u
	GHFVSuHaiH9kvxb/vKnCw0gVM90B9oyN+WYuxR/BOrnk3Gv6KLQFhuNZh7zZ9hEtBbqc/YR
	fZ0fi8JFxfyMv2PHPZD8hr6JZZPznc7XLgrtAUmk5uTIJRdK2oVeIntKGql3vuP9xG87Gur
	LTRylti5hYzq244XDD0XSIT/HlwJPm9K1/vSZO0pylOkWlREBMu9pivwc401d05BWyiormG
	goQPslaPD96A7XwRr2NSYnH3SdYvjj5ATrOmIG6MWOhUTJESkTTn6ZWwnLwlalmcef9pjQ8
	md4bTCE9v03I1dnXwfnIcUVJ8dsHJv7eOShF3lan5vHoZtA3wmKxLzrOQ4t630Tsnebyp/z
	eSU1BBXgtigGYYwjLgpyC2hGNasw5ebrvJuTed5Ec7pW2Tx+bbmV5AcXAf4DULyU5/wQkVP
	HwV5b9lgob2nR7PDQcXPsGhPmV2qWFQoqGOhjQUp6fQ6Fs/94oTi3BMi5y0VVclbG1NmhB0
	6kV9dR+HD0dUMoD5Q6VCokR6e2oelIld8cy5kCdHJerQlVGdy1wzrtbKlZwxl1NT+22yVAL
	eDSl4OeSgy6p3fAzILvDPKLkPJBECGPG90IHUKDGEZ4KH2IBv1uwACVpv4CF4cVRW47tKRC
	0MOr8aBngw06StES/4STydKMwj2/2jJElEQzZO1nwzYy45W+R2lXUJKWttQ3aXr5F1/O4yK
	XrwlSF7FAXlr6Yo4N5OhPopBCO3m/skpgl2mmw+w==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

On 2025/9/12 16:12:54, Krzysztof Kozlowski wrote:
> On 12/09/2025 10:03, Xilin Wu wrote:
>> base-commit: 51095600e8c19d53729a7fbd273abc4435a25e9b
>> change-id: 20250912-radxa-dragon-q6a-eedcdeaf3e66
>> prerequisite-message-id: <20250902164900.21685-1-quic_rdwivedi@quicinc.com>
>> prerequisite-patch-id: 257564b609217fda19c9f3424fcd9f6e2ce3ef3c
>> prerequisite-patch-id: a8f21781f3bff140260100b74041752000c06000
>> prerequisite-patch-id: b46127e2433ede17cc5e1a012f58041c6ef97b13
>> prerequisite-patch-id: e8978c5a30373c3ff312b2c8720f586c389f18f8
>> prerequisite-message-id: <20250911043256.3523057-1-viken.dadhaniya@oss.qualcomm.com>
>> prerequisite-patch-id: c7a057030b78afbbb231280de3765294c006c6f8
>> prerequisite-patch-id: 56011305aa35e4c64fc7d63950764807cb81cc4d
>> prerequisite-patch-id: c3d3b313ac6abe4ec10fd820b6a9bbc63fdbdb82
>> prerequisite-patch-id: 63ee94d0ccd40f60a98b0004d627ad2e7b440d25
>> prerequisite-patch-id: 392e8f1902571e5035d5af72e40dc474b5f1b274
>> prerequisite-patch-id: e38fba722bdabc02ba09d2dc51df7010dbe28168
>> prerequisite-patch-id: a3ca5dba8def5769ffb4b95df2963da60a736f96
>> prerequisite-patch-id: 4c0fe8d677d73aaf1b5b842e072246d84729d1c4
> So the RFC is because it cannot be yet merged? Please always add such
> note in the cover letter.
> 
> Also, are you sure these are real dependencies? Like REALLY real
> dependencies?

Well, I think these are indeed dependencies. The dtb does build without 
them, but dtbs_check will fail. The board will also malfunction or 
simple crash on boot without the DT and driver changes.

> 
> Best regards,
> Krzysztof
> 


-- 
Best regards,
Xilin Wu <sophon@radxa.com>

