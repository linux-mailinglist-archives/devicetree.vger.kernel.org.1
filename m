Return-Path: <devicetree+bounces-126370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAE39E1468
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 08:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EE12281317
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 07:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7491A193402;
	Tue,  3 Dec 2024 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wd55cP32"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74AF13F43A
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 07:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733211633; cv=none; b=LWB25atgEVEAXACmO5P70ND6EJZOc9YJF0P+Fbpqq8e5AXc9AKSe88fgQTSP2ygI2QMqbXblZBno2nxERT7hDideHPtH1sY3BYNooKDk4/01hsGNtlWrqymkdTS6oh13ZuFCxAPsnyVNmeGvYSqq6diM/LVH+g76FiIezu9GfYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733211633; c=relaxed/simple;
	bh=aC6uyDIFdnQ/ymIK+YdQ6AOiIbBcniP4ju7dhl9Kzig=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IhejvUizrFV/9vaI1+nPk2JuDYS+mFANWPNRy2Iu040PHwJ0JtuubEq6+o+bprKYa/ejZVBJ+1mAXIvbQ7UlGDTflJ1QyBFp/s8b/urjC2tyzdwtWhKIMLIyKpDr83EsmVfW0Akezj9kDJqGbZVx52pvroCPVJT0ax4HJZYJAt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wd55cP32; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B36N5K3024747
	for <devicetree@vger.kernel.org>; Tue, 3 Dec 2024 07:40:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lO8NsXbzPR2jsufulhi9jEDxuqQUNCDFlqI0eKnZHKI=; b=Wd55cP3217V+ZOhx
	9G45tX3rRPaoSIY7gt6bYMDIsMUm1VFDJEfg4DyCxznxNkUWRsFY7TAVSMleFDgP
	H6U/gDRIzboGnEZRkHIHVurG7KwHju4qoQ8uWkcIXXwTfuDsT7yBbQ9l8S4MsYwX
	7qpAen4Cs9xu+cqFz0JHe3hXS/gQz5n9M+1f2BFzGwSU1WEuDvbdypIFx/tSmh6R
	CS+hcnWGH4sA32JRGks89gBMRiKGDRbU6EKjk5YULyp6p5idYFld1usX92dfndWg
	9TPT0WlAAaV/vf+3oElEmQMHUYWYUJ4ETrptPc7L8tIx/w7TxOftcEIsWgWHcal2
	5oVmcQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439vnyr69n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 07:40:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-21568166458so24264405ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 23:40:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733211623; x=1733816423;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lO8NsXbzPR2jsufulhi9jEDxuqQUNCDFlqI0eKnZHKI=;
        b=tiUjRdZ4wPgaoQaCYhicQEHV+yuYc65UlccL6R1i2oJVaeDTnwGB4dMXqbHhYsCZGQ
         lSAtDn9n3RBzPOOwllTgEMq8MnzaaL4ZvcrE4c7CXZi27rkJmETt4YzXgXIhr2ita+tU
         RKRAMpX+Zq6UYC8MaBehcj644iHWQRyJdpBOM0o+rQ1i0A4e2GvaVzY6wcLnYsNG1qWZ
         +AT8FMBBp3jF/DkPY8u8nXeVk9OA8xAhsnMyLHEmoJGNXViZIUQKa29CYlptIdxp2s6v
         Vt/pAY1gbwNYSeyf1w74UVPLads5fND+ojWJKk+gdbiuK7vA2U+O5Ys5kUI5KaMRp64Z
         e6oA==
X-Forwarded-Encrypted: i=1; AJvYcCXaemjlE7uGDDwVcoiv4H4wX3r4UIUS2XVAlYGqVMvKM4YgvSr5uWH76O///Prlc0AWU6DmSPuJh4iQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ8PTw/l4pak/FZn4cIRmdMuNamkUN29Bq0L2EwjuCmuJ5qS6n
	GHwNQvaE+sJ9UnmuhFRmVS6SduE+TyM/lrLHAqgchkVvk/uUZNoT3iE9i/Ndf0kAQqI8TEoZejx
	KipuIOeF7TUvj0ml2bb9kd4NX41V4TUlFHDC7jazHLseGCc7Nphs1+7dL/IqQ
