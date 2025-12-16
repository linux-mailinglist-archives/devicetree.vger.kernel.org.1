Return-Path: <devicetree+bounces-246996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44457CC2905
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A19BB3036DA5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0A43659FC;
	Tue, 16 Dec 2025 12:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TgRp9V1j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bmhLe93j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1A23659E4
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887043; cv=none; b=t3aJsWuD8X/O4YQVooAF6OI/8Yc48hf2w6+uLTwAtmBSeAMi0zbwYb6irFtNIbvM1QBFpYRCUfYwnS4FSHnT2Oxw1w2kNjxvKZFBxkMWGaXnB5juaBWZEAYN3+M7W/YlDTw/OdazMtAzSL4hotwiA2Oh5Sx3ZXb5Sr9iGGZ5rd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887043; c=relaxed/simple;
	bh=43+lAu4/5WmLdRsHNdpR7bsrhDMq2bxfywhBh5ZqLa4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t6rSUfITfAknSalx6/+y/3D/8B7axpcTzSO1xIa7wnNYMTFcPqwN5WHqGPQU5kKl0ZdhUiCQuHzV6IVOQ14v0VNJEImHgkMV9XSVmV6gsFVIpUhKxenxThoeQkrYl5qv5P0SD1U/LyJuvkyEGpCf3kR/vvF8xbw5ZBo5+anW8s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TgRp9V1j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bmhLe93j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGC3WX02810423
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:10:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0GTK982GZBp1GOR2TR2xUNEEQ8UbFyBdxOqqUYpfZow=; b=TgRp9V1jqvXgyh+c
	sje5tWDieAyC359I3DrQ5Oi8WmbCnzxelUTsShF8/sYkMl3f9TBrdjIOKozaDwVz
	xF9oazJOoWLldFq6QJnNVnMcaAnICg82F6VcdvhtGIuFPhXa+jIL701D5IhZRMd1
	XiA3H54UWaRBNtnAKaR8Ky76K31r9wpgUFCHmjlRsJ5zjaZArLsUJt6IGrd9/wdK
	zES5qOtAKbmBIsrxTqqoKdB9CZwLU6Z9p/8N/3ryWqubr9qfU2JzcJcJFEHNM1YV
	8yFP0yh0XrWwO24FaTxzDriW5EMzXKdefgJkejKwc0RhWCYM1eDRFK3oTCuR0xfc
	upwANw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b32gas8yf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:10:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee05927208so16432371cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765887039; x=1766491839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0GTK982GZBp1GOR2TR2xUNEEQ8UbFyBdxOqqUYpfZow=;
        b=bmhLe93jFGL/u6yU0s6eEoRNKrDA44/QA9xsD72PGA3wuv/fRrY2tHx2IQ4rHxLEpr
         u1xUqVj0j+pw8RssN62XZ1lAzGdGljCA6RhLHHielO+RgpYUMcy8yobMYA9UItcZPtKL
         TZf8A+dKNTWjrsuQM6VVm2VRfuvIxh6jTJrzD5mSIfoMWlm9E8DgZChIJltaiB0LLdK/
         ws9ztwA87v+myvZ0vzVF5147rI2PYVMvWxw5A0iNz6rMXZOZWspxzJZydRL55SdtSBLc
         vOGfG2TSJ/Y8uZlfO2BLS5f1sFpBXZGb7+9kZsPHS+HjDuW7/804QK8yoEmrdYIp9alf
         bRbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765887039; x=1766491839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GTK982GZBp1GOR2TR2xUNEEQ8UbFyBdxOqqUYpfZow=;
        b=nHRs5FujJVDey8UbbxXlBjqqTTW0clJRDMAxwN/QgeVHRHGxbbghVn47HhC+zaL1RX
         BnablpsNtsojE7SCwTIVjg/6TXjwJWpekaywBaKBH8IEcKTtxkcH1i/kbD8Us00swNQ9
         OcjwgXR9ICnL2tlLm/NVpBjAl+4xGKkj2mmZUif+voTfilMun5/fb5zFikcAgFT5ujPP
         tKxPJ0Y+icHT4nSER7ZaDlWHngAon5vg/40E5Q/iXWw016V0ySd4zpp/h/0rGbIxkWld
         KBdogwCYTnd1VHcVnOMjfoVhXgzd75OJoOKHkH9VCFF8vRdtr0t1pqZfYf7WY2lDLxI3
         +olA==
