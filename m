Return-Path: <devicetree+bounces-211885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B019B41241
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 04:16:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B63EC1B24FAA
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 02:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A80220F55;
	Wed,  3 Sep 2025 02:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AgN98ydm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648351DE3CA
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 02:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756865800; cv=none; b=ivhLvVriu/53CstN85/9LMetfKw+dgZgNCdyxwUPuVejCX8zEJWG0odjUWKQthYJOjA62sJKIz93bj8II2JbwEH1ysCuu8cyG1GuVJkPJ8WXw7m/ex+/nkX/38BxLOG1upUOnxjvH4WRe67+vJXeOQcXVl6jS/vz6oWE1qHsSSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756865800; c=relaxed/simple;
	bh=v9zS6j9T98yNyfjNeGOWdW3vrw4eq89d9I5wRlLVeWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NbQgFvZnK92Lo9+XzaEf3h3lwS6qUxXaTKX7JtcV/AzMs5umQ+hbHG7wqw7W9Z2RU9RVMEbcQjLbGsitYFkMkuxQavzeiSfIK2WREXEtH0ychhf0VZdkElNs7wQcXjc49kTqg2l36h87FqnMCT+75TbL1TokV0Qv3q09k6LlnE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AgN98ydm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5832Ewsn001379
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 02:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v9zS6j9T98yNyfjNeGOWdW3vrw4eq89d9I5wRlLVeWM=; b=AgN98ydm4gYvt7nB
	l9MYyadPaUTYUvFUVU9zZB0ns+g80ToOn8/+yPoceO9rYRbQ4DZuZCqe4KBmtP+E
	yN7SRhYjyFYa078gPdpYmTs4q7Os4P1xBATPDLTOPaBDG29Q7dvmCQQSlFWdqOUQ
	mUs8CCxq11+ML76qCOBaL09QYU0Rmsexa9b6mzeYBIiCxvpJ2Yd+8hl7ET4CQtLk
	7Or06L9LYQbo8mFnG4gOZKygS+jmm0iTvsFzad5viwRcg861q3nXHXVYIvyyhm6p
	gFe1w4eJYHWQNpByN1dMskGHMO8lnL7FbPea33tHY9g1oO5DPh+flFFrsI3hO3rb
	w0MxIQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy5qyc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 02:16:37 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7724688833bso3561702b3a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 19:16:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756865796; x=1757470596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v9zS6j9T98yNyfjNeGOWdW3vrw4eq89d9I5wRlLVeWM=;
        b=ZyNu9xDQEWk/6sPhYcJPCZCxSCe4Yiczt2LxprXfq+0cBiquyp5EDKcEzTzw/O15nS
         4NPw2RQufQvouBp4O6yVKgSOYgpztdxbJIDw9GD7FWPO4MXHK2C8YxwOB7m3iBffYrB2
         ECzHQBXqTjGtpzSFZh6nuSeH60KdloazRqrKTTQ/939m3iy+dDkcrDQo8UvmlsjrhcxX
         +cZKUjyT+1mRTNsTPZcH4ENsR0Yjz4c9RIw8keDDDAuiXP6hr2LaJGp+D/8mG5bn4VTv
         ZxgunPfQx1uxa3BqqSbG+nrgoW8aWoaVkdCHskp1yM0PKLm4P5KHOFEbQS0H5oH2bVGA
         A3Lw==
X-Forwarded-Encrypted: i=1; AJvYcCUFP4+hrg3DXYlPELsN4LTxQnSukf21K/+xpkagTefkPdFteLcgS16dBkIsXLnVjKMeYG5Wbhu3G8A4@vger.kernel.org
X-Gm-Message-State: AOJu0YwSALyhmLgdoPXLbDZsLTivFLuW+4s3zw33K1YnYOVM2Jj+adyj
	WbTkh3E9D6xC45HSoeWWOOuosFs1pRjFWNvU2OtirqHnyCWyomVbGdShP4slMCYoqI6B6wW0aBc
	ts+5ZkX1r9KN+38eOTCV8Xi7tZzS1gBhA85xCA2NghAnwdfD26vHyCULUNootFRZV
