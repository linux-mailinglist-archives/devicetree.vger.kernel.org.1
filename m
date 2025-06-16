Return-Path: <devicetree+bounces-186372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD9EADB748
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 18:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B80021882D2D
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 16:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1065E2652BF;
	Mon, 16 Jun 2025 16:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L7QgsVvh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FC32BEFF2
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750092375; cv=none; b=BcYlrAwdPPBqETlHlmuL2kQ+pGG57aqzJEmNOhaFCRRpYFHBfC42urzMzPAJdZ6+Lj2AqadIqlT7GYhwVJsz5D+MYhPAglT8uZDX9vHw/PGbDdp2hcEwEaQt17gtdPhCNLFoDixY/dkUkbnWsrFhdyQUJ6TbtaWh82bqUv7yCWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750092375; c=relaxed/simple;
	bh=E5U1yP4hQA8QXwz6fW4Z68bO+TMhLlGp8Tk/+yKLwYY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HkNTFjcaY23tnu70AE+C+VIdPloZNVuvijoN9ZANyWoizcmCBGErdpfTRZKBgQEjYGDmNwEIEv9ZCLBtDgbcCWnNH91e2A1H79WbG63R6vqUmD8sys1/fDNqgUPNNA37RiW4qkeDYkdg2S/Q/tfjhAeErUlHT7Qw8FEoXSC9tOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L7QgsVvh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8gK3b026338
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:46:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j+PyABmtYdCmM1nxKezq910pWxD+orgLkSJMDq63LKk=; b=L7QgsVvhZBDl2eQC
	+GokdLhoxKlJpcuAC99EOczeMBgps4eqj/FkE4SV+hfH2ZkdghpLUEKBshAVU3zH
	Fvj0Co2hqEMPc+EApeYjImqgI6x21mpXtIFaQsW9y8uJ5ghLr9RL2cPuKRo6Cp1r
	mI3Up+ZZqI90yEjsTmT11063TZ7BsJXGddJYbrN5qCwX5Tus2RfH/3tGq/bmz6sY
	B5j1DDyeVSgWHRYXCoy6qeLS6N55DhxY4WKbcFJj8uy5HcGdTRuUdO0flNelVZ2g
	4CTBV+D3HU8xEOkByVp4dvkq9GeQo1stHrj09qeIY1+1Amys5rmnyVAUrsn2qm+q
	eyIgpA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hfdb5u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:46:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7cfb7ee97c5so29939985a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750092371; x=1750697171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j+PyABmtYdCmM1nxKezq910pWxD+orgLkSJMDq63LKk=;
        b=VU2OgDldoijSZjHfiGqwF0eoPLyh7SPVI1snY27ciF8eJxAqtSkiBiPDYzZixYVGQy
         t7TBSkVB+PuAs9Fvt842MIKMy2fhBaEjbIUypn9teNLLGeYomvXPdFKTov7gWMVTFvaz
         V7PP/NbytO6l+x77QHwzoQlA6hKvao55dE9d/D9Gwb+4RhOlZjMDsVlUFUMKLK1q2O1M
         eEZrmeYqmllAz7NPdrHTMluG1G2Jy1TouJGCbIyfKv7yGKMosMIJCZm+8N878NclJ8Uo
         fx3/xu1dn6C7R5/mX52iw7as6CpMMehR7k7ghZMthg8icegrzyjkvCsmLBlregB4lZqo
         Yhqg==
X-Forwarded-Encrypted: i=1; AJvYcCXmg9Ukpw27Qh961RyeFVVpVsyfWBhXrwYanxTROP6Spny411xAoa0epARrA1DL6I0rIz3ig6evem1y@vger.kernel.org
X-Gm-Message-State: AOJu0YxNg8uyBlNmZRfIYQWCnGpaTgiSLDmvH08/lhST4oSG/7t7B/HH
	IxKBQUWal3z+6zQWG6YeQZ2PatfvpVqZHRYwL5eLvz/xwb90VGZISDr+zTbkUcGB7K68KjidOFL
	D8nh3NUdnL91+LUBLu711NOySugOGVz0wjJ2cCfIkXyCXkQmbvPS6X/oamRATW46s
