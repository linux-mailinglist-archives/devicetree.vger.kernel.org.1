Return-Path: <devicetree+bounces-197765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD4B0A89C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D93161C473A0
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D59B2E6D06;
	Fri, 18 Jul 2025 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HkaTDaC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03EF1C863B
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752856741; cv=none; b=MzbNtphhRKHyCo7teU+Jnn8qwMT5UZxVrkxZicnLftzMPddpqs8O8Sq3zL6v5Cs6JaiRnv51lvG55ngY5UaO6eT3cnMrHAjw8sHOi8M8iMdAOtEF78tGLCgIFo+9CoIfSehgDktRHVZ7vInR5W7iXgEHc9avfXRZprfn4zxI21s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752856741; c=relaxed/simple;
	bh=PKzM2OX2ycXMBs8dy8jvpWc4ZUaZPB/LY/5aZpqt0jk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BUxF4gy2b+04fMUIQOjl20fnTSGnLITTSAsFvGjsMQUURgy3szfNdPcnAUsYAU4DHqZG80pvVUbJpnt9lMuDzPJKPuPVQfNFEkbQcv7jpf2JX5QZT+RJBBMDd2McPuDr30hwpNRrt60M9BYaYzXAvf5RzmTj1N9MsuxoS1o7SOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HkaTDaC6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IG11Vt015650
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:38:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XaUEOpwnu6NxdO/qUIkj5n83QZNRBaNn9dV7MFSL2zs=; b=HkaTDaC6s/J/40P7
	90dDaK0citrZ2sFZ8Dh0gUceH91jRj3u85aOcQW8/9fKKsQaJtJC5LpKt4p+GjwN
	CfNshQ5eVawT7etZrQMv5r4NSqy4I6yR5YJMz7fxppoSXQmgoUoILqeHyLIlLOqC
	wr8plijnScugHjHSisURYR8D3cey3Fb15zgURWipnhdmuQiTG6txC4mJ86E/X72e
	XQXibIQFHJpXhQbg0zzwlydumlKFVg3GGnjrjEX9Bx9Zi+FJtJFOCSAjxZ7qGed2
	ELPeGtIZG0iLMhnunHLkUCUFKomYtlg243qNdheSxo61fs87Q/ywYb9NyXoaLKAK
	h/d30g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyy7k2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:38:59 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b1ffc678adfso1761620a12.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752856738; x=1753461538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XaUEOpwnu6NxdO/qUIkj5n83QZNRBaNn9dV7MFSL2zs=;
        b=tQEeqPwpEnwPn0hyS0002z6uwyCfgRR7dD6jdoiw4jZKTdRk40maJUHTz5ooAa6RfF
         uHWBJs2OYhj293gJT0Ln1FVmoIUTKafCsSzuLysNnra1C+ZQcUUWuMk2Kk3ut6zSvVRd
         k49EgoZtQMlGLpxgm1x9IEoRQBCyujrX03gZr8x53cdd7WfEpSbxF/efbeIjiQ/j3Y4I
         hwKx2HwYVd33FPSZkMHJwpqIsh99+8Vx6FuY23J2cpfuG0Ah7fBYwD2+4j/nT4sEvTSM
         BdRUxqTZib5Yvdj3c+j7fhqp6k2iu8HyquiIKdZvNG2OBHxDbWQvrhVqoG53NHglQ6iv
         X8Ig==
X-Forwarded-Encrypted: i=1; AJvYcCX1u3MTHfUIBNiugqW1t4j2A/Mr/Cd/IXhVnCSYTvoGDNYDLcmqr3VcR6Loz8XBSsqZI7BG6XVWlTV9@vger.kernel.org
X-Gm-Message-State: AOJu0YyxiXTzNiACSG2hSUTYiggwiYQ1ygpGr33D7Qa3QuNEkqjWBabT
	Gs/qqwotNSL+wgGm9wtKsszbqqanNBPboGWUUogeiqT0ypkrritsd27w5ewPuIwAXvfTWzUidQb
	YInHZE/3MImoHGyr+3cdK/mHRmQzg4Yd8op0ka8FXgZUzj07wP5EHudROR9+7q+FO
