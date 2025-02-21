Return-Path: <devicetree+bounces-149699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79232A40264
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 22:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FCAD7001C5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 21:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD360253F30;
	Fri, 21 Feb 2025 21:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VbYdz+rm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D3F202F89
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740174974; cv=none; b=Ir6leXnHHCBTtpg7jHqkUNPZsG3NXNX19luotdVqNtxKPg7VONKBcj4s//XILwyJ2flOmyH9fFsdpufGlNFCqW0JzY/Xszriw4ZtNN2XauOD4GqOvSYMtCvB11WlVP8j2FHcV7rTSfou7vsDeOLdOlCogaoJrHf/7N/qQYaxT/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740174974; c=relaxed/simple;
	bh=otM4pVilEJQ+Z6ARx2EyLLQgCTG9XEl5i6JjIyrxgB0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BtNddipwJL54UOQocfXBFVhIK/FldwuOPhfjZftg214yI5I6mqogzasHbIb/V/PM8BXy+gt+3ff16JtByacIU9WQ9RRGMQGS8cXiHQ0/96DPtJXn7XYxfoU5zSzOuAGESN+CmfktJ/dStRzdU/l57fuPRpz1rRBHjGhUvoLkV8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VbYdz+rm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LE8kML020493
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:56:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mn1elD3IHQjpApM4cUuNBscJHGKeSRDBzEug3ElCCWE=; b=VbYdz+rmFVW6a5uw
	U6f3+AbD8Yht23gx7bWz8lfrOxLoHQQe0aVFNJ1Z+ae4nCvevzYRwrSuzDFFiauL
	LGFNyB0GfmzWbpPdH6LFRnPeIKj6PHF6kFI2EuggruOmo0GvUzGe29f2r+tWnnqJ
	UhH3DUGz7OKJOdyQwocJL5HwtBugq0xYgx6iTCYxOS7S51/4lQ9/De9zqaGiL6Y5
	Z6siIz0pJWcX+aGK8OoxyRFLqZ/Gsinz6at1jOeRd/36favwyIzeLO74/8DurfPu
	QAGMXaPBqfilUQ4mGH6orujXrEw5uX617ggM3ObP5oaYpnwTmniTxSwTB+8kOGrz
	7q3t9A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44x06t5yjs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:56:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0a9b6c146so23095985a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:56:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740174971; x=1740779771;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mn1elD3IHQjpApM4cUuNBscJHGKeSRDBzEug3ElCCWE=;
        b=f4hxTQEAw1O3CXD4tAi6xDx8PAIQjO64wHJreOd7YN5A37c5b4d28dJJOqT3bDJodq
         D3YF/PHMmvQGiwxzm6urtIXLZ92HzBCsgoWh7DzHT2ThaMlM9QBswztECuMaJOU33VaQ
         7uGzPvAKWnj/snGSU0Qk6Aso6zpeeJTdfbA/W6y81SGEpu0nf/dHL0xklVTa7tOTwyEc
         8rlBvnE2Gd5uCs5fTXC47ZKanZ1mJNxVRghBtBZQQU6Yb2E89OBswk5vBjRX6hrUZYKr
         dAHjQSXmvvAufZRiuq48XRr9Ze+TTbpXidRsl5I7NeDuRXEagPz5JsUe95HxpaSkvUEz
         vP9w==
X-Forwarded-Encrypted: i=1; AJvYcCX0S+N0/yTfqQmFQpPLrFKKcy79eQf/JkFQtbLn6bCs1i9oTe0rA+kgjB93aDJp3anXjLPIMQLN5AC+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx46CAbxtC5l26gXVXf9oG1yMFUYV3wWQSl/AXrvE/kd1iU5Vlc
	mHjxDpLc5XNlcklBjL/oX/zBPOP99FI2w4IEQhyx/INuY758Bia6nolI+IxwjrnNRLdGrHjYKY6
	aneyJAH3MEQ7dHaXvoakw+ZJdhJoHlWJszJXHGGjS9HZ35yuqK8F3IrcDg+6Wq8nuN/8q
X-Gm-Gg: ASbGnctzDH65ylAl5B0apB38HEcIBdBW+qXQawMISt4Tz8sw3PDN6QjyFwM7qMS6hk4
	tknoqD7ShuUsFbu+CJaaw1+gAK0zIkRUl3baH9PuOdCW4KGu52XfD7lr/86i4VYzKySViGXl8Qx
	cRibinulhxXUr3kw0IC1Dtn80ghwxXDDfT73yDAlZ1kbiLxxH1BRa40TGv3N2voBak8EUn0D2IW
	r3cUhY+R9oDTJf8z9Z7/XgqZboENzUHgw0O4T0ff2KxTXwwOIGLPtv3ZccGPEsuDYBE0yDU3t9g
	wirk/MFB+a8gmYQEHq3DnIWKdOjej9kL/68Eh4ii8cqiMIS0cb+9p1Nlzc2wGm5Sy6/ekg==
X-Received: by 2002:a05:620a:46a3:b0:7c0:9ac5:7f97 with SMTP id af79cd13be357-7c0ceeebca9mr295777485a.1.1740174970778;
        Fri, 21 Feb 2025 13:56:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZvOu0eJXztulv0V5Q7f7sK5RIJKM6aqAnzhe71Fe6vNwS33Dm/VlYp62UvFkTF5N75nE3eg==
X-Received: by 2002:a05:620a:46a3:b0:7c0:9ac5:7f97 with SMTP id af79cd13be357-7c0ceeebca9mr295776385a.1.1740174970332;
        Fri, 21 Feb 2025 13:56:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1c43b6sm14401910a12.26.2025.02.21.13.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 13:56:09 -0800 (PST)
Message-ID: <eb78eb2b-e35b-4744-ab09-6aa350ec81bd@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 22:56:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] ARM: dts: qcom: msm8960: Add BAM
To: Rudraksha Gupta <guptarud@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sam Day <me@samcday.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250213-expressatt-bam-v3-1-0ff338f488b2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250213-expressatt-bam-v3-1-0ff338f488b2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LRbab15xEBjdc7pWxj2oEYUdBY15myC7
X-Proofpoint-GUID: LRbab15xEBjdc7pWxj2oEYUdBY15myC7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_08,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 mlxlogscore=674 phishscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210149

On 14.02.2025 7:28 AM, Rudraksha Gupta wrote:
> Copy bam nodes from qcom-ipq8064.dtsi and change
> the reg values to match msm8960.
> 
> Co-developed-by: Sam Day <me@samcday.com>
> Signed-off-by: Sam Day <me@samcday.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

