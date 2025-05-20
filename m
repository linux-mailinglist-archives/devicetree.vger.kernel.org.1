Return-Path: <devicetree+bounces-178875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 914DDABDCF6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E348188C07C
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 14:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9A524290D;
	Tue, 20 May 2025 14:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dVFm7eyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AB6EEDE
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747751366; cv=none; b=ubR9b7Mp40J0Ng+IwucZxB1hrFwPb/oSOrsKJEd2IdZPKN/ueQxqzPeNtWU7B0KPfxXx7DqxmtSsTHlWwhd9s2J+ThmUGmcCIHAbp4Z+26ir5CHYcJRu5j7UolcunskxS2bBZ87BH0AfjbjU2vzzNmcxa4WJJiDgorciK3pDLU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747751366; c=relaxed/simple;
	bh=ejS6ovgsQrYlFQ3gRomd+Ji1tifZg7j6PQr7o/pIqA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pEYnolYVyI+OAjtWPfC+nZ3cepcAaCYJc6/nAAtt6R1j72HUnhTN6wJ/imLCHBc8ld5dvnYJL6fWucAjSc0wv+3a7fI5j55X5qZcZVgEQ4B1iXQfsV1XJmSvObrNAyURtajx6uSkNS/UFkGTi2X5CwEm21N99b75z8kSkC49bzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dVFm7eyd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KDs7vM030470
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:29:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eTvWyp6sTsoPovqd27mbVAax9KqDto0mtErtu24hwf8=; b=dVFm7eydEyKaxevI
	vfIkMyHij2+KG8/TJdppUEn6/PAJrcB0JRS2Q55gC3y45jHO2eyObmQMmo/2retX
	i2BbeUhagfrA+Dmuj597YjzMVP78MXaDgfl+yIZmd2J2558VgIY0nPg5O2X5xMPp
	xs6pcB35a29K+qIsG9R4fXd+yt6nT0oCMrxZ8TNzxKysb1SCB7TB7kXtbAqH3Ulo
	GQYBfbaD4KPzOiP14qMKeGF7xA4NON4vQg6fZ24Fur76iVEybMXt/GfdFmUnUS+Z
	6z6RZxuqhr8y+M6qAK+LzbKNdxvkxmaplJiFuKiL8qAby26gXS/0su5A6+4PLOa2
	ysvvjQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rtes85nt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:29:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5530c2e01so88228685a.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 07:29:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747751362; x=1748356162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eTvWyp6sTsoPovqd27mbVAax9KqDto0mtErtu24hwf8=;
        b=CjhucRkuJhk+M3pMBjWG1amww+AZmylywLlf+TuDNssI87i3Eknzbp3mKXsCtkkEhV
         L7RXW6GIHWUFijKBNL1iQBs/i4dF+YUAwJeYvoJvMzhnWZGCDIbDukx31EXfUz7LP0y7
         L0J5om12X5AHCzXgcow7rkLgNx7Q/xQHSL3URMhf0qCjJp+G0OWcpLx3WvDN3K/GUPyn
         P5WMxKAKCalMBT25HxpgYMca4p0IchoaeRM+CRf0jEZXdoe+LbzaiEIDvnsD3QM0czJX
         SiN2S51YNp7sR/u9kX4DJHko9wdQXhhPiWtIEbmV1KuNr52JIjfudkZ+5uIgBQe+KnTW
         NQPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjVjDH+p8NooqO/dDw/zmExKPBdGPQRVvXle8uB8uzmQnIvbkVkOawqKEvo/ge+DHwJHG9pXWrOT2q@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3kbVgjg+onLtscWeoYQf54i81QEEg869KCRsDITnLRKacLfor
	5KwUkiwCVbBf+78SkT3f9PXVNufg4M9DsI/9Y5xIz6hYu4qqMugQuMs5wkY61RiuXMomsZ5akZH
	lgEeLRUZLjdeyB2zbHHndDot45MKeQOXAqyHZ634tQIZ/nHgVLG07AUMTdocp04Cq
X-Gm-Gg: ASbGnctCxDOfAbeYSxV4eCwOZzv5dTRGfClZ7lF0qTHjb6z/c+UBLlko0aLWV0nOUWk
	1dQfKUYSy7rPUt54xNTxA0IpP0XGV8U9npnAC7P4AERIhTlW0FFEjp6VVmi11Ti8mJTsPmcYSsA
	aLoXmIf9PxLz3HYzzx9IJXOQD0O9Ksu7SCPclxyLTBbWyDrKRTOISbof2P29q6zl4d5V2mWV+bA
	CysqCq8+JFl+m2KzAdzCNFFEMpkU1NL/ejCpl3sk795siegoLzzH7lH1Yw4lPil7jX8sOf5Sx+y
	dsObzPi7hvBKRMCXI4Ii+SkDilL6vGc+ibLU7sFAy8p9sqYavX1AzL8d9wT4IjcxLw==
