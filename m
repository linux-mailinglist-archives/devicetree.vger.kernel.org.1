Return-Path: <devicetree+bounces-233464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02313C2273C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 207AF1884A7F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 21:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89DE2DE71C;
	Thu, 30 Oct 2025 21:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ue3Nl992";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bzpy78OW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288B92620C3
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761860717; cv=none; b=ZoAvOF/GCaAOsQZg4+EJH4ZPoGCEcfZcFg9ZFvlIAQGUmutniQScCCwWasRMLbRKl2QKIJlB67Xu5je+qKR/5px5TMoFe+AGZByujsyhdGONkfrsnB1QiHzvNdWhbz/oWqAk6H3JHr7FZ/2BALgJDdmrIXKxUHosZuabZr51b4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761860717; c=relaxed/simple;
	bh=yoJyzRpSCCIReS9JjsFWUlo+3vKaeWCXo30gNMnXofg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i9GjKB92gVEdHdwo7jgzQlXGmlw+EHyTE4Lu+OfAlXffiQt3aeph4hHTQNgXg0lV93glQFhtvNCYTKuhhP/bA4PnN9fJ5HeiSEvUFeAey/fCrQ+r3oZRy9a4kWfm/Ctnjibx6YnxeR01ceIoBWVdJtaMtAZ/MDvju2aeWKIUFi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ue3Nl992; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bzpy78OW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UB8fxk3808875
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:45:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D805xAVnHSLtQWp6QWfqoMXrGvEhPuuHYPMCcOzODRs=; b=Ue3Nl992P1vXTS7r
	2Kr9PRYarDt6PFsjHetNQJ5iXRjWthFw7vUr7/Cls5DA3qkatjX9sLs+B5ulKmt7
	2A2DApK7uQ2OJdVT00r6dNjs6P09QDLkZzTGEo0l+e3/qyXn7Kg7IaCjKIJW2dz0
	VlBMNhr+J1rWFYgJhC4QWZCCcGno3k0k40leCOUM1B2Xzdzg/3agIZ2Up6gN7enP
	WVK1GhbbDq8OcC736Dxxkn+O8Yx3pUUWkLJb6Rov6Sb7YNfCdEMYSNKKT4VgdcV7
	WFeb0eKJlZRimkoWzqt8hPs1cDc/JYvWUsMqGkdiktiCXzZpK8/BWdNie4YvCvs4
	i1nr2A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a46vv9seg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:45:15 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e88c912928so41334421cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 14:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761860714; x=1762465514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D805xAVnHSLtQWp6QWfqoMXrGvEhPuuHYPMCcOzODRs=;
        b=bzpy78OWKx/dBbU9jXd7xVIkn9EqWIy3tfc3nvjAVHoCXSRYCVxDGfBQx4WyjyKaPg
         FqytnF0WNlB+w1Ru5sK3bSNslSrqvrCmWnjb0h/qlPnetXpK/xc2FgpHvB2pa1lBSACS
         hFMR13yNtT88mZchubyidy6nkzNcv/LQCKeH+OJUp3MJivDztkUCC52YhKlG0ZWWWNMX
         hiqNu1s/e1EmOgjK3oWAf/S72NFJmXSv+gT48B2BjilGYMo8oXwPJCf2FjDr7OEhSJoj
         /rbvqMY4YNCT26jxG+dhVo+cn+BzyRnGRxPPC6RWEl0d9isXb9JPg9o+mWBCSR4bwAqY
         9JWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761860714; x=1762465514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D805xAVnHSLtQWp6QWfqoMXrGvEhPuuHYPMCcOzODRs=;
        b=sDQlyuhoXV4xbrousy1fIgzciIPPiatfhq7TuOExWAZ3itpryO1aA2PXyLVLlVnvYj
         XkyvwrYyXMcka8l/X/7vEZ557IL7xKxydQFPzfuI0jVBoIvLPnBn3343chvi/kuYbvri
         h4RVZpplETBzc6S3jXj/yASoNVFMmBwx+4nvy3e0wBJBFvcjB/Gyf09zN/SoVbuGcZGz
         rWKDS4hGWdQK9SWCYEzYS5ZGZBe85Kw+1mGuX5RoTeiBKFU8qoaHDbYwBfLSy12qKL6S
         9RcffVchglqlDjCEJNPvAXUwIVERomDA8qOSoJrWk7V3Ageq9dR9qpG18Gbul5khYKzT
         i4nw==
X-Forwarded-Encrypted: i=1; AJvYcCVM5GUQL8vMVJesTAXK1N2qSQgEQYXvhyrxi4KDKWawrPLoroJ/E0eAM9hY5bvraTm18jcoEGfCnqM6@vger.kernel.org
X-Gm-Message-State: AOJu0YwfCH7Jcy+B8lSTp+c0EEuahEwH1L3rdFNa3kV9wod7DYmXYCDp
	h86/buKK3qiSVLzmcF++eB7xjN+P1poLwIjA+VjSd8ay9Xt0JyoWj4lQ9S6JUqqC3wEUSw5UP+E
	vu4yAFV5ffLjWMSR7CJ0fTxaCsNrUTTP4b6daWmTIuG81JrJdSSGRt/YutkgGrDD7
