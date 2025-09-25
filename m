Return-Path: <devicetree+bounces-221567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E60BA11FB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32FBA18883A7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C5031B831;
	Thu, 25 Sep 2025 19:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lSCSFT3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75C631B803
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758827406; cv=none; b=RbBvJFg39Rkzlo2ltBPREdNlyJ0262aBtIvfGRusV4sCCBCvJEoq+HDMIYEsi77VeEUFtX/BqFDT+VfN3jPh+eTz2AVrFvetNtnDE+9JIBHbOkQfBSjGR+NOkbcTN6xm1QflC7eFA6xzbC1/CJ9N+NVQlzNilXSF3le0kH12IYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758827406; c=relaxed/simple;
	bh=33QVb+NuxOAlvLexUpybIeM5jklhLL3UPh2hDq/dvyQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MMn8TslSs3+mXJmusd5by8qPbL0lHgb7/8uHkkINyE3iDh+HmDn/js7oVu7j65CxKCmjGjzhRVEjjQugvqJ1oDMLHA0TZC9CGa5sw6GK0viXMO0GWl4CKnzlNp+Dy91aav4IcqD5Kj3WlqctE6nnjCAietxcwtPnWOuvxKXtMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lSCSFT3y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPv9a004177
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aq1TCW4NK+CnzHfz+6d/b4lI4bzihUEnE7N3vMMCLGI=; b=lSCSFT3y59o31pwW
	TFj6XKZVYaPYzpCcNid128RrCMIfeO+Xzn23FzOdnKkmBmMSwUbBvxTmh0nSlU4s
	8htiGqDN24BTjL5cESPckh+9wGyvxz+BN1D+3pOm8lNkdkJC7F89AcQWKaorMS89
	pzdDvasYNZX9+uWowYpKuhzwqGVrYqeN//4v4oIV+HXRJhnKGk8OGIEbC0uSDbEX
	UYfM0bvlVbs8n7JD5m8T9J66GQsNwDKOBu/Em1KqESA9nN11xumnBpg/1y7KGhU8
	RccnqOIqGaQEmnPu0g+Jcqpwc2GAdDfSNlaCbPPHs7+9Gnr7MMsS6d5rX19KOtzd
	VfUfeA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u03cy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:10:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244581953b8so13622005ad.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758827402; x=1759432202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aq1TCW4NK+CnzHfz+6d/b4lI4bzihUEnE7N3vMMCLGI=;
        b=SndwpUC+QIdjmH88SCSDhCHNXxFxxNpraXzMeVPflJpWN5GPp3S3E1ojRXT+tFFjJu
         mzqjmjETez/gWQJCu2QEiaNXgIigDFkjErhrH0fMIXmJRpx+SYoM/blRlC8FzjOo+F1U
         3PCxwvqtQGRgZfOkQAcr8WC4nGPXKR5eu/xD7OBkVvL6tTCxMLNnS/RypBmfyqp1yOtw
         pYctPK5mCMe04iKDEkfYwh9U60beX2IaArMIqOSLcu9k5NJOD7dJpNRQZCFjz+xf1hN1
         moDV2SiBzDZV4DOUsKy8jy1XnJZw6y8NUXtbOUqFBjXC1reaqK02T7nyo/jfGIjJVm4n
         yDxg==
X-Forwarded-Encrypted: i=1; AJvYcCUDiBefd1Yo8BhFHM10ukI3eCtJA8hgXfPo64vZYu4cY6J83LRS9mkXWtA55c5QVeYXRt1fFeAF1ywL@vger.kernel.org
X-Gm-Message-State: AOJu0YwbOznFQafr0Y9RZTQQcXs6wXACMmoHdKVSJASqErSgKRlUEPmJ
	QU+s+wOgFISXyXwU/NbN8I6HXqtweafih1MsBebVRQjgdocjq52tTUKA8udAcZ8S89jc9/G3LWS
	yxxtHYNxgNgQfyzERFhvoJDgAT43h3PFSiv+cz3ua1fcv/sPSCEwXfhKUj3UnGbpC
X-Gm-Gg: ASbGncvYo60ilbBwfHdtY73GvzQNYs11QQIocwL0BbWxKcwaY5dtVc1l1P5Aq4BshxD
	8eJj6uNPNOfwLDcsgpX9jj/asLhFi2ptq+IR3dZnCWKesuiqbUXtrwME+tpLoQyhLIJwAolpn2B
	X2v6+309Avetrt6AKu53hQ3xtS1AW4bZMwgSUQ5KICROuPbjoNvWhovUlH55smjzfHbukKHMvX7
	Lu1WKlzuKZ5I/vLQ0PDmDKmOxh4AL/aCZat7XMWpMp4D0yHLSoiILjKQpqSAocbc8ZkPrHoaqmF
	/TwmzzQDVPGMwrsw58leSQgT5UXcxNYYl+JFFVBoIruq11OBCFSKIXkUTQ/WdaGa5oSK5FmN+Q8
	=