X-Gm-Gg: ASbGnctvoRayGi5ff6TZj8sqZzbncizQDMwvDzeWs2jnDSE/EtOQMyMzqdVxVXVC4fJ
	5W1/S5h/wIXYKHT4NeQShPAI+iGN/bMGz/m3sju9eZ9OBeB3ZyyUI0zLMW8Pzllg8UqbhMecySO
	4uUJD3ahjSGDgP6JAM04n7JttrF1GRG+MkBxUA5NNzaSm6DIIzwCmWzEp1EnATwaRikCNClXnc+
	R8yl6nmDLa9TxejPGPhgflfnl14w+47o6EJytKbbw1SJhWBAVCyH26ZIVsCXrwnHMZB+3i6XEZ8
	Wx92vlTWi8jKcaVIPP3xxFSQU2ki9/CHjWEzqFiBBMuJub3QmmPlyeD4ZZ7+Vyl4WBWf309Iyiw
	QJXc=
X-Received: by 2002:a05:620a:1a94:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7d3c6ccbab0mr534393085a.10.1750092370616;
        Mon, 16 Jun 2025 09:46:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECa0uf5zdXNpzOvYXV4+oB5gSMav8jAoDEuKhXiLul1U3ZDZicZ9s9ALB+gnNdoxN0MV5wcQ==
X-Received: by 2002:a05:620a:1a94:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7d3c6ccbab0mr534391285a.10.1750092370218;
        Mon, 16 Jun 2025 09:46:10 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adecdcae670sm666104066b.184.2025.06.16.09.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 09:46:09 -0700 (PDT)
Message-ID: <e211630b-09ff-4267-9507-4d67d58a9257@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 18:46:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: add debug UART pins to reserved GPIO
 ranges on RB2
To: Bartosz Golaszewski <brgl@bgdev.pl>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20250616143341.51944-1-brgl@bgdev.pl>
 <713cd518-935f-4501-9753-d33c9ea6aef7@oss.qualcomm.com>
 <CAMRc=MceV-HgyFFvqytXAiuY+y10PQbdPBxuvd57NCeSLVLXCg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMRc=MceV-HgyFFvqytXAiuY+y10PQbdPBxuvd57NCeSLVLXCg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDExMSBTYWx0ZWRfX42DhOBFWK5jN
 YkwIQR5LTDBrw/U+0P96JApypvDV5Dkt3xEWVM97JJgwyoz9rIvZhwK4s9I+76HEnpIFVZ0o4JR
 zBL1FQFJbe2tRDILL0LcL5QXJQBhPRYR7IFXkBgQwmoi9gy0AXl04mYzfDzDpFYdHeYmlfGGuXI
 TRupG4AVjWEFO+6BeizJyR0a7bLgrpjWknx7B50ZG/YtGWr87Tt0B+j4bUmGf76Hj0TbTcE8rez
 o8Gc1BtVIpY0ge/t7O2j4K2s5HUGxMkeZYll2WFjFrXhVUPP9Ju+PLwutFpWSIsPtPII+D9bqkN
 9ko4VqM+EDUMPpF2BswA6jDXzyPRMPnn/Ih7/vTkKbIcFGAKKYnVSol9bKGmlABKNdbllfRDIhP
 tTgrWR4SJFSRyRRO3+8JBxT4k6bK0DBonacLpfgfzW/PuM2TQXoCc89C7gORI2Sfg2siUFGh
X-Authority-Analysis: v=2.4 cv=VvEjA/2n c=1 sm=1 tr=0 ts=68504a54 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=znVqVWsdYbECHmFFIgkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 4taDaP-GCpbZhkKkdltgjj5ICc0WKtwZ
X-Proofpoint-ORIG-GUID: 4taDaP-GCpbZhkKkdltgjj5ICc0WKtwZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=853
 malwarescore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160111

On 6/16/25 6:43 PM, Bartosz Golaszewski wrote:
> On Mon, Jun 16, 2025 at 6:20 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 6/16/25 4:33 PM, Bartosz Golaszewski wrote:
>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>
>>> GPIO12 and GPIO13 are used for the debug UART and must not be available
>>> to drivers or user-space. Add them to the gpio-reserved-ranges.
>>>
>>> Fixes: 8d58a8c0d930c ("arm64: dts: qcom: Add base qrb4210-rb2 board dts")
>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>> ---
>>
>> That also makes them unavailable to the kernel though, no?
>>
> 
> Yes. They could only be used by QUP - I2C or SPI #4 - on sm6115 but
> none of these are used on RB2. I just noticed that my console froze
> when I accidentally requested GPIO12 and figured that it makes sense
> to make them unavailable. Let me know if this should be dropped.

We usually carry an active/sleep pair of pinctrl configs - would they
be affected by these changes?

Konrad

