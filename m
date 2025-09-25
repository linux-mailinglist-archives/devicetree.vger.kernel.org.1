Return-Path: <devicetree+bounces-221229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D294EB9DE07
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:39:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87B164C0AF1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095252E8DFD;
	Thu, 25 Sep 2025 07:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="foX1dx3h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B87281358
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758785994; cv=none; b=RCxfkSrkgpDbu6UDhhvi04LbWj0ewLQfoTb1/2DcJv0k6w3l3xu8nAEtMbD4mUGHGiVt3I4aCMxMwXAVMV0r+f+PAmGyynwn6lW7b4slgxkhHj7lZNsxdhETazUdw7SM3CqgoDzGmDEF+iQeSv7s7BLe+HR4Go4a7PMOeJJ2RNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758785994; c=relaxed/simple;
	bh=Y9R4WNRvvyMtAtnRGIuMD3fCanjscQi1bqGGZ2aeKWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ax0uXQmJ8ieCmj7WylaR3ueBxbADltylXp4kkKvM8XfPe1WP7Jmhc6ZDovK2909sVHKVDY6XQ2dwmudgCmg9cXdT75617wduRW8EiXf4UIyYaLbEGYu6s2dNnxfWQnJunCjs0WoB0S/GoJbKQh6vfQdf23J2KE4BlZHYP5qpA0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=foX1dx3h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Kf5C025136
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:39:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yHIf/aik58qJgO9OuFWD/cF/4E9ijlyj+qHMJjR5MNk=; b=foX1dx3h1cpwyoT8
	tEOb31eyOlz9jz3GG9xLSirs8wrysbaR6a/zUkPR3X//siefgOLbh9Ofwepac2bA
	QSfgRUu6YoUj7c/ZtQTkjvY4Ml0oXgCgxAplEYDUC5WLaYbDkzIHF3aGPutpJVsU
	EgMNhr7k3b+7Jh88eKfi+b0w3y3UUxEwMEX0pT3wQqKrtw4ysznKOqdlKmLFVDQz
	EegQC4hNtdVAj52cPkUWM9xDM1umxJeg4yw64zPn0hQxTiHlOF7NUlL2vIqRndum
	4b82pV4N6rRbGgp9w5zJGl1If8/pSxWCgllQAggzfHC6RjvhE8k5GX3qOoZDdYel
	hVni7w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv1788k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:39:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ed9dbba55so197276a91.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758785991; x=1759390791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yHIf/aik58qJgO9OuFWD/cF/4E9ijlyj+qHMJjR5MNk=;
        b=oHXg1kinqQ8H8xFo6kXSk53LzETynpJEWUVivsP5Pg4tftAPjQoh6JAy3MzNXHqqJP
         CLFIdbvTh4oT/SHVQOpH7bkXEWoiMF5FQEpgZ0/1LFpBt7GpnN74qG/pJn5SAoOUjLaU
         xfN0KVkPMPuvRX2e8PM51X2P2X2tRe0Cb7m1M2ZsGSCITQASkU3jao53Ry+T8W1xfYG6
         1EuR452zXs2BxsrgGAcwA5M5FgEY7VvBl/fZHhn9FFHxSSWpHDZCr/Y6Tc5up0o0l4+c
         wNS4fcMIxaBZ+x6zWZpkEZ3+En2njvl/Y26pSKIZHfCqDh/ztrLhIJKryMqE3TvzZA3d
         Ri2A==
X-Forwarded-Encrypted: i=1; AJvYcCV8LyC8vmSXWBrAXJTGmMk12SCd4NSa1Arqr0vTzXam0HhL6C2a9lnd9GvZ/Qx+PxkqQUUx4U3YP3Qp@vger.kernel.org
X-Gm-Message-State: AOJu0YyrPzrnYQN987L8Ai9Y2y9NYfq7Whc70KZtA0bvYt8fVCey6Wj8
	ArPyFDazBvIkL6gDibP1we1aK7V5HNY9vtYuUFJpbzD3YyFID52wDZIfaktsetTn8ckk9p3WumU
	zQEmxOQYcEJgf3nRYxXjNhU7N2oDSpqxAG/Bl1y1uUcQnZohUCo1PH5wosSS0JXfb
