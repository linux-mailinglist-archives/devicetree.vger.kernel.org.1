Return-Path: <devicetree+bounces-236539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 547ECC453EA
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:45:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 148074E4953
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA327238C0D;
	Mon, 10 Nov 2025 07:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mr5VFaOZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VCbGAuhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEC821FF30
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762760728; cv=none; b=Xg3X2FswIQho5YlSLVLIyyY5fa+zb8hgv4Ji2YRoH50jDFBoxuT2s6tI0DcUJ3a7yWvGa2XtdTBY8+PmbbafAk7lQX5aa3VqcPH2UlWYthYk+dMQuqXVZcY3F3Gk3ixNI0z4qqzuYEmp/6GPnlGjp5Qab0K5vEn3x7+ce9iA2FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762760728; c=relaxed/simple;
	bh=OFkVrE2qgFrMXWxE5rukKxWh4c9SyQm7m3xjNNTBgd8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=IZjDWnpGeVFE5l7DiEjrkzJaE7ST2P9yz/rS2TgsjE9L3xd4OZVeinepG3BTEXqYK/oDut1SW3r+70fkylgt0XhiPyOihLobmLGhO3O8b0epo48C1XBiusJY6VQnnJL7YCmK1zgofcxs4NzBs6OirWGoXizJ1DCJKNGHDAhQA10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mr5VFaOZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VCbGAuhN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9KBNJD1506729
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AJ7p2x1khAkHu5rBORGud19EIsMelTasFIMBJoZ7S7Q=; b=mr5VFaOZ5mqOdMlt
	hLeA3bXaBFXynfah2nDXCi/w617Ay5qEr8+91T2DXXpBbd3/Ckq23yAlHuq1FcTl
	lnhnm5oJYzFBxINzQvZMoCIG6s/n1pJVGKD/QS40GfiDLQ2zsDgmVQtPxEOUd1Ef
	z8Lbe0UUlbsnPN98zbdMe6Lwx1/7ojz2uytfM834RvPJ5/qvmTG4FukGssSub8eH
	GmIUYDxQuPTpK9GoPa38E+EivT7ZVL221npSYlEKCL+oZUTKRZkRrb+C5DQcB9Q3
	sscZZEuSKdYyD/f4PM0ptFuOj+TmdS359bmcvBAW/BcExRaTQGQfXv2tgFAVD5Yf
	Z4icEg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xu2utde-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:45:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b0e73b0f52so6492529b3a.1
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 23:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762760725; x=1763365525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AJ7p2x1khAkHu5rBORGud19EIsMelTasFIMBJoZ7S7Q=;
        b=VCbGAuhNMNJG8QL93YmR/gq/FN3tHa0PCcmuJepdVUm0kzarR6excLRATViXmnJHBF
         6FNyU9RDTeZ3a06VS4jtlTwYYKfjBnhuXs7mT9GxuWHHPDXWIvBGxINN+Z650DUF5S8S
         CUxDB1sKdmy8BEdI63I/+cEFaQ60xDXF5jH9K/yGAq0eZfthEyQLsMXb+Fcq6tiJTGDv
         lV40xEOy5tBu5UljgM5sppxGKLK7Nhv0qG+LrBpjBb2Ha48yMIjuygSoLXWjJdYoFPXc
         IzmXP+o0gqn63/Ncsec3n2ZwHccax2vmis/l5ZOEJM4/Fc/EGNgTWoQcto1dxz7ZamMT
         kjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762760725; x=1763365525;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AJ7p2x1khAkHu5rBORGud19EIsMelTasFIMBJoZ7S7Q=;
        b=ORvaU8PJhTzgnzDo96x1AVudkpySS+HnlZICh7YTOHYUQIbhcB8QoD4iv3QwhQEKTQ
         teRo/f2ZvUvkKnEWjsSP7ik/ylHZPVQkRwOgY1zF5TQKaLTgezyQ7LnCYIrf9GUvl/TY
         bp1kmMyddBBYSICSFPwThw9N41bSyfe5IBI7pqfQHEj19qXltuLrsMZrfOLMjhm90D/1
         g3oB7pBSqQnEOpY9Pw+6DZKlh3rauqCU/uJZvGOq0pADshzXNWUmWYKU6KPWB4BxRgiT
         /+VNNqlxHxcPvPs2BZx3XHCFVcBniJfXpfQyY6yLMYceWLTAZW/o+v7+U72LSQ9MXt0b
         BG2g==
X-Forwarded-Encrypted: i=1; AJvYcCVDRyqRfgFWvdH4JJ4+BwAUKLP1b7zFNdTyK5J3eaxR2kqlMk+b2I5BoLJKFIwrY68RzKL6CBNRNj2c@vger.kernel.org
X-Gm-Message-State: AOJu0YwIJ1OFplckAfiisi+872IMJ4t7BsAGy+Y2lRLeh94g3h5uT1jV
	phCxbPhK5woyymx3+IPO3OkfqLONKaC0FMdgsOU6MGRioQK4Vc16g9csSqr9C1IxWHi7uaXSiju
	ni8gIagetekHqyHKBsv+fIIwLdtLpVJehwB4BvtXrSIJcPUkbhEn8d7nsytZ/bTpH
