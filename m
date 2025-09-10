Return-Path: <devicetree+bounces-215373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1285B514A5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:57:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A78453AFA7C
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8433F314A7B;
	Wed, 10 Sep 2025 10:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lvFPZhWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15650303A1A
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757501851; cv=none; b=cftHwd3suGDv9kkwWnzEp5R2P203Em403uTFyPN6hJSxj1aC0hEaXfJHfKBstXKHfHEaEUOkh4YmOiW6HcRy+t9JRlFPjOrbsseL09cRtVLMfc3IGvBOaxKaVbo4AX6p6Zjbn2TFuK2upL465xexIHOKrVcApLlThFxZOGZlEEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757501851; c=relaxed/simple;
	bh=ETY73F/1juZbW7WCW2HFqawiQ2oZ4Ab2w9qPn8AUR8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VXm00LVaUKG0kN7ro5priTn6fdKVSS1a9DFjvAO2OFlzMvrs9C47VZK9VOHOGhNJVsxRyMfYtCPSzptDaNgBoKxHkWJQkinUgdVBmBSsRWdQt/tUEYcJkiUdz/VULsOYF7sjRjLcFtpipXOrqFYQNBhCr4IVCvKRkr5DvoN9RV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lvFPZhWa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFFGP012527
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:57:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lcfYeUt7GVAfg53FE5BnAJF8/ug/A2SYlkIbbEr5UUU=; b=lvFPZhWaUOLfnZ/6
	iXAPHSGtZbqd76CGVBAtm3Yj1JFF3XoM1WbVrSaOw325d+hiqQjQzDHyDGkxl6f0
	gv8ONfdqlwc6qcPagsY8wwE4n8pNrbuQlHGrXO8o0QAzQB3KZiVRWn5xPvg86rsn
	SE3kUFztYTqpkEYlnG+zQpV5Cc8PRJaw5oTTpT8pmvntYKsU8Rt26H5jErGI0W+R
	nx2HTm7W8ex0O7DXMNQZU7BvmLlMEgvzj5/77SfZkCHocB9YU78Jqj5v9hD7BtLz
	Xz3r3MAIIdkRzVqAbgM1/257bA5Y9GYCvF9vUzzHrY58u0r61XbMm+2R5H1uqLEG
	iaxESA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwsbq1f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:57:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7724903b0edso5520167b3a.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 03:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757501848; x=1758106648;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lcfYeUt7GVAfg53FE5BnAJF8/ug/A2SYlkIbbEr5UUU=;
        b=DYZp0C4kkPIFWyORC7qkudJp07ProQDbJKyCiD3Xv4hqk7mR6GxU3c1FTAs6UUA0iy
         vdzRsg8taJ8VNEaKr8Fnn6RSqFeLFajFvygN70lqZfSpLHyF1NL8xSjBg2GqEpodS2mf
         4KJY4ekLCxVTHh/H40dZCVe7Ku10tBzkWF/6Ft/LrDNe2+kKiA99dJBZkNPp8Lp/7EGw
         IOPRx7jv9MX6urcPKeeSJUJguSIDriVlUhF87CWGJxjr83RWxnbdv9SjZl+QtaDh1kio
         JqbNBJ7BuuHS8xu3ckUNcJAjg8knoliZ1B3R6lV/gflNueIiAMjjWS6P8DhvHC30LjnJ
         O1Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVef/DCatHieOwIBPzyXhge0MPiMp3PTH8gIvinULXhuV8a0Gek5SrPWWu0GKL1cTzrXNDh6yeQh7IX@vger.kernel.org
X-Gm-Message-State: AOJu0YwWEvSZOJseFc3pkuaYEG5z/zDCsf4Bz9IhfVRG7VfZ2ahtqM+/
	E/on6nyGeXjziIatx3BTqxC38bJ2JEpKc37rmtAlmIZPyHlNnh3RyMZ2Xekbfc30Ve2KrqLTGbW
	vuvl/6Ab/v45206N2KWa7L0qGzrPVZomzSsGy2B1cwyVoZ/RmsOsTGSdE6Spzw1Ne
X-Gm-Gg: ASbGncusoOV7jLL3tv21lR9m7OlR0AAKKKk5wWzXvlHoTfgMIcRVFdMB73d/gjSBky5
	eMXin5QM9h/AA1RCiVLabBdUXje/e4ITaX7raNVyWdGDeXfbjrVQMvw/R2VC6WIvPNZHVLDN5l9
	kWFvQMvwuuCaBs0DLp+4d4utdK7G2n2zNwiS1ZNwToI6kr/mcQDl1M5Xf/un7OGg3g2d0sY/nfg
	oSqVYRo6PdCufyWbOCSljnwEYDsV/xJTD/+3D4BjLGXonveg5G3HxxYQEMO8gJ9NCesH0DkeWSv
	TWCJCmixq3L6g+zrpiVTLIDhQ5ignAWtVQOzSA57OdETx08rLVrVOsIh+ZReWL5RnmT2gNcST2s
	=
X-Received: by 2002:a05:6a21:6d9e:b0:253:2fae:5287 with SMTP id adf61e73a8af0-2533e18d170mr20798154637.26.1757501848590;
        Wed, 10 Sep 2025 03:57:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAd+1N4v2AfeNoYwFOl+bjuiXGrs3u3rlBpUd9S2XvNr6uBsVx1PO/O6R0zKylE+mie5ldNw==
X-Received: by 2002:a05:6a21:6d9e:b0:253:2fae:5287 with SMTP id adf61e73a8af0-2533e18d170mr20798121637.26.1757501848153;
        Wed, 10 Sep 2025 03:57:28 -0700 (PDT)
Received: from [10.217.219.207] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-775f4976bcasm2333665b3a.100.2025.09.10.03.57.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 03:57:27 -0700 (PDT)
Message-ID: <d37765f8-2cef-4c15-8423-b82a0fba3b54@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:27:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2pyfp9bdzcQTUoGnzkPddtqGM554S9ZY
X-Proofpoint-GUID: 2pyfp9bdzcQTUoGnzkPddtqGM554S9ZY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX72327xktKGZS
 EiXV4Wj6BgA51d8KxK+t+K87F6DXvtvwORxBpZKji1jA8nuABSDVrVj6yUBU/Yx9fjk1CPqKPJ1
 TJcqjEv6k1mS84BUtkwbziJEGqBtuH+xLH/r2SFzS9u2YLhrw3HN53GrTNQga2nHgRSLjgXzVTS
 611T2GoQzXbEDcKRuCDi54UWWz27Ow3IxEGQGV6G7iq58TG1FWjLGejKGrkXEUSIUr79j4PsQqm
 9scJBu8plcjsXPU4iQmyN7D6jGMYpgzffIuPN0mJNkKZJ6+igCcdzAY8QX4gnD2INZAcHG4Wz4J
 O+d4tGCJ3cBqwv2Hfy0qBr4+MbSqCmd5DVod/8OQNTMqYZyd/ZO01zKsgkwzl+Gnf3RC8kmMSFl
 8xXBttBD
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c15999 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=x1LqVQa0TBYraXIDtAYA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018



On 9/4/2025 8:01 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The CCI clock has voltage requirements, which need to be described
> through an OPP table.
> 
> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
Typo: 37.5 MHz> (which is a value common across all SoCs), since it's 
not possible to
> reach the required timings with the default 19.2 MHz rate.
> 
> Address both issues by introducing an OPP table and using it to vote
> for the faster rate.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
[...]

