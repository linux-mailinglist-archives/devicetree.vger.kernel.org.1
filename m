Return-Path: <devicetree+bounces-182951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FE8ACE9CE
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 08:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B6B37A5655
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 06:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EAE1E3772;
	Thu,  5 Jun 2025 06:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HdpBg1Eg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6CD1C8639
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 06:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749103735; cv=none; b=WLAXHBfrJmsfiVM/t3Wjtumxy9sWPEGBaXbDXuT71amtx6tS+QsZWuZvzjkETIVERCnFCfLheniD5lvSFY6W/Kr52lLwZpNItnBthCkWUtrx00vhpdEWQL3cL2amcILNN5xnPTANBtAlIEhkXOXJ2zRD0xYWMlDhGDm9ae+cfK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749103735; c=relaxed/simple;
	bh=obxsLj+ybBp5DKxbHvEzq7j6OJDIdAWkKYrH0UW56Ek=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JEXoGPjTRYiBvlBF5ms0Gl6DEmLbGl+PF4rq0A7oviVkK7QAqDHoYoZoukd2cm6fxpvIwA4FxhKGBqJ9sl186GS5KdKNIqWqOsFZRcUfUhIZyWLh2KTiLH3WSW/B5j+sow2rb4K1hSzF4fnDRBXbe7G9f+2O9RbpzeUqcPC2Uw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HdpBg1Eg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554MnTGX023348
	for <devicetree@vger.kernel.org>; Thu, 5 Jun 2025 06:08:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yuUom1uLViLFA95wFkHWrXsNJPx+f0un14vZ3UUQFxc=; b=HdpBg1EgCCkGTopG
	1I6U3YnyLIXjqCHAHCBALdMKIhi8SopUDmIeIrQRUDIlNqP9gNDdxrqobDV/RjWW
	GXlFKNG5UzrcO53a99nd2WxgUG29iPXdcEyyvmSziUAWk5M4GEzWi9xR8GIvWNU7
	8t0I85Jp6GxzSkFaOFBV9kmZM7YMhNAVArJQceNfI1mwv65iqGNgWKaGkkKJJSx8
	9VbwXsa6txAajJXK5xxvdm7wZ1qckie+8Y8bNIEeMOpy936Aureydwovn0fA158j
	7syJ8SvibACynGseQowcg3acKMUPn2mIU7jTMIdcz1Gb8EUIjN3viw4J5ONyTSeB
	0uAFmA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 472mn02hqp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 06:08:52 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7480c9bcfdbso665622b3a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 23:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749103715; x=1749708515;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yuUom1uLViLFA95wFkHWrXsNJPx+f0un14vZ3UUQFxc=;
        b=McwWU8VqRXQ3DG2+p+BdGRMj8baruIrdyWs9C4kCiRgNTCk1FtI9mF1gjSPYG+PsLG
         XGLsGGNqYTKiGI2ptlSKig0pQ9743E97EJ4MuudMNm7KvNM3dzApMbZlF6iSemi2RHLp
         fFKh63TKPCBSuBYZZfBp+cT1pOY6fGKNCecix5rH5eHvxm9w8/NelFwRK7xQlkS3G0/9
         91gHBPoiWpCryRsC0d54BD0R/wSDcEAU8vH8kAVCL1eypidthZb5R1PDEahxa+nV3cFf
         KMO9F8XAgDk7K13OK07Lg4xqgc3LBT3Z2KhwBDJzIgFP7ZDyMr48vtS+a9kdZ63XDzjs
         xFwA==
X-Forwarded-Encrypted: i=1; AJvYcCVftPrdKwWoF2KShQJqxHqouvdNhg/jN5EELkNRY+8KEhYY00+5AdRdnfY/2oeiMpsLzwHEy6iav9xB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsd6TjlE/N9ZkMJJengSuyei2ADC+0V6vpOsEin7uWgD+wP36S
	hrbw+SF4uJ+0bNPOP/Wmkvo+I0ySLIGokMx/3tNxHy57SvuH6y2DYmgdpv1RegUxGc0cygCwZtJ
	8o6c6cpYuAV2xoLsAGarTrtbsaLwYSwHm9aKsC15nPglv0NatO0Hp9Alz7VaZvH8h
X-Gm-Gg: ASbGncu81+12WbHNZNe9Hbi7Id8Gym1rEQ6gZMWNcK1CrSyQ+Z47nmp8cYbbfyXZ/N4
	SCeJUOkMy3YQd75dS4fWPf46d4xfEfO37yLWSlMKLwWVxQpr2c3rqfC36tlwvaAOmhteLdVGzgu
	EQJKSYvfeuZMqQEx8vK2UGlWdqLmDaHwu/kSWByQE43q+fEX0EOprAZW7H9l8OObIn7m++8R2mP
	YK6RuYKcdv1mKMM89H40MCd6a78lecQIX6nq4dPACcKmUgMevIZFvcs/1eko8134nLB8OHhl4tS
	u9aXMdaO5zyk+FQR+qOGBS17cv5PPOJnV2/WfQhhSnQYNrxk/FzLakgMgKo7mUlKsu0+gzYQ/OL
	6
