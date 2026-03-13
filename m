Return-Path: <devicetree+bounces-275176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePLfGe38s2nWeQAAu9opvQ
	(envelope-from <devicetree+bounces-275176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:02:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 674D22829EF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B4DFD301AFD0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E8813806BD;
	Fri, 13 Mar 2026 12:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l6jf8jpb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jYvUDFUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0284C376499
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403364; cv=none; b=V3Jg8ROxV7dYmlZj1vqQVH9wv+n2+Apb/mKwJQ1xAGyXTp5+mbWwiy42PuxF8S3RmZ8r88OCSwYLNjsfFAQnmSrFv5AkSjjog5Dirujk3ALfoJAT568mjKLXrNAJ7N3JR7y5B+5FuoUsOjVJfpuvdRrUZEOSCsZncBsSnDL1G0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403364; c=relaxed/simple;
	bh=odNxuZ2hFNSu8jD2vAcFjGgfyV/5IK4E8dvc2tmLiuY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EP2ZeDUthWyzCCmi2cUq9GeovuVxNzTxtwo+7PVwClsXgKPqPjNuCeYjBVpicbH0q2HqWSvsEbD2lzxP+hJ8oNZjQySRtikMATzk4WYcEv4gNjWYR4Umj85RnN0RRmJE/yqr7kb7y2O/y/0rsFCmh7S3oKIr4qilQBs7nqZ14UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l6jf8jpb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jYvUDFUh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAsEWg525688
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FaY2p71Y8woVoAKqknbA108WzRsqxJMopTu79NgnvF0=; b=l6jf8jpb4SnIiKgv
	nxlb7jzxD5YeRPvIhIYLcW/epYQgKj7hY/NLGjusHgk8H9yM9vaqQlQoxXcA+5MV
	CUQHuP42Qjp7JT26OnygNri9s0YZqMNe4AZ9Yrlkr22wFVecU5AgI7cv3wuXfAOS
	Qk9uQ6QQja1RO6V7nUYSHCdSRG2CZ/6HH9Sm06vTcjVrF0A3UWJHsu8rL7tIUoXh
	Jku3lNSHM2eYjpwGG/eLsMMb/NkCgZLNWPpF4I2FBKgdFULCG+PqVjZdrfDujF4C
	PEvpndY6yQOLQ1+YbBGfwEWc74eBtCI8aBqRu5wF4/bBwzIaEAzgs/sS+m79YK8/
	Kho9MQ==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh84r5jb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:02:41 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-4172bafc368so2038978fac.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773403361; x=1774008161; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FaY2p71Y8woVoAKqknbA108WzRsqxJMopTu79NgnvF0=;
        b=jYvUDFUhRzrRKs9gt2Gp77Vq1cwSOhKX8X7pv7kROCRCc3c4YgP1QO1sCHtr4pwC+R
         FJlKk+v4b1iZE3m8Pq3Gp+1LpAQhi+8Vi8lY7GUe9h1//OJqR7tnOVnFWFeFZPDRqVPC
         8CVFoI1MCQun0mqAwr5MV2skxuTVqr9qKYAz6fgJwnVOBAkgK41P5AUh0wubEZDr/LV4
         5jsrKIhJaedfVGs/yKmMSzhd/Xhdg046m0jvZ4DGMpXfIxsbA4JyDPM32EYRHnZ8+/CB
         Tol/gMZpRqxn/uZAYbZtUWl63zZ/FQNI4zjDuI/6f5x4B7lShGYVaZBNFlTziR24VMeT
         ascQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773403361; x=1774008161;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FaY2p71Y8woVoAKqknbA108WzRsqxJMopTu79NgnvF0=;
        b=lM0xsvebLgXc2mXZIOTZXpE2EFIl4I71rXHkyXbwyzPrf5IzBgta+lWfFm/+mrGBe8
         EkECn5ioQYx88KEGxZmjqjhr0ABcVJA5Wq3LHnbrvubMon8UoVXLFq4Kt71F0pRwpgZN
         TV6wPxsrQpSebwwRx9dMpWAXjQNBzMbbiTmijD8evtkXzLM184dTm7hbFNfQYPkGITfs
         UmrL0ZthOTTKuQu1+Kz2Ne8AA0HzH1QTGTDW4IIYTMMlKRD2aVLIO59HqFH9xezu/LwH
         +ikN2N5W8fllUigyO+48Fhykdx1XFq00Mn0Ql7iTVt8MuwsNwGG8XJmfDpeDMY0VOM8S
         zp4g==
X-Forwarded-Encrypted: i=1; AJvYcCUEyvG+ZjCCouTrKGHDDVWP0dwjhDdzkqGNhzPG+DFCu2H27csN3MU/s9Dg7x4dL8W8z+Mdb0Brmahf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9o61Dp5XF7vm0Cz3xlDGIlAhZhuPPFpmx1h76t/PFgvPW/05o
	CEPUfMdcaVYyKNiBDEuZXbv1LJbXPvowuOT6wVFJ/Z5nHG0XQ3GWtv7VdnEUnuax6qeyZsa6DCD
	zsr+tqd32G18jiW5xhW03fIhT1GB9z8JGSrkYXAGEb3gDVy8cNSToYwZ7rRnns3yX
X-Gm-Gg: ATEYQzwflEf065dYqbXka5P91DF7x1k3Srzci2WdNo92PyL65tSSiH7xzEl53qtMRC8
	JUCzmp2ASUf+TOugCK7RfHDQeFoWQqIfWv9GKFT9lo2iDJrpOsyc7lQmuymcjVAqQd/VobBuiw0
	nUyFfp3SZSokDgoImQR80fqb5r+bjuBM/1zJet4z7t1BYOb0hggYeWGQGwh8+Duf2i9gT/eToy7
	2yjHU71mdImV2hb5KUhj/pbL8ofBJbvWh6hd3Cpk6XAcvuVsE9GhgVA5AdNw1T1iEMHO++1s3ET
	hhN7JaoPiC2kl1Q9LfK/r2GVWQN4TZvp8Nh3vd8oWgdq5s335Prh9G6emrNmEuWZULddoC66UXL
	GC7WP3WoDsMCmVLFaCrpMi5pMiTKv/uEnWjW69lo4+029uwNMJXoqNN1helfBwwd8QoLkBhJb/8
	UC1QQ=
X-Received: by 2002:a05:6870:d146:b0:417:48c5:5982 with SMTP id 586e51a60fabf-417b93f4be4mr1352565fac.6.1773403361038;
        Fri, 13 Mar 2026 05:02:41 -0700 (PDT)
X-Received: by 2002:a05:6870:d146:b0:417:48c5:5982 with SMTP id 586e51a60fabf-417b93f4be4mr1352533fac.6.1773403360471;
        Fri, 13 Mar 2026 05:02:40 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb1d20sm40152166b.41.2026.03.13.05.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:02:39 -0700 (PDT)
Message-ID: <0811deda-3763-4092-a4b4-8977199ae4f8@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:02:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: taniya.das@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        ajit.pandey@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        imran.shaik@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>
References: <CAH2e8h4R-nF+eV+OnkSySKSY5_H-V8Ndyfhac3=VNQ-bMaBeFg@mail.gmail.com>
 <af606d6c-3ce3-4342-bd5c-ce3ea28c6923@oss.qualcomm.com>
 <CAH2e8h4Vp9fJYAUUbOmoHSKB25wakPBvmpwa62BTRqgRQbMWuw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAH2e8h4Vp9fJYAUUbOmoHSKB25wakPBvmpwa62BTRqgRQbMWuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OMoqHCaB c=1 sm=1 tr=0 ts=69b3fce1 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8 a=A4iZcLwekUeCbZ0gfxgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=y8BKWJGFn5sdPF1Y92-H:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NSBTYWx0ZWRfX5Yy6FeNB76a7
 /W+Lpaa10D4rF94hSKpElLo81EwxyW1tm78OPd6XAi7uWC5JlPh/yRZYIbND60KyJ5Dq7KrV37w
 neEMC0r+r3vjdliEQME1kg6CeVkGRFagCo3uPd80YzlbyPSynW3Fp8UDTdAZRfuL5pgITNoi+BL
 yq2hASDgSylQyUVervxP5vrCXYZeSpPbX7oKmwVj0Mg8164ySfPcAxI9qhim6rb3J+OyEJD1lBw
 3YhLULwAgTY9hK7phk7oyLq9rdvSHXUSw59OQpiJWguTig+dtN8JV9FEpyUfofcWuKPDr3ytvMo
 myASCa0jZyyB5LAOW5bz1udYv8s0JQ5EsoLGMfbhQ3KOU4IixMZZZvKhtFhp0RTdZYHFMtb7cnW
 v9Fto4FHBnUZnRY7O/SI92MvwV5br/H+rRx+J6dR3gZf3DcyE6yNXD7rgUzfuYXzRm6L3rEXsvz
 Jlrn8ZYAEcTASxq42Lw==
X-Proofpoint-ORIG-GUID: 0DjX_J55XZ1Nw9N_qa2DDMi4UASv7wcX
X-Proofpoint-GUID: 0DjX_J55XZ1Nw9N_qa2DDMi4UASv7wcX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130095
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275176-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,infradead.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 674D22829EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 7:40 AM, Pengyu Luo wrote:
> On Tue, Mar 10, 2026 at 9:32 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 3/9/26 11:27 AM, Pengyu Luo wrote:
>>> On Thu, Mar 5, 2026 6:40 PM Taniya Das <taniya.das@oss.qualcomm.com> wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
>>>> is simply a separate block housing the GX GDSC) nodes, required to
>>>> power up the graphics-related hardware.
>>>>
>>>> Make use of it by enabling the associated IOMMU as well. The GPU itself
>>>> needs some more work and will be enabled later.
>>>>
>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> ---
>>>>
>>>
>>> Hi Taniya and Konrad, GX GDSC stuck at 'on' on my device
>>> the raw register values are
>>>
>>> 0x3d68024: 0x00000000
>>> 0x3d68028: 0x00000000
>>
>> These likely indicate that some clock or voltage rail is not accessible
>> at the very moment you're reading them back
>>
> 
> It seems to be harmless. In the downstream, they are always zero too.
> TB322FC:/ # devmem 0x3d68024
> 0x00000000
> TB322FC:/ # devmem 0x3d68028
> 0x00000000
> 
> In [1], the commit log mentioned
> The GX GDSC is modelled to aid the GMU in powering down the GPU in the
> event that the GPU crashes.
> 
>> GPU support for 8750 is not yet upstream (and A830 is somewhat different
>> vs the supported A840) - there may be something wrong in that sequence.
>>
> 
> Indeed. Chances are that I can't enable gpu. I must reboot again and again to
> match the sequence by luck, then I can enable it[2], and I must
> disable register protection.(I just noticed the hack from here[3])
> 
>> I heard it's in the works though, so you may be better off waiting a bit.
>>
> 
> Glad to hear that. I am looking forward to it.
> 
> Slightly off-topic, do you know if anyone is working on wcn786x/wcn7880,
> sm8750 QRD SKU2 V8 Power Grid uses this.

I don't know. You can try asking on ath12k@lists.infradead.org

Konrad

