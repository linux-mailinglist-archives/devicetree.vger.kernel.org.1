Return-Path: <devicetree+bounces-16129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6017EDA67
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 04:35:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5874B20C72
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 03:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A516847D;
	Thu, 16 Nov 2023 03:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="D7jww2ht"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD397170F
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 19:35:21 -0800 (PST)
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20231116033519epoutp02f9099f024d531aed123380deac18a8b0~X-SToFKKd1742017420epoutp02O
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 03:35:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20231116033519epoutp02f9099f024d531aed123380deac18a8b0~X-SToFKKd1742017420epoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1700105719;
	bh=4eb70dV8AEFO+wsS0zii/w1LSvTaYR29FHvwLpNtXv0=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=D7jww2ht/Yc9OAt0bu0keMBKjNGtDLc6SfDvcuBaZffWQy91+W0R3HBYY37x9s7qQ
	 wn9SQFK9l4nXoBOwVdb9rNMbZvQbzQS1Ny1S4PbNqYAueEcswTw38zXbZQDl7Jfn94
	 ozfcQcGAE8mwID8TJBS6Mk61f0cfP7znGVXbbWk0=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20231116033518epcas2p33fbb468b69c6a9634f6fd0403a49c974~X-SS8oeZu0584805848epcas2p3H;
	Thu, 16 Nov 2023 03:35:18 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.36.68]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4SW5Jk0p2Wz4x9Pv; Thu, 16 Nov
	2023 03:35:18 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
	67.44.10006.5FD85556; Thu, 16 Nov 2023 12:35:17 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20231116033517epcas2p1d386bbf294dccad0ccb45f8a867ea972~X-SSAb2oJ2677326773epcas2p1M;
	Thu, 16 Nov 2023 03:35:17 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20231116033517epsmtrp1074fd24d8e02bbe0b3cbf04b7a74050b~X-SR-XsRF1098610986epsmtrp1Z;
	Thu, 16 Nov 2023 03:35:17 +0000 (GMT)
