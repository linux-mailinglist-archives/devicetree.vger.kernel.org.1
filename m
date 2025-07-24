Return-Path: <devicetree+bounces-199444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C230B10A88
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:47:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 299BC16668C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD6062D3737;
	Thu, 24 Jul 2025 12:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nh1WWtEz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316601E4A4
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753361270; cv=none; b=j+aM0xrTl0cFNlwLwchC9sjZA7A5iDi5FABPIMKMg+gcqD6QPCci+7UwRNW52uowC06AnNqFHDVblNuT2qjyyPZpcH0j967HmYjQ0wcOvP3EX/6yYfnHJ3dC26tr6v4GBZ0gxtiM83w82rzsgCl75GTA2npe5IZxTwaCq5EDgDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753361270; c=relaxed/simple;
	bh=j705TJQJk3x7OHyAVKzeGEgdS46JMPnBxolChxBMvjM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rZCVSoMWd8HNg7iUQx+mOcaGVcoShNM0inAdp6jqCK8XPqnNRd7OsuoheYwlC/bkvS6CODwXcGQCP9RCPgxeXAGkSrS8ZqYQ7hEzuKu+GpVTPynZTT4ad29byxIRzUr+1bHfqcHK5tqS5EyGYftQQ4blan4ZK5SeapLBccKsQMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nh1WWtEz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9T4Sc012697
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0FM2xPuyNBnGL8vNJqSnDEcqFKlOQpC0+BnPbT25j0M=; b=nh1WWtEzJEJ0nnvL
	24zfprhbqKdrDt1dh3kTwGPd8nZ53puQpkEUefg9sPjJf0NByZeYo1XmDDBGW1LB
	ltExW/fI2wfpHJbwQgpyFzTnGvNnM17peT9qtGshqZVlQWwM6ZMUeqIhfAGNUYxO
	JfYBDZwDHEdCziHV15Wi0SMH0eRdYfw5mtTxBncc+vGCfEBh/4gWs6LWO/g/B+1p
	VMDoWiTAsw1NyAAi7Dbs92JC/N1lKpQ1VbSZ1G2/sLFWkuoAJGWfNWPybtsnGItl
	YDNGurBRuQm170vTnnQwWlBaiukNZ1y0L/mQCacJH5ZF5XD08nxHZutQrHziMofR
	IKwkkQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3hxr61-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:47:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7071981e657so265446d6.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:47:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753361267; x=1753966067;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0FM2xPuyNBnGL8vNJqSnDEcqFKlOQpC0+BnPbT25j0M=;
        b=WmddXvdNDbEJpRmMcvDkwlVpTQuSK/EgzSrz43PdSspoIH4JIFj/hg/X6GGZKu/h35
         cBr4vYLhzNAR1VZxRDnIyJkle5/u1J4vFLvYNaIyfPRxsEWze5FMmf0bqxRa6y5IbtKK
         jy4IqyVvy7aMbsB2MryRBRGy7EjJdK2q6G2vBOEwc+EbCS61je/h+NkIVCnYTH5bdGXE
         3crmlIe3fDa3l7W5oLnDYg0Ik9d+dNxn5j1wP8zCE+V6CTogHfdS9IfjVaBI2lpg1MRI
         I8/lAyV+jXP1gEBKuwMUG+1iN6dPE/k0IIekwGXnejPdHcirMuG8Hnl0wqMdyr6AT+ru
         98RA==
X-Forwarded-Encrypted: i=1; AJvYcCXa6kUbLK32kNzhC/FZFPb7kTpaZxSXsmmhlPU1pxyoX5kY24a4lpCq/5niqzvpgzqJnXn/W2CZ+ZGM@vger.kernel.org
X-Gm-Message-State: AOJu0YxldvuoSnYnGZcnZDI7Mrsz6KvrC1fC6juBXUUT4swC76HdVwxq
	9SPommk9DCh8AE2rRywn9lpCU2sEmLA15nX0cMzvhUOdwnw40E3j0qTI1ehdMuL2xZe9fWfkigo
	l+QGxBccC/NMvasyx5Zj3+mR9aOD+AyWj9POclf1uaDOC16EMAHFXbJaVqbFN8oHz
