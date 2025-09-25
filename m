Return-Path: <devicetree+bounces-221441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BECB9FD81
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:10:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F4423B04AD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689FE289E07;
	Thu, 25 Sep 2025 14:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="StYkfYyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D327A28505C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758808840; cv=none; b=TzIKQIZrV2A5y43/iFEQiyV90TEFEQ82LZUJICahOt7o6HcTrNYVntY/NWpy3aaW38+YRzjjNmF7bYum6lxWOjCjXt8AAq+/uiHGnO9Z7oGeW7hOGGiKB7u6VZAYNth9WSOimJjhkB9be3KO72snMQxLv95g0aR/N1EhnPrFCqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758808840; c=relaxed/simple;
	bh=h99PfcktUZ1KhQzpW3fuP7Ha9igucV/siOOOoJWcSD8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ALYihM1cGh8D3G/O+tHfPh6tWWZ8CI0je+aKLFOrDDDzprlAm3gYbmy0mnTB+/k89jvDLTBlVITfqwVTBqvK2i7Om5VgL2kWfMvIKX+MhvTNlHALjqDTdB5iZ39plS94lMUXZKVoKj9KQuUTvfQFuU4x4a5eJPEKQn4hpeVYplY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=StYkfYyi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9tG95027477
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:00:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XUsWf7bqs2eSLAnjUL1U9rWsVFHxuSv71mbiVdSxlpI=; b=StYkfYyiiWvlWfg3
	Lvok7NmPvGhVDzCtlxPU7PMwnZrjxC5v1akAP39GebZDnuuWWraZhLlm5tgb7ns5
	n1bfqtOhDFhRjuRJKytYXNlRUiSSI7J5PA+MhPVmzLB6pNVKXtFmGlFnUHH47HV/
	7SYM864Dl7v4WbP+4gwT3Fn0pEZI/HLUCaPJZiXjI2EBL2py+BmUeSoIrkVKDq0F
	eVg3Bs6kVdnm4QY6XMQbShg6c8hgKDdKmBsz5q55vH/Rx5g90xZSiAl4X0sGeJKA
	mJKBpPdm/BS3O0Qdgz7MtBWHs2HQK7+3X9SkkfcAp05kxlt/P8WmMkClmZSLQgcB
	rlRwFQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv18b79-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:00:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85696c12803so40427685a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:00:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758808824; x=1759413624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XUsWf7bqs2eSLAnjUL1U9rWsVFHxuSv71mbiVdSxlpI=;
        b=YEYt1RaE/+hdppVGOP8SlsOZxMmGlA7axxMZji4LuGt4r3WF9JVi0GQeKhB/vzyMCc
         cJS9CjxvRGX+qO/JYFUKQn7/orvNlZUZDkeBrT7m2zTVTiGQexrqjjnMfG08/P3a1aB3
         3OdBE0MF/EkhieVjvP2OigyyC7VOWt+zM90h7NaG/Bzg/VRjhPmRU1fcK72igKLXoq/m
         OxzBvUnJ/D1737JxFKXt8AO2KFFqmdFJ4++wMiW194W0NulwfTdEnXH2j+o7c/tS/OrM
         rgyoEFj+BhZ03PCVeDVK/RvNG8jKNMdsUXAOoHXZlgw+bArdZSnGAejRW7OAAlgJu4yU
         EBeg==
X-Forwarded-Encrypted: i=1; AJvYcCUl2Z2Yc5a/aMI2nsIYrwB4OTI9Ngx807DR0pmRShEC/MjOuN2PGXJKY+p2DyJv877NHQ1ukEKpVH3U@vger.kernel.org
X-Gm-Message-State: AOJu0YxABVvFydGr7py9LrCmTFH3B5VyJyg2FaU9D5l4RgWFrPOeuaqD
	ZiJO1YsmAgisnb49uuTbfpqE7ictz2kN7yWlzSKGDCnasSyalFrTm6nWOsmVOzDUgO+I4WAQg+c
	lbd1zEuZPzmF4zrs2/Fl5MnBGmTyCeXAbnQRR2KVPMLhmiIwfAEe1oaMRXEgo0jWu
