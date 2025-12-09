Return-Path: <devicetree+bounces-245410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39517CB08EA
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3B6430640FE
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1D9320A3B;
	Tue,  9 Dec 2025 16:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C2jBinvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7742131ED9C
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 16:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765297569; cv=none; b=bvgA+7zyBDS5+p7L3/Ab0sSmXy7vwk5J5Sz6yWwdwj3evR/2lzCYqfFJkonwpFgYgUVQJmr4ocm9ApaE401l1cQTz6IA0P1Bh2GzHuxKAzI1i05poFVdlZa4rFjChzkXr8H0O3qPxKenMBl0SkU1DvOw89wVv3xN/HfshvL+WGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765297569; c=relaxed/simple;
	bh=biGOZb1RIX5ikhtgxteyi8161lILYFSAu5T6Hgxesz4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pgl2vdF2dcwUH6UULvlP60akJw3j1fYBNJRjFQyG5sWRnkKGV1xNFHDbEbXj9ob9OmzOQ4aDYYuPcdxCMCoIDNQzuBv6wyKpeRS0l/HdIsBIAS6PhvpKqxIiuoMk6wJvrOB738BZ562ijRCO6MwV/fUOpOtNpMJKe6oGCt7ZESY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C2jBinvb; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7cac9225485so448897a34.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 08:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765297563; x=1765902363; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F5zRiXPRY1gEzqlGjNHUp6dTOKIROF+8I0Et8Ms264g=;
        b=C2jBinvbVNa/LLRajtZBKuHhItW+5FLYNeykX9t4tHmeTokqpast7pqX859Qjmm+Rq
         WaemVJGB3uLUdmK24n/XMGAnQ+LfWNx1FdXRBXgeJ9lA+YhkpSct+vjaBsTAPAuwyzgK
         0kyVoKjFgwrTInImER4OCxdWrL/ofG1gCpsilUL7iPmqkintlXHbkpTqndKnqdVNmITD
         kqFnFsKteu3XiQsjNpvxRJyI3LcrulUxlwEdEh6KsCpKea9QOf21yxJXbwn9XrgVt0SA
         zov56aP7+Ukjd9NWM1Zs8kpNRRUgCmJl3L1UhdnxsAG1lkzvn7h3onuWksuOZdinX/1d
         PSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765297563; x=1765902363;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5zRiXPRY1gEzqlGjNHUp6dTOKIROF+8I0Et8Ms264g=;
        b=r31TSWqaT90F5wK3FqB0cBgcPls1c8x9706gJPv4utruzVlpsXcC4iU/y2QgKd7sRM
         NjZbcoFyCBVf3n8T3AZR2uov/SwwB3CVSunF4HYFHzptsPOsS5E6PoCQHh4tWupOfty/
         v6B1foHsKscXR+ufKFXR4X+OpE6/0ppm51SLGeuiGnfiBKhsvZz+SU5Bu0f8wIRXAj+R
         cahTzRlXwifr39Rw9uLVWXscS6u+DG/d98TFZUpzwLC/M4KCQvBbe7C0V+B7FgW6IaLo
         6uMLjtPKrRr8hOirEbqYYV3Hx+8gxECMjnYQeV/fWHLjmXhKrcuf+bSQS1X/GX/SZpjY
         CDYg==
X-Forwarded-Encrypted: i=1; AJvYcCWS6CaDrMbMgsVEBN7/rlzNgBWRJwZ6WG7DTo/YUMgogHzWQAaeSf7VxDsOEm7OXwZQZE/OPjsPUb6q@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh92NinI+L+TQtz7wwNd7nEwTGvUYgpd/qCJytjjcfPNBXi/1U
	YRU7JuPbMRlhV9bbp5cmLE6DAGyDxoXUv6jfzM0V0lCaH5u1BlxedaIy