X-Gm-Gg: ASbGnctLJfItdSjGiko52v+XIKQEl1pPf7MpmJX4tlS9NqirPbdKVcbgQkZCJuYY7z+
	Rtfn6zwF1UyB/ITSDXR0ITH+qn1/SYRjIfGuHeY/53bqP5ZfFV4F72miAOIJPtWm8coScQD00az
	HC8VHKVll1sRPmyaMwQ8attWonVzT12BH/r6dyzGwLafmKix+rHVZM7eH/0/HwNQ0Kz9GbuVao8
	28mc1w+6kEQyBabSdxA1wGAuvW5v61985a4sxPz7vPHQgn+tMoo0KdmTXfCYsg+GkYaKJHACeeY
	tJ0aNEnKQdaMMaAv31HW8GB8rd92jO46pKgW0KLsv2ezAYtRMuOVdc4iSA79n0T33WN94wkm/lp
	iFUe1R9YV+DuOsdA=
X-Received: by 2002:a05:6a20:5483:b0:238:f875:6261 with SMTP id adf61e73a8af0-243d6e0100amr17326296637.23.1756865795884;
        Tue, 02 Sep 2025 19:16:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn3oKdkiywXs7I27qdf2yUwn9EW1s0qdzWAjlJxUt+zYeJZsSbpJFkobFdywABWGuVgSjbzw==
X-Received: by 2002:a05:6a20:5483:b0:238:f875:6261 with SMTP id adf61e73a8af0-243d6e0100amr17326268637.23.1756865795446;
        Tue, 02 Sep 2025 19:16:35 -0700 (PDT)
Received: from [10.110.3.132] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4edf7ed519sm9565518a12.28.2025.09.02.19.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 19:16:35 -0700 (PDT)
Message-ID: <bec3a42d-317d-4758-924e-ac53f5dcfc10@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 10:16:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
To: Vinod Koul <vkoul@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com>
 <20250826091205.3625138-2-ziyue.zhang@oss.qualcomm.com>
 <aLWW-izvybTo52VN@vaman>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <aLWW-izvybTo52VN@vaman>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b7a505 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=buFmA9CyAF0SDTxNqVIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: NBdbqiBVSHOfouxxK1FI2TM6qL_3V74u
X-Proofpoint-ORIG-GUID: NBdbqiBVSHOfouxxK1FI2TM6qL_3V74u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX/bybrZYZu+Zf
 d/sb9AmtE3No6oWEcn2Vy1S1bdn3ZMaOF2n9gfGcd3rIhYhOWjt1U+ITUcc6lcMIvZAPpBayqPM
 d+d/bBwBIjOkbmrFJVPCyTpkI+u2/uV4h0rwGDAc8z4bmk+Zr/eIERhEhnXZPDZD8OccgyN9iI1
 J5LPlt1IDC+HplSFbgvQBP1rERvrsotlpLTHW0s7KGUTqqbUWakJ1bRSvJFnSZcuBNcHjOPVKcw
 sCZCI6w/7jrsPQjvkUetMEKQXfvAiFJN3Lhnj0rmnA2NIaxbH0ojTJ3HU8sU+zEzuseOu4BDuBE
 CphAhFNMImtkZATnrwNdNeDAAX7nhIUpeD4R+4HHF56dtF8GsGPawZUqYjLov6+OuChwpv1grSx
 SiLr9O+w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101


On 9/1/2025 8:52 PM, Vinod Koul wrote:
> On 26-08-25, 17:12, Ziyue Zhang wrote:
>> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
>> specified in the device tree node. Hence, move the qcs8300 phy
>> compatibility entry into the list of PHYs that require six clocks.
>>
>> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
>> used by any instance.
> This does not apply for me
>
>> Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
> Not sure why is this deemed a fix, also no empty lines here

Hi Vinod

As per Johan’s suggestion in v7, it might be good to include a fix tag.

This patch resolves the issue where the QCS8300 PHY was previously

configured to require only 6 clocks instead of 7.

BRs

Ziyue


