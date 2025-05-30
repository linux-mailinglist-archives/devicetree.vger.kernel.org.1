Return-Path: <devicetree+bounces-181936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF8EAC97C5
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 00:36:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55CDA17340F
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 22:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910CD283145;
	Fri, 30 May 2025 22:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hOPGBC+d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2D8230D1E
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 22:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748644573; cv=none; b=r65F+bBT5Ed/dNp4tzNOc+xH9/+vDwC4d7RV6d5JpDPoKH6R1Uf0dEcO9w80NVzc06F8GcNFxWuHURuobJ1PSgQSxX8R1oX6bUBAUJnhcJW6ihRC7vW4LMTletxWYurb4FKeoffRIxjatFJYoFt393AToc7QxK0DLkLCXIrMJCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748644573; c=relaxed/simple;
	bh=xGS6k4blEjy/i9Daac7d4JV0CcqtR97OXUHxEjcdtWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q9XsyzFVumJdf4Umx61JQqMm7jJ9Yj7k7oxemYjU7Oyc0O8ybVzLe0ogD7baTUqoMgzohf13zYEUQEsQ7+njEhLFVUHdZOAxte+el0OHDwQiQcOclBNYsF+RVD3LunpfnvkW2yZCzEmuYBRtLvJoO064OpbW1f64TD4aQ/lMgSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hOPGBC+d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54ULC9TQ006927
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 22:36:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oNkiIfiTftNXJgdiuHT45+fDScK0Exk36F66VVHtQi4=; b=hOPGBC+dzZz2J2LW
	eaVhf+vXxwjvSFz17q0txgp+yESeVz0ecMaYP2pJX0DGig43UY+btmCONH+azc4C
	DcdBz40pPL1HJYFAmYZpCiQhI5Jjb3Apb4EZ7XDOFkGfvhbUrk8BFZRlyybY0mJU
	eF2uUMgvEUWKLy6mOrkYBSYetd27a5g7oxK5+58M+Wj7O+HOmyG6+sma2vArmcJE
	zM4Rlf/yl5K7Zd+MuW+yD76L/9tMCyGPSaOssjVf05MOCsZAycWWOFC7IWXfCesw
	Z8iBvY31sO76n6EAbtw/Gf4XWBtogzd5NasEEKHUG3RbfN4agrx+HLwKdB1pS4be
	EFg2gg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fqjt7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 22:36:10 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6facbe71504so5332366d6.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 15:36:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748644570; x=1749249370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oNkiIfiTftNXJgdiuHT45+fDScK0Exk36F66VVHtQi4=;
        b=R4xO86nm+DUMm44M5hap0qfDF62kJDsWbUBUpuOXsMKj1k3efYs//hXbZZe5O2LRJo
         2IAUrf/pquAr4mwc2pxxEKAdRylOsRoQcSebCIt6PplULKwwSNBVlvfLtRUJTRWTOW+S
         +PZAFferNhSD/LX9DmZtqrqPHKayqbmxrfM9TFK75eL8SO3khXWRt87g8kYbpsTkSeOC
         SgX5VEYFhXX8/2JyYcSzcatpsP1Mke0CsAKLcyobT9Sp/rmLtRUd1Z0uKs8thqnK/wC6
         5RfeJoCKeD9DG8aTPOiMF/dVP65LNeQBt5oBS5CDRfVM5EMvK77T8xwXTZzRYepCNsxi
         3iFg==
X-Forwarded-Encrypted: i=1; AJvYcCUt0rP7h8wtN1UN9vH1EIOGuAEZJaB5qM8wQ7mhcsnSFojDqxxODP7a/wrXGDmzLPZ6n026sggAMas6@vger.kernel.org
X-Gm-Message-State: AOJu0YzFyGM+pqfNSxZWD8aF5WiTqsWR5duUjDwLmJDpwfD3XGMnVfrE
	rRNHwCfK5jJLQGnwhESLaGCc5chk2Cg2+LmIM1JkgEGtj0jf7ZbMXtfrGYtVujJz3ENX++k+46P
	6FLutpjULaTUBdMm0jppnjkwjq1lkBPFPHxxNJlaPxLyh4kZJnlwJPvyDdA6xQix+
