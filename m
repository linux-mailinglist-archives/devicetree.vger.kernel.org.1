Return-Path: <devicetree+bounces-233492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E195C22F41
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 03:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B9EA4E66D3
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 02:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78CE4270EDF;
	Fri, 31 Oct 2025 02:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="piPIzdRH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Iuqt284A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C068E26FA52
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761876848; cv=none; b=gx9YI5au/2hRQ/K/FFPWZFo8wjEY5wZPy6xH/xDSIIGwZ8/LA4brm1bAw3+JbbgkSXXOtFWxPF+pjRk8Y3rztl6KuehO4gy4j1s8OdJT1WkXUR2ojf6H3XlIijixZl1BdyKWSd+zmmCqV34yyfcH7GXf+8USHGcFwkPHlfYm398=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761876848; c=relaxed/simple;
	bh=bb1WsmCBKUXoJQSd5UvHAq8IwyXTzo74AI0OYGP3IJU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PsNCdwU8CrFrQVSTmYEArz0bSDzfLzb++9Vsgg/KKlzSys90FRb/6L/DVTSAKCtnEKSDRRxqC8xd7VDZAazA6xk4M1VjpdUlpXDKSy+jnskVu8uMJzg1JXVzjsxBw2JbeNhIVVnMxhV4oZHU0XiAi7PtSO0PwUTCpRn5p5ITyZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=piPIzdRH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Iuqt284A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UKeREA3281442
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:14:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wLDl/vwxa7/bXeS2eNEcvqo1VN8+Lw1lvEYjWgjL4vc=; b=piPIzdRHlIALILmB
	uMlppKGjMDo0NohvpgzYvsbT6J/WfNNO1eI7Z6ITqdtFurqnvRjudJJLWE2CQ1XE
	hLPCcOnZQ5rwz7/f6Y7KM++76VNOHDmbnO0LqbTAVAqvPpCVVIRW0+SPmH8/oq1c
	k9dXHrQM4w+g9ojoxLag63J5gZ9cZABmLd+pCigbZ7XWxFL+dxohq/O8iz8YY/Al
	4mk6Ksvs8n6b5BZWWOM2VcFazqnb7o/WtPAZTKJnWZk51tZqpzx4V3EXUQxPf4XZ
	Obw8IsA14dv3N8urZ9oAnThhgxd9ylV6SHFWyqMRCiIUvo5Ohw0IYrKXT7eOrT32
	w/fDxg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a468kjc3v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:14:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-336b646768eso1807053a91.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 19:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761876844; x=1762481644; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wLDl/vwxa7/bXeS2eNEcvqo1VN8+Lw1lvEYjWgjL4vc=;
        b=Iuqt284AUqYe3xKxh/74O3XLBBB6wEfIr1akyPkCxTJdCEEMQO/p27g8Mf+ta+/KUb
         l9T7iyxcm5E+RLbflWQsET8XKq+6Mc08gGOhkXXrd5+cquxa+d30+AC1OKd3VSnOPXqz
         d2ukr1KgB4szciDjqyx4Kuj7gbquVLxWsUaTBTp29oXXSAr3m4L9vmRkcchVF0ET8kAF
         vjgd3aKeSKQz1WLRxRugrznU4r31PgSGvW0Yf8FgFnKUdm3A/3KIGd7UxGrznzX8AFpH
         UGQcsr6D2xmGnJy6aALlQK1XhqmreipzsJ5/3FBlQmZIjc/zxJO0cGeYOW23+leDDcW5
         Rccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761876844; x=1762481644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wLDl/vwxa7/bXeS2eNEcvqo1VN8+Lw1lvEYjWgjL4vc=;
        b=qNWg0piSfWT2CCs9mk61Uwd8oKexSe4TJrYEyuRRUGz2lWyjjBqEpc8a4ef5t+FRja
         jxMbQGDHZ7eF4sC5TGqbYxT5EljeW7Vk/CtIE3Yd+LWpIwDau0DPzrEPSGbq1xs53cnT
         +QIYSySetSWysYAsvejpFwyUJCorq5CKYacAFiPmGKq8NLEZ3InXDKlgYKAGv3Fgxaeg
         whsy6kbb3C7T7nyMFwQAQIjoIlT0cG00UvJl1O2VVVYFvb1rEv43EqZK36HVEc534BgA
         a+zCvi+xVq/NToErD3XZbhWsyIiZvJQfSP3AnAK/vQIClE6+MQ67STvVvhZUO4vhzlSL
         uFaw==
