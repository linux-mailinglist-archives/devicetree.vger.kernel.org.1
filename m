Return-Path: <devicetree+bounces-224717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9C0BC7305
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58A8F3A1C60
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 02:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559DC54652;
	Thu,  9 Oct 2025 02:17:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg5.exmail.qq.com (bg5.exmail.qq.com [43.154.197.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1B8182D0
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.154.197.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759976258; cv=none; b=OQk+K05wuRjW/kekiLY6gUZljo/Y9IAhl5sXQ8uzRYvIo6Zxueyp64WYZAEraVlupZdzZQ0PaUs77m3WP4abvGn+fY1Uj5qUEkq1VcYHvWWiSvuh35+327L/rHwiA0C0AMNQa1M1+jokxbGGMxuo6MGsbbQirp3ukbPLpxmOvNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759976258; c=relaxed/simple;
	bh=EXlTnayX8iZs1RmOI2PwhPc7Xd2rnDyLCCsaCyNwEHg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ekTQeUlInDxuOVhGakZqdlX4BQlZaI1SU+kvrf2rJ68PuXa5lkSIPmNP4m341+/o+R13BR0VpGhMjBD3x8hVfnDYK1axAdOTG5PhaPiF7QhAJEjn0h2g5i5ecJknCCQYqIGxBqshmxYNB4IG7KU5589vPOm3l+ivBxnHvSqYAQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=43.154.197.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1759976187t26981058
X-QQ-Originating-IP: QJywRK6yFCSFRt7FydXwg9CgEhop58NLlivjWVLVJ7Q=
Received: from [127.0.0.1] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 09 Oct 2025 10:16:25 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 417726807767555763
Message-ID: <03A4C3DFA86FD6DF+6262361b-e129-4b19-b5eb-42188fa76505@radxa.com>
Date: Thu, 9 Oct 2025 10:16:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 4/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable UFS controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-4-045f7e92b3bb@radxa.com>
 <9a18cfae-4fcd-490e-b44d-6f9345cc7c3b@oss.qualcomm.com>
 <4AD4461A95C1A8F2+bc2124f8-d1ae-4fe4-8d0e-55872609d3f3@radxa.com>
 <25a53665-d400-4bd3-a1ad-5ba8d3a0d9a6@oss.qualcomm.com>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <25a53665-d400-4bd3-a1ad-5ba8d3a0d9a6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Nl7eTg5yGHnw+xwrEkoKx3xP1HrjEAxIDg08vsjmdBZaKVj/5O3lFY/F
	cHVe/FH/6ghkXceWXCX3Qa1hz88WAgbtXJu8ZmQLJOKH5HvSHd37GhX5CUeC50mDQ0B23WC
	Xaw2bu2uLo18QraPU7OaKql6+4+eHLog5Cueica/iWIMIlhw4a53i+f5IsXTfOu1Ci+JccA
	4JOccOa4GIxHZSJ8QCLFDjwUshjpai0kp2Jn/0G7UbLtY8A+p/8RlF5/cZeP3jbDDEVK7pl
	Ftok11GYY3XklICdC9r8DmLDVhZDBrIcqZujoI2+7bAubRIVCQYUrcheUnv9XqoIoRwSQOg
	AXqAjaSkb4eiPaareSRchs6sLzrmheWTBS5p3iJq4f/saTiAl2BpVNY+1mmvBpFj0l2WiDs
	Z/6soMhXZ2og5iz5f5GIh+JJf7Hr1v5BjfJScmHzIdpYrb5S3R2b9UxS1cdbPPJwZXP/wAn
	dYv11tctPvvjRvpbaly8RB1HI27GSwlKE0VR/JOu/V7DCOfXWQdrz5DTnBmmzC646TCo2kD
	z5rN+l/uYD2ekp5cZ/FpEa9asYx8K/7osntmGMRrMFOzEfLFrLFT2i8YksFJxCfPg6u2mUY
	xMzI4l/nzBu61uYvIw9rTi0usDE7r0Gzku1zhCPqFvvOexr+hfiqMq6I99QSPOL2B8NCyx8
	JFa9rZannpbIsjSar79T0676FfZ25sZGXZHqjTBWZb3bl4WN4DcItzBeb0qgAfMU0vhp+m0
	oL4cVYDv7r4Zm0id7E4/GCmRleMTxvdoRmq3kXm8Norf+QhkGq67UUMCwAevqxGcoy49Zyj
	H5HIsyOMCMlLsJhDODz2rOto41fE/x3CRadupbv4qKoDYKdXvpiw9dHllJaDiZ3kFNRmPty
	cDJdu3Xzwtzh4gSosDvhXdA0CC5gH5boSgI8/NAv4m9KvlirxtJmzCGqeoTzyXccnthNPl6
	UikCg59Wqg3pmVEBDfmrY6IFWIis6gpN5yB7lqXLse+1DfEHctJEUBLkFLfbbr90rQohLaH
	IkyCxVN8r9ZTM8/JS63Mr7qd7QMVv4aAInKSReIw==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

On 10/8/2025 5:53 PM, Konrad Dybcio wrote:
> On 9/15/25 9:34 AM, Xilin Wu wrote:
>> On 9/15/2025 3:24 PM, Konrad Dybcio wrote:
>>> On 9/14/25 5:57 PM, Xilin Wu wrote:
>>>> Add and enable UFS related nodes for this board.
>>>>
>>>> Note that UFS Gear-4 Rate-B is unstable due to board and UFS module design
>>>> limitations. UFS on this board is stable when working at Gear-4 Rate-A.
>>>>
>>>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>>>
>>>> ---
>>>>
>>>> This change depends on the following patch series:
>>>> https://lore.kernel.org/all/20250902164900.21685-1-quic_rdwivedi@quicinc.com/
>>>> ---
>>>>    .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 29 ++++++++++++++++++++++
>>>>    1 file changed, 29 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>>>> index d30cddfc3eff07237c7e3480a5d42b29091d87d6..3bf85d68c97891db1f1f0b84fb5649803948e06f 100644
>>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>>>> @@ -482,6 +482,11 @@ &i2c13 {
>>>>        status = "okay";
>>>>    };
>>>>    +/* It takes a long time in ufshcd_init_crypto when enabled */
>>>
>>> Huh? It only turns on some clocks, writes a couple of mmio registers
>>> and turns the clocks back off, could you investigate a little more?
>>
>> More specifically, it takes a long time in `qcom_scm_ice_invalidate_key`. Considering this platform boots from SPI NOR, while TrustZone doesn't really support SPI NOR storage on this platform, there could be something broken in TZ.
> 
> Hm.. if you change the boot order (if you can on your board..) to start
> with UFS (which would require reflashing of all boot sw onto there), does
> this still manifest?

Unfortunately the board is designed to boot from SPI NOR only. And 
there's no way to change that without replacing some resistors on the board.

Just now I tried a v6.17 based kernel, it now simply triggers a reset 
somewhere when ICE is enabled.


-- 
Best regards,
Xilin Wu <sophon@radxa.com>


