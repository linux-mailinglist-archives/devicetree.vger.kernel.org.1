Return-Path: <devicetree+bounces-204620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 863BFB2617A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:51:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 161D617E6D4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE622EF644;
	Thu, 14 Aug 2025 09:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c9eY5ndQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2AB2ECEBD
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755164788; cv=none; b=HEtW4Gpdhrzn2hHlly0Mx6Q6E1+ImkEKTSVbxzZhkyubRJ9x5fWJg7UujHoezA3h+g/w9szHPn8snVepfqN6hjwczbNzQusylbpMi4r5fJRregMq2K7iz+ODrS0FF5I2ldFuIS+HQxW/0a5Ri24oZgbYSJ2dbiZDmb9W+7ZXSh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755164788; c=relaxed/simple;
	bh=YOPD3+ykr9tdg4N+rbw3pZv9DIXcmhCUR349Ger2yqg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VXdbO078hAo2ei6eF0VzWpnt+nKWpQtsEorbajl/t/0Qxv8Lw05uPnEpJI4PcJjiuOHz1/T3KTfVu/pfAm4ovrHYgWeeAdcnuPT2NUDB1r+772RMA0VLRuKSyc8iR+5CBGRchdtB6Ep5mCgjJYrewujSvuR3bEslO0Vmp7KFeCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c9eY5ndQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E9Crx7012236
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:46:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rVPjIP0yMiJ7161uXl004pucArZ7+8ApLEfvy0PWY6o=; b=c9eY5ndQYYjG1LG/
	VQqkz+NqQ5jhHWTTWOyo/HM4SjxUobms1lyhpK2O1059TiCKB//N7pDBZ33+oPT2
	Drd0U3QTKyVSM38U+fg4x80SR/FN5SCrunHeNm9IEXKXTyp+qCePCXZjjtxLG4Wu
	SgvPWZjjSmpJUXh9KylUW870Q44N6+/6W2RQffWcv7vGfBKPUFNUd413ks9isQzh
	YWyns9OQkfx8QoArw1FpwOOafGqH4AXIXCeDedAjANYWtMg0jYoxJPWWO4T9zDZF
	ZVNLOy/+GWePxJ9OF2gjqdv+Zn2SbmLQehyHQ8NDQK3G44pRmFNQlUK7oHHx3NzT
	/G0lpA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxdbuf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:46:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e870623c48so21778085a.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755164785; x=1755769585;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVPjIP0yMiJ7161uXl004pucArZ7+8ApLEfvy0PWY6o=;
        b=Ir/LUnNKmre/3h8UbBi/cgjRHZQEJh4P0O3OUqelG7viyexvMF4c3/rmCd+3wXcOnQ
         6hFGi8QHglv2c+XcgoCLQFBP8ddR5yv9WYTrXGjmKRGKDKQ34yrQOD8s59pM+W9Js6qt
         /FqCEr6+WlYjSGdC8Um18TT+Q60HDprTIgs12+uB86sXC8He8KpvPw4s8Tq8JraYX5v2
         J4HYhW+JVL7u7mszEUpaYTAxLHQiKYirpZGjm9VhHjDsPsq8+ihUZ75VzARMNLg0nZjm
         UeixDfHt1iBvmuUo9IdQPMtClhRkn3W587cUftE27THzZ1BKwsR5MAN5h7dK4k9CnbI/
         aAZg==
X-Forwarded-Encrypted: i=1; AJvYcCUMPAPW81kPmoikrGIt+CBGWGkIePcl+7K1FdWJJt4yC87iu8VZGZvh/WGve3DtFW49rKwQr58O2KuZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5tJrUheCu+cgp6u1+M4bJ4xN3sw8Sy027/9XAbm2QOStjIxbG
	nMZisYxD0HK3IIly9DzE0ma28Ay3VrKS7eVpTYfP8MIAs7GpjzyDrSC1t/fcpaQm295OI9dOuuo
	YlVyPWSIEheSS5aWQdUjFfIwUW/+lCiHx2ZHsOAkIWJm5rIV42CLRIvwvdn83d8NL