X-Gm-Gg: ASbGnctdU5SjWzcaRML5Zig6v3KxZD/gjNKFx0YlsbBHnff9sdYJ1coFoCn7WinzkZo
	FkcZLKmT+lfYzR8ZF38thvfqWRnZlffgyxUlBkIyowtcAW4eDxNYd52bZ3J9gpM2KSn/OOLI3/z
	zJkV2P5cOx+a8DR2oGKXlJ+aJiCfVjd83Y7T4bpw6fUnWQiZXBqbwPfNONMvek5grys0Rbr3Bac
	BNIH9Sajex6jWSlRMDGrhKoZCQCYw2sdtxldlSGj281HBCZNCv4Uz7UCmfB7mifUHqbyedoaGFo
	5c0cNI5SJ85g93G1bNoMCL2MIAGzPD1kn1F+1B745rY37Hc9doa1KP7ItyP8Tpehdr8DGvU1Dly
	j+jeqrDQS6KEgFw0xOA==
X-Received: by 2002:a05:620a:2606:b0:7e3:4410:84a3 with SMTP id af79cd13be357-7e62a03804fmr308920385a.0.1753361267156;
        Thu, 24 Jul 2025 05:47:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyI2zhNTupwdsIDnxsXopNUvVOzCpZF9qWtxp5NPNExIrW5W6unnaR6wpmZfExbg7wpVtu9Q==
X-Received: by 2002:a05:620a:2606:b0:7e3:4410:84a3 with SMTP id af79cd13be357-7e62a03804fmr308917685a.0.1753361266512;
        Thu, 24 Jul 2025 05:47:46 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47cd65089sm109986566b.56.2025.07.24.05.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 05:47:45 -0700 (PDT)
Message-ID: <159eb27b-fca8-4f7e-b604-ba19d6f9ada7@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:47:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] arm64: dts: qcom: Rename sa8775p SoC to "lemans"
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        kernel@oss.qualcomm.com
References: <20250722144926.995064-1-wasim.nazir@oss.qualcomm.com>
 <20250722144926.995064-2-wasim.nazir@oss.qualcomm.com>
 <20250723-swinging-chirpy-hornet-eed2f2@kuoka>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250723-swinging-chirpy-hornet-eed2f2@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=68822b74 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=yoiuoX9zeVfpJc3uYVUA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5NiBTYWx0ZWRfX36K1X6E4baRB
 cdYi2n6WWsPkptHqZgIIsGPUHaD1c14+FwYOr4SRK9UHD4BZctS3hzpJOVXFyc/ydvGIdu0d+OO
 IsY7r9y4b1CEf5GFtCn/BdlE7xWZ+wse20KU57QG3EklHxWA9xS9FpoLWOiIfq2uhIV1Tn9pXBq
 q0nmHHQY96K/vFurVCmwYwLzxWDz0Lz8m86NSTqDWIM/rhiXmi62k3VHJ0FpW5di79SwfgEEkaA
 5y6YxuuE0WO11HSHcVdqjZLYcTPlLiqarCdAK+5SKCQOyZ9Wjm3ES72AliPnSueagxKSmOyHZ/m
 3CGzdYHzpdeziUYovLK6Bb3+yuUvPG8n6XzRM82MuCprEf8WuQgNix45o8UNeUuew1AiYzPhxpx
 65vQvnUzdnAwQq434r84BwNStK0G5ibpFtkiGHBia4gNeWzp4rQqbOKf2TxETGz81lNZrD8v
X-Proofpoint-GUID: _2eePrUaubfmpCj4zqhRpFtExr-rWL_k
X-Proofpoint-ORIG-GUID: _2eePrUaubfmpCj4zqhRpFtExr-rWL_k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=870 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240096

On 7/23/25 10:29 AM, 'Krzysztof Kozlowski' via kernel wrote:
> On Tue, Jul 22, 2025 at 08:19:20PM +0530, Wasim Nazir wrote:
>> SA8775P, QCS9100 and QCS9075 are all variants of the same die,
>> collectively referred to as lemans. Most notably, the last of them
>> has the SAIL (Safety Island) fused off, but remains identical
>> otherwise.
>>
>> In an effort to streamline the codebase, rename the SoC DTSI, moving
>> away from less meaningful numerical model identifiers.
>>
>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/{sa8775p.dtsi => lemans.dtsi} | 0
>>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi             | 2 +-
> 
> No, stop with this rename.
> 
> There is no policy of renaming existing files.

There's no policy against renaming existing files either.

> It's ridicilous. Just
> because you introduced a new naming model for NEW SOC, does not mean you
> now going to rename all boards which you already upstreamed.

This is a genuine improvement, trying to untangle the mess that you
expressed vast discontent about..

There will be new boards based on this family of SoCs submitted either
way, so I really think it makes sense to solve it once and for all,
instead of bikeshedding over it again and again each time you get a new
dt-bindings change in your inbox.

I understand you're unhappy about patch 6, but the others are
basically code janitoring.

Konrad