X-Gm-Gg: ASbGnctt0obSS233T9IUZRhqLqa2Zvh9ZiI9xCh94Rxvjha0iplM+e1J2FMtD9hwM1S
	AZrBp8KLm5U0WkHCaA25cLNH6kj60c6SdB4iQgxKr3XJe8MUyZ4/Ymh8gvtOiElUoAIfg12MdCq
	2zwJZQZJdNbFnNUl4EnoFhg4tdjnnRXGKGRhe6DXbNatP1r5/w7WoCs9AiuA8cYsZo2BOI9Bd4T
	Ew/RurYBAklPQDhkGox1tLWCL9FJTSMejeMppLsFy36NsUoDns1B1+4pYdn+eN6oXRBS1mNXTf5
	4e7HU/bULEVE7Sftr9w3TgPIlq5e2YmDXlccGxO7MghawPI5lOsDMf7UoWnVqm2uuXiLpWtqbHL
	OT0wXcbXMvWGbTK1qe4Swuw==
X-Received: by 2002:ac8:5d88:0:b0:4d4:ad40:fb0b with SMTP id d75a77b69052e-4da489a10e3mr31332621cf.5.1758808824169;
        Thu, 25 Sep 2025 07:00:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFX+I1iprsRH6SvaH+LsSyd3jhUP5sSOxeDSBSeH8H9xBMZUc+poCVqQXxwlYniTKKdMngEDA==
X-Received: by 2002:ac8:5d88:0:b0:4d4:ad40:fb0b with SMTP id d75a77b69052e-4da489a10e3mr31331691cf.5.1758808823362;
        Thu, 25 Sep 2025 07:00:23 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629878sm1264034a12.5.2025.09.25.07.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 07:00:22 -0700 (PDT)
Message-ID: <9d2ae733-6df5-4796-98c5-89e953c35f4b@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 16:00:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/24] arm64: dts: qcom: Update the pmh0110.dtsi for
 Glymur
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-14-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPdQH2jXcEY6ZpkmixvUt26SqdzYgDAiJ3RHMG7xkPyi_A@mail.gmail.com>
 <lcbcjpoazpwbltedkiqlw4l3aomwvi3qsfwvmwghb6uf5wvnme@kh7qdpunfuwr>
 <CAJKOXPcyhDdFW_u4YQLiHYj8gM7wYB-LOmB_PJs+5OOgn8WZFw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAJKOXPcyhDdFW_u4YQLiHYj8gM7wYB-LOmB_PJs+5OOgn8WZFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nmuXBMPSj0CEsZ_rMQboaunC_0E8fwJ5
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d54aff cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=SWti5kBmd2enZMrbPjAA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX3rJNDW6w9dSR
 W+O71k163xHSixO/5rCKWVV3hufGcC12rpDa7SrXbyyaVBhRMwIM7HjIKnYnS1wN07mnq2Og8Za
 Q7PKreceNrtYmVSzmlTPBU43z31hnRcpsiZkPdWzHmkmiAIdW17f2P2k2WWc5g3WxPab8yiUb8Z
 UIH53tHdz0uPbdQRNpL6dDLVR9fC729bMUOfyMkl/YOXSapmPRIQ6lgzkHWXvcNT1EYGZkUn3nQ
 nYGWqh8+DKKGUu/EfN6420OWusLzXCuKVJPzqv7NUjXzSYlRt8J2gjMZHXooDkEozG5NoYGbBq1
 cn1c8elWBjd1DFeNNRjsIK/UIrJCL5rhWrA+nbxuleQ0pMxjDS37bHnHmAKTLLafvTyp/zZ1G/o
 R9vfhwJl
X-Proofpoint-ORIG-GUID: nmuXBMPSj0CEsZ_rMQboaunC_0E8fwJ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On 9/25/25 3:34 PM, Krzysztof Kozlowski wrote:
> On Thu, 25 Sept 2025 at 22:14, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>> On Thu, Sep 25, 2025 at 05:08:54PM +0900, Krzysztof Kozlowski wrote:
>>> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
>>> <pankaj.patil@oss.qualcomm.com> wrote:

[...]

>>> NAK
>>>
>>> I already explained on IRC in great details why.
>>
>> A short summary or a link to a channel / date would be nice in order to
>> include other people into the discussion.
>>
> 
> Of course but:
> 1. You were there so maybe you remember the arguments, and:
> 2. I'm offline, using phone, not having laptop, replying during my
> personal time off just before merge window so any emergency time
> should be spent on important matters instead these two huge patch
> bombs adding such usage I already said: NO, don't do this.

Thanks for being dedicated to the cause - however since we're right
around the merge window, it's safe to assume these larger changes will
not be picked up, and we don't really expect you to reply immediately

There's a lot of code, so we'll definitely want you to take another
look at it after you're back (and before it gets merged)

Enjoy your time off!

Konrad