X-Gm-Gg: ASbGncuMMVq9Z17j3Tb7aIDHEHDKjXZUWMvOqKiRyViNZ29Yd9nHe/mY4EgWzdwio/U
	mxmDaYiO0gQGcynxDgb+0aErK92eNH4yAl+Zr/d2Hqp1J2hoLNgKHl3iv2wI7FScyqUfjBA8REB
	BRMFUPYSaBl1WxvZguqwDnqUoHKPycPAkrxdKIp32j9Mvb7S4BWDNJzE6ev2SjGb+vgLsAFLsgx
	gpalBFR+Pbc+V3qZYDYRAGm21vtd8Dobila2hkkj7+5UWQWX9F3kOluK/zJysh6fXsTj+s3fR4l
	/jup/vrmeYGCRmvQsLIhblrir99TfwjL/ANtVSOmiT6bXiObRk2QTzs8EPk8WaICZaJBzdM4X6e
	Z0VtGozslF+SWxMpApw==
X-Received: by 2002:a05:620a:4009:b0:7e8:239:f842 with SMTP id af79cd13be357-7e870476a4dmr154619985a.11.1755164785002;
        Thu, 14 Aug 2025 02:46:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk+rLGT+zfHa/tgAexCcnh+96WIw8Fih6tIlfDVR70Fu5cDFYRswuXAwehpEUOb+at3084kw==
X-Received: by 2002:a05:620a:4009:b0:7e8:239:f842 with SMTP id af79cd13be357-7e870476a4dmr154618585a.11.1755164784511;
        Thu, 14 Aug 2025 02:46:24 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a1e833dsm2550194466b.64.2025.08.14.02.46.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:46:23 -0700 (PDT)
Message-ID: <aa0ed59a-4eb6-4f7f-b430-4976ee9724d8@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 11:46:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
 <tlkv63ccpnti367am47ymhaw3agjnyuonqstgtfaazhhptvgsp@q4wzuzdph323>
 <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX/pnI4eLfNxVc
 kZ+FS3hJO/AvQasa5cDHxjozwBfoVY92XN7p+S55hNXKHXXDUQs7jMYk9wlGdxNbyHj8FCUtKDT
 WcMdYI5a4S4BBKskEqLCc42K/kMMNmgpyzm2Odc0uWwP2a7UNS6i/jUK1usmP1q5sWuPq8kBXFT
 PeBsIYY0WDh3B4vOl3xmKHxWiRoCS2J0/q93tAqTdSnOE2Wb+BEHJ1gy/ei7SiAXGu9M5d6g24o
 kbffmYy5wLnqAqcKgUXyt5Q0fXQ+sVu5wzjQ7O5DmJ7PjNtpszwrhLFCA7RFOhZwMIWm9AKaznH
 JlGqGE3QT3gL/6PqpvwFzcX2wYv/g7HFfDlBHDtT0qjBMQV0nNLMaBwIi+c9W1npP2KTLbVox4J
 WKxJR+mw
X-Proofpoint-GUID: IFx8uj1nsOPSqVT2CYf2VpMy38JlIAla
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689db071 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=tbUJWSx7DgQPHehloyQA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: IFx8uj1nsOPSqVT2CYf2VpMy38JlIAla
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

On 8/14/25 8:59 AM, Krzysztof Kozlowski wrote:
> On 14/08/2025 04:42, Bjorn Andersson wrote:
>> On Thu, Aug 14, 2025 at 10:59:04AM +1000, Harrison Vanderbyl wrote:
>>
>> Welcome to LKML, Harrison. Some small things to improve.
>>
>> Please extend the subject prefix to match other changes in the files of
>> each patch, e.g. this one would be "arm64: dts: qcom: x1e80100: ".
>>
>> "git log --oneline -- file" is your friend here.
>>
>>> Describe device tree entry for x1e80100 ufs device
> 
> This is duplicating earlier patches:
> https://lore.kernel.org/all/szudb2teaacchrp4kn4swkqkoplgi5lbw7vbqtu5vhds4qat62@2tciswvelbmu/

(that submitter clearly expressed lack of interest in proceeding)

Konrad