X-Received: by 2002:a17:903:3503:b0:272:d27d:48e1 with SMTP id d9443c01a7336-27ed4adb725mr51666835ad.57.1758827402373;
        Thu, 25 Sep 2025 12:10:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsdikHslccjzEdRvkqdX7DzQqj39+zjdTyWCwDH4G4Cf76Ibq1t4sN3SiZloNNOu/uTbBqYQ==
X-Received: by 2002:a17:903:3503:b0:272:d27d:48e1 with SMTP id d9443c01a7336-27ed4adb725mr51666635ad.57.1758827401958;
        Thu, 25 Sep 2025 12:10:01 -0700 (PDT)
Received: from [192.168.0.166] ([49.205.248.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d310csm32368545ad.10.2025.09.25.12.09.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 12:10:01 -0700 (PDT)
Message-ID: <0ec617c8-d22c-f37d-b66d-3a562310982b@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 00:39:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
 <vqzon3svfqvk3poz76jm5x5gf4rd6vkygegonafcprmkejt4aq@5kwlwytg3ulk>
 <1af0d19e-30e0-1260-877c-5d6027c3d297@oss.qualcomm.com>
 <888e0d4a-ee44-4b09-8dba-2e0b282c205c@oss.qualcomm.com>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <888e0d4a-ee44-4b09-8dba-2e0b282c205c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WEjtwCMqOrvrB-GAFCMVxtp4c1vN8g4k
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d5938b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=AkZwv1uTgJSVxlfcUQlFCg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=_tU7aAVo7FkOKzdvdu8A:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXzNojgZSDk6vB
 CoWt7lPuo1kzuL6k2GY5zD5QgVNfGUMVfUAHr2Y2Ex8f0BV7a1iefCVdnrvF5072fu9lgNcvC9Z
 1SFM+vY2S12PEo/uk8qm9oEVpx4D656vFe3Xmg/6Y8Z/Im1PPbLdAyEpPN6gFS3Q1YUfL552tx2
 IzzaRw3Im/VSfTHbohv08uhyrqicO/piJ07fqTfFUe2od2rv0lgXEEQ7T1SGsVAPWQjanmlMN08
 AnakZRCePEHWlpD1fDDs8/OniZX2qJhQAHuePRLnQtceyIVidijt2vNyn2AUHkxVF6sclBK3Wa6
 Ng9S88zar1RSrgq58j4+QXCu3a766lfVCTDXcHljkkOMrn46puFuQY4k9DE01vWCapx0uOZjuBD
 0W8+gFFQmSbv7m0z2SQIQqHIZLwPmg==
X-Proofpoint-ORIG-GUID: WEjtwCMqOrvrB-GAFCMVxtp4c1vN8g4k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171


On 9/25/2025 2:29 PM, Konrad Dybcio wrote:
> On 9/25/25 9:57 AM, Vikash Garodia wrote:
>>
>> On 9/25/2025 8:36 AM, Dmitry Baryshkov wrote:
>>> On Thu, Sep 25, 2025 at 04:44:39AM +0530, Vikash Garodia wrote:
>>>> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
>>>> compared to previous generation, iris3x, it has,
>>>> - separate power domains for stream and pixel processing hardware blocks
>>>>   (bse and vpp).
>>>> - additional power domain for apv codec.
>>>> - power domains for individual pipes (VPPx).
>>>> - different clocks and reset lines.
>>>>
>>>> There are variants of this hardware, where only a single VPP pipe would
>>>> be functional (VPP0), and APV may not be present. In such case, the
>>>> hardware can be enabled without those 2 related power doamins, and
>>>> corresponding clocks. This explains the min entries for power domains
>>>> and clocks.
>>>> Iommus include all the different stream-ids which can be possibly
>>>> generated by vpu4 video hardware in both secure and non secure
>>>> execution mode.
>>>>
>>>> This patch depends on following patches
>>>> https://lore.kernel.org/all/20250924-knp-interconnect-v1-1-4c822a72141c@oss.qualcomm.com/
>>>> https://lore.kernel.org/all/20250924-knp-clk-v1-3-29b02b818782@oss.qualcomm.com/
>>>
>>> This doesn't belong to the commit message. But you also can drop this
>>> dependency alltogether. Could you please do it?
>>
>> Sure, i see below works good w.r.t schema and dtb checker. Please review and
>> confirm.
> 
> lgtm, you can also drop the interconnect header (i think you don't
> need any rpmhpd additions so it can stay - potayto/potahto)
> 

interconnect can be removed as well.

Regards,
Vikash

