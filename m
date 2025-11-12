Return-Path: <devicetree+bounces-237769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 547DDC53C67
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CF9F42197B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30CE345CDE;
	Wed, 12 Nov 2025 17:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QsGiCItF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BjkvbOxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA9C345731
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762968599; cv=none; b=faiyvG8pyESfKi3FQX8OaNfUpQjBKe9HeUUhm0NmbnjH6GSwFGPv9JrV4ipK+NC0aMNd6RNM19sA44CIEbtrsEl8sZWnRQg//G1fVwdtma0H/aPs5ZeftWVNQQ+OjXmSjRRopNmrfhG0W3nKK2+dUuhVSbfiNseeo+qtMPZQHjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762968599; c=relaxed/simple;
	bh=xqPVcranU4xmlvFEDnu1TmacOpsOaBbCn1NOFJMmDWk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IqJ86qVenKiiy6KLZWK21MDO2Vad42j6hwR6RCaCTJ2D+dDowVV2Vc7q/8ARAdJzdwIMdqlRMCPc6JFZvpHM7q0eVk78JP3y2OjeWFiC+LpLhLCNV9/LCXrUvN+2WJHx4uEvNdhbto+TbhTreuDo5kMRU3pNeLNKhLshD26nW1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QsGiCItF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BjkvbOxN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACE330B1270222
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:29:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e08UAvHE3HwHNhFXMb9zeUVXGG109BSK5gKH53JPKPI=; b=QsGiCItFKl9i1/1T
	pJ1HGJCr56iP305Q4gOaPjrzG9V/x9SeOvbr7KsTAFso6WUG96K4SDJrprm9+ccA
	dCvNn0xK5lvOfTsx+pW7UhmnCDRTfQpfW7ZWG13akTzS76gvnnsOSwh9NqNpcg/e
	DyZl7nptP2i3tQ4JVK8fZ7ws7eT4aTKmI9X5y9ACTJVoOoYgqLQi5yfEu4qvxvNo
	c2mpyl1eIIUe9Aabs+vXHBOQtkmNtADiDaZjePpQjbXipRvRz1rg561LXYZ3EUvq
	+OeC+7tATnBTWPvQvilFLhPEerYD4mAfyRWwNB67a+EH7MmBs5RglTrIIFwF/Two
	JO5hyg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acunm0r0n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:29:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297dfae179bso25686395ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762968593; x=1763573393; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e08UAvHE3HwHNhFXMb9zeUVXGG109BSK5gKH53JPKPI=;
        b=BjkvbOxNSA6qTUcyczOIKqh5gr2YcLvAAUg5GTSZnj580NuEnp3Ocf5CAlWfZEotVX
         FvRuBBrVDbBLbKQv02KM4FNz9/MOJDM9VRblANjS5VYqWgDPSrfEpPoy3JERw94rpyoD
         0FPSlponXd6scKezoZKqj5dKNOnoR/WWXWSnIeXc5W2wVAuJ2no3u1IcACIMzKl8rBjR
         g58y2kHKCMGBUN9XmMBM37cacNN+DNfPWLP6nxqPCabC6IpQsiSiS+Pj7uhOt4AsYY6y
         xmWfSh44xVd7toAS5fuxzOv0n2ARfJ7cNVyhs0Gqp8uIF9nszV2F8ZJhHarZ9ro/uKuc
         E2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762968593; x=1763573393;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e08UAvHE3HwHNhFXMb9zeUVXGG109BSK5gKH53JPKPI=;
        b=lzKZ76f7zSNY7itt6z5sBBBbcS1h38fjpyP22nn4tNyNcsGivpcCQ++IBrtdFQxzum
         LcjqG//AOaEpXvaHCs9lJtmqHE7HJKdzcHw/rnkYbHrdzMMtEJU2HOlU9OiIxq1wtmUo
         TQFD48GjzdLEdoAAhIXkyQ3UVbGF+C5JAbFcJF9dZ5P9VFTZxKM43KRwGGwhqZFw2xva
         3lyw1ExuFYpgniUsgGkrsqCywfSKzx+QI4mqdclFGkJErUjvOW2prVxwdsabQ1sQnOpm
         sqwTP+rFDEdF5BBo7upiVw1ps6PobMQAzkKTVmvYaoT67IlLxNVFkuz5WxFuEwYM9o2q
         jy0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWoHNt0pVgyCD7TVorY89MBleVgQtElwt0+9VP6wK4bWAONQJxvyPMi9xY+NqZn3PVNN3ETXL3ZpNXE@vger.kernel.org
X-Gm-Message-State: AOJu0YzG8eMKbPdrxeTY8YUTZ0IiVjztNlTqrCDj+Xs3J8wR+KCFGrQQ
	UKmc14E2X6LpVlf36N2MiduqKSuSK91ynwikSR43iNXb+cjOZCktxLO1N0oqTZQG3bwU0Eg+Qos
	/8YuTI2CEU1og2yHwurCyzA4OlWKfMYQqyidZgxSgL+40WMTHy3zqWqjWYl0vAd93
