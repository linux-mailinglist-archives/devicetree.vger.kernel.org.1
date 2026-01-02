Return-Path: <devicetree+bounces-251000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C40CEDA84
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 06:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1909D30006C5
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 05:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12DB2BF3DF;
	Fri,  2 Jan 2026 05:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DUlkaP85";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TV4rjwHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE4F207DE2
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 05:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767331242; cv=none; b=TU7Gs7twfapE2pEzUhfCi/0jnHPYCm77yMpLg8Wdwy6mnOX/sRHbO/wiuliSIXERuI6B3ZP48QxleOCcJhKqqrigiezHlNdeGQWPWQGNBntR7OCfhWruK54uLyXpkkupSaCNs1HbGz4W/HQgw8lBwWofsVrl6P2y0cnOvgNfIrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767331242; c=relaxed/simple;
	bh=f4hGQ47UpNJq5F5Lcn1P1xKWfbTaBDpbZetC/k8f/do=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pw/AvhCo86wr+mhi3ZfCKnZoOEF94ukCFyeks0fOetxlk9/525tirJM7LhET9Nmc/teQ1P2Q8SdbJA5l5DEeMiWq+jueOqlwYldBAu8f0UA9j+D9BwfyzdojKgKdXcKjNMH4ITDgRhHLAq3oOxyYLobdzRYaeb2G2IRUGdSi8/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DUlkaP85; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TV4rjwHS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601NCRR53301733
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 05:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CwrietwBCd6XILGZbnZOo72+nAmcihmp8D+VVMCOEfQ=; b=DUlkaP85etFhuAIk
	PKvOwFUnaNdCRqzb34PRElHJMVDtr2rTSoTrUCmuoCSf6I1hcbZBP7ErnVdh1BPj
	sRX3dwRuHfUpIsuqU1oeBvcdS81fmLyuz/nkdgMT0LmlGk8p49MQBfzUXuDFJwC0
	mR2eydY8GgCXRDtsLh9nBzUolExXAAmvHHpmb/cCGqWbTWtfTNxYWHE5/gsS929/
	IbfoeK39SVDisFSVkbElIXgStJTlxN20n12CNgezRaN9hRQZbmt3jJbILVIkjYqU
	BaeP6PcGkAdrOYyME82ACSpT6+DuPBzpIWDZJJRrw9Zv6gPjXecm0wYiCPhp0KYE
	0J1y0A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6akjjs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 05:20:33 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b9321b9312so24987057b3a.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 21:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767331233; x=1767936033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CwrietwBCd6XILGZbnZOo72+nAmcihmp8D+VVMCOEfQ=;
        b=TV4rjwHSRhOGghanRS564pffgzbL2vKYVFOmGj5vbvTj20CLyreZKXQBUeDXoqiqlV
         Mc6WEFsgv/lrIVdZ7zwr2hPQ7mDA/Ceg+QvT611dmqatuO+fRmREsc48P50tTX9uzstW
         dXD5OydQIfLRmS2EOm031KCUrotNFa86HBd1B69p98u1r0GlS6CR3uLB46KTIp2F6FDX
         JeL7Iw3i1dpjdx7jeiYS5KnDm23P+03s+SQ5wDfSMhXz0aEQeMUh6nn1Xt7qTIfiTK/W
         15g+cNKdzkeS/v68j+FpPIHm69Q3tp6sC4+X1TQbOTgP5FmIKSiw+G7t+/pXueQy0Tzf
         /NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767331233; x=1767936033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CwrietwBCd6XILGZbnZOo72+nAmcihmp8D+VVMCOEfQ=;
        b=QojWTZWFdu2OR04F2itHAAsOhRBi6xjoN9ItFr4bT/IcvV+1ZGFh5EzQx2/0tpN9I8
         Qtd1gtZZwpx/u5b6BaJKEPdzpWo8at6OTkJNtiNk94QagjgUdyl+nICsW4WSNu/Fgtnv
         ZN64VMQQI5oX4+U6zpKBQunv5mPTmYNTBLlb5p/ruCj2DdrzFEn7F48d6kfmdB2BB/U7
         +4lPNSUXZX/+jq2S++qw1rGVQ3Gjt8BKXET8Mfh9hwjyQM2FusJxdwlXPJ84mm+GKC0S
         BwcKewcZj49WdQP9MkEWOO6gNkNqKGvJ984iTLWQHUrDVdNONT79H+ty1bukAztPV2B0
         F1KA==
X-Forwarded-Encrypted: i=1; AJvYcCVIWd8MBDdsj2Bm8KK/MKnObgBSoKf600bwiYe6P34Q47/LV6u7qskzVAvzImYXalXXGUBfr3kRKQrF@vger.kernel.org
X-Gm-Message-State: AOJu0YzHkAdFIS62CrV2tA9+dR7EIuu90piFMbE+jN7YHqLJwmlSWMVC
	DooDimAa5UnsVKD6WADiIHq3VRVIHf2q+xyIpgnrbJNs7Y1z24j8M2RbJE9QvDDamHvSIbt3x6z
	SZ5tg4s1UrTCnbLLn1s2zVY+dn40iyVoZzTcMl5lLXQJmBjoU+KHLKmC62iMhC9GK
