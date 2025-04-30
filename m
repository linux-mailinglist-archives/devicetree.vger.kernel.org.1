Return-Path: <devicetree+bounces-172340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9805AAA4823
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C7B01B66C0A
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E28235062;
	Wed, 30 Apr 2025 10:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F9OKSmWv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7886238145
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746008321; cv=none; b=MihgzP+2tYHhAXmP/qfktz6LWPjr/C3VhnA0f8Os9vTqdcy8WIHnlXq4AHuALzu5AfjL4lwndHDn4KLQ5/RImtNGbuzJBuMatfaSyONJnMVxQfpsCQfXE8p9c1ARx5IwvqIwuRqFLS3FEU+7O1ZAgtgdyVRCMBtnlrmazxHA/S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746008321; c=relaxed/simple;
	bh=okgaiHoCfNZIj1mJBgATqTIMGHfVHIGnTJ5M+2oeyF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XzvGKqF8cFXOgEywo2iTuXp5xbc0NK45jRDGr+cY1H1yDpbg/T1eURAnBl34+oDsPzQvgKm6M1tO1O18wdydrXF01CGwpRx5W7znh2USEyivZ66ojUKRp3g8TQC99I3nWz5m8z9dpck3FlN+ReY88KYMlxkqNHHzuije+2bq0EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F9OKSmWv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9As6M012228
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:18:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n8THpF6xzojubR0Ot/txkzNhNyCG9gBGkox8ywEikfM=; b=F9OKSmWvytaVM5P3
	Zygb5c4WZ+Jh4dct4CHC+ZEue5xJAP0uGwzENos7SMwxfjUKf4r/b5AecaPTFtc8
	/+jlbOEUzfUtkVxET0pgEJOffRF1gerj7S9vtNvoPrtu7SBBuq/jYejxJ3wjAVcZ
	EcMAin+PobUM+8UYHG7xkvpZdTNxi8VVPXPobqk/aP4ecVvTVD7B8eenVIOrMyXE
	J6eqRt52uPDVNC2sO6XDC8DCAjnoC4lbk2III5dG0FSJJhjAQHB1eRw56pFfM+A6
	DlxgNByguPhrZS/2JOWCfW8sUWjmPuPfU7nIL9nIATmjndqmtupD6DyF6QmpT4YB
	/pLgew==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u3sqh5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:18:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766654b0c3so14583061cf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:18:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746008317; x=1746613117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n8THpF6xzojubR0Ot/txkzNhNyCG9gBGkox8ywEikfM=;
        b=EzXpBYCHb24mdKEeqmEZTQp9SWg4aWjFNx8Pv5ILx/UEHxbMLoaevh/a7amPLoLHza
         5EpI4hCFjczH5REUW2qSDhax/SYYO3xdXcpbiutlfiweyIXkGY0+3mhMuYYpJevzrHLb
         ofawIWIefEzaTTFmuVLgNOON/J6Mu+Y9DGrg5SysNbeqnkvcsn2tzK0CuofPqjNsdfT1
         xJrc6p5LxtHqFyScqzSzZXLxiRTwH3Fmiz1H8NyP1mPFGas/NkglvaYdwC9E0zsggaEo
         3SZxLmvGzt0vfzIcHqTCSUti6c+ZM8trD17wP4fnSdPZsVxL8T6Tu/nh+SvLkTtIWMtb
         G2xA==
X-Forwarded-Encrypted: i=1; AJvYcCWxHk5dF1kaDAgpP+HHXmUjH473UqZ+XPAZw1ugdK3cIeJOuRNI5wYqtSL42GEQrCz+KtHoxE6mV5vf@vger.kernel.org
X-Gm-Message-State: AOJu0YxjcIqG03UVaKnoRUfvrAX10GPVDxhS1+sooVnEPgyCz6vfLAY6
	MjgSw5YEox4t69oVYvOlhkKbosusYOsxGApxmKkONN/Y0fnYGbkMOrYKroY9zSggTTVulb7yNV8
	I+N6IGoIZ1q0N0NAqXq9i06ly2QzAlrdYPSg4pEdDt14gBIqpT+xxVYvKexrt