X-Gm-Gg: ASbGncurw1V1E0eUHoiwyVRHOMzCOQw4ptIVp7l4cTMAJJMsKr7owElKqVkJxLWDIqA
	aPXPgwXmwwQtDObshTgOHrddFhs5rasmsYJjaTkEHhXVvPLAfjLeg73e+ty+t36MxsB3R4939c7
	AYj7Io1sc0Dscw9Buvbquwevg9ZG9AOFAYAXKZQM1Osufkj0rRF/Vfyh1CmfnkG6BlShZS5EzjG
	VPOEXQWsvXh7iyIQfjd78T59KywoVqbcmMtlpe4NrMimv3xJh/nCN+a1V8PB7JHeceBw3rpaGxL
	yMwFwhx8Mikb0QJ+CKZI5ql/8Gt04eImgCJwt6eFkSzb0pNVQ0j0+eyXHMfccK3bS+kOTx/9/02
	7TKY5F7AS/uAzi9FFADnyVOlHjA==
X-Received: by 2002:a05:622a:5a15:b0:4ec:fafd:7605 with SMTP id d75a77b69052e-4ed31004db9mr15213001cf.60.1761860714358;
        Thu, 30 Oct 2025 14:45:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEH+HqEuczJpMlpDDzdccuf2/KSeYvFUepMCMr+zEaProU5CUwiZbOCeHQ214hDIAAxXqCQ7w==
X-Received: by 2002:a05:622a:5a15:b0:4ec:fafd:7605 with SMTP id d75a77b69052e-4ed31004db9mr15212691cf.60.1761860713800;
        Thu, 30 Oct 2025 14:45:13 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952b7b43sm34225050f8f.6.2025.10.30.14.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 14:45:13 -0700 (PDT)
Message-ID: <d51f38f5-ff04-4dc1-978d-ad8ee6908836@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 21:45:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASoC: dt-bindings: pm4125-sdw: correct number of
 soundwire ports
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        broonie@kernel.org, srini@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20251029144636.357203-1-srinivas.kandagatla@oss.qualcomm.com>
 <DDVYM9SMCT7O.17T5SIB9IEED4@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <DDVYM9SMCT7O.17T5SIB9IEED4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SHDzpogODJtH4O7seqQbxg8yw-Cm93mH
X-Authority-Analysis: v=2.4 cv=dK6rWeZb c=1 sm=1 tr=0 ts=6903dc6b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=cZRtUSbEUlCTYNoyqfMA:9 a=QEXdDO2ut3YA:10 a=-_B0kFfA75AA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: SHDzpogODJtH4O7seqQbxg8yw-Cm93mH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE4MyBTYWx0ZWRfX0+CQMdfVGlTO
 bziHoRSaXFa2DCBBXvzR/ymrppgSkrOtdn3/DqatIM8xAk+tlLEROOianmMn59Re3J5eq9Y5lQG
 w/LeagvpdvGkP/+gBAC9l7RJ5qnK3bzahMkv58YysVLp8nHIyZr6E90ZW0Ii9jsKLmYtfzLfdQk
 GGlHfpHHuWSpC/f+2TzfTo+SluE2eKs3VAT0O9vwM6jynO+p4+1UfIS0c9x66GbGUcPqu4NCdvN
 dnKgMe6agxXiLG146D6tiMkL3XL0CzD4yyjoPuKac2frQRR0xvodw+JtTNKleHq5uquDPOGlS77
 6vH/B589NkDZm+M277TqPztJMYugI0w9H/3lE/DBuNXdEdvKWNgZo1wK6GkRUzqLG9HYVX01+8O
 PCXjOqtVzgv8yMky1UMJEFlIGFMXPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_07,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300183



On 10/30/25 9:03 PM, Alexey Klimov wrote:
> On Wed Oct 29, 2025 at 2:46 PM GMT, Srinivas Kandagatla wrote:
>> For some reason we ended up limiting the number of soundwire ports to 2
>> in the bindings, the actual codec supports 4 rx and 5 tx ports.
> 
> The reason is quite simple. The available _limited_ documentation at that
> point suggested that there are two rx and two tx ports. There simply
> were no better docs.
> If you finally got access to the right docs then it is good to fix that.
> 
>> Fixes: 88d0d17192c5 ("ASoC: dt-bindings: add bindings for pm4125 audio codec")
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> 
> You should run get_maintainer.pl script when sending patches and check who
> should be put into c/c. See [1] too.
> Here you should run smth like this:
> 
> get_maintainer.pl -f Documentation/devicetree/bindings/sound/qcom,pm4125-sdw.yaml 
> 
> or check with b4 how it works.
> 
thanks Alexey, for the suggestions!

--srini> The c/c list is not full.
> Perhaps this is a consequence of putting all Qcom audio related things under
> one entry in maintainers file.
> 
> Best regards,
> Alexey
> 
> [1]: https://docs.kernel.org/process/submitting-patches.html#select-the-recipients-for-your-patch
> 


