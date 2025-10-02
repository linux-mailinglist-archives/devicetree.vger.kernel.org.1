Return-Path: <devicetree+bounces-223332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9DDBB383C
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 664B819C6EF5
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F69306488;
	Thu,  2 Oct 2025 09:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fhk3E+qT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7976E30505A
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759398557; cv=none; b=YIO2fZum16Bf9zu7Ni9Z4d7H1L2579VrCRHjAbJmbMLjaos8dI4uYoXbtj/qnHYBye7en+DU/b4RhKzGM+ZPeiwAueedcCyP5g9FCCJKjBg9fhVdvJCHqe6Zzc3RaKW8NN3u33GRFd7WbWDW77HOL4n1+s5gENPevu/sryBnSUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759398557; c=relaxed/simple;
	bh=VrjKFZQItoT4n8OhJi2ZmRlOxrb1AlRNjg3CoDyZnpw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cmAMvq9WtLBMVZsPIJ+Qadb9jf+tDbWOu/J6/7+RWK18oQAJyc6c2AHcqAZGoKwgQhYdbu1uRLE09DXQFH/mwvbn6q/lRzVmqwcZBGzEZFgY3CJIztd9NEXmD8jBvuwp/hZJZ+oGPJyNX+O6QtKS0ubnQJemVQS5rZ9nNA8Byh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fhk3E+qT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5929225A031853
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 09:49:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Img6lQjVNXbCTpDlJrOjPGysxpr6pRA1/ab4mNuUpA4=; b=Fhk3E+qTmHWIlblf
	L4ACNzgDuKRMXG6WHcZtGjMwrGv7gd5/1vFj9oGuwZrgx8t+OTHNdJ1LrYl0hMRA
	+jvULuHdc8KMXY0nZ+1UjtqTRkVnGOpLjI9K9MMzS96p0Guva+XB8AjZlDa6TyEw
	ASzsAqCPfQbdSwcH0+2iv+MeQf3hIaY08+pEO4hBicuKyux0lL4ezYGnEBHrjNid
	TqIHHAwwPV4XzIgnJnlyEwPxz9G/j/QqMw0YdeLba+ypFP9TwMNvPMZSHM+G9Fv6
	XZO6uiyWGilIovJ+2WCQw6WUnLJyEF14o3pfS3yvKez8+0zr82RwYRTG74k7hbFM
	SY8TiQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr7dyy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:49:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4deb3bf6b2dso1226331cf.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:49:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759398554; x=1760003354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Img6lQjVNXbCTpDlJrOjPGysxpr6pRA1/ab4mNuUpA4=;
        b=t+wGEt2O8CO7Orh39Lk5970d2p6OQE0usyV0mo0O8c9gMhsM04QTzzA7gbmLCLYdvP
         uO65SPEe106TebL7bRHkah8z7Ss2uiYsfdV0d+GaqRGxkpf2sG5sv81ekul7cIotw1Zb
         dIYntuFpjCzBVP2ml2MCgJIZULzQaf5HtrWdPXQbXn4BLzrtIrjpey9P0Hqj3XrazKdT
         ErRCIHrHkVztUsk46AwpVYYBDEUWIsPjPqZ6s+QZGwbBqQpP/4Puenmg9ILRvBZ7KP8D
         yJa+am4jhO5AR7sckt3E1s+q9I01HVSfbV8ajJN3BxQBOJ9WgGrJxoNtTvaNEXS6wC7D
         VCWA==
X-Forwarded-Encrypted: i=1; AJvYcCUS22155Ngs67ZU2Sqs3DIcnGBAHeF15V3lqr5xuXZ0m3Rwx8I4d6GjQgBbJssNm1PtG6umMX9xQiXF@vger.kernel.org
X-Gm-Message-State: AOJu0YytjGXg+OgqQQ9j11iu0JLEPh977fYs1pLyPvRDRIn6QsPtf/ZL
	T8/NzZ30UgWNCbcW3eYMtRKf0DuGOpYoVGu6InjxBDoW+bl9bpC25VALgpEX9d3pRTowP+Lu+YI
	3fK3CIA1ab7Qkcb+DBv4hyGjbVJVZ3Aw9PduhYeCJgnbnUzczKa8mI7neEUrolwQbOymBAEyy
X-Gm-Gg: ASbGncvZGb5FTVN2mpmIkec42cJ/eIv1GrQNQuE/WlHY4ZSLxGc0mZh2mrCVuNwECuC
	6xgvaUNXgtEQk1SHbKGRDnINKf1K/sVkiay5aDk0a82x6zCzwYVitQYD/lI7hfrBujazCsyYdVz
	A0BKXcRogzeXU7LLdan1Z8oUxbl7mY/HAPuuyP+DLGMPyayDsnE6ddgDrjtxrRLf+BFMYAxja4a
	C2AubYSklTy62c4oQJ6F0sta4M8+O3PoAqixu+Vn0K/CaE00ibzMnbvAIUQpb6YekECb/Afyh2r
	dZ8TRmr4iCoScQfOX2dYYb0HosEZeofCXXzpKZ7e5aAlfGuGZ6dOHBaTM2HkRGOWtA5ASy+PuGj
	Cuaol0uS0OPuau/VuDMJpK1C779o=
X-Received: by 2002:ac8:5d86:0:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e41db86a34mr53924191cf.8.1759398554104;
        Thu, 02 Oct 2025 02:49:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYvtszzD9G5JK83jzL3QuBgXEB9+BD1IDAQm/hRuOJNgt4Zwb2AsOe4RoybiEw3lrFnoG0gA==
X-Received: by 2002:ac8:5d86:0:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e41db86a34mr53923991cf.8.1759398553536;
        Thu, 02 Oct 2025 02:49:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3abcd7sm1524345a12.2.2025.10.02.02.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:49:12 -0700 (PDT)
Message-ID: <3e9b1488-7c87-4e2d-8500-30cae30e828c@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 11:49:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -HNXukdSH6g2ny1o3L_YX1p0AbUJEWwG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX11NPRl2APOqZ
 srpY5bDbQ7T5EWG3JLbW3WkLu7l9ydzDGgnOmn74ORKoHrWxopFwJuVOSkvVXr4sx+d/ambfliv
 79i0cYoy0NlT1V1c99Fnnt9ywx2Dc5ckEgHKbifTPZ7um/dgCTImlTQXSO0tvAnBwFZRYhlZee+
 ba5H9TILKWPs/gSebrlEXTpuTf0XHXXtRlxx7ypdH+/UUNcKoK/DnkLz4H3+H/ZI476+Qg4i6ad
 Ex8cdQb9pQd6mEx70/dETql/SgWrPVE/fzpMNeqWGsB2DB18CJPpauc/7QRe1yRH6ByZtTSivLx
 mtp3HTx5CdXUwF1AoNqKOjp/KhgpgZeAtVEA1FAG5XiQf0WHqdJfQpw9+Ws2IaVO31RLqnOssAN
 bzQxDzR6QCDTNjrri9/bhbF40YdXfA==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68de4a9b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=kZOsEFAOBhkG5801Qn8A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: -HNXukdSH6g2ny1o3L_YX1p0AbUJEWwG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On 10/2/25 1:37 AM, Bjorn Andersson wrote:
> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>> and x2 lane.
>>
> 
> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> is crashing during boot as PCIe is being probed.
> 
> Is this a known problem? Is there any workaround/changes in flight that
> I'm missing?

Would enabling USB fix it? I think we went over it with some other IP
block due to funny interconnect dependencies, but I'm surprised the series
for USB is still not fully brought to completion..

Konrad

