Return-Path: <devicetree+bounces-247363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A624CC74D5
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C4D5300E456
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF9A29BD88;
	Wed, 17 Dec 2025 11:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IPATTgNr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gaQoXdUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F6E20B810
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970401; cv=none; b=TaSqFebVJzYi5m6xpks/WmNG6iRMlLMcq+W7PSCOXKAqQIsCEuMhLO4usIOW/uCufghW1ZPpDqUNH9SRoiXNcv1O+tG+zIa12v+pKmW5aIxUXpNWgHedumDj3RqQtZGoYKZgRTcBiK+vGmfAUXlzOcu0caXsXusa/+NYtx1qf2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970401; c=relaxed/simple;
	bh=EqPoMDbyqQevPFFWEYcU+ic6ViXZu/vhtuQUgrtP8s4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TGyjanf4zYvP7FFfdMWrCOJ621pPdQrtf6wrQz2m7JRcK84YylMi1ro16o2DWoGG4CvePQCv0Q7fiOS1YgYtn12YJgD+o6nVw1PCjoJEQowe8lZpXqN0jELMHzPmxub3KC5YIkkpac03b9HtbDOziPy4bCf/z+b1KxY1RydToEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IPATTgNr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gaQoXdUF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAtdN31904167
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:19:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nBDtvdhlEDZhHvSsqtGF/U9j4heSI31S4RRQPhJZkh0=; b=IPATTgNrBZdajOpv
	9priV8pH95usfH633zQ/XqF2n4/GahiYQrw7lpDsc6ySJckcfyN29zJ72cGOGNie
	heqfgx3lO7t1Z4uuIuOuOL/irPNQADVRk/AjSl1fW6s+dXBBjCraIlbK/2+wtF9n
	PcQlJjbfzWewaYULUqczmd/1/8/N78H6+AXUUoiQ6wpNFwlK407iqmzWSo6ddxEI
	OmSSKS1ynrP9+iOOoL95fQQCwyCqJO9dYlGAb7gUZ4bOssRajL0jgfBkqvboyOh8
	KG2/zP3r3+2ZAa7NKEta9QvBFHqvCxJVwCjh2k393mYBFnmKhrIYTlC2sScqUbVj
	de/u7Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n331c82-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:19:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bbb6031cfdso100216085a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765970398; x=1766575198; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nBDtvdhlEDZhHvSsqtGF/U9j4heSI31S4RRQPhJZkh0=;
        b=gaQoXdUFRZDWuWmqKo25w4cqXqjUXFXuYpaqoF3LYefvusHqD0Dx0OpX6SL5z2L4xC
         5p54xW/WnHfRpfuQeygJK/dS8HCaIvApVDVB7sp+udi9otbpqkKsMmldNjAadofP2FvZ
         ilpgLiizGeeEpvm3PqUf0I3a6/g/mcJ2v9OI7OPeTYvqfH80glfwjn8TSoGBlzLwf8D1
         DGpuIEW1W83YD/idsLZITOQx5I7gEU+22AG57bRUO6/ysyeQSEtVKyS0MmvvSWZVx0c2
         m4Cl/xT+9qGhhy461Nw5VCi5Fx22JYK5mMH1kWhHNNU5Iu66n7kTcOyiU3hIxz4ofIYA
         7oQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765970398; x=1766575198;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nBDtvdhlEDZhHvSsqtGF/U9j4heSI31S4RRQPhJZkh0=;
        b=q58FyBmei/Wz5JejczabrsPEWztlloqf503G9/2UIYzQlAUDT8I7nj/lWp3kGYWGjA
         0KmvjEUIaBGrV/yZBgTb1YpJ7zqLaKEljxJNvl2SwnY+YuRq8Le2torKgH3yvEcnGKhb
         GYIHPkO0d0UnMmTFgrGZRvI4Dz8OXwFmdzp2qdsYDUbiEeRkxTJwJBnuP6C2Tk4Q1bmW
         fd9UurxBzvUXbuek9MFd+0r8OF0ddJeeYIAYChAJ4vRIttJTwFVXjg9n6ABPfwWPEdua
         LyziTu7/VHEx5X2s8VzHTFi+IrAm3TO+kagIuIF5H9ZDFjYKwVdpV/oH3cU833VQ2sgA
         Pv/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUbrAjLiD2HFWuxjujFMI6tx4zH1ZTkmcCfbTafiyME19Ikncc2uzhbyE6q9f1V8txIVRMQz1Wq3s5S@vger.kernel.org
