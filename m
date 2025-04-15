Return-Path: <devicetree+bounces-167208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70163A89A74
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1335A3A8690
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F4B28467B;
	Tue, 15 Apr 2025 10:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DAKIuBGs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F81445C18
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713501; cv=none; b=iQrDQ3s0SF55iAuwxYJ9jSfHA1h5vDEdDRo9bPH7LXZpj3vpLLmBB+i4aiz1r0cXQ/7PjskXqeSbpj+JdLXNFSkXe5BJjhJ8UI7zis+t3GrWHw/JHc6iwxltDcOxVpouibgtaZ8wULMVjrPl770FGhtfO+euLInSaGxqVsTxQrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713501; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r2HVL80y8CIFceWh6N/xEvgYYF/XWxfHOLaxAoqiviOO/+milSfB+5AtB7RM1g4+Jd38IUo7SQBW8uwuW61PhwzJwx9fSiLXIZtP8jAL7UqDaSsDeBJpZfdnVoBKI7+lD4G9+gj6Wu1fOznCK/7cNm8vuSvPG86bOPXOnAy1/DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DAKIuBGs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8td4I012914
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:38:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=DAKIuBGslzmC90d8
	igEHKmc0pSBOGB4loaStmcIxQIE+djcZgFpD1yPWFQCA+1k5Nq8i4yI2JqvOUFu1
	ud3yCmPL0lqzO2VmBmdRmTLnXrSEzhWX2qKIMkp90B3JqdrdSaech5p6tkM76n08
	J2IbkITJtSvLkglOZ/eD0Orbtvm6RKTN/Lay80/GQ++QF6z82O+J0pmDirsKho+F
	w+voO19aacwBLE6DgW7C0FVvhAO1k4d1Myh3gF53wr+EvaaoGyKh6asZ5N2ZGAGg
	gGGN8F7VpdfKkNNPC1w+RJW92oILzT43U6vIiRXqVSMX91pXP3LMWUPIV1z/XIwP
	rnaWeA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq7xq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:38:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5466ca3e9so73689485a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713498; x=1745318298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=uKq29UvlrtGqEyy3MLdHSvvM0AQrIgD90rUCASThyH97VZlGsl40zFEcjvmSS/NzKf
         v+bxhejOE+dVtI4OCwB0JmyNLs7E8okxXolsEGZpiria4fb6ZVRqCcBQH+PKKBtLY2h7
         RO78KY40nbir8OONhmtuB5BiVULrvJx/JQ3Z/+MShV9S+mD0mE3v6jgyS4ahu1IaX+WS
         8V2zg2184MnuWWWbXKaVBvuOSrRsD0fWGRZyZmqmNi7AR8yXOoLxHjJftWeTTYPUSGKq
         B9jz8QRje3HTzBjYQk4HtEPHzKrIaoEbFKvUXnYCopJFWDXqAO8MtDMh54COYBTYESAT
         ysDA==
X-Forwarded-Encrypted: i=1; AJvYcCV8ZdjwNDjlKXlRyCV+JA/b3sVv6HkMgk9EjPFV3RHksEcAwBpHpJppJwpVUF8V3xUZYyPxEbOP63HD@vger.kernel.org
X-Gm-Message-State: AOJu0YyTsyAT3tSbvk8upb0OmhRxj2GD6iIyMK7TrokmvZrdUG/ZnYfO
	vQpDHh5xoqd6WZyf8YC6duiniv9Y57yb9+AEJvsg3F9jc0QmqvggMXBBj2OfbwLvvcjuFljvVzS
	jaYmaWn2GkpMKdFdNq3C8TdZKLZISdEQ1rC3EOG6V6/WtS7RZkm49Uo5Xqqa2
X-Gm-Gg: ASbGnct+0Nzoyzw3MiAMUqw3Z+YaOvPkSgO9W/mYOTvtQ5eoS62jYLl+b47wckIN2I+
	YzawsFEHGiPTCXP2Gb+Y5eTDuY6+r5+f4VtOEKpmtprTL+0WBEaKbJZ+Q+hK38f+dtCu74bt8Db
	lQK1Rx7wfdIgWS09iIFTOp2d06KZmNiItohearcY4bWd1BQ1na/qgXWprOLVMmL1RQwV01jnHDC
	bMIZq1VfVqb9nYmEkNr9SO/DDZvQTzwmWZ8VT7cOoeogHZWIctt+702iwiZXapm00RoZQ0kNHu2
	Y10apyvA2wPlAB9Q7NIyYhh5JaBsyoLu/hLM9evCKp0N8DDo2e/5c+z83+VknKiZrQ8=
X-Received: by 2002:a05:620a:c4e:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7c7af0d639amr683710485a.4.1744713498457;
        Tue, 15 Apr 2025 03:38:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFr2c2Hq3La3xC+9vQrVhYp8UOHdk/3NrDTbHhU2V7nHXc7gt67jkJ49F0mbvhNt1w9L3YZgA==
X-Received: by 2002:a05:620a:c4e:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7c7af0d639amr683709485a.4.1744713498173;
        Tue, 15 Apr 2025 03:38:18 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ce806asm1067346166b.181.2025.04.15.03.38.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:38:17 -0700 (PDT)
Message-ID: <b0850091-14b1-49eb-b426-a4b3e431d62e@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:38:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/20] arm64: dts: qcom: qcm2290: use correct size for
 VBIF regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-4-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-4-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZjhTuhOTZNiH2k6UL1Qa_X3XtTomIOH4
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67fe371b cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: ZjhTuhOTZNiH2k6UL1Qa_X3XtTomIOH4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=607
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150074

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

