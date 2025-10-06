Return-Path: <devicetree+bounces-223778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCFBBBD721
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 480D43B20A2
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C040126C05;
	Mon,  6 Oct 2025 09:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FtI2+KdI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05651CA5E
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743059; cv=none; b=rGfADtq7RYhxsCYtR5ZpPr+aPjuJbDAURLkmH/IWmnTtATffQqNOoWfs7AF1HVry6/GfpXHS1tCZqOAaWCxTqaFKTIesIvvojqbFbdjFynpOucGrWDagdtUxl1ojUEYiqbovmIqzYKAfHFdR02sjqD3kzbasAEiy6VEqpwOMUnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743059; c=relaxed/simple;
	bh=leaPRdjhUAhu65EKAwyIHOe5Bt9yDIhBkariT72x9hA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4FA4x4QNxgzgEaxfqh4BZQizpCmXIC4MlAgH2pTOpJom4ONEDthurb1a8ocuXdvLAML25rF13oRUQZgY3Mp7yPipKXZHlvigiJsucBXO3RVIrmXCiBmZPONQ7XOj+hgPEydTF3PzAGF4kVL7bfz51VC6Pg2fFc2+P1pBQ6mSZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FtI2+KdI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NKP6B011762
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 09:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vops52gUYvZ3NLTbdfUXQSMexbJtRLHsZnvJ7nngDMo=; b=FtI2+KdIXV07hdY4
	laJIJAarmK+hNExe9mi4lzgX+cXYQ04PSC4NXTEkyBjBALpo8h+B2Rh8hleKTZ/6
	PegV9Tqbq3bEp9UUNHfhHUjnZOcRWIrclthWn8LjIUlvQKzNMvuBebPIeqeoKeDj
	PuOtS31KiwfW1BFEwgq6xEM0LK11c1HIAWNas/2oWvkopE4PFkAuX/kIEk8pgKpT
	kE7170gd+B8MA5WsVOXcOG5b2zxzfE6Aiwrt2xcotbDA4wsfjMErbqM/6zfUCPv5
	HMIYeiehPpm/J/UeSkBChO2y2gnQshIBdV8kBC8MtQtqDowCdLFu/JCmrfoeGDyt
	H4sUhA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9dunc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:30:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7f5798303b3so11547336d6.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:30:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759743056; x=1760347856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vops52gUYvZ3NLTbdfUXQSMexbJtRLHsZnvJ7nngDMo=;
        b=ApJ4ktcZC4QowGTReuE13FIXdkNkjObjuMBv/Jbo2/nkCYFmAxTjfAw82Y2ukVYw8f
         JV83OWXsXFe2SURhGx8CxCq0mIZ2StUT7dWX0Ac6VySuQuN0ZKQ9PbeVK0S/v0UO1rg6
         f1re+xDuTbKpXif0y+UodbrKAhBG6Q1MhChbnlVtyAXEvyOSHaZ5/LFHkibcOHx88x+R
         k6+SQDe8VSAsdpKh9aP530znP4qz4wHoDitFmrt/1oyZsPjGkJoCK7223G6fnvr2hu9R
         3MA4w/B9u4nJkf1hMCjzotoSwnAl6ahRwBuseoWFIdc3/de8cn4ub0hYVLBfxozP47wq
         rKtw==
X-Forwarded-Encrypted: i=1; AJvYcCUBfujsVALnNnuOUaQYl0C1ToIkQg0ogKDiBpRm68AHTwKUD7vMi/52odkMcQyRpy/8SBjggscMZyQi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz51bBtVunDueGjWM0iUg/zYVV3GWpu+H+fA+aBR9SsVO3yHJwn
	bKT5P1CTbBzxDTLSvojPUhJTUyhBsWe6T0aLqtFGpY5cgE1+phAp3Z4SxrblhJ/KC1tbxAHnVV6
	0XhNzzQvsliIXe20IS0YxDgfPXPqhXZ5nCM6/diQ/Ahf8WDsN4qJ2dR5/OSvah02U
