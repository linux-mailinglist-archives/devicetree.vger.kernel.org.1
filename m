Return-Path: <devicetree+bounces-226655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F10BDA4D7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D78219A357B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A912F90C4;
	Tue, 14 Oct 2025 15:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KcL8iZDq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756C42C17B2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760455084; cv=none; b=LnC1MXOFSurXqVQCkdWxd3rETiOfGfjpWe6drcIy9sZ3+KzOfAuFQQz7ZVhnyO4dQPbjrGBUGWfpCpvF/bfIMVT658Ak7J2bZcqArK0rMBDSXn1Qs4umn5ZqjDISpLnW/JPhe3fQrBLGj/F1dO7cgkha9Yrfsxx0Eyvj7Xu5QEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760455084; c=relaxed/simple;
	bh=2qslDTOkNHTx5U1EAPc0LcinIVRSAoRDmbEkzn5ZsKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dEcb16cZVB8WSOqwdaJ034FsoCLIPqgT9UvvDY3j6q9VoFtVmmI+aEcA5SpzG3TA6CG5Nvu2c17zfGLbf7VgCyzkodN+Fb71ewsoHfajnx0nW9FOVN0bz0Zq+Aefd9Sjc2Qv/qiS4laBKgBD1Gk48iO/zmglxaNwN5Z09f32mAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KcL8iZDq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EF4xcr001716
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:18:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2qslDTOkNHTx5U1EAPc0LcinIVRSAoRDmbEkzn5ZsKY=; b=KcL8iZDqF7OHLSib
	ydzB5l/Xf5tpGyxwXbUYnRMX109gyO841tfYcWnKI2WViW3SQeIRmY3l059daoOQ
	H6DPaH9JVeuiI02nhy8QNwKMW86WcGe3HC4MqeyYdop72nWDfiTVAeV0wc4NA37d
	lmH/MXUYtpqIPrSFCZOsS9ydcRATamSgjcWXWcPck3BjF2PuDODb5WEPJXTrWRXj
	LqtsN84hPxSL2RMuVejsILYfjUsspygAqytbegF7jxdShUtOr9I3T+12QizoAutT
	zodYoGAG32u0qMHHDsJCs/SiX+KSDrOFTra4LAFyjF9um9gTPKvDh3WBrZALdFfW
	I9kpWA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa890g5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:18:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85d43cd080eso315784185a.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:18:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760455080; x=1761059880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2qslDTOkNHTx5U1EAPc0LcinIVRSAoRDmbEkzn5ZsKY=;
        b=cCcusZhLm4Ou2tRNmWRfBsNujTr9Z/q4yOug1nzPlWWzuNIup+c3AWSbp940b4kqTe
         Dk4FRZcKe5JPa1rhddCsohANexeXlHd3h9MTpRTfAfPkwVWlvYILjv8KEYr9p74xjb8a
         YgvtlzbVxEyDjtfSO2sGTSFZ4OjGXgIj9m+6nYKqZRr5ZfEU/VERgxGuw6zPhU6YCYgn
         6Vr0/9+H++wXBR5DrKVXtnib+vdz2vSQpRANw7tQ3ngUhIZfU9dXxfzkujx8kYRp29lg
         xRVVujWIuaeZX/Ci6i0B+Uh9K5kZQ/YnejbK4zRauWPU2/fBi7N/mXCJ9APxTJhib5RL
         H97A==
X-Forwarded-Encrypted: i=1; AJvYcCWtn2ua0GeSD/Wj9+VLabosNnVyqv804bkoQm+Y/eSzrymKrvI0PCjlM+rr0kauBlcyD6psS4cwMMfB@vger.kernel.org
X-Gm-Message-State: AOJu0Yytbx+dWlvOHFDN3tpm0qhWPErdr0YOt9MeuQuiw4hko7fw8/0m
	8YAkyNyuiEgoYvvut1wfFx80IxkEL6d0OtwVxe2bbJyMJgbSfEjr/yVAEFYSqmpvpB8OVMZkOlC
	+8AfcOUQrzaI4ZWoJtymMbT/+ggAdZwpi7dlyuyy7rVLxFJqBEpfLnWuzdq4lHXGf
