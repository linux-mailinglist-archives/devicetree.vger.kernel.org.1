Return-Path: <devicetree+bounces-241105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C72C7935E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 246704EE8FD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F78434029C;
	Fri, 21 Nov 2025 13:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="odIW6uIv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YLPOv+NO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A412D8DD6
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763730982; cv=none; b=sVp+YtbyF9Md6vQtMuf5vSXNP/dNhGuvzSpchC0vVip0ynVLnDfZDPgTZYzt3WH1PuRWB+V0pBdw0DI5npsqUs+PF78sjiwWoqiNZKQfriHiiY45eHTEHg0th2GWZrcysyXfJFHeG5u4R3scEGm6V3NgounvAq54XPqZs8n3BGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763730982; c=relaxed/simple;
	bh=JoLSGsrTeqAn9Y1i9FGQohdxz9oBmAZOWBYonqcnUBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JEvb67D6oHgowCMtG4TP8bHV2FysqL1H43iqRwnZ6cUGZAijz+mSPUH3mKJXnNUtQEMm9hITps8XDElt1d+0CREDWbT5ZaRLaVvX5+wA0UoTlEeIluSdQJqRTONZWEe7o4SiRSseIoBSoXJyaAmqHWm41A3SjZXJsHdpH3IrZGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=odIW6uIv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YLPOv+NO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALBt0b92841430
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:16:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZslwIa1gPGf8VYsPD6TMS5oQXkWUn6EfvVM23jBYgRQ=; b=odIW6uIvp7hvW0Cl
	GOJcadtC4QeNjpEp14ayxg/BvoPO5vyCke18a4WtOXmDD6gLDNUmS89qLhpMY5vS
	8K4oq68TlXG98e9J9reAaGz39QddeKPOs9q8g2Vse2WDUd7m0gfhTjYeIuX1MoNp
	F8bsH1yZIK0Y+oVxWVL/iN7IUZ2V77lDnvDfaQ6ihpVJc9l7k6Q8U9WBTewlfEV1
	t/qp8Beu3FFIKFmUU0KejuLNvOBM0Fff36o2ZPT2GD/FhGC3ZRr2fNu8GQzc/56n
	8uVcORoFTPVWBEkpf9ftJRN/skhPoncQH9HO7z4j1USWErR6g/kxndoXe8ZqP8ip
	cqCfSw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhkvhhwm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:16:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed83a05863so6845581cf.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763730980; x=1764335780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZslwIa1gPGf8VYsPD6TMS5oQXkWUn6EfvVM23jBYgRQ=;
        b=YLPOv+NOgGxlR723rJIS8w4yjX4dZAEJrQxSHYPzcgXWJAtIa24HYGyEhUwUBVUT9Z
         1ij2vxqc2OdaI56O5Gnzg9auiOYkMjICYCr6K7GqlLT/5bDhJKMrc+2Yqw4hxAT67RUF
         Na0vr1Rdde3YikQTzgumNcfN7d5JWgHuBHekT9R3U1pOVHGOfW9p1nC7w/Rqn7Ci1Zgs
         4cgy1Ly/VDRUbdHN7vtPupapYWjuXLE0Lz0NHzjKyH4VeReUD0pw83tWdsERet3CyWgJ
         ItAD4Fy7JSpPUerqP6/oM96c943FYkJWNiEPSuKeI3Jk+PDp5o8N8GKihH5zw8VAyegc
         j43Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763730980; x=1764335780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZslwIa1gPGf8VYsPD6TMS5oQXkWUn6EfvVM23jBYgRQ=;
        b=OLAT4wNmPkFKpre2GJW7Qd6leKc3eRhMw1jEBJEb7ZH6WgZF5MXoxDmJumuit/haUP
         ZzBOJtdyIdYZh6LBqWRHgD6FHsWsmM8Kf4lktWm9khCcljjDDbsaYJWdxzh2kE6SV3a6
         WBfKhzDGYOUAb4ibfjDP5Js91+YyT48LV/KUpbol7UoX9tWMfDvWvz6JR0Vd2JnNcUHj
         diy/vnl/EqPLzz9xVQHd9bfoyDODdl2HtE0h1BwUxG94uDNGEoA+bTY3m+hmr6ZIvqWn
         x2e7KGRv8junNfiEDdCe5bL2q1o2LbX42IESXE4iBdMfFaWCB2Uu9pv+n8mgvIn6Z/0H
         ckxg==