X-Received: by 2002:a05:6a21:3282:b0:204:4573:d853 with SMTP id adf61e73a8af0-21d22bcbc4cmr7791378637.4.1749103714902;
        Wed, 04 Jun 2025 23:08:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu82MVDHVKpp8Ta6NIo45ITXBkJKjQdLSDIXVXjZuHMYFztmtVjRfZs6jpP6ebX+etviRsgA==
X-Received: by 2002:a05:6a21:3282:b0:204:4573:d853 with SMTP id adf61e73a8af0-21d22bcbc4cmr7791349637.4.1749103714526;
        Wed, 04 Jun 2025 23:08:34 -0700 (PDT)
Received: from [10.133.33.140] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affafa64sm12497732b3a.93.2025.06.04.23.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 23:08:33 -0700 (PDT)
Message-ID: <994cb636-50b3-40f8-baaf-0b1afa2e7f53@oss.qualcomm.com>
Date: Thu, 5 Jun 2025 14:08:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/8] power: supply: core: Add state_of_health power
 supply property
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-2-9e377193a656@oss.qualcomm.com>
 <6oixvnhihgjucqaovkayzm6cpi35jfmtwmm67wa6h4nlmhr6w5@ggb7auvjzos2>
 <cd2964b0-e28e-4ddb-b319-9b65fb78b73c@oss.qualcomm.com>
 <p5nxjuexggzxttislcaum7vomawnq5fncos7itfib6ysvy6a4k@d5ywmfpqyk3s>
Content-Language: en-US
In-Reply-To: <p5nxjuexggzxttislcaum7vomawnq5fncos7itfib6ysvy6a4k@d5ywmfpqyk3s>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _d-EzzJQepdKHICFy_NSooiB_RJq8hMC
X-Proofpoint-GUID: _d-EzzJQepdKHICFy_NSooiB_RJq8hMC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDA1MyBTYWx0ZWRfX6OU0XN706USO
 v7RcJfnlOSx784Vdp3ITqdT2qXX1bRyJzPVFzWbNkNAvkHhC3n8Wa/I4323Uh3e+9zBw7JurDgC
 YIbnqbR0sAT3AnOhqaygvKDIGWmZGJwF6g/U5maNmX6cApuL6mJAofR+hg+4K7wjHxQARkwGcie
 glC+YfiKw+pIUSkY4Ub4poD3Zfsqe7bGNoirsa5GKFGPTielhg/66wpMSeosmMYpOvByRdeVehw
 tOQt2QE6NI224u2reh4MqNb7YCV71STAj+knLg7VWXOsf6YNqrh7JyyXiEZmVnBkY6ioiXF7Xui
 xjz/VZNQbgXIJeCNuF8C6xZ5NLApQKst76lh39ifsRc/y6zC9c1Ma70h+CXkcJaoz+PgXqKKN8I
 C9XMfkxnNkTNs3XHhjGSp95BSBOZMaBU1a4qPcbhyuEKB1oWNsQ1lFXvvHPJ2lmsSjUF9/wV
X-Authority-Analysis: v=2.4 cv=Y8/4sgeN c=1 sm=1 tr=0 ts=68413474 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=ocYFPldkPzyi_qN8VkkA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0 phishscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506050053


On 6/3/2025 6:35 PM, Dmitry Baryshkov wrote:
>>>> +What:		/sys/class/power_supply/<supply_name>/state_of_health
>>>> +Date:		May 2025
>>>> +Contact:	linux-arm-msm@vger.kernel.org
>>>> +Description:
>>>> +		Reports battery power supply state of health in percentage.
>>>> +
>>>> +		Access: Read
>>>> +
>>>> +		Valid values: 0 - 100 (percent)
>>> What does it mean that battery has 77% of health?
>> I will update this to explain it better:
>>
>> Reports battery power supply state of health in percentage, indicating that the maximum charge capacity has degraded to that percentage of its original designed capacity.
> Which basically means that we don't need it in the first place, as we
> can read capacity_full and capacity_full_design (or energy_full /
> energy_full_design) and divide one onto another.

Hmm, it is true in general to quantify how the battery performance has 
degraded over time. However, estimating and calculating for battery 
state of health is much more complicated I think. I am not an expert, 
but as far as I know, different battery management systems might have 
different algorithms to calculate the battery health and report it in as 
percentage. For example, in Qcom battery management firmware, a "soh" 
parameter is provided as the battery health percentage based on the 
real-time calculations from learning capacity, resistance estimation, etc.

