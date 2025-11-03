Return-Path: <devicetree+bounces-234383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52035C2C00B
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 14:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 660283B7FC3
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 13:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 555F530F81C;
	Mon,  3 Nov 2025 13:05:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CADA2DC334
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 13:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762175134; cv=none; b=f11iRY3UfWSCIw61WIDjf/CO7LaS8s0p90eNZi9rnRAntXydHKgcJyVJjup06EOubIlRdiwlKvNzJM9CaZO29tjjqW7jAR6XDc63cHi3ug1z50PW5TRCq1ujw3PCg0GEvVfbPvWSIVo5Eww6SqmS3GqUIbC3mT9b9XGbXWXtP24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762175134; c=relaxed/simple;
	bh=U7VXK26M3CFidPtxyRUTxL+HYeVuaMlnUnS7womQ2GY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dr8DKLEj9Z2i66QQPxqPlDMmrpziUjYa43iOiG+Dh+8u88VuCDvUnOaNNBLC08sNeLM2uA9Es64RVrl2IL2doe4VthiUSeuyaT2loxim+cRNnbHrUUUdYyeAmb/85+ZBw3CWzGfvPu/SphkiyXgjayyDD7Cr619kwgoBjBeH208=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1762175061t40720ad0
X-QQ-Originating-IP: zd9Ko0ji1GTrANJeO0DRJSujnJNJp4OF3RAcLpp0rC4=
Received: from [127.0.0.1] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 03 Nov 2025 21:04:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8018792282653507215
Message-ID: <C33391CA9466C163+e15aef57-454f-4c83-abed-542e62890087@radxa.com>
Date: Mon, 3 Nov 2025 21:04:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 3/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable all available QUP SEs
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-3-045f7e92b3bb@radxa.com>
 <1d4ac08e-ccfe-4b6a-8f77-e97836171310@oss.qualcomm.com>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <1d4ac08e-ccfe-4b6a-8f77-e97836171310@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NzQsYY+0lxAQjDB7bPjAxfO4mLXfAJL+5YocEDUf4A+M64oQYNfkVqf1
	JGkHdEs0l/TCxN/gv5mg33QQhqvNjZVTxwpmls7s1/6bm8i5TzCYkBElpfa5yrni7FCBcPd
	5E9HhgRZZ5XetCu2IcjZxhtresG/0VA5dGfRRnstAIQSU7ZohjjMJexQp/FNpCUm1nWiLtW
	w8Pm4989e2ShSy3+UKXlcpI/Psz3E9uoJ4X0YeTUwMR9aa5ZcxsR0hAUKC++SKtHmQbNmk6
	rwVTcYM2HMIEAqlVgnx/SH0WcodJSQnF6cUGdNtCtHPyOYOQ852UHnDSsKkLJEW+EekoIDH
	8IeTF7t51UTFL/DbcqNYO55D6IeBSXA1/7Ep2crBsAdrMmxpax3tOc4sGmx4lssGNdEb1Ag
	nFsNoli6fEcoeU2FC0GSjpU4Ux3Hsl8sq+4bEDQNdKEAJLCHKpo9QJLIgo5w/ocx5ERVqRA
	L+ove1H+UthYbQDB2z7CkbXZwPyEwGO2D4apsH3HQ9MCs36PaeI8fMghAL6NmbzSzOA7OnH
	9v6Ci3Kew14WB2ymT3RIT3kV5aRd4ha1+YniAeXZ63YaKkF/3ioG5ewWbK8A/wD9xA9nOaH
	Z0EXR9qkV1buJ37fwt47QU5sbik9fKa+Ko0TR7zVuFM+soy1/YYALhzu/Iwi6hQtmYhnOmU
	LhrqZeGk57KRCwwi1468muFmEey4mUddTir/LpUOiUA/7JmD60Z7NdVL9CxJB5PynB7hAWF
	J6nVXjVldQLZCgPkmxrO+kSu+VpmGSmo/MV8P7TLAJM2c0F6cn3T2KIYueulSKVhMx28qMz
	G+Xdcu6c4mzij7vX9g875ndJ9F5TIwms8r8QLzWZked3IvABKoESRtTov0Hhk8zjlh1NNFC
	oJDh4MZxz+hAbhaBdXY7YDm76YDntgRHVIkUSjP+1T07XuFlZasuuTg8n+4uDEzEZZ9woxm
	5OwS545Sf2KpdGtk61d5IHqWORP1iapXhF1YF//GFVg5njaBt/sfVlsCJya8Glwm5RsLjGw
	t9YWaRQy4qL1MJUzxDQ+F5GCOJmC1xvlvFH921acKlnGCEvXnVJJn9UcQPrH9hkIxnTjY5D
	w==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

On 11/3/2025 8:57 PM, Konrad Dybcio wrote:
> On 9/14/25 5:57 PM, Xilin Wu wrote:
>> Add and enable all available QUP SEs on this board, allowing I2C, SPI and
>> UART functions from the 40-Pin GPIO header to work.
>>
>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>
>> ---
>>
>> This change depends on the following patch series:
>> https://lore.kernel.org/all/20250911043256.3523057-1-viken.dadhaniya@oss.qualcomm.com/
> 
> You should be good to go resending this change now

Thanks for the reminder. I added the QUP parts in v4 of my patch series, 
and it's already merged :)

https://lore.kernel.org/all/20250929-radxa-dragon-q6a-v5-2-aa96ffc352f8@radxa.com/


-- 
Best regards,
Xilin Wu <sophon@radxa.com>


