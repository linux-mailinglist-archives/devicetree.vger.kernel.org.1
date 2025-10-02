Return-Path: <devicetree+bounces-223329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 118AABB37F7
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D16019C3AAB
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4A42FC87E;
	Thu,  2 Oct 2025 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oIUaFGut"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200262EAB60
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759398033; cv=none; b=eRuVCOY2Wpre2hUj4+nRScs9U7xbGxFji9BI8wsl3XMQor0LsBfv48XldEHrs8cUSAexenpwOK3KPEATmNOQIZB+R+JW9La/bIfEY+Q97XAIQr8rFPY3c+OuDwnhr7xA2udEkJhQFgwzV1jIULxyMt964zvUQ7aOghfR78IES8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759398033; c=relaxed/simple;
	bh=p4GlG0i2Y081h5gfnx5qiqD7ASzyquWjITj8IlfhFC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LQkdAJWMVS8sSPY6WbCNd2VOXAPN69A3CAmyl9aXmBmRTpu9kcJSvK/ykIhW0/bhBbt3lR3D8mG4djp1vtiK1mE1TRf59QdomgATESYZcskFUIgeFbP/qFVAyYNu1E+YxarO11l7vjkIIy6k+GBgpJyUPszU/+aaP4t6iBF5C7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oIUaFGut; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59293bu6017645
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 09:40:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dcrL4l9U3YzpWDGoNd9/zApd17e8vxY/gbnZPfARZlA=; b=oIUaFGutMZn3s4S8
	1ja7n2cTs6iP3ki4RSoP5ilYYn3moafCWfV/AO3gs+co+MZKNTEvsmXmvj1kE/S7
	jJihhFJMMYQYIUgttITzGVMGXkr6jJWXSrGcpCE2n5hkpGUj4CTvQ63MJLnPe77h
	EUDXwJ2PKab5xU2r3lVpSG5sO2+NnAyBXwCnJ7kPusPHHOUOwnZ/CuNwhYhkYtdj
	hgOdqGIFmghRImLB2/bnqSPanqfi4HZhhuHm75DnQBV8AAcxVEOyuXkm3Dn1cG8F
	eOYuxpplMfAIWK0Lh6QFBShObluttJCVeuR7kTEKeTL6TEB2rhk8afceGluJitUT
	Jj1mDg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fyrf8xbh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:40:31 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7958a07a5fdso2596346d6.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759398030; x=1760002830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dcrL4l9U3YzpWDGoNd9/zApd17e8vxY/gbnZPfARZlA=;
        b=MeHNqMGxlJ2Z7RiKjXXLhrT5r3LIz9qLsgbxcywTJD5PhIF9aLau5sVxBgrM7iiS7j
         NO4sfo022exGQvEbBlpQTz9eZeyyIurdWD+ZgpTKJjRCvjt1IcyuRFIlsw9eilT1/v50
         cW/NnoicFo6O6wibdSDFP4WUOBVYeRC+SSjcKiq5ZJJSls5WPWYnSHl8dReE7ELzrjc/
         +RodkdrPl0DbId9TvJ6Ka+CJ0lCKgkopQmv08IMWI+AWm8G38YTyWCkN0JN92qBBzMBA
         hJ7Y7x/SMagZ/qbd+mLObn+pRW1tQ8U4T6drey1gBC2WbLIkLBilxkHldg1Bxnyrh2L9
         YxuA==
X-Forwarded-Encrypted: i=1; AJvYcCX/3CoNjwFjc8DUzOt70GMt/TffEWVOS950p91mqYC15QJX4FVZuwDX67WZE3vC3OTCGWHFGqs8mik2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb8esQH/76/UhTjdUPdf0nzDRp0dORB5sgEoHleZj+Aw+mjmpg
	qTdwmyw9GOe8+d21TbZJMBcDh0ZBVvxxJM2mnqxEyvfJN89CNoZRJNKzsPpELRY6sOiBQqlKDSy
	fVwwesRW0gPE/g+Jlfaqb2fn9uiZhNEzdEbJL8x5ufMNDKyAF81uWJMpv8/10ItT8
