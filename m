Return-Path: <devicetree+bounces-130677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3839F0A1E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE4CB282046
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26EF1C3BFD;
	Fri, 13 Dec 2024 10:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="awszngcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6C61C3BE9
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734087210; cv=none; b=aSLGgMDrhGKBJiRlDlAQ29qwl5xDR3VE0+ECFMvuf8ldq+vLpeUz/gBfkmGN2J+MZoTD81CIbSWQybEwWWGMmWSgKilRB3IJurqK0PvUVjqVqG5xY+CVdp4j1AQkzkl3I+Sn8aSFQuhSu4RHkul64KOd4Undrx7cya9kSXdD+/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734087210; c=relaxed/simple;
	bh=j6ZHJdqxkJJHiblJ7Jq0v6xzFd8n7Cjkl3kVBrD/pAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aG1Fk5sGe9ionTssOR9axWK/b594ZUphSpg3sZE8FVbStpzpm1gyS66Dz4vO8ednyL6S8zyMNQ+1kvqM52mLC9NYhZXR3HcFetihD5q5coaZD+m3Wq6ghExsdM8bf/gzKpNCx69hrY9SywSdmTLw86C5d8PAZ9iHLR8mm6tiZt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=awszngcr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9qcIP007055
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:53:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	irpyIGk/Q0YF6woDF/wcVcUCJnQrVPx3H7tZ92Jopi8=; b=awszngcrShQZzvPi
	n0hEB9bmooPgpZMyxjWdWzE1FdZbWqj0rY+4baPFg33/WXHP3sYkcH1MER0bcb6Z
	GBGQjqtFicTO4Yk9za0JTmJt2w6+krDe2OHTzo5nuRsE5p0Up7e48hfHCCIqzanN
	ONm+ZGMnJOX6QL4cIFPm37VsovtYSR5hKAz+MfvvFwelvo1ibQl0cvbrVbt7HVYK
	SWiU54j9uq/1MS8IVskDjcrdGgbqi0ji2l4eu3VdtD5bCBpA66+SxUMCz5pXgJPT
	Dy4Yt8Jp5w/4gCsdPuiTxiUnxJwrrWXyjNyk7q4FVCFEYnr/JED9weoKVI/ZlaeC
	8P2jqg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g6xusv4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:53:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a437e5feso1865411cf.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:53:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734087206; x=1734692006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=irpyIGk/Q0YF6woDF/wcVcUCJnQrVPx3H7tZ92Jopi8=;
        b=Hcrmzm9uyfNLHvmyN2TygeEXLyVzTmYqC9b6d8WYopVT9q9FOGKQ40b155QAGEoDot
         jEtDuJB+kUoMrkLTnaNzXi1flZ8nKFWMjNCaSV24lAbUgAnJQ6y3grgaWUIcZxpZklrb
         +up6SSLVrs/iEICkmv3Q34Vrcn9egSffY+D1UNja2VihQZOcGipPb35XSWFxgaYzRDZV
         HwbKH6Vkbb7zJfEssPjV7cKawEjjFNEJsCixVpifqZvZyPycGxdTLucc7UDKl5LNmzPY
         P9d4qwDULMMRSiXavjp03V05oErVdK+v5XWp1NMHGOoUBXcO9p3oFG81bw5DEz3itbUp
         rorA==
X-Forwarded-Encrypted: i=1; AJvYcCVsod4xP/DKNJrwF8u7GufzH7WFVK8DYRNdgxo97XWMym+75RYxIlmWYzCY5CEbCtYyiOOiMEq0Huv4@vger.kernel.org
X-Gm-Message-State: AOJu0YyTwHk6+o5tZVQUK9sd3hYAJ7aPeNazsJKOUN9nEDBrPSom5DYv
	en+VLfUHJLEu9AG+QGfopOX8sT/unx/AAM1+V28YD+X+5Y6bur2aodsaBFGfdPEx7egpN183/a0
	Xh41CrF7oMtrcn7/o09tCBI3J+bHCxwV9VXiu5b/FYYEkYKOKqMsYkV3Y0tXB
X-Gm-Gg: ASbGncvne1XsCYKoXx1Ai8YRWTeqqkgS1RDYnQfJnsMBEqaJf/pg8tm2pMIiqtDGN7Z
	dXx5ua6qhSn9y/eypb8ffrRhfU4aEFRodK4mEZK0dzjeMTniQ4ZyQxKJGfB+Qi/vFh8OcDx7d+q
	gQI15gdMT3oJQx65NpYrN3Gg6Xh8/c8B5y6RZGkkRsgml+G2M3i/fCOnTA2tmCW4ebI+RQfRdMW
	DQsoPOorwUTkg/YK7BMyKfkr5PkIx7q3wwhc7od7R/BYVl5DVYuDkkTyqQlxtIq8DTiQlcOBLtX
	pTtoOdUR818wNtf7nQowsnc2MNhSDrsvNLKu
X-Received: by 2002:a05:622a:13d1:b0:467:825e:133b with SMTP id d75a77b69052e-467a582600cmr13964391cf.13.1734087206070;
        Fri, 13 Dec 2024 02:53:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECRFHuS1VOciP42gwRe9QYsYpR8HsKDaOPO2V5MwSaCuCKb67oOndG87qRS6M/GWLhkhClaA==
X-Received: by 2002:a05:622a:13d1:b0:467:825e:133b with SMTP id d75a77b69052e-467a582600cmr13964081cf.13.1734087205613;
        Fri, 13 Dec 2024 02:53:25 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3bf50397csm10148990a12.79.2024.12.13.02.53.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 02:53:24 -0800 (PST)
Message-ID: <28bf46a5-dedb-4491-b9be-23fdfb99035f@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 11:53:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: display/msm/gmu: Document RGMU
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        20241104-add_initial_support_for_qcs615-v5-4-9dde8d7b80b0@quicinc.com,
        20241022-qcs615-clock-driver-v4-3-3d716ad0d987@quicinc.com,
        20240924143958.25-2-quic_rlaggysh@quicinc.com,
        20241108-qcs615-mm-clockcontroller-v3-7-7d3b2d235fdf@quicinc.com,
        20241108-qcs615-mm-dt-nodes-v1-1-b2669cac0624@quicinc.com,
        20241122074922.28153-1-quic_qqzhou@quicinc.com
References: <20241213-qcs615-gpu-dt-v2-0-6606c64f03b5@quicinc.com>
 <20241213-qcs615-gpu-dt-v2-2-6606c64f03b5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-qcs615-gpu-dt-v2-2-6606c64f03b5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: i3dn4b2HHyDYHz1qUdZVQuyzffq7YT0I
X-Proofpoint-GUID: i3dn4b2HHyDYHz1qUdZVQuyzffq7YT0I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130075

On 13.12.2024 11:35 AM, Akhil P Oommen wrote:
> RGMU a.k.a Reduced Graphics Management Unit is a small state machine
> with the sole purpose of providing IFPC support. Compared to GMU, it
> doesn't manage GPU clock, voltage scaling, bw voting or any other
> functionalities. All it does is detect an idle GPU and toggle the
> GDSC switch. So it doesn't require iommu & opp table.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

The bindings file exists so that people that are not in the know, can
reference it and learn about the hardware. Please spell out IFPC, as
that's a non-obvious, hw-specific  acronym.

Otherwise looks ok

Konrad

