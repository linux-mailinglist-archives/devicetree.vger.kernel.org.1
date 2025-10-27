Return-Path: <devicetree+bounces-231506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A758CC0DB20
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:54:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8A3354F49B3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7199F22F77B;
	Mon, 27 Oct 2025 12:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KPomL/Tu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEB822D785
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761569320; cv=none; b=PIVd9jDFfXyZNE2vft4bmeJ66v2xCtn0prV/QtTvZc+5mDNKQ31ueinL3dN9uGX5yVbXOB9qrHByE/C5jarouMfgC7j11EwGJhiB/KIbekaTEoPCW9WCzTMjWOQGtyshoPa/CbEnDUW30uTDQu/lkXeVSpbZ1sMpDzEYbTif5Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761569320; c=relaxed/simple;
	bh=kwPqXPxICWQRqS6XskDw01xKA1aAhRRks5SxMx/NbcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L1hVQrmweXCzXpl8D9wlJgF7iRYqQRfvqCrDl0R5aLdfsOh+vSBQxyvaA7Znsk2b6b6/Z4NVkMU7ApSeJu3Z5/2vK0ocgiGtj8Ggmzcj91f+vBs72ZQ2t/A08nyP6eWH2C9xFBpvpmhdQ7bun9ehh17/Way1iSzSeHqrcC6Gxyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KPomL/Tu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8IlRN1130364
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r/Uv8H0003TgVcInLi9IzeOjAS6Ozviq/41bAtMg430=; b=KPomL/TuboAPo+sl
	OFjAhcmiPhBOLe+KzbXBZfPL1GnTUPWJxo3IeZghUFgrUJN8pOvrMZSuAReHdxQR
	wckDlE/ZATkF1VKg50GPZ4TkORxLDdZyjCnBB9/b6kHx1x1OUncnc9gSYpNLHxpo
	x7aTMuHYd1OW4Ftn8Ge1Mx1Gb7j5CpM14Bgi9tBOtneblcI6Zkv5edK367lv4MF2
	qJX2BOfmw9GhI6Q8f/Q2ZyEPeD1vjUXO0x9japLYzIltFG/BfZWeSDwZJEQoMFxq
	5uWewu7IIky6BmISPqHJJ1OTis7rfcSEVczyxtnKvR7/znZ390THbegPFAs1bEON
	JDPmOw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nkamkxv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:48:37 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87df3a8cab8so13922946d6.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761569317; x=1762174117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r/Uv8H0003TgVcInLi9IzeOjAS6Ozviq/41bAtMg430=;
        b=BhHf8lyWCDNyIeseZetSBm6IbLWkdB+PqqoZ8Jbprj3bxPvExKD6dwbsnayXlz36Fv
         lGx54glF9lR8PqWlSF2As4jq3hjDIgvVohKBF6FrZ0SFP+wlhK3kK7Zs9OwpabqPz2+F
         YZOqYz67R34gpWGH9izPKppTOct/RJV5XjnqsX7Nc3YtQaQGfORImAUPxsDzmL1/q3pK
         K1n5qgf0muEQdPi2q2N4GL9FDKJashqgC9vZM2bA40w68rAN6y0LK7czfbNWQ7V7zaer
         m2I1YQYdnfLptmKXvObxgfIPwgFXatFd763Q6poZDTd3O0WkjP/GPpm5B+/M59t23xca
         QWEA==
X-Forwarded-Encrypted: i=1; AJvYcCWNkPUoNt542rCx20JmoZIyAhsdvRlyfoTTwIuM/EKXMU/wWexQ0LOVO+nGX1NIrVdU8Vh52CuKBIT2@vger.kernel.org
X-Gm-Message-State: AOJu0YyYqp/Qjdn0GvXSdt+o42JSQdzqxYf6O5XnN/MIvFQpPVSAuVrO
	z2iUL3KQcIn3FqN0RXpQXD/FYs5/zUVfIu7x8LVylfwDjjHTBvmJMUtaFXaqPv7N6+T6zhvadrY
	r0z6Cn/t5TTOGApXW+IxnG2/OTKFuZSGyXmjNBa5iZoRvbxoMGaPLT05XGqlbzKXG
