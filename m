Return-Path: <devicetree+bounces-257273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0EDD3C5DC
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A026A74388A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF7D3E9F98;
	Tue, 20 Jan 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SumFlsmg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qa94ikhd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C5D3E95AE
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904434; cv=none; b=L2B1F+NcuQE4rbGBE6vvOdFL1OFxb5MhT9rxSSmBX3+5mExK5WMWYWdm16XV3fQWcUUZrkM54KPuFP0YkduQuS8RqVUG4A79Ia+kao9/nPbGaRRPQX+u5p1u0TT/PKenCtqJghq2EIS7gXSX9TDfBtr2A9S1Uii3T0EytgxF8Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904434; c=relaxed/simple;
	bh=bSJbES5pqF7XxE3mRvHoHXslbCwJasW+SdiW4w8iBzM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JnpcQGvuG/UsBbLfZkrTfdSU03O7mE0BNUKO6LQ3pgb+ljaM39xt3HLqf0TtKJjqyKTA5UFkzYhV2T+FhxFjUWn8k+ZQxOPScf1g6EtUpIkukqnkj6NK1lZzsvzkjOCxiIFtvGpAJDj2OGfY2gqQwBDZdAIAcGhrePrK39YwWDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SumFlsmg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qa94ikhd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K61T0Z3772259
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:20:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NSxIxX2ynBDeEf3sPU3u8qhtOsS03ktsjbhTV15qdlQ=; b=SumFlsmgv4xv7yjk
	PaVa6Sk23yGzj4Fvt1+2Us7Trg91jLTJsXQSh6HEGriHBf0w7ITLbkaNC87Pa9Il
	vWIuExwr0d3gwUn35xi+/u43CoAr1FOlxmwy9BPVa7EZKwUTerra24ddLrvXpaLN
	2GazU6c0Qe1Pram5ag/9pzeK9Dqa5Cj3b/SSWcIdCreL44Dt2Ig2qv3W3YiC93YP
	HJdZqV8OVbueXJcOlOvFnDeAW3gJgLdKz7JgJYVGvZ2no7Mg1XiEcVbiojipWotj
	UJezjyG/gEHsdKSjn05D0pf76Fp6y4bSnX8EiXtOjq2nK10s00ErAKma64LOzXxs
	igzHKg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt42wrtcr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:20:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c532029e50so175915785a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768904431; x=1769509231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NSxIxX2ynBDeEf3sPU3u8qhtOsS03ktsjbhTV15qdlQ=;
        b=Qa94ikhdHaaYykjYMajffydu8JxJAT9wmn7Pla8Sa/l5I1AAChMU7n56W+a1Sf64G0
         TtKl76h2BXkXCJN8a9LP5nyNBzgCc0tb/D/pYwycQpyMyO91NMPdjYk9MP2OPkOpTfDv
         aQ1gSR1NI1S8+kQrrGveCV2eZMY9CLzzUA0q45M0WmJFNJHSF3gToujeldujb3t155+e
         Uy4i8gSmSlAINPxgfwEXdOutmyoM71Ve1UgE0sn7CAUP022S8L6K8uBr6osjKDtsJn3i
         v1FQVjoJjyqzaCmdLVkquNWOzcks711EXjBcRELBxOc9gCw+rh8ZBkVPvebm1NzC4zPF
         DRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904431; x=1769509231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NSxIxX2ynBDeEf3sPU3u8qhtOsS03ktsjbhTV15qdlQ=;
        b=QxFap34npnBfMWCnHcNf9eRe0JAuiWaO421f0/rNnSAVLeWBkSOk+NYfwAHWeXFtHp
         RZ97XjDaAQNSjpNrSgcIsmhAqS3jx7rrxFQWI6fe3hE6OiX7vq5nYm7WO7B7XVGyPCkR
         +XXEgxelsCSsyZ8WAAb4l+YK5IyxOt4vahXzVrFxoLkbx0LkWGxLEQNH1sUFw3L+BfWx
         JodJmzkbf9BWXUxFXzIxX+HR0grl15jigwuPU9Bcyz0uBeo9HDdL2ASFISghQlZO9NVs
         vGl9WIMMLHHEgGK1coZ+9lcP21SN0dexRAW1+P2q8HmFQ8ytWkJFKv9DwBEUxaD5K/Xv
         7npQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIMTH4hNETWCGDMo6xxzkcn8sc7Qib+ww+SKk57u7bdreO7cl5jnb63ZEwW1iQ95MI8kvVyJGiWAMk@vger.kernel.org