X-Gm-Gg: ASbGncuxy4wVEYWx13OJdhfa/PRbZ7GdsGyFybYxe52sd7kEjhig6G2CSesltTG2Dwo
	kEoY6hSzUm7N2z0kR1pZATO5cxWe2DXcK8yrS7DmYRtMa4ZpQaCnPu4f04se0n9zOr4YzEIcDBC
	RLIHwkPytgfqJUtYjyPltGJAc82VqlT3ZBg+wZd4ABVOf/M1isH9SMRXCTN0xNrjhDXVPZxLVt+
	7kqyJnWT30KDIi2rWSfMOAtpNuo8n7IDaCckWlczyZRgauBnLsCdgtq+iGFzSYzuRxxEBnDoNfp
	BgcU6gQXyhP04ut9YuAdR6bXVRfNRlgEfBLl9NAWwu+6wNjmXuGuiM76F8tqkcIqU7doz+N15F2
	RHvNF7WD8Z4hMbsqq+r0PMLMIhEI=
X-Received: by 2002:ad4:5ec8:0:b0:7a0:a767:a178 with SMTP id 6a1803df08f44-8738f502fbdmr66516996d6.0.1759398030010;
        Thu, 02 Oct 2025 02:40:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVXxbuADxsDG4M6Oq6bh+r8gRFAtX4iygac+XXhWKQ9H3f8VHZAfJ8X66Hn5JI6RTnHcgGiA==
X-Received: by 2002:ad4:5ec8:0:b0:7a0:a767:a178 with SMTP id 6a1803df08f44-8738f502fbdmr66516706d6.0.1759398029297;
        Thu, 02 Oct 2025 02:40:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3aa9e4sm1513886a12.7.2025.10.02.02.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:40:28 -0700 (PDT)
Message-ID: <f212ddf6-9bb8-4222-b3ab-58d493f0aded@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 11:40:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: gcc-x1e80100: Add missing USB4
 clocks/resets
To: kernel test robot <lkp@intel.com>, Konrad Dybcio
 <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250926-topic-hamoa_gcc_usb4-v1-2-25cad1700829@oss.qualcomm.com>
 <202509272140.wYFpHZfD-lkp@intel.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <202509272140.wYFpHZfD-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: i3GcKtSja1KdzgZsbLaEe3oA0u4oKNfT
X-Proofpoint-GUID: i3GcKtSja1KdzgZsbLaEe3oA0u4oKNfT
X-Authority-Analysis: v=2.4 cv=etzSD4pX c=1 sm=1 tr=0 ts=68de488f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8 a=QyXUC8HyAAAA:8 a=lGh6S24CkXRaUtfctWAA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDE3NSBTYWx0ZWRfX2xs9SeyifJ8x
 kxrQIR+GqDyteiKEw1PVC7w/za7fhJ2vzil/uPSnZl5npzmfq/mSgH+zA3IQYexo0ldzTu1PbxU
 sIA9CDEaapJ23glg9vBhVrs92egNPzZfGRPG1FXEIwnN8h3a66fMMOI/PjTKFVNSNxujZNN65/h
 e65NmETASaUYo3XOcEwNgtURXidsinH9+rOLijPPSMwrT0IZxXFLOEasFyU+lx5OKGD6qZfHNpK
 2peai6IR47mQZv0EzyGwFZ6HpiRN9ln4jQq5zZC+zjpLrRmsv4o2sYmw2Of/tvzM9nLzlpJNfwr
 CH9dw6eOb8msYHlxJhV6kF+59QlimSdxIZqxr63gHlNZDvMnd5K1YDEWeNUQrIA+EQJ+PsfvUZa
 sgBaK2Bt8DG4AUi/9SRTJrgqt44tlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509290175

On 9/27/25 4:01 PM, kernel test robot wrote:
> Hi Konrad,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on 8e2755d7779a95dd61d8997ebce33ff8b1efd3fb]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Konrad-Dybcio/dt-bindings-clock-qcom-x1e80100-gcc-Add-missing-USB4-clocks-resets/20250926-200520
> base:   8e2755d7779a95dd61d8997ebce33ff8b1efd3fb
> patch link:    https://lore.kernel.org/r/20250926-topic-hamoa_gcc_usb4-v1-2-25cad1700829%40oss.qualcomm.com
> patch subject: [PATCH 2/3] clk: qcom: gcc-x1e80100: Add missing USB4 clocks/resets
> config: riscv-randconfig-002-20250927 (https://download.01.org/0day-ci/archive/20250927/202509272140.wYFpHZfD-lkp@intel.com/config)
> compiler: riscv64-linux-gcc (GCC) 15.1.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250927/202509272140.wYFpHZfD-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202509272140.wYFpHZfD-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/clk/qcom/gcc-x1e80100.c:580:32: warning: 'gcc_parent_map_33' defined but not used [-Wunused-const-variable=]
>      580 | static const struct parent_map gcc_parent_map_33[] = {

I initially used a different magic clock struct, but the current
clk_regmap_phy_mux doesn't need it. I'll resend with that fixed.

Konrad