X-Gm-Gg: ASbGnctG4wpMA5/q1nezhWTAqVLbEePDuoKH9/nMYeCYcJxx86uff/5u0oeDQwGeeqR
	L4i5MFyo5OPHGUgwR8av/IR5bK99aBdSACFI5Qx3LQv1pyghcoPxVhEFIAtpa7kiDgJD59wVGEU
	OgUIabPb5ho3yH0FQWqX2v+SqcDaOz0rnDs/Svuq9n+1qcq74KzR12NThBjgF/e1tl42Wf+rWto
	vWPvwjAuj1Mfnp8R/kh+mSWcdh07MpA5nRZE14W7UZ0Q6skCrXlNYd/eq1AiH5m40lGRYYJQLjk
	n1kwTtcOKwAu+M8/S6wsBrpb6kHoA1ODa+SuTwORtIvWfcZqP4tJscE9oIV5IRTqsMb5iMQ6VIn
	W+h4anxt3Gw9P2+EwNtcXvgzVaCOBuyM=
X-Received: by 2002:a17:90b:1e0d:b0:32d:e71d:743e with SMTP id 98e67ed59e1d1-3342a2df3camr1263928a91.5.1758785990815;
        Thu, 25 Sep 2025 00:39:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPMQLLZLbgPWPx8Cf/VV7OVsL2aUE3K8upcbyu4SvZDDclh+hBTJvNPsepYgjFfqtBwtGnDQ==
X-Received: by 2002:a17:90b:1e0d:b0:32d:e71d:743e with SMTP id 98e67ed59e1d1-3342a2df3camr1263903a91.5.1758785990305;
        Thu, 25 Sep 2025 00:39:50 -0700 (PDT)
Received: from [10.133.33.140] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be36bdesm4757664a91.24.2025.09.25.00.39.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 00:39:49 -0700 (PDT)
Message-ID: <53d63dd6-a022-4e80-a317-3218976a7474@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:39:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
To: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
 <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: RfCGqfEfl0rAaGIBUEwzfsLwN3K6wf-l
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d4f1c8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_8C6HiND3MtPFSYwXacA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX5HMk5hIGfhKl
 No4UaBkCgYHiyNPWSVmYGkMe7kdClLJuXm1xpZ5eurzHB89gN/Fci9jwqhvFTB2MoSSbWudYgK7
 NBg/DsEe76OJplEsonb/3EHLJ0Oox2HuhLdkSSng+tq83IHXsRNJOOWSjTeJjxZuYGViWbXCin2
 C4SfXuCPuOvS2XOl3rA0em0suo4sWlRxnXI97x8Qi5tVIEt1CHhRKeokUuovol7yxIOR3iN6Ijh
 X8HGchJIzSj5V+Y96ySUbOsrVpA7Lw+QyRC2X/1IgcSxj/dqN2VGxMVxlVPFi5bUoS3z/CGNB/t
 PE4kz5/Syc9Vihrz6zikcik8ad/nrbQJimayK+vrBIxZpiHOFseX7jdOe0Wgw+FL32ktJ89U4vs
 mlhTKxLM
X-Proofpoint-ORIG-GUID: RfCGqfEfl0rAaGIBUEwzfsLwN3K6wf-l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On 9/25/2025 9:50 AM, Krzysztof Kozłowski wrote:
> On Thu, 25 Sept 2025 at 09:17, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Add the base USB devicetree definitions for Kaanapali platform. The overall
>> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
>> (rev. v8) and M31 eUSB2 PHY.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
>>  1 file changed, 155 insertions(+)
>>
> 
> 
> Second try, without HTML:
> 
> I really don't understand why you created such huge patchset. Year
> ago, two years ago, we were discussing it already and explained that's
> just inflating the patchset without reason.
> 
> New Soc is one logical change. Maybe two. Not 18!

It was previously squashed into the base soc dtsi patch and mark like:
Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
(added USB), Manish Pandey(added SDHCI), Gaurav Kashyap(added crypto),
Manaf Meethalavalappu Pallikunhi(added tsens), Qiang Yu(added PCIE) and
Jinlong Mao(added coresight).

While it is over 4000+ lines when we squash it together.
Also as offline reviewed with Bjorn, he suggested us to split out the
USB and other parts.

> 
> Not one patch per node or feature.
> 
> This hides big picture, makes difficult to review everything,
> difficult to test. Your patch count for LWN stats doesn't matter to
> us.

With the current splitting, the different author as each co-developer
can get the meaningful LWN stats.>
> NAK and I'm really disappointed I have to repeat the same review .
Currently, there are 10 SoC DTSI patches sent, structured as follows:

SoC initial
Base MTP board
SoC PCIe0
SoC SDC2
SoC USB
SoC remoteproc
SoC SPMI bus, TSENS, RNG, QCrypto, and Coresight
SoC additional features
SoC audio
SoC CAMSS
SoC video

Which parts would you prefer to squash into pls?

-- 
Thx and BRs,
Aiqun(Maria) Yu