X-Gm-Gg: ASbGncsHCl66E063fyXARhI9B19/R2WUBHjWNyM7hQvScuSLJHIfeUlKWZgO2p4lNqy
	XINeyWEbX6vvUgvrOdImKszZbYA+v9VRESiaBWYE6JZ2QYUwQ+k+VmvmTDNKuBpWYxuCd9DnGOx
	u9ECWNuLmIGOLT5ZWbpNvu4iWN6fzzmgCfWq0B2a73xv4WR2Pi3nIrTBfemk4jWZL//6cvpE6VK
	+3RBeO435kcBPa3HpCLnyXLmQyCS90Tc//P3wUMENChVW9Hl0moYNV4Qf78I2rbZl01bZd88myP
	tHqOV4nN8Ptnl8B3ZGxrmtEzxKyLtpGjCcZjdvXA1JE4svQiyD84jHoW883qhb1lHkd0rnfZdjb
	mRHfY2lJm9VYI5J66NvRcLQ==
X-Received: by 2002:a05:620a:290e:b0:7e8:c4f:614b with SMTP id af79cd13be357-88350c6dc10mr2342970485a.7.1760455079937;
        Tue, 14 Oct 2025 08:17:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5WpyshMmM85giLMhcoK99ytmz5Lh13t9+32hYBwMSqBtMDGYaB1ldRbtBW8hSXyfDZaJ+Wg==
X-Received: by 2002:a05:620a:290e:b0:7e8:c4f:614b with SMTP id af79cd13be357-88350c6dc10mr2342964585a.7.1760455079021;
        Tue, 14 Oct 2025 08:17:59 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccaaba9sm2866166b.55.2025.10.14.08.17.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 08:17:58 -0700 (PDT)
Message-ID: <d06a254f-bf54-4bdf-bd09-3ee5e5b31bad@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 17:17:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: r0q: add touchscreen support
To: Ghatto <ghatto404@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
 <20251014044135.177210-4-ghatto404@gmail.com>
 <e114504e-4bdd-46b9-b708-8eebc3075163@oss.qualcomm.com>
 <CAMQHOhfjsi1L+3j3TrcjEjPp3xkn94KOdsrVZvJCyUDFBBSeqg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMQHOhfjsi1L+3j3TrcjEjPp3xkn94KOdsrVZvJCyUDFBBSeqg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7iCbqDZ3sf0F9j-V0UfeLW0H9s75hwIM
X-Proofpoint-ORIG-GUID: 7iCbqDZ3sf0F9j-V0UfeLW0H9s75hwIM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX+VLF2CzxlQPm
 kGx3R4W/5KMX4PS89xo8wOGGYlPxyrQiksKS6i/cHpSija9Z7ZeRSYAZf8oS58sZAaw6pOH23U3
 0+4KEVTj0O+M6f3tPEPfbKm9Ju10vprnFUHzLJ/lx6pAz+TGHI7NHaIr4+QtswcGkrVLSWitd/I
 dQq8qE1mhAfw5lqVZiyoPPIa3JlyIeqRV1sGOz9Du2WA8za0ut/gIE+LJ9+h2+6dl3nnEF2iOiA
 zqUcBpB99HuDpN+6EaydIdiZgbXM7dkgKgvhsw3m/3eUHqSjMe3VL7RrUct/9gveJB3QYps6C7M
 DKwTewnMCSfR16IGsI6z4WndB+uzlxLkktGFzSNbX6la6SZ8/pFZc+INdJ9dOW3jlWitSu+87UC
 Gw/t0+lWxFQeqUqKs0egKuTwRpPLcA==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ee69a9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=Kc_O4qD3dURwiZ8RncUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On 10/14/25 5:10 PM, Ghatto wrote:
> On Tue, Oct 14, 2025 at 7:01 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 10/14/25 6:41 AM, Eric Gonçalves wrote:
>>> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
>>> depends on "Input: add support for the STM FTS2BA61Y touchscreen".
>>
>> The second sentence doesn't really make sense to be included in
>> the git log
> I'll keep it to the cover letter then
>>
>>> The device has an issue where SPI 8 (the bus which the touchscreen is
>>> connected to) is not working properly right now, so
>>> spi-gpio is used instead.
>>
>> Some Samsung devices used to use spi/i2c-gpio intentionally, also
>> on downstream. I'm assuming this isn't the case for r0q.
> It isn't, the device uses fts2ba61y on the spi8 bus - I hosted the
> DT at https://github.com/ghatt-o/ss_experiments/blob/main/r0q.dts if you
> want to take a look.
>>
>> Did you enable gpi_dma1, qupv3_id_1 before spi8, when testing
> The driver probes, but it fails to recognize the touchscreen device

Could you post a complete dmesg and the precise DT diff you used?

Konrad

