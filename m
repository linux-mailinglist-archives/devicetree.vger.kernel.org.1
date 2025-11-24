Return-Path: <devicetree+bounces-241572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C6BC7FECE
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:35:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F2394E1D1F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4B627467F;
	Mon, 24 Nov 2025 10:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q3wTCNGj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XW3IThr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B451D555
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980509; cv=none; b=JOb2br/i8YbAHFl5nJBDBARupYZWMqK3jHpGijhQ2A94NGUfsJavmbHsexghVfY7i/n4R6/FxOw6kfjeX4P+LPCrZfGUX8HoNYeOGhkX1vqcbyy+DDhxQlXMdoYJwkzx1HOo0SiOCY8ZIOZkl1xK00M+AuoHiR2QILvIgZnM1ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980509; c=relaxed/simple;
	bh=9dxvi6KoMGPBZZAnaRtn9yzkwtnaekoCmUbkXAhZRvU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q6aCmpfNyWp6BiaNCphmjnp5jES4Jwq5H0knhs6fqbliEyn/BbRxL8q6tW11A362FZPVAeLahOGUOlPrPZCoBeWNZrPJSF7lX33a8Wm+lv/PmKiPWg8gB3mO6buuJjsDUyguG9NxKOoGlgoa05xh6V6MZW82iexpuiiRtvJKGmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q3wTCNGj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XW3IThr9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7T9YH3112009
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AdZDb/iq6LyoJ0q1NY686SXV3zJDlxna6I3nChlzhFY=; b=Q3wTCNGjmHqs6aE1
	sktYunB+pfASFqEPFthURi+1f36UXUcApxTj5WpKSDXSmhZvWhjCGc0ukqW+T+Vz
	xi2i+gVypzsKPQjTaLYxx7zKQ3A4lFGeu2WD+7BjtKSnrnwygIlNYPiPdu5WaiX8
	0b/qSQDSWBxfFXfvFlyLFheAbmArQ7NPyV0kdE4Po9WLDJfYO7gK+I4tFbggoHzs
	NP0u86a2+6AVq3S2mbDCmUxOas83QgJFUhKCpQiiLBJMHu7YpCLMMVa+b9x4BeOs
	geC1PDMTe1rsoyF34YR8Ki61ShKUAda/FMxwi2aiph4IH6ywIc/cVCDKAPxVfQGj
	WkRuDg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amk10gjrs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:35:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b184fa3ffbso141210885a.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980506; x=1764585306; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AdZDb/iq6LyoJ0q1NY686SXV3zJDlxna6I3nChlzhFY=;
        b=XW3IThr91+EETGq8MiaWKqXQ9nH0wEXTUp6M/TTDt231JFBTNADq/YO8xO/kGuzFzc
         FKKMQSvlGtp1w3IasbRBiTOA9GHEz+CcOzZ8b2yJgekERHhYjuybcIHErlI4HhMFVQi1
         xh2CV9suFwqFc/YAM2g1CVy4ZHmwls0TZlb0Fjgh/pfvsWB+iN7KBPnReszkvGzNoTHz
         Pfv1g9/ETBM16YtvwBtgcYlPtUdU+l4VMD96njHBW6jrzsTUSSNkm1VQ0Lik/sGp9DEg
         B+LFBvrm0oxaPT1NTGkMAmWllDPSoNc3GW/yrOlj3J72P50ckIZR7sRsty1YPtZq0BLe
         Ut+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980506; x=1764585306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AdZDb/iq6LyoJ0q1NY686SXV3zJDlxna6I3nChlzhFY=;
        b=ELg7YBlaQ2IDGNhNcvkzqNFd32QPQKWnNr9mmvcpyjBqDepLktadPomCX8425b4QBI
         F4gJjdSdeXC2QC0VEzKDJ5lkpj7wwkD6RJOgrzCEOo8GCcDAiRORGy5t9JoYOsotGqNo
         OIyw8lMJHNBi/zJFdCs7QqPxSkkeY7gmEyGBDkH51WVmCGXuraPbWtEhG4Ng83m9OMMc
         8pEhwIDf6sNr7lDB/Fm3gAN/TRDq9Ox20inBFgodydPZG21oHLs1bxQsC44o8OwUijly
         esMw7Dpu2Hgd2MkQKtR+xYyCPUq/1nGBXry8IuKQI/u4tT3Rm+3vf1zcCm01enSpCtpS
         hYyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTh4jSKqx6t1EudPRbDqkc4rXJFaeIWAD3lU0pKLUjykJl6WNpc3X5cKbSJ0oNytlUjEQLpEXpm5vA@vger.kernel.org
