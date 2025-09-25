Return-Path: <devicetree+bounces-221408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D4563B9F54C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C6B7D4E36D6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 081F51DF75D;
	Thu, 25 Sep 2025 12:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jqA18vdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503F91DF979
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758804423; cv=none; b=MjmGWp8pfrEHXA4N5XNCae/j0WyL5RKU/ntVv2WI+hTGi7O36dViXW4mwJ4HipHH0CmtDHv6+dZAk2Gbs8EmHGWTX5f9RSVSYK9SGH+HEaMdoruwpEAiE2XNPuwsi5DJHXfdniG2/ybK8U+ik9EFRScw/gSbKny9NcXqv9/1Grw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758804423; c=relaxed/simple;
	bh=Sf3l9CHT01uRYsHEl0V9vF5wYANn0cN2l7qyPLMGwTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eKBDrUAnldbQu2wZ+N1ZS7BXv9fEtKVJZXFzRVzuz2YkNZXm60+YW0SPMgxhc6OViFoHdNT6PvjOe8YC30PgVsT3VyfPW6WKPKKnEfLAdCpMXWh8rzBNhq4Ve7aCILwe9hQbZ4nQ1xq08zCPwfaozXFEu8rEhuwKxnLVaukIOWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jqA18vdS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9jkS3023773
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:47:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m4djSLZXtAvXlpgvFemWia+EmnebRJaAYcpun5RmN1I=; b=jqA18vdS63rgkH/K
	9+QNA3ax73bNrzpf2zfelbtIBPv4o2/DH89fghA6RWHiuJU8cfIM9dyshIvvTnrJ
	jn6EYeC1f0eXlgPmx87Qg1xdMvc4gqciVdiAe7In+xzeeoRK4n06NJZZycesxz5+
	tNeGsPb7julQXchhf+ha9QcGFdXvfLFqRClCEgVTCMKOyKZZllXLCpOgKNvZLEqW
	KU2kbYpMkW0TczT4mz63TY5PzV/U2AUYh6+3hsfkUXLOIbh7gHZGN7pt2o4fRoit
	bMOCdXa/TitRujTI3m+dwRzoPrxaXKB6Kyp0/jTmuLez0EdnyISLAIit+Psmu1xC
	s0IwuA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0f4qm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:47:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-850dfe24644so38940385a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:47:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758804420; x=1759409220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m4djSLZXtAvXlpgvFemWia+EmnebRJaAYcpun5RmN1I=;
        b=agyU/yHw8HRgoIF5gFICUgi2Ey0AOrYq0JqCaxOs+dZb5KLIpjjBfUYS/ea2z3IoUy
         J21RKeNq6luHqFR9p/o4jjSRh+JVDhED52unhqQXpoXneHBkAXMO/UdBsZuc8BlJkmL0
         CAcjsTt+Y5mCo5K2JQk8Kvaq313rkRuM4BSNKwXIuk/l5E4z3yfhDJEcUZSSQKUHksaB
         0OzWDBxYAIqbuiNQaUQBn9iskkzZ3vX5d33BDdS6/cTmVslVGIylDPco0pCOaIiqO0ye
         jRYe/LFhGB0Uz5YV7+eVlpihpatwFn2+pcNYkFJsSQ+yKfk9eykARSUNTB0/KNxupRv/
         TnaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUy8Yio/sBSTCSA+suRyS6wM3nYlun3cITJfzKtwo/0F6YKc8Mzl63xmtypTZioNVbb5fUvTtv9eIAz@vger.kernel.org
X-Gm-Message-State: AOJu0YyvcY65pdLEK/ahAaqqbO+I8P7xGvUUvF6aRus25SP7AknfqtaH
	NcYOzc/ehcdVybyXO8zH0unezV44i0zpzJd7YBhHKX2cctTsx0FQ85cvov6jVqYkLqqPsP7RplU
	P6CPynUUq8jri8MLAROBulX95UF6VfHsh76dVehGFI2itxsrjkn0/ak+kmgyQQAnG
X-Gm-Gg: ASbGnctAUdFmZiVe3akDUU4nUdhTgDluLYTQjkMsG67k3PrRL8K5EfQaXjA1cojYP5q
	LOT55yME2lG34TSviwA6gAB2oR/enbG6AXuDMAkFxg3KUOirSh4d3v+nS2nUP4HJzkEkCqC/F6N
	yypdg71xFd+g1ylKCD/7/fYf9Y8kK3BDu5OSev+C7mFt/PY5i8bnN8r+2yr7hACaL54NdOoAdIZ
	+eRbhhw/OC9iA/nl4s+PUWC1u+CZqYe1mtKnB5w1AlbqdYF7y6Qo3XqlYUD0N2GmWcUOkSG1qCU
	VCiQzkg/QTEliH9FJ6TH5lEeKmPlYRdChZv65Bs0/9QGs0MX7OZ8qzz5cf++5qipDdunXB2ZhE4
	kF/iDW9cEnFR4gN10k/I+Kw==
X-Received: by 2002:a05:620a:1727:b0:84d:f048:d795 with SMTP id af79cd13be357-85ae0dc2b92mr287455185a.5.1758804420214;
        Thu, 25 Sep 2025 05:47:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFb6/eSVSPaLmQN76rHLSNw8JAIbpMfof7DPaUmUXWN6Zyw726mb2YnBoPc4+zEUrPWqel5g==
X-Received: by 2002:a05:620a:1727:b0:84d:f048:d795 with SMTP id af79cd13be357-85ae0dc2b92mr287452085a.5.1758804419583;
        Thu, 25 Sep 2025 05:46:59 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm160873566b.26.2025.09.25.05.46.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:46:59 -0700 (PDT)
Message-ID: <25deb71e-f3dd-4766-b520-07ae72055e99@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:46:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] clk: qcom: clk-alpha-pll: Add support for controlling
 Rivian PLL
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-9-29b02b818782@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-clk-v1-9-29b02b818782@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d539c5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4MofXZx8MfQD9CL7cgkA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: TyUUNwPVJzvTRP8KwdjYTFmeal1gmdZE
X-Proofpoint-ORIG-GUID: TyUUNwPVJzvTRP8KwdjYTFmeal1gmdZE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX/1Q5rdwnXNK9
 vrWTCK7tsCr0wNOUfXlAajr/AaRRuItF+VNQGiksQI9WCY6jF+emWTYBRp7qFYqEcEmuSU8R+7u
 n8XLfElUVUo4YC9O1KPg5r09BtWp9Zl2hE9UFAxo94DdML1DLfUainVjiyuDENnTyVj+17v6bN7
 wX8eOGANXe5VFDKLSdDtgvjAzLOIeYWe+/pOiHuVKGeeieASBs1w3G5sn+2Pl4ICsmW6A30MXGB
 UKyJXsWRa9pxTC7IZbbnti+BpXe85HD5X2/YjkRJQbPyC82249uM4QXSD98S13+MDO1NunjWSEm
 FYK9ayWVkJLYunL1ncRpbgpoe8bwn0Ko91ZJAjy0LcHw5nwUkwsLDycM2VN1rneihTqi5d7nBtp
 q5nYfJ7N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

On 9/25/25 12:59 AM, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add clock ops for Rivian ELU and EKO_T PLLs, add the register offsets
> for the Rivian ELU PLL. Since ELU and EKO_T shared the same offsets and
> PLL ops, reuse the Rivian EKO_T enum.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

