Return-Path: <devicetree+bounces-211666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7742FB4002A
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F2625E6197
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2F3B2FF147;
	Tue,  2 Sep 2025 12:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wzt2ivyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC112FABF0
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 12:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756815078; cv=none; b=VnFC3bKCZYc/IfOfjV0/wsw7de+GADxgGuL/Z/w7mwLQIYb8Q4kA2haRFUtXd+rjJrvtFQqrVjqoXSMAlbTyXV8PYd0U7CFlwy1+UfwJliX3e1fV507gntB5IaFwWkPxkvxfLeQr3trGOQkIfiKr/iT0Vo7xhgXzIGNWbRrExj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756815078; c=relaxed/simple;
	bh=Q9xhz7InacewkR2sL7hxMKTtf5/Apj8ua9YctrXUMkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lnPNKOJPCMJovaOrZh7HHa4K8qFvxL78hW9OZo9XNWi44hT43twKZn8t+hIjalBoW1iKTU4ViaTr24OXAg+xZ4toc0Fcupm/rvRoMoUdG3riRicalddbdNj1Ux7sD6Jm5SAylMp/HQ1dhuzjmJfaNN56Cv5j7+RKXNqO6SUFPzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wzt2ivyg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AxxaX015204
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 12:11:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4vrt0A6ANjc79IaqhSJY8cPh7b4X0YAYPY/tdBRrzog=; b=Wzt2ivygiUPCUSwo
	BJAREK+B3YS73ADn7xyrkA3+Yid4oH+u/ktvtdOE2h2Aqx7mOQvkPPDlD6icrrBG
	8S9OW/8/QvXUjbtHgz39CKUw0RxZSjXRqA5DAMW9zUkdmOR4kMSEu4CQVKMcDxQL
	YNw2ENT48z1OpYcLawqx/abCCZksctaQ/99bSs7lkAqi+RDh7ajNPQ4E/st5RjgD
	RcKslF1kElgGzipF2lbQaJ5EUcMdEehlpngPrqnctql7iLR2r0oVhQF+QbHBQowl
	cD12I5MpBTvQbz0xvmgi8fcKmPSvYaqak+HBgFOtdKQwOhENbIiWtavOo1N/T5UT
	ett0MA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urvyyq4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 12:11:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso11116521cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 05:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756815074; x=1757419874;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4vrt0A6ANjc79IaqhSJY8cPh7b4X0YAYPY/tdBRrzog=;
        b=jaIWNk/V16PsNsIviFem2ODQcNKXEm0Co1YMoAQVr18j3VCnfli2NlXkmgNObYjxkf
         hAusQr2H1e8Xll+rxqAk+3XtrOgpZHsSXe39NvG1cJGn59ESrUGWVOwvnHfltJACLrqX
         eBULZJDJAJ4/2CIQh3BaLGYxZuyQNacgkMXvJwrEn59XCmcay2Q7tDifupp03v5bnVBM
         o2FKvjb8QK9CTpf7BsXj/N6V/L+J9S/qhthGLKLeqylsLfDbHf+HwiZ/VvDNdxJgk4Bi
         Ta6jhsP6c1pC48uesC9U/VDZZy9crIoqs80CJ3M+Ui1KM5rX67xcLp89NjcnBH46J/Es
         3oEA==
X-Forwarded-Encrypted: i=1; AJvYcCWdXFZN0LjkdJnuLZuq19jZYqckAqi5S3ED1hrUSQD2ruC+AS9q87nClx7O6hCjX+6a0OvzcKrHqxCx@vger.kernel.org
X-Gm-Message-State: AOJu0YwPq425HS8/s+6w927Fm4rs05tMhVLg0A7nlrHJ9fOzdVYZQnb0
	0EZ21dKvrjYurUzaOTjv7OMDGv36waBTrqRtHdx7fP7Uppo2arol+EGHu6iDuRPCoPoCyMU8c9d
	oTVouvRuC4mcO3X5FGTy2m80Bu4yl1TaqgCeQX11LuWIweIv/7OMWr/2Q1c8LiC/b
