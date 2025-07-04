Return-Path: <devicetree+bounces-193050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D40D4AF90AD
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 12:34:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2F951882AB1
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72DD2F2724;
	Fri,  4 Jul 2025 10:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jFDiprCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E12F236A
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 10:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751624888; cv=none; b=D0AwRZ+95KlAtJ1T8ZGFsrEwsXHAKajCgMTzqEd4cY3+EhrFgCxk1NNNdT0cn1WGAKT6BgilBh1QzkUCvZRM/MiwqzAQU2y8uAqd6qLJY3yiS0oNu0ylplaqNDFmTL2KDhhqlAKe5EKuRHpqctt6XuepqmqiIGDbjSz4PUuXiBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751624888; c=relaxed/simple;
	bh=G/e37K30BtcmlRmYfZxP0u0F075QyuQgrrhDDUK57+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QFvyd52vLu/Tv+b7f9dsYibyccBAVJm3e1R0HUByYCg4jLjy61bmsbFPjtp6Gh2w4Dj04/6sZHlGrOZ1mqPoarz04I24Oqok9s8SIMMlFDHZsDcsrioiMkqPmIIXgfKBfH4M7igmY+1CUACfufedm/IYwtVhsJt7NfvyaT8YKs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jFDiprCT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5647wgPd000442
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 10:28:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hcYhwg2H/XHGiaSGX5T/gqglxK5liyG/eBHo3NygJnQ=; b=jFDiprCTR4SolVmp
	XLAWECotUU907b9ehU9ztjT74CAmaigOUirsmPSc5Mr/rzEKDqiBJm9p1gGQBiOI
	/HoRnb/xjYDEmY3oJ/yT/fWjP3bsD65r7g3OQqcLaWRUYPz/0PNGYjKs/ciuX2vR
	gqaG6PMJdksxUk/yFFILycPuin3eu95MmVJcla7Yr6sT4thXJlub/peoLwNwAsJt
	jOHXSvRbHNq/dWZVpgvJdTNkWavM0UV6HcSQBmS/pwSab16F8V7y4EDrfREk9SVW
	YpdrmSTUULLyt7zcb3DOXQyUFTttL+HU+ArpJEHSxRYjAOzF+qzPQGU9WcCNS8RH
	K7wf8A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7qmkd8j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 10:28:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a43be59f17so1223091cf.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 03:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751624885; x=1752229685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hcYhwg2H/XHGiaSGX5T/gqglxK5liyG/eBHo3NygJnQ=;
        b=QCbDkl0IMIYsvatrSqQwalJGbnujPOFiORclQ0xotguKKsq+1MVSs2HgRDJ33vWwIi
         n1STNXj/jfF7Sd3Y2rBOBqryb+FGBLMsU8VrZoGPL5EtwWeLJPElvDfq6RVtM7jDdyoi
         OeXSo2I7HMufHd0a0GrESw8/1155rigwsyxDFZV7JjDkl3htwTj7UkrRUDrGiUHEeLrS
         LivT+RSX7/orMElHjfQ9jMlqAEh15Q8xceJZy6+EXl8dMzrLRoSVQV8DfaLr6CKPz0Hh
         wqBOlmFauszIhQIl2NdRIYPG3UGSn4XZxOUC4Wu2zmUgJ/ARc55Pd3EIvfRUgoohTePq
         A4OQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYfQIdejJoNiejDNOQOvzUmkVIwrNDQ2IxuEthb2HCb50/PZMPWE0KINZ0Q8/eOwulK90TYLFmk9mh@vger.kernel.org
X-Gm-Message-State: AOJu0YzFd81a7Oe49EjlHYKF+ssU46wAsivlRBXctAur5xWuzuv1NYIE
	jh99x5fQjZ+RbUJSe0AVpeC/NtB+b60ncsktWGYDCfiDTXui6ex9Ju4nbSq7JwrxRxC3we3KV1m
	5HYyN9VERbscwNxopbMlQsk0maJUt44xkWB4/8mJ6TGAar57s2QFEvZavm5VMMyPq
X-Gm-Gg: ASbGnct4pHHXYNXLWOZ6LOpjGfrriHpO/WG/qPnlWXaiplmCn3IHJhsAd4JhkPwdzfy
	c1BmN/QeFeqCW+m5T4iFLWMTAZpTGn73lDOvLvHBz9FzJ7gK4xbhGMib4aFjbCTjuqubEfmn6Ch
	kr4mYaVAIYaF4NNqJJraZ4vpzHUM9E2uqOmi5L4+MqYiWnoV5rp9I9bVkus6RAlDNYJnmZ6jqy4
	ha9feDyPeh1guShfnB5V8mMEhTe5gX2WmCbB8SjjUepO77anHDLy904DVNlkStai6Uj93E32zZJ
	/f94YAXBkPhYAp5MjlCc4C40xoS5UXzsEcsk7n9sjBJ8hsk8duV9IMggvaARO0UOiu7Dv68a3CH
	VqLL6RA==