X-Gm-Gg: ASbGncvjyANXBU4Hj13babyF+6Nlhjns9z4DAiH6QhNfxmgDJNZ0jyoAGLIe3bXHG+b
	91Yh7wVT1KIED8v89zVOGpWCRtntRuRPz8cV8gCjZXmjNITpBbIHnjxuW+qvjhJSo2mpxGnOC/c
	D6DtrGgM+gnSITc7kLAdz0I2P+V9guH/hb0vB0I5SFGma2qOfaCuIHqLp32TqetBtQUl03BK7WB
	bCbTqSRAJnQV6j8wc/9vfjYLRQ8V9rTl0wz3DDFcxmxK3qR2ytEtqy+bwmDnLk0dAxiR6ewWIJI
	6988yXBV7yoDfXm/q8gvfRqogiDBXS8MGQIvhaNkEuFgJMBxOi/us5YL/DQ3xaE4cQ==
X-Received: by 2002:a05:620a:2a0b:b0:7d0:a00f:3583 with SMTP id af79cd13be357-7d0a3e0f2a0mr241773985a.9.1748644569828;
        Fri, 30 May 2025 15:36:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpR5ujleZaD69xfTnf0iaRv5b46kYN8mhROKL6XszWVaQ/FlxVmb9Go+0V9OPlLv+rfLSCqA==
X-Received: by 2002:a05:620a:2a0b:b0:7d0:a00f:3583 with SMTP id af79cd13be357-7d0a3e0f2a0mr241771585a.9.1748644569450;
        Fri, 30 May 2025 15:36:09 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adb4292ae03sm57383966b.80.2025.05.30.15.36.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 15:36:08 -0700 (PDT)
Message-ID: <20d0e138-1b35-49ef-aed7-b9d37fe8d264@oss.qualcomm.com>
Date: Sat, 31 May 2025 00:36:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: qcom: camss: Add support for MSM8939
To: Bryan O'Donoghue <bod.linux@nxsw.ie>, vincent.knecht@mailoo.org,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250530-camss-8x39-vbif-v3-0-fc91d15bb5d6@mailoo.org>
 <20250530-camss-8x39-vbif-v3-2-fc91d15bb5d6@mailoo.org>
 <e28b518b-26ac-4d3c-bfaa-21a7cce63366@nxsw.ie>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e28b518b-26ac-4d3c-bfaa-21a7cce63366@nxsw.ie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PGU9ukCg2nbPtEtzk6WyNmcIbCkuGssg
X-Proofpoint-ORIG-GUID: PGU9ukCg2nbPtEtzk6WyNmcIbCkuGssg
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=683a32da cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=okvWR7n1QOkNPS1Vc-gA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDIwMiBTYWx0ZWRfX7B2TIvoOg4p6
 PJkTYuwHv37H7Q6GnG+mblgXG03DhA3FUjkehWvxwpHKCbdZ6J9ep9Zo2gZWUpuVb5UOJYlJFfK
 sc72jssX2Mze/vhLCWpiSAUyUqK+b6C1kDFkUV2pAf273Bovba8BDgCH/jTaNkVlbVglxusiJBZ
 2fWRdAw6laEhR418IjJ1QxgahMmIoctUS5OoFaJc2/3AT2GFr30/TOXlm/mMpfB9uvfhtkhYCSL
 urQJu0XAJY5YWdbvHyyEy/yX44Jxqyfi/sCgqQgQZat2Uh8awrA8INXecnDHvbOsYUVFiGyrA6Z
 MXXMtwUTl7QOYvblpfbZsv3mAZrSQOnj18u9WgTrWP3MynmEvGyJp1fx6MFf0biQjfIZ/0b6Yam
 ldwW4ui1/izJ8Sm/MGJZ3TnvV+p+3ZR6NYr4g8chSYgALxzFiJnjtr7NcnlWWpSuzpFb0uyo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_10,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505300202

On 5/30/25 1:49 PM, Bryan O'Donoghue wrote:
> On 30/05/2025 10:00, Vincent Knecht via B4 Relay wrote:
>> +	    camss->res->version == CAMSS_8x39 ||
> 
> This is not correct - it should be 893x since 8939 and 8936 are ~ the 
> same SoC - probably 36 is just a binned version of 39.
> 
> Anyway the x is the least significant digit.

x here is the modem config, but we generally agree to just use the
most obvious representative, so 8939 is ok

Konrad

