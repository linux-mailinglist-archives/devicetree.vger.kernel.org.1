Return-Path: <devicetree+bounces-217465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECBAB57DBB
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4561A17483A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48EC6321F3F;
	Mon, 15 Sep 2025 13:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YweElsmi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5763C31B101
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757943772; cv=none; b=MBdK3nSd7Lebxb2GOJzDR0z1yyj2Ye48DsydJ0Yci6WPrtSMlhcMBeRSy352//ZIsfL+sbvVkGPBZ3SHMln20RMqG4BVJkQdVoFVByDMXjAvuX9ZqKAOz0YJ8NzIOPLttg08J5HTacBPbestDsZPwUGc/uL+j7ldBJcGqzaPWbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757943772; c=relaxed/simple;
	bh=M5RHgPucAavaK9i2L+zRCxXrGX3r4X2NxswK9RXwFek=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eeOmxBvQ3OfqWNxJN447M4nrPxjEB5BIcxE9eXRI3J6jftUjfn+cWDcF4d3ihgXMf0TialAVwNtlttQFxzuHLgoBzw42TYfrSk1TEMan0vZrOFTxieuOY2C2Z6RVjpJveZht/OG+fEDcDWNdVzSy38M+jLc+KMD5RbF8nV5d658=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YweElsmi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FgnD031661
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:42:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4/3kWKrV7ZPI5tWosvI/mMuCkZRCGDU56/gZl94qUbk=; b=YweElsmiqvOCE4Ni
	nqZ4oW6FGkm4nsI2jNh9icg8U6Qc/VZY/dcRplP1q/5YUuKPsOjZWc8JhC2miLFW
	U6WGDUjbVkISHnlVP1p1p1BsLtCl3zq5TnE5lVqHUphviFxspWixYItDpbK8cMZN
	e3nSrQIpQohZwUcJdKbukM1YozRq1i0BiAkAq/U+ap0IKTvEdGOfYu4n18GchX8G
	fGuL6Y2hS2I+WHE2Ps/I4HNxlGCnNH+9Zkp48jC26G278M3DDFO8gNkA7HR3FkMX
	O2JH360P6sTCK3oYRFeZv2IPB5i+tzy+FrssYuuNLpebW8rTi8psec81UdPky4A7
	kTz7rA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma56fq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:42:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-77e3b8505a7so6992426d6.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:42:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757943768; x=1758548568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4/3kWKrV7ZPI5tWosvI/mMuCkZRCGDU56/gZl94qUbk=;
        b=WyrmqSlYA48/NC0QuAyaweMnTXa/gIrDlr+NbIiUc4amJ/C5PGJ3tvUEXpfgvUnqvm
         gaqdXha+3iIIoBLGDIiYMct1LtVyCwiYDkyReGA+NLaydj4y3B9am3FXu5u1/Fop7aGT
         tE5eAuSivhvOOCS2qLotD9m9Ajb6zB6otS+LCQ+2qKUPptzrGaEQohFFVo/j+5o/mBVi
         evY9+9jGniJdgWAfvCIu7MdqUhG1rntlHcA6UWfWSH2S98ryvAQLS6m7TtxhkKel2Jur
         qSRy1/b1fUNBCcKtXGZRqdzN+JCixDyXAEkdVMgMgEe165OYlakiKNNvJSOELhhkllY8
         rXUA==
X-Forwarded-Encrypted: i=1; AJvYcCUhkAwg9tkfb90aULy9ox2EZozW7WsNY46s2WCvCiVuMrIH37mal5wByiECGgmlizIzV/jbnY5J439o@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6lATr31tCuh+y2kS80KYxyMb/woMtYaM52tNWbDmN9/new7vq
	y7elzm+QtuAJnQb6c5RLgHTOg638zNDbrMrVm0x0vysucF9JF6+yr3m7/LmMXIKVe2IdJxGXJ3m
	srMhHT9eLlO2XRDir85yo1m1GPNDBC+AS6JEvU0bn5YsUNgVHS3DvqogrVG85iuZZ
