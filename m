Return-Path: <devicetree+bounces-249231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AABCDA16B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:22:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA62E3004BBE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA5C630AAA6;
	Tue, 23 Dec 2025 17:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GkMZFz6n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KDj9WU/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7479327C84E
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510501; cv=none; b=dvj28LZf3X66iyOaZ6JZcshWYPpvooTIlQ9C8ILDcQhfsrmrrNALZWWq6mSclqhcV/ZydRDVFZNvAWs06bKCLDAYxKh+LPFOpr3k6t3arXDTATtvIjxMNhzo/qRPqc7AAqEqMreRTkTLoLfiXAzZAqg+D4EKlfjoKnAsVHFQ3fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510501; c=relaxed/simple;
	bh=CoMoEecSSBERhrqvr1ZygzBkaq182DqR/svbL54/b9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QNpGSowNT/v7VAjtzY7AZvq1WOJ0ZS+IbB+D8zgn4LtmZ2q0r9JuDMS12cvIc1mViVIrf8aGv1oijwaBBGXTo6Gv5zlnlYtFCf2dz+oLHZwZ78PH/QUFNTKp3vMz7QvyZnELlJU79MKbJKqAKU80EIXhwSIxqZ/BAntGlVtAkJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GkMZFz6n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KDj9WU/C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNA9KjP1358212
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yvRjTU+PmPNvgLfcc4mS+/mO6tgUa8Oejx14Y3nmC0M=; b=GkMZFz6nu35MhaS2
	1mUBMTYdFQthDa+5yC9qoqKoHcH/F01aYkV2DhyeTZTQGL0D01DknpBkkig/GSS0
	2omgdTWcYBVmAwH4xfgLo9IkX+xjXroOM0LisayXx2FXB19k1SoW6EpBdnWeGsWH
	CasQA15XFUc93IyERcaMqVHxC70sCDv5OXVtlKWgVL9dRl0ebRHBvByY+XiWGdU2
	AkSjiguF6KllelqNfYHRiRhbhbbXSaikK2m0U69o1M6kPWNcwZZN0EmyX4LNkTOb
	ZpTNvlOW86zH4ek5TSX0MhuzlgwUtEmExCGFcqwVowrnfQNF4u97Mahd/IU3WSK9
	7MOfZQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b78xc41kj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:21:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1e17aa706so27205441cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766510499; x=1767115299; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yvRjTU+PmPNvgLfcc4mS+/mO6tgUa8Oejx14Y3nmC0M=;
        b=KDj9WU/CqjOw9uiSUGOOqCzNmRKuhRvJ/CO56eL4yPRnIlSruuEb8WUty1L7BXpRwG
         QePITf6/9UZIqqHQtNlIteOkvxfe4mPJnnqSxPhyza7KnHV0z+w1o30h6Wb9NvvrcoB2
         UiArdqHcb8mjboEvDqqiuwFQf/aRhdoYZeztXYDRbN+b95/L34pMOz5HT5oeqSngOUms
         yGtMOhBoUQ+5Tje+B99KwymlEscu8ocpKMZmgRRnHftCYkSiKpHdwHD6RkBCZXIwc6Ar
         B2ZZ1y+wU8iijDXve8cr4W8SBAsujArPDifTj+l0sREKEecagKMlFSgJef03ljTkvXIy
         l2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766510499; x=1767115299;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yvRjTU+PmPNvgLfcc4mS+/mO6tgUa8Oejx14Y3nmC0M=;
        b=kxsWvLdwrlsw4n5iEE9e85GhXMYih3abrfTxmRFDWHfcUvVbK0NzD+oZxVcIyO2nUA
         ii7nQZrQbNzKhXmpHdQe2eDyd9o9JgvDxUsy7wxQ39kwl9Ztafz8rEPH5Wczish4NR6s
         o05tUuOcojyGBHQl4Q4CIEYvQlNc+ze9FAzeUg01+W10XUQgUsIfFvk7KAn0c8tzflSK
         qIejJrlz2fdWAiyjNV+f0xsQKGRWWcnPjcuINdz+lPOeMbDK2cOt0SraLY2pvtMxOvdX
         IYT4agyHLZja4Z2Zr+wB+OeulSpg7ZNqDHFUDtqab8Zaza5c9rhlZ2Aa+i1DlEiDEzvg
         aa+g==
