Return-Path: <devicetree+bounces-149638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B18D7A3FFC5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 20:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A29F17C999
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3B81FECD8;
	Fri, 21 Feb 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TQWhks1C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD4F1D7E50
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740166553; cv=none; b=umRB4v0/U2Xc1afvxhxisgH1rm+HUVd+UX9MnQqvTGjKsbWCSN9CI4fw2IP4liOHRZGLjjxPb2e2DVO3ncFgJx8htfhtaq5XMhFma1Vc6XwcxFrjvY7dp2ovVzViNfCoPtdtZqHkXYn5nCRS5vfiy7DGK95qTYugjd8hgNwWdHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740166553; c=relaxed/simple;
	bh=/GtNAWYVFeppTawHuxJ8Q0Z1+wtfEQ4440q9MqPaZyQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nOTxrTAUj8ChzZHRF6YCR8XxVJLoSNm7JFxuczS8iZ93IAKASYczXtF88obKgf4zcNCK0ZAHAOESVRQKXVNCiay+xQh55oRrZ0gqgqftqBWZs3sC/AFNEeHKhGEeM1NQxR/9w5iPkrHaYFvnVsQymcr98XxPMp0Xz/LQ9j1/VCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TQWhks1C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LHq8o0026296
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:35:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/F/0euKZ9yVT/f+WIos2+GLHC3Z5Thx3nrFODEnQt/I=; b=TQWhks1CmMMSnVLx
	uJf4J399PHnZ8KiTRPfWyCqMDYoP910pYiNXiqlc58E68ofr207L1DFYAM2EksHw
	/3rk5HZC4+WxOOuYwsl1CVx5MG3agkidqOzKll3tdJQGZEQPyZltOaXhrB0pTRoy
	uLuiK2BG8k5EGlYmTCIBQEvM4nQkce+g0Mzrqp9pSPGzfpV/GKS2h1yyhNiPQss0
	tK2V6mLDujwA3ijPGK3UbyemFnq2aypbOIzxGiBBL1aU0WNwklilzt6JK8uszupO
	6fBPDsVZY3HbcW9jQctvMVgykyG+9YtF2WFQWRIDE5NizBSOzVWsXlqpMfplu9l9
	7VWN3A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44x2r3w8nh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:35:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e66c7e5348so2870876d6.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:35:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740166550; x=1740771350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/F/0euKZ9yVT/f+WIos2+GLHC3Z5Thx3nrFODEnQt/I=;
        b=ZAGJhgWU/vQg5tN0591Nm9wpOUDXgO/1qpHdB1Ui8QLvXLWvhvSMCIrJEVZZnA6WTK
         0LjWOtEZdtc+nmnPo/Y606vSIBoQmQarGYezwbtRClgq5z8wKT868Zjy8X+JktQKOkfr
         Pty94VD0li8zhA1BNU59IwoqtU7KqNejG7F/PR0QFKaNIAUkfmwHrbPrSYwEIvYg0FcO
         upWCq+Psy3ZPDcVEjYTkQFUOhDcc3OXJdhUilR2nmzdsam+ateYL+KdoMAznavjTmZgq
         RQpDMGV08NOdtKdmY9mv60oBhrVQBpzff3tuVpPlJ7b8ouhpvyiE1JLBk8iQJqG/JGHK
         9/Pw==
X-Forwarded-Encrypted: i=1; AJvYcCUeQbBfnlBaZeLUzW1ouSg+TcByZ6y8YPKaIJm9zMpqI+7KOMhnmKBmk7hkqoB4ZYLaSxMsRPAI5JxY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0UPmSiSO16cR/dSxQZW543P2y1MK5nB+NosUHQ5tC4dsAeRHn
	Y8VsJ5NDTUAG/P9asi4ZRt/FGzT1/CFgBtIDPJovSlxw/uye1qSWk5AfMwM4lTzL813robfQ1eE
	qF2L9RxEwUX/Nb+VnyFyMyJoBmJeungK3C3sgWWGDJEfnwib0YN8SZV8ceLS9
X-Gm-Gg: ASbGncsnpRwkaLI90AZc567tJ7t6oCAxxJs1mlTX37YO8TsCvPjtNlau/mLrZ/QRUot
	28rjOALvT9R97wN4m4sRNMWC2n62/i2zMv7yLRf8iNn5R72/iI02ZpTENBTvfSDwtv0uhuudUDo
	1NXf/BQrBJFOuDr9ebcvcXsExwrK2gBCdGwWSsw/wj8rs6+ublm1Auu5kNISz3yMhY+ZFT+XXb2
	smfuNcilKrYNL6dGNASVTUcgBQocRuDaNf9lEsB6r+zE/gMLMWDaGbNcQvJ0mbzeICRu6CUhfpB
	eywqBsbW+yYmU/pAiCHWmvA4KB8fZw8dJIay8VTRjjr41A6GMTPdnvqBAUZGaZlci1cCWg==
X-Received: by 2002:a05:6214:2aa2:b0:6d9:2fe3:bf0c with SMTP id 6a1803df08f44-6e6ae7f5851mr19833256d6.4.1740166548517;
        Fri, 21 Feb 2025 11:35:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5TUGSsZkcPxcvhyc4hTF6CkuQchyS5vKs4v/y/Gk2uhIiDT1+BM42KpXtEAIAJXk833NAxw==
X-Received: by 2002:a05:6214:2aa2:b0:6d9:2fe3:bf0c with SMTP id 6a1803df08f44-6e6ae7f5851mr19832596d6.4.1740166546639;
        Fri, 21 Feb 2025 11:35:46 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8915db0dsm1185492066b.145.2025.02.21.11.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 11:35:45 -0800 (PST)
Message-ID: <861c7481-eae2-4d49-9bdc-434c0fe462fd@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 20:35:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: x1e80100: Add GPU cooling
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250219-x1e80100-thermal-fixes-v1-0-d110e44ac3f9@linaro.org>
 <20250219-x1e80100-thermal-fixes-v1-3-d110e44ac3f9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250219-x1e80100-thermal-fixes-v1-3-d110e44ac3f9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 3EVgRCrXv8-wxIjbBjs2ItI03e_JG-xE
X-Proofpoint-GUID: 3EVgRCrXv8-wxIjbBjs2ItI03e_JG-xE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 bulkscore=0 phishscore=0 mlxlogscore=922 suspectscore=0 priorityscore=1501
 mlxscore=0 spamscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502210134

On 19.02.2025 12:36 PM, Stephan Gerhold wrote:
> Unlike the CPU, the GPU does not throttle its speed automatically when it
> reaches high temperatures. With certain high GPU loads it is possible to
> reach the critical hardware shutdown temperature of 120°C, endangering the
> hardware and making it impossible to run certain applications.
> 
> Set up GPU cooling similar to the ACPI tables, by throttling the GPU speed
> when reaching 95°C and polling every 200ms.
> 
> Cc: stable@vger.kernel.org
> Fixes: 721e38301b79 ("arm64: dts: qcom: x1e80100: Add gpu support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

