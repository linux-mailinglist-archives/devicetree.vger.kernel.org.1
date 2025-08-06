Return-Path: <devicetree+bounces-202150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DC8B1C386
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 11:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132E87206E0
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 09:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72ED4289E2E;
	Wed,  6 Aug 2025 09:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="huTiya0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10DA199E89
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 09:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754473300; cv=none; b=nptrV8+7wgtbs5qjm9MwJYuXaKZtdzzQhYnXDQL3XtKGLuOmGplgJcx0VAjp4p2LHETI55/mk5qiVgalHDmD9zQvKu1ZME3sLa4ANDI4rLzLGo7koZEMh7RHssCOo+ORu1FU28cN/PjWyx7SgCZKTzzBGe84M0J6zhNUYpuMKzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754473300; c=relaxed/simple;
	bh=pgv0yQkNz/DBClC/IvaptKaPbaQzzYBOnrzrNVwFKnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V6cOyIsSQekgB50SBCMM6gy7N4vTn9DAVUJXHQTmJOUqZ11er7aV5VKPAKT3RPgogo7nLOSJLqiSY6F8vyZkzWMnWD8IUb+2N9v44vAuzZ79EXCbPU91ojh/2h/6VsY9kHN9AZzmvjOF+ITLpLoerN2QYbVF+5TDuYzZ7DWp6Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=huTiya0X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5765iqmA028205
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 09:41:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7VakF4VB+aL+NaS1MnqeG+4TxHm+weWhZ7lip1w6QDk=; b=huTiya0X94aXfKGs
	P5deAgB+8aDXBQ8MSQLYApgbol2kiwjgdDqxq/R6KQIVl+a6Vo80w9YWE9nu+bg+
	47objIpX+U4R4fBiSCVgz16uf0wEb0zKikT+eZoY7sBhkHqlQZmUruEvKopWIUl4
	hygomckaxoPnDh9L0A8OlqwKDnnTmrTkaCCp0qjIdLtUuAyWCS/EknqVCn7i47Ke
	q8LHW2mvDXg8JqPojNE4Ytfh3pOi0ubsD6TzBOO+6rXH2xIGEWduRDIJVK3wgptg
	Na31JYnDJUAzM8XaLDWuOHh5u2d0dphm0mDWVA39BLMRixlDyl1be9QUPuh3JNqJ
	uygLuw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvxtb91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 09:41:38 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7092ee7f3cfso14267346d6.1
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 02:41:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754473297; x=1755078097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7VakF4VB+aL+NaS1MnqeG+4TxHm+weWhZ7lip1w6QDk=;
        b=nrZDYLQyN9YAYwI9dbcW0iPDTxIgRXJfikVi4VkXT+s7AroWHH96Nm9G04Zu665at6
         zWXywrNCDIPtW/FS54/lsZrZ4+Xgc6ywLAHli56yv0uhGtglSacIoQ9e2qrp6Y0Vh7X9
         01u9SFIDfYawIgzDQTDOfaruK+a3vvrwMOwWjQJb85Kq+17qdHuBotef55370fPJ5hv0
         lELLwp5SfHltc7eFuICJOeb/H+o9U/ksVJ5haP6eZz97FKkkpUUsw9h83PJyCHoTOpk7
         MgxUnknbY4A1IZDMBBdAOh2YzUnLv3UOK5agNqfLKJZ+PZmh9XR16+Wpj3mHbdj5i9cp
         xiMA==
X-Forwarded-Encrypted: i=1; AJvYcCVbWOoShjsYgwJFg2jVr8NUKKhTHPyTiXbny43bpZRLzXTII2cCvPJrK2c63qO7LMxz7JaqvrGSanUz@vger.kernel.org
X-Gm-Message-State: AOJu0YyDffVjl+eOaY+dShBVyaKRl8+Kg/CW7etqaZ8+ldr2+MsIMReP
	/kI6IbI2nV0BcTGh0J5NLeCkfyr+UXEvnlHOVDXqZ0Xh+vwf/MDjoRLNgCsYnypQ/6K95F+HzVG
	i4bV+9tPis3kud4Y8RokaEjLE69HvvS6mHILYQX6YCyj8d0nqYOOlmjA5by41uP9r