X-Gm-Gg: ASbGnct99yv0FRtkk37l1N/R5X81unVBY6n38f4qRIln+p5sRc6d2jb2pecxvVujoBx
	Am+4T9n8YW5nUV7GzzC1CwHjC4UoFb0E0LeofgMImUXdstEVCWUCzlPThkKn2Q6rlBg9U0lav4m
	vd8oITxN3mq3S/71VHC7lrZwdwlruUvp8fkI0xwPqgr+ecqVmX5aflNfD8ONGUnmyK0aGmxr9Nt
	TaqAkVKwFm20MASHdkYzWPgi9Bf7TtFKzUwhGJOdP6E+2ldsKq+6EdIdRMRJTTDfF7blr2qBASk
	Enjr1w+jhcsMx/7e9oEA+SOuD6HJXaPjaHitDXjd3uHHRnJugMs9C7fRFjI5CLz+7BiT9+DWlaE
	HZ7SNDHsOhQ2dLj5nXD90aA==
X-Received: by 2002:a05:622a:241:b0:4b2:fb6b:38c2 with SMTP id d75a77b69052e-4b313e63155mr114514491cf.5.1756815073742;
        Tue, 02 Sep 2025 05:11:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3KfpCYj++Nh+x6sT1ov8IcNZd1mz0M6lJHlQz2dAizYJPZViCf3FEA46K+1XVLTY1Q97W+A==
X-Received: by 2002:a05:622a:241:b0:4b2:fb6b:38c2 with SMTP id d75a77b69052e-4b313e63155mr114513821cf.5.1756815073082;
        Tue, 02 Sep 2025 05:11:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b040f1cf4b9sm698003666b.29.2025.09.02.05.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:11:12 -0700 (PDT)
Message-ID: <b2838f7b-8da9-434b-83aa-fa117bdb715a@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 14:11:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/10] clk: qcom: gcc-ipq5424: Enable NSS NoC clocks to
 use icc-clk
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250828-qcom_ipq5424_nsscc-v4-0-cb913b205bcb@quicinc.com>
 <20250828-qcom_ipq5424_nsscc-v4-3-cb913b205bcb@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250828-qcom_ipq5424_nsscc-v4-3-cb913b205bcb@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 21TEkGVm3PlylyuRg6FILLavgZdOUQNy
X-Proofpoint-ORIG-GUID: 21TEkGVm3PlylyuRg6FILLavgZdOUQNy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX/nzwqR8iq3FA
 NOLi1H7yxqq1FjaR3ssVYtDMtMxRWe6CMnpvq3Ejqdj5SYST8Zi1eidH3K9X5VxLmspBJNNF6jo
 tWZ6Z0iDka9kYifJfyNOkJ3AmZjOSW8U8JFR+JUNOh3YV301PkzxbFAGzBWm9Yxsy9C/QPG3Pra
 NN2N8SEnJedayHwvet9XKBwbSFjbs2cNu+EmJ5aVoT1O8lRYv25Q74l1L/VaoXXR27EkUMpz4h5
 vIbX1Jg7tUIbrFtKMizx7TrVnKHGF0Z/bwGGyM/OfaLuf5uOSY71qVdux053fGyhVl+Vglbq2sN
 0xLkSJ+SplGl98GP0d2euLk9kkqkm5FmTP7oflLDjfPik2Y0Ak8h1g04y2KBmBUeaXSlCdjve+3
 gIE1XoQ3
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b6dee2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=DdE-_dUAR9VioeaCo_UA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On 8/28/25 12:32 PM, Luo Jie wrote:
> Add NSS NoC clocks using the icc-clk framework to create interconnect
> paths. The network subsystem (NSS) can be connected to these NoCs.
> 
> Additionally, add the LPASS CNOC and SNOC nodes to establish the complete
> interconnect path.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