X-Gm-Gg: ASbGncuKQGbR7WIE+lZCAFDmVhxqXQ5sRYY1ccMG+VEPwrRSIZFDlfN2TWS4gTX3Dhw
	ZckYnPH2phRqno1Xn1URHKuqhNRIlH35hEwbZLkojp/liu2hpy86u7BhjSIwKE+8jainnIQMYQT
	TXHwSNZyLKV1gaIMq+mgXOGjCAYTmEt0bijv/qC5I7me7Lto3hOLQGB543H9Q5MCBDZ1w/sBobE
	zCAB29KahrrD5+iYZyigWXPwq6zfYqOYWLwrWmE/TlFma7bQcboel5A4RBzAVrbhGiI/fmaR5Ka
	vJ7F8w==
X-Received: by 2002:a17:902:dac5:b0:211:f8c8:373d with SMTP id d9443c01a7336-215bd0c1566mr28115125ad.31.1733211623244;
        Mon, 02 Dec 2024 23:40:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFF3EyLqZQow0ncyltq3o6H+hJOd1Mbf3qno+5shgyQHr2MT59dxXW5CqvbHyRcmqkG2ODN6A==
X-Received: by 2002:a17:902:dac5:b0:211:f8c8:373d with SMTP id d9443c01a7336-215bd0c1566mr28114855ad.31.1733211622864;
        Mon, 02 Dec 2024 23:40:22 -0800 (PST)
Received: from [10.92.169.167] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-215218f47e4sm88595425ad.23.2024.12.02.23.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 23:40:22 -0800 (PST)
Message-ID: <07087ab9-7724-4405-8fb2-942c1b76ed57@oss.qualcomm.com>
Date: Tue, 3 Dec 2024 13:10:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Cc: Kalle Valo <kvalo@kernel.org>, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Merck Hung <merckhung@gmail.com>, xlazom00@gmail.com,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20241202-jg-blackrock-for-upstream-v9-0-385bb46ca122@oldschoolsolutions.biz>
 <20241202-jg-blackrock-for-upstream-v9-3-385bb46ca122@oldschoolsolutions.biz>
 <0352b36d-92fa-42ba-bc20-40cef0f9ea42@oss.qualcomm.com>
 <7f5d424d-09a1-46ca-92a6-a1e7f8084bf0@oldschoolsolutions.biz>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <7f5d424d-09a1-46ca-92a6-a1e7f8084bf0@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: h0bp9pf0PoQ4sE85kBoFj0mqrnTQmUll
X-Proofpoint-GUID: h0bp9pf0PoQ4sE85kBoFj0mqrnTQmUll
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 mlxlogscore=876 bulkscore=0 impostorscore=0 mlxscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412030064



On 12/3/2024 12:37 PM, Jens Glathe wrote:
> On 03.12.24 06:08, Krishna Kurapati wrote:
> 
> [...]
>>
>> Although functionally unused, there is one more connector node that
>> runs between QMPPHY and DWC3 node. For example in [1], please check
>> "usb_dp_qmpphy_usb_ss_in" and "usb_1_dwc3_ss"
>>
>> Would be good to check why it is missing and add it further.
>>
>> [1]:
>> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>
>>
> I checked, there's an extra endpoint for usb_?_qmpphy_usb_ss_in and
> usb_?_qmpphy_dp_in.  usb_?_qmpphy_usb_ss_in  are defined (and "wired")
> between port@1 of usb_?_qmpphy and port@1 of usb_?_dwc3, in
> sc8280xp.dtsi. On port@2 of the qmpphy is usb_?_qmpphy_dp_in as
> endpoint, which is further defined in sc8280xp-microsoft-blackrock.dts
> as connecting to mdss0_dp?_out. Maybe that's wrong, it's the same as in
> sc8280xp-lenvo-thinkpad-x13s.dts.
> 

You are right.
Ignore my comment, that node is specified in the base dtsi file for 
sc8280xp.

 From usb pov, your code looks good.

Thanks,
Krishna,

