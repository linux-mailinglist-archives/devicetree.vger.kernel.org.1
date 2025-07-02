Return-Path: <devicetree+bounces-192112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E48AF5826
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 15:11:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D7FC189EE8E
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71325272817;
	Wed,  2 Jul 2025 13:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iZhvQyam"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C814523BD0F
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 13:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751461893; cv=none; b=QYceYKG5OiGgwgi81eHFCTCaEITOov69y1b5dvFyPooBcTfPFujadmaipdVBnI1CDrBGQxosn3bI7ziqmtJLUrZVP0DVRrKRZIrXkQy2X9/VjNyOWKcvNixTiYZdaJZUWDXUQxMrH0mHGNGHdIce91KrP+TOmaBFWaK9M6y1+vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751461893; c=relaxed/simple;
	bh=2qnYYx6xwWMHatqOtbmA5fZZO68GJhtCXnEdgTR+uR0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IkeO7ph1HHlKnPEzoletPVcAYhKKpcZeQiLYX0cXIfS4qViHdBjDXaSkvWlDZjn75RXoZi/X8blzE0CCXcztVk2K/AR9mAwcUp9xrdXbL/j6voUHP2d6enhXGPjkuqjMlkCrsnIw/9RPY5HgSLe1jPOluA1g1yTdJjbXJQrB7ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iZhvQyam; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5626kpUx025936
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 13:11:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jay9izauXc/A0gdbOKQN9NpMjdCplbml2iUZTiy4bd8=; b=iZhvQyamk8dz9MfS
	UNokItTXOgeGBF083BrEcVIIhMMAfXDNJAjHfP/bbXe4j2qCqvaiG+Rp41kq5yHe
	cnhVgPEQUSlVOL5jFhFKDZlhcuJ9WZx8bl7iiow/OEyvH8ChfcKNzmyklnsaCsbC
	peP/VUt+IKdoPXHeiFr3BUDV91JT3gkcIkqi5SnsQyVrGuy6W8IUhCd+XY2SYHRH
	gL+V0MIEIuipWxwf7CYVjsjV7mUbG8rbqyep+KOoQWqpXd8XoyZlGiEnjKoTKTni
	Cte6NzLNkMBUY01SDrYRezE+WwMJKzp5z9TzPirnYc1bahDsrM0Kj1Dr81lu4Dly
	6QXjaw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64sweu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 13:11:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso219544485a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 06:11:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751461890; x=1752066690;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jay9izauXc/A0gdbOKQN9NpMjdCplbml2iUZTiy4bd8=;
        b=DPA8agEgEHz91BlYsk2klIolQgjcEfWxWfssa7FySYKiPdheTGnsu1bjolv10xwrvO
         3Mm/fHsXiR9SN8F2fOn06jfQsEE4uCfCTz/dIe4OxDE3JgcxJItW16uuzIsrBOhl75jO
         G86gUGwqqXfCTzTSm4eLin0XbJQ+wOwmgz0a5sf29xUxxJOJjxinf5M88OzQsfPAcU6V
         +NeekqeNyW1QYXR/Z7yDZ3vQj4raOhGoWpLKveyiLTQkKvFL9xMbMOx86/m8M84l7A3W
         LrWdL66xdrvmxnF+zDnbiic+LWZcq2yjKF00IE5mj8v/eSoLL95W/V87DGgUDD2lrjW2
         Xi2w==
X-Forwarded-Encrypted: i=1; AJvYcCXLz5+nOrfCXZW9cra2CyT6ZBjuMNBdlsjlB7A+YQe3xvrVhqrZr+8uMYQ/UIhR+dV3aRZqR21gY5XW@vger.kernel.org
X-Gm-Message-State: AOJu0YzHsUz6rH0AyirzOegaxOiYuKp8d8pvru4wr7IkrSTjBGS6w9n7
	3IZnxjMfL/roHNx2JZYUDA2Dt2EUMdJ7HgClys6C4Jj7uOhG5ifmair1opb7HESeMzGW/JsRPgJ
	Zfco86sOa7OmMViSkiPwT7hWVNO0cc3sx/JXIPfpQLXGRDd+g6dnygmWuf4k7eu6/
X-Gm-Gg: ASbGncu0EMv6L+F2Ym7+BmTwfNV9tOXvVcFcJV4vBadF7C5CwGZ9EWAgSO5xLOKX5F2
	3f/Mi7U7DeG9TC6gIKg7829JYsm7DNZD30GEhYuy3N6zusBnu+L0B6o/0LfjLcCFDYjps9MAEf8
	pHS4KUvtSlrSt2ompG3uWFRyw+Okd2UVPtLOs8aUOxZ6hb7AutlEOloV+nD3FyJ4DHgbAL15vU4
	ToVFIDqqcAz/jZh/XmX+KCknjWOVEhJlhwHsg2FJnGL9NHvjQFtAmUy0b85teUTiP1roO85AeUs
	+AqKXenoTnE+CKBcQdqLbV4P8WmiwfqmuYgD/3Eqkwk8fRVRj0NMJ8eqIaB+iukYjSM5FFEH8Fx
	tQKk=