X-Received: by 2002:a05:620a:4895:b0:7cd:14b:554b with SMTP id af79cd13be357-7cd467c0835mr1061654285a.10.1747751362235;
        Tue, 20 May 2025 07:29:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4MIcwFME3fzluDpcCr0w4MNNLPjzHGz+1z4WA1cnE5MqMZfKL4v0eGPZNm07L4mDAE11zzg==
X-Received: by 2002:a05:620a:4895:b0:7cd:14b:554b with SMTP id af79cd13be357-7cd467c0835mr1061651285a.10.1747751361733;
        Tue, 20 May 2025 07:29:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04e674sm733754866b.24.2025.05.20.07.29.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 07:29:21 -0700 (PDT)
Message-ID: <a49df292-dcc6-457c-a565-984887687341@oss.qualcomm.com>
Date: Tue, 20 May 2025 16:29:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] SC8280XP SLPI
To: Johan Hovold <johan@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250517-topic-8280_slpi-v2-0-1f96f86ac3ae@oss.qualcomm.com>
 <aCr7UzmK7XCjpsOx@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aCr7UzmK7XCjpsOx@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dIummPZb c=1 sm=1 tr=0 ts=682c91c3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=IX2s_8XrF8Sh1HtkrDgA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: m_-_gd89MT8AN3yS8cdROHfMplP_WTBJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDExNiBTYWx0ZWRfX3jzwcLdW2+pu
 mw91evyiQhrhoPkIVVIsvHSJLmE7ItpYu4bGnksuN4GEaujgmkGgX0GtfCNmusIWulaOQG43goN
 1lKVWo73eGmJJZG9wSgBW+rfkfCyBcVRXOR1J7JoR+uxI2s4noYi+0GrXHBd1m5tefN6xgN6BYw
 edeeW9t/p8nQRglKKoNnFcxGxT01SIKJioCiXH93ZtmYX8UBDlOUTnUoUuR4WzAXxvVXb9exjad
 fVfnq3MqnpfR7PnxidMPyU8RLbznx38BbDsaSPQAmOkHUaiRgPpZMpoo3lSz5N+l1n1d6FqOvDc
 qmpu/N1bpiuz+WfuglotKf1j1Ujgorpzp30ULqeWAxP/qVu/dVl43+grKfWl1gSBW7TCdEDVXh8
 bX9rWdx85ZtX47/WVGFXMVmrt/NwvjFbmqO1VskWlTH9xedptGQmEWOwgytlnTIv/HMHLEiI
X-Proofpoint-ORIG-GUID: m_-_gd89MT8AN3yS8cdROHfMplP_WTBJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=778 adultscore=0 mlxscore=0 phishscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200116

On 5/19/25 11:35 AM, Johan Hovold wrote:
> On Sat, May 17, 2025 at 07:27:49PM +0200, Konrad Dybcio wrote:
>> SC8280XP features a SLPI, much like its distant relative, SM8350.
> 
> Please get into the habit of spelling out *and* explaining internal
> Qualcomm acronyms like "SLPI" so that your cover letter and commit
> messages makes sense to people outside of Qualcomm.

It's difficult to judge which acronyms are known when half the words I
type on my other computer are TLAs..

> 
> Also say something about whether and how this is useful for anyone
> currently or if it, for example, depends on Qualcomm proprietary user
> space bits.
> 
>> Dmitry Baryshkov (1):
>>       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s: enable sensors DSP
> 
> At first I was worried that missing firmware could cause issues here
> (e.g. drivers not reaching sync state as with venus), but Lenovo has
> indeed released the SLPI firmware already.
> 
> Are there any other potential downsides to enabling this (e.g. before
> anyone can actually use the sensors)?

It's probably only upsides resulting from keeping the rproc in a known state

> 
>> Konrad Dybcio (4):
>>       dt-bindings: remoteproc: qcom,sm8350-pas: Add SC8280XP
>>       arm64: dts: qcom: sc8280xp: Fix node order
>>       arm64: dts: qcom: sc8280xp: Add SLPI
> 
>>       arm64: dts: qcom: sc8280xp-crd: Enable SLPI
> 
> Without firmware this results in errors like:
> 
> 	remoteproc remoteproc0: slpi is available
> 	remoteproc remoteproc0: Direct firmware load for qcom/sc8280xp/qcslpi8280.mbn failed with error -2
> 	remoteproc remoteproc0: powering up slpi
> 	remoteproc remoteproc0: Direct firmware load for qcom/sc8280xp/qcslpi8280.mbn failed with error -2
> 	remoteproc remoteproc0: request_firmware failed: -2
> 
> but enabling for the CRD reference design and requiring users (read:
> developers) to copy it from Windows should be OK.

We shouldn't expect non-developers to have the CRD on hand, right? ;)

