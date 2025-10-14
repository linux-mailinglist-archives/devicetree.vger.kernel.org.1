Return-Path: <devicetree+bounces-226436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65422BD8A85
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:06:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C33254393A
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63EFB2E7180;
	Tue, 14 Oct 2025 10:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PIzByqpz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BAF2E2F13
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436176; cv=none; b=QoL5gaa7KHGZJS8CKSXfiXSvysp15/wxy4MXZrSMagc+FefyBWoNpjR5xEpQPHTj6h+xiwIk7gYr0CD9tBsvEZASdybpcmyH/Qd6EeVpIRxYcfUDRXLfaPidUheXGunmjDlnn7SAhMyljR2Xm90fCc02hA14Adwj5mVJQwjrs/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436176; c=relaxed/simple;
	bh=bVhHjhDLmZz3sKkTchRJtm+6H7mXSchASd7zOLrW230=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VP1acPJdgT98VPGa/bz4Ab7LDhjq+JIrFzPaLK+2B83kMUy6KsMBoSwGqOt3OtFrlnrGmr1uMVRlcI9DUcgG3RWB+xE16mSc99tnQCRJ9YCp/AmlV5OJAzMTCakx8IbyCUwRI9/tfNHRu+D8+ozXNc5kYbvnS9dKsKuH6/PdABQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PIzByqpz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87LHL016457
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JYjKTtUvBgaZV/+iOUpoJCKb8Vbb1mGbZF2yoFSadIw=; b=PIzByqpzBz4RzqVC
	viA+Qv4gO7W9o09y0BuAfFyqv+iX8wqDAr8Gy0vHqDMRcbRBpwLwqMA7gcrjmFsz
	yzJVCjSFFCZltpiZmHBmVk76nL3yQqZRf55wMwTEP4CzvGWkomuqIvehBEVOYueV
	ahNedIy9a39946/RS9+/dl7xN3xeNFGrrYVIxCMIsrznPV+pkPFctS0DUuMOmS/h
	NTlH0YITczx/cysla8tkpajRe5ac4KyKLXJCS4JslVd34l3E0wlTmWAvdgJCX7fU
	r1D6qRyXRWSyhmsjNlrOtQldHb7hj6fFB+TiiFo8JHJy+WPHzkl93E3q3O4mlPWK
	Ox3iog==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd903f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85696c12803so377090685a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:02:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436171; x=1761040971;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JYjKTtUvBgaZV/+iOUpoJCKb8Vbb1mGbZF2yoFSadIw=;
        b=fcIMzxBHr+0e2Wy7wD86wChyHwKbLZrysCPtkEmxDJSYu0Q9N2IowCYK4f/WTzsdZd
         qVwHMJH1eH2k6dGGucWAibhx+oWC7wPeOKkfkZXIBxsOvgYjRdNaMRP44i/o01Uj9urY
         OmDv84LXefo32BUo7YqnUZ2/+U/NNq94G7d19ED3Lfyumoqpi/xchWvYEsSHGvdOIVar
         SrUm+SiMFILKnsTzyrj12OwNh1sjLxtb3VNI1UjR4XwCsjbgVs3RGU6OjvRY96iBBs9c
         I6I9y9y7jmSunv/HzxPfBxpoYbc+9M2hp5cHpK1sgEe8FLh9mAUKTXGGqyi0FjX7urW9
         XSTg==
X-Forwarded-Encrypted: i=1; AJvYcCWzjlLyswwAeIUIYAlnmWUPMPzs3vrcYysgjrZJFlkWWxFo9qhWvxaSyAlUt2kwHeHqtOAmvz7BFIVW@vger.kernel.org
X-Gm-Message-State: AOJu0YxnxTUYQrwCj27VEA+IIsa8gMX978KhBp0znc/G9f+UHW5n2afq
	+J682om74wjszoV4xvUKFkzwIUFH1OcgRAFuxfYCHfITy1ZAUs8DqZ6a6rm3Oq2IAfGdGrxhZaN
	xBb50V+BuKF0Z6BiYE/h4fQO/nF9Twy6oH++sRi6bzXbzQ+3Qb0sMi4m+PldLXE/Q