X-Gm-Gg: ASbGncv+QVkfkgolKDgJAcuERm7MU7paWr/uBFvr5bDnxrp9P6nF7ZHpVsZEgNRFCQ3
	f6QtcTYUAPBkXvYdexKDKYahRx68e6uGbYJViqt7ISqkX0X+uUkTv2J75cZ5CoCZ/UyS9uhDeLF
	V/7QJGCrjfawWMQsBWHngIoFJTvW245hRJG7uUySBIzL/xXWWQlAr+TxU39uYHYZitiu6lXKF7P
	HHm0EoN+tbdFsfqJbDLP1JdTTuPBE/pppSDmwIroQeo1SDHJi1vN/pQGK7DV+nOHRKgj4GFjIyv
	I8TCSQ0uGEY1chBoQnyxgYu5o++T42Ux0C35t9W4PG46+cELafPkdFQYcnAV+9OLOBHzoQjLmTC
	FqRnFLfWaHeoyY5SAfiHu++6t5b9gAAPfIzOwDXdVx5OTFdsSHTJMSiX3
X-Received: by 2002:ac8:5704:0:b0:4ec:eef1:52f7 with SMTP id d75a77b69052e-4eceef16c1emr48423421cf.11.1761569317117;
        Mon, 27 Oct 2025 05:48:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdTHwN9Gandf3Nr8idY1T2xhuzqElR3BXPKvTHU3HR+2RoVvlDvxy/LNpNChn+i95pgTzFOQ==
X-Received: by 2002:ac8:5704:0:b0:4ec:eef1:52f7 with SMTP id d75a77b69052e-4eceef16c1emr48423031cf.11.1761569316647;
        Mon, 27 Oct 2025 05:48:36 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8544f8eesm736062166b.69.2025.10.27.05.48.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 05:48:36 -0700 (PDT)
Message-ID: <c8cac801-574b-4e4d-b233-56dc5cdbaa26@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 13:48:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
 <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AYW83nXG c=1 sm=1 tr=0 ts=68ff6a25 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=f1DJfOMeYKxADSZecjwA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: RvAl1j4e2cAugnQcS6E_DvW14KeKZSw3
X-Proofpoint-GUID: RvAl1j4e2cAugnQcS6E_DvW14KeKZSw3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDExOSBTYWx0ZWRfX3pcAWtXM7N+W
 EPRSB0JJpU+9kN04OK3VW8zthXGW3xIZgYY82Ep+jQD8+Sksnv4u2tE5QpYRM5NLkZY+N5pDGbe
 EU5ClQBwBP5LoroQ0vjMsBgNKAem+0JqziZcKWRZpegdpaTplnAyVmNkfHWRaOfoBYLC4Eu6A7X
 qy7tkp8+Sak5vbJp4d9OtNWlEtZ3RCxBComvhz+8FwkQqut++RE9MqmIIbXLUgEX9aTXZWl9KcL
 ph0A2La5D6tKF8cBgjMWq7plbdpStrkO/ns3rvy4Iod4HA01gfh97CycLHIp8OhqFzdeDzig86/
 2bBurtmsCOKrrdTFe7DPXY8mtsuYvi60MMOROYD4IFlLDg9GiDecRfjGQp23GVRN+kUqdieHHs3
 ZCL7Kr9vJg6a7rgaU6io3Ba1gtu/ow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270119

On 10/24/25 5:27 AM, yuanjiey wrote:
> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
>> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
>>> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>>>
>>>> Add DSI PHY support for the Kaanapali platform.
>>>>
>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +	.io_start = { 0x9ac1000, 0xae97000 },
>>>
>>> These two addresses are very strange. Would you care to explain? Other
>>> than that there is no difference from SM8750 entry.
>>
>> They're correct.
>> Although they correspond to DSI_0 and DSI_2..
>>
>> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
>> new features. Please provide some more context and how that impacts
>> the hw description.
> 
> Thanks for your reminder.
> 
> Correct here:
> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
> 
> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
> just some register address change.

Sorry, you're correct. v2.9 had a number of changes instead.

Konrad

