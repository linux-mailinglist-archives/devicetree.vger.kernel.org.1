Return-Path: <devicetree+bounces-253861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB24FD12071
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:51:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C24943024389
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493DD34D3B3;
	Mon, 12 Jan 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SX9BlSvD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XcdTbA9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004DD34C838
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215033; cv=none; b=ZeO562WuTmOj3OYU0V5Tvx2T9IMwkQmFlYWlr0JnUqGHc6tLgGa2gL8VUjT9Y+MZx4UkKR+XBtFJIK1+BrGCgNNcAqNn40PcE2uNaqyyiVMGWpx7wo5UOfA036Z+RX8zrVP4Sy27XDn5Tqb78vMbuFHGw8KdQzU/UqbtuGSQO7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215033; c=relaxed/simple;
	bh=IsVLehBJVBM/orD1WBarWA8J7vougmiD8pCLYq7MD8o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PCBrB1dosHQppHnTkt8kDFUm4QqzlDTLnl6uEegbKIhZ2JJ1vZCojpzqC7j1G64R0eS0q++GvAWtT3fAPAm3CogmuVNRZ4UmF8JaSMVytSWLlY57C/8bwM+oN/UFEfRY66uA3GR0PaCBWW5bGHTFJsgsEXqJq+teKmr0O+g/hXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SX9BlSvD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XcdTbA9k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8pQB2113363
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:50:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RaJg0AmfyURXApjJzRfjkDyyCkO5N/CSZAYcqWNPbf8=; b=SX9BlSvDmyGmmbbi
	39gOlE7axdnS8WqnXkubmeZ1g07CZeVW966BskNaNrs3o5vPH75ZrJCtfMj3PBHP
	4lU4Pb0faFo1OmsRtk/NLhyjvzoIHyYc8Q9k/gXIP880c1hWnlZ36SBq1G98jMDA
	kSk2efWtpcJt9VxnEUiho6lZwkEg982+2bCJV2gPfkzaZg1NYeijzVXpetSz2K0z
	0G9Sy3LHaqyimcxnsi0RfhA770vsqePei813bI+d9AgxYk3ZemqhewIRVdxsH9Kg
	xFQWvMQ8g2f/I3KxU9dvSNpg8qzCoZ8Xes5NJM8SJy/sVCpbTaqGXfN/d/2gQkaB
	BwmDUw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmr4uhedy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:50:29 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8887c61412bso16466936d6.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768215028; x=1768819828; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RaJg0AmfyURXApjJzRfjkDyyCkO5N/CSZAYcqWNPbf8=;
        b=XcdTbA9kRockjeqRi3+y5MlpaU3S2OYWfA/4tL10eBCWDsZa3TA3qTyl3fnDDOaVlV
         w9ULRdirg2RD2S4IM3boybajRAwpbWCqdxpixTO8Xm7RzTHiDauTR9LUWYKkcIMlazRB
         WohqWkqcQEI69w3t/DVMGjUSU9Ei4DX9eJOJuiQumAX4TljTcopieEq7gcWoYoEI1zXs
         UvfAAU3pXeV2/YzGcURz7lsO9SlK6XNDBiTNDx3vrCwV0tqjBBbDaTVcrhtLU3TQPFhH
         CoGJ4ql+wmWqnAdBKJV33OI8Ety3ExyAhjib2jCPQNDWJZ0AX+fO1rJdGNRTJayhEepa
         f42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768215028; x=1768819828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RaJg0AmfyURXApjJzRfjkDyyCkO5N/CSZAYcqWNPbf8=;
        b=twqsjj70haWJ4NjOG2LVWt4Qr3F9ghRZcWPfTrzlcTdaVc1iyZ6rl+Ux6UmPo/zPnT
         iyDlBw8QkwP1v2l4yZ6BOsw6vQA/lpwSCgUmm8tTXsDxmY99aTO/phy/oD40GlqYot6F
         eFt+0+KUFfjFDdmd3qtlcit/qalBvQXL6EVVPNYaD5keSBy1vTznB+uySyhy57o3CX8m
         OXsdDW3WVoWQTI7ICNp750hFX/aptEkbTcKSGNlq/td6dSli2tnd85XzmbwiIvOxHqLG
         2NZP7KL2mZLbAT9zJAUQWrwNrYM4k11FiHzHsvyiwvYDRDRLger6siGX14EFARkY3EeA
         mr3A==
X-Forwarded-Encrypted: i=1; AJvYcCUACcAChVTj3Y/b5arSlWrP0UOx2j+t6VDhrGhOy2exhrcPvWDp+J7/Qe6JeDfRN5+j/3bbps3uSzJt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu0awx+ww8D78jlIdYXf2yzazN+R87cNSgOGN6vVcz83+gYoDg
	5/vOjtKpaT+xW3cChvGdXGtG45XADfEWhU9JFrdJehHOtV/GRCBRSi91eirJ8Gb1GXKyWXrp4oV
	/a6IcYVkMKJV7VxgaROkETuwSk6yh/T6dfWrxOtfKqFZlOSD0KeE7tvllGIfcR7gcZd7/nJdd
