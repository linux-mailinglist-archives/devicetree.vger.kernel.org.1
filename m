Return-Path: <devicetree+bounces-251626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E6CF51CF
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 18:57:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 790C13102521
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 17:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A993043DD;
	Mon,  5 Jan 2026 17:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EE0CTSfh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F7NyXOIF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB842874E0
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 17:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635521; cv=none; b=DeTSdIU9gnb2hV5CmgQ8Zer7ntP+T3j8HHASlcwsEXokkFBxRJ9SZNqOac5Aad0l6y2HFZvr/apze2btRLeUs9PY24REtfLVdYyu7ffENEHucOuURevBgHUtH/P0ZE0oVtW6lrwfjLw7vyWX+iKnNp50q7koPd9uyzwM437as9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635521; c=relaxed/simple;
	bh=mcG8x5F9Z1C1LIjWET1GizE2C1cKQKGLqxcoxMn7Jnk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mrrlc+Nf8EW600nueE8b1AdsyMw6Lpi26OOkAZFOb5evX3BQkKrS8G9/pfVK5w5PZ/lt1NXa2FoJqN0oC5Ght8WGrEQGLQe/KoY0XZhciv8/fKGw/4nrxZKo/31cnE3BCqbnT2gscnFUf1iu/LKYi06MVD46o3abHcL8XCOhp+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EE0CTSfh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F7NyXOIF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605AYU1Z936760
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 17:51:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8N3PkKIKLlmnCJHDX+aR4HEaByyeSZJwUWPWA75UhVg=; b=EE0CTSfhGbu9rBVy
	uuchbKDKBTfVUFOxPKSr24x+ir0RjxvsmEWq3SnlKzvlYGvu4TbetXWhXQ+Gazda
	v/wmawa+K6Dh3PusjCmDYTYWgg1boX3/6sTu7piOwIAJk1sUfFf1SbQfCEDCSr7Y
	dpTKAJJ7H4QdqzmFJyh0m6sPK/hCX2JYqS8AcmLX0ejvLQuOaFVLBxO/R9Ihe+Px
	+yCbEfe7JvUeBPeE9tE9wej5hKgn81jDoZnCm8lCh3LvGeKiuud4saLltX71UDWQ
	Su/eW0+jLU1O7YIWTCMVtTOpg7JXTuEHv9kpqedF6/RaAsi4rhkurIzd3T6Snz/U
	q31Q+w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgbnv9644-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:51:59 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8088be744afso1141400b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 09:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767635518; x=1768240318; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8N3PkKIKLlmnCJHDX+aR4HEaByyeSZJwUWPWA75UhVg=;
        b=F7NyXOIF4mRTOH07HgMA6JBuN3oK1+oPj56VWtXDtW7FwmazNto3NR5c7m5WykZMNF
         /VYLioOyOlag4ojT4JrS407cSPB+hce0b6UKtnb8WD0cdQKTWNZgiBEKD5Ijd1Vq+F4x
         quU9nS861t9jSGf/sB1MaNlMMz42cQCZ+i2ew5mMBXI44+MGRV82ESx3zSe2wjRsiEHi
         WrBM8Cye1WnjA21HJpsIT7s8TWR7g7bsdp/dfr92X2A2X3ip/pxhNWv7ScEfUIAqcANv
         xjoobPrQF1t1ontdK/2x+NsYFCw3VkraXawShZOaOleV7sURU4CmZex+lxSaJy91CVmF
         djpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767635518; x=1768240318;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8N3PkKIKLlmnCJHDX+aR4HEaByyeSZJwUWPWA75UhVg=;
        b=Ddm0y5zo5mTHFhe+42Wa6vubcJ5dnPW0o4IjhjLbhPnQqvmcmojSl/Cs5fFsUMQ6wz
         nJggjHpxF9T7u3CXQ43F4hBmFJZba4ufsbszJIWgHUMkMitoj4e5MR3JMSEUnF2fPqME
         wawLuQQo9pT4PUEfHRqepwFMyKigt5CWDrVAC0DwSKt/TbWy1N4t1slnYwdrF3nGViKv
         5vvlber+6JoONlZV6qxy3sx43pspULLwm4uektXEjMrC4T9jhJG5TWe/gfO1FePp5mxM
         9ApgeYZGmHVKYLLLznLia+AKQlRGAWWz7EuUl/EKneY4AtSGTp3XdErrJraoY3+p4c8b
         2+aA==