X-Gm-Message-State: AOJu0YwFZlZsYP1kaJI/sKfkuIIshRi7hqBrYj7LwaWi4cFr7OvZI3/W
	ayIQzxqChFERkjUP3BUF8VtzSgi2U33FUAqKfmty4S757imvI7QPiFURiHYSzLycU1j0fINiLka
	fDbTry8se4FPsxRK5/4qUrOFNQw1ZY9cANUhzANXXGsd3Ys1LD8js5RoBQUv8O3KP9CwyaWpk
X-Gm-Gg: AY/fxX7eKxUmuurvqw5FkKKI79uKOQbH6JHeCI/4/HqTii0zTYbmu57fZhsEQoWlszb
	RBNQlB7bDwy2rAH8nAEx2AQGjYWgMN72i9HMMrsUTcsSdgEoDwcq50T44fNEaARAdTl/XjWwBLF
	nFWUBlh34CzBLmGCu4Ngvuq05cxgfOtpNXjttYTewUZq2PXoRXNIJcjNyoR7bUM8ssSU90e1jAB
	Lc7eMwfg3dPcGJmpEFmLI2TbG+GDaQokob3vpyUwYDPUubZd2QRsj0bAsj1EqgWvpYN30qXP1k7
	FFCQPySjFaDWUdROJrgGzCyVBC7yXmu9efYylpXNgxVyFDhBS84UvU8FWhFP1JJHZm0bd66kBQD
	+kUxdsLq1RA2LHBghjev0ZWSwVhWRdDjXp7IWMlvToCabnbqvtUpT0lL52jCl+KAY3A==
X-Received: by 2002:a05:620a:468f:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8bb3a0b7e5amr1806461885a.3.1765970398203;
        Wed, 17 Dec 2025 03:19:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFge+Ot8Zw7yp2wIqzS91rOTZFN/TvXmom7/Y/B5sLTWmVdGPc4FvYUkUgJ7xdMdTAk7wWBEw==
X-Received: by 2002:a05:620a:468f:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8bb3a0b7e5amr1806459885a.3.1765970397782;
        Wed, 17 Dec 2025 03:19:57 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f56b000sm2161167a12.26.2025.12.17.03.19.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:19:57 -0800 (PST)
Message-ID: <b7ed0713-ed06-424e-9ce2-1109005dd1e3@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:19:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: dts: switch to RPMPD_* indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251211-rework-rpmhpd-rpmpd-v2-0-a5ec4028129f@oss.qualcomm.com>
 <20251211-rework-rpmhpd-rpmpd-v2-1-a5ec4028129f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-rework-rpmhpd-rpmpd-v2-1-a5ec4028129f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfX/p8kXZG2BhMD
 JFNcE1V7tO/vnIIWYg5VJbN6anzopnA9ZhlCKRVJ3W8oiyh7xGP4MXo3Mf1nqdKmnOLshM8tYgo
 LYHd1r8/jyjWVoGhGXCA9I0P9qeAGUHycYxpnsLD+WBvcK2G66k5TpzAmvyLo2150FtLJcqxygp
 zKEqvO/XTHanoiJjQlUwHj/VtAYVhyqS+J3fuo8VUZh725o3kUK/PYzoXoCGL0VSmKkW1NZWp0g
 8L0S1so0oqwhw1VarmnDSDv4Rek85xYzW3mFGVlyc15W1XiPdjXDx4qO/uBOmKYr6DiGUgitx0m
 ytFEiwFgjA3rV+f3Oy1JGjNB39SFoRRee9KplPhI9MRkFIPMfCaKrHY8u69f6hidLPKpGIlgOvc
 vwQ2y7AKIpJWJx54EF/ZYkqIiWHY+w==
X-Proofpoint-GUID: GJ29o_GdooawAJ5PS9WMIcO3M5KXuDzS
X-Proofpoint-ORIG-GUID: GJ29o_GdooawAJ5PS9WMIcO3M5KXuDzS
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=694291de cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=u_qTJo_YbU8fZNC4VkAA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/11/25 2:52 AM, Dmitry Baryshkov wrote:
> Use generic RPMPD_* defines for power domain instead of using
> platform-specific defines.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Acked-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

