Return-Path: <devicetree+bounces-242970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A287BC91C30
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 581EC3ABC31
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6173630C60E;
	Fri, 28 Nov 2025 11:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aF3sATIw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bk4zcnV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C92307AC7
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328349; cv=none; b=sahXy6X3sAu2vdsXtZUvMC7YnS7unsxnp5KNnNwVSOOMm4VhUgqKiVZYMj8gWgfn/lr+GUc9516g5P3fZCYAFSsqeEjFzXj50k5Sk31RBZsBh0W0Lwfw8gDRRzrK8J4oJbQddGoeESmmy1pSYgQMzrPLdlL6sw9nLvX5F7XKMy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328349; c=relaxed/simple;
	bh=6V53LQzTUU+X52oe/f37VikA45bAYlnugVS4uwIn2Oo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hmGXRkz30wCybPuWPS7paDJ5mxI9sDUqqpERtv3nx4njgzIo3RNEtZhc6U3NibdiPpiuq0dOD7jiS29ZhLrJWcScmAKB8ioutqG7a1fAKAtMAczuQ5oAuDLL6z7qQVkZJtQgpkK2xAldoZVqrH2noEPWDEnQWO/LSQhHbehhus8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aF3sATIw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bk4zcnV8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8PLSb4122303
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:12:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zlsWn4kiZBm5gf5wTx9LDTRp/oeUmOFgghiippIY6YU=; b=aF3sATIwIS7lYVd6
	hTWR4SEHWUEDWhpp5NYQltkhVOWsbBEGpVNbFgsG9RZmHq5DNyrOk5U1a7+rXu8V
	3Fypd1OYQ89aJcGNK0zcZkmYgpZblMZVzpF5PHEqyOzZ5TTQgETsVniz4j97hM+P
	ryq2+IL1aDmQrsiaUDr84ZlvpdBBxLkdeqneVRU2UWeqob24m4g8OcV+o+LWJANx
	7IQuh7+0Q1AGTsATTKIeYvU4Cpqr/xecuSS+fNbQwNTlJvHogJnQ/lcBL/lh+l0N
	1+yAFSbwIcm9cQYudw62OUR/S1Pl62zx4GKAEb5GeUpEhzuwpMiASFEXfi03fNp9
	UpSm2A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apm61u87b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:12:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2de66a28eso42831085a.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764328346; x=1764933146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zlsWn4kiZBm5gf5wTx9LDTRp/oeUmOFgghiippIY6YU=;
        b=Bk4zcnV8CS6SWjatBzfAdGePUCws6skCJ2+YcR1tB9q4QjIIV8C1oS0gtnjEW54zkb
         xWUfDiKkKH3bNX14k1WswoZnWFi3OG3C1n3cXqqECFEBnIZ8qvApUXWznSxfUkFA5n+B
         HbYigNMArsCIX0Qe89JrYJtCoxwUCg91+VnJJuQlQkehUghoYrmSJTwcLBFDAO2BK7Wq
         oCpEu+qrdBcWBVTgM+X4uQKtuc4W4uuN5TY0R+nzDLtEJBZGaYkfVdYxDV/Rv9XqESg+
         dMfiIF8bgQBcXlRhlujAUhQsBMN0+lS77knvUf0wRk7nlICCy+XKNkpDe5+aFybgmoO8
         vOsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764328346; x=1764933146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zlsWn4kiZBm5gf5wTx9LDTRp/oeUmOFgghiippIY6YU=;
        b=QbNm+4xnm3lro9ErMhxtEWfH7lVc3AGyhb/j7IUWszsZe2jzo8pvpJMc2WOjWOpA6a
         W4daJsnOK/o4X0/sEjoWpGo36UJpPEOIRF0yRJDMldHX8sKn/3zcE6hbbRqhDRjeSLfo
         Y/A25hz4Inp7gFJUbbukYKH27hzG9/YhQAro7TXU0PxEDS3fyQ/4FuRP8NB2nD7OhEON
         FrLnqiyQPUkybL0I8irnw1Ub6mYYkaw8XjJABFCo/2J9cFgFDE/EolDdrx4yiftGC+G2
         MkV9eYXXT5D6Lmece+O4f0ypiqmtuYEg4F9YHgZ3z04VShKIa3jz/EBimJJ0F6YL2FFJ
         Msxg==
X-Forwarded-Encrypted: i=1; AJvYcCUlDWSZWlmOdzA+Dq0G6RgsBC5TvwYQXQvGW2UL4O8T9/7hqBJeLLQrLKdvbCTuV0w0uYhC+rMNuj47@vger.kernel.org
X-Gm-Message-State: AOJu0YyqxwtWCapJovrulDF0YxpL8OVLMfQbc1N6MEpFzlKF6oCYcRyR
	OlzisZJRXrQrCTBDU5+bevb1XEsZOG5IkM+iM+dZye1BPC51HWTjwNWuw6zvHIOLmuWnA3abHPo
	k+nQ/5Qrbb4CKglsNU+h+TrZOGGx7lHLLsMwJLMkrbnA7oTx3XLZi5fxXrQF+28eH0E2uGoWl