X-AuditID: b6c32a45-9e590a8000002716-b8-65558df5bea4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	83.61.08817.5FD85556; Thu, 16 Nov 2023 12:35:17 +0900 (KST)
Received: from [10.229.8.168] (unknown [10.229.8.168]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20231116033517epsmtip2329c33e66f6d9fbb624e61393f1c7e9b~X-SRn81wV2404524045epsmtip2T;
	Thu, 16 Nov 2023 03:35:17 +0000 (GMT)
Message-ID: <d6f3d451-6a53-46b6-2263-cc071a9dc44c@samsung.com>
Date: Thu, 16 Nov 2023 12:32:30 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
	Thunderbird/102.11.0
Subject: Re: [PATCH v2 00/12] Introduce ExynosAutov920 SoC and SADK board
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, Sylwester
	Nawrocki <s.nawrocki@samsung.com>, Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>, Uwe Kleine-K?nig
	<u.kleine-koenig@pengutronix.de>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org,
	linux-serial@vger.kernel.org
Content-Language: en-US
From: Jaewon Kim <jaewon02.kim@samsung.com>
In-Reply-To: <55a0f27c-ea46-40ae-b1e5-e650802b89a8@linaro.org>
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOJsWRmVeSWpSXmKPExsWy7bCmqe633tBUg39pFg/mbWOzWLP3HJPF
	/CPnWC2aF69ns3g3V8Zi7+ut7BZT/ixnstj0+Bqrxeb5fxgtLu+aw2Zx9+4qRosZ5/cxWZxZ
	3Mtu0br3CLvF4TftrBY/d81jsVi1C6ju9sTJjA5CHjtn3WX32LSqk83jzrU9bB77565h99i8
	pN6j/6+BR9+WVYwenzfJBXBEZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynk
	Jeam2iq5+AToumXmAD2ipFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9ArTswt
	Ls1L18tLLbEyNDAwMgUqTMjOmHjXtqCRr+JAW0kD433uLkZODgkBE4nHa7czdTFycQgJ7GCU
	2LztFjOE84lRYvvpWSwgVUIC3xglVjwugun4sfcjG0TRXkaJiS0wzmtGiTsb5rCDVPEK2El8
	WHkNzGYRUJXYsXkFE0RcUOLkzCdgU0UFoiVal91nA7GFBTwlJu//ywxiiwjcZ5Z43VYNMpRZ
	4AGjxNxzXxlBEswC4hK3nswHG8QmoC3xff1iVhCbE2jZhZOtrBA18hLNW2eD/SAh8IZDYsb9
	iewQd7tI7GpqZoawhSVeHd8CFZeSeNnfBmVnS7RP/8MKYVdIXNwwmw3CNpaY9awd6AgOoAWa
	Eut36YOYEgLKEkdusUCs5ZPoOPyXHSLMK9HRJgTRqCZxf+o5qCEyEpOOrGSCsD0kTnbsY53A
	qDgLKVRmIXlyFpJnZiHsXcDIsopRLLWgODc9tdiowBAe1cn5uZsYwSlcy3UH4+S3H/QOMTJx
	MB5ilOBgVhLhNZcLSRXiTUmsrEotyo8vKs1JLT7EaAqMm4nMUqLJ+cAsklcSb2hiaWBiZmZo
	bmRqYK4kznuvdW6KkEB6YklqdmpqQWoRTB8TB6dUA5NWX9F2CVa/wOwpjp/nRwhrHq1eqhVs
	3tpo7Pz2/kJGt7wrE19I283cqD5jMTvXW7dXW1bdv/Mp6MueyW9VFuvs7637JSFvdXqpl2V3
	bM+q6DqHatv2V0zJ7xKi3nIEnXyQyCi13pRf76+GSa1X2uGtdfE8K55vuxZWKd3y2yQ64OS/
	f+s0n89TL/FxPhchXPJ7qbrPt8JE13t328TuHPNsP/RvjkNlIMuxBV5bs3Qv5QTmuvF/S+Qo
	FG6N33yvcfW5jf43Eu/o687g97p5+ZL/lRxTuykrp/JqWGi0P96Zoay6zuyjoV3X/7T6wvQN
	Gv2Hb/189pdBzD771rvX05eVySwMWS75LP15ysJoDiWW4oxEQy3mouJEAAxjoutqBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJIsWRmVeSWpSXmKPExsWy7bCSvO7X3tBUg1lt4hYP5m1js1iz9xyT
	xfwj51gtmhevZ7N4N1fGYu/rrewWU/4sZ7LY9Pgaq8Xm+X8YLS7vmsNmcffuKkaLGef3MVmc
	WdzLbtG69wi7xeE37awWP3fNY7FYtQuo7vbEyYwOQh47Z91l99i0qpPN4861PWwe++euYffY
	vKTeo/+vgUffllWMHp83yQVwRHHZpKTmZJalFunbJXBlTLxrW9DIV3GgraSB8T53FyMnh4SA
	icSPvR/ZQGwhgd2MEhdX1kLEZSSWP+tjg7CFJe63HGHtYuQCqnnJKHHl62d2kASvgJ3Eh5XX
	wGwWAVWJHZtXMEHEBSVOznzCAmKLCkRLrP58gRXEFhbwlJi8/y8zyCARgcfMEg+n/gdzmAUe
	MEosn/SIFeKMrUwS/5prQGxmAXGJW0/mg01lE9CW+L5+MVgNJ9DmCydbWSFqzCS6tnYxQtjy
	Es1bZzNPYBSaheSQWUhGzULSMgtJywJGllWMkqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ+bmb
	GMGxq6W1g3HPqg96hxiZOBgPMUpwMCuJ8JrLhaQK8aYkVlalFuXHF5XmpBYfYpTmYFES5/32
	ujdFSCA9sSQ1OzW1ILUIJsvEwSnVwLRn2h7W7W8/PLczj5XjKNsz/8mpA6rXZj59MaPh0sq6
	IoeDr00vPk9j6Hz+Mu5c0l+Rq5cmpW04viWyzJ+tOC74dZjR3N1y3PpuNsZnf6Zana9Mkf2X
	rn5dpuGqcq79l89/37OenNXVkraLzyB6Zcpy0RV3pu1Mrz9T5Fw969bNuI8v3WOvH7x7ObL7
	z/0FXzOD1breKYgUvc7WeHpA6M6q0vKpnG4lnDfjw38rN73WmSsfpbJl2untU24pfjrhKdb6
	8+mB7K7I9OAAowv/jpeeC473O1leeKOe56/E9Ulu8Y3fD2S1msjraK7J7ZvN+eTvB/+YrUul
	5Lal2R/xZAiJe8ieylm3rM/+aXZyyV8lluKMREMt5qLiRAAO4A9FTAMAAA==
X-CMS-MailID: 20231116033517epcas2p1d386bbf294dccad0ccb45f8a867ea972
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231115095852epcas2p21e067efe75275c6abd2aebf04c5c6166
References: <CGME20231115095852epcas2p21e067efe75275c6abd2aebf04c5c6166@epcas2p2.samsung.com>
	<20231115095609.39883-1-jaewon02.kim@samsung.com>
	<170005362858.21132.4200897251821879805.b4-ty@linaro.org>
	<6e69df6c-10fa-404a-ac02-4880723b8c50@linaro.org>
	<55a0f27c-ea46-40ae-b1e5-e650802b89a8@linaro.org>


On 23. 11. 16. 06:17, Krzysztof Kozlowski wrote:
> On 15/11/2023 22:11, Krzysztof Kozlowski wrote:
>> On 15/11/2023 14:08, Krzysztof Kozlowski wrote:
>>> On Wed, 15 Nov 2023 18:55:56 +0900, Jaewon Kim wrote:
>>>> ExynosAutov920[1] is ARMv8-based automotive-oriented SoC.
>>>> This SoC is the next generation of exynosautov9 and AE(Automotive Enhanced)
>>>> IPs are used for safety.
>>>>
>>>> This patchset is the minimal set for ExynosAutov920 SoC and SADK board.
>>>> Currently, ramdisk console is available and Clock, UFS, and USI will be
>>>> added after this patchset.
>>>>
>>>> [...]
>>> Applied, thanks!
>>>
>> And dropped. You did not test it. Please read Samsung SoC maintainer
>> profile:
>> https://www.kernel.org/doc/html/latest/process/maintainers.html#arm-samsung-s3c-s5p-and-exynos-arm-architectures
>>
>> I also made announcements on the lists and on social.kernel.org. I don't
>> know where to announce it more...
>>
> To clarify, I dropped only DTS and kept bindings. Let me know if
> bindings are problematic here...
>
> I also repeated the announcement:
> https://social.kernel.org/notice/AbqJkj9gOZJ3sG8eCu
> Please share internally within Samsung, so there will be no surprises.
>
> Best regards,
> Krzysztof
>
>

I already checked and there were no warnings or errors as shown below.

Did I miss something??


$ make CHECK_DTBS=y ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- 
exynos/exynosautov920-sadk.dtb
   LINT    Documentation/devicetree/bindings
   CHKDT Documentation/devicetree/bindings/processed-schema.json
   SCHEMA Documentation/devicetree/bindings/processed-schema.json
   UPD     include/config/kernel.release
   DTC_CHK arch/arm64/boot/dts/exynos/exynosautov920-sadk.dtb


Thanks

Jaewon Kim


