Return-Path: <devicetree+bounces-256150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF5ED33256
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:22:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 860E83022319
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9874C31AAA7;
	Fri, 16 Jan 2026 15:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cVJjBioS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gRwka4On"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C660158535
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768576736; cv=none; b=Mb0cvkzA1pgeMV4TihcVr7ZRemiwSNda1qMnTU8ayIpIc18hq+Ts95MK+4pOH913LbaVbZi6NPZ0SGKMCF172LpzZJ2P10e/e34cdzLJ06udAhTb3OvnasyGeOahjDZSd8TPmf1+dUZoyPJh0fa9GE6L/9ED39NxDJz1AefS/a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768576736; c=relaxed/simple;
	bh=q/2i4QMctXHF+dDhlqSpXa8ULXx0wN8PBam97iLzyx4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NcRmVZVwcJIh0xrlTcKB7lkToRNroTgEGNimudtSRqBMaoMRchkqS3JL3bqEIhU6qMBDt1dxCpwQcC5MTUudvAyfPXfN7o8q1MJZwNCnArXX4MxGGk57b3EWKjdo5wN+3b9AmDeoHVa4t6fGrVQPymHMaMXCNTlfvV8qtuZDbLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cVJjBioS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gRwka4On; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G9iIAG006930
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:18:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XRcRwBypFQShmuN0jEyzBJtIwf6t2aDrIBCTyHNhTLs=; b=cVJjBioSxB1YM+YY
	RD/27+OD87cRm4c4XZ/ogHSNFlOO8viEL7BYEuV7xyqP8RUVuydBEEiazoWosaUe
	9Abv8bYRdOhVrWCtF2SAgUfncEMV50B+RqA/TYTk7TPa2nncozkQjPgWi8bsgHWK
	GA/kB4+nGUz9VhuXS5IMarQHEA9f122rrrTy15vq4f/B1+/bF4zzDmwil/je60Gq
	Y2+HNvObXdlUfEpGAE3gA/TMANX1D/GWoQZ3pc5xOXrBgtUID1NGIp5GmV8CjGrE
	XvjYFnBZikD5fE4uSa11axV1i05KIGI6xwQCtNXpddTFis2V4APEtLy+qNe0opXt
	1+j1oA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqjy9rwe1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:18:53 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b21d136010so3492377eec.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768576733; x=1769181533; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XRcRwBypFQShmuN0jEyzBJtIwf6t2aDrIBCTyHNhTLs=;
        b=gRwka4OnfqkmCqwHfOo322XVwx4GjXUdUVOU5HggIn4ohOLEDj7kRQNwZDEOEnCBcu
         OcXOsnBMCHyAhbiODgMJhrl4wFdJmBaJwStfV/74t7k+nfSkeXUZIhXteDFloqR9P6wR
         +WMQCpLxdvarlKqWW0Ol7Nerg9cYdkrQSMgDpmel77XpJsFRY5iulYHg+UrHS3TojyyR
         clPwkqzb+Hf5euA/H9dNGv3CfhytMbi+pFTKEHdL1M6IwyD+ybL0hWpB08t3e3gUy4I9
         9JkydzcTBirXZiEDRJKfeCyMH6H9GulHlgTEreTiJYRwDUxBSfAzxiqagONyBeTSl74S
         otQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768576733; x=1769181533;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XRcRwBypFQShmuN0jEyzBJtIwf6t2aDrIBCTyHNhTLs=;
        b=IvFGHb4rrs65lH8j6nDX7xSvAi9karmWxDvWrcIKNMWxw2JZRr+Ev3zBKhGsbPwfO+
         i21pkUERv6TIt0T7tsM9x894oVjcNfdkJW8FdFwiJr+BLhpoHkcHRBgBd0TpMBu50eeM
         rA9aBgY2zjcvfpy0OK9OlNhN8Pbq9bvyjMKl1gsgBrVhcXLJ1VpXp0dUHSXctzUgwrt+
         mPb+7IFVO1rcpZ+uvhUQz+4O9j46XhRLTEzmUwWaDkGwJKKQ4VRcm1nTSIF1p+jPGaIn
         YEvxsC/7STsfuALOsf3mbVa4btP64fXh8GZ2xMWLS+aFW9nT2jqUrzTJ4aru14Xk2wMW
         nYVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHrDVDUQ4Q28fv+GDPAT1JAKBdX7OBc9+v0sgU6hXjUcEQcMhDG39/F2e6lx+YTkNLPlzGd9o3pnAh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7eKY0YyOCP8z4onadeKz6v+xsknBkXyqE1G+xxJTk9SI6hvLp
	BDrpzFsDFXtfOCHALy/RlaGLw4E0nWqC9dU8ewR91dm9763F0VeLWkkOU5DOwduF7vpyvkOCB5s
	J5eRR+K3u8RLhspOwgb3eF2h8KSpxmeyFgogS6NXLiKJpmk3sodAEkWEEv027XdJ/