X-Forwarded-Encrypted: i=1; AJvYcCXKAV0r21ixoP+rp+cdCWOwZ9he3YD3hPSz0uklxUmLNt7yYZWCIfsVT6cs+541ycaHHWxNiksp+/9j@vger.kernel.org
X-Gm-Message-State: AOJu0YxVB17PZ3ro2RGBt36DgYZ+YRji9CygTmiyhdQhTNSMixxnB9QZ
	Kb0D+8ema9zTmX3tayKxTfDl5rPeUiYzMpRRln6YrIvAeJZcmRTNG8Pn2zMqrS2tp4ekRnjLnJ7
	ZSPxNscy89dGUI+JohHrsjfSSRW8FaOSVurAuap5qthpw2ZuYMuY2Xdc/v9/QTRmJ
X-Gm-Gg: ASbGncvl+EcmiYxRNIG1SoCl2adyC+VYPkcgy2yxxchev3SoaSD7KUrmfFSCutXRer4
	FEkm03aWw3oXaj3l9hLPGI4id29hZUfcZO7QHbz5uEvIB9ur+RbQjlzqXEqSevkfPHZHmh4jcJM
	PSrWrWcJCEBjjFHvvAfmR1PWVjdJ62dbx1rnqTpFEMnb083K+z8rvjPUtBzRKzjmo9+JtwckCf0
	pPxPldrEFBUGRtNkVJgkSe05NeDSmn4rTTjdRIOaA+qaDWAxHLLKnQzOq2AXcLjDNxN+poXKBQ0
	mpWnj/kiWa0vJ6szU9yr/Pt7AofhEUE7htv2zrwDYTtqycbQxIBVGeTRAd4woLmO7QqNdT8t7RC
	i5tlGkzf7gAWv1ZYJBXPVNZbS8JR3DDWfxR7OV1FLx/5DihVWmKNYZ9rwrctq4yN+XuA=
X-Received: by 2002:a05:622a:1108:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4ee58850982mr22807521cf.3.1763730979800;
        Fri, 21 Nov 2025 05:16:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMERWEagVuNh2sUh4eb1aDw0OcAZfvUXbxb9EL/FSkUdpKjmUVXox47zbOGtt3PcxXPwIAbQ==
X-Received: by 2002:a05:622a:1108:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4ee58850982mr22806951cf.3.1763730979209;
        Fri, 21 Nov 2025 05:16:19 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b765502a9cfsm447078166b.57.2025.11.21.05.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 05:16:18 -0800 (PST)
Message-ID: <d68ea27f-a317-4a58-9fe4-f0519edc0e07@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 14:16:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] soc: qcom: llcc-qcom: Add support for Glymur
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com
References: <20251121-glymur_llcc_enablement-v1-0-336b851b8dcb@oss.qualcomm.com>
 <20251121-glymur_llcc_enablement-v1-4-336b851b8dcb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-glymur_llcc_enablement-v1-4-336b851b8dcb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: eWFNQhiH3RLe_XATgP5LecougFzdowI2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA5NyBTYWx0ZWRfX+SHSu7ce3sSv
 xIDcHZK4dclleszPcLiESTmGyGjFn43uEqszIPs9ayqAVhkcpl0ueybouPo1aZ0GuBRegD18iQp
 DBRtDqJIVBD/P+UDsfF76tnKSkBjda7imgV3R/fxBTYweNRdzqFcluux8woLBEQGXY0f7cMghFy
 DvQW9oeJ6VcYHaqTr0EMZUAstxFQ2B2UmPcAk4N7sIBF31qUa2lp0941aQAg9UsRdcT9MCQX3g0
 NdrbrXLWPlTW+Bmjlh6BsqTPjH1bMJeg5MdZS1/ADf7JLMNuftqS5B1wHxlDBp4/ZLUZSYBYYBW
 UF1MTdptC1Kln/7RyZg3RuLMUSBb7FubSKdV0zYzYU4hjQxPupgrkkgB+tGzBl8PiMY+rzu5pt6
 AxWMxrKGQd8lQE+fHJTRIpa0zxcvZA==
X-Authority-Analysis: v=2.4 cv=bpdBxUai c=1 sm=1 tr=0 ts=69206624 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sDGfGVSqItyTwvN7xOUA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: eWFNQhiH3RLe_XATgP5LecougFzdowI2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210097

On 11/21/25 10:53 AM, Pankaj Patil wrote:
> Add system cache table(SCT) and configs for Glymur SoC
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

I have verified all the values here are correct

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

