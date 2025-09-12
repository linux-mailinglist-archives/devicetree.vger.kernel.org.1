Return-Path: <devicetree+bounces-216339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1ABB5467C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:06:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78596B604B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 459A0277CB3;
	Fri, 12 Sep 2025 09:05:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255092773F4
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757667935; cv=none; b=YUdo5aRi8AkMCvShPnqOiK5i0KrRHLfEjZ/n2PQ7c4CXn94z3tiQbfEHSGb71fTifsDl6lDDRYMZMB1zmCZTzyBxqa2deCh8dYo87W1CuINCSbuh0TUvyryE61XDhJHyIAQVKKlCX5zPTm94iPLf9CNKMfs7INVZDtP8fqysI1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757667935; c=relaxed/simple;
	bh=Xj0LY0AHcfqQNpYxaKnjH2glS7ZpclGWn4dMCSpdtpE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DalwYOxSzE6zh/AQRxYvirudXRZPWmE8oud1nZcjCEIHsb8glgiqjeDOSvYUk6jbG7Bfsf3a2ds1bYPcjVyFo46Wl+piXGC5Ke2JA9pKdvjIRtJRd7WPIld1ONsawtUQvtXoISzOO/yZKHSBVwODnkyP/sfpm7S1VcMpwN+dG2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: esmtpgz15t1757667881t741699d1
X-QQ-Originating-IP: XMWm7zre2Z3uQ9bGSr8UGT+VYv0IiSBoScGGlTdcPwc=
Received: from [127.0.0.1] ( [116.234.26.9])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 12 Sep 2025 17:04:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2419950997906594026
Message-ID: <103424579111FE76+93c3daf1-4bce-440b-9048-74edb833031e@radxa.com>
Date: Fri, 12 Sep 2025 17:04:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250912-radxa-dragon-q6a-v1-0-8ccdbf9cd19b@radxa.com>
 <56b5bacc-7214-41aa-b969-4f622afcd9f9@oss.qualcomm.com>
From: Xilin Wu <sophon@radxa.com>
Content-Language: en-US
In-Reply-To: <56b5bacc-7214-41aa-b969-4f622afcd9f9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N/3GdEViNKS4HuZJjay5+hSgX7mOswuYaUD6JlUNla7v/DhPe4hPk4Zj
	S8E3kNf6u35+7MeiC/EMem0Xnp682g4w1P3UnK0C2CbKRpui2aLZDjjDeCIHPZko2cLdjQF
	NxGgaVqb8bivJmeszoR02kn4HpgDBvjyKmdrycC1zQI9+Op7UMPxX0ioKaows+btX0F/MMW
	lgbClf3wOW3Nu9YuNj0zIqN0I904Tn6Uc7EnYfV2R2D+UYuOVCMcqPYeZhceeT3yzjsYD3b
	QsmTf0IqUC9g3nAao5W4oZgGMv9KzF5CFH7mIWaBXyrDiEFGItwDe9K2sm/bPzMyANSFXwm
	u9HD4IPD/cD3lhU4Vf95nf5hw++eozvlOFtebYD19XKPqPEaj5uoDW/P+WSjS29TWj3/aI1
	9h5KVtdmER19ctlPvzqwP7llQ82AjSa5791EP5tdFBXo6bHjs/tr6JAESK/9SLI96167rrg
	lDSwNiJx8l4yRYswVeqaScDrbmrKoFbSOgJjUJN5IKoJbSs2Rrs22GVguFd9NZ2bk7P4yfY
	g5im9WplBcmaq+xUf4JDkgT6g5Uv7IUn48aXDdv5cTgbrvrYRFrSKE2IN/kMoWACgQYPzEx
	vXl6Cta/mMu+XPC+mKXusI1NBH5YxmCao6Nyn29GjVuAqZL9ZTXQadQbqlFWHZ2fGPaRYlr
	g4aTyCt5Mic5ufHyEmkbaMXlSE/48PWYRhEStIfkCMF1f+Ht0bl85lgNJq86tq5XUn3C6T9
	fTGVnv5Umw8Z/TLh1qc1lh1KdP2BMvFOjnEWCIk95LmLBMvhBEID1xgiaYgbYBV3nTn/isd
	GmaseDmE8Mx2xVsFMNXGYgs8fz3CWvXM5zNw+koK4Alj5cqPOtAfr8qlrKM+8ajmhCsdM9W
	7O22Mq86nxnSNeD7fHDCriMW1ZINM8SDD09R0KYZS125nowItUMXWcEB4ldYD2ENAf/GJnw
	eB7kwOGeFCsOKXCyovrkUL2QqxW4yf3QVTZplrw6PV/NQaHNm3uXcpw9l627LfhNkkUH+8K
	FImU9gx+7815nTao4vZIsEySV911kj4N6mVD73QAKed7sdXRl+DVZ4phCTW5o=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

On 2025/9/12 16:56:04, Konrad Dybcio wrote:
> On 9/12/25 10:03 AM, Xilin Wu wrote:
>> Radxa Dragon Q6A (https://docs.radxa.com/en/dragon/q6a) is a single board
>> computer, based on the Qualcomm QCS6490 platform.
>>
>> The board ships with a modified version of the Qualcomm Linux boot
>> firmware, which is stored on the onboard SPI NOR flash. This allows
>> booting standard EFI-based bootloaders from SD/eMMC/USB/UFS/NVMe. It
>> supports replaceable UFS 3.1/eMMC modules for easy user upgrades.
>>
>> The board schematic is available at [1].
>>
>> Features enabled and working:
>>
>> - USB-A 3.0 port (depends on [2])
>> - Three USB-A 2.0 ports
>> - RTL8111K Ethernet connected to PCIe0
>> - UFS 3.1 module (depends on [3])
>> - eMMC module
>> - SD card
>> - M.2 M-Key 2230 PCIe 3.0 x2
>> - HDMI 2.0 port including audio (depends on [2])
>> - Configurable I2C/SPI/UART from 40-Pin GPIO (depends on [4])
>> - Headphone jack
>> - Onboard thermal sensors
>> - QSPI controller for updating boot firmware
>> - ADSP remoteproc (Type-C and charging features disabled in firmware)
>> - CDSP remoteproc (for AI applications using QNN)
>> - Venus video encode and decode accelerator
> 
> You have a number of features that depend on several other series, and
> as Krzysztof pointed out this is difficult to merge/review.. Could you
> please create a "linux-next/master-ready" version of this series and
> separate the changes for which the dependencies are unmet, putting them
> at the end? This way we can take at least some of your diff.
> 
> If you still want review on them, you can also send them as [PATCH DNM]
> or so
> 
> Konrad
> 

Thanks for the suggestion. I think I can separate the changes that have 
unmet dependencies, and mark them as DNM. Can I send the new series now, 
or am I supposed to wait for a few days?

-- 
Best regards,
Xilin Wu <sophon@radxa.com>