X-Gm-Gg: ASbGncsCRO3NmZXBOA7h538s5SooKnQ4Zw4aeYhjpuPIuIeu8vW8IYI/3JwJiSphHpi
	AObnq3NrVcoB0zF/7o5/tbgw3YEc6XXkTw7NciG3VAt6fjCsAcRHEd6lQ8okfI5XNY2zhhZ+ML6
	Imb11zyRerdxg6S4oahD5YHG9ILnVnuhaaC+QywwPLMdDUARGb0iOCfInc+hFFrhW4zID8R2xFk
	q2n5npvflTz56VJX5HF7hE0lwNC3HxWiaaKAq63mDguP5JQOEeSw45v6heLZbXxsU/O2mvx1Ut3
	9tEHdlPNh/DXfyyWsPY9GVXSZ8Woinpz4kZxawS/KNEqDwjtYsw6ex/jwuRuKerrpNd1wYHzYJt
	Nck/qBnmxv20fLdY/VjMh25X/NaRTzxax9ZnhfMQA/tGtOJZVas5g2DQn6n+uxVkGo3k=
X-Received: by 2002:a05:622a:211:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee5b7badc4mr261376621cf.11.1764328345970;
        Fri, 28 Nov 2025 03:12:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHqvqBrOff1aK+JlYStktskbnEDm1GLCLkvvwCtBUrTJjO3T+v+ULBjs4vCemVpI/N9uKzag==
X-Received: by 2002:a05:622a:211:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee5b7badc4mr261376251cf.11.1764328345544;
        Fri, 28 Nov 2025 03:12:25 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f519d883sm421252166b.17.2025.11.28.03.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:12:25 -0800 (PST)
Message-ID: <812346db-d848-4470-ba46-0a52b2ac5d87@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:12:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add qcs6490-rubikpi3 board dts
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Roger Shimizu <rosh@debian.org>
References: <20251126-rubikpi-next-20251125-v7-0-e46095b80529@thundersoft.com>
 <20251126-rubikpi-next-20251125-v7-2-e46095b80529@thundersoft.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126-rubikpi-next-20251125-v7-2-e46095b80529@thundersoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: st-q7oCAI1CsFugVZkjBrZNSuwiXVyuc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MSBTYWx0ZWRfX+NEuQ8SzqqdW
 rwCFRLiQflvMbDaOcU75ZaO2Pi8WI04Gw378HQlAW5im07iStiMetNdKVXuYmc/hKlRMPC57MUz
 ne1JWWCvyEMVEjBE4r3QPGBzbcHQqOuBBxCZYPDo2CX0TbhavA7IhhZ2JhW1bfLQWBPM421heGB
 LGMlFIivUM5CyDNiZiC0KDh7WZ5T725s809LWwUHhtNlsTyFcHmfnYKR0tFkW1ltWsThNPSBAXR
 /16ViPKb6lhG5RVLMs25wG3pK3wFIVir1KKMUvDonQ5WWfG/1KAmh43eF8uauH5hD05nFgDyax5
 YWATsdnOBL108KuliJAf28bIs3d9h/uCOGypEj8y7mxGD7msZmjDCOHS7k7Ivv+iEFburn/Jqqw
 dsdWG3Zf4G/C7A/MYTPzXHJqPf0XxA==
X-Proofpoint-ORIG-GUID: st-q7oCAI1CsFugVZkjBrZNSuwiXVyuc
X-Authority-Analysis: v=2.4 cv=IciKmGqa c=1 sm=1 tr=0 ts=6929839a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Wdb1h0LgAAAA:8 a=xNf9USuDAAAA:8 a=EUspDBNiAAAA:8
 a=hFi1a12O9VuTv44D2lkA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511280081

On 11/25/25 5:07 PM, Hongyang Zhao wrote:
> Add DTS for Thundercomm qcs6490-rubikpi3 board which uses
> QCS6490 SoC.
> 
> Works:
> - Bluetooth (AP6256)
> - Wi-Fi (AP6256)
> - Ethernet (AX88179B connected to UPD720201)
> - Two USB Type-A 3.0 ports (UPD720201 connected to PCIe0)
> - USB Type-A 2.0 port
> - USB Type-C
> - M.2 M-Key 2280 PCIe 3.0
> - FAN
> - RTC
> - 40PIN: I2C x1, UART x1
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> Reviewed-by: Roger Shimizu <rosh@debian.org>
> ---

[...]

> +		sdm-skin-thermal {
> +			thermal-sensors = <&pmk8350_adc_tm 3>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +			};
> +		};

Toasty!

I suppose this can be further tuned down the line.. perhaps turned
into 'critical' too

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

