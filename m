Return-Path: <devicetree+bounces-224530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7306BC4CC2
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ED793C78B1
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA1EE24677A;
	Wed,  8 Oct 2025 12:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l8wzapt9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F41823D7C2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759926684; cv=none; b=CS+jc3E0ZtcKf6b9pYTg/jouJWWpOeVVp6Zzj0cFIgI8Mwlww9hI5ZcDVNCtcp0hYA19azklYiV4iKZo1KrRxMnA2aHF6o0BkiI5qPJ0fXq6CyrICJ81Ud26OnkkHVVs/zXNP4VK3PeNE/qyMAA/9eo09mud5Vcm05TDN7Jxj4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759926684; c=relaxed/simple;
	bh=NBUAGxB/tBXvLkcWyZOr1Q4qRMURG2fiZWYNgPUworQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nay6dBiGdGqT6az0/PF7rmy38+QfG1BYV+dUwiQev4gUot8GW0Ck5XBdTGmluzrrTEXl/jqti4wUe2NePX9JpIGb27SvRdpwzZXd+f7HN7zEEUTOejfo1992Fu8Fmcb99P255AXpcpi29Vqt+V015C1utPWHUXZkZockkqKNbRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l8wzapt9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890U41012201
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:31:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x6QmyeNzk2DWtq/5un0rKTrn3/g/0gZ7LHuSs6FDi+Q=; b=l8wzapt9DQeNUk38
	umAl/VcnvDBK5n3FOf3BIKAPQ+KdxaePFfsJ8Wr750zDZ/b9/2e8nRdNtRSL2vHK
	ilu0uyJCvdptf/b0F/XOoAeJ6xiFDSUAmD37jLxBrDCzHjKiM5D8+Dyw1Tm6mxUe
	eP00gzUg+DDXKtCjwrrU2Qy8v0n2uLUUI+zlcXDo0bTZyytMPdkJzIfY0NpRUWnh
	AeRLdUX9BVaqHyOAupU+dvvckN/zUWo8tr2H5HLTNBGvOjE15+N3Jdf3MGTurhbk
	oe3hF/s/VuRt/vHO7YdDa74GShsJRt6exp6kpbMKpS5Q5YSB5JbA9anC3qqq9UvF
	fHYe+A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkpwanv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:31:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e231785cc3so30436911cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:31:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759926681; x=1760531481;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6QmyeNzk2DWtq/5un0rKTrn3/g/0gZ7LHuSs6FDi+Q=;
        b=K4X96v6TzV+NsfTk68EnVGkYIWMHPoCpfucP+e8/FXThoMcDL+AcTxhHjF/NIbqAI8
         V9krptaG+pNx/Wwbi6ZsDILuSbCPyR/msFakKaiO9axd+Sqmwwh//2eRjyAjr6b/95id
         bzGqjy/s2zrHu0T/mVJAi58UwrXLkmt1lGEgoB3Nj2cDbLVw/2M8CiUDKg82Xsboyjji
         JcgaNe8fDRpcpKzdZ2q4OK7m/+lcuf9fN6q6Uj0FkERJMYrqVvRHBtRLkH6vouZwL2qk
         kJ03ok28kIy1H6jOA4durrG+bLMp/DNjFqn145YcOUUVLxpxKlmmKuC9WuiRvko4zMJA
         vZSw==
X-Forwarded-Encrypted: i=1; AJvYcCURw5NvG9gBUfi+mEUBjHem5zooGaOnw/okCLKGG8UJT3PU9fa5amVgZ80gGv8QARs7gET3gmZZcO4D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3O9atqZZDi8VnN3MgPgjYMROLilVDuNEeJtk4TjKNZYxvrQ5f
	FPWkmIK/kokd4k5f/XCNNgGx0ITb5auxEkk1J4MzFBH9AxNmnsJpW8e2oio8RN+vWTj8YyFHHkf
	qFS2XDFy+MTnksAc55PyCywBHTTxBU/n5WWucrYN08hHO++DfXuWPCtP37xaoUq3Y
X-Gm-Gg: ASbGncvGs2PI/7Z/vNQJRqFtFwy8xjvEv9tKyEAIXE5VyXFmYoLZfLeVxjyUFFLY+rY
	Xxd5CZ0bKrLP5XrM1dOqiT4Jz3yJ4kAGxcLofAVAjubl+XCRiBsevdkputLsXc1G1LrCxM2SNK3
	Jt41u9OahyfQr1P13Zf8F35kV6zLHnzFoaaqoOs2pKrb47WdU0uayFvJOdkWJ4k7eZ40rGOeoMA
	D4+OwKZiO2ISKO4JKz2HNKmMA3gEBpF3YjwMyexoGkZIGhNz/dEnn+4Lzm7WWdakKVRaDx4S3Dw
	xqi35D5LdzP2+s9pTykcy4aaetq8n1H37v5/mdQaseed3DQk/pDY+cFvQ+93ouOkCubrm3yFeVK
	c8UboPyZECmsAHaoluJZpIUSAM7U=
X-Received: by 2002:a05:622a:1391:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4e6eaf1f297mr27572651cf.2.1759926681007;
        Wed, 08 Oct 2025 05:31:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4pwI1MduX8smavHYwiDb2mslV760+0IPE3g2CfsrQdd9P6KG/JHQdrqd0yDzYls3wRPT0LA==
X-Received: by 2002:a05:622a:1391:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4e6eaf1f297mr27572141cf.2.1759926680377;
        Wed, 08 Oct 2025 05:31:20 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4f93esm1660139866b.83.2025.10.08.05.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:31:19 -0700 (PDT)
Message-ID: <eddbe8c5-56ab-4007-8df2-87927696bda8@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:31:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: ipq5424-rdp466: Remove eMMC
 support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20251008090413.458791-1-quic_mdalam@quicinc.com>
 <20251008090413.458791-9-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008090413.458791-9-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: aSSU_InElTEh93q_42BNAi-m7fCpEB5l
X-Proofpoint-ORIG-GUID: aSSU_InElTEh93q_42BNAi-m7fCpEB5l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfX3pxYbTlHm19I
 lDdtgsceyiX82dnPOhxBQ7gd9oA/1icmQSXUOSw6HvGwAsRIC+vlbvhFd1r/LTZk/KizDcjbvt/
 dPTEln+XGr2+gA430rJNIzUwaIOoYcfIIb5McB6QdhQ3f8GLGW+y/ITs1KoUBWwn+mgEzW6b47G
 IH6596NqtsoQp7dGeYbHRpE6TJyHNUnTpYWCBvPqBUIxlFCcL8bgTpGJjuyhPBO6Rr7og1lI4fU
 GlA4HMGqwRYECkGlxAMu/TbrcbL1qR+MaF7J7CbGUA6T6EiYN+yjE6r0BXHP0vYcCyVUqPnIxPO
 DWK6TaCeZeNcEhwviiV3yTu60X1KtWzS9dKM9zMHsPdIWxnqcpWYzts2HaXxD2hFY+lr/24chry
 zo0YD6eN48zxYdW/V3ACpURBao1wQg==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e6599a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=be57XhxKj-X5Z9eHZJAA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168

On 10/8/25 11:04 AM, Md Sadre Alam wrote:
> Remove eMMC support from the IPQ5424 RDP466 board configuration to
> resolve GPIO pin conflicts with SPI NAND interface.
> 
> The IPQ5424 RDP466 board is designed with NOR + NAND as the default boot
> mode configuration. The eMMC controller and SPI NAND controller share
> the same GPIO pins, creating a hardware conflict:
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

