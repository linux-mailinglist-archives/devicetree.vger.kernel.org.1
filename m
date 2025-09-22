Return-Path: <devicetree+bounces-220026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76764B9159C
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 175763A6AE1
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E7A30ACF7;
	Mon, 22 Sep 2025 13:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f8QyDB+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78C3139D0A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758546958; cv=none; b=DiHzAXaCBldgJStsynwomRJrcXUNLOv8lMTtD8eP+VehA7k17audY9vcyR8H7B9cqFZLAs4Z4FFfv+QeLk1RwZ2QqyWEZq3zSUGHFPwaQRe8a0eVCqjpP+NbTc8jjJtRS/usgdtPE+ikjBIfEVLfh6CKdWyOyuE4A4HORKbyokg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758546958; c=relaxed/simple;
	bh=H3IP16ww0WDCJ+jXWGBbAdfLN4zv66+LQvFJvHx81q0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oFIBQ8os9H6RztyFQCWSHZVOI0Nu2ar4fqm5gpyXlj7WI7Vl+u/YM7m8xOyJpWiXqjOIcza934rWvcs+9qqThSi6himwr7AhTLwKKCXkt5lPpoEcY2JpU6uXcIbzwlYs5Gqof/ExGLcf7IyuvcQzgwu1nQXNKkGGAXwzt4izh2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f8QyDB+O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M9051I023755
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6qUiWWx4TK1U0L43SvL0E376P5VuAjOTkFKo8rMJQnM=; b=f8QyDB+OyBdt5TbW
	qumxL4YZgxV+3ACms7uE5A/WK/LdbdGnJWYY/Z+Ny+lfbAbz32kKrnkqO+M7W62j
	12MDyGp1VNZhZ5XTok8ugiimGNvd7fznuv+DzbZw9FTzB1Loq8Jfr84FGIgE2TZF
	2VCpTFW+8/l1SkH1pdqJ3NrJpohNNXHG5U0pOmjNQrUSgMWWXLfdccwhy7U2P3Im
	I9ih6FJ07YCxFcVQdGBspLpWOAj9J0AEGmd0KjZep3Nu3/Tgtl3fG3JcBhtru7ZZ
	ovzFR55mykbF+gi4lZq93yGG5KIDtDXz//Sdl1AYFWYVJI3B9DXEgrp3josV2Biv
	1tsx/g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7svxxg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:15:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2681623f927so43163315ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:15:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758546955; x=1759151755;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6qUiWWx4TK1U0L43SvL0E376P5VuAjOTkFKo8rMJQnM=;
        b=orHfnK5pPExyXV6WH/pb4I+BeYF+UExiKhT2idIqsf4V5EWqRBF+YYA9KLrXNCcv0h
         eZmLjgBqtSuTSfWkYTb6DyWuIW48Dw7Vi3Toa/oQgMdobaFLFItibvPS+XD6UL3kQIte
         HD4GQARlJOglWMlCSfD/1PHgpbdZyHCDHJE9v+SsWJFZs+1IoyX99bBzcP5otvkOFZtB
         6I6Q3GDZQTrkSLgTFoB2ox/9kK/8ltw0cVEN12wR4qDOswltdEtLf1zySXGz+U6/OXBe
         kXmPcchm9hhZSxDhMp1S+5gVgEZaAQS41p9076koedjL0kkz64ElNeMgVNe7PY3rW041
         MAbA==
X-Forwarded-Encrypted: i=1; AJvYcCXeHTGG102w1R+wMMCrc7JALuAPFg8L1w9GQm4iDaMB8QxkbTmkBce+dyNiLtnbCGEe5L18bTLPLl2P@vger.kernel.org
X-Gm-Message-State: AOJu0YzycMAVJ4EvvTHmqfCFzNXXMiW5voBRdyJCttQubsOHZ6lcj0il
	2YvYZ8aq1NppzrDGF/iB7+/zND41K491vddGN9MyyN8gCA0NRu3Lj63vj6/i1I7NqQ4HU/+DhcJ
	LObCjzEbjvyXppQF7K9XBqn1OoSelTQLogGXeL6m3yP/17m3WljnZ468dQ89EVnZ0
X-Gm-Gg: ASbGncss0qTtTFWW9BJkNEgzKFG0ZilMZkEqAc9N/GdQ6iKQGFVZUo2d/abJU+JkPKz
	9k7vOJJcHf4ld+0geFCytHsTm42jBdvM3VXwErSFmkyY+khCKDAlCHInfCFhYU8FetbEVaW+fCS
	kf6HEN4+MQn9LeWgu58GixoSdxJ63oUuNLAnzXhRBg6WpLHIAVFKXfAI6Z19oRdGpfMkcrYlVx0
	smvOL+H7EeO9fUONJjNvbXjibg4z8ae8vS29RY9Jwajid/SK9JKy2hTbRGIo1b3197R8vi4o1Lh
	6lE2zCyRsYOdFiNRkH+i5TW52epiMF+wpDpco0MNjpRsU1W5L8FtXw72WeqPjPx/53q1Nm2LNbQ
	=
