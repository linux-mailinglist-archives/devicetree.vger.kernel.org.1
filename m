Return-Path: <devicetree+bounces-243449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA7AC97BAF
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 469763A2109
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4EAB313E2B;
	Mon,  1 Dec 2025 13:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UzXRc28r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BXh/TvNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3428F313260
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597196; cv=none; b=maZLpLl/CjxUvzB848yh8+/5Y4Fgt+0o/duVivJq5ep+9JY7YlxcsSv5PJRGFCwo+ttScEJxYli+K6ygDZdUVicWewp/D3ZgbhG2vU/HhfPF2KvQ0r3p8vlTbSebOEOm96NK+zYkCfv0i98oEctvVQuXDPdKht+Ve26WWOMQPGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597196; c=relaxed/simple;
	bh=Nq+G3avRDSDgJECHICzai2G1D0ja4jtll3UcIZCR51U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I2McJgHNB1Q/quVRIY4oQnZsN+6vmQHJ3s3cXTK3XjZt8zTDG5vGznNO+A8UFV6WvsNaNNT9gPAOxBYCHkmw7txlvVvCdVngb9ikBGDD3yNx/cn3pr2MMUunDivW/ZfygYx6LbFvyVVA+LBLQ72OvjZ0TExw9Io76NMq4vzIWu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UzXRc28r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BXh/TvNH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B18xa762700226
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B5MDGNBDVHdT9FzvIqVGT59U8KZh5yYJvovosLmlBeU=; b=UzXRc28rQr7+5GY1
	OehBogeEHf1CErK/dPOD1cmmw3jWHLe/0qV0eIHXgdLAx9aIW1bDWx23sFAcB8oI
	8pgNMCfMVQZdZ+SdEPyjDnbRi82UqrtJmnYW9v/+XuIAykNXpLM2OhL+ZhXZHqBe
	UmK5H12a1VlHP8lYpAxFs8KxOBVRXoGz9Mn+jlceRgHoQG7fwWrIWqfwVm9ROy9M
	HoKvLtrrgxfSxi8IE9USQUz5NkzG3kMRRWwWzd+2IPIc2U3gLFIYfEw2wBv2SKB7
	qJ89ynfHCoigo8AEJND52TMwoeZ9H1npETAGzappACu0sER4LcJs77SUp4CUCJvg
	Rq8ceg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4arwnvt5ks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:53:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b222111167so92615985a.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764597193; x=1765201993; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B5MDGNBDVHdT9FzvIqVGT59U8KZh5yYJvovosLmlBeU=;
        b=BXh/TvNHtbGGsuoDIViqa3l9M26BT9wn0Jvdhn/D2jdqbCm99t5AakEc03yc/fZf1T
         3PMbr3wlP1fqkB+eb/WAy/mYHpiRMCQP0v1PjdNEIfhBabBdAn3DGcoc5byNIPDY+B60
         pJdH5GpcPPlK2n91Hpk9gxS6S/uURZxEE5GfS9lp31UkuFr8fVYgsB2H2YsVdFc4LVwe
         3lEu/ClDO2BtzyaEWW9IcaOkVAVG7LC1dRkgHECoIDbaCLJuAMdvlYrTeUrHCfmHxOpA
         Ntu1uyWWmgqQpVg0qX/cRquXSZRPh52l65465olgmUFOTmcAOwRGn+9p1cUzb2Wgtn0s
         Ei+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764597193; x=1765201993;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B5MDGNBDVHdT9FzvIqVGT59U8KZh5yYJvovosLmlBeU=;
        b=KODD8uaHExYtrxV5jP+piso/ejrTf67n4ONH1j2COP7MlAz44Nf4KnAbMxnY7uLHCu
         cx2CwHvpUKWIQ85EBGm7lXDuiL8B/mHB434+fqYB2vriVplUz3KZHvQ2NVs5v+hsj4+4
         uxfx93ieNMf5A0P5b4kiRC3Gee3UHXL2Q+ejAcw1Qa1FaMXw4cEs/Ivs6lCHfg9HG06q
         VfCxbR9NmQGDpZccHEUiI0fANZum5tXhhPdONwMBdZA0AT5Dt71djazoaRXTOq5DgFr7
         X61GuwFRqEZ3Vjj6laHXa8i9plNdUzdbORd2wK7mXbQIAcNyPJLpWATpU9Y5QH03oL7B
         UgTg==
