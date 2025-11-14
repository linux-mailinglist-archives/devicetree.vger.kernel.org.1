Return-Path: <devicetree+bounces-238508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 451D0C5BD6C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 481904E1C25
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CC4191F91;
	Fri, 14 Nov 2025 07:48:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3421218ADD
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763106482; cv=none; b=ltivBR3dRmK4TcHX5cDbOINrx6wpNuc967fMRiq2/wKqHOXBIe7BXayODCTB/SZ4/yuOGzmSxFUfF7o+HsXZbaP2e6OgppUtdCe4/DArbpAuUfTaqZkOZ+jCmDc1zuXzFIP6+FtnmatV85x9Mss2DBaGJPbcWJra3L80QdtVwyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763106482; c=relaxed/simple;
	bh=pNIjWAJmSrfl9LAFlcx8j0laGMvBhXb09/k9hnhaGE4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KkY3ynjvOdacrXLr1JNwIkUMZzJME31+RCVgBjDvy2reTyDdiaz80O6hgG4rFIADO4963R/y5SbrhlfPMbj5nhyOgSeAsdCHGgxgrAehNCrzdPgF+LbEH2AW6/dWyGT0DTndoxQkhjy+xbn+PK3KaAnxC2u/o+fC3BmpP/jVD+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1763106427t1855b157
X-QQ-Originating-IP: JjN10vBxkztC4Zu1GIiEhfOTRtjTo1tYFGprwY/x1B0=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 15:47:04 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12877786018845828919
Message-ID: <B6224BD6578686FF+dc81e00c-46f6-4791-af8a-99cf8e880f0c@radxa.com>
Date: Fri, 14 Nov 2025 16:47:03 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
 <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
 <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
 <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
 <D88EE9EEB2B37D36+361d448f-d260-4d78-ae6b-abf1caabb94b@radxa.com>
 <b2833988-6319-4426-8a25-c0d34acffa47@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <b2833988-6319-4426-8a25-c0d34acffa47@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MgSJmIOXYsInLSmyv8xpcdxd5dorTJE63UTYA/Izq1UwrDWub6IB9rxk
	qnwFTOZkbGBCxYU+dL1USNC9P9SgtpuVFw09uvm2bKHSoedaubfqZEIze3MjgT5OYDwN26J
	+Qcm4C//V1v4WLkHuGS4yR/ACaDS/rX4rgV4d77wkMh2a+sjfcWDlREEq+bjEWwvvI4Ordc
	z0guSKqkIX8vsYroECKncyofeCHL6NWhla1R0S4q2I286X19mGrIVJlcbTHHW9ZjKc2Pgub
	e4WNMp4h8PigKFdEqDjIxGhRpYdz1EhMY7gf4SvlnCvtgS8osjXYncuIhBFP2kxD5Kg2dbs
	X7XVjb+Xrwlm+Od3XjXJXyYxlOYwq758srd06JEvHxANDksSsTGjU2Pq/2eVhGRnwy3Chq7
	Z8QVIHWHff4B/PWIOV2T5jpfIycLDqpTvXauz6oLWU6fqILY54o+UKXZ8si/kiYjzPsVxcC
	JR89jXtigvmED2cbWiZdGTqN/c8MkkT2/uH+0VLETRbEtXUvimoopn3VKLtIJ0CmOPqCeGV
	iJlhA4aOC7Lrylo20jQ/UAJIeapVCcFRTmMrfLRZdjRRt/8a3ZsHr1oN1qh63CfGeo+OEg8
	GTL3pT+ZjJuaqd+5o14NhPOZJULtHqleDrszTrOO1Z+E2/TPZacEH4G+nJniq4HkC22xbR7
	CE/89BofUDr2qfbL9YPSwtKT/PbB9HTRgIXMOIMcle0jlyXavQkIRIgFmdh8gKdA7ar0Yjv
	scxG2PtJf1pRZSOSyYO77aPQ1i+T9pxfKAHLpDP7cUclAgNI12xLxTtciHJfkCFBaKD4Qd2
	DAzwqbMyFWjR+8Hyvuo2T0w76OOrpP5SUcmgNJ8G63gT0bFRmbTvBuzsnPaehMN9IIEZl95
	oAqtWm0R57MJkG7JfgjgCny96oYwg25zUjaeiVMczI9NMYXrZk/zTOlahEVWn2fF3u5nJ/W
	zQkaX/aPcKH2Z1ix2TTC2CaF2mPTog8rKO4tpmF7MXzka42sG1thPZymVQbIi6vTYbBUauN
	3uFSEYy/KzdMSi1qtUU+zphBcuTYcM04oEQn9nMA==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

On 11/14/25 16:42, Krzysztof Kozlowski wrote:
> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>>>>>>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>>>>>>
>>>>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>>>
>>>>>> Wrong DCO chain.
>>>>>>
>>>>>>> ---
>>>>>>>     Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>>>>>>
>>>>>> NAK, you just stolen ownership of an already posted patch.
>>>>>
>>>>> Read "Changes in v6" and patches; my patches are not the same as v5.
>>>>> Your reply is totally inappropriate.
>>>>
>>>> Inappropriate is taking authorship of someone's patch, because we all
>>>> expect to preserve the original authorship. That's not only basic
>>>> decency but actually a standard.
>>>>
>>>> Additionally, read Joseph's reply that he wants to continue the work:
>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com/
>>>>
>>>> You clearly do not understand how to continue with someone's work.
>>>>
>>>> It is still a NAK.
>>>
>>> And I still wait for justification why you took authorship of this
>>> patch, because to my eye you changed here nothing.
>>>
>>> So what did you change HERE that you think you are the author now?
>>
>> Changes in v6:
>> (Patch 1/3)
>> - Fix description; "Radxa CM5" is the correct name
> 
> HERE, in this patch. Don't paste me hundreds of unrelated code. Write
> concise and precise answers/comments.

https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com/

| By the way, at some point I switched from "continuing your work" to
| "recreating a new one based on my current work." The results of my
| current work(*3) have changed significantly.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