X-Gm-Gg: AY/fxX4pscGfMxjDN1yrk6CTbiwE9sJBQLfuQh+xQr7QbUgwVe/Yv9Lq7v48bzHFh5Z
	yl71mLiE4RDE71ufy/u85O9oRf6aQPLRYtvSKaOndgjkwV1Y5xcJFqTI1JPrJVYSSTwuI0E7TVJ
	sanBSXWrm1GPS3idoO+3ASQYCQxmso495NRBvmLGs7WXTL5AhQ6XCNfQAfZpK/sOjWZ84qrhDXM
	jbaexChMPMclSpx4kwUov6wmb5FN6ODcRvRsTWYtiTqHCkjXOlHb7FEFnc5KpwuJ5aHOFuRpF4u
	e4JDm1TLCfYOU6L1w9gmA8yz+lNl8GqueQG8yqMwbarwGQeuCO32DbDQfe/EO9o20+t4ZFfpWvE
	SVUCxXibHVWTfSP5WmfuUEelnvOac51eaOs2JvDWbVoXogjzff5KTuucTKKUMWCEYLZM=
X-Received: by 2002:ac8:5907:0:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-4ffb48df384mr190727881cf.4.1768215028258;
        Mon, 12 Jan 2026 02:50:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5NQP3feSO4kjE1u0NdMpWXYwUnNSeO+Rz4n65pYElDW7btJLDWaGKEDRVsw9BtjzvawpqiA==
X-Received: by 2002:ac8:5907:0:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-4ffb48df384mr190727721cf.4.1768215027873;
        Mon, 12 Jan 2026 02:50:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4cfe60sm1893326866b.45.2026.01.12.02.50.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:50:27 -0800 (PST)
Message-ID: <2f0d6bd9-0786-4445-94d2-5189f6b44d01@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:50:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Val Packett <val@packett.cool>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
 <wyqml5ywfzwh3uulp4gzlfzx24kb2545w36pkpnz5g27xtnqoi@yywysi37tdor>
 <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NiBTYWx0ZWRfX3WJPZnXEwzI/
 sdyoJbvgpO93GvwSUqTrWBw8gjvlt6GP9QT3+tl1C9jGcTJuuAzQJ5dj5Ifb49eDvMe0fvWxxA9
 WAQf+Ln+0OXHW6/OnHWI4sNahIqwfka+V6w/rH2nPVziZlFZCk28bHF4RyIVdWOW7GqwyE4f3XV
 ApGQ4eX+jmkz3lju2n6SlWytvXn1koAFK36Q2fanrxRmqY6vnRWD2K1M6DMwugZOkvtK0TzHKnV
 di9KHy2gp09E3+5wmalpAGoTWuJrs1ofKhFg9YaoH7ppJAWqgEYtr8SmWR9Fh42s6uEpAeMklKg
 GdS21ml4a0xRGfHdaZOm+L0U5N8TRcYniJQz966eOt3a5/cmVZAYpVbJBXoZakmzPMdhBQBe4KS
 0Bgwo2/4+UayvrdYDghpzvfPO1Sdmg1l+xL3xdClpIHKAK123antIsodiVlGML3po28VKsT3PDW
 XcK23kI46+uyvw0YyaA==
X-Proofpoint-ORIG-GUID: Lt4lmYbu4UquPAW7GiK_sUjqWooDSjLj
X-Authority-Analysis: v=2.4 cv=YocChoYX c=1 sm=1 tr=0 ts=6964d1f5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=4wxxkzZ3dqSFo71sv2EA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: Lt4lmYbu4UquPAW7GiK_sUjqWooDSjLj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120086

On 1/12/26 1:31 AM, Val Packett wrote:
> [resent for the lists as plaintext, oops]
> 
> On 1/11/26 1:50 PM, Dmitry Baryshkov wrote:
> 
>> On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
>>> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
>>> [..]
>>> +&dpu_intf1_out {
>>> +    /delete-property/ remote-endpoint;
>> Why? It should not be necessary.
> 
> It seemed to be implicated in annoying EPROBE_DEFER issues.. But you're right, it wasn't this after all.
> 
>>> +
>>> +&pm6150_pon {
>>> +    status = "disabled";
>> Do you know, how is Power-On routed?
> I think it's handled by the EC. Keeping this enabled doesn't make power-off work, and doesn't make the power button deliver events either.
>>> +};

FYI I don't think a modern QC SoC can turn on without PON

What do you mean by "doesn't make power-off work"?

Konrad