X-Forwarded-Encrypted: i=1; AJvYcCUTk5cAeUFA6N56c9x6XX+4tryXXu3Yq1jb1/oXdG2BMi9EvSFObmfUKylr+RrKexcN3pnybsPplINA@vger.kernel.org
X-Gm-Message-State: AOJu0YwawsAzuyzN0GdL5kYxzBmCQW/o/3NS5swG72FRw/m7heEsw48l
	3D5qE4rILwfwhiYDBMlIRNmMVZRlEK/pRJQUmaiiaiPH6ynwcKUT5PrrA0M8Z8riBwRRhua21kO
	c0c0pVoEinkyDkCMWXHKWHBKZn6YU49ENZ16BVsfBUfvHXx+wDeSxKG8RSlbKqaLY
X-Gm-Gg: AY/fxX6y10JfLr1AlMJDLgvhZ3aBqT/gtnpFf4oboEZouXTPKWd0ehzWtsA8DBoWqOM
	glDxKRJOBqgP+X/D37WW9kn+eeWk+jxPnjbPDXxtfsRmUvWmMeZPkoY2PUsVqlqOHHWo8aAc18t
	TWbWx48bHzMMmcqLG3ZoHhtV8V/2V4l8myQbQR6Ako2NJmDHRUxwKtlxliAC6kKrAlBbXKEb62j
	HmmzbOhufVPHY3o/3p0dDMhXm/t43GXmsajfy+wqxO/DUGI5fYP4e0IjWc/i/J30qJRRMdQCt8I
	z8i4ZyXKvMXApgunq0l9ak1XGnTjL4AVdyeZU1IDLaQKVxuozL7fTxeHvJxiOtRkbtLvRwmmgzd
	VTWYN9pEaTcQvi2mc/A/oOWpcBEL9JHnH//tGnFKs9NdWOvysZ2pc+8HZE2f/OWBXnA==
X-Received: by 2002:ac8:5891:0:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f4abccd72amr177113161cf.2.1766510498540;
        Tue, 23 Dec 2025 09:21:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmOv+fVOW9+roCPKFaOZUgXIpfrUAKVE9KKLB6DNuPSBXgkQryav5jdygB2izS64TY8jES8Q==
X-Received: by 2002:ac8:5891:0:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f4abccd72amr177112591cf.2.1766510497897;
        Tue, 23 Dec 2025 09:21:37 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b82e7sm15320088a12.35.2025.12.23.09.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 09:21:37 -0800 (PST)
Message-ID: <cd342f94-8dd4-4a6e-8afa-99be22e9a420@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 18:21:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Use hyphen in node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mfmDmOZmXht1ySeaTFl3OnvlpoNsAIYl
X-Proofpoint-ORIG-GUID: mfmDmOZmXht1ySeaTFl3OnvlpoNsAIYl
X-Authority-Analysis: v=2.4 cv=cuKWUl4i c=1 sm=1 tr=0 ts=694acfa3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cxglbGFaQTsLusRpAB8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE0NCBTYWx0ZWRfX/M0tE0u6bFr+
 z3Q1xR/fOOIuJYr/6/MuaS1j75ij8lY7eram/oZ1lP/h707K3ft7gFEO1l9AEmDmc5w8y+6t394
 vpY+zuURjzb8jPzSK8h0xdKLTD3j3CUH9jqsZqjDxp5azJmtIYIrS+eh/M9uvXKVRgV8xlpuKOQ
 bQIRj/exVbanWQmTmS9+gNUN438deN7CVh3bNPO434bWB9d3nbmF2U4GVzaaPXuWtWvoG1x9mL+
 29BjShl9r0o3NarhBoS9diONfzWsUVL/yAODrbF8kUns46oo5fYqOob/ALwJsLovwpY+0fHzTsl
 YFNTbWJCVdUmHM7kq2/Iyth/+SFMCNz+YQLNlHxqXaj8CVxmNdqk85XRVP3gP+RRHhVG8Tqu+Mo
 PeTQ+wm2o+GuiMVcj4l1YH+x31eH/+/S68hhHDbv04YU7GXm8YJe5+B/FnNcuSDgCqYXab4Y3kc
 LEjIVTV+8a3ZKKQlTKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230144

On 12/23/25 4:26 PM, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Patches done with sed.
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