X-Forwarded-Encrypted: i=1; AJvYcCXuf+jg7usrjKzjdfwd/Wz7G86pDeWSZYeCtPCFjWJXswvu9rEX7Z8qyizFH2m8o7dVm5JFB7wGh3qH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu9txndS6rT0n9zaWZCzvj3Ln4SCj4ddmGDtM5fO7RL77ZeGW0
	x715hfeKDAWrgIBI9sE81Q2rZivLEgdohiQnxqgzQ64yutep+AyYmdbOWV5kzclYpm4CtGGxgvH
	sm5dlDT/lte7j5Oq6mK2x7gVcDGNUYwCopXe8/SZsyH+jjCg8tS/v44KUJlYoaCvi
X-Gm-Gg: ASbGncuN7FrQCn5NcyN0wbTdoqRC8OCjlZyde5Dp4DeqE8ILxHYqvDXXsp7xP37AeCX
	qiE1Gi/Bmdb9bWYuMCXEdl9Q6XsB4cK1BJylIqDchvnVwRpv01QZLBo0SpCE5XuOEdIWHCWj5hg
	5Is23wMyDqScQF4fWoCMA9n9GmKrcSGbL/prUfpOGmeNBlVGKEsrK79SlEymZLHQISSVqE78lDX
	wn3WRI9bcz+xA5wlKJ3RTbYgGGmNpRh5varb/jr4utkDAjRJM0DX5wW+l3erpLCoOnVSySk9S/G
	3PPBD2X00bsjDV7ygPQ2I/7Mh2M3i8moIZQDFpsGrkM88FwH5W5rg0HEXzJp27tMfPn9nS0TZr1
	aSUX9cXXGAEnI/VJgLhwG8A+tfIXiraC82pcxLOOG81J/qw1QG4ZwVCujnUzH5UZkVpw=
X-Received: by 2002:a05:622a:211:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee5b7badc4mr391677341cf.11.1764597189124;
        Mon, 01 Dec 2025 05:53:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwzqYjN9xLAgASRb7iVSQqOyCv0TQjsaBpUSAb6z8ODxHfZUAAN+UALIMWqbYqGWJWD7EkkA==
X-Received: by 2002:a05:622a:211:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee5b7badc4mr391675081cf.11.1764597185974;
        Mon, 01 Dec 2025 05:53:05 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90d14sm12615163a12.10.2025.12.01.05.53.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:53:05 -0800 (PST)
Message-ID: <259a997c-eebe-4361-9043-676d77ed85d4@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:53:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: Represent xo_board as fixed-factor
 clock on IPQ5332
To: Luo Jie <jie.luo@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-5-55127ba85613@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251128-qcom_ipq5332_cmnpll-v1-5-55127ba85613@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: EL8D8aA20Eer1SDn7dEeQl33HM4tkX-O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExMyBTYWx0ZWRfXzOId6zUrGGKK
 BUXNT7Yolo60dvi0U4MYO+6Sh2p6XvqDOcqVBpV9cItjteNu4MEh9bEcZg152I4Hl89t0sx7Cw8
 P+/vbzAJvsaGPAC8h6i5KYo/XBIQlz6pchpy8qdZ4imd6ZbjZwBSHd483dv47KqBsYZLLTEl/+K
 Z0Vw3vqPVz7+fL3W1xJm8Xz2DaFjyd2VTd6stR0UyjYR7FpbLlHU1NGudyLfoxBslgkAgIeaq06
 mLBh8to4CoQgT7z3b426nSX+B6NmF2+1cN7vvJQ6v3IEzgn1txBUVhTB+mwJuyZdPv0spo/OIsE
 /T283XTECbKKqiHw7pL6KKxPcwmHZg6ZrqujoIWrqqJYab3td0lzbaE3M1CKp4/Oa7gjXfxzY2f
 fV5BuvilPqcLhlMH1SnW8b5qNEU/5w==
X-Authority-Analysis: v=2.4 cv=Urxu9uwB c=1 sm=1 tr=0 ts=692d9dca cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yS86qH7rw_eMqjCuMg4A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: EL8D8aA20Eer1SDn7dEeQl33HM4tkX-O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010113

On 11/28/25 9:40 AM, Luo Jie wrote:
> The xo_board clock is derived from the 48 MHz WiFi output clock (divided
> by 2), and not a standalone fixed frequency source.
> 
> The previous implementation incorrectly modelled it as a fixed-clock with
> fixed frequency, which doesn't reflect the actual hardware clock tree.
> Update for fixed-factor-clock compatibility, and properly reference the
> source clock.
> 
> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

