Return-Path: <devicetree+bounces-250195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5858ECE6C8D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 203B8301C968
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D926B315D36;
	Mon, 29 Dec 2025 12:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i7HY5ZZc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X+4LuN0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61120315D25
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012464; cv=none; b=HZvaVhMP4YTQ3pPvBnEdpaUOr6BubGm0B3f+xjfUWRf+xrBu+2xZK76EJOQK8q0+Ph682StVPu7tKDHlNe2eF1nUd8k6EX0qO+sdiDKXA2i61ylPaI3MhhEW7AmsQJlMHbiOSEdehg1y571GTfH1y/0Zy/yCDbm+CJmXka1k6XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012464; c=relaxed/simple;
	bh=VlAl5tzPB4LhyV5yyQtofiDM0ZUbfNOBV4VLAcaIUZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L2cKGr7RyilvvHA+bhZerhLEhGbxuPhRQl1gDKexU3bBQfbTUCV7Ws9MI5QpBx8MMt19v67BC50rZwZgC9KBX9u2ElxTWP8IxvWKeAHD86Kp9DyCPV+VSl2/MxgYYSXNDYh0Wvblj5HKTWVIIQlLAcjef24dgBQomihN0H9WDxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i7HY5ZZc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X+4LuN0H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAU3Zq3767351
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oTngEluiifgHJCxbZ4TtrQRAEGD6uxeXD9/zWx6/skk=; b=i7HY5ZZcTyXTIXKp
	k5rwtPoup9j3d7prC3HZI1RxqebGuUlfHSWPE+DpIrAuEoRvvL9eZs8Azku25N10
	kHIwt59ZYfSz3pldnjYZCgUAiwTMq5NIMQex2NZtqlKzI2n+sjl9VCZZcFy8J5u/
	4ifLZLnQb2hcUeN1zyFhzz9grMJm/BhSb9wYC3YhfJM2YDrGC3WoRndunEQBJIvD
	t38O6ytQhOGyDHKr+JwEoEbqkc+M0CHOdu7DlIdRlyFPxoObTwb/+7M5smj21Gz0
	zGfXjfltypW0kNPJxm87/q2WLA1L3+S9sMdoQd6oxD6Mp5nkeKtKiTb8ush05Zzx
	DMe+Ww==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6sg4crc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:47:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee409f1880so24701031cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767012462; x=1767617262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oTngEluiifgHJCxbZ4TtrQRAEGD6uxeXD9/zWx6/skk=;
        b=X+4LuN0HsFw3AK8xgPc/nKpZ528IhPGo8AfblW/KeKHAFMzNICstF3yZkSEN00456z
         J8vj3Vm3FM2oDZ7ldAHUFI/QDazVz4P70pTzlyMiMBSJNA4ewB/Lrc9OsaFkOzZlsqxU
         IeUL5DaVUyAiVVC1cES6RACIjc7AUqmacWmLRgItTu9vTz3sF9hqbaCmT19QWgbXlGzS
         WGIFT7s2e5dVn/2zXn/aKtSgGuJJr1iVoqV3QLLKuxzUroaRW5nrqRUDx0m32TQCYghV
         7WBoRF7ao8NTsi6CY9SCdO4avf+xaPROO81II4rv0FaKkKIdeoRKgmtvRz82ZuuGqZds
         TKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767012462; x=1767617262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oTngEluiifgHJCxbZ4TtrQRAEGD6uxeXD9/zWx6/skk=;
        b=vMrEy0449/TZW8yhm2ZyUAHLMj1MtDfrZ3bpJlI/JZtODfQ6FV9VXwz4BbQZcqkqjg
         u2DXAeFOVUXAM9lH35Heo0qhHenUZsreiGKlDRPMsLnp2FAMiuvkhJgGg/Q2ww6ZgiqK
         waPxIKO565SHzxhNJsfMO/8EDYr3gplI5JQq/KAaBVI91KYwv3+2dl3ycxe9oaoM86V2
         lIOlJESa6D58/sCb4Nnf91Sg7L9g3qy6K6r9KDAvVTPYaOWYIjLD7M78FAkwum8eKw99
         bFDu4GY1uC74inct/45rdtUSVOvkrkYfM4sjDpBU1vcLXxA9fKvr6rDiqZ9Mvtbj89+P
         LE4A==
