Return-Path: <devicetree+bounces-244170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 987A0CA22FA
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 03:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 677FD300BECE
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 02:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A722D6E5A;
	Thu,  4 Dec 2025 02:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EKgVqMzf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WM+pDU0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2A4398F85
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 02:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764816127; cv=none; b=Xilosf5OCKqq8+Q27xz2rsczkbDMQAzdsC6D9dr2zySM23zixwLa/kylzBdIR06H99av9OpvZSMgMm+GhzpCWybThcYEcU20dccJktG3xrRFvxKyUNLRpkXM8+J6gMX6IUcerUmtJxOHBQt9fcbMsUXnjVYXelJIz6BUV/eehpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764816127; c=relaxed/simple;
	bh=G3y7043f/pefn+snHig3k9wSMWlvGhBULmjcWL5NODY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iLJEqosIkcKvS/tp5sS6gbrQRb9N8Ty0/ybcqcXDMVijm33WVejCnbg+ya606dGBSfp/BBSnfex2W7EGTdfe63LOytOzAHfudrUU6nGh1rZXKY9ZeQqxUCsdp9HU5JbRiOUc3r1vRk2BfFxDZRbjHRmn4cJKUfWDtUSpB+FqVnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EKgVqMzf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WM+pDU0/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3MTSS11374603
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 02:42:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XnIfixoWkZ6z+8EkKXKCE7MUIYeg9jXrwarGIPs+v24=; b=EKgVqMzfc8eKP1Ya
	9T1j8+VbMhjkYfMjmfsRbxBgNAcLDDV/IiF/V82DrjdxQUWpD5ya4LU68qd2E43p
	QrElvlIMnHj4+LwG8bRHLlxvcP9CG17wbm9fkEt1SVSZbHclZJjx3Ok+kk3xfavw
	ze5WEEkZwwhuz5k1ZOsfuBjWZ3J9Q33fcUtYcXWpVW1pEqjPeaWfdMXXQTEmYw1/
	m1L0Q6nNvOnp4y3xnaUzLKqauZk1qxjeaNMMu4FS4cBx0v/F958d+cog3URsXi3t
	WMjdVyg+bEeIjIq5H30sJB4NmhFPeKzNnHrsfPyr5zD4STREfd15nAoGcK7mYL5s
	cBo4Lg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm0bajjd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 02:42:04 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso349983b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 18:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764816123; x=1765420923; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XnIfixoWkZ6z+8EkKXKCE7MUIYeg9jXrwarGIPs+v24=;
        b=WM+pDU0/1j0PP9awCYw/8B4NQZl6d5bq8adh//9cVzj7QRW1Wtk7Xv2GJhH48SeQgY
         3ptLLv0tlVAn5Mm+6GGY1KE44+ttr4JLE0sbezob9kJ6pyQAcwyE04TF4xFE7JjtwOAj
         lvUYehcoz4zIZaZh/fKM1hrbiaDr0U0F3/IPzheo4FthAWjePgL9C1iB7EwOZUXOfR4c
         NsyNItnZG9AZWNtXZ9kf25zFu7pg5wN3faFbst2Ei3FQGSgwtvlZ+O+9+jVee/eM6qrD
         RQKTfbGcfVxWrt0YfRsRke1M7edkc4QvB4+asZXMdxMX+5f7PosHVNfOgeH0ZQn5EFSI
         Lmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764816123; x=1765420923;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XnIfixoWkZ6z+8EkKXKCE7MUIYeg9jXrwarGIPs+v24=;
        b=JdQJ0hRee/qc/cfCYTHScvYKadoSy/xZ78ce9SQ+3kwvJzaiLmoXM2BQcm7I/+dqAS
         6Hehwq4p5SAPK3goMpVFXvOfMJjawkO6HGp9sAzSlMqOo9v/U8AlIeY5pSkrDp3Yp7Fl
         3uKnr6wMco1hznATHtEohb9iI+yuoWQ7rNdJMmPis3T8aFZTolSLz7oLrI4/R5TKNpPQ
         xWbvlnitPLUfXhmMrBCgZ3iYwgzU21+KfAGiZdzVDBOGaAV/vX1ubsypn9ixt9okIlH4
         3UGTzAf8whhXkII72E5nBoB1LslWp2YL6ZhTx85SrTOLP+w2UiqmbmVDbAW6jIR56Hhc
         mpqA==
X-Forwarded-Encrypted: i=1; AJvYcCUuwBaLLqpQgK944NYKGbPD1NTDo1bhaY630GGVlWcf5b7yuxWWfATgOzYrkgBLtgPAUCrs1o1WbOR7@vger.kernel.org
X-Gm-Message-State: AOJu0YyZBPwS0hb/P6yk/27kzMWmFHNorEhGU+JtZpcr25eq10yw60jj
	B8QxZlYcgdDyCYji34CPSWB6k63uNMGbPkEI2i6Cmrrmo0fmzXrlRLPIy+oc2XKjCLlkH1NvbFc
	k7rG4Gv7j9zvOO0NW9+NxIzOE7v4glggqCFq82XKioqToVGI36SwI034W8+cht9TiH5vkQ87Xio
	s=
