Return-Path: <devicetree+bounces-180400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 354F6AC3775
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 02:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E10418901EB
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 00:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F11135975;
	Mon, 26 May 2025 00:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lN+TQqbY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA4329A1
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 00:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748220055; cv=none; b=FYjr6fZq96bB7QznybRBMdWNHkrqHSLH38fnixyJ+vDwKFYj+7QMmAbOs/HAbebMSIsCtRYAVxfv+ZShytZUeybdwaKmpq5MPiN8rrESwadj1rVyIKG5pgjEB95ORah3eWB3Qr/LL1xXhv5k/YhPbxK1pY4f8mbBewSx5qArlvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748220055; c=relaxed/simple;
	bh=eDf+ZffPYevu//7QCROMTXdB2eZx9uuMQkLGooN05RQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gAuJHNrvw9JrZYumbv/mDSpIHXhvT4MP609YIAoELHvOz8SGKCM1JOX98JKtGa0VSxaTySHvxwGO/0/B6R9aRdaK8gU3GI1vsWm+mPnZvCD7NywmrsbJGXldKddrFjydtE5DHIj2snTvg5vyO7O6tsRdo6g6YieDBfIjgZvQ2n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lN+TQqbY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54Q0LCW2026422
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 00:40:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1hzi2nPklolyEsYrcNmrxVJGJxXp65Arp/I4H4KoA6s=; b=lN+TQqbYNQEgjwoF
	L8QJ5mtOfvIlWVhtrLlPgy3J7tn44KhUwPQ8WUgL6Zn/3VIQ2D5kzOsdD0x8ZuvY
	FQjVgvUzWdAjN1gu0nTG0COfzqK5N977zIdrCp0caPcRsPpPLHcEcd6hqdvEhUkz
	vX4m1zcpCqUOaUtQcyswkqA3YVK4C+BKoLuPoVh1xDnkLmBDS764qRHft5/Ft1ms
	yG/Cwd8eHd1b9Aw2bEjSDSIp4N0QZnEC1Nc5Kb7r2mG0xuOMieA3uTrjZF5pxa0J
	vnBAurm1ri3SGalcgyxmaJHXXN+Tz7NWyhvSbJV8hWEq5Sivg0vDunz4XgXMfh7k
	G6olLQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5q1tm25-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 00:40:51 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2323bd7f873so14300725ad.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 17:40:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748220051; x=1748824851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1hzi2nPklolyEsYrcNmrxVJGJxXp65Arp/I4H4KoA6s=;
        b=U3z5wEOwnQp0vWZ3dfLQlJ0LZMj2mIV1nz1aoVdgSaY6rCFEG3fMppU8o2PubQIls6
         4GYZhpvHtfaT2sHBdyLfvhyZ9DsRFSvK9f7G0tcRBdVLspUTGFc6Xognbz4BYydVDYES
         69pHC9E65stF3O5V5vKkjiqoyVzSqdUPlhOsACk4O28RZ+XXbrLZsA6O4FQBZs6d1TRr
         kvH1eIyuYGOTZlut31ke7Xj3WNIX0LshB6bBt8EktZmCr18TWjMK0D2iEWXzzWMFIPVa
         2qb5ohFSB6tCkTTNiCbl1gqBqy977/xAHcl5+pUGdFQtCtpN+XjwD4ihcwv94lowt0WD
         BkDw==
X-Forwarded-Encrypted: i=1; AJvYcCWr0daat1hlhMqDVU/CD+QziBOpuv31e10VZS1Ayyt9U4eUjpml5cBfBzyrWNfIj5+2XeI5gHoDkpQs@vger.kernel.org
X-Gm-Message-State: AOJu0YxcPBzEooaRrFg78LocqI80hORlKjG2I+6xTaMe9IZLzDabok3J
	tblerF0s7cJgK2BtYwE7s/FJgwtHjgFnGDAzhSa/QgWUyi3HwWNXBzOalotmAorIOt4YPSnYxaU
	E7YF9SNqJBTkC99CFNhQCDV9knTZ5Ja+cTuqczHWrAYvMwixc2JZlL6sl++4rfE/m
X-Gm-Gg: ASbGncuSs2VwcyxgjSVYcvc9rtQMcRRdGEGtxUD4KLnIPEifTr1FGaHdavyZEDd2Ls4
	y+DWBYW7yJqn6qPWO63vwGZcTyJai85Um47JrJsVLmLHdGoqPzZcVUwf7tkx2xnfr7re4j/9iaF
	oiSH5uBXlcFR3WAAi1Qp7QWPtS/omUkr/eH82RS7t/U32LtdXw7TmrW0u0ycmFFgXx5i9hiS2AQ
	+d8fCoR2/OWBoA3/TzguaQ76jSq/vpA/kveBbwqDIiaWL2xF0ki+TkNRBVf84v8zk2vxzIVWHPQ
	M7tILJR51D5H32UUz7fVGF/QeRDDdYakGD3XcVsweCnNy5tVKux7FIyxCxaMll+I2wWJxO0=
