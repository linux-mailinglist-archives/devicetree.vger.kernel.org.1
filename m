Return-Path: <devicetree+bounces-223848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2082BBE4D1
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 16:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A6293A6E3F
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 14:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E096E27CB02;
	Mon,  6 Oct 2025 14:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EpwVL745"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5530B199237
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 14:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759760128; cv=none; b=eTpsiFQm/vvq6bfQ3K6P7jL98hTWS/God5Pp2aocehCRf3opzIALgqPrAy1+Dbyw4uzvXG2ptDVUpGqpoA2dRBD2sroedjmQ4GMoWhO5jZMKHAiEZI4O7p6WCoVxsvdNvbGPKCnsun8cB2rXRzk+mxgp7+zZB9+f6H8bJZVAzxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759760128; c=relaxed/simple;
	bh=ok4AtDYMOOhFNXyAmFF74kRt5VF7Vljw8v+VdN/XZbY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SBSbYxyGZyMGGUFkj0h5okdjezMnjS95Wtp1ORF6oSOAAqLHVSdhHfhNFlMCDiM9Es2x2fkY18T9wMPwadTqRhWFg1AVSz8tOekvvcAKRYbFxzJ8sB1hRlN3jYp4vBLjl5ZjUMaLwnaw5e11x3iZf9hgSE5g5bw7z+I2Mh3y8K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EpwVL745; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595Lv5rP011725
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 14:15:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2oRfqLxti2zi2W/CuLcC7pD7vVbdx7nMsq75v+U2kTk=; b=EpwVL745J2Yku7HA
	Vj3t8daPxlh5Xj+aE0q2GZDoUWUPlcJcT0fDqgmju44GXi1G2KSRSMRYhCdeb9xw
	PNTj0FLABa7LHjvI1RVyZzQViP0cIheiSW4tNykOWHhQwJu2Xso8aw+ROINwZXIy
	oqQ9a1bPcw7yd3zN2hATt2O3uFzMe32KVp4Ba3/V95+VgMvXfzJxBedX3jTrpJDu
	qoOwGsQ6T4gsvtCVOQSPafn3GLdoTQTK3QSo9KLosSvcDqKDsDAPocnLzEYZQuSP
	/NCP1Cil56jxm+1Etcj/qU7B+1pKcN0eocXwYnQ7I0lWpRO3D56w2ZWoZh8pIaIg
	JkX5Vg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgm50h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 14:15:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dd729008d7so11708711cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 07:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759760125; x=1760364925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2oRfqLxti2zi2W/CuLcC7pD7vVbdx7nMsq75v+U2kTk=;
        b=MImtvRUETrCt19BADgA2WJ4dqxcEQlci+/y8Z7mJLjkguVdK+TEBI1pwoht5kRDtt8
         2QimQQGt11BOa5F96mpmL9HRz6msasFQrFwX20M8H5EsBIY8V0ttIW+cthoDAMw+Jhrm
         SAT3VS2qh03deTYEySM0jXi0FD+YcwpISAisu+2e9LeVGlZbb2vh7Je6EIfra/kAqAzX
         PIaTcTwu6BiukBeHN6FPckvESd2nTvYFFVuw4vruAPa9myrHFWZs9yioYEU0daSYXw3I
         dhl3PVBkZ8L1369dkDFjVzAl02294p7mbMskSQZqTKHKZcn6Tf2XpvD5z/Jl3bfYc9UZ
         +kWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGxNiFK6tlLoDO1GhbOySOlp9FRHvF6BwjS2ihD0WMsxxeU/AwgKbKeuvDbkjULNFHhD6ovpJBfy8T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2bhDixk1MorBl7+uT0BfVjU8ovpPBvl5H1hfTqusmKEYH3rec
	lR3PFtlFnPb45jd9cPenFVDFCndR1lqo03puNuXCfhxhOscIzhILf6qkDmxOwV8AiIxkw25SibH
	y1kvZWl+xOkNbPBY+w6aFMPlGomy6Vx0dsvuTY8bzmx7CI3YvhhmM0v0WQ1mVVLN2
