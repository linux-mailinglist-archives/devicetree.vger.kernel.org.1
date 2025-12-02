Return-Path: <devicetree+bounces-243615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED018C9AB2F
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9C9E44E0FF8
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF1D22A7E9;
	Tue,  2 Dec 2025 08:34:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgjp3.qq.com (smtpbgjp3.qq.com [54.92.39.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9F13FF1
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.92.39.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764664472; cv=none; b=fQ7p0XnvAyngVa2o37jioBvjYmxdUbtqABue8tkXwY8EoqL4+MVXhDGPqARMdKZXUln6W0NOHAhho9a0aZctT59yEapR1gsn6UiYTW39pzCtkqC0woQRB22ZtyvUSf8cQY/jjX40SVy+lVSQwaiUw4RN2zMIT13RGu7kgY+TVoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764664472; c=relaxed/simple;
	bh=hn5Y6W1xAm8ND/8jDdQWYCJA2QSmvAtFr0x123U6If0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hcuxxBeh+1DbzdUGxWgauWtGvtyIt3wf/k+rTAtgo4Wdy7HqdDzbzGaInIA0R5o7qTHHvH5aRowNGu4mIn2XUgVQtGFvV1nSfkE6GaqA1G4hduCq3dSl7zDRGvGhk0FFl77u/yN+0YCOkgS21aBzMI7ma0Rw3UOIe8KIH6y4iK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.92.39.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1764664388tb0ad7bb2
X-QQ-Originating-IP: bX7CFrTBWeD1lra39OSHXF3S+3mUNsNAtccb4Xx1N3Q=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 16:33:04 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3301675350501085391
Message-ID: <3EC71E685E4A7C06+f7e4f51b-e41e-4bcf-bd20-685e878b71d4@radxa.com>
Date: Tue, 2 Dec 2025 17:33:04 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 1/3] dt-bindings: arm: rockchip: Add Radxa CM5
 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 inindev@gmail.com, michael.opdenacker@rootcommit.com, dsimic@manjaro.org,
 pbrobinson@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-2-naoki@radxa.com>
 <468640ef-58a4-415c-9785-8a902cbf4370@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <468640ef-58a4-415c-9785-8a902cbf4370@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NyPaQtJYQgeowdNL3mMDzSrltniwYe7MfGPuuK9/cuhSrrC/0B9CGJ47
	h0u55BRJNS2tAjBIXapJSD16Oo+n+9XkcC55+n6yhSIo8NYzoQfZyPEh2jWgBylldC7rCZA
	XNvkLv+LcYLOp1mX3cZVkg8JDJ44OfdnIfun684Mfy1uE0vCI6LqH7igfJx0MdKWmBELXLW
	6zyrCTMeki9L8tgECbGqgTRJ+ng+p3VW1QNhNk3n9lrcMoRzftVEU7TFFhAVgcjfp8Tm//b
	lcxcZSo/egXUmJ4g4c7QFRjWKU5itxlMy1ALK5qESmTRWUuhFafNsjIW3zndRxeZJqYWUWN
	jOeF4w4lsjlOh+Zv9apubkCcsuZ8uLRqTp6ZOcB+jkCVhNw9s0bXIkYz+UGdLahXKMzz55z
	iOilcmRYN5Ni9BsGrPEkoKapYqyEbU5RfHjbe1rFYFi0tzRtTgJj8/PqMlWr47FiN2xUiBI
	myElkg43uxlsZBmCMTog4mvlNO60Cys7tnoVYdarL6nYSEHDLEBysVu8+w6b8uDsYrIAHY9
	YXxt2/202RD5hI+P3WgwNxOMrBmjDbV50drAls2rESi+Ezyw653dAxpZ/IISsgW4XrkkrgB
	hSXfeaOq4mEmmn19X4KwnYLGIAUTV5HjcfRTbkmeF6nl89WTuratHHMvHp1XmcSoo0wW5Jb
	iCol5VKqmkJaUa7a60JpOT7tX9N/q2IzLkPLESRloQy7mP9HTwjdaK4OtVifcQCOnD1tGGR
	qEANPgITYcCdUk4Y1apdR9OGLngWjjnjTl4z2SiIRzgfyTUBpJp5kraOfDh6zSG5r3KuMso
	mt5vcYgLMyPsW3YWsS4aerW7KrZr8/l+HoQUBtEez/hHESVfUSRH/MCJVhT2QkTwqZll5Qj
	sSIlwjZglN3/sXy1qU4RxO2PuEmnaqcOOaXV2MZ4bzHStCfezNn05ARBG0LiX5x2ApUrenE
	t5wgayxTYew+T3UWyPWaTe9DnVzUCFe8sOqqV8dtHYvW9MKTDkm03T07bjRjI/tvq4rg=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

On 12/2/25 16:45, Krzysztof Kozlowski wrote:
> On 02/12/2025 06:27, FUKAUMI Naoki wrote:
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> From: Joseph Kogut <joseph.kogut@gmail.com>
> 
> Your patch got corrupted. Look at your git, it should not have any
> "From" parts.

I just followed
  https://www.kernel.org/doc/html/latest/process/submitting-patches.html#from-line

I'm sure there is only one "From:" line in message body generated by 
`git format-patch`.

But, anyway, I'll resend patches without "From:" parts.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 