X-Forwarded-Encrypted: i=1; AJvYcCUZZrQLC6NKYOGaTeoCPvD/O8hy6UdHh3Fh6kttWEUl2M+ZUTzH1mxXQv1K9OiGKih0eQq/rdlhswNO@vger.kernel.org
X-Gm-Message-State: AOJu0YzY8igIT4/W0cKDTQXS6qwGe5derEVh1yEvbHWcjzCMlnpqNQY0
	2BIPHpk62YosJ5/jYN5TbyK8NOZJGQicRYkvjazxLNS3HpvVPXkoUVU7QsM8eJRGkUJWMoKRbia
	zM9+6iphkyYMjzcYX/avvTPVs7ajdNJQKK60SZXvJX82habZ8ydXOlDdlUJMG69WU
X-Gm-Gg: ASbGncsmruUdL/0YwweC7OaRJlVYgD0hpLW5LsAImqabVaKDSIC1LG9gqPFOKVNJsSG
	FB9Ra+ICEehWd/qsjqgeTrB1pBuG5o9wA3HpsxcJ3cHHo7S2/rAhqN7P6SZtgPLgQBslVa/2qoQ
	R2OaH8Tb0LZ/6SQs1NB94z7KHZZWqaY54G1len/z68RkY64ASUJ7ppPjZqt1XB6Zu6bDvse0rDO
	8IG9EAhBApI4E4OI60hG9yrmG7Wf2ikCk0cmouKsbhz8BXe4cg48UtSU4DeUo1QltgwJnuZbpMj
	olU9wex9X1+L4Nk8zqaD2YxCysVyEkeYcUY/ShagILpaQxePP6BRi950WHMcDmfKQQsi4A6cqi7
	q/DZYd2W51wZAQhhBhBPiFvvU6cGnPuUoDvqGKhPbf0q7TfvJz/bPcrmfAP6RZbW3Qwj8XA==
X-Received: by 2002:a17:90b:55cc:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-3408308a934mr1958055a91.36.1761876844311;
        Thu, 30 Oct 2025 19:14:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGleJTGgP6SyAWAnP4yfaeQUzaEzCu6tX14wOdVXnVJbSU7dIxeixQ/PO5TYg3LWWBTV7KQDg==
X-Received: by 2002:a17:90b:55cc:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-3408308a934mr1958027a91.36.1761876843805;
        Thu, 30 Oct 2025 19:14:03 -0700 (PDT)
Received: from [10.133.33.25] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93be5ed9e6sm293518a12.27.2025.10.30.19.13.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 19:14:03 -0700 (PDT)
Message-ID: <71373bff-93a8-4682-8137-c733c8875dcd@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 10:13:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/6] media: dt-bindings: Add CAMSS device for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com>
 <20251028-add-support-for-camss-on-kaanapali-v4-2-7eb484c89585@oss.qualcomm.com>
 <20251030-elastic-chupacabra-of-downpour-dbecfb@kuoka>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20251030-elastic-chupacabra-of-downpour-dbecfb@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDAxNyBTYWx0ZWRfX+QtOigpKDVEF
 9YTHpbryqyl4ARlQ6m4NILNQUAwBFqjvvScWr1Be8GdoXd59TMipKB5gf/+GtJHFgP2kkMxAJFW
 5j5MALmxOKbjjCWivgwFhst/urQzYBKngCtBdlyEU6W6EfhRVSeNqeE7I3ncgaJodvotCGyh4/n
 gyn9aeldpA4jzJajh7T3kWP9jWeozmkTtPYmaGAL93FVSgsokz/R0cOoePHaCQt+WuiZyVziZpx
 LBVcVk1kT0YXHqKKzjVcl9u8/1Br+ouiBvCuKKVbGif9NrXUee69udenFAWrXKtFV+orgUemtas
 U0YgGmN4Tnye0XUOSRDoNWLsPJyGP2Ypwja4FUlXKH64MhtEj3thK6DXX8cdVs9CXfKZuRR+Y3q
 nJBfUNNFxye9GViB27eqU2TzR7CxFA==
X-Proofpoint-ORIG-GUID: VEEABvWiBW7MjdrqslX78J-Y1jhzgDLe
X-Authority-Analysis: v=2.4 cv=LoWfC3dc c=1 sm=1 tr=0 ts=69041b6d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=9EXZDvy5A2aIlouvqkoA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: VEEABvWiBW7MjdrqslX78J-Y1jhzgDLe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310017