X-Forwarded-Encrypted: i=1; AJvYcCUtpXIFQaSr3e8zkE7MS9sDh/4mtm2EBexWbp1rkjeLdrxEggtIssXQRvh4uXMxNMgshc2ySqpBfz//@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp97Y21VS4TeOw3UwvQUCBkHK6eFTPe3WwcGPITXk2SPWoaPpL
	W8RhJw5T7Iq6p11h7CoghTGUUGk+VEa4O3g58yz1bEjhIYrChK3OVE1vuliMeXexbUWen+N2LIg
	x7pHuIWUhJKbPC61S+HTnlq62aF7nZ8/CdyLDz+/JpcP+WIysW40rbXtyslJYhfyY
X-Gm-Gg: AY/fxX4nlU8OaJzes/UIrNY9MrVNrbQmZZLC4g4G4Uo9gRJTUa5+kRypS6Cdu5jjzdZ
	LORnRdexrSA1VIRauBDJ8H5q+hPtZCpPF3G3iR0X4lZyjH+lEAatSSU1FdTQWhFK93jrZModk6a
	fsjHNZXaqGyRoaZfAcKScuP86c45dxL70qmhPz4/I0BVxqa11HUBCZYLMlqPRWdCCbRwbjLmJDy
	9aKPGWFCb8kmcrK442Tp4I+0UyV6XBTKljG1fpVflQPQofKpfy4m0eg0nFv9HnP/xmXmR6VSDxq
	E0jB24HQd6D0HvNS9M/ta2ghYlcH9tDBw0MZJ2k0CmOgVnSHCjqezGJLDk/CUX/pj03tYMVrUbQ
	/In7wTkdlxpHBJUyFNEoC5KH9Tsn4oEFwk0tKKheWo7IhNbdfVNCVI+0tIKZyAO4gew==
X-Received: by 2002:a05:622a:1907:b0:4ee:4214:3226 with SMTP id d75a77b69052e-4f4b43e96d2mr289064461cf.6.1767012461685;
        Mon, 29 Dec 2025 04:47:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7fDCqvroWd8Ztt8XruIl7fotzA85y+lW2vZ/2NRrAM1IGqRpECNpULXx3B51GqsYodvmMpg==
X-Received: by 2002:a05:622a:1907:b0:4ee:4214:3226 with SMTP id d75a77b69052e-4f4b43e96d2mr289064191cf.6.1767012461223;
        Mon, 29 Dec 2025 04:47:41 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad8577sm3309954166b.24.2025.12.29.04.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:47:40 -0800 (PST)
Message-ID: <05f47e46-eee2-43e4-bc9b-4e3b3268dfb0@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:47:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/8] arm64: dts: qcom: talos: Add gpu and rgmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
 <20251226-qcs615-spin-2-v5-6-354d86460ccb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-6-354d86460ccb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JpmhNDSdaMMnCTYfjRKetUrt4N0Fhop6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExOSBTYWx0ZWRfXw5iCRvaWJ+tX
 ka5lc3OxloZ2K9Tn+RYDj+8dKqrxWFCF8gmpVIjsikjhwXVFIGHUuagEou+Qs2D2ohjrYaJdH44
 K2FUGUVtqDiv5Ach9zBs8Yw7izuTc259MzK2DLdVkt3N5oT3V3wPl0YusRIKAnd4sKtuzaJ2dAv
 W0uljfXpCJDI1oZ1qXDRns35/cbBkuygl/UxQtlFy5idFBMgWlUTeUAys20i78xU2P3aSmwvzlV
 SAlhThz8uwbYSxOAQYH2YzfV8NdlO/KEnaLUzJDFNP/n+MR2uEvo8u1nT7l+W9HlfBP5FXAc8Pf
 hYj9ndqXuJy3l6tpFZ1irGIvf1VE7a6k3esKF44QMwIy6Fk2O1eQoRzoyETDUqnc5VfUKC8QxbX
 8rVfPJjgTJHRKbOG98Hy1VAgjyNZv4ibBFLmSE4prhhDs1Jh4p2C8bDMZ+xVm0nvzGDS+ui7ku5
 mV17I+rXkfYVB7itVIw==
X-Proofpoint-ORIG-GUID: JpmhNDSdaMMnCTYfjRKetUrt4N0Fhop6
X-Authority-Analysis: v=2.4 cv=Y+L1cxeN c=1 sm=1 tr=0 ts=6952786e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=JdhzuzQUjDh6MeSUppIA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290119

On 12/26/25 7:29 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and rgmu nodes for Talos chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

