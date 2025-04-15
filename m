Return-Path: <devicetree+bounces-167245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 183A9A89B0E
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:51:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EE7A7A65FC
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79C82973D5;
	Tue, 15 Apr 2025 10:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pgy7wjpD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277132973C2
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714034; cv=none; b=RC5ZzWXvn4B++xbVJkfHC9bTJc6lMolSkNDfFAaptX1bm40A5arOb/UOvTJbRLy2vk5GMSNIzwzaKw4WX61858wQxlUx5SqX+k61xFuQ2vOMuaC4Gkjj4A9l/K0NhJmYqLxLDBVOQ+eZe+a8XDI4XsZghJfRH5V9RjXzDIlZJcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714034; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pPQID+uTUTqpWODsuL4QhvWOgvaf6rMh4G8E4srLZ8lyvLEgvW4QvI/ry3ilJ1qbxpyeZeOscuHs3tcp0tbrQ4BqJATA1Ha0Irw/kThShmZGd9lRswcJWCfkNyGdSrN/a/rUEVNYNwqMZfzZUYiTkizkzy49g9AhSYcM4ggREHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pgy7wjpD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tF5d018871
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=pgy7wjpD+j7ZcTHN
	8APAM5p793Q+6LAs5bBg66H26ynbIZkEFKrHzApOOfBwcwzBG0Tyl19Xp1AzgZZJ
	JdSR/WnVXIXf2oxeeO2/Ne4+8fWvRRL6IKLAK1akpWr4gR3JcuT5Jt2WOUK8oI5L
	zPSSOngoSlJ3R9c0kMn+pzYTfQ7tUSAO1ulToAuFL5SywChM78+nzPKacspGrWSC
	g/VLzG2liy0HnWma3bAFwwYwWUR+JWyMHo7l90JwqM6UgEWZjQ7xptsTfsbKAvvc
	P0duLOSd6HGwpVQPJc/nJi6F5aaLjVjMO8xcbWdeI3EQ+NtMGdiyOtSg0gzSH2Qp
	j/oe2Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjfppm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c552802e9fso138176985a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744714030; x=1745318830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=dYUrJAbnOEDjnHzSy9HUhNP8ruyE8R1tsBdRWb+kmzdtiomW1VH8/WToCKOCHWTfc7
         t3r26nJw8usBUP7xkgG9eAlKKOfA46z1P70vITdSMtsBOwdD8MShWApes9e8WYSZKqSh
         n7EUxqGp8Z3wT5YLElUQU+d63+8LRdUKp1efc7uR3GZTr2SoQix5JSBfB9uUcWMVI0EH
         dA0cmdNMsxyYh4exdS8SdhLYzJ8HMyYV5ekV2JderXak+khHJJ5+yTBrKF0OYMq9xSq+
         cEPVwYZ3AOUuvkO5bbRjFdOk14fZ95U2AfNVJcAXuYgAhjMM9NOLuWloyr2KjwqUAxaD
         H+TQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh6wQhTMYSgDwXCl3OYFligiUTRrTwoBIjxOdsRks7onO2qpuPgwCFHQJ+WT6lh4+0xL6Vd8i4AW+o@vger.kernel.org
X-Gm-Message-State: AOJu0YymuFfpJbR/6E/y2ZOgpZ7QH5HStSWAHDv5sOtuuDqq9HlP+sAC
	IWJug9emxCaw58x6dakS97nSIrFiqlSEHXj0qw0lbOTe4BDQvja9Pr85GOk9TuusgtvDcPDre0M
	9g0ODSv36M8YelVHywpZCrtGvd24Yw0Fc3pCpEfrBKDAbLxxbdf9CxLp1s8h3
X-Gm-Gg: ASbGncte0MGQ+0biwAMR17Fe3RIqYDH/8enPV7tbPF/M+lMLJfCRAh0YTXdqUxuIDT9
	7PyhQ1UBkl0QNPNAbvB6JrnQnMTEXP7BnsBkz4+dbXVCf5KATDPhmSV2INZ4Wj4xg1Pd2Otqplq
	CjPb8wwlk+1pmNLuE7UcbSjQwjj6XaMNdwiXoak9mvh2HdbxNJc6GCNWJfsfXnK1Om5M2ZFny/6
	uUQ2jZ1QTa3XZ6ln01jJU1AKsgxNfWvaEWkvF3AavArZmZecarQ3OqbdXw1dIgm+Tyfq2T1jNF9
	xwZRv7G2VzY06KKL6wImJ/OWd4AbvNdYpl8MS7Qj+fneMpz+/dyugVfZWVM17IL8yEg=
X-Received: by 2002:a05:6214:1ccc:b0:6e8:f88f:b96a with SMTP id 6a1803df08f44-6f230cb3911mr91910726d6.1.1744714030257;
        Tue, 15 Apr 2025 03:47:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNYL4z0DB/Khp1jZUpEcH1GVQrkbUtyiS1sATDlqHZ4vEHbFck5KX0mNwlVzq/0T15uZOquw==
X-Received: by 2002:a05:6214:1ccc:b0:6e8:f88f:b96a with SMTP id 6a1803df08f44-6f230cb3911mr91910556d6.1.1744714029923;
        Tue, 15 Apr 2025 03:47:09 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb43b6sm1084361166b.93.2025.04.15.03.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:47:09 -0700 (PDT)
Message-ID: <1f332cbc-9a1a-4a56-b929-cc008e17e25f@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:47:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/20] arm64: dts: qcom: sm8550: use correct size for VBIF
 regions
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
 <20250415-drm-msm-dts-fixes-v1-19-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-19-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NWFFAUr2dA_QRzq___5WAws0v7KMw47D
X-Proofpoint-ORIG-GUID: NWFFAUr2dA_QRzq___5WAws0v7KMw47D
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fe392e cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=607 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150076

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