X-Gm-Gg: ASbGncs+UMoCcIyDhpRBFyZY0KRuwNYA2tAxtLhxNs4hGiVv6pipAHb9Zsvb1Dbe8t/
	NFByWKD/2ESIXuJXZDoLdmjVbItONWhzELfValLYnlpKrD9yiYJsAYNLhGU2GlvVMualETFoOJj
	6sbmnJbC/8jNb9CLP/tVKRCErRn15vUPfycdnQUQHzy1UdnWtsBZCfpVv6ujpWpdE9tqECdaRcc
	tlvZP3hOEDuX/z/L1bs8UDXUAiSuF2zzlBW0rCepgd9cwQYBjpjhHDzLxeRkwJ8oDG64PRfyHU8
	9a60xfs0zfjGzxbyjxEvq4TusL5PDhEmSgiMZCmimdFdwfkeNTZYPzVGjHOxv6L3CXQ=
X-Received: by 2002:a05:622a:550:b0:476:652f:4dbc with SMTP id d75a77b69052e-489e4d77485mr11338151cf.7.1746008316970;
        Wed, 30 Apr 2025 03:18:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO23cvXrGFB/iOngY/UOzNWgY0BSboZs1pXty1cvWHt/+wicp4JoHuzN5FLQhX8ailkyQqHA==
X-Received: by 2002:a05:622a:550:b0:476:652f:4dbc with SMTP id d75a77b69052e-489e4d77485mr11338021cf.7.1746008316689;
        Wed, 30 Apr 2025 03:18:36 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e595abfsm901834266b.86.2025.04.30.03.18.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 03:18:36 -0700 (PDT)
Message-ID: <d99deabd-878d-4600-93df-7b9c1cf75393@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 12:18:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs8300: add the pcie smmu node
To: Pratyush Brahma <quic_pbrahma@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250429-qcs8300-pcie-smmu-v2-1-445288af3ea7@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429-qcs8300-pcie-smmu-v2-1-445288af3ea7@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Bv6dwZX5 c=1 sm=1 tr=0 ts=6811f8fd cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=PbmTXqVU7kiPfYgbbi8A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: UJgAnLzRXjw69wfzWQ35hJ0lbWXmDhw6
X-Proofpoint-ORIG-GUID: UJgAnLzRXjw69wfzWQ35hJ0lbWXmDhw6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA3MiBTYWx0ZWRfX2O1uoxHP1GUQ zmsAbA426rZgQQZEc8+1KTdP4BtgPR0Cv1xrQCiz3Oj2e8nYEFs3M188EU/uAWv4o+kKfZrVirM zeoVwWhbF4VUEr1ukXMkj/XPb9iwo159h2gjifkv+Ergim5n4OkQ/PSWnSLx94YlyQE8gmUNvrB
 TsCB6gL0L5UtVcqlmrSFFB2CRUsUVXIcH3ykzNt/66zFuIlGvW+nk+xInVnf4a9t7CqcLz44WVo Cb4d+3tJSR9YdZydE0Ya+LqKiUtPNnN4MLZ9BBkvCp4w0wj7Jjn4JJHnTWLzOjz4S7SQYItUNkg JBFxaHlOFGDlDtOdtiomjXuVWKx3SYLaROfgiae2G4PCwGyWaM5I6Asqw4UIpjTPP4wHMC5St1X
 V2O26uQMJRfRYoVpNbz2FMx3hKdgx9v1bgB+AmblC4GpLGvlEGcbWsi9Sqq2HU5LAuX4lMcu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 mlxlogscore=768 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300072

On 4/29/25 12:09 PM, Pratyush Brahma wrote:
> Add the PCIe SMMU node to enable address translations
> for pcie.
> 
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> ---
> Changes in v2:
> - Updated the global-interrupts and interrupts based on Konrad's suggestions

There was another discussion on a similar ambiguous numbering issue
on the related sa8775p, and now I'm beyond confused. Please ask
someone internally to confirm these numbers.

Konrad