X-Forwarded-Encrypted: i=1; AJvYcCUC6nHBswNoBIksFSoujvS8JcgLLsfa3g3MXfZ2fept7GtUIKFHMQ1pgnnQxRnOpNWB92e6UUIld9se@vger.kernel.org
X-Gm-Message-State: AOJu0YyCStzOctBbUUoqkCCTXv/6lvPYgwtz80ege66oRU5QCYX0XlRw
	X4vFSjqM+pzbfJuXgEn6W0HFUFKCkGnCo0uhA+F1Q9P/bP85v5P3VINBQDQlAXE85N3BQ+ARNN8
	JwUdaKANBGhViWe8FE9BQN2oReV9j49kNzfMt/izMvOjDd32clTBzZXzOFw0sHjNy
X-Gm-Gg: AY/fxX7d14H1k6JGGw9p+OTPSFfiZrkkjQMd+R60/0Bn2i2xKdU2YJn7RgHRyj/mDcJ
	yysBu4YA7/u9vXPhD3VuByKxKHRpG81NrpilZ4MBQiR1RhS2YgJqKxXH1oAa/wCWooHzDIZxZIV
	V1xo5PqxpONpn5tG+m5BpO6WdGw6g0dIwxTS8qEX3lZE4D0z9cQBUBcHfM5yAc12DlWZL8RQhjw
	LaTpmyh5cSggyD3U8qj6VpLpbl7cmleK0YHkc+9jyQrY3+mTUsX6KvpNBg25ejozaWBQf8R4+qK
	o4ne4CPf6EB4W0TXrVwz5WLcPs0i0alYAVFV+8srr861Y785nz0FpFo8ZgbohXn7J+MKW5UIYsR
	zQWoBXbTw3CYnYMyaJWTbiASbk+O3BLLWAjmsA1l0YOB+FZkgfJ6BL1Qmn1i8kY1w2Q==
X-Received: by 2002:a05:622a:1347:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f1d047bbb4mr152409551cf.1.1765887039245;
        Tue, 16 Dec 2025 04:10:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5SKyHqraDstQKYfG+VACVomM10/dBkE94VnGiSDuFI8KaBQVrShZgqcZyy8XV2Gy0HK5RbA==
X-Received: by 2002:a05:622a:1347:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f1d047bbb4mr152409101cf.1.1765887038712;
        Tue, 16 Dec 2025 04:10:38 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29bea0sm1682686566b.8.2025.12.16.04.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:10:38 -0800 (PST)
Message-ID: <8612c8f6-659d-475a-85e7-4049586a5962@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:10:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm7225-fairphone-fp4: Enable CCI
 pull-up
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
 <20251210-fp4-cam-prep-v1-4-0eacbff271ec@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251210-fp4-cam-prep-v1-4-0eacbff271ec@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vcb6/Vp9 c=1 sm=1 tr=0 ts=69414c40 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=BzSMFxQJ_lGk4zzpiGkA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: C3Pp9VCjYfscqseN9byoJStmQb_QiVOP
X-Proofpoint-ORIG-GUID: C3Pp9VCjYfscqseN9byoJStmQb_QiVOP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX/6+LcquskXzy
 P2BV2wBDt4R0L83aLy4PNWJAbRp2BDXLv+2aqk1wDstVNLYMHUURHEdTHQDvkrx3fJNQ1B3xqRf
 NnTaLRmy7Z2QOUF70vW0q4e0RVNMnI+pWQyMpT5slAconD4duzJckFUSXKMvfKd6VaWb6X++xSv
 Q8MxeAAYaf/aobA7u6LwrWbAYChFcTbtiioZPCMKJfToyG4J9zGb1u7nYRHRWzqNTyBD++1Gvjy
 G03zPkqnhbn22cYo0GQ9mz1IUvRyx5ISVDQ5n/iEjsDEEZd+4kA/dPx0MiIf5hrb6xKJjNkFZFS
 kA1ub3dE8+/282cCHwL2fTsOCzoS7/i6vakJ0tX1G0IiBvHcM01K+dj8o1nhfOtrtHlvOdKqMPW
 fVY77s1IC5Ante94x1hcp6zA7n1AKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

On 12/10/25 2:05 AM, Luca Weiss wrote:
> Enable vreg_l6p, which is the voltage source for the pull-up resistor of
> the CCI busses.
> 
> This ensures that I2C communication works as expected.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