X-Received: by 2002:a05:620a:3954:b0:7d4:1ecb:dc36 with SMTP id af79cd13be357-7d5c471292emr168243485a.3.1751461889668;
        Wed, 02 Jul 2025 06:11:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTS+JCpkO+wdIex8GFBFpWIr+rL0zlZnGn08j7hpD5QH4DqCrlEVJJr/mrxA97KHZJKBH54A==
X-Received: by 2002:a05:620a:3954:b0:7d4:1ecb:dc36 with SMTP id af79cd13be357-7d5c471292emr168240985a.3.1751461889141;
        Wed, 02 Jul 2025 06:11:29 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bbfdsm1080255266b.115.2025.07.02.06.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 06:11:28 -0700 (PDT)
Message-ID: <9f5be122-302d-402f-91f2-675507612d32@oss.qualcomm.com>
Date: Wed, 2 Jul 2025 15:11:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] media: dt-bindings: add non-pixel property in iris
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <20250627-video_cb-v3-1-51e18c0ffbce@quicinc.com>
 <19dd2e69-ad13-46f2-b99f-04a5e26f10d3@kernel.org>
 <08c8cdfd-099e-7b90-b163-23ecee3a5da4@quicinc.com>
 <118f2cbe-d8bd-4177-b0d5-91d9f1dbbef0@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <118f2cbe-d8bd-4177-b0d5-91d9f1dbbef0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=68653002 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=wGamMhhJhDPYSn1yWlIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDEwNyBTYWx0ZWRfX4PKPqY1GDinQ
 7nCntfrHUvkDEWD4tKCq27M97XfUK3aQZLyRW3f9swF1jq27YMUjYLfdcFqYjRFNU8bzNU4pUyX
 cB1fKmuDFi3Syubhell9KyVR72YLAcEzqdiwVljdN37V0KrySoHiSuoSeCfN620DxqpPv2rzOZh
 RuXMLH0SbjiUY4QIwt+ShpOioYqCqIdLJNj6YYUKkAtVaL9TYV8lWiL7jCA85X5joQcFROvVZho
 3seye8D02ONfAZP1QaMHM6u/SVR5EAYs0OzW3sza/WAvcPmAQOuF1ObH/gV11o4nLBBn4wHIn93
 f3JqsfnBqsqrfg71sWoi+g8brWcb+Ic5S+tCWIXLXpM07AWHx637wT9q2Y+/f2avHLgQ7fbWKBb
 f9bFvehJWzTDOwz2qwxbrnj1ykNdPGcWz2t82ORyES2zGN+eJWAU1IgJ/CNGEXmjHv+HZY5K
X-Proofpoint-GUID: ri_8hSaEQIxWwlSweF006bGQOaGX5BhN
X-Proofpoint-ORIG-GUID: ri_8hSaEQIxWwlSweF006bGQOaGX5BhN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-07-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=822
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020107

On 7/2/25 1:46 PM, Krzysztof Kozlowski wrote:
> On 02/07/2025 13:32, Vikash Garodia wrote:
>>
>> On 7/2/2025 4:43 PM, Krzysztof Kozlowski wrote:
>>> On 27/06/2025 17:48, Vikash Garodia wrote:
>>>> Existing definition limits the IOVA to an addressable range of 4GiB, and
>>>> even within that range, some of the space is used by IO registers,
>>>> thereby limiting the available IOVA to even lesser. Video hardware is
>>>> designed to emit different stream-ID for pixel and non-pixel buffers,
>>>> thereby introduce a non-pixel sub node to handle non-pixel stream-ID.
>>>>
>>>> With this, both iris and non-pixel device can have IOVA range of 0-4GiB
>>>> individually. Certain video usecases like higher video concurrency needs
>>>> IOVA higher than 4GiB.
>>>>
>>>> Add reference to the reserve-memory schema, which defines reserved IOVA

[...]

>>>>    dma-coherent: true
>>>>  
>>>> +  non-pixel:
>>>
>>> Why EXISTING hardware grows?
>> Same here, the commit describes the limitation of existing design and also
>> explains the need for having the non-pixel device. Its not that the hardware is
>> growing here, rather the hardware stream-IDs are utilized differently to get
>> higher device addressable range.
> 
> You are not doing this for a new device. There is no new device here at
> all. Nowhere here is a new device.
> 
> Changes for a new device COME TOGETHER with the new device.
> 
> What you are doing here is changing existing hardware without any
> explanation why.

This is bindings getting a reality check.. this goes as far back as Venus
existed (msm8974/2012)

We unfortunately have to expect a number of similar updates for all
multimedia peripherals (GPU/Camera/Display etc.), as certain mappings
must be done through certain SIDs (which are deemed 'secure') and some
hardware has general addressing limitations that may have been causing
silent issues all along

Konrad

