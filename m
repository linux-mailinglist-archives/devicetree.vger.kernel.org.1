Return-Path: <devicetree+bounces-141426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7143CA20ADD
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:02:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B24A81886138
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CB918D626;
	Tue, 28 Jan 2025 13:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kWClaKH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E1A1C683
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069356; cv=none; b=VYE3rqNoSPbbeEUGQkKdPskt1NFNfqAb8TMjzwF7zdXCe77BRqmNHrIS1Hi6JaWfHzS6VrQCGjuQm1n4SwEZSOYKS4pXm+Hd+MhNe3xlPM+cQu9fyerSXA9JkAGojQ+qVz65I+aDyICQkkWgRoPM7rKHtqfokEPKwfuG2t+sr/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069356; c=relaxed/simple;
	bh=eul7OSgl7lWGUq+8FLZcyH4sOLaRf5Ciw++Y6vhmfns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J8Tohc3lAZjjIbyRUn9k0kw4KA5GGvpzEqHAgzoZZuqkgMzCU54sEj0VnF97bTxqSTsbyV1QPTrgL/JhPdD7mj0tA6M4+T3JNQRw1HT7XDbUusD+js7Epw0AVjMJwe/pC1NZrTw6Ce9eLxtqpnJ74uMj0YsVoDLUurrjAi2FNGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kWClaKH9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S0DccZ011255
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:02:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QElHZpsqHaqu8pHwEaG/i/0egJwiOljuXuahr7b3iW8=; b=kWClaKH9aiOh0C+k
	10Qk9KE8g2W7jBzC5ske+zmGxRH40FlujRmA1Np9zcytiWJoceud8dOVazyw3uQl
	jLGQfJlDz8Gvl8ac73ItlSQV8Ljsi/qn03/uL6vaki040ymGFDZM6itsscDoAvQ1
	lxQcG4GExCPWGruxiyQandKacseSrzV4pNFfyGHYgc/Qw0p9oEPQyir8x/QD6UMl
	8QrPoWiMb0V5G1kbMwoLGi1vO05azo4Z1Mty3ScWfVPMpxcHnGZchAzNkf8j+MHo
	YdqGlRK4h784MTY/4C0Tb0gzEGppFjbFgswZ1TwHKpKKxDF2I/9x7ySBfnaiA4Is
	S9szbw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44emgtsdc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:02:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6e5c3a933so129783085a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:02:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738069352; x=1738674152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QElHZpsqHaqu8pHwEaG/i/0egJwiOljuXuahr7b3iW8=;
        b=Ml9Sxw+PtYdQ5GmO2Ei1+we2RREWnZ2CiFSSndgoLnsXbmqmILHm3amNlxYL7hkzM6
         LSqtsJV3W9jnkSxduoptmsbpzIbVYY0o4E3U+zyg/0PoQQ/g9+bZc9YZ3/dwNOszEX1h
         gqHTOBVgEpng/Thxk9O+r7vOwUWvB9n+1aJMWk1v9kQvbXEzpyzn9CB88ia2tUfIHaFU
         ETyl922KY84MB2xy80RECU2IXpTKRxfW5lIiyVhCJXeYqDPmslp9LnK2gBw9OfkQsHjk
         0sSljJB6zFRWkD9E14FK9E949XcueqSN2wfg67gthbOLw98FVNnCcaadTRalPvLJoHXW
         /eKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFlLkEPu67rq9uosUE9r/2OuKLwZ5yGJrKAvxCeu1L54AEs8YB2z77skAQAsE6nXwRyRs9mFPSFtWm@vger.kernel.org
X-Gm-Message-State: AOJu0YzFn31N6mFvIxFSFdb6kEaBMgYu0DG/EaCQM4TKYcEFko4cQHwJ
	kNDdzBOlEy38LupccqP3WP+gblIy3uG27zbr/t9ddqjNJ9P/xuqggLXM8BND1ZmI8NodmEKulTM
	67355BeXDb1z0HHXA9ClM3QawGNTDfZObcJuCGXrlmSgwYA8EAevVZppe5FP7fJ1gl8u8
X-Gm-Gg: ASbGncuZtaGbkvuaAnBuPmLO5qrn9eL3D6hCxRC7NSZ7ooVwIy9uco6I0h5Fj9dFbck
	Qs5m3ecqt8euJ2SA+/2zOyGyxB2n69kdY4zBsOOKcBr7fx2ueeaNJ049sR03l6JP8i2ItdhFi7a
	3TvnsdcvbpxwIPf+88ejK1Ds9GzCXyWEw2OAuaMKwkK3D9XhvxLtcmZgIuiaEFI0zqb1NXbJXIi
	mcfSrQnKNVcyvKMrfzhfaYv94/z7juye9jCMveuH/MyLYxlzxEJdPvrVsa12IEXRGWdcX4cIm91
	0V+gFfRFuMpZPV7+agQqRc4qhi2kXnN8v6dfKcQ6ELh0+q97TIaNtL2wum0=
X-Received: by 2002:a05:620a:25d1:b0:7b6:d870:ca43 with SMTP id af79cd13be357-7be631581dfmr2612379885a.0.1738069352086;
        Tue, 28 Jan 2025 05:02:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHw+tgVVWbH4jwLZWP5i3Iy1ohxnNN8A+BTUcrPf77QP0hpY6THNyCUiC8Z2d+su8sHsfMAGw==
X-Received: by 2002:a05:620a:25d1:b0:7b6:d870:ca43 with SMTP id af79cd13be357-7be631581dfmr2612377685a.0.1738069351452;
        Tue, 28 Jan 2025 05:02:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6a11eaf8csm417749166b.133.2025.01.28.05.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 05:02:30 -0800 (PST)
Message-ID: <ed948c5a-1d53-4113-a571-daf144e6d476@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 14:02:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] arm64: dts: qcom: sm8550: set CPU interconnect
 paths as ACTIVE_ONLY
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
 <20250115-topic-sm8x50-upstream-dt-icc-update-v1-2-eaa8b10e2af7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-2-eaa8b10e2af7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KJS-lo3AdK3UNb7V4nI3b0OSR0NZ7kd9
X-Proofpoint-GUID: KJS-lo3AdK3UNb7V4nI3b0OSR0NZ7kd9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 suspectscore=0 adultscore=0 malwarescore=0 mlxlogscore=919 mlxscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280099

On 15.01.2025 2:43 PM, Neil Armstrong wrote:
> In all interconnect paths involving the cpu (MASTER_APPSS_PROC), use
> the QCOM_ICC_TAG_ACTIVE_ONLY which will only retain the vote if
> the CPU is online, leaving the firmware disabling the path when the
> CPUs goes in suspend-idle.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

