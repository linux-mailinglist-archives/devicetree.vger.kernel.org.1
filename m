Return-Path: <devicetree+bounces-213377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4F7B45458
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:18:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC44558812C
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9FB52D46D8;
	Fri,  5 Sep 2025 10:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQOqg39a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7CB2D5A01
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757067497; cv=none; b=bvi/TRAjwsvh7mO51b91T9jWpZBMY2a+hcP9TQJM3oXsKIfS78GFQQATDpntdm2TN2mVJuPp8FZ4m4OvyJSRMgb1+BVnltsIv30t5bVicUzQUJUeDj/pns22Jx77upGh963Y+2xcKIQTKJ1Zi9nSLmRwaPHC/C41MF4tLBShrtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757067497; c=relaxed/simple;
	bh=ABIur89UaUQH4iZhJ+8yg3G7Bz9ucP0nEgnuQpXKwug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FsxprE6gcpX3bAxsaCE6xmeeSLOSLziBGvPPlgZ4vWsNqFiY9++34y4M3RCeofeFHDxn74QayABtWWAuRQ7xCUE8gbwmQb7FgeH4drIHwvkcfCWRQRLm4hHxvS+O8s5yOHlpoGP/gfcyCIbvf+Z9AZSD/rYH4sFTvLPq3UJi8OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQOqg39a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58591OmM022479
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 10:18:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t/gSGlaIzRrQ1UraurtZ6p5ivpZcdKP5Wh2vnAwoGro=; b=DQOqg39aApWu6FTB
	f21EDHdaRmdaVRIupxSUQpQELbNVMqW0EdY7poiLjg/hn1vpJkab76h+bo6I97NV
	RMBv8hCjllImFopK2GstBG4XQ3+UMF6ho7Us1gUoJzGf+FiNS3yHVOP/pEZ4bs88
	0JzpFSSpyqLnDDj2dc+9eU11mNNnaPBTh/fRRYUQr4UO48kqs/dnI26g72v48Ju3
	OFLHG579QUPkqzjyUTgFq6Qh/ap+RsAvy8V/gViWMPb/qfFVCDanjM2wEpb6OPM5
	1SjlIwkT4VXAu1Pw8pSF3EdF5jzbevDWUAS3Qg3WsjXFaLvRfJ9vi6D0L/z+Q9tN
	NnZ5+g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj7468-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 10:18:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3037bd983so9484131cf.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:18:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757067494; x=1757672294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t/gSGlaIzRrQ1UraurtZ6p5ivpZcdKP5Wh2vnAwoGro=;
        b=D1uxAl2VfbpWtpvJfOwkmvBizEFVozCLg9C2GZWthqeenziC8lKd17WN++SJGyeJRG
         dNiHhQiD4N7f1UCnRsUjZssNNj7ahIC8C7zmG/LuBWAGCuLRTtC7ihTtEphQhMCDdAGz
         QMV41uUHrP4kKsDpl69ESqLlfP4QLyS0I7tVVbie/f7sXXPRP2+f0ku7oS+QcayFn4i5
         tYkKJmP6ydJh9n6oS+gRpQL30ADxaIsl+Vi/kYlYx+4n9qRZqKEUO1DutM8OsyXfGRgr
         LavOpn78oPNGCmQQTMRPgPXxEbaHqLw2+gc/afKwHPfBRS5Uaq6Ty4J/H5lzHq/DxRCM
         aZNw==
X-Forwarded-Encrypted: i=1; AJvYcCV3tJG6tw4dzNIhqZQr+J59l3/Uw41Dfya4Ag5F7b8QJrnh4R9TyAjqUm50YmvA0E0V2fZBA/QoI1Kq@vger.kernel.org
X-Gm-Message-State: AOJu0YwLLzrE6szNALzmV1I5yheUh0bZxC6VOaG3WS2qkcptzzh+Am+0
	WddFvXhGdOYXEMk7PXihUo0A5hynq1Zvjqn7SJQ2vC6RiINZaW8JINpJEuqpNcDlxGHwKy1io1O
	IzbuIe0pbQAibPmAMEuGGEvBlE47vzQBkXb+Wot9bGQJQ9Dt/9bbjqd2tgfL++gpF
X-Gm-Gg: ASbGncvEGl6dO/xPK9AOMKo9Lm8WLLGEls/QN6DxSZsVovaGL8M8mg+OdO86QvPYCjv
	Jj+Mo+iaflrdmrIcBnGOYVQkZUvZ9zkMFQTb6gIgr2/+waC9ayHMCrV8xRMHzvQXJGgZFMpCbj5
	pIgBtVm19W6KD3imWrPH03kJj90E+ZP3iIH+sJcuiNyzp7GWwYBDZRNRKKh7xsIGCUxOPSrAGAd
	IejvVBkAEaFF18z91QaSwNXy2pPpMWBu/l1Rp7qK9QJt8QphfAva3tUuwlrA8I6kUXyN4LfrpHY
	/+a+NfkuOSU233JJpPehhNJFjhqzUb+oFfs2gcrIzqeQHt7jtJ3e3frtL86n