X-Gm-Gg: ASbGncsYyzBM1Ww3+soIIS21aRu4l4vLVxk9j2YhnRKCBTsoaV75O8pBkI/da5w0duk
	qkG5Mlq8JWftuY6z7vlZ60OxjOXSxcs9v3RRc0wvG+40bABGaUTrwTQJMbybohhQpqjjySIsDOi
	1Ie9yM8/5bCdGrGGmtw69a2ceuDX6E9FL5jYGpDX8mgU/3xuSvBVow9G6p8pwtcgo6Qa8QuowDu
	/NiCAgt69mcFHAUJuiEUwUg1Ng8c/RGMMP30mqpMVr8TIUk2a/xY39wTiBNC9DEeOSoagrSphN7
	fMuUvCsWz8qxgE3QwPgl8SStJwawPLp0w6HMdBDjTRxC1NTTZ8rVWH0CFimsRP7jAm/0tlrcHSa
	9M6F9ux8h+Y9PBcRkdQ==
X-Received: by 2002:a05:6214:226f:b0:707:40d4:44e1 with SMTP id 6a1803df08f44-70979352168mr17998186d6.0.1754473296909;
        Wed, 06 Aug 2025 02:41:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnpjpBA0gv0Qyb9rFEQ373wlImQP3wj+mzhJoMbEtEK39NrrxF/4L/FOwxD6DmpkrQ47JJFw==
X-Received: by 2002:a05:6214:226f:b0:707:40d4:44e1 with SMTP id 6a1803df08f44-70979352168mr17997986d6.0.1754473296303;
        Wed, 06 Aug 2025 02:41:36 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8fe7c88sm9857004a12.41.2025.08.06.02.41.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 02:41:35 -0700 (PDT)
Message-ID: <55e9cac5-3803-40b1-8431-52510a8932fe@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 11:41:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250806-dts_qcs8300-v5-0-60c554ec3974@quicinc.com>
 <20250806-dts_qcs8300-v5-1-60c554ec3974@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806-dts_qcs8300-v5-1-60c554ec3974@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX68URqcrK5w7i
 ap2NZdzRDkl7Vou7k4R7Uzjuoc/YFMUST21fnuvSkB58Cqghv987W82kpwSlkrnrL4u9bJZKAQv
 Hd5E5MtZr0iDNaH7tF1koMzQ90IJQmD1uhLormreJanwcLgTE9plNqcA1wA9aUionJBOSS0aMIN
 eibWrYdNfXC4+LOpJsmd1sMfso/pUiY6DB96hu1kxj8tCjaX6N0AL4HA9i3yCOqHLyrNeORn0Rs
 gtNtGhMAureud6Ribq0L3gHcoGpCl6o3pZn+MOlp9+Vy2N05rMJVOSb9AVQK2wVvXunZIGMJ+vz
 OANoEkHLywodryFff9JFH5ZUxxQ6UFBtQHRfSvq5GNp2ufmQEvab2xS022qcvPb8IR5SUGeYib3
 eacZD9NR
X-Proofpoint-ORIG-GUID: M4Q7UXH890CmAs78toqznBPdmUsYZ8AO
X-Proofpoint-GUID: M4Q7UXH890CmAs78toqznBPdmUsYZ8AO
X-Authority-Analysis: v=2.4 cv=U5WSDfru c=1 sm=1 tr=0 ts=68932352 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ggSMAipNaOlLgWN-UjYA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/6/25 9:12 AM, Yongxing Mou wrote:
> Add devicetree changes to enable MDSS display-subsystem,
> display-controller(DPU), DisplayPort controller and eDP PHY for
> Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