X-Gm-Message-State: AOJu0YzAwVomVo+PP12uibgq5eZzSidxhp9g7p45Am4xZtPbOjHrk102
	Py8FN6rzjAIJU5lqVFbJqAvZmdruchE0LdyickqzAvLTpL5ZjicakVwv468B3UpSBooRZDkNWsV
	LeZDubvvoos2J8R05cVYaBhaPzs3wdZwrEBQGc8guj7DUU0Mf+C5I91bFVryOA65G
X-Gm-Gg: ASbGncuFltZfyjymYQwqNGqOSEHmHqfDiQQXIEYPEQq1PPPxpcXuHOce85AgbPm5rqt
	r850iXaN5frSoCjY9zgXt9hgBQuwPuhcj7IWDISupSepegB2S3acYpQPWtqmYbWWGgPgH9d2XWW
	19PWYzAZWtLb/PULSzyD9vLTpJtr1cVbEkT3pVyN73Yzbbjwz+kcvm6YLx7aplYHCoyMRIq20cL
	Vmg1W8gwo6lkFJVm1Kxu2exV9zw/Ezz/SH2NbelMKTjQQZHiRkn9etXQC1Elfcalw0X88WzMhmu
	F/Jo8bMH7O8UlUL3nf3osPEPFmUsoGuv3tePt7UN4tuTqVkzvG5syvUfSXRfho1BZIl3bo3DAGJ
	EFP0zG81eGN4nsXXGXVKYvhMaWGvD55lQMpMuWj7a7pBLrmsb6e/OKY6uhRY83NcdLq4=
X-Received: by 2002:a05:622a:1447:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee5b7272efmr95407951cf.3.1763980506299;
        Mon, 24 Nov 2025 02:35:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnawLLakIQuDOxIvuZbVFALBYPtEcg0Igdxpi+j+gVarrGoPWUbG9mN06DefnoybfsgdQsOw==
X-Received: by 2002:a05:622a:1447:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee5b7272efmr95407631cf.3.1763980505805;
        Mon, 24 Nov 2025 02:35:05 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645977dsm11813254a12.30.2025.11.24.02.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:35:05 -0800 (PST)
Message-ID: <c732d44e-3282-4d93-a693-f0efdbcb9091@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:35:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: monaco-evk: fix the SerDes PHY
 regulators
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-4-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-4-73ae8f9cbe2a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HgFh_7Vb3Ca2__Ov0PXZQFNLzF_SRUcQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX/zpF2aH+H+D3
 Q5nvvLLynAiqxb9nlkP8FdHWudy5rFH1uXiTZDU696rtpVmmk+x0zAyLPggCNtPdHGXl27Bq+0I
 3l+F/iIlkd28RY+3/dK/d5Ekoj/nWKMpowkPWwPq78WH1ODoWQUTCX7DgGVDDDme6cPpV7tq1JR
 FkJHLhivAfiaQjLWQn+X9xR/kqZF+f2Gu0s8Xo7ZcjsQXR1mSLXilFaF7gErRL/X3BkQiSB5Xeb
 l1zNF8uyUtLDVqEO1SBvDVTyZbECxf2O313qr9v4KjdnoqeN3BA7ILo+jnVMr5N3FwV5WgKsq0R
 Vr8xdNROk27kiX5MjrDvIRxfYN2AxPNEiwyaJhcrAduj51oluRnXApUXNXvzbYGFpkWj5pGSEkh
 x+OHiQdaiBwsqUJ3JzfVnYNn7ph35g==
X-Proofpoint-ORIG-GUID: HgFh_7Vb3Ca2__Ov0PXZQFNLzF_SRUcQ
X-Authority-Analysis: v=2.4 cv=SP9PlevH c=1 sm=1 tr=0 ts=692434db cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=W-RQcwYIOX4xafuqNJMA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> The Qualcomm SerDes PHY, present on multiple boards, has two regulators
> providing supplies of 1.2V (L5A) and 0.9V (L4A). Update the node to
> reflect the same instead of incorrectly voting for only L4A.
> 
> Fixes: 117d6bc9326b ("arm64: dts: qcom: qcs8300: Add Monaco EVK board")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

