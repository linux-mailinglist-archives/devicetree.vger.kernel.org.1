Return-Path: <devicetree+bounces-203240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FABB207E5
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:31:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C6B018C3EF4
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DA12D29D0;
	Mon, 11 Aug 2025 11:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WBJYPqC3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3EC2D3724
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754911667; cv=none; b=Uo3/gprQkLAkTCwkT+rc8S8xH7O4D5HJ+747Yva7/oHUyYTccatTkxNlw1lPV/+DSk3PiyOrSUC9Urnz6bGl5FDKx0DahIPzvFtgCWl3BQDdMrYAw9Oc28BYvJakHX8GB2V+j7TmF1vTiLzgsAbc5b0ho1QTe+g/zhkk4GZqeWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754911667; c=relaxed/simple;
	bh=U+J+XLR+6ekPSZrj8pxsuPqEj3REqQNGk7AxDkssPmA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qN0yMLUGNcoIQ/NhKZ3aLr8hOVzixAyIApzQHxUMxzWCV/bT0xizpWp8YxW4eZcUYskBmTHf7ODmYrvJ9W0DHVk2Aq9X1x1QcoJw97dEzfGzC3U5zxjNDTbcHioPTzIjTnJV41AWrU/hPOyeAFNjvgwVl/kp1QhqgAbkQGCLU4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WBJYPqC3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dEM5013175
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:27:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5fyLS4N2oFmF2UHiHGCjHJxCE38PIq/B8p4f+c32zQI=; b=WBJYPqC37sqXjgTJ
	zJ2c/zO11jThleKKz5jYA4agRwC/ZU0Tgghvp7SHMuvN7Efc7lulsqxe3VtarRrJ
	PjBdm3FfZ60ydGoEs647Qa/pFM76G8mebyFEvZYOfOijWb1JrUfQGqPiHw8KjenH
	/cARw3yK+w5B6PGtHf0d+7RRh0KWLqJl1eMRZvO3p+on49umkL3jPlZLbfVk56UA
	JmCzkTWcS0BiM2LgpWxDXBRzie1j2ulGdqXb3sEp6/leZNX6+ZnZ0XN3ojFCLTMk
	kqJDrcl/XNQPL4HBL+yz6mZJDLilsixIQdbmK1RITcUWlKBRcJpVo+unXVUMyMs+
	JtBFVA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmmbjw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:27:44 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af1219f29bso3743901cf.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754911663; x=1755516463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5fyLS4N2oFmF2UHiHGCjHJxCE38PIq/B8p4f+c32zQI=;
        b=nw0+8Jvee+fGB86rR6dkKdCP/w6SGzPeXkf+fcO07zBRWPYI/JKttkkS5GzvROSy7r
         giGVq5NttLW6R03hTvaW1WIR3TuxopKMyBdRG9i4pkdUqLJczZMzBd8VDGUeKk+SJN+G
         xDVHTvjCQ6Jfb3SswWNmuTq2EAM9yZw1W8tm8ezz6Dn+7GJGu/DFK32TsI30fAlWfwfL
         yWzFqx2gKAoXAHhTBKRhn0jUO4y6BgMt2ifardQSd9ZZOoNJHdmYHWAwN8PDZepIBkKx
         yFul/Ku7kiVoqhmMvy+qHcBraup8bkB/Ej+TLh7HTQP0JkSWlUJiN1Hgu1NqXdX9NX2N
         OS2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUIWYocW4pfxjsUzpzvz7LCkbWv0CCd96ydAyqowu4aoV/HG4wyg9MEcz46FvH5c+DnaLiXs3wDbAG0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj3oVTg4gMODS8sERkNOON15WNVI8qGtcLxErPc/g8leaZTwA+
	VPs/qA3N8zcgszPCAbaIVoJQ9hRdEazZ5arr068DufbSe2r93ab8aRaMBQFqOjuwW/hXWIM7RWH
	zc4E36BMDfWAZUwvFVNDmMzQcK0aeGILXLkt12xc1ENmAe/TxihGAuz3i5oV5tNmg
X-Gm-Gg: ASbGnctAW034xpuYlbMFbcP+5jDuXyGYkrotkFeOHu2Q2EHbZS6loKPFKVOdE395kBG
	AGl8hsduhGskUSD9nyFMCAyzQi/rFgASj8LtTW991p7r2qmuNZvOPCGtlGE/teT+CA09AxuiYPb
	ZZyZ4DDINdWr9kBrWLqqgtSqkQLFkiECbYN/gmLOefx9m1r4Uz5x//jWQybjQCnp+dLCn93xKJ5
	y5DCMSHlHV7RDYJ7sOBRpZlKLNPFn3SKp48qpbzA2OSp65jMXd4h2FoTMUxUEhdBjiPVklYoXrD
	RwWeiZlglF6WcnHaE/SfAome6jH1bXsfB1Puc2JPB8vH3/3WcnP+yWjhV7d0YpZbTg9MlE0cMu4
	mGQIeeY4gcdvCKWLU0Q==
X-Received: by 2002:a05:622a:44e:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b0c18ff1b3mr53726851cf.2.1754911663311;
        Mon, 11 Aug 2025 04:27:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJgFSDOS5fEjCuyG5NolkHlckR1ubFRcXPAOC/JGl654XR7C52OV8G/dlGBHR8wLM6zvgBnw==
X-Received: by 2002:a05:622a:44e:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b0c18ff1b3mr53726531cf.2.1754911662717;
        Mon, 11 Aug 2025 04:27:42 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af93d62bc97sm1729893366b.80.2025.08.11.04.27.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:27:42 -0700 (PDT)
Message-ID: <bc5c66f5-2f75-4371-bfc0-452d69bc16e9@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:27:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sdm632-fairphone-fp3: Enable CCI
 and add EEPROM
To: Luca Weiss <luca@lucaweiss.eu>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250810-msm8953-cci-v1-0-e83f104cabfc@lucaweiss.eu>
 <20250810-msm8953-cci-v1-7-e83f104cabfc@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250810-msm8953-cci-v1-7-e83f104cabfc@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=6899d3b0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8
 a=RAyH1-HTb1k6rVK9-NMA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-GUID: JjO1A_s4mNYCh1NhY27mYvrvSvEI0AAJ
X-Proofpoint-ORIG-GUID: JjO1A_s4mNYCh1NhY27mYvrvSvEI0AAJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfXwWxVzmT+IdfU
 p2R82qBOboJEbuZu6GC+2/7NTO+4KCPHpx61YDgpaKJcYgvBU9GUgBRaC39lNKYOuaQVuBUbBFp
 sMjlNrHz8E/JUXLo4ADjsLEB2v66IT+QnExDanygl4hg+mlEbsEtBes0wKoENduzNNr1tbrD2eX
 oBkQsRICOpoC72GjnDa8ZOH77DwxiYhxaHkAVFYjzOq3cLl64teiCgDIeMqBTaIWw+8OHT20vwj
 qNRabxE3UtY/Qut5XXZULllSUlYwT9D8kCUAmyBpjATkpZcYhk8VsZQI4L28iIs9XfVF58axb90
 4bYC5ySGwq69YTiw8rXwPyBM82K9qOOu7QjXqNRCXipi561wjSQ1wsTdI7gl6PKSmpwldeZzAui
 kyZmawM9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000

On 8/10/25 5:37 PM, Luca Weiss wrote:
> Enable the CCI where the camera modules are connected to, and add a node
> for the EEPROM found next to the IMX363 rear camera.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

