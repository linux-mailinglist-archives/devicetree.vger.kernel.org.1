Return-Path: <devicetree+bounces-133908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD909FC436
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 09:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B21E163C9E
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 08:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54BFC14C59B;
	Wed, 25 Dec 2024 08:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TGnoOGiN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8116A347B4
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 08:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735115509; cv=none; b=FVdR6YAnXUX9cRLSTmw1/V4lwW+9NNZhhOn+fHkme3mrPvuSaB2IDhix+RUDT0Mj7AILGvvzkgaGxEt1P/AMAtAGkYTKYk8ukFr51ZfW1wRkFhVvKD+LFfIelKM/5VX0drVoqZajY7y1ZUXivoOXRq8I4RM6ivrNY0gk+JJUq5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735115509; c=relaxed/simple;
	bh=o2sc6pQ+XIlW+l7Chdoxra1zaFDgcsLWDZ1mZjoxgxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B25el8A6HxAOJmslkcAzccoZpUYlGg29h+0WrwaRK2e4+mSNgfCnEuKsHNwj9e96/AnZ9fCGyZCdyGm3ncvPf3/S+oEduKWqVpZcBqQNOPrpHljfmHyzrZRKoSc5N+mPaG2EXrrKi+q7I+lgcRvulk0B3pTIOGksxN1b417eu+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TGnoOGiN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BP66XpX030310
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 08:31:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6Gqvd2emlMkTHneG8Hl7t95bMNl6maEOsj1Ec4P8BRw=; b=TGnoOGiN+M+VfTP6
	nehLTRWyrjTWwq9oWwPYfRCqi86LWPPmV9ynmw38nXLNgroS+EUipPtTNOmqo2GW
	sxod1gK+jLlMdDp2TGBmQCJv0gcyJCyR6CL0n+b6+Qf8VXMP9jQVT5bZNRJ/xu0D
	KZ+ot65P8x2V9yPylkJf/ohVaAIzhNL4u/oeyyK5PNnnTJAoO0UagMK69HArYQPl
	mqzN9Hm9ELitfDcg3asc5p52PWzv63/Pj8Ryk/fCElwv7P9Q91/eV8TaWbMZwaA8
	5WO081gQzDeQ+bc3DnCTnpe+V5IFSNZl5z+1xrPpZbpoIOuIGSSWcDmx4vsn8FZR
	UHfFHA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43rcg8gf7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 08:31:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2163dc0f5dbso61892895ad.2
        for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 00:31:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735115506; x=1735720306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Gqvd2emlMkTHneG8Hl7t95bMNl6maEOsj1Ec4P8BRw=;
        b=QpfPJHeStA/6+rVtZlQK4NrdGF/925ChHb5FcRkVuzEDFQYGiKA8GOVeVUEXNzH28/
         TbqfmZmrcWky6W71s2mRgGtZkwbDK2cLxwvuS9rJGztRf1Fq2ja5anulTpY7G3NSKixS
         b8bUtZkH8zfZpbXg8QIdpFbOqR5CCRyhOGURWSoq4gkIH+GXo+KRYh/WPXuKrC3VaxCu
         YZ5eoA3gcUnXLPvbV6yk1tYMWcrZpVbfBSQMd/kSL4+cTk8YSuhyd+ta1SSgpb6sTb0H
         v5186cRe87AcS1z1AtBcT+AbxV4iMUR1UoW7eBCqt8ByoRBPlmBKH65JPLQqWfCulo8k
         TESg==
X-Forwarded-Encrypted: i=1; AJvYcCUshi6UIPkhQC8hN4fqST8SkpM0pM1xd3brtXglIQTkHNzq9dG+VuxZFuuFQMEyyHRQKzIgew+X6Bs8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2b7hsiwjYDL78w1YSkJBiDeIKq7ZtobxGks09U0hi8KTZHTHE
	QVkt1OuugyE2GsgXy+THwU1Y7/38zO9mO0RAScgcwmkCQ5f773T9oQJnMJmCfApWawV+D3ZqStL
	OBq8HV+uLzqRfqBxfTG9NSCfGm9nL7439tUqDRP4dzaLo0eO385iUiXYEImwy