X-Received: by 2002:ac8:5d12:0:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4b313f0e6e7mr209821031cf.8.1757067493845;
        Fri, 05 Sep 2025 03:18:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGm0GDPluBTH8wXrFIv4L7Am13spyB96fU1sGLB+ZWmCx8jJQENGynGmk9e8TYrCKMaZBJvQw==
X-Received: by 2002:ac8:5d12:0:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4b313f0e6e7mr209820761cf.8.1757067493074;
        Fri, 05 Sep 2025 03:18:13 -0700 (PDT)
Received: from [192.168.149.223] ([78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-621295d635asm1546531a12.40.2025.09.05.03.18.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 03:18:12 -0700 (PDT)
Message-ID: <e7f0b014-3dec-4276-a2dd-479d4248c7e6@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 12:18:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>
Cc: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250904001014.GA3405605-robh@kernel.org>
 <a547ecce-31c7-4627-ac6f-aeeef81bd0ff@oss.qualcomm.com>
 <CAL_JsqKuoJrkActpLXVUW9e9=R1FESUbD_rwBd5NGX2_Yv2ASw@mail.gmail.com>
 <99cacf08-0fb4-4b44-9036-96ea5fe01c10@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <99cacf08-0fb4-4b44-9036-96ea5fe01c10@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX3KG5Xjk5CbJo
 a7s0WOyIXGNans0uvyq0AwFKbgbyWfRHDvtFPwLddOPg1qJSNgbK/tRQy28M1N7wEEtM/L9GT0F
 J4p/xWkn4zF2hJ1aC+IaRpPi0lh5FdktQQKgTL247oPoLcc+G8E4jMi/FZJRD1B1qYhi6qtMcle
 11B1ukaiunJI6aNFRrNF+4UxpvPH4Bak2SbllJSVkOfKbuFfvisrWZzTKV/Aft6u3h/KuxWwjXL
 k7sxFoKoGNKIJrAEYXxbftdUy7fvCaD6NUyYkoGGbiLNKjCJOb4jaZT8wIXXSYCZA2ReXUmNi/7
 5MFWodr9HRodgSGGt/G0l3RpXK4ILZPUZNxteRYC9iTJmAPkEraunMGh6ZAQj7/klmFYNRqRMBc
 km6MPyi5
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68bab8e7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=GTJIHFHLksMJQnmeIaAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: c1UZSUms0IBBuC3rh1U0Uiu5Z6cpartn
X-Proofpoint-ORIG-GUID: c1UZSUms0IBBuC3rh1U0Uiu5Z6cpartn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_03,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On 9/5/25 2:00 AM, Pavan Kondeti wrote:
> On Thu, Sep 04, 2025 at 05:51:24PM -0500, Rob Herring wrote:
>>>>
>>>> Why can't you probe by trying to see if watchdog smc call succeeds to
>>>> see if there is a watchdog? Then you don't need DT for it.
>>>
>>> There apparently isn't a good way to tell from a running system whether
>>> Gunyah is present, unless you make a smc call (which could in theory be
>>> parsed by something else, say a different hypervisor..), but then this
>>> patch only introduces the watchdog interface, without all the cruft that
>>> would actually let us identify the hypervisor, get its version ID and
>>> perform sanity checks..
>>
>> IIRC, last time we got just a gunyah node. Now it's that plus a
>> watchdog. What's next? I'm not really a fan of $soc_vendor hypervisor
>> interfaces. I doubt anyone else is either. We have all sorts of
>> standard interfaces already between virtio, vfio, EFI, SCMI, PSCI,
>> etc. Can we please not abuse DT with $soc_vendor hypervisor devices.
>>
> 
> We are trying to make the watchdog work with existing SoCs, so we are
> sticking with the existing interfaces. The newer devices will not
> necessarily need DT to probe hypervisor interfaces.
> 
> To answer your question on why can't you probe watchdog smc call to see
> if there is a watchdog. Yes, we can do that. It is just that we won't be
> able to support pre-timeout IRQ. This IRQ is optional for watchdog
> functionality, so this is something we can explore.

FWIW Rob, we moved on to SBSA watchdog on newer Gunyah releases..
Which is not ideal as it's still over MMIO, but there's some
progress

I'm not a fan of including the hypervisor in the picture, but as
Pavan said above, we're trying to squeeze the least amount of hacks
necessary to get the most out of existing platforms (i.e. ones which
will not get newer Gunyah).

Perhaps we could extend the MSM KPSS watchdog driver (which pokes at
the physical watchdog on the SoC and whose DT node represents
"reality") and have it attempt to make the SMC call early during probe,
making way for both physical and virt configurations without additional
dt alterations..

Konrad