X-Gm-Gg: ASbGncuRPoDzs24cHNMTtlrPAgZ11wOjaRfHeLroZAySbz3f/HWK6ZqGyRzX4lHOmxo
	NC8qAWzmrqk6nDSIOXGZ5nmmhjSWVCYJOqBSdxWf9BZijxY07pf7has6i9eQ1ofoZiAPuHh8Bj+
	Xy3q2LG1bh/F2Regx55chAI4JsxqS7j9QHJhb0gt0cydlJc8Ny4F9w9uUGDgK3s1P6gFtRRp4Fl
	lWK1o08vMdBXMNJbVJuquTcWt4wqOGqpWFvT1PEtb6JZdAk1srxEGSDZu3fDd+EhRtMjIhF0Ogp
	Cu0BEr4uj+VMpuWlpMobZA/hpRWIyZd5HZHwVpfEO4wNcYgzJyk6aPLP1alkW5kELr7a4BBdm5/
	UWLGED9GopaKdR62oQD47FQ==
X-Received: by 2002:ac8:5953:0:b0:4b5:f4c0:60b with SMTP id d75a77b69052e-4b77d087e8dmr103184511cf.11.1757943767859;
        Mon, 15 Sep 2025 06:42:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGqsH+rP410sg5iFE/J6ASYV/Uui6s8GeSdgdfcTItelaC5HbIEhMT5aYL8jp5pYysXYPv6A==
X-Received: by 2002:ac8:5953:0:b0:4b5:f4c0:60b with SMTP id d75a77b69052e-4b77d087e8dmr103184061cf.11.1757943767274;
        Mon, 15 Sep 2025 06:42:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32ddf93sm940209866b.69.2025.09.15.06.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 06:42:46 -0700 (PDT)
Message-ID: <d10424b3-b70f-4166-adca-f81fcb214e04@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 15:42:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: msm8939: Add missing MDSS reset
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-2-a5c705df0c45@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250915-msm8916-resets-v1-2-a5c705df0c45@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX9O3HWX5fCkvr
 jKuaZOTSXXLwpL04iXIGHgAQ7xw4PYht2pqL9CPTewx6tpaxbX5uYRk/pnVL2qOXvWVG11WJe/H
 yGHjPkEZmWt+Vbptodq7/NTRzpuelogyDDeVg0X+6kuMEGifRe8K2DveZYEYduD6hwbRwG7A1SN
 V2YdTTFjfT+6McwMYpdeSupgdGR/1R3oFl6xO++PdxV0gzxqLyMaAiuR8+0eqcqln8nC0D80RH6
 oPX9RlLzXBKmc24irfLa0J5GJmaB1EjNLGgi7+JOq1W8SaBZjbVdlmSH7Qo+vv/q1sIxbuTdbvh
 hsSrTJDOBW2i52sYos+vC16S2w/cWnoVMVQEwv5j1W8I5idcgjaKgaI/hOZAnnuJZhqiGoJWHTA
 ywCDdMYN
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c817d9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=M_eXORl3-W3UjsCHqzwA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: kFyaeVtju6jYx4uol6g6inrmoVTMHomf
X-Proofpoint-GUID: kFyaeVtju6jYx4uol6g6inrmoVTMHomf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On 9/15/25 3:28 PM, Stephan Gerhold wrote:
> On most MSM8939 devices, the bootloader already initializes the display to
> show the boot splash screen. In this situation, MDSS is already configured
> and left running when starting Linux. To avoid side effects from the
> bootloader configuration, the MDSS reset can be specified in the device
> tree to start again with a clean hardware state.
> 
> The reset for MDSS is currently missing in msm8939.dtsi, which causes
> errors when the MDSS driver tries to re-initialize the registers:
> 
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  ...
> 
> It turns out that we have always indirectly worked around this by building
> the MDSS driver as a module. Before v6.17, the power domain was temporarily
> turned off until the module was loaded, long enough to clear the register
> contents. In v6.17, power domains are not turned off during boot until
> sync_state() happens, so this is no longer working. Even before v6.17 this
> resulted in broken behavior, but notably only when the MDSS driver was
> built-in instead of a module.
> 
> Cc: stable@vger.kernel.org
> Fixes: 61550c6c156c ("arm64: dts: qcom: Add msm8939 SoC")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