X-Gm-Gg: ASbGncsNlop4lp7odW1URWDAP40lcGrRhCUv4QLrdfyBuEsJc2AzrIQ7nbtu9+6OI6L
	/4uHFJk1lCwN+oL7wfjbg8rm7V61yJhCmNKp0Pm57zWqu1t5g8AFhitO65Oz3tro9KeSrz9hir1
	qHcCXGONXJzrrPF0SZbxeVcPOtSbBI4V26pV/AkJC6YDCjJHEQ6Ez7MJGMeEl9KlXpKqXKZg3mw
	gBWrIPLcQSkDtpuFZQmNnsc6FYTsTcwTqYluQAOoX50U5K5bS62qKmtniXB7pJ5VLA7bjgUfpGe
	MBrTIvgYVXLw9VTSIQwS0uUgZkivAccXO3OkI8pLNU7sOMfAEMgwmyEyQldzdz0YC/RVkx0zkv2
	lER82IguZRaYdram6/Pv1PlEBvyE=
X-Received: by 2002:ac8:7f87:0:b0:4dd:3948:3380 with SMTP id d75a77b69052e-4e576ac46b6mr96308581cf.11.1759760125086;
        Mon, 06 Oct 2025 07:15:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwO6cT4VTIUAGRglYg90QhjFzsOQ/k7qqX61THmdRovAb2bINmuVNJNYjeOMblpYuxHE/ASw==
X-Received: by 2002:ac8:7f87:0:b0:4dd:3948:3380 with SMTP id d75a77b69052e-4e576ac46b6mr96307981cf.11.1759760124328;
        Mon, 06 Oct 2025 07:15:24 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486a174a6dsm1161275266b.90.2025.10.06.07.15.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 07:15:23 -0700 (PDT)
Message-ID: <babe2e5e-87a4-4871-a836-ddbd9cc8d868@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 16:15:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: Correct gpio used for
 slider
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Gergo Koteles <soyer@irl.hu>
References: <20250927-slider-correct-v1-1-fb8cc7fdcedf@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250927-slider-correct-v1-1-fb8cc7fdcedf@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfXxv0SuEtLFpau
 IjqwCgG1PB5BkC+unbb4MtaieUINdXzhspLrL0WO1+lUoYlIQ1VfJsw+i2XYQ0EB0dnQlFElE74
 LjH6XwEGbAeuMiaAKAieoARFo5YEa4VW8xXu4i16fUAtpkAav2K7jkzN6UeLDuUJr5pud1SI+E2
 3+44Dy8jbxVdUk3MAaDw3BT757vmyhXNt39a9vA9mB5yvMDQNIE7MbUplbnjnSd84N94RsLAqXv
 EZHG2v/sMm6DAoSq5s+06G2s6RANeXGj/ybB9RngzriKBZzn8dLNPIS+BQCEefO0aXxUAvKZm6M
 YczkZCxuCv6/xooZAvOH99vKhNu5p5vJ0ZSVxBWjsncN4/8RzCTZD53CfAt4efk8RSFiUl1Xpb8
 /w6QtLMPEQUJ7JLdZhs6OPGmoqNIxw==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e3cefe cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=t6YKEHOi2jImhN9rZ5cA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: Ei-JzBKSqnBDYYEY4XuAuOYCIvCuRHx4
X-Proofpoint-ORIG-GUID: Ei-JzBKSqnBDYYEY4XuAuOYCIvCuRHx4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 9/27/25 1:20 PM, David Heidelberg via B4 Relay wrote:
> From: Gergo Koteles <soyer@irl.hu>
> 
> The previous GPIO numbers were wrong. Update them to the correct
> ones and fix the label.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: Gergo Koteles <soyer@irl.hu>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

This is currently unused, can you bundle (or squash?) this with the
"add slider" series instead?

Konrad