X-Received: by 2002:a05:620a:4148:b0:7d5:c1d9:939a with SMTP id af79cd13be357-7d5ddc689bfmr82924285a.9.1751624885124;
        Fri, 04 Jul 2025 03:28:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEepMErcR3kSl7PpdDimjsfv0t/HHqo53Oh9ZaV5I2CnMfyJ6V0u/KZvLGfTyKT6SaxB8KzvA==
X-Received: by 2002:a05:620a:4148:b0:7d5:c1d9:939a with SMTP id af79cd13be357-7d5ddc689bfmr82922585a.9.1751624884534;
        Fri, 04 Jul 2025 03:28:04 -0700 (PDT)
Received: from [192.168.1.106] (83.9.29.45.neoplus.adsl.tpnet.pl. [83.9.29.45])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6676a2sm1134235a12.5.2025.07.04.03.28.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 03:28:03 -0700 (PDT)
Message-ID: <8b7e8174-38e7-45f0-ab34-c8b0517a9f59@oss.qualcomm.com>
Date: Fri, 4 Jul 2025 12:28:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <eab8d79f-7188-9537-9176-3e4d22f0978a@quicinc.com>
 <5ad418d9-8199-43c9-a477-1e3b939c054c@kernel.org>
 <7b6db4fa-2f73-376d-4eb3-64c1c7e6cda3@quicinc.com>
 <f5ebf0d6-2f0b-45cc-b99a-b786e5df9edc@linaro.org>
 <5qsgbqml367yq6g5vb4lotrzulojqhi5zlwwribze373a63qrn@rxi4kwyt66m2>
 <4f38058d-a2f1-4ac5-b234-228cfb2e85ff@kernel.org>
 <1ad2ca1e-1d57-4ad8-a057-ab0d804f1d49@oss.qualcomm.com>
 <7da769b4-88e9-401f-bb21-0ff123818b9c@kernel.org>
 <6840d462-8269-4359-a6e5-d154842b62db@oss.qualcomm.com>
 <af0da28c-3ca0-41dc-aaa4-572723ea74bf@linaro.org>
 <klhvgzizub33f46buqsog54wqksqp24a5tijwyv355l2ao2imo@wdkojfebc6s2>
 <e1a6e75a-2a5d-44a2-8bbc-140eb86d1806@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e1a6e75a-2a5d-44a2-8bbc-140eb86d1806@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=C4TpyRP+ c=1 sm=1 tr=0 ts=6867acb6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=qmfFy4ndMtQ753Zl/n/b/A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=DVKtXGnjxsSMy4abO9MA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: Z50-joRXkM-g0kWwsUkXphqVk0mC02Lo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA3OSBTYWx0ZWRfX9n3+N+/81SmA
 d5j06vCzR2anSYSQNMWTkuCX9n4vhJxXvOspUanFMf2ubEXPTIixDEPhHeKKJhL5+fs9UwkC1Qz
 ZuCTObLOOaw7anRMdeePJJXsm0ZwI06dAQCfBvQ9BwQOhltUPd9h32f4UZ4J2nmZjzsEElg1NVJ
 2na58tzcn/DPovfZfsp5Yw3aL0laUx7Vy77lRzk/3fvFQFI2RM85uGroVFleiEeBjzYMtIanucl
 rUREE/AIszYpBB0aquUoj3vcv8GdrXytA+UIq5yZirW2gV8uChocZjUC/ctaO1qLmCP1Y/czg0i
 AmP5mVoo4SOWCcFPz3qTOcVlRRSPmwkyz8wIXhDrkCwSln7scZEaH5hENWsA8uzefZg9QIhlMca
 XJlM1NJNeVTiWmoZ8VVtyFmzLKuEYW1SkUUyXxpCO3eNPr1QQ6xj7nH/ebX8jRJLHC1n1iDr
X-Proofpoint-GUID: Z50-joRXkM-g0kWwsUkXphqVk0mC02Lo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040079



On 04-Jul-25 10:23, Bryan O'Donoghue wrote:
> On 03/07/2025 22:23, Dmitry Baryshkov wrote:
>>> I still give my RB for the series.
>>>
>>> To me the only question is should it be applied to sm8550 or to new SoCs
>>> from now on, sa8775p, x1e and derivatives.
>> I think we need to apply it to_all_ SoCs, maybe starting from MSM8x26
>> and MSM8x16. Likewise, we need to think bout secure buffers usecase. And
>> once we do that, we will realize that it also changes the ABI for all
>> SoCs that support either Venus or Iris.
> 
> I think a dts change is a non-starter as its an ABI break.
> 
> So if ABI break is out and reworking future dts to allow for a new device is out, then some API change is needed to allow the driver to stop the kernel automatically setting up the IOMMUs, create the new device as a platform device not dependent on DT change and have the probe() of the relevant drivers setup their own IOMMU extents based on - probably indexes we have in the driver configuration parameters.

FWIW not even counting the address space limitations, no video hw
binding today is ""complete"" (with all related SIDs bound, secure
or nonsecure)

Konrad

