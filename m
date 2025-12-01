Return-Path: <devicetree+bounces-243475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FEEC97F9B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 16:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C7D574E1F2D
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 15:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B672319619;
	Mon,  1 Dec 2025 15:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nJTjUsNj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Uwgu4myy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2358313E0C
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 15:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764601784; cv=none; b=KNuaxETK4eRgBsaGD9KUhFPgRoj5P0qDr6/qc3GYWn2zd1z1lNQWn4g9PNvLRjw2LbpkiIM/cBUE5MtQ4pYvN+aBxYjkuPM7/fpELVB6kJhBhTOhIqq00C78C/CGFHMUnp7sw9uq59S64zfqcPN3XhjGEiDC8UV/7TSJ157jBJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764601784; c=relaxed/simple;
	bh=YGSSDKFg5jrGbiSq4AkXaxodG2ZTxYZiOQtMhSy+4z4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zm9Jl23oUvrikDQ7Hu0uXV/LSENhRDlSrAY1ba8k9XhXWKthFTymHlzMKY9QCEQKUr//nE9/29l2RPBs5ZHjhQ3S+dSJABdM6SSHsEVDH7Z5FLZtBp0TWHX6VR04HysIBArZLzNzhxJfmZwwcLOLfSyYACFHsLlvlhlx6FsmYRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nJTjUsNj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Uwgu4myy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1A7ngr435828
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 15:09:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z3t1Xs6zgjRdXhFfVBguGwwnqAOk/Svbih2vGB4uC6Y=; b=nJTjUsNjRIHHpY2D
	J1AaiSet+6NiDLpnynoJhuerpyahkAZJTZUSrSvCFDRLJ6basaXXifhR4b/ibpDl
	WWnKwjiQ4x0TgMlfBwUJQOdqlHAt50McNg8Rlgk4FXgW1P+neRJEQezVWEgsq75z
	97tVh9xpLvOsBDHyuY1PSAcaijAGOEfqyVYs+LTP1rsgomLMbhCdBKjWO9AQ0KrO
	xSuJlcw7cKV8UlqRrrpa7NC9dancKajDaDNXuFnKF8WSnmWlbaWntE/CtY0cvf16
	SbmmZsj4wIYVFPSKWk+fvcJHIdZn5Lh8azZpO3xfJuWEMVeyAA6/VzbR68AiD0wZ
	wvNuEQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as909rt8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 15:09:41 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5e1fde1f025so444260137.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 07:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764601781; x=1765206581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z3t1Xs6zgjRdXhFfVBguGwwnqAOk/Svbih2vGB4uC6Y=;
        b=Uwgu4myyKAwGyvQBS7J7LdcYsxMcwtRUalAM2sED2gt3ksSh1gEdza3QhVQHPGRITs
         hijpzbAUaQdxXYJk7q+GcLXRhUqTZCkKP39AjHVstsebByyRFVQgi4kmbZhjTUoYLbLa
         SJ58s5x2vIfw0aG5HsJVxJfG8Ak7B+zRD6dHwbOqaIsnS0VWdUnzcnllUTI2CBeoVNOo
         9cK4dZXwEu/3D5mYCvWHucHumLKuMTsDFUgoZN2/G+nPOYOhq281qo5PYuTUdgPAcdNM
         nExCj1qDl2cTXkVWOAfYrGFTz+JYDYiWD30c8TE4Z+eyORzoey2szsh999bamLEehJ8r
         Sbog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764601781; x=1765206581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z3t1Xs6zgjRdXhFfVBguGwwnqAOk/Svbih2vGB4uC6Y=;
        b=nH3nlvBh18qXHpPNc0Cd1+wgZPjoDopIAmYn2UWaXtHpUw9+KHm2+2Q8OKfIzZusuC
         VfqCGyOw9PGJRQFPawnjA20FIIgSggIMekOiRDmJIKbv4FVn4pObDZMeKatVIxiKRiVe
         9kIjuvYILcEg9ZTGOa0lnwnyIS2/acNZyW8Rp31ooTfKeyg9ez/sw5/ymT3krbaixPqm
         GGGgmQ/qLIT7NqMflcKbt3BG9iMcLyEVbY3tdNEXrGPzW8VXkvBiQgoBgDyJVkEOl0pK
         0ZCSPiK2ofOzvbO/TyOYr0j/qJWzzIshtd+ZgrcslQjGLd6yqr8hfKHkgEl8Y7jpa2de
         gKNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU28Z5chXebUpat7IthDMsIJP6IX652GLxZZC5/40BT5STmKtiNxJwxWwRpIqd9SN6GMSCIanhce79i@vger.kernel.org