On 10/30/2025 3:13 PM, Krzysztof Kozlowski wrote:
> On Tue, Oct 28, 2025 at 10:44:11PM -0700, Hangxiang Ma wrote:
>> Add the compatible string "qcom,kaanapali-camss" to support the Camera
>> Subsystem (CAMSS) on the Qualcomm Kaanapali platform.
>>
>> The Kaanapali (SM8550) platform provides:
> 
> SM8550 is not Kaanapali, AFAIK. Looks like typo.
> 
Yeah. That's typo. Will remove this version tag for Kaanapali series 
because CAMSS and other modules only use 'Kaanapali' name. Adding 
version like (SM8850) is not considerate.>> - 3 x VFE, 5 RDI per VFE
>> - 2 x VFE Lite, 4 RDI per VFE Lite
>> - 3 x CSID
>> - 2 x CSID Lite
>> - 6 x CSIPHY
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
>>   .../bindings/media/qcom,kaanapali-camss.yaml       | 406 +++++++++++++++++++++
>>   1 file changed, 406 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
>> new file mode 100644
>> index 000000000000..c34867022fd1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
>> @@ -0,0 +1,406 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/qcom,kaanapali-camss.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Kaanapali Camera Subsystem (CAMSS)
>> +
>> +maintainers:
>> +  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> +
>> +description:
>> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,kaanapali-camss
>> +
>> +  reg:
>> +    maxItems: 16
>> +
>> +  reg-names:
>> +    items:
>> +      - const: csid0
>> +      - const: csid1
>> +      - const: csid2
>> +      - const: csid_lite0
>> +      - const: csid_lite1
>> +      - const: csiphy0
>> +      - const: csiphy1
>> +      - const: csiphy2
>> +      - const: csiphy3
>> +      - const: csiphy4
>> +      - const: csiphy5
>> +      - const: vfe0
>> +      - const: vfe1
>> +      - const: vfe2
>> +      - const: vfe_lite0
>> +      - const: vfe_lite1
>> +
>> +  clocks:
>> +    maxItems: 34
>> +
>> +  clock-names:
>> +    items:
>> +      - const: camnoc_nrt_axi
>> +      - const: camnoc_rt_axi
>> +      - const: camnoc_rt_vfe0
>> +      - const: camnoc_rt_vfe1
>> +      - const: camnoc_rt_vfe2
>> +      - const: camnoc_rt_vfe_lite
>> +      - const: cam_top_ahb
>> +      - const: cam_top_fast_ahb
>> +      - const: csid
>> +      - const: csid_csiphy_rx
>> +      - const: csiphy0
>> +      - const: csiphy0_timer
>> +      - const: csiphy1
>> +      - const: csiphy1_timer
>> +      - const: csiphy2
>> +      - const: csiphy2_timer
>> +      - const: csiphy3
>> +      - const: csiphy3_timer
>> +      - const: csiphy4
>> +      - const: csiphy4_timer
>> +      - const: csiphy5
>> +      - const: csiphy5_timer
>> +      - const: gcc_hf_axi
>> +      - const: vfe0
>> +      - const: vfe0_fast_ahb
>> +      - const: vfe1
>> +      - const: vfe1_fast_ahb
>> +      - const: vfe2
>> +      - const: vfe2_fast_ahb
>> +      - const: vfe_lite
>> +      - const: vfe_lite_ahb
>> +      - const: vfe_lite_cphy_rx
>> +      - const: vfe_lite_csid
>> +      - const: qdss_debug_xo
>> +
>> +  interrupts:
>> +    maxItems: 16
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: csid0
>> +      - const: csid1
>> +      - const: csid2
>> +      - const: csid_lite0
>> +      - const: csid_lite1
>> +      - const: csiphy0
>> +      - const: csiphy1
>> +      - const: csiphy2
>> +      - const: csiphy3
>> +      - const: csiphy4
>> +      - const: csiphy5
>> +      - const: vfe0
>> +      - const: vfe1
>> +      - const: vfe2
>> +      - const: vfe_lite0
>> +      - const: vfe_lite1
>> +
>> +  interconnects:
>> +    maxItems: 2
>> +
>> +  interconnect-names:
>> +    items:
>> +      - const: ahb
>> +      - const: hf_mnoc
>> +
>> +  iommus:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    items:
>> +      - description:
>> +          IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
>> +      - description:
>> +          IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
>> +      - description:
>> +          IFE2 GDSC - Image Front End, Global Distributed Switch Controller.
>> +      - description:
>> +          Titan GDSC - Titan ISP Block Global Distributed Switch Controller.
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: ife0
>> +      - const: ife1
>> +      - const: ife2
>> +      - const: top
>> +
>> +  vdd-csiphy0-0p8-supply:
>> +    description:
>> +      Phandle to a 0.8V regulator supply to CSIPHY0 core block.
>> +
>> +  vdd-csiphy0-1p2-supply:
>> +    description:
>> +      Phandle to a 1.2V regulator supply to CSIPHY0 pll block.
>> +
>> +  vdd-csiphy1-0p8-supply:
>> +    description:
>> +      Phandle to a 0.8V regulator supply to CSIPHY1 core block.
> 
> Nothing in changelog explained why suddently 8 new supplies appeared.
> 
> What exactly changed here?
> 
> Best regards,
> Krzysztof
> 
Thanks. Will add more detailed descriptions to explain this change in 
changelog. We once had a discussion with Bryan and Vladimir about these 
supplies name paradigm in v3 revision. That's the conclusion from that 
discussion.

---
Hangxiang


