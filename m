Return-Path: <devicetree+bounces-180744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C04C5AC4C4A
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55777189E782
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CABB2571C3;
	Tue, 27 May 2025 10:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hvF79/2q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0236E2561C2
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748341991; cv=none; b=hgKw+TdNZmb36vfrSOnM64k/KftqeqDa/wBfEZD7NADhX8sy6mj04EEclH2lNFGcktyb8kc/NDNNr2St/9kp2OFvaWA3dObL8Z6ln+ybzoICS7TNl0mIpRxJEB5P4XsBzO3J/WYEmbR7pynCDO9KCg+o8WS1T0w+oZIESwhp7SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748341991; c=relaxed/simple;
	bh=orS6naTu85AKEnJfe89l4WIdi88qpbgmbGoyfqLfYi0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qiCaa92q3/3kFgzGVRrQW01m6yQznI83WZ03p6fsunrhWjKY1mOnAiGZIDGd9q1cAGG+52NkaCH7lIXgHQvsHvosD8/l5Fr6JZe8a3LcyvEdKbEaeTJ3+T6mwmlVd0omK0waIQYqnzVQvos8bYyKLg68Y439n52OLjDf8tRnuGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hvF79/2q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R43nEq016367
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:33:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GVSa5TyFULpC2g1pbka3bw5G/Zxf0bHM9jfUTPl9ru4=; b=hvF79/2qxLLoKwOP
	5875/eDnHvxydQpDbWKUI6GvwbLSK92P9GY3ly/Jc5zi59dK7KmR/1sGLpS8Yio5
	6nbCaYdFVqhh3kXABUjPHx+9c/rn4ZHpwe/nFOZv95mYqSPSUVuYa9iR4l0HFyWA
	37Kp+eVga/C07rfj0R1YdwHVWP+7/xFSG7jOxkGDCmSXduGjjiteD1YISs0wgGKD
	uvngDp1k8Ij32XYtTOI0QEVTuduQ660kcIDUdC+LFkTihpyOJPKqYWkU8mZRRBRb
	sUaWku+nC71t94QcstkLrPHBtY6t3kZ2FnvDApmyrSztH07aquMLvfD7m/Q9C0vu
	I4JzxQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549egv7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:33:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6faa016252bso11215066d6.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748341988; x=1748946788;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GVSa5TyFULpC2g1pbka3bw5G/Zxf0bHM9jfUTPl9ru4=;
        b=eapfZ/z7HpYuT/OcdxeoPEFynulOL9SaAObJqc8ICDXwICtsnDlhtCiPNJGH6qg0TP
         rpyShbmkLplpl0DW1R3JRtE0TyW2j0E0ag83ZBcAoYy91PFj7BDeImdOAFULEpqe8YcW
         BFV/aFIUy4WNUETZKY3SMdXX5+GZkcArY/0/fW2MKYUj+M+swH4U72k3hE51FPtJZ+gf
         p+0XlSyx0JUxMvHzp8zAU7AmneZ+L6whbOQ5G2ddJ2T2IqHpwZKZzuOrBX759ckP+MG2
         ars4hH2mHpEL/Rewooue90q6PjylvMLZFdTYrrHuHz6AOTvWHc7Shyknh7bxtsYbz60d
         8MRw==
X-Forwarded-Encrypted: i=1; AJvYcCVU6KrQDbDDSi4dUOvkF+wTxCXtFQn1TIlPn+oHuLJX+MNEITDHhiE3cX0CUR1QQKx1BpUjmJ4N+az2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+wDfl8IwozT06G+vJCIBPVOh1dvdaWeIq43r+LCTjCmAFzbrJ
	xYf80WQACEX81Uvu8fn9heNY1mRVJwEQ6Zy3CAG4g5RJh6gjHuM2eHiSSo5LFDo8dIJr4eKKLWi
	iC7HOF66Y1nJlGqNiJOPBQjdd3ch9wu3yhb1GV3nWAGOg3wdzMjpJrMpx+4d/ygoz
X-Gm-Gg: ASbGncsDhUbE62HH0SteL1z/V7ub+Q4n1WnkGXYRLNuh+7WoGpQtkDY/5f98+BLeLyE
	mG0Oax2zODGecRL1BjbdSN64QcJzdHFPa5s8wKTwiR5TpbC57XwZ9AqkKBhaaC2lZd1P4lV9KMR
	2cbgVUHq4e9PzFepmVLZC4B3uP6ASKiEWykD1IyrSAS6rjwQhnNTcSRDVGv4JO9wm6wibZ5Vh75
	ZALVYpBvgHM9gYy7zaBy/Fc73SXOkp3HKjSPF3Fq3Ub47PtNEBfogr1Sxzep+mJ/BCDyLF4hVch
	2B47Yh44E5AdrU4XPX/r1GnKg0r3/vA8796OyhVMH3sspVMruvpwAUHGXaGPSkRP5Q==
X-Received: by 2002:a05:6214:529d:b0:6f8:471a:9fd8 with SMTP id 6a1803df08f44-6fa9d28fd01mr72941196d6.8.1748341987894;
        Tue, 27 May 2025 03:33:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJSSlpTDFYDWxRvDO2PO8VMKZpkqF2yx2SQnwuybT0OCxg5u7Q/jhHeEqb2VX9nRjheRGEgg==
X-Received: by 2002:a05:6214:529d:b0:6f8:471a:9fd8 with SMTP id 6a1803df08f44-6fa9d28fd01mr72941136d6.8.1748341987473;
        Tue, 27 May 2025 03:33:07 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad88973815asm127933566b.129.2025.05.27.03.33.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:33:07 -0700 (PDT)
Message-ID: <49839473-58de-47f1-8b2d-cc994cbd6488@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:33:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: remove unused reg
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250525152317.1378105-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250525152317.1378105-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qTHkkdzOpsZn5IcUFWLsoa9Rm4IPDlZQ
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=683594e4 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=kyqvF6sjOl33UedpCx0A:9 a=QEXdDO2ut3YA:10 a=Y3S50wn-SOoA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA4NiBTYWx0ZWRfXwl0zavoaI0VN
 GqcDlX1i8mRMiKokHfk1Nt7Ifhtipq9u8A8uZ0F1c2UYya46LjSMT64VqvJ9JEEsTT+2BjDSAm6
 CLH7+z+x9AnSXCkzxzzbuJsVDYfYzk9SAYqMuKup7OeK6p0DGROkNEjnH6jzr4UoEjulNKfa9vb
 2xc/Dp3vgAjBqukdkNtlUJgFCJ2ya8mvvoUwSps6FkDoy+aTHiKpcCiIpE0j7ZzTSMf5LcG5s9e
 od0Y2ia5Vvo1Pz6JR3Tt0EYw3KO132wSRt48LmmpkOasmgiPnoApJjSWQfU8AwMKhIaqUq2Nu9Q
 w2VDrUonON/45KILDuXLD+FMi1FjUxqhz4nTFfHEqmtZYHCKRZumbPmwFaBAUEFyWBJmkOXEYU1
 XS3x8zVvKXfF/imRbrww8JkRU6KxZVI0iOZ/n+VXbl306zc6eMprhuw2EmLLxeVQ/ZJSxa/I
X-Proofpoint-ORIG-GUID: qTHkkdzOpsZn5IcUFWLsoa9Rm4IPDlZQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=788 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270086

On 5/25/25 5:23 PM, Pengyu Luo wrote:
> <0 0x17a30000 0 0x10000> is unused for apps_rsc.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---

This indeed seems to be unused

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

