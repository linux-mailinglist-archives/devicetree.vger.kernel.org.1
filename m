Return-Path: <devicetree+bounces-160609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD80FA7047D
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 16:02:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70AC1188C887
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A6182566EA;
	Tue, 25 Mar 2025 15:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CbjF+1/1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6953208AD
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 15:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742914927; cv=none; b=OeLOg0SMFVwxA6sf6F74opTeIh+uYqxu1k1i9WLJtz9N9pHVtO+/jvSpSKjegAGL5wvxaDvCUC/47Ik0Qdbh13DaAa/seJ7J1laK/43UfYbn/CIQh1bUB1HOqBzRyElUFWZjOGbBraAckG96f+99wtFSFKe21vcMjH7l9H+Qjug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742914927; c=relaxed/simple;
	bh=BmAU/M5ltULQKNyysUK+FmVAyg56Vw499pyMf97QL5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GiVkik2HcmvplxQFrkWiv+Nw2GE2qNL4MX1mjdWtHO1NWFyxJ5Ol57tpr7FF/xp0qzykxsKJ1yrSUbZygyY+UGZFIAsy0QrprysRun2sHNG7EHBSUAxC2Zb3rZf15/TZZ+btC6skm5FlEcojBqKUZyBWTLplNn2PEGdGWAK29w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CbjF+1/1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52PCcBt0008057
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 15:02:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X0k0ZQD0agrNiXKZUYp0FW9zfWl3toreXjsE9ra4O2g=; b=CbjF+1/1Yq2dywFL
	jTy5EfswbVcrbTsyoOiogEiuXi6vLEZ3ysbQTQFGkcP85VA0O6O4zJ2Bs+E6QSY3
	q/nieWTGT102AExd81FHM2m3c56ZWseJCupiNFocqDh11W4TDlflboFdzTFN9yRX
	lbXNcVeybmOip2WTA3ftTiSHlxvAklDYZ4duF1xc5whNNkcz30PtzUFQm968tg2h
	EOuvNvnrTBd1TvImGyafZH1T/DZkaA5+pFYLj2rTunVa3m6++igiCT27heOmU8U8
	3rZeynf0IQ7hl4Ln1WJ88ZNnn+yUWTUad4yMGTSyC1IBcD3R62azPl2sniOaXqGk
	IUDLZw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kjjf27jg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 15:02:04 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2240a960f9cso94065545ad.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:02:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742914924; x=1743519724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X0k0ZQD0agrNiXKZUYp0FW9zfWl3toreXjsE9ra4O2g=;
        b=WQbyNA/nD2ZSqQFG882JnUbLVkH7nlKcCojTUB7NVDISyzZ9cIGU+lmT14IPLYB7AC
         WLhnprquqtY2g85M+G9sJEzB0Z8gSuLw9ojLsKyn/gPrisQrXxsbpB1t5a5l8s+pAyWf
         zlXZ5kQE2ljggjuBO9UV2X6/WCXLL79jV1g2yoB6SCSYBJZJYkXqs5S88Nsa6XCk8OcR
         uWaZp3w7af7ea7weH/1QtQ2kfbFg6zzCFHu8Raf+fhpDIX7NQzIORjZnnFx/Qv8Ocv/w
         sHuDwD2099aMNRO1UmJC6nzaX1To7GQC3rxyz2ETGpXrLmY771jZq3HCNxg02JGql71R
         dwpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzFttWta2Csm+sPHxpr4MfzVKj524qx96V4iH6gG9LyfIg2NatRYoOX/DgrJjxfkWa73oYDF+vv/bB@vger.kernel.org
X-Gm-Message-State: AOJu0YwwaA/Ce40RcS5K/jv14vZC2n7S+gdfcB/fcL/MrwZddY1nKFOK
	kyE9Hk2EiA1P3n5f2EVAnprXvXASGaTTvMgZX9Jw5lw7lMrR9VSzS6peqywqlZ3CsadmT5YUaKU
	jYvFRuOGhGahnIYTd9wAOV/ND7vcOnthtSuYTdUUKrMWFdKyCFWUTAV0HEQkn
