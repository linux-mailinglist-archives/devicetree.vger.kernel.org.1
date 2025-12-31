Return-Path: <devicetree+bounces-250814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E08CCEBF9E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74BC4301D9DA
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B6C22A1E1;
	Wed, 31 Dec 2025 12:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mf8BWIeK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ADB8MoYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7CB27AC45
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767184377; cv=none; b=OrBv35/HVBF1YSYHuN9Dm73rRr6/mwKG8EOkvZ8k6C6UfMMEOHDWJWIW9Py/hmxQVXEnN0LpasHi14KpVrlRxjVDYKorIl6p5cwdWgSQIXAuR/XO7g2hKYuIx2Nfw5gBbyjWTms3EIxF/nBD+kJE86Kd+7hJm3V14j/r7zdVdQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767184377; c=relaxed/simple;
	bh=ocwk98ebP18x4J5Gue7LXL3yvqHWJ7jrGUYf9KdE/aI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dOuK4lA7K+xesZyvhHnzonvLILq1B+MNvqnpatLwkShuHjruPdWkMEc6IwfLKy1uZw7zIV21WEnxQTfeYYr7Ki3O80BtNLKeN7MDJ82lF61wvcth53ElOzEwUCD1eYlxDUd872WsaXPHvwUDV5MJRlnJrtIfKwjDbDEIjVl70iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mf8BWIeK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ADB8MoYd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV61wC42049473
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:32:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4f8Ohw9RlteCxQUZWgjNwsvJ9mz8ifExO0etY46Zc8M=; b=Mf8BWIeKAvQe/vR7
	XXcsyrzDDeXRbGwbyIcvrrI+8xxscN5FGGqfKkQd0BL1RUa8cEBVjVIavnIANnst
	4R/vlv7ZrOvS5z45YaU2cui7dYJWN011Y6rboAMo9BHyuTrAQBQJvth0wNNqT7IK
	UR/hAlSHab8yfhDWTc2dSqBWyxBvKyFrh7GtERgKOR2Ld618G9eB8MRInVZ9uwFp
	b+wT55CfXP+PgbD5FG6U/9IUWQgg/Rb147EYHh2Zfqwcfbhacvd4GMaXCbGLoTA/
	lrb+nsR979AV3G4e7l6WK4+8NqFVAGpBswPgdE7DpcQf/0cSfYGy0E2QMWXppeau
	25fZMQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcx748mp8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:32:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b9f3eaae4bso352960185a.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767184374; x=1767789174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4f8Ohw9RlteCxQUZWgjNwsvJ9mz8ifExO0etY46Zc8M=;
        b=ADB8MoYdKCGEQSbhJufFlBeaH9Ec5k/0S825nBfEO5pILruOhca+LbzrOVUeDMqASX
         K34FVN+4OtgU/3LKwGjqtvayXhsXv0wwMkbd8iu0z6JCy+l5JYycxIU3NYkKoFN+4lny
         SBzJprFzHrVoElkGUdfEveq/YyrG9jVF/b/gNESaOfgq52fXgUXDBLCFKOTPbwNU1395
         8GYhG9PYInYRe6QmphyYH0DwBwS/ZqWxcIy565+/biPvLqqoflsXN+QBGvQob1Ryyubs
         S2xgyNt8c4qdHLRE8GFy/QPFeXgrM1SUX20QcH9Lq4eJFKOQZmepM7s/pWKfz3kkiCH3
         4MuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767184374; x=1767789174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4f8Ohw9RlteCxQUZWgjNwsvJ9mz8ifExO0etY46Zc8M=;
        b=wl1V9qkQjhu0kq42HyiEjVDV56qusw45xYm7psnlQPP7UJHXlEyUkm1zkcD7yEXiY3
         /UTWBtlQvXXota9vFXoCmf5+UHoj3Hs0G13lr9U7GC74eZ3rAzN2oyqkBNRCLrdJKS7C
         xv4CBT6lohGzU5LkaNj9FbMpBgKSuTXY4hkiTex7gKKEbM0nmBkBK/hg6TYGWosmbRVx
         99+2EtUHgfj93o77gO9R+rVMZlpwyae/f0Q0NDn++TH8Msy5rWXN8SOGpqxvrF9PVy9n
         Mc4LM04nKaFqwVTyP9HZc7owdsVhi3x/xm4R87wMHW/GM6eJ6nOiZUuAMkHCJ+KCSrSF
         Pwmg==