X-Gm-Gg: ASbGncvgAV/GzaFltmogHPsGqEAEXOlDxnucm57lki3tL+OFCRrru8ExXqD/KEmZFa6
	cYau5Uy6NjtXx66zaDOeBvsLwljdthR/193Fl4nhkVzsb19FOkqLvXU04KnFsUtkXjACfw/US0F
	d4+FVC/PQXryJJX4nYgdmOyD4SUU1AeCsInv0Ijz3SLhYNoAMqL9SZ5aZteHEPLb6bspJ3snz0x
	gnn1MvK1w94/UWJHyVZc3L1ztwzkA4iO7TmKwUgaD83gNWc5LPq2e+WZyhETt6+Iy5YPENk9VEE
	62JLotYl3jBT/Vhkc5mVE64GPcFw4Lp2el+eyQDBLQuPv5/wq61F/9qUO2WYA0C1Ek8akWY+vJm
	QVOu6omKSUpN5CVYlKP0+NTG/zbo=
X-Received: by 2002:a05:6214:f23:b0:80a:9ebc:33f9 with SMTP id 6a1803df08f44-879dc89535cmr103756786d6.6.1759743055683;
        Mon, 06 Oct 2025 02:30:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBKGVvuT/dS5+zF4JwZxmMHMvCe6TF1FwUlsq3NgesrwmiFqhiDCKZ77vUMID+5OE3Uvgp/g==
X-Received: by 2002:a05:6214:f23:b0:80a:9ebc:33f9 with SMTP id 6a1803df08f44-879dc89535cmr103756506d6.6.1759743055006;
        Mon, 06 Oct 2025 02:30:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-637880ffa4dsm9810213a12.29.2025.10.06.02.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:30:54 -0700 (PDT)
Message-ID: <7ef8ba74-4e9e-4b19-998e-40917d997ca8@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 11:30:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8996: add interconnect paths to
 USB2 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana
 <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
 <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e38c51 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=T_NsP1zJ15PqFYLLzu8A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: efeKeVq2285zkS-fRFzxvqkB1MtM-bjN
X-Proofpoint-ORIG-GUID: efeKeVq2285zkS-fRFzxvqkB1MtM-bjN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX0HwNEnJFsH1w
 hnpR76WrDpq4a2cAdaSMYPmGutOvLcV9eak/JSJfvZScqRbhKmbx+kuFZJ/fosJq6XkM6HquEKG
 iIx4VsxHcLIufEX3ngTbYLIIXfCMd1HUfjj6/k07X4acpjCkQsAcUCVqvQvbnT71egclyF3gFpI
 eSkHfKSWWIOihcKZxucJgJ+/A72K1LngjXTTWqWQwhx/UByLwQ56QgP372De69auZB3sRgvDVxp
 k1vQ+d+O6PJy+kAK36DXRhUyo3Do+y6fVhMe8RaaBpJsJENuvzLQXwIE0KcpjV1viLLKvLFqpma
 DlCQubI23I0GzHp4iWV/p1YfUws1Y7Dg+vknxcRlpvfYfuS6l/HfkPNxbZu1Dz1jPDK6rl1SF5W
 cuArpQUcZ8FlSLnTjKOD7+GS31PZ3Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 10/2/25 10:53 AM, Dmitry Baryshkov wrote:
> Add the missing interconnects to the USB2 host. The Fixes tag points to
> the commit which broke probing of the USB host on that platform.
> 
> Fixes: 130733a10079 ("interconnect: qcom: msm8996: Promote to core_initcall")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> ---
> Note: without the previous patch applying this one can result in the
> kernel stuck at booting because of the EPROBE_DEFER loop. I suggest
> applying them through the same tree in order to make sure that the tree
> is not broken (or using an immutable tag for the icc commit).
> ---

There seems to be syntax for this, at least for stable patches
(which we should probably either use or add +noautosel):

* Specify any additional patch prerequisites for cherry picking::

    xCxc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
    xCxc: <stable@vger.kernel.org> # 3.3.x: 1b9508f: sched: Rate-limit newidle
    xCxc: <stable@vger.kernel.org> # 3.3.x: fd21073: sched: Fix affinity logic
    xCxc: <stable@vger.kernel.org> # 3.3.x
    xSxixgxxnxexd-oxfxf-xbxy: Ingo Molnar <mingo@elte.hu>

(deliberatelly added a bunch of 'x'-es to not interrupt the maintainers'
b4 workflow)

(via https://www.kernel.org/doc/Documentation/process/stable-kernel-rules.rst)

Konrad