X-Gm-Gg: ASbGncsqXsfxcuA5kkOQdbSDMt6CsOASLKBBCvXwXpJzdWnMJABETfBjHmxLUh2BLyY
	qBP9Zq5obhAAJeyKe8GB1qVbBDcGglYOXC230njYeGqUJg20cT0lHVc29S30x5MNdCbSDLqngw1
	vdUR/OUaAAAKyFiJqcuuHCJC70LExaq7+JJh7BDcICbsn5I3jkHTQen5KERKS9zVYvXmDKStexn
	0mAy0VQSs5Zbq9vlyXFXw6KEH322LC8bdVZvgwWGJVHAUXqJL+vQ8ZwpfEmHLMcKKInudO4LSlL
	TnaBCeDBADnXSVByK72KDxY1kXwreay567QJtu4CMaze4FiG8dBanecaS0beouzqn0aksVCNBF3
	sckZ51u5wudt2Iwr++havhHEOQ097st9S
X-Received: by 2002:a17:903:1211:b0:295:a1a5:bae9 with SMTP id d9443c01a7336-2984ed2594dmr36215475ad.8.1762968592821;
        Wed, 12 Nov 2025 09:29:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJ2HzLkIezdF965YJswc0FqGVDKJyjtb+WQ6A5da9sGC1VvOWAJVcFOByW6f1oWaWQ3aYZ5w==
X-Received: by 2002:a17:903:1211:b0:295:a1a5:bae9 with SMTP id d9443c01a7336-2984ed2594dmr36215185ad.8.1762968592289;
        Wed, 12 Nov 2025 09:29:52 -0800 (PST)
Received: from [10.216.19.73] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dc9ff68sm36244955ad.56.2025.11.12.09.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 09:29:52 -0800 (PST)
Message-ID: <4d344e64-ed4f-eb9f-60e4-1267ee53b839@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 22:59:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 09/12] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-9-46e085bca4cc@oss.qualcomm.com>
 <3gvxaeun4i3ajoo3perjvdsohmtzgstsctdilorr65eexesxfh@hyoinhvkgi3c>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <3gvxaeun4i3ajoo3perjvdsohmtzgstsctdilorr65eexesxfh@hyoinhvkgi3c>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE0MSBTYWx0ZWRfX3nfo1DfPAcXc
 eOF3g67u6f6dKzWRq6YloWqLbnox9owGowPSUEMHhq6KGO/scztd0D2Pmg1zD8zlTOsmBujyPzZ
 Ffi/Oa8+X4GjYDYVKrav/VyAW554FghROfZEESbGRkj/r6oBKVm+HGmLFd/ykS6szvihR/53v5/
 3jG1Ml2RM/sKvmxWY+Zx/gHEmfmuriJYk0ziOSeJQFb8V4576xt9dYZCcdOrBq05CDFLAlpNfaf
 NHMKozAl0Ij+4htdlpBVxM79+ZJ5GKLyJ+OjKt5UqO9c/AZBkChwBWskkNIvvTrWSNRtMuPNNci
 tmcTPKwzoi8j59g/2sM7SECHMmYJL4GwntrN1wsqVhGHn98vX/2aqs2GTIdt9EMrvgDOYqFxRyX
 aDmvyIkg0TxapwXxiVkq/KIOWLaIiQ==
X-Authority-Analysis: v=2.4 cv=aLv9aL9m c=1 sm=1 tr=0 ts=6914c411 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=H7Ky-y1aa2JJ90q3J4YA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: K63Tvzssc70iUqpZqa0B834RirkQw6dN
X-Proofpoint-GUID: K63Tvzssc70iUqpZqa0B834RirkQw6dN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_05,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120141



On 11/11/2025 10:29 PM, Bjorn Andersson wrote:
> On Sun, Nov 09, 2025 at 08:07:22PM +0530, Shivendra Pratap wrote:
>> From: Elliot Berman <elliot.berman@oss.qualcomm.com>
>>
>> Add support for SYSTEM_RESET2 vendor-specific resets in
> 
> Please rewrite this to start with the purpose of the patch, introduce
> the fact that we can use SYSTEM_RESET2 to affect the reboot mode.
>
> Make sure you include the information that this isn't broadly available
> on all sc7280 devices.

ok.

> 
> Please line break at 72 characters, not less.

Ack. will keep note. thanks.

> 
>> qcs6490-rb3gen2 as reboot-modes.  Describe the resets:
> 
> This looks like the header for a list, that documents "bootloader" and
> "edl", but it's just one lump of text. Please improve the formatting. If
> it is a list, then make it look like a list.

Ack. will update this commit message.

thanks,
Shivendra