X-Gm-Gg: ASbGnctXh60cPXTlwh6fUjsmWMuAwW53SHzpMpkoEbovW3LDubpP5CTEShqN2IBgvED
	crI1I1taFcuJz9jaYbPsJ0a3OUhFjwazkThLRZHDi7kPMlPaui3KcSFEEYD4WpnBbvYiq5LEuC8
	orvQiykbUPUVmsF4wzjFl21cAeySjE3HapcjZwsbz6ZxzmLTU4bDzc+aMPF2mgaYRqwfU5jNoHM
	/lIuq+JlwXMjZutci7cg2WSTcwOQLC+on3oG4iwuU2Ww+sVarxFZAAftagsb8VdQLSGwn9asdgB
	Cxr2pbuH6QO78Uw36QQu6c2GB7aKHd24atgXUmUGP0njzBx0QMyM1yj9JITedcgNETqY7/x2UlK
	rTfrvsdUaskeyUmaNQ2YDcn6153tRXrcBuA==
X-Received: by 2002:aa7:8888:0:b0:772:8101:870c with SMTP id d2e1a72fcca58-7b225b64352mr9220604b3a.11.1762760725015;
        Sun, 09 Nov 2025 23:45:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8s4B6oryW80h91ZqX6xbKaXLrxeMrpd+epJfa219GcWl5HMyFEpH6fyR71PgaAd7IKRaVKw==
X-Received: by 2002:aa7:8888:0:b0:772:8101:870c with SMTP id d2e1a72fcca58-7b225b64352mr9220564b3a.11.1762760724507;
        Sun, 09 Nov 2025 23:45:24 -0800 (PST)
Received: from [192.168.0.171] ([49.205.253.130])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0cc175484sm10760575b3a.42.2025.11.09.23.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 23:45:23 -0800 (PST)
Message-ID: <00584c86-12c6-4c22-a764-581c866897d0@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 13:15:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] media: iris: add support for video codecs on Qcom
 kaanapali platform
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <579c8667827cb1ac5778b48077f4f84e875b69da.camel@ndufresne.ca>
 <c3a468be-39b0-5c3d-e4d8-9e45f3f6ae22@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <c3a468be-39b0-5c3d-e4d8-9e45f3f6ae22@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dMWrWeZb c=1 sm=1 tr=0 ts=69119816 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=qKS+5dAnvCMTy05vH4hvkg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=j5fufavcaLyeTOenXvMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: DonkUZSqZlLHsOgdAxIbrKS9MxP7f9VH
X-Proofpoint-ORIG-GUID: DonkUZSqZlLHsOgdAxIbrKS9MxP7f9VH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA2NyBTYWx0ZWRfXx1hf+s9dotKB
 nWIqB5NSc/Upz2DqHpOoA3tREwXIOSDsyjJB6DQjfJAdYGy9jPu4K2EbTII8mjNQ+eKiTx8tVgP
 DS2XnN3bFuTQM5y+b+4IjDbG9xQ4hkfJD/0NXfcZsETgaqw9sqvJvG+2WGkL6xGurUI2gjQW0eF
 OWxBg5v8UDh7CawgryLCd/jpxPlSAkBM4ssJqdxlyGzDr7Mb56L2Hlt/p9oe3imWvpebxvOwmRc
 1i/HVmqRBS67YMxeB8Fv7j2SdEwgECMOBqEQSN/O8arBig5bd6DtYdKyGVvM7ZCdg0BxUDWxb0I
 N5e8pPtAkZmcjvheanDSHHCrt6tBeI4u1Xsgj4Y9q8So2NUb9sQl3eU3tCkAnVoesrsVXkn3UQG
 e0aZrXqbRZkSYQU9m//O12c6WxlQAA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100067


On 10/22/2025 11:37 AM, Vikash Garodia wrote:
> Hello Nicolas,
> 
> On 10/17/2025 8:06 PM, Nicolas Dufresne wrote:
>> Hi Vikash,
>>
>> Le vendredi 17 octobre 2025 à 19:46 +0530, Vikash Garodia a
>>> [  350.438406] qcom-iris 2000000.video-codec: invalid plane
>>> [  350.447079] qcom-iris 2000000.video-codec: invalid plane
>>> [  350.458821] qcom-iris 2000000.video-codec: invalid plane
>>> [  350.465860] qcom-iris 2000000.video-codec: invalid plane
>>
>> Just a highlight, the driver should only print stuff on default log level if
>> something is malfunctioning. uAPI miss-use should only be trace on loglevel
>> manually enabled by the developers. Mind fixing this up while at it ? Hopefully
>> this will be obvious to you next time you encounter it.
> 
> Agree, this specific log should not be part of default execution and more so
> when this is not malfunctioning. I would remove this log as i see it can be dropped.

This would be addressed with

https://lore.kernel.org/linux-media/20251110072429.1474615-1-busanna.reddy@oss.qualcomm.com/

Regards,
Vikash