X-Received: by 2002:a17:902:da47:b0:22e:7e00:4288 with SMTP id d9443c01a7336-23414fe5b9fmr121313455ad.53.1748220050739;
        Sun, 25 May 2025 17:40:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhbrhY/0zAbW7xDuVgAU/6z1fjjjqI9N9SGYr9ThUbycoe7cXdTMmuo50PD/MqRkMs08K7Ag==
X-Received: by 2002:a17:902:da47:b0:22e:7e00:4288 with SMTP id d9443c01a7336-23414fe5b9fmr121313135ad.53.1748220050370;
        Sun, 25 May 2025 17:40:50 -0700 (PDT)
Received: from [10.133.33.76] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-233ff290d45sm39416345ad.153.2025.05.25.17.40.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 May 2025 17:40:49 -0700 (PDT)
Message-ID: <2f010e28-121e-4e60-bf48-5ee5bcd0cbea@oss.qualcomm.com>
Date: Mon, 26 May 2025 08:40:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: fix a crash issue caused by
 infinite loop for Coresight
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250522005016.2148-1-jie.gan@oss.qualcomm.com>
 <757925b7-3795-409a-9419-b33767c49e2e@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <757925b7-3795-409a-9419-b33767c49e2e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -SxHPfeCuKI0u501PXKXgEe7uGiMyJis
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDAwMyBTYWx0ZWRfX9zqxDpMD9Q6Z
 yfPPt0nHI344LkMaHKDL5AWHnUIT9GXxtNq3oxLas/W4KdNw5ff9/dMzZzwu5SGzT1uMrS28uTS
 TNxR5Nn/tJU4rlESYyNOKogn+5EsWTgug6g4pdEmH8hD99EUYqZ0cM80k7sl0J4Pw9EwzJS5xG+
 qAhbwtE4Wy55+6dRiSyNQFrtaeoPuSYJJVoNHl3UgUc+piiazdMA/3q6g57cpTMx/cYhdGD7y4Z
 GQ3ny6rwAHxRnlYcyO9ffEdJpiVg9VidA0yl6DpE3pRm6PHNGdC9xlRV0CGBN69V+9ekp+qU4Dp
 J9SVaLnJTJsRPMXAoxcaa+jNIwYJl5cDbT2O8OjhjErjk4X+FuicuHyJd95RmqHh2m3fZQz+ZA2
 QQdROgxUQkgecU1W3iHtQtQM12nFCSe7pMFKj45zoFjYqUTxX3LUkK/Y9MBkO7N4CfQr2dN+
X-Proofpoint-ORIG-GUID: -SxHPfeCuKI0u501PXKXgEe7uGiMyJis
X-Authority-Analysis: v=2.4 cv=FLcbx/os c=1 sm=1 tr=0 ts=6833b894 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=xnzTxB3kx4SK0ZEB8yoA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-26_01,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505260003



On 5/22/2025 11:06 PM, Konrad Dybcio wrote:
> On 5/22/25 2:50 AM, Jie Gan wrote:
>> An infinite loop has been created by the Coresight devices. When only a
>> source device is enabled, the coresight_find_activated_sysfs_sink function
>> is recursively invoked in an attempt to locate an active sink device,
>> ultimately leading to a stack overflow and system crash. Therefore, disable
>> the replicator1 to break the infinite loop and prevent a potential stack
>> overflow.
> 
> Is it something we can fix the driver not to do instead?
> 

As Suzuki mentioned in other mail thread, it is very difficult to 
observe the scenario that there is a loop in the path by current driver.

I tried fix the issue in driver before send this DT fix patch.
I will continue to seek an option of fixing in driver.

Thanks,
Jie

> Konrad
> 
>>
>> replicator1_out   ->   funnel_swao_in6   ->   tmc_etf_swao_in   ->  tmc_etf_swao_out
>>       |                                                                     |
>> replicator1_in                                                     replicator_swao_in
>>       |                                                                     |
>> replicator0_out1                                                   replicator_swao_out0
>>       |                                                                     |
>> replicator0_in                                                     funnel_in1_in3
>>       |                                                                     |
>> tmc_etf_out <- tmc_etf_in <- funnel_merg_out <- funnel_merg_in1 <- funnel_in1_out
>>
>> [call trace]
>>     dump_backtrace+0x9c/0x128
>>     show_stack+0x20/0x38
>>     dump_stack_lvl+0x48/0x60
>>     dump_stack+0x18/0x28
>>     panic+0x340/0x3b0
>>     nmi_panic+0x94/0xa0
>>     panic_bad_stack+0x114/0x138
>>     handle_bad_stack+0x34/0xb8
>>     __bad_stack+0x78/0x80
>>     coresight_find_activated_sysfs_sink+0x28/0xa0 [coresight]
>>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>>     ...
>>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>>     coresight_enable_sysfs+0x80/0x2a0 [coresight]
>>
>> side effect after the change:
>> Only trace data originating from AOSS can reach the ETF_SWAO and EUD sinks.
>>
>> Fixes: bf469630552a ("arm64: dts: qcom: qcs615: Add coresight nodes")
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>> index f08ba09772f3..b67c1f8a1118 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>> @@ -1902,6 +1902,7 @@ replicator@604a000 {
>>   
>>   			clocks = <&aoss_qmp>;
>>   			clock-names = "apb_pclk";
>> +			status = "disabled";
>>   
>>   			in-ports {
>>   				port {