X-Gm-Gg: ASbGncsHwM762Kts09xlYBG9BU+ePib4qHA3YlJUsAwbna2+VyM2QddSV8n7pDp5iZd
	5utqvWwXJqRuTgDcVyY8caw0ZTTEZLrxUvUGsdAFVkiY/bxxGYogoc7daCvNlEKNcCCiVVMzWJe
	GqXao3y5OuFIa8oDD7padOHHIs3YOMKAbovSNMivMHHNg2Ze25rzHY0aQ9bnnV6vpSIcsr+zBAF
	K+hUkk459Tz2BvD5tCDvF6vFP4Qb7WSG9I2AqJCR6t305PM51/3e1WQWeYfju7ffsE/DM7DNn1U
	LrST1SA/SaL9PnCbwuz6fw4XVRGbyfSauCuDRlI7lVCtyVrteu6gWlUosmiR2wrMiI3Izhg652j
	2oYLRu/WxPb7nfwneb7bzq1o+GiW/aEuMojdvRdmOIbrkhTP8LqRzLHTqHEygkINQb4R2uISOeV
	o6WOXHGv3AoXEwOdVpYIANhimkH7kWvfcQ/o+YRXLWj+ScbuyOL9A0N3WkFrZLwBKOGXyRp5SU6
	FAIq2mPgamTKkoKjXAd/Q4138ZsPUWBhCLZYltEBatr
X-Google-Smtp-Source: AGHT+IFmTKjIjeFDsRUal05BF/whcGMQ56pIqRSSm2fIFKSoV0XP7XVAyr9RBrBMhtPaZ7mpmksR4Q==
X-Received: by 2002:a05:6830:412a:b0:7c5:3798:fa3f with SMTP id 46e09a7af769-7c970748674mr4845571a34.2.1765297563411;
        Tue, 09 Dec 2025 08:26:03 -0800 (PST)
Received: from [192.168.7.203] (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95ac833d3sm12560318a34.17.2025.12.09.08.26.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 08:26:02 -0800 (PST)
Message-ID: <23d3bc82-0909-42a4-b4a9-742834faec76@gmail.com>
Date: Tue, 9 Dec 2025 10:26:01 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: Use 'usb-phy' for node names
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251209160755.3878878-1-mr.nuke.me@gmail.com>
 <xmserprghzwpcxt7ionh2ju7o3cudj5emtkycvurbz5obztzr5@lkllnnsag6ri>
Content-Language: en-US
From: mr.nuke.me@gmail.com
In-Reply-To: <xmserprghzwpcxt7ionh2ju7o3cudj5emtkycvurbz5obztzr5@lkllnnsag6ri>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/9/25 10:17 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 09, 2025 at 10:07:54AM -0600, Alexandru Gagniuc wrote:
>> The devicetree spec allows node names of "usb-phy". So be more
>> specific for the USB PHYs, and name the nodes "usb-phy" instead of
>> just "phy".
> 
> Why? "phy" is more generic.

Hi Dmitry,

The goal is to be more specific. I find usb-phy, ethernet-phy and others
to me much clearer. As I see these more specific names being used throughut
dts files, I did not expect this to be controversial.

I am trying to follow devicetree v0.4, "2.2.2 Generic Names Recommendation",
which allows these more-specific node names.

Alex



> 
>>
>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> index 86c9cb9fffc98..4b8cbf1ff131b 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> @@ -702,7 +702,7 @@ qpic_nand: spi@79b0000 {
>>   			status = "disabled";
>>   		};
>>   
>> -		usb_0_qusbphy: phy@7b000 {
>> +		usb_0_qusbphy: usb-phy@7b000 {
>>   			compatible = "qcom,ipq9574-qusb2-phy";
>>   			reg = <0x0007b000 0x180>;
>>   			#phy-cells = <0>;
>> @@ -716,7 +716,7 @@ usb_0_qusbphy: phy@7b000 {
>>   			status = "disabled";
>>   		};
>>   
>> -		usb_0_qmpphy: phy@7d000 {
>> +		usb_0_qmpphy: usb-phy@7d000 {
>>   			compatible = "qcom,ipq9574-qmp-usb3-phy";
>>   			reg = <0x0007d000 0xa00>;
>>   			#phy-cells = <0>;
>> -- 
>> 2.45.1
>>
> 
The


