Return-Path: <devicetree+bounces-125510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5329DC293
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1DF01624D9
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 11:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8451991A8;
	Fri, 29 Nov 2024 11:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V0XOp1of"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AFA1990C0
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732878799; cv=none; b=ijrISPvIB+ngyfaZT8Mfx05PstIaCK+Ubff0MTSGLD24xDvDSWuLCELmCQyEm9IDBTf+5gep0TjFUJqQJrHfg/i7lW82CqWeX9w6RWZlVbXMortPKz/x/ftS16lhHWh1i/09TovvNKFAzt51gZvAyLrAdrvBaoNIp1ZFL8PlAAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732878799; c=relaxed/simple;
	bh=HkL7o2nQ/6sR1UDkhdrjOF9Zjr+Ofw5rUlktM6LDZpw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PQyiW2BzKGGGrMEBYbQi3cQhHA6fgWzKeuVwwhZg1En0lzUjxhDbDQfO1sVAAP3fEN0SHaFS5xBZnJfPElKEDGOZiowilhLlv+lYE1cK9K7W3uzW0cmpYqnNj52qgwixOWSMVuY0FeIFxlBcU62VDKlr3VcsRZ3oNz9ieIgYRDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V0XOp1of; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASLafCp019798
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:13:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OY4pkio2vbfhYdHY9J7hvsGz2TGfLYArdts+4vo7ErI=; b=V0XOp1ofXWIV9rOO
	/sJqLXWqCpGede2FApbQEr03chYFP5K8UArRUHzIS0LGEUNaeicNVnN0p5iUyvDu
	ayCSmfbWLGvBswRiKGMwzUNHWRGuGfVP5tCnudcyH/llbzCZSvAidIAS4LRsIbfA
	+0n1YrfqelKibulH5NePXEstVviHKiKiTy6fFfqWT+4ZUlL/nAulJFV23Cye1o1S
	cpjVg1jrbvVL5TjNjCvBAllOkjVxj/cCq8WhHgfeaXAD8XXV220Ya0106rE50+/i
	prJpZm6y8FCMh8AXAB1RuQhkoiOLbKK3MtdjQqAS2Lh9KCqK9r2VdniG61yXjEPD
	j4Pp9Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366y058bc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:13:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46692fb862bso1879161cf.1
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 03:13:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732878795; x=1733483595;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OY4pkio2vbfhYdHY9J7hvsGz2TGfLYArdts+4vo7ErI=;
        b=uwUuFSIf+ItFa96AVJPD4vBG9chThx0J6TpjBxbg40t6676Zo/FaYdzzrWtnCPWPLk
         W2QV03ZmTdQd+fT1f7sC07huCUnQ/vYPt1I80F6OejEL0XofN39hZQdBmW4bYEDM4S97
         Y8QU5M4Pe5ppQiqpYCpP5tC2/Q7zZici4IN23yOvsUWPRMVQPlrwQZEg3bCq3wRuiZza
         dN9OmUVzrdfr8ilNM3Z3TIvibYny/W2Yfl2NDfKyFrtUknDMJno0PA38aAEwZSKj61u3
         X3oF5vtiJmvhrZ29uK2YVm/dxzlNtQzB2GzZAJ1Z2hY+khLPJGqjqw3kc0q+cHNPQ1Zn
         HoKg==
X-Forwarded-Encrypted: i=1; AJvYcCVAfPmAm9UopsVRLgA14eR8E9HYqkPFZBy9sqTUBOgzApDQhYU2MXisqtz/IqQ/y6ftIhJhp5CygizS@vger.kernel.org
X-Gm-Message-State: AOJu0YzVAIC+vpwNcbD8jK2CxbaUvscEwsY0mu2j/iCbBsHzqPBXet59
	9DzPktr7YQdKQsIC/PksjXA2vG/dK53iPCzrDhxv4AREixkl+hEE0wKQ1VaEXAqnDKanK7h+9e2
	lp6J+JwRz4pC/3yQfXZDVheF8f0Ti8u6hA0e8JUDRRmKH/MrwvZSuq3TsyD66OQ5f/ZSI
X-Gm-Gg: ASbGncvrVKvFLovS/LAL4dskvJP78VKWfuYmKGjy6VPYBY1SCK9YQ5W8Xq5OWUsPPMm
	hptg2RUTj79FPF6AdeUH1pYxUi9A/mLsrmI4HAu9rS1Om9miLGOhcEKuSIu6sR6dE/G4aZaGBWE
	BHTs3wu5YLO6vNF2EMqmT6aMaGW7fjVW0+39KbSrxewTxd03FlMtLXLQBcpjDsNqqBSzvNQPLlV
	CFnMd5sAjdv5O9XIBk8i5NfT+16vbyzCw6RM6Ezv88cF0vrD4WsxKRe4/PyfrIHwARA8eBqy8iX
	wXE70960KWELegtO/7MkQH6FNqk4zSE=
X-Received: by 2002:a05:622a:cf:b0:466:8033:7dd2 with SMTP id d75a77b69052e-466b365e8d0mr78296721cf.15.1732878795261;
        Fri, 29 Nov 2024 03:13:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1FcmxiZBl5R2LI+HHAza538VFCS9rbIxuF7ps2Q68Dkn7LnmcHdnjYtcA+C5cS7ywhsIMRA==
X-Received: by 2002:a05:622a:cf:b0:466:8033:7dd2 with SMTP id d75a77b69052e-466b365e8d0mr78296521cf.15.1732878794891;
        Fri, 29 Nov 2024 03:13:14 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5997d55b1sm163426566b.72.2024.11.29.03.13.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 03:13:14 -0800 (PST)
Message-ID: <49b3dd66-e1ad-4b23-a405-41a542b52f53@oss.qualcomm.com>
Date: Fri, 29 Nov 2024 12:13:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs8300: Adds SPMI support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, kernel@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com>
 <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-1-28af84cb86f8@quicinc.com>
 <wtnsepmoulfhm5ydbu7udtsrexaogaiqjyt737g6a2bhf4drnv@jwmktibj2swd>
 <624393e7-0681-41c3-9008-de50cdf997b5@quicinc.com>
 <vgv4nucgfnrlov4lj33sprytnkbhoj6yxolwrqddbwwkmrevn3@4sacxzyhciyp>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <vgv4nucgfnrlov4lj33sprytnkbhoj6yxolwrqddbwwkmrevn3@4sacxzyhciyp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: opKtRaqb_w36B81JlZKB0vZtTy1izvN8
X-Proofpoint-GUID: opKtRaqb_w36B81JlZKB0vZtTy1izvN8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 mlxlogscore=891 spamscore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2411290092

On 28.11.2024 1:56 PM, Dmitry Baryshkov wrote:
> On Thu, Nov 28, 2024 at 03:55:31PM +0800, Tingguo Cheng wrote:
>>
>>
>> On 11/26/2024 7:50 PM, Dmitry Baryshkov wrote:
>>> On Tue, Nov 26, 2024 at 05:35:05PM +0800, Tingguo Cheng wrote:
>>>> Add the SPMI bus arbiter node for QCS8300 SoC which connected
>>>> with PMICs on QCS8300 boards.
>>>
>>> Could you please comment, what is the version of the SPMI controller /
>>> arbiter?
>> Sure, let me add the version information in the commit message.
> 
> Answering here would have been easier to follow.

Computer suggests v5.2.0

Konrad