X-Gm-Gg: ASbGnctXk+7Rv/xBF2884PKmKO48bhoV7Y276xi9GmoZftit5yxXloDwU4kNqLnJcID
	x7v12VWibragcLECM4BChJnEkvpmSDl46VWGm0gxLsyh4imA0VvlvpnF0cFvEw38cdPzBeOf70Q
	4CueBznJ2bd/rhi5LcCNt3iajB9rjKmyr1TZQQvDUxrt2zX7zrtYKjTGhsfoJYnd4Vc9oEdmmbG
	IgjBS/5bN16mhQmG6e4vpseSZ/Q3rIhAzZIbNVEZbEvj1DrWjIEX3hdjcIbh50UXxWnkVyRAoKE
	FtoFsYh/k9p4kU/B5pDZNPrvZ1kgKJqTXzw1JLB/3KeiYE25RdsY4h7CbxtFKJ2ICH/sjn0RnT7
	ihF0IYfHxrBHhOsb19GhTYg==
X-Received: by 2002:a05:620a:440a:b0:861:ed2a:2f9a with SMTP id af79cd13be357-88352ba651fmr2122067885a.5.1760436171287;
        Tue, 14 Oct 2025 03:02:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGt0D7zWO7HIZAtXl1MAeQkSXOlc60URKPIzuUVE8zwNTntzw8XcV/pBFh7aasaW8fEsIs7/g==
X-Received: by 2002:a05:620a:440a:b0:861:ed2a:2f9a with SMTP id af79cd13be357-88352ba651fmr2122065185a.5.1760436170724;
        Tue, 14 Oct 2025 03:02:50 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a52b1e89csm10859296a12.19.2025.10.14.03.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 03:02:50 -0700 (PDT)
Message-ID: <ea12c0c7-c629-4014-8bbf-862264182c0b@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 12:02:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: r0q: fix reserved memory regions
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
 <20251014044135.177210-7-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014044135.177210-7-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 7dajK6RNHEWS5KvD5S9EzKRb_WmQoaTb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX8+lcLdtwWf4Q
 Q/wFqZDgDdKiMIFORppllobyz7EKEwHoXDTtBfkmb1rkw3l2S8ruTFExQlx4V3B7kkOOvEb1C4i
 YSyeFbcXY6iVhJmQVmNTk4QBAWOcK+EmSqPmtEpEczWFbGd2pE0NV+BdbjDXDBmAo49SnE1RQEn
 lb3EELD6chKdYYhf25F/9XPERtND0egX92ZMMcON2n10lmvYUk3B6ETfg0ngejpN+QpjV4UvPCa
 nXwAGS+GP5JzNRMkQTGIJrrLrMF8air8norOAyw/7i8mfWgF4MkyRlqW+TaD6c0JDSwcjTIhIPB
 j7XtAokLx7Ro7cwmx0nt0p3OHM+/5fHrxikKO3Jmz2JJ0B/A1k5mXkMA0nPi6SBlkjP4+her2Gu
 OeWip+XQOc7iJ1x2zNsun3lV619hEQ==
X-Proofpoint-GUID: 7dajK6RNHEWS5KvD5S9EzKRb_WmQoaTb
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ee1fcc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=w6xXu69wQtdwpxc7i3IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On 10/14/25 6:41 AM, Eric Gonçalves wrote:
> ADSP and video memory regions in SoC dtsi is misplaced on this
> platform, fix them by deleting those nodes and redefining them.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> index a3b81403d180..8ed8a67aae0d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> @@ -10,6 +10,9 @@
>  #include "pm8350c.dtsi"
>  #include "pmk8350.dtsi"
>  
> +/delete-node/ &adsp_mem;
> +/delete-node/ &video_mem;
> +
>  / {
>  	model = "Samsung Galaxy S22 5G";
>  	compatible = "samsung,r0q", "qcom,sm8450";
> @@ -64,6 +67,16 @@ splash-region@b8000000 {
>  			reg = <0x0 0xb8000000 0x0 0x2b00000>;
>  			no-map;
>  		};
> +
> +		adsp_mem: memory@84500000 {
> +			reg = <0x0 0x84500000 0x0 0x3b00000>;
> +			no-map;
> +		};
> +
> +		video_mem: memory@83e00000 {
> +			reg = <0x0 0x83e00000 0x0 0x700000>;
> +			no-map;
> +		};

Please keep the entries sorted, also with regards to the existing ones

Konrad

