Return-Path: <devicetree+bounces-221357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6F1B9EDCA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EE8F4A18F0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E99C52F60CB;
	Thu, 25 Sep 2025 11:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dxh6OJCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B16F2EE60F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758798406; cv=none; b=ZX75iJjyMPSvoMpFjZGyI4hz3AnP0OQjebiK1epdJqZ1Kqzd39HxqBRIoMF7xWKZVTh0KGQpbCRBGVENYwfCmHi80WTJ6nhWPMHP5kXb458moD9ILkvn2MYMKDkfnDK4y9UWmN6WLaDQ/eZwEQtEmEyeK+kZH1Wjxw5BrzYGRJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758798406; c=relaxed/simple;
	bh=iTkf6MbCZfjRYj6doNponSJfEdSohtdYGWNCRkJceag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bFFQ5OqVhbPdHl/KixoZAwT31HboOWbIzr3TfSM5ZZdb+Uy8yn5MMSrFcFbT8XCN4XkgCIzsUCL1VemMc/5HKPPEvUW30+BGFj4/FwNiVigmVhc4tUFp62mI/VQwegZaCotpBxR5SS1uiBNrDubg9emwdC/Ti4ZafP2vI5gXXM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dxh6OJCj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9fGJ3029712
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:06:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4TUqX/2UP2jnwCgFCh3YZoQRNRidr+suu+zk9+HGhfM=; b=Dxh6OJCj3lnwPsyx
	AmJAr80b0qoUvS3i2Rtb6bVQ5f4zIReE8iXTs/axPlMK5YzgD2xZ+k8PIslqVjeU
	ghLJMqdaDJhICKmtK9Y0qkFgdy9bYw5vM25yiQIhekwgVxVSfkoeSpyNsCrpzsIA
	c9KnYpOy/ovawMNMtSlb5kJsED2JuvMbaaFImWMWzbFFpwmAeHGKYfz4gl3D7Zhd
	xk+/PiwES+t4EtkpQNGd1NLm9bMvkz9JioOHZg4YPJ+F/WnOB+YV1lXnBrUDKbKI
	aDBET/l36TBwA3d2Ug9p65or3lvx+rFY6SC6KfmKX+nHj5sx0dmddtntUc68Q32l
	YKrqfA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fqqn2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:06:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-82b15c1dca8so33326385a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:06:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758798403; x=1759403203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4TUqX/2UP2jnwCgFCh3YZoQRNRidr+suu+zk9+HGhfM=;
        b=kgyBhKWeqzzGCrNtMsUeVXuLKBlN6DgYi7IbucQHXS4pm0o3lHwT9uPCLNW+7+dGOc
         TjpxIbC53xRlWFTFd6XAVGj1JmuydW59Jb/yDAqFWmP04GeJdbXZGjP3q94mOUzI26E6
         HN4OAbnMz8/zOoxBYecc2KVoBDEE1e4xV4dSignWArO4zoDkjzT/iRFonEA/NfBeU/tu
         xtpw8M/1pOYVsnx3hH7/8ckPKZI0YSxq0UeT+erupt3SxNcQ2oDmsG+pP1gp6FCKKH3o
         q9LovZCTbiuH7f6uwAxfHQh0vf1Ac1Rs/33PJRAvS1vlmD5ybkoYNwIblRpQjATSzs0u
         0jqg==
X-Forwarded-Encrypted: i=1; AJvYcCX9Sgj/N9FSQZ3RpLDizR6exzppl/5gOttJ7yAHD8rRKHvIYtrkHmfH3TJCNb6PvBHSUmRxdglr45FL@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3gMikzuuMAlCX9WYbzrq6cJps+w6mORTGlh/9NwZFCGkms8CN
	ySBli+ZFFXPOE5qTH0KJrz/q8ffiACMpUEB2MM6TaFsG+77Tpn31tT+KwF7Egmqa7EoopBo2bq6
	jwkiHHIWE5KJltnSXaILGJyk+eTXs+sffKqLZBteH2BRRJmhVfnKq3dJ2fCnjbkcu
