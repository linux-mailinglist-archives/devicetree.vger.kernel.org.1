Return-Path: <devicetree+bounces-217235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB239B57193
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:34:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F23B1747F7
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7E22D595A;
	Mon, 15 Sep 2025 07:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G9hJLdQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E361E98EF
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757921679; cv=none; b=jOLRs5PD+IYdPaELjqjsbBpV1rhwsoDV5kSAA1GboRZm+4Af+Fr80NbfdO5RAvEYdnDEYFrjG7lyjSuqkeNg8H9ehMWYURYHqT3R/DyIiyyNVuxF9mZa61zwNeya1IrsHy9FvIF7J5m153uoTD6yIFwAOfjuASCLgB9WgsQ438A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757921679; c=relaxed/simple;
	bh=pA7xq58Fqd27paAbgr3RheVO9d78UaJb5yfTRDMvo64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UtoNsDuETCN5YuVYKKw1PIC5Uy/jwAAjcEY0U6REnGNA00cZskC7kISs+Dfgz1yhgTjaERIMsIkhOZpwjxOyrkmPJuLOv0VSJhSfjqqTRWXo5kaqefoTU1WnjbsDTOZ7B+afDpv6nNQPuJpL0UqSOylrdcc48rj8ZdB1dA54ZIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G9hJLdQe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F7I08S004607
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w4oCzwIzZYIKPOJu+YqMNrlbG390YP6aeKNtC8d1OOE=; b=G9hJLdQe2GulXu6n
	1EdMfPas3FfDfPhKzVmZ8TTFKddGgtSGV2ex7iy30aRrXTGbk/D5AJAGkact2jK2
	U+rYbzrrif5Tb/78i3WkTnmhqwPk1YgPTz82gl7jmyNPKYIMQLa1ASa/jM1scJMb
	MYnL4iuvpLZ2uiKIP7P1yRTGkDMMCY2981hM9HXXjgSaGshdAxfYgfmodERzV8Rq
	k0wZ5XFGOl89+Ab1QobSZAAi4/vV6f8UJ/LNAw+obdGWM7xc5FSv1XPn5g5v0W6C
	TYObtLf2VTbaSyla5NXYacyePYYTS1KiWrVNxvpOCk8ISrTEuNX/IcynjwQfdKhU
	TP7zww==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072kvu4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:34:36 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-780e20b83b3so4049546d6.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:34:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757921676; x=1758526476;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w4oCzwIzZYIKPOJu+YqMNrlbG390YP6aeKNtC8d1OOE=;
        b=iG6SM/fmK6m5PcE2Pm/UF4W7ieJw32oQt5zSr9nJfvhT7tajVEFyT96Bs8Qw+/P9Zl
         DD8CI499C7BlqPwGd+6zdlNV21V6DrAc97N0Gu/4Q29sgW6DTcaPDlxuZF/eD1s68YCE
         HLY9O1MTplBGfhU3W/jZlOBid6XImfF4FXekGC1s+yHeKZOmVO0QVzR5aflCnwnOY4GZ
         +QRiaaDa5P7VLTXc8AZ6u7njrRjwRxJ7zyZrSTB+mSbBm8yKmhLMdIKWxrnhNBK1N7+b
         b4e6C1CXQ8oyGeQK0XQ3Wwk1LzLzyhacaYluv+UkKSjMYBvxZk84lytR/MiIykGJqPId
         Km6w==
X-Forwarded-Encrypted: i=1; AJvYcCXbZOcpyx0AFEf/j/N6CmEzBtzb9NBjzKokTA2frVzCpWwhu4OI/Zd53pufODNBoPN119a7vE+LhO2W@vger.kernel.org
X-Gm-Message-State: AOJu0YySu5HM2FuTtAKlNGPiEZlap+3EPVw/09vz7O/f+4ss70QmQ3Il
	9bMSct1hpSeI2+/Z6fPWLR8gpIWpTkW2HbauiQYPkm7Nl33iKXQm1L5HeF/I1Jbcn/75nuSCDLa
	jytiurWmi/UyX1TbJv6zyWhVlbzhsnX5fEgiGT/nAUr6gJnMAtawcrR4C1zSuBz2E