X-Forwarded-Encrypted: i=1; AJvYcCWk2298+sCSsAQ+kyfN3OfuKWFJpQTd+fx/l5khvvmbkhaTBhxM8awu6E7t53Uo/XVIDd6O4A5fjIfn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe0OVqasvYWlXjQUXQt96QUSLxh85v0cs1a7/yvVX9NE4aPPd/
	2bLHoY0yJmsalaBB5kMwgTiC9Dr8OZMaCEpPPtcnzaNg/Qg4q1iTsGiREt99JxazGL/l7/sukiR
	uoV+7dKj8z/Ywa4Famrz0Dc4G/OGWy6t/0JyVn2nkWo6nZE3lhFE8+q/iyU9gGot3
X-Gm-Gg: AY/fxX5XA4OsRAutTUjvvccGzMOUfS8std9ZdkXx7t0VOHQpNeJidRyJw8ygpirMW0n
	VKOPEODAP8QbLHIG73IFbyEp3SYY2wa8GCOoMi8S06Br3Jzi0LoTtQOs/7FJ7szVw/di2OqQ6Zo
	yTtQioF7nUE3XQgNfiTmazzRhHS/wRxtwaYkT+Dy0jfLDizv3EAe8gfPb1JEsoW7c6BA6+NhDvn
	9zVdamMaqaRgc/wfF3GWjVVgTxczLSUtv1YMbXf6m1iHfRwXbEmFyqxFe8VbkQxg7WQdxY1TtgB
	R/TTEOXqVGIkxCdm+nnyyDGIDIl28wbpHGRNuAAsdvg8Bn66vA3PEg9Iop8yopno3M5AfjlkDxc
	NDRfohXIGY4vSTbdrsUByV3QDrXO3PwTgjL7epw==
X-Received: by 2002:a05:6a00:2992:b0:7a2:7058:ab89 with SMTP id d2e1a72fcca58-819439e4db7mr767b3a.7.1767635518109;
        Mon, 05 Jan 2026 09:51:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfNuHXhwkvebkTFfEm9eDPo7q7ccR21E5fo90mIc2+aY9d6KmqZcpRLdzvOv4+H1SizmJpCg==
X-Received: by 2002:a05:6a00:2992:b0:7a2:7058:ab89 with SMTP id d2e1a72fcca58-819439e4db7mr749b3a.7.1767635517600;
        Mon, 05 Jan 2026 09:51:57 -0800 (PST)
Received: from [192.168.0.195] ([49.204.24.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-818770cc5fcsm387555b3a.2.2026.01.05.09.51.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 09:51:57 -0800 (PST)
Message-ID: <1da9e178-c956-4427-bbf9-da5ba0d6bd00@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 23:21:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251120-b4-sm8750-iris-dts-v3-0-8715442c30d9@kernel.org>
 <20251120-b4-sm8750-iris-dts-v3-1-8715442c30d9@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20251120-b4-sm8750-iris-dts-v3-1-8715442c30d9@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=695bfa3f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ODGvV0xkDf0c6Ahx0OzfTA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=S0N0MQetOBR7HoRL5_wA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: 8FRl2XSg_3SHOLfP3Q4pH0AYLBGNnk9h
X-Proofpoint-ORIG-GUID: 8FRl2XSg_3SHOLfP3Q4pH0AYLBGNnk9h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE1NCBTYWx0ZWRfX8EdzE62eayfV
 JAIrA07ofSYyX8O2KMIzNuN0nlepH1p1AZ8gXhQAmgJLXZyuSvdxGDi9vsO40otwqG6qVbb0uzb
 fq8pxKnsrVIHWwAyNc5inE8cAH0t05ljW6QyCkcG+mZDmCLo3AZJYZzWRSbrTpdRX2nb6w/0Gzi
 AdkYQ+1tqphz9w7tHZqDK2VriqyBYD4VGVk+AdQ990guZETWrs0zNsg+sxOlLAO1cw/GciPWqh6
 4eMKVXPT6lXeNv11f/uFOztGHerAbAqUQYjNEtvEzXBGXNhe2ofh1ynIalKFfwveuIfmOyWospO
 swObxBZ8sEtXXv8jd8j/GXKBSFjkv6dK/ff78Aif3Ly/DgX+nUILX42qdIQoQ/Rzx35AWqkRO0+
 KALb7bx91wWzUSYDpW2L7ReXZrGyNpSymownxPiOUAxT+ODyoDP/kfNdHgrgLEHFFUoxXHKm4K0
 f38VJyM4ZfAHavxj13A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050154


On 11/20/2025 11:03 PM, Krzysztof Kozlowski wrote:
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,sm8750-videocc";
> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_VIDEO_AHB_CLK>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;

The 'required-opps' are mandatory for SM8750 videocc, please add the same.

+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;

https://lore.kernel.org/all/20251126-sm8750-videocc-dt-v1-1-a848fbfb257f@oss.qualcomm.com/

-- 
Thanks,
Taniya Das