X-Gm-Gg: ASbGnctEnBjbX+ejkqARuqQQDC50hX9IQvIMX6c4Nb5rm5T3EzoxRFL0m6dal2+yG5v
	ECDlNs8is02Yne9OQvG9kY8gycdBmgoWwi2CNBPuvbcNRlpYqm1wVkNSYf+jsb0Er/XJdNqx6FR
	hN7NCcSOWm04YRGl4xABhu3Holhuu7AMv/QydQ4FNmxfsduTual3MIv5GOEwxr7WZAN9Q+F9ho2
	t1H+UfR9IsuWPY8M6CHBQ/ZoYDjU8TtvHJ8BYxMVJ/qloG0RWs5naH+ZBJu7n2Qj3AQ5Iewn7ge
	qKLbDYEoll+yXYISEKA=
X-Received: by 2002:a05:6a20:c705:b0:1e0:f495:1bd9 with SMTP id adf61e73a8af0-1e5e04503e8mr33789959637.8.1735115505804;
        Wed, 25 Dec 2024 00:31:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/QzaLzF/fcbrHVZfxi3rRanW8WezvFhBWt0qWNZBvJfsBYIxgdw2reovgSkrqXear14rCtQ==
X-Received: by 2002:a05:6a20:c705:b0:1e0:f495:1bd9 with SMTP id adf61e73a8af0-1e5e04503e8mr33789917637.8.1735115505392;
        Wed, 25 Dec 2024 00:31:45 -0800 (PST)
Received: from [192.168.31.128] ([152.59.237.95])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b949sm10835600b3a.176.2024.12.25.00.31.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Dec 2024 00:31:45 -0800 (PST)
Message-ID: <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
Date: Wed, 25 Dec 2024 14:01:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
To: Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        quic_ppratap@quicinc.com, quic_jackp@quicinc.com
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
 <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
 <Z2sOl9ltv0ug4d82@vaman>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <Z2sOl9ltv0ug4d82@vaman>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: af6M_r93WY1oeiLLQ6l2Gw-hRJYVm84V
X-Proofpoint-ORIG-GUID: af6M_r93WY1oeiLLQ6l2Gw-hRJYVm84V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0
 priorityscore=1501 clxscore=1015 mlxlogscore=999 spamscore=0
 impostorscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412250074



On 12/25/2024 1:12 AM, Vinod Koul wrote:
> On 24-12-24, 21:33, Dmitry Baryshkov wrote:
>> On Wed, Dec 25, 2024 at 12:49:07AM +0530, Vinod Koul wrote:
>>> On 24-12-24, 17:38, Dmitry Baryshkov wrote:
>>>> On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
>>>>>
>>>>> On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
>>>>>> This series aims at enabling USB on QCS615 which has 2 USB controllers.
>>>>>> The primary controller is SuperSpeed capable and secondary one is
>>>>>> High Speed only capable. The High Speed Phy is a QUSB2 phy and the
>>>>>> SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
>>>>>>
>>>>>> Link to v1:
>>>>>> https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
>>>>>>
>>>>>> [...]
>>>>>
>>>>> Applied, thanks!
>>>>>
>>>>> [2/3] phy: qcom-qusb2: Add support for QCS615
>>>>>        commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97ecommit e1b2772ea957c91694aa91b90e4c0a1d7b0fb144
Author: Krishna Kurapati <quic_kriskura@quicinc.com>
Date:   Mon Oct 14 14:14:30 2024 +0530

     dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615


>>>>
>>>> Is there any issue with the two remaining patches?
>>>
>>> Something wrong with b4... I have applied 2 & 3
>>> Patch 1 should go thru USB tree
>>
>> Hmm, strange. But then, please excuse my ignorance, do we have bindings
>> for these two patches?
> 
> I see to have missed one!
> 
> This one is documented see:
> d146d384222e dt-bindings: phy: qcom,qusb2: Add bindings for QCS615
> 
> but, the third patch is sadly not... I am dropping the third patch
> 

Hi Dmitry, Vinod,

  I see the bindings for QMP PHY in linux next as follows:

commit e1b2772ea957c91694aa91b90e4c0a1d7b0fb144
Author: Krishna Kurapati <quic_kriskura@quicinc.com>
Date:   Mon Oct 14 14:14:30 2024 +0530

     dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615

As mentioned in the cover letter, the bindings of phy have been merged 
from v1.

Regards,
Krishna,