X-Gm-Message-State: AOJu0YznlmESRxE2MsHVO11KBCh5/f/zu8qxYaUb+j0igQSz1jdFb0Mf
	DbSuzrCV4tq0y4Rq/nyPpXU2JU+SZASUAfu79IVG7miVXeS19LmNta48aBpyiMRjp0rUXFivacW
	fyVrZYwWws1cS2HFDrKA7BVYhmWdeC7+PaojYb7abcdYCQaU4HCafmEF1qNxsrjg/
X-Gm-Gg: ASbGncsIfMh5VO1+tL/dP9Tp3iC4YT4865S3aIUU8NF3EB86oZmZdGUAgJ9AAcniFK2
	M3WT9g6n+rzvQhXhlaebxjReS4Gvn45O/i8YC7aa+1aeaLALLpoHxcBzoSiJxZPwT/c5RT2BQ4h
	tHPB/o3g7pYfOLGU3o80korhnAo/mpAzgyDwl4oAdvLviqxvWrn4SW0LnTijsm9ii0TizBIYpaw
	ww6TW55aq0kqpevfQiN9DZ9V/szg8L48MsAcb/AoDe0zVJdkNkOn2UzTPV438dudxET0d7T8XX3
	HSQwelNqZ8dyIxMKwMyZEXfyQW0iI0GtrEVnd1MuwPJxDi45ADF6PEqWZnseoiSWa3nP1shmS1d
	C0Vu5yZFQcfoGjC93A+3WPWsLBXZapELI4fMJUety6oYV81/wuspULgm9SdGB4ZZXces=
X-Received: by 2002:a05:6102:5ccc:b0:5db:d7a5:ba2e with SMTP id ada2fe7eead31-5e1de57c9c5mr7861928137.8.1764601779874;
        Mon, 01 Dec 2025 07:09:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqJ/bOtUtruLfvAMP21Fx4vb+d1CVVf6E0IukYWZBWR+luXF1KzuKUUzQCJI+z3Ap2EQMNNg==
X-Received: by 2002:a05:6102:5ccc:b0:5db:d7a5:ba2e with SMTP id ada2fe7eead31-5e1de57c9c5mr7861677137.8.1764601777393;
        Mon, 01 Dec 2025 07:09:37 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a265d4sm1236160666b.60.2025.12.01.07.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 07:09:36 -0800 (PST)
Message-ID: <4f8a5842-2132-46f3-a3a4-1243e5342f6c@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 16:09:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs8300: Add clocks for QoS
 configuration
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-4-odelu.kukatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251128150106.13849-4-odelu.kukatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEyMyBTYWx0ZWRfX5DfucoCP8o8c
 PWC+sX7Wnopz9319Hfb7JyKcZcBPkHFg2fppNFJ64yxgcWgua2n9HHdxt5G9L1vooCBQNnbcD3+
 R0C3WmTHF6isMOkWUT5ntEpV8xaA+m7pwIiIOZrwAlPtEn54kTbnwHFmJCPWzQI1aBUJX80Qme7
 8jSyMPkwQUSzdI577iABJSex5n6NkLIEgekFdsWK02SE2FK2odcYN86Kjty1iwkBSuRnz5AjuPW
 B6fsxEmDNezr2zTVkhgzmPPSMjJgXoLjSjkTDRfElUmEDTv/szWZdYIHen10TzV63+BtLuv9AnA
 GfwkEHqUFVnu9hqxDTwzxa/9oypzhl+4AVSp5tAWo1RjtcWSzFxrTnsJlyrLmN1mQmhxj1atPji
 HsCJDq9ZBg40Mmz0+DxdVc2Oqh/dxA==
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=692dafb5 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PHHq1DDFEsKsDgH6OmAA:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-ORIG-GUID: qI5js-zyxAP6w8jDK7hZ2C7UN_t_ka0E
X-Proofpoint-GUID: qI5js-zyxAP6w8jDK7hZ2C7UN_t_ka0E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010123

On 11/28/25 4:01 PM, Odelu Kukatla wrote:
> Add clocks which need to be enabled for configuring QoS on
> qcs8300 SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---

I don't have a good reference for this, but it seems like there's
a lot more various AXI_CLKs (PCIe, ethernet, camera) - do we need
any of them too?

Konrad

