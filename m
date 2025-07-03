Return-Path: <devicetree+bounces-192661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F420AF7391
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:17:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 445931C486C7
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE95C2E62DD;
	Thu,  3 Jul 2025 12:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ICjvnVjY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B58026528C
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751544981; cv=none; b=Ouj281gPrtJ9cRCwj0RFwEAG/IYS7WhPeU8rSC4LXmO41YmN+Gq1p2eNTlj/O2iGkradaj2sccsBP3geMAHMsQNFhRBCRXCZ0OCzqqcIRQiiCkKVcvZJ2crgKf/25TgZXAFj/9AfPjCtLZejQvQsp3UYs1DDvEPlj2U2MY7PTOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751544981; c=relaxed/simple;
	bh=wqz04Db6LoZ9YrCmc82vhkASDZs0DPlOdRoUbKw44cM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=je4GlpokPoB+t9PpYKFB+/t5bz4bTXWeszdk5Ig3VE+qLNX7YAhfOqDl5yLr3iuUpIInZcK9hZU8w5NwpCSg2Cfyixew9QD0nRK1j6QkY/ZPbWP7ZbhP1ruwQDanLFMh++DDq5SBQgJGZAAt8GxnTtYPsYPRnCJmlkN8ySpuaT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ICjvnVjY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5636CGD3006750
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 12:16:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VkKzD5qOAqZJdTLWvOv7/OBA1XDD5p0ax7HN7SWd3zA=; b=ICjvnVjY3rSvxC8H
	Rs3oOg97hLP4jbDcnW3srMrXJhYLCnNFqdph63UBFw9+gHvVoKmQGbaGNlFTluMg
	CGr03xkjJ5VMFrzoeAT6k7P8OAQSV+I7YFvJq2jJERMCpGrbC6g7DM+WRvfEa9FA
	Sr/cE8OdD/9H5q3awv2RBv0HyWaVdbG/lxKRkyjkzKHwu9GQUqIa5rjBt954qZ2C
	PBsq9xKgJYmga65O1ouiAZPrCX8unTLBILn7J+soMoyQgNSxa4OviYq/ehZZelWJ
	ZZpBI/mYiJGOGTPGSySVdr+OKG22UY6xyS1RQKT7PlQdAvR1zUbVpYm3/C/dZ66R
	Aqfmpg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47napw2mkg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 12:16:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d094e04aa4so234057785a.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751544977; x=1752149777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VkKzD5qOAqZJdTLWvOv7/OBA1XDD5p0ax7HN7SWd3zA=;
        b=UzjlFSRRpkrD1zJdhHDNE4u046uOw9ljrKnf+krYCLe1F1q2OG7ZqMNfaQn8CQeDbj
         lmE3ygBaI7qsNFnx8HOO7MCVWCuoeynXEvzLeoxKZjzFTbzTcqApZrWgzM8vVkoZiPvq
         oddzyNYpaWKqwJ3a26kxa/yHw3LEhuWR//GPj75cvIVfHQdTRaJCC2cD7ei2hWwqQ2nr
         LZEfHkEAq2cA4h0Naiuko8fPkUdopG9dRtbfSdnL3uW06iPzgYriEWu6U64JPTrd7tmo
         5z1Fa1P6hr8StvjmwPpXH7sCHAWRR4bNfq0suPKmtEd2H97DQdAgd+ALEisRkyDLWaue
         cuiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpPsVqujOE0VJ4q09T8k6zVetNkuo2u4Xgwma8/bjxuQgvoFTclVU5rC3uJNuwtC2NuVPZ5f6Zc70K@vger.kernel.org
X-Gm-Message-State: AOJu0YyRh6VevYH3+BAmECSxCL65J+i/9vaWm63ShpuwUc/rZ7WeJ1ZE
	5hxikxZVvNRgq4fOwi7vFaOcpObkRqVi8sq0kqkpjtycbYcuoMV/q0c3Qu78pK/33uktVcg2a7b
	zNXM4hq7oPqMu/BGzDp45w98BifvXQvpAHP7OTmEOQeB6oiWNPCYKoJCPmVujzQ1T
X-Gm-Gg: ASbGncsGXv2ay8xXyFY91mIRU7dBRTi2KyHGp2QOHj9KPenbIbiDLi8FmfJi62g5gQ+
	U7MWOpP7T+/35KLKBNWjU5VuYp6dvqw5VByp3aqGxtjV/or+/ujU02JBwE0M4LKOA1PwTUOmZk5
	jpX5bNXyEmUeebvfTECIwGA4TTPHhbtBUffjVgLOv41IaO/xSuUMxqycY11dkRy8p7WWvEscBC2
	YBpzelfe5t0t/AMNVYPpIkmP5d1RbGpzibOuszrw6LWnpVscyxY2HReFXwiW2nVQfyAcKCBsUjy
	2Cjg1UIm8Z32Plq73OSqXfaiHgK9TZ83E+goGmBtI4BDgMtt1FF77Bh/lF3orACow4qgyLXbXJ9
	xrPAeJ+f5
X-Received: by 2002:a05:620a:4553:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7d5d3edaafemr103808785a.2.1751544976963;
        Thu, 03 Jul 2025 05:16:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUrtibPHvr8N2yWud8azUvDMAXwVyMTTd9CkJd3HPkF5mfJT5kEni5VZ3YyZtkHv1BLI2AFQ==
X-Received: by 2002:a05:620a:4553:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7d5d3edaafemr103806385a.2.1751544976513;
        Thu, 03 Jul 2025 05:16:16 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3d0351285sm179677866b.23.2025.07.03.05.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 05:16:11 -0700 (PDT)
Message-ID: <185e2398-e804-46c6-ba94-44c42cce684c@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 14:16:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 9/9] arm64: dts: qcom: qcm6490-idp: Add sound card
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250625082927.31038-1-quic_pkumpatl@quicinc.com>
 <20250625082927.31038-10-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625082927.31038-10-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dIKmmPZb c=1 sm=1 tr=0 ts=68667492 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=m2XL-mgSGVCMsbPKemYA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDEwMiBTYWx0ZWRfXydWzsTkPsweH
 4ELuzmj+PzaIlBIc7HQFJwFcRvVuQsH2N6jLSrsP9aF638k7p24Mg9Kv4wnCfXFQVgmpBEpkk+f
 rv6kqRp2AhglJMZm0fMoX4XUeFpkoQWRqU/Z0wgA5n9vC1lOenGcv/EpXItbkzLQh72l1yOJL9W
 JXSOXx+TMRTzwrguakcX4GnoITpquHBI8yuGlOsE/3L1LA6J6RIsFXROyhURCFPQJVcueumhPa3
 5up50CaiWarYb2qKhpA9orAxskcojnlkV16ye2p9vg0uoJVHVxzwLVcer35cAlEXpfQirAZ+lCp
 QxQ3U/U7HmwbTiQL9Js1cvyozkk50yP2cw0ZchPNvJX1dZEyevUmDw8OW3KRqYPeZI7WhBda/nX
 8surmwoowlQuio1m0GGfA3pTO/pj4wDsJ9m8VvZhRIGHJXB9RGZPUyCjbr2dry5IzhLgzSMk
X-Proofpoint-GUID: 4Wb7r9FEKeTPTmLfZp80wftwmAvigEH3
X-Proofpoint-ORIG-GUID: 4Wb7r9FEKeTPTmLfZp80wftwmAvigEH3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=810 phishscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030102



On 25-Jun-25 10:29, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add the sound card node with tested playback over WSA8835 speakers,
> digital on-board mics along with wcd9370 headset playabck and record.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