X-Gm-Gg: AY/fxX4qma+h8tO5QWeAGL7Rwge1aOAHleB/Ifz9x+lw/qAwfNxkiORsWjr0HqaAwbU
	E+q+VAk+y0rw3EjDdma0Q+6Lk502u6GHFxSkpIPqCIBjRrP3nZuwn2aXO2tE8FmrbhY37fgf1zO
	7D9bi8AdH3PFrP3SPc+/qpOAPoKtuF5bCIOmtGSmU3rvw9yEqdyQDC+zpZJGZeO2+KMONZmtz3n
	rHsOaakZdBljo8guvx5em7wRAWJ8jzYeOlLsfsFVqwq5+oVz0FnAiArfSdAnPhPei9/52JDmQv0
	ikqPAFtX13e+Nvb60zXw9+gPntq9FFtZfeqahHA+LYI2TRrY40bWaxOU4P/hIdAbf2L8flDX8hH
	BfJICsEIbFG1s7BeF9qvHfweu/7vE3jlP8sR2fA==
X-Received: by 2002:a05:6a00:e17:b0:7e8:43f5:bd10 with SMTP id d2e1a72fcca58-7ff66f56e6bmr36361942b3a.37.1767331232705;
        Thu, 01 Jan 2026 21:20:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHly042OPH62DQ7IOKOg1h08XaygrNSYVqJrBUKru2ednBgpEw3G/r7nv3uLUyM1eLyYp388g==
X-Received: by 2002:a05:6a00:e17:b0:7e8:43f5:bd10 with SMTP id d2e1a72fcca58-7ff66f56e6bmr36361917b3a.37.1767331232213;
        Thu, 01 Jan 2026 21:20:32 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423b9asm39686179b3a.28.2026.01.01.21.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jan 2026 21:20:31 -0800 (PST)
Message-ID: <d9a8dc0a-c0ee-4295-a4bc-ac19cc393a43@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 10:50:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: gcc-x1e80100: Add missing UFS symbol mux
 clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
 <20251230-ufs_symbol_clk-v1-2-47d46b24c087@oss.qualcomm.com>
 <o3jixtcjqbk3i756vy7umb45euu5ofpg4yv2za452xcje5shfa@qgzqnqslxctj>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <o3jixtcjqbk3i756vy7umb45euu5ofpg4yv2za452xcje5shfa@qgzqnqslxctj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: nATQPnv2duEP7Zp9xC3mzGCuojInEO95
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDA0OCBTYWx0ZWRfX16gWTlZZoPdU
 OyEZjVC61/hKY41q4xlY7yEWGsGgf0HIKGvcrylvRXvrQPJ+sYtzHgQ3Q3Uv/qfJNwf0w+WPmwz
 LF/Mv9sWuMaykOR7nEKbV2FTNYdJ9GvikjRSQKirzUJLMVR9lY+d5CDLFNpOhH+uazxawBdUWoY
 xKmtRwiI8UAJSHo8IUhDjkRln6OwqEnwSjTPdzwZHsFQrwcyd41LR34YciW4Vo40uAFEB8lcH6F
 8ZnDe8z6tMKfvWfcyFJ751z1SoBxDbJwaelCqAqgfl5dL6F1yF0fNItBV63HEPxHnU05Yh3mQ4w
 wZVlyJS3k3j9VjLEyQ1HtaEl5qMnYPPgtCNW0D4EwWuxVFkcsL6S9mzFu4P70RBtmX8jFEOqvjx
 CPYFjaYuSMgsnmiVcyXoUpd9kr33xjGutcnkfQiaok1Fjlf4zPibdenqJ4pnTxsZtZUfOjulRNS
 ErRB/jeFycH1OjWDNzg==
X-Proofpoint-GUID: nATQPnv2duEP7Zp9xC3mzGCuojInEO95
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=695755a1 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ftnYuWSyrbdvrsdxi-EA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020048



On 12/30/2025 11:39 PM, Dmitry Baryshkov wrote:
>>  };
>>  
>> +static const struct parent_map gcc_parent_map_37[] = {
>> +	{ P_UFS_PHY_RX_SYMBOL_0_CLK, 0 },
>> +	{ P_BI_TCXO, 2 },
>> +};
>> +
>> +static const struct clk_parent_data gcc_parent_data_37[] = {
>> +	{ .index = DT_UFS_PHY_RX_SYMBOL_0_CLK },
>> +	{ .index = DT_BI_TCXO },
>> +};
>> +
>> +static const struct parent_map gcc_parent_map_38[] = {
>> +	{ P_UFS_PHY_RX_SYMBOL_1_CLK, 0 },
>> +	{ P_BI_TCXO, 2 },
>> +};
>> +
>> +static const struct clk_parent_data gcc_parent_data_38[] = {
>> +	{ .index = DT_UFS_PHY_RX_SYMBOL_1_CLK },
>> +	{ .index = DT_BI_TCXO },
>> +};
>> +
>> +static const struct parent_map gcc_parent_map_39[] = {
>> +	{ P_UFS_PHY_TX_SYMBOL_0_CLK, 0 },
>> +	{ P_BI_TCXO, 2 },
>> +};
>> +
>> +static const struct clk_parent_data gcc_parent_data_39[] = {
>> +	{ .index = DT_UFS_PHY_TX_SYMBOL_0_CLK },
>> +	{ .index = DT_BI_TCXO },
>> +};
> And all of these parent maps and parent data are unused.

Sure, I will remove them in the next patch.

-- 
Thanks,
Taniya Das


