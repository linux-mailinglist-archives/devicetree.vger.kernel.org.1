Return-Path: <devicetree+bounces-197876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60728B0B11B
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 19:38:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4F18188B18C
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 17:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B8128727C;
	Sat, 19 Jul 2025 17:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oL1WctaN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C919476
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 17:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752946680; cv=none; b=WpGvUIaRSZo/VfjC2lrgDoumiDFT83i78f+yNyGQGR2/63GAW6PSEAHozGGiavZmRq+dZ/v87pYccZLddu8rmR/U0BpGXcUubZIEsShMPaSfdf/CDTznmMoFeZO58dzV19AENnj6PLCUUb6PgiyXWqgBdNwUd8pcPJTi8XgTDac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752946680; c=relaxed/simple;
	bh=l9pWszHcvlWae0ybRVxovXrxHNxxC2htd+6q7MexnJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SmUPkFoKc6mnW6488C2SEh4IaUHwolp6u0nDHaEWvePjqWTsgN7eI3kxZK4r6oVVuk4+Wg1fKI/O5yxESH6Y9bgGQEoSsoCZH1zN3DH9ZU1fhCldxmSXEY61nSLSJ22pdyvwQnQDHjnv08tBDL3dFyY7/ybV5L8U36aFc3nbAxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oL1WctaN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56JDvfhp014322
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 17:37:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FZljlJT2qbBwi7FRDYe/gjY8HI2+8fcJAaiOiTqbESQ=; b=oL1WctaNTr2hoM1R
	AQtzwh9PTmZV6rRngkX7LxxhiA3DOUH87RckIoI4QMw/oPasgyI7m70T2RVOvSPa
	g3xFlS4+l8RN4ADGonFuWdYl9Wybvhun//i18RHqHxoXJUObrtse/7BjggXRbbmf
	LFFieVicZm5vOzmnXW7DoxphK+cWSiNSSj9EdX9rvnu0yrk84wXCyhhERHKILDi6
	D0ee9GJuqCZLZ4Piscbm4yFs4tlQwFij5TVMY+kQEqCa0BARtWVqyCqb+MdU0wYG
	LKbB/DTaXMEl/2lFRfJO31y8nW2IdPHbyf1/4nPQrjNBCqMtBYU/L1F1jdK35Yd8
	IwXtdA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804hmgxad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 17:37:58 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b00e4358a34so2029504a12.0
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:37:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752946677; x=1753551477;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FZljlJT2qbBwi7FRDYe/gjY8HI2+8fcJAaiOiTqbESQ=;
        b=MN/OJEZbLINMxq7QKLA4P7QlL7EZC2W7J/qLvriEYPQs1pGLT47pzp/CpHOsgxLuwH
         p1tNlzXB9jrlf4BwoRzsfTiWuTZDqFpoxhfnjr87HQxuXXWKDb2ZFHStZ1s7lPlYW67O
         YEcepfG30YhgmdCplhldNBLksiTsRgaRyi2UlEA0x3+baABA/gcchbUwg3qmgzN4fgUB
         xtIsLKOYNQ/H6ofrk9U2iRsr17+rKFF6YJLfutpXzVSzPhL0LHDsYHYEB5tEG8pMVJgf
         15A/6gLDK4xtgbYRjRuhPP7HLyb2HzGcBNhNCN/W/eMjmsmlugg5N5Lwf/IxQMytkLEX
         4Ntg==
X-Forwarded-Encrypted: i=1; AJvYcCWpCPVNPMEQn3QPU58MtDVjq4SGbQc1w2Q/+rCy+BwWwDoBqs7mhk+4DkUZFm1wcAVT0o07OG1KJMAW@vger.kernel.org
X-Gm-Message-State: AOJu0YytEBNy2u23TJRP+bjja7C6/tqdu4IT7AprbpSGwef2KKbeGDkc
	HUwb/y2QWJQukxLKW7GcMYvlFMiUchI6g+ulDXav2G1s0cJ5TH1FaW8aOl99KZY2+dbmVEFU87T
	c1CKDbzlNyxQz+Grf3H9PHEK+q3pAr4FXxWgbAtuUyw+r1OaHmF6znhmrTnJrgr72
X-Gm-Gg: ASbGncv1GVgYWo5YpjpkSmXW2D8jGJiz2P+YcY6oKqIZqYb0qdRwy+T6pTAAC0X+1iP
	SVFDHUT6j6HhZJUJ5pO8Yd4FcMbKb+CwgGEPy1jbqlOA/yMPEbdHYS0ebNgKah0pyhw5OnEPgcQ
	AAE80MUrTTqejpqTOnOIA6uYuMJzNDyJ5TYgtT+SSKgRRk2rXZpqtJrlUcx0vO/ouQ4+kBrcIPy
	1tG40xalXks3iLDztKOHzar6i+soeVJ0xA7e0H2M7TbSdkIm6s60ZyZ8XEVKsuEaT64vFCt1upG
	A59NGP+iFNTbGlFpCnvUVmGaDpCeuPwX/A62x1Q2xyb4W3Yr2LW0OeYE3U1gcpcftCj8oHz8cih
	G