X-Forwarded-Encrypted: i=1; AJvYcCW+HQyHjTUGZFZm5A6bVV4aKrPhgo1l/ztjBggOKvp2XSgvin7GWawM9RpLHLHtEb9kmxPHnCK7nKis@vger.kernel.org
X-Gm-Message-State: AOJu0YxNSNgPdtjlC27dCAdHqgLVzFX2dg1ZIT6B1PZ7yTyu37Yncunw
	aNMyLvg8tXEEx7KGNgC6sk8h/q9Y469Uq1pD/WD+u2jWuReFkpFStIliq3ADgNBxpX8/T/Hybxy
	8PyqJied1Tf8QdYcwhM9QPu4lYesZNNQJupy/8AO4+ws6Z/21c00ScouM5daP0uQy
X-Gm-Gg: AY/fxX5IAzbaoUYUy8+OzNohM/fqgVtCzNXLnFPVRHr667YcRN+7UjsFOQ12e4KOQ88
	/qHsuh/XNjllPw25viD0R7sms8CwBUzfKQOL3fG1eanleUB24QQxB0kqlchEj7GrTlDZt/tUd74
	QNiVZ9lOpollHIm1z/u5UzSruUXfguIYrfyXnYi/CKY06g0VO18tL12f+v44QXcTyQbVEDZKQuE
	4Hy5VPRMga6ud6NP92sPN3EsHvIJHOipyxUHAqntxhGnkKh2pge1BTlv7R0RRP6xchIiVKEHyya
	BJtoBTdwoFTnype2R5GapUz65g+l1oioeNuC2STpRDE+s6yKtPmTow40v4HtnfN8ktZPSrBx52B
	qPSdwSWsuaI9TyoGyUgz4DrRV2h3hDuso+RKpD/VAJsDwtJwozqeCp+1v6bHWPFotXw==
X-Received: by 2002:ac8:5744:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f4abdcbf88mr407672141cf.8.1767184374621;
        Wed, 31 Dec 2025 04:32:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlGFbMPjijBA1sn/PHyiGytwNZHCVbgS7+Ai/QZREe094f4YBz9CVh7hBVFNBuxiBhBIr4AA==
X-Received: by 2002:ac8:5744:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f4abdcbf88mr407671821cf.8.1767184374182;
        Wed, 31 Dec 2025 04:32:54 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f519c0sm3908703966b.71.2025.12.31.04.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:32:53 -0800 (PST)
Message-ID: <4ffc63e0-ffbd-452f-a5ec-2a5b2720e66f@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:32:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/6] arm64: dts: qcom: ipq5332: add nodes to bring up
 q6
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>
References: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
 <20251219031010.2919875-6-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219031010.2919875-6-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JQ4FvFNjkWV89cKCJp1OM63IagMOrJKJ
X-Proofpoint-GUID: JQ4FvFNjkWV89cKCJp1OM63IagMOrJKJ
X-Authority-Analysis: v=2.4 cv=HNvO14tv c=1 sm=1 tr=0 ts=695517f7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8
 a=s3MJbU7F5wKsRGJXuN0A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwOSBTYWx0ZWRfX8IwbAF+qS5e+
 oFKpegcAwdRe9dwFsfe/89+PPp2Sm8az1S4fC0lbabL7udrH765DXGIvwMxDiNeY9UoV6nk0CQQ
 7RkFoJrwqtCgZ5TCP0kvjhZjmTapN4t7Y4r4cHmImTXUftVgJzFCpyb9XjKiPbm/JSegKKyVq8z
 S8XWjhrnG2yVexk5lHKjUbBek9Y+hoItj7KAFonq6nS94c/Tqt9Ct1q7cWtCnd2qgjCeeGURS2i
 FqNyTfdt5aE14rgKaCpYcBnxoedaUEI86SbZR1+XS0A35pHleSg1g/NqeyjSF8830rOINbQyOwB
 NXQf4AFi/urF4oy5fZnH5sP/yr6FDkQwt77+vTe35cWA029G1RW6NfU+3Jerez3qsC7QtDlI1LR
 GnwYEBaY8Mn8TOEpZl9iecVDPsQgl7vvVjihuPZUR5oGh9EciWAWMFuK/EZLGfCLmsiYZ8T+i+H
 hB4DRd4OYp5R7ojvktQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310109

On 12/19/25 4:10 AM, Varadarajan Narayanan wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

My rb was lost somewhere since v5

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