X-Gm-Gg: ASbGnctXXBGr3d7sXlx6ZRXP2q4Phdx/RgKf6+jY+8cRHE+cVnSadGllEtc41LBBiGz
	L5S6Ose5FBkWvQfN9QQ4ruOyM9aFMmatyToTsCczbinyIfGkIqWeZ10VXkMo/hSPQ8Jnvk/gZ0K
	SI62b/8mseBJBVIP+fAUgVGYMOrf+3xVBewsGkyD/rdVBKDIC1iZll3VmzBxnjDooDMHKFHr/uM
	KSIfMyn0ZzE0qlix8doapEj7Am/0FX+68e1e1CI7y+IqaSFnJMNF1mcv9sGMk57CNjTU8zgjr8R
	y7mH78CLvbyAg/dn5E6/6s1NJZrYxf9zOOdlOyzA/J+cUXBaS0RasPjDFg/b2V2LPK6K/sWGhiQ
	93iTpb7TLP5pbIiGsuIhtEA==
X-Received: by 2002:a17:90b:3c09:b0:311:ffe8:20ee with SMTP id 98e67ed59e1d1-31c9e6f7349mr16793131a91.11.1752856738017;
        Fri, 18 Jul 2025 09:38:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/f3rHzk4HPCgwLaXFm4dfM3m4MOQeIgsDbrovnS/sFrTTPhvP8QSgCYuhbvY+4m4y3AewIw==
X-Received: by 2002:a17:90b:3c09:b0:311:ffe8:20ee with SMTP id 98e67ed59e1d1-31c9e6f7349mr16793103a91.11.1752856737571;
        Fri, 18 Jul 2025 09:38:57 -0700 (PDT)
Received: from [10.134.71.99] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3f46ffdsm1573045a91.40.2025.07.18.09.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 09:38:57 -0700 (PDT)
Message-ID: <5bc7cf1e-edb6-4bf4-803c-f84d51fb1534@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 09:38:54 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: Fixup x1e80100 to add DP MST support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov
 <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250717-dp_mst_bindings-v3-1-72ce08285703@oss.qualcomm.com>
 <b8d6edef-6809-4166-b936-fd000513df90@linaro.org>
Content-Language: en-US
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
In-Reply-To: <b8d6edef-6809-4166-b936-fd000513df90@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WYJxcWwi_enZObLrZMqZCXSN6xnWDIJ9
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687a78a3 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=bF9fvQb-GeUcl4pYUR4A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzMCBTYWx0ZWRfXx2xS2J32AoKW
 JRVqhmRTx1Vf8OZDxKKfqyTz3ezXuZgGXcuh/PZORAGGvUApRs5p55roiS88gtz4xhmHSuBJhgg
 eTFFm4DhTNATlXbjUXrUyB+UQfq4J9GissJ8RkftH1erKrw4Y2BncswHJxlym/1BUtRx8xokffD
 ezuBGNiEQseRcOAau2uV1Zx85AvvJJWuo2T5tG05kVMR9n/+rC9jGn+duhfzqtI+WU6tb5ZPIYE
 XgnPVAHLb9Sk82DErgJZpCR0Ck/zOIDLMSrnQd+QpkDV6GvmkIiOD9oqrMPG1jxFqhNQAwKJi2D
 04/cccV/29fG4S4Gfc6YK0DkC2k/Ccho5pWZd0kSe8oO1SvTyzg4ujAiD7pj3tbsRBTKMst6QMF
 jGOlrpMhDdVbVR0aDkOE1nO+K0foWWUjy8i6237rY2W9A2vkE12Tiy5scC2xjg7q7IJ91ZHs
X-Proofpoint-GUID: WYJxcWwi_enZObLrZMqZCXSN6xnWDIJ9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=735
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180130



On 7/17/2025 11:16 PM, Krzysztof Kozlowski wrote:
> On 18/07/2025 01:28, Jessica Zhang wrote:
>> From: Abhinav Kumar <quic_abhinavk@quicinc.com>
>>
>> Add x1e80100 to the dp-controller bindings, fix the
>> displayport-controller reg bindings, and drop
>> assigned-clock-parents/assigned-clocks
>>
>> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
>> Reviewed-by: "Rob Herring (Arm)" <robh@kernel.org>
> 
> 
> That's not a correct tag really - drop the quotes. If this was added by
> b4, I think you might be using an older version.

Hi Krzysztof,

Thanks for the catch -- I'll upgrade b4.

BR,

Jessica Zhang

> 
> 
> Best regards,
> Krzysztof


