Return-Path: <devicetree+bounces-228846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8EBF138C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A2BB423A2C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D458E30FC08;
	Mon, 20 Oct 2025 12:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MUMiDsvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB431917ED
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760963400; cv=none; b=sF6BkocfvKEBY4m9X0wEOrz/QAMBfjzC59ID2wJdZOBDqpLN0j3cOZH7KqLM8dNaBxng6vRgBYwyI8yUtddUe2V74/KhKzg7H624U06VHkvppRIdtAJvFWQQGqOrQmU41G1GTi1QtXFoYvGb84Lgoe3hytZeE41P6s6nFjdSj8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760963400; c=relaxed/simple;
	bh=kY5bwD/tin8m/07pjzzS8+MlMr6Emf//C8kVMc1Wo9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lisoB1RqQTh+UvfvXeLvZXj88ESZDtKqNW+/j/PMzedVnMYXORR/BTj119YJWQ835CyXr8TR/e//2X+9bGOHlwLzytc9XrBSIdjEHJEAnT+xGckiom1ldupvx4caFH3ns5zo6IUH9CreDEoiESyySptG1G8QsrNM7MAGFlrnOcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MUMiDsvs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KAoMsR003617
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B7cbAVS4lpZ6y0VRAxwtzCg6TdsTtz80a5PJ9G9SBSQ=; b=MUMiDsvsE2UXqS7W
	yZr2DB1p+cbEdkt60KZkhWxmpokYEh0tHEz9eyDagjqQFk4lUV/himQoBqh6+PxR
	D89/uTMapz3H5g7c6EgBLJwR+CHTBIQi0B4O334JZoN8vcZF+EGFaJVGacuomRbv
	fgXphJO4cIw28hTpwVcj6nS1XCvbvi2za9wX9p9N4l1PQtnyYeIc6xx9xy3mOLAy
	k2R9qRQVdnPy24VkYNcb6wPfqH8HSKVWF5rUVTBnRZ44Pa0kK2u5mQweNSf4J5TM
	PLUqGbJ6bMkW9LyrvV9EMg2sfZ8kfh7YH6DPphiY/M+vJoc3K2MyYicVb+zTn63O
	XfAMuA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w7vspa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:29:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-89083a0e150so116555585a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:29:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760963397; x=1761568197;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B7cbAVS4lpZ6y0VRAxwtzCg6TdsTtz80a5PJ9G9SBSQ=;
        b=SahREGZzZqc/gQZXMTi83/RE0Xe5ahOFrNdlgDOkQ26t0Kpg3FgNmi7AcyM7rt1vin
         h34WJVkm0f5NW8anhg8cahuSa+wCDb1gGmVvNtU+O9QUhCHH2Je6A1nnxX8NwzNYx8ER
         emQBxnnqNxgx6F6mA7o0nMUEiMXP85p3ozh3HRDLNaUxq8ugHnGXnh73uddjNKHdlWBr
         50m4/MDuDSVQxxByeeczYem/pR83nd8QalyXl+P3LhXqpDh/4dIYWxuSAix0rAEVemzy
         Q6DhFXALfMm2LHjmQOWzqiunAkAD0xMpUllzUD/DgQZ7IdPCnq7JRpibMOhLeiyFXLco
         OPGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYbUuocTVzAWnSSqPs5OYx1Uv+98jjZAJIXCMO0g/1YnacNj8Kb1Rm/NWdgITrtB3RN1z2fxxi6BhL@vger.kernel.org
X-Gm-Message-State: AOJu0YxK1/EA9pubi3oG1ClpFkoTZHSALsDbK1j8GW+PyfGsUCK/FnkO
	lOdcb4jtEpJo020E7OwbDXxzeyDyolkWdbD5XQhtLFI5sPTIzI4/tKcONKwpPxjxDWASDjLwXOd
	totuUvUNe2o+8X9r+F0JzDwbvWivhYImMfTHp/GVbz5i+3oTuDVu7YKZFsOAWTxkU