X-Gm-Gg: ASbGnct0UMdoKsx7EBs0buWPSRCvSuwZPir6Aq/Ccyb8aMnV9KsO1yyKGg06jdwyxgn
	NwHrhghNvqsPI2DTyg+kgGTDxGiQBaFC2F07UreZBt7/stxMs2IIyHzhEO2BKGTKMIarIyuqg/u
	ks8YlmGtt6zVZ5wgtk5UFoeclYu8ELfvXI43kAmsf0KOBJz5TTq6SQ0gWG7FaE0fikm2evUWZhd
	6HdRTIcYUoCljp8hY1QQny15qTQ1euWgyS3M0UwzdJ4rlxnXMUCdyTyz6rwpw/4JwS/BUfqp85E
	tGBiKMX1PEt+pcGgDozNkZoljHPYMmVvxaDFBQMtgI9Cq2n7N9deT5GcDBwlKQrSi7OexPnmZ/T
	b9Cy5RL41mDVLijcF6Gsz8g==
X-Received: by 2002:a05:620a:25d0:b0:829:9017:82b6 with SMTP id af79cd13be357-85ae6d8219dmr223976585a.8.1758798402913;
        Thu, 25 Sep 2025 04:06:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUDkpnALbd8j8AqKvQTtvUGT+7H8HmfLLCVjMkeZx1BzRf5E0I8t3uyafJuXTdEjjnU2AsBA==
X-Received: by 2002:a05:620a:25d0:b0:829:9017:82b6 with SMTP id af79cd13be357-85ae6d8219dmr223972685a.8.1758798402193;
        Thu, 25 Sep 2025 04:06:42 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353f86f478sm144386266b.39.2025.09.25.04.06.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:06:41 -0700 (PDT)
Message-ID: <a2008350-7aa7-4f94-9f19-926cf4e9d40c@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:06:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 23/24] arm64: dts: qcom: glymur: Add USB support
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Zu9CN6usVBl1mrKxVYFTU5mr0BoTKIQG
X-Proofpoint-GUID: Zu9CN6usVBl1mrKxVYFTU5mr0BoTKIQG
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d52244 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=f_k5thaLw67-wvj6FDYA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX68Pv0cWtEaQO
 djbuRbUdzBxVcKhhw/6nm0DK4L0eo5XIOePM5e4UubxxB5vCsvVT1Sy3Vvs+n+jLeZuli0/okcL
 Smh7QFkN5kvU4tk0nhlyawWtqaOKk8elGkgcWrXCjVWT/njCs1xy/BkglREE1AdwSZ7JzN+eYcc
 YOlHIkLyv6EXlPauJTyi+mPuwORdB/CYDkeQGF5emJkyH6BPanhOUDSRpAURJZB+9eD9Yyd1WTo
 3u5fMh2mum0ufHAzAi3jAwE20lmpqb7RKbfLUVWDQd8oTCWFRYhavoHV34x55FB7Rdj6FGRW9ES
 I63ouJ1wJ9/6HMgE8OelNW+4kVlRY+8QWgC4nTqZe6Nypmsjy6Cky+mtLGOfQVhoZuMJUs+rbsy
 hWEGu9bL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
> flattened DWC3 QCOM design.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 243 ++++++++++++++
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 569 ++++++++++++++++++++++++++++++++

Please split this into two commits

[...]

> +&i2c5 {
> +	status = "ok";

"okay" is preferred:

$ rg '"ok"' arch | wc -l
6

$ rg '"okay"' arch | wc -l
33019

on a random recent next tree

'status' is also expected to come as the last property (but still before
subnodes)

[...]

> +&usb_1_ss0 {
> +	dr_mode = "otg";
> +	usb-role-switch;

usb-role-switch should be in the SoC DT, and I think "otg" is the
default dr_mode

[...]

> +		usb_1_ss0: usb@a600000 {

the nodes should be sorted by unit address

Konrad

