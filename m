Return-Path: <devicetree+bounces-130432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 470D79EFBBF
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EC3516E7AE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5FC1DED63;
	Thu, 12 Dec 2024 18:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T4LaRVBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0BC1DED52
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029610; cv=none; b=MohUnV1KRV3ntc+a/rW35Tpo8icIJKbgh7tjEF1aeJW+jR1H6+EU+FpDjOgD2Em1lYYvkekdhvUYlYYtdT9qiw3WZL2mVXCNrkdwC3iwq8dTeREzRNAwHYPAJPfBIQZu7AYMcvJQVPs9XBRTJQC84G5umAgjb5klKTyDVLtdds0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029610; c=relaxed/simple;
	bh=EY1UxdK0nsOHWEs59Tw3kCkc5SCtUIiy/NMaOFPikXQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TRBqimDHcDcg7mc5Dn7NB365GV+8hS5MFLyv0+eVx0OU3kbq18Fy4RA8KMyNvfyEvLChjGL/5MMKKWGIKkatauNfinNdX6PmD2438Ok7/jWhTSsT+yuFERuYY6oeNyuCMBH4TI8MxR6Ikv4bCZdrRkNbi5QTtScN/9F8w0cgKLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T4LaRVBe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCDGuNH016584
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LdB6cDqzU1MgjnjlzkYNl/VMPEULsRDH732vjHhqf/8=; b=T4LaRVBesWJvnD12
	qD2TM3Gb2rdUa/bb94EDXIG/ZvAjOWVVykXx/VdtMnu1rtsJG1XBPtpSerUPMzdu
	wu8avZ6vt7jk3JnuQy+Sd1FvLO/a13Ddj9EsImjPhau+8s3DDpMtunjhjMdRNkML
	w3vgm0pDMdgF7OvO4Ye5Bt8cOVm7HcLvRjdIbmYnkagdXd/VOxs6USxC9QoUDdSK
	ttZNzRANsQjECmlIVthUzQMTXvmisIsRst5uYrQbljs1yyGVb6zuKvrK6DBFnW3q
	PCBPwwmUGPpwc8Esd3HCCyu9MHZa+3gfV5XUvnR7nQ6rE1DJf7YSXwcy3ALD++Cr
	gdW5qg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fxw4s8ew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:53:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46792962c90so1430001cf.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:53:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029606; x=1734634406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LdB6cDqzU1MgjnjlzkYNl/VMPEULsRDH732vjHhqf/8=;
        b=NdW7OpllWkso7uaN0aqX8Q++mT7e4w18jzvfpomL74JhJtS3BGQePrcNqHQ+89+mRR
         021dF+4Ck2fta9H+4S6Em0PwzRgZz9EQZs+g2MZU9Z9WrK4myeu/7NqAfpV6lWKBHH06
         IqJq4sw9nHp343a31JgutME+i1JZsFjmnhuNm8mb2mjEmHjwub33rEgB2Q+9thlkhTOJ
         cm06B8hl9avVtnkCwU+AFC0GoViJEy+8PCuBHp0Sg74/jtZfjJ4QJnxpEM/tT32XKZ/u
         oK786T3WoeGLR6fK12uq4jbgsgTMC6DpxQWqvbFQElkkvKtrVgPOQd4m+HHv6ARnpFmB
         rnhw==
X-Forwarded-Encrypted: i=1; AJvYcCV4UWihFOnHiHJId6Q7ToiNVoYkB40c7zyW409N/PqoT38YFnzZQpaMAH2xnQUPd0HaqasgnSWYK8wk@vger.kernel.org
X-Gm-Message-State: AOJu0YzyIn5z5WETvLWECVDQHVwiIs6gspGjMgGaQXHN0EDDLaGytzRz
	LyqcP5mi1CM0odTjnnYNQnTNHE74CQFIARXiIZ9pmUXARV30Y1+cI55jieb99X+99zVXhpLtXla
	Z0Bwch5e/vdcosIIpOS1au56RG+xez88Dgbz51YBvqe70u0eWyewiKWhOzF0P
X-Gm-Gg: ASbGncugvvqRTGLB/l9+hwynhfDqI2hj/8MEGQeyr/aHz4ePtvGDYJsE2y8Cv6uTgIe
	5V1S+Ph9GefahCYPoKdDWOTO0CUaIFfQERt4FK6MZpYV6iHoQ618UiA7MBHmOFX90wEOzCCrbyA
	vqWZQENSUekx2mHjHUhhb+WDQnoSRr1phiNvlaAYZ2K7inWgH22aYhri9FA0hXKGQdOD2kL4g9R
	/apr91DqQrxWRamNHnOTpRlh3L7vXcwWOey5mVDAKf+KdteHv/CwvzkognMBBXo+XKStHmEttRz
	EtVl0KNr/xfdBI4oQZR/TCvP2odjvqm56qEZ8A==
X-Received: by 2002:a05:622a:2d2:b0:467:5715:25c4 with SMTP id d75a77b69052e-467a1561349mr9204171cf.1.1734029606249;
        Thu, 12 Dec 2024 10:53:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIfdMJ7rlJDsdt/7e2h3sloDwTE1OoMFI6dE0DJYX/lscuXfr5CeVpufRqW8H/WXoMrQ2pkw==
X-Received: by 2002:a05:622a:2d2:b0:467:5715:25c4 with SMTP id d75a77b69052e-467a1561349mr9203961cf.1.1734029605840;
        Thu, 12 Dec 2024 10:53:25 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3d00a0370sm8926282a12.6.2024.12.12.10.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:53:25 -0800 (PST)
Message-ID: <0f9082f2-e44e-4021-8be6-8ca7a999cb2a@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:53:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v2 10/19] arm64: dts: qcom: sm8650: Fix ADSP memory
 base and length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-10-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-10-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2KF6PBqvRwJRixe8ZMFukrk7jDd7-hdl
X-Proofpoint-GUID: 2KF6PBqvRwJRixe8ZMFukrk7jDd7-hdl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in ADSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB): 0x0680_0000 with length of 0x10000.
> 
> 0x3000_0000, value used so far, is the main region of CDSP.  Downstream
> DTS uses 0x0300_0000, which is oddly similar to 0x3000_0000, yet quite
> different and points to unused area.
> 
> Correct the base address and length, which also moves the node to
> different place to keep things sorted by unit address.  The diff looks
> big, but only the unit address and "reg" property were changed.  This
> should have no functional impact on Linux users, because PAS loader does
> not use this address space at all.
> 
> Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
> Cc: stable@vger.kernel.org
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