X-Gm-Gg: ASbGncvomSFZ6E6C+W7elLMDYbW7XhVt2O4ALCk5HHGNADMd7USNck+GRkYBbYHZaoD
	v5HR/HM+6iWhN0z8RmdVm4uw0k82xK8iyXTvOpro1EjZ51M1iHOSIy16NIjS/5mduVNH8GbHYY/
	X6jV3+wyZ0Cts+SnVD7qLLWNGOBIwzRtg3LDSuXfcnMobhrjWgWEhcfWOhdGm8A9V5IMWxMt54u
	Idh3upWqZiTZ29SIJnA/HOTSxEhJ1urqBdov2T97UorBG+EmsMikuU2am6S/mryuAdMU1SoHBWb
	7OwVfAl0dWeE/I98NeQhAd7WjAqRXvJInhE37sEL4yXfyM5yHkZSoRLbu6Bz0pFLN6sylJHpAWw
	ULNh7Ea47aQOZHjs0jUZEDs2zGwPYb4WEnsE4GM2+GdfqbFsTuPWWsspc
X-Received: by 2002:ac8:6210:0:b0:4e8:959e:440e with SMTP id d75a77b69052e-4e89d35aecfmr80596971cf.10.1760963397476;
        Mon, 20 Oct 2025 05:29:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNR/XkjXBAoi3RveOS5rUu44E6/AP4/g0pKZRGBESs7vUDC7aVr4PCy8sCjlDaEHLvbU971Q==
X-Received: by 2002:ac8:6210:0:b0:4e8:959e:440e with SMTP id d75a77b69052e-4e89d35aecfmr80596751cf.10.1760963396955;
        Mon, 20 Oct 2025 05:29:56 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036884sm771820366b.40.2025.10.20.05.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 05:29:56 -0700 (PDT)
Message-ID: <8e957768-f03d-4204-8eab-e3f8ba3bebad@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:29:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-shift-axolotl: Drop address
 and size cells from panel
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251020-shift6mq-dt-v2-1-d8fc3ec71281@sigxcpu.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251020-shift6mq-dt-v2-1-d8fc3ec71281@sigxcpu.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfXyiDpS620AnHW
 Wg8HN0CYc6IQu2AsTBmLe+pauk3MTDrx1MX9LNeJCp3hCPWdJ9RlHJbkCBfbSLsvvkBPbGY4ypl
 +0rvvKjruqyUC6jOhZRyeOmWibgg6O5gCvCR3RcTvzrtHQzYazVpOIoArmgDmbyS6LkVTsyde4s
 cLhC/lSeGxvSvaFFDDXiB4zZa3OeNyU4+uif21E7/kgJbw1oqBCgS7wfxQQOigIMO+DwkoYTw5a
 jh5aAdBIyXcp1wHXjlDB66z12GfcJmqZX2kShXpeQeGpKIgLi/oUwNJtA8/3O+6lxfaUEnslo5n
 PWiXtVBgdFHkE+c2NJ/mzJIYt71LnOOefonFch4E+kk42wbGCrGsQXc5Uy4TwvORUW35sAxfRe6
 rG2bTVLPQFExFZD4G5RUqvIC7E+w0w==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f62b46 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=ze386MxoAAAA:8 a=EUspDBNiAAAA:8 a=JIWnkRdvRZ92eSO0A0UA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=iBZjaW-pnkserzjvUTHh:22
X-Proofpoint-GUID: 7Sj1Bk4Skg24jKOqlrGtyKaYQLeq1_s3
X-Proofpoint-ORIG-GUID: 7Sj1Bk4Skg24jKOqlrGtyKaYQLeq1_s3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On 10/20/25 1:58 PM, Guido Günther wrote:
> They're set in the parent to describe the panel's reg property already.
> 
> Fixes the
> 
> linux/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dtb: panel@0 (visionox,rm69299-shift): '#address-cells', '#size-cells' do not match any of the regexes: '^pinctrl-[0-9]+$'
> 
> warning.
> 
> Signed-off-by: Guido Günther <agx@sigxcpu.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