X-Received: by 2002:a17:902:e88f:b0:26e:e6ab:66fe with SMTP id d9443c01a7336-26ee6ab6903mr135902255ad.5.1758546954574;
        Mon, 22 Sep 2025 06:15:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8FceqNmu1Keq5p5ZZARdjJs04BUAGVHKikSD6fdT+RdHvPij1E8fPv9RnSnlMfQIj4YbyZg==
X-Received: by 2002:a17:902:e88f:b0:26e:e6ab:66fe with SMTP id d9443c01a7336-26ee6ab6903mr135901545ad.5.1758546953855;
        Mon, 22 Sep 2025 06:15:53 -0700 (PDT)
Received: from [192.168.0.102] ([49.205.248.95])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b5531d90d1asm6729316a12.18.2025.09.22.06.15.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 06:15:53 -0700 (PDT)
Message-ID: <fa832a39-268f-2347-df01-e6d8c06547e9@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:45:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 5/6] can: mcp251xfd: add gpio functionality
To: Marc Kleine-Budde <mkl@pengutronix.de>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>, mani@kernel.org,
        thomas.kopp@microchip.com, mailhol.vincent@wanadoo.fr, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com>
 <20250918064903.241372-6-viken.dadhaniya@oss.qualcomm.com>
 <CAMRc=Mf2ycyKbL35bdy5m1WBEap7Bu8OO2Q9AdZYgc04Uynf8g@mail.gmail.com>
 <20250918-daffy-steady-griffin-5299ac-mkl@pengutronix.de>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <20250918-daffy-steady-griffin-5299ac-mkl@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX9EemHrxD6lqP
 IAxQ7xtuzW04awTiVGvnSnb+yWUacojDeZh8DtrEG3lUXzQwwkukrqXEi/ET+RfOe2x+1JiXpmu
 cQX4F3Xjhj1tVYNJUvF+FeSZ3RUaBpZtrPO1z2cNjxLuqkRgWpYQCz+loWKsGsO/qygGtp8hNfu
 LOQuv66lRBD/jHGYPIed/2JVN1DUjm659qvzyRRXwFBIF3RG0L8a+9fVDOxwXIq7NRStqs2j354
 qGrug+McJJoJvSbLelnOV7fd5T7BfNyt+09YtyyR/VJZnxreX9wtjYQ9PHAUg0V9W8tbxKKfYPA
 hfI46xebhdIQC7ICtoI9g4/i55UoG7FwbaPtVnKnlE6I3k6HPxMa13eLEJOGpfSLhbSnkTAw16y
 FMD8iVft
X-Proofpoint-ORIG-GUID: SxAn1Ln-EEekYN0bRwHq3CQVFpvTl5yq
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68d14c0b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=t7+/ES3qvP6ClPp5AF2fig==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=DlECaWPWOyncsgY1a_UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: SxAn1Ln-EEekYN0bRwHq3CQVFpvTl5yq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018



On 9/18/2025 4:28 PM, Marc Kleine-Budde wrote:
> On 18.09.2025 05:46:44, Bartosz Golaszewski wrote:
>>> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
>>> index ea41f04ae1a6..8c253091f498 100644
>>> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
>>> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
>>> @@ -16,6 +16,7 @@
>>>  #include <linux/bitfield.h>
>>>  #include <linux/clk.h>
>>>  #include <linux/device.h>
>>> +#include <linux/gpio/driver.h>
>>>  #include <linux/mod_devicetable.h>
>>>  #include <linux/module.h>
>>>  #include <linux/pm_runtime.h>
>>> @@ -1797,6 +1798,178 @@ static int mcp251xfd_register_check_rx_int(struct mcp251xfd_priv *priv)
>>>  	return 0;
>>>  }
>>>
>>> +#ifdef CONFIG_GPIOLIB
>>
>> Any reason why you don't just depend on GPIOLIB in Kconfig? There's no
>> reason to make it optional if the device always has the GPIO pins.
> 
> I don't mind having the ifdef. But it's up to you.
> 
> [...]

Sure, I’ll add depends on GPIOLIB in the Kconfig and remove the #ifdef CONFIG_GPIOLIB
from the driver in the next patch.

> 
>>> +static void mcp251xfd_gpio_set(struct gpio_chip *chip, unsigned int offset,
>>> +			       int value)
>>
>> You must be rebased on pre v6.17 code, this will not compile with current
>> mainline.
> 
> You mean "post" v6.17? Best rebase to latest net-next/main, which
> already contains the new signatures for the GPIO callbacks.
> 
> regards,
> Marc
> 

Sure, I will update in next patch.

Thanks
Viken