X-Received: by 2002:a17:903:1a45:b0:234:c2e7:a102 with SMTP id d9443c01a7336-23e2576c1bfmr203194255ad.43.1752946677275;
        Sat, 19 Jul 2025 10:37:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmsqS+oyiroy7F7asjC+RhuXy5jbyXwVyJMviTpt16hI2w+2DRxkm7tSvxqRyFMSouRG3FRQ==
X-Received: by 2002:a17:903:1a45:b0:234:c2e7:a102 with SMTP id d9443c01a7336-23e2576c1bfmr203193755ad.43.1752946676803;
        Sat, 19 Jul 2025 10:37:56 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.231.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b5e2d7asm31792585ad.1.2025.07.19.10.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jul 2025 10:37:56 -0700 (PDT)
Message-ID: <1653597d-4d6b-a771-fbd8-c129c630ac0a@oss.qualcomm.com>
Date: Sat, 19 Jul 2025 23:07:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v11 2/8] power: reset: reboot-mode: Add support for 64 bit
 magic
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
 <20250717-arm-psci-system_reset2-vendor-reboots-v11-2-df3e2b2183c3@oss.qualcomm.com>
 <6vlm3ybjpy2jq3cr2pzj4vcmqwoissdml2xmhfzlulfbrpzakt@xrepu6c5zykb>
 <713b2cc8-1bc7-a8b7-678b-5fc7fe25615a@oss.qualcomm.com>
 <8d4a42b6-657f-4c30-8e25-4213d8d53a89@lunn.ch>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <8d4a42b6-657f-4c30-8e25-4213d8d53a89@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VAolWUQA82lDuWXPmISAlLCkXGwQtBDE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDE3NiBTYWx0ZWRfXyL2j309Ea6e3
 tGHzkz2KlZfxWBTGoDeKuglchJG/Q8DGmCJYuINTORvH6TbMn3dU0x3egeZ9BR78vPYoIN4h1Rm
 o69VAO03qIBoT2eEg4E8nYSHEUu/FNKS/Om3Br3HepH2PuecGHLig+v4yBMME0l0UaZe4NJWMzn
 hsHTZE7d/33OEg4qyPxxqBn6ql0ngTugJG78FIbY52WLy56sN1vlFry3FnSlmIaezWTyuAo2b/G
 Bl11bXrYtTTjYy1TC/0ozQna+beCB0olovx82zocPb7lMS5NDrr7xasVl023IOnipJQZzS6s+18
 RuIaCfR/34LYUtXiLoXR5uwV9XnptoDeBii1u/CtU5dNvLdUQLa6OvtB/hw+mdiLvLBHz/vSTxL
 AvjdNfH0GAwckNX/i+PKQoYVNMuoAy/r6hnjQMCE40CEmf2LRslJ97nOqtOHerbjLlPbWyiF
X-Authority-Analysis: v=2.4 cv=Navm13D4 c=1 sm=1 tr=0 ts=687bd7f6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=PsbcbGlCJbaar3GLNM5paQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=vijFQojot4H3nP37T3UA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: VAolWUQA82lDuWXPmISAlLCkXGwQtBDE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=699 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxscore=0 impostorscore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190176



On 7/19/2025 10:27 PM, Andrew Lunn wrote:
>>>> +static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot, u64 magic)
>>>>  {
>>>>  	struct qcom_pon *pon = container_of
>>>>  			(reboot, struct qcom_pon, reboot_mode);
>>>> @@ -37,7 +36,7 @@ static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
>>>>  	ret = regmap_update_bits(pon->regmap,
>>>>  				 pon->baseaddr + PON_SOFT_RB_SPARE,
>>>>  				 GENMASK(7, pon->reason_shift),
>>>> -				 magic << pon->reason_shift);
>>>> +				 ((u32)magic) << pon->reason_shift);
> 
> As a general rule of thumb, code with casts is poor quality code. Try
> to write the code without casts.
> 
> Maybe something like
> 
>       If (magic > MAX_U32)
>       	   return -EINVAL;
> 
>       magic_32 = magic;
sure will update it. And in above, should it be recommended to add a explicit
cast(for any avoiding any compiler complains)?
 like: magic_32 = (u32)magic;
> 
> You might be able to go further, and validate that magic actually fits
> into the field when you consider the << pon->reason_shift.
will add a check to see make sure the value is in range after "<< pon->reason_shift".

- thanks.
> 
> 	Andrew