X-Gm-Gg: ASbGncsW7K8WtxNxxKCrfO86ur8JoRR1LViGwfcKRFsAvsiTtMdvoiQx7cWQ8/bgqfy
	+IgivwTrPoCaCwoJ8+saEgbenX4vymXi3csL0yzpKzG0LEb3uLLMmMiQKH0LD9EYqzOzEJnqfym
	K2kFLv7lX9rMOxDiFl0V5qj4oh6dAaM2nFzXzyazYL6jNMPRciYO6vVe9r1DexWFxRCiDIxqcoy
	+Am16Zyte3sFV7d2ATmS1ZIHciBou/IlyisJTsbeY7/hB4pZ7ZaCl8wHbqLFj1U/Dka/RfRe713
	DCpfukgzU6gCsa3UxG3lB5T9lNHYOY3PABFYo4XY1+k+
X-Received: by 2002:a17:902:d542:b0:224:1eab:97b2 with SMTP id d9443c01a7336-22780e3d70fmr304420185ad.53.1742914923484;
        Tue, 25 Mar 2025 08:02:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1mPbYXqKt9EK8jIlWkvsYFnh2mt5OM6+fZ3t2Lqn9JZtCj2QkLKlfrd0drlQM6CvsRA1YVw==
X-Received: by 2002:a17:902:d542:b0:224:1eab:97b2 with SMTP id d9443c01a7336-22780e3d70fmr304419465ad.53.1742914922936;
        Tue, 25 Mar 2025 08:02:02 -0700 (PDT)
Received: from [192.168.1.149] ([110.226.153.220])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3030f60b919sm10390715a91.27.2025.03.25.08.01.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 08:02:02 -0700 (PDT)
Message-ID: <7029a455-47be-475d-b429-98031d227653@oss.qualcomm.com>
Date: Tue, 25 Mar 2025 20:31:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/5] Add snps,dis_u3_susphy_quirk for some QC targets
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
 <ee0848ea-7a06-4f4e-9115-5e3c0ab8bf95@oss.qualcomm.com>
Content-Language: en-US
From: Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <ee0848ea-7a06-4f4e-9115-5e3c0ab8bf95@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 58frYpXnhYDr2KuKS65dbuCUpHLBc7PW
X-Authority-Analysis: v=2.4 cv=Hol2G1TS c=1 sm=1 tr=0 ts=67e2c56c cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=xCN+fvAPfuA1Y6DlmAlLzA==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=izccJD69kMcyVaTehSsA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 58frYpXnhYDr2KuKS65dbuCUpHLBc7PW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_06,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=920
 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 spamscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250106



On 25-03-25 08:11 pm, Konrad Dybcio wrote:
> On 3/25/25 1:30 PM, Prashanth K wrote:
>> During device mode initialization on certain QC targets, before the
>> runstop bit is set, sometimes it's observed that the GEVNTADR{LO/HI}
>> register write fails. As a result, GEVTADDR registers are still 0x0.
>> Upon setting runstop bit, DWC3 controller attempts to write the new
>> events to address 0x0, causing an SMMU fault and system crash. More
>> info about the crash at [1].
>>
>> This was initially observed on SM8450 and later reported on few
>> other targets as well. As suggested by Qualcomm HW team, clearing
>> the GUSB3PIPECTL.SUSPHY bit resolves the issue by preventing register
>> write failures. Address this by setting the snps,dis_u3_susphy_quirk
>> to keep the GUSB3PIPECTL.SUSPHY bit cleared. This change was tested
>> on multiple targets (SM8350, SM8450 QCS615 etc.) for over an year
>> and hasn't exhibited any side effects.
>>
>> [1]: https://lore.kernel.org/all/fa94cbc9-e637-ba9b-8ec8-67c6955eca98@quicinc.com/
>>
>> Prashanth K (3):
>>   arm64: dts: qcom: sm8150: Add snps,dis_u3_susphy_quirk
>>   arm64: dts: qcom: sm8350: Add snps,dis_u3_susphy_quirk
>>   arm64: dts: qcom: sm8450: Add snps,dis_u3_susphy_quirk
>>
>> Pratham Pratap (2):
>>   arm64: dts: qcom: qcs615: Add snps,dis_u3_susphy_quirk
>>   arm64: dts: qcom: qdu1000: Add snps,dis_u3_susphy_quirk
> 
> Are there more targets affected, from the list of the ones currently
> supported upstream?
> 
> Konrad

My initial plan was to add it for all the QC platforms, but wasn't
confident enough about it. Because we have seen the issue only on these
targets and hence tested only on these.

Regards,
Prashanth K