X-Gm-Gg: AY/fxX7EW1JE+yggN1Jt1ZIpMovVWlpUi+bHkSj2OXzNMNQwQeMkzVezLq8zk3qYn5u
	IumlDUbDE8WTyuUXazbw32l1AetBF5euFYUEmyjIL8wqO7l93kuaBcTnRH1J/ZIkLMZaVcepLIa
	82Byf0hefdhKdxQg7Lb8vy1mtB3eXf6v11B9nU3Lq0zq9WT5ZF3D39RK2hGqaPsO2BhT4rzuE8o
	FLdxlxnZRQIy0PTOcAp86ePeXNYz3jW2uMTdt/GQtgd+ILDfSRSfOLveJ+ceK6lIkEGAu1t+gQf
	zTNDR+VmPqkIG7pQlyl2z6uz84jf7H3zqK19D5dl6Zn0993S7S6OPOCKcN7y50PMHALsFqYbtWT
	YtueKJV/68qeHwbbaOv9iIzApdyBP5o/Nqr/jiOMXD9LzcYgis/Dv4us+i7p0qUuulun7jwd4VO
	w+
X-Received: by 2002:a05:7022:4185:b0:119:e56b:98a4 with SMTP id a92af1059eb24-1244a6e070amr2977276c88.11.1768576732810;
        Fri, 16 Jan 2026 07:18:52 -0800 (PST)
X-Received: by 2002:a05:7022:4185:b0:119:e56b:98a4 with SMTP id a92af1059eb24-1244a6e070amr2977248c88.11.1768576732230;
        Fri, 16 Jan 2026 07:18:52 -0800 (PST)
Received: from [192.168.1.3] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac5842csm2773177c88.1.2026.01.16.07.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 07:18:51 -0800 (PST)
Message-ID: <132c34db-07c6-491b-bfda-f3c51462a184@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 07:18:50 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/14] wifi: ath10k: snoc: support powering on the
 device via pwrseq
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
 <20260106-wcn3990-pwrctl-v2-4-0386204328be@oss.qualcomm.com>
 <52b2b799-09e6-40a4-bea8-c7e8bf21cf51@oss.qualcomm.com>
 <15470b51-d398-449d-9017-304df5ad7cef@kernel.org>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <15470b51-d398-449d-9017-304df5ad7cef@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PCJH5-5lifwXkruTbB-bZCM3hoUzwhNS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEwOSBTYWx0ZWRfX7zHDheqFM7++
 0t2SnlsSE+3UISFq0ZjJBVGYqdOkc39suh7SI4Z8aihwL/HXkG1G7FJFOYIsT91sLotmsh9NVIW
 OixKCDntpz0Z3x+gzGDkZB1nH/OIHw2/dZmqtCW02AnplnZCWaQtCq9zHy91FAZnJWfcPQh+mi0
 Ouh+4qWb31Yyx7BbLQ+ccmWatUjyRgaXuqhPCDcOB3PBVRRVxzssM2O6030RXU9fZJ0HcGgNvkn
 T6355+XdZcin6Xw0VZuq0KsdGJRa/uj7r+Hts4hRqKHxZr5SoEvfMl53SKYPzcal7zCD7xi6G6W
 jPk5sBgmzTTwMR94rOSDLJ425P+75LYPmaAuFY1c1eXVMwuDA7rriUAtocuqOfKT658G9OWAMkR
 AQc9LRqCmZXQxi7QjVdUeOwcZuyinDB19JbSPIFbnqOG5h/66BWlFeU5uUZgowmJeIDa7heiRb8
 CinJgvIv4SnXBDLBg8g==
X-Authority-Analysis: v=2.4 cv=OJIqHCaB c=1 sm=1 tr=0 ts=696a56dd cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fl7gpmSGIpyIZsR_3woA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: PCJH5-5lifwXkruTbB-bZCM3hoUzwhNS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160109

On 1/15/2026 11:48 PM, Krzysztof Kozlowski wrote:
> On 15/01/2026 23:30, Jeff Johnson wrote:
>> On 1/5/2026 5:01 PM, Dmitry Baryshkov wrote:
>>> The WCN39xx family of WiFi/BT chips incorporates a simple PMU, spreading
>>> voltages over internal rails. Implement support for using powersequencer
>>> for this family of ATH10k devices in addition to using regulators.
>>>
>>> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> ---
>>>  drivers/net/wireless/ath/ath10k/snoc.c | 54 ++++++++++++++++++++++++++++++++--
>>>  drivers/net/wireless/ath/ath10k/snoc.h |  2 ++
>>
>> My automation flagged:
>> * drivers/net/wireless/ath/ath10k/snoc.c has no QTI copyright
>> * drivers/net/wireless/ath/ath10k/snoc.h has no QTI copyright
>> * 2 copyright issues
>>
>> I'll add these manually in my 'pending' branch
>>
> 
> And why is this a problem? You are not here to impose Qualcomm rules, bu
> care about Linux kernel. You cannot add copyrights based on what exactly?

I am a maintainer that is paid by Qualcomm to perform that role, and hence I
have a duty to enforce the legal guidance from Qualcomm when it comes to
contributions from other Qualcomm employees.

/jeff