X-Gm-Message-State: AOJu0YweKUnFxV5xLkIaQXKToZhgp4OskTcyOZvvJtx7O/CbjtT/XbGP
	wkUYOnnnyRs6NXytJ/x+07hw3LC66c9XPPk/1Tl+Zm7GiGaXPQDrQNoVwuHcd8vSalGgrLaIUcL
	VxQZgrEIQY7f0pVtTWehlJ1BwJBdI0d6LiJmwTJzmvBAvyMoSFxjZYGPCA+kA+MmL
X-Gm-Gg: AY/fxX4DzdmtGBBpujVIwpNuEezFxcvRRHvhy1DgvbNBnaUOu0mdhBNo5L4OQxKrtwO
	5SEyW3VMYrLxRbIx2/tzCTHZmkIhjNYjV4xy5NnPmVZ8MxO3XnSgc5e9f+uVBt1rQpWn33LXtiV
	I/oL/jkA0hAr6C+2WEmO2wJgkBxvLvmlnhKZb77i2ZhLz3rUe+2rtdDPILsLko0bzBs00AdxCMq
	M4oXYBMqWKZcYMuMFitB3GjoYiIhdpgQpjIPSAmlDmxk6UOe2Gi5nmOAZ5B/qlAZb7hfT+XmbuZ
	KVwtyelUC7eWnhh8YD60mHC4A8XRU3QMNq7nCoqOvaZ4wpYaAaBjJxmdPPIQaNrye2zmiD0/EQk
	v/oZsxr9J+V4EKORI4mO0vt1Y1jET2argBz54TggHN2Cg7ix/ZUrLD4w/BuGt0mp0/Ug=
X-Received: by 2002:a05:620a:3186:b0:8c6:2539:dcda with SMTP id af79cd13be357-8c6ca3aa503mr254592585a.2.1768904431227;
        Tue, 20 Jan 2026 02:20:31 -0800 (PST)
X-Received: by 2002:a05:620a:3186:b0:8c6:2539:dcda with SMTP id af79cd13be357-8c6ca3aa503mr254590285a.2.1768904430752;
        Tue, 20 Jan 2026 02:20:30 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a192b6sm1354598566b.59.2026.01.20.02.20.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:20:29 -0800 (PST)
Message-ID: <c0d1c780-b90f-49f2-8cd8-e7e2f2e24752@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:20:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-sony-xperia-tama: Correct
 uart instances
To: petr.hodina@protonmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20260119-akatsuki-uart-v1-0-238f4da4fa56@protonmail.com>
 <20260119-akatsuki-uart-v1-1-238f4da4fa56@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260119-akatsuki-uart-v1-1-238f4da4fa56@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5-JwzfXqR0CLEKqg_qKYq9wIudOYrlke
X-Authority-Analysis: v=2.4 cv=eJMeTXp1 c=1 sm=1 tr=0 ts=696f56f0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8
 a=2ih4SPTeAa9FiNVnbewA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: 5-JwzfXqR0CLEKqg_qKYq9wIudOYrlke
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NiBTYWx0ZWRfX1KwwMr/NiYkc
 nfPRhlOWYR89ddXwAUU2/yJRLn433XKJDh8rTHTLg/IYUkBUU0TlBdIT3J7kAVUFsJmbJ53vfO6
 x5/bNmtf4PU8RMplqNQa12l0BfdArI+usOR3yG57C5cE7GfW9nocExVrQqoigaZYNNzCT6M0U4I
 3Bz06ydjeIJ0l6fXweVX+12q0g3E/SMBG4q+pYKsVwuGfo7WX8b4OWAkJtKmlzweVZCkK8QWLcZ
 1qn1zrLX918e+hTUyIpMCKbEZnppgvSP3f1005D8vLAbsuTk8GRVZ1haM0v97eHwfYh6sPoSOaW
 bLuz6BVBPleGQs/WtqGh1G6IPsLtLK4iLKEP0JtjvLs1sdRHvFf/mHtxO08cvA8Uk7fogv/t1qu
 OQnWVnYg7ZxNYvQEHMiBovPVypHhftOhjNXjH9biQh070/nFF72tu2vLRhEIyblEUowETh9ffx6
 XzHwjX/4DHKSyvvB2dQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 spamscore=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200086

On 1/19/26 12:58 PM, Petr Hodina via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Change the uart instances:
> - uart6 is for bluetooth
> - uart9 is for serial console (available on the uSD pinout)
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> ---

It would make sense to add a note why this is a useful change (i.e.
most OSes would probably assume serial0 is the console UART and
sending that to the bluetooth chip is no good)

With that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