X-Gm-Gg: ASbGncvavfFwgOQ5oF/PsAZwyKGEjs2Ii2+tD+WjXjhYcUJXUzCdNKGciek0gjTGcUG
	bc3pxl7ff4G2cMTtpSuMDZpA0RC88Sez0zhEpyGGUMFTA9Up/D1QYswdYxQLUqnKv36zRxFDndz
	+n5BZ7YlsguxzKj+hjvSM3jFnuWQVwKGZuobUzzjxQshL4HPj6NZhxQ9v69XMEMGzHmenRKUErb
	N5su1gxp0lKwy53Uw+DeHQbaN8uWBTPSBGc8FLbl2IqvCXiKUA7zsc/bPfzOlc/YOHxyTsxNg1r
	YvHMTHux+3odCS0nFzRCNaeMzvgWXhD0ErJqmSzCvZeK+V9ILIx9e4PObZnWhVGP2PHB/4PU4ke
	MkabzrqEOLWGpJsqVkpR8Jg==
X-Received: by 2002:a05:622a:91:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b77cfcdec6mr106907611cf.2.1757921676127;
        Mon, 15 Sep 2025 00:34:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+u642mK5pX59NxQG3Z3A6Le4TijvPukrqmOimpRbxXKQNPvZpPbBJQAlASOVx2+OpCvmMaw==
X-Received: by 2002:a05:622a:91:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b77cfcdec6mr106907521cf.2.1757921675693;
        Mon, 15 Sep 2025 00:34:35 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07ce4dbedbsm611094766b.9.2025.09.15.00.34.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:34:35 -0700 (PDT)
Message-ID: <281701de-181e-439b-97f9-4bfd103f7977@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:34:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdm845-starqltechn: fix slpi
 reserved mem
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250912-starqltechn_slpi-v2-0-5ca5ddbbe7b4@gmail.com>
 <20250912-starqltechn_slpi-v2-1-5ca5ddbbe7b4@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250912-starqltechn_slpi-v2-1-5ca5ddbbe7b4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX9pG/b0MhrGqt
 vaM8Lpm0Ujmjk3D04ZapHvZV8gygSmxVtDwSga7d+HCXiw9/rMUR6bDqi6hhz0fPElcGOgUPwAg
 CexavY6WHzl+Mt3PnbkaBoWHUrPQ5I9VlLFNF0ok6j5bupiaLMwLZN8JD60Dmti2QKY/GQlLN6S
 4qU+IHVyCpZwaCR89c7WZfEocYf9/sl526ZU5gRy/kPmU5axHtKQHWyIeVcA0oLZnXhIPhp7bkM
 zjxYcOZndmZvijMQ0A6AKzzcMEvR12lhez/vPYLQv/lKgncG+1A0m+ypCVS75ejbafO0SgoDSTM
 QrW8f6WMEUAiNcxScZmTTYgT8P7k/Q0+PGkwjjtN+fCWm6aywu0TCcdC49qEPoJ/tyDvJVgFk0/
 TsYtVaQ+
X-Proofpoint-GUID: 6lAgr56zL1rebKH1JBdOQbS5OOPiUHDY
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c7c18c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=958_26X1zRvj7spRbiAA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 6lAgr56zL1rebKH1JBdOQbS5OOPiUHDY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

On 9/12/25 8:56 PM, Dzmitry Sankouski wrote:
> When adding adsp reserved mem, slpi reserved memory was shrunk
> according to vendor kernel log:
> 
> `Removed memory: created DMA memory pool at 0x0000000096700000, size 15 M`
> 
> However, kernel failed to load firmware with 15MiB reserved region:
> 
> `[   14.885885] qcom_q6v5_pas 5c00000.remoteproc: segment outside memory range`
> 
> Increase slpi reserved region to 16MiB.
> 
> Fixes: 58782c229e3e ("arm64: dts: qcom: sdm845-starqltechn: add initial sound support")
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