X-Gm-Gg: ASbGncupLc/NC+LBBwEpZLhaR7XT2X5fAuLQ4ojYuqMaxQFraNhbKF7/HXiOwnLE5Nu
	Eblohr/Lij6H8wvE3TA0luGS/T7sLwWCu6autScC93FiBBqq2P+vhOYHxTNKAELJt7FpsYSm+TV
	ATyUQmWisL3efCXO+IkGsNds0hKk0cd9jWjMQRTeupjUIUx2tthHoqsnUhSj09UeH5WeZaHBR40
	qHtL2Bg4kRBHPo2uxjX4MGMyvA3gmOiJYWkiUjnfooIQDUYEVEHbuxBcFJqu0qL7A1/smywJyoR
	NqE3IaO/iJI3vSnTlWtocr/5c3ne9IhTC5h4DElC21wdNwqa3mwe7mOsQGBhNjuN3Cw1AhkUvLO
	WrrK6nvpEfjxebLHkMXXrmQPZvtd8yltYLmMTedAMgzmdS6OQ3xIMV6zCeiCAK7JzVATvGSmMVo
	4PDaWr
X-Received: by 2002:a05:6300:50e:20b0:35d:1bcd:6887 with SMTP id adf61e73a8af0-364037913c3mr1250298637.16.1764816123194;
        Wed, 03 Dec 2025 18:42:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkjCBZ+HwFwhl2IHJxlyaFVTeQbel7/cmA2a9dg13knrcyfCDNzGezO4wskiuVmkavwz5GMQ==
X-Received: by 2002:a05:6300:50e:20b0:35d:1bcd:6887 with SMTP id adf61e73a8af0-364037913c3mr1250255637.16.1764816122714;
        Wed, 03 Dec 2025 18:42:02 -0800 (PST)
Received: from [10.133.33.104] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2a0533f08sm366922b3a.23.2025.12.03.18.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 18:42:02 -0800 (PST)
Message-ID: <3a6fc312-ceb0-4258-981e-e6017c1c9b20@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:41:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
To: Pavel Machek <pavel@ucw.cz>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <aS8uJCnb0xOd6uby@duo.ucw.cz>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <aS8uJCnb0xOd6uby@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GMMF0+NK c=1 sm=1 tr=0 ts=6930f4fc cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=ceeeK6f_PLj2YqPUjm8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: cNZRhyvNpw7N2drLkEIE8XZxOKu96OlO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAyMCBTYWx0ZWRfX5a+SPn6Z1cvj
 fXSJQ6ywZzEWcf4XvZ5dpp5tEamwcERqEvJ17dulaW1LDwiE0ERE62KyEs52yoqxK3I6ng8H2IH
 bWCeUXZE0aaFTHDW0BkdJc2B+gcXrEKRGx8Hk7H0pY440ipknHrKmu9pRUMUviNdXcYNvG/tVhU
 HJ9tM7hiLgWEe8dyGTK5DHnFmZqXAZV+2bwkktDyNsvJ2bJwVfOqqW2tjrnCb7g0x5L1v5DZMrr
 ii0kdTVqnAhzQmOGVDLvJQIwFTOSq4KWLP+M1UtqsYK+K519j3RbNRpy2vGlzJFOSkafd5UPtUj
 2UolOMDR0FP2qrS9NrQnssw6iFprKrrDXC5u6oU1PHZMkwuRBhvl1mCYdMPhtBVF9nEFziySIRO
 sYR44eNNcKzxMLzWG+bCqyhTbjvVoA==
X-Proofpoint-GUID: cNZRhyvNpw7N2drLkEIE8XZxOKu96OlO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040020



On 12/3/2025 2:21 AM, Pavel Machek wrote:
> Hi!
> 
>> Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
>> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>>
>> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Platform)
>> and QRD (Qualcommm Reference Device) are splited in three:
>>
>> - 1-3: MTP board boot-to-shell with basic function.
>> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tsense, bus, crypto etc. Add QRD board support.
>> - 17-20: Multimedia features including audio, video and camss.
> 
> Thanks for doing this. I assume there devices available with this are
> quite expensive/hard to get at this point?
> 
> Please cc phone-devel@vger.kernel.org with phone related patches.
> 
> Best regards,
> 								Pavel

Hi Pavel,

The cc list is generated by tools following the list in MAINTAINERS, you can get
this series from devicetree@vger.kernel.org or linux-arm-msm@vger.kernel.org

Thanks，
Jingyi

