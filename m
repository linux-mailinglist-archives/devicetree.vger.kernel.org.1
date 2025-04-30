Return-Path: <devicetree+bounces-172588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D91D5AA5754
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 23:31:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C12917E075
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 21:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E97B2C10AA;
	Wed, 30 Apr 2025 21:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QJPJgwlV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980A42C033F
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 21:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746048316; cv=none; b=FL1H4EaSk/6GCgCdbD/JplUsWjMLhQaagjQB66lr/q9msEunPwvAo8F8jiE1T4z9l1w1mT53IlBn7zlZKtNmoW9DRKy+/magfCpUk8/SziGmRYdp3YINsUINz8Xi9wn6wVpIgt9fURLcuE820MFceBtdUXvs54+0WiaqW37sLKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746048316; c=relaxed/simple;
	bh=dN1cAvoLWwLBli6XPD0KhvWowefo93B8nN1x80lziSw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tf/ILpaGpMmeOF5F1PM5g1hGSiYqnYFZW51ixKFO++CTpFvGPLRIxWznUsvaZ/Ld4UDkFMF2cBKZkWj8ZSZ4/+K7c5IHJYa/pOglL+ylFtzyacabSgXRINqNjaUySCNFEMKUPZ2kns0p/qIvAHLyPnBW2dqo4EG+5Kpy6qynexc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QJPJgwlV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53UGokI6004150
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 21:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mQ2jnVjO+FK8esFBQJwoX/TVGF2G9VDZcRv8QsM8cuI=; b=QJPJgwlV93pGUs9v
	sAjS5WdfHkEBtc4wZnlFhJ8rI3NZnNeAsP9G0N/ZDnk1L+ta0bCD5YfXVuYsJKFv
	hyNOpYNVgs7nWObCBcTdGVwUE83KBr0xIT06H8QSAJoCh8giSpY8nDnL5Sq/L4Vl
	3VwiFeTbTs956Jv/gMA2qHFFt/F6GdeNsPOEr9D1HbH1ZkrfLywBE1btp2BMmyNt
	uNVbNHLzTp9GbPLEPHd7VEMhtfx6P/cvgmQ0zzJq602M3rv6oD7cF0LsYXd4fqGx
	7Vd9GtO1wi0TDf2XEzatDbspFo9u0oDscDtRW/FdQEm0+jXdExCshExrPzBgR8y3
	aPWlAw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4bqg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 21:25:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5af539464so5619785a.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 14:25:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746048312; x=1746653112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mQ2jnVjO+FK8esFBQJwoX/TVGF2G9VDZcRv8QsM8cuI=;
        b=Rwz3ZIGYb9IeV4/YQMCrGuICXzbS4jVvrmMb78cw/ni2U4FiQhId7+qHp7O+JZ6WHV
         RGAkhEUvldtwCG633HUBuTYtwEZ1Di24RhrnBNUx4kJ1P/SWaxA/JqUNqe6qZJsY+vvC
         5iC1pWPAtU8fTaUrBa/UFOY+48D9B8qVOQOoMCZ4GcB98aW8eXicX1c0XLZgrbRWr+XW
         9OZD5vyn5LVgqQ4WwpLOBjmu2endu7XjzdIvT+EVLVr6oOPJ3FurJ/bEpl7l9PrnHubC
         T4UijhU7MO8Eonz0PmUGFwHbwcBOaeS5654rhZcRVxi53XH9JTOrAMYTb8wUmIZ/23bo
         JcJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX27raMb9ImwNDmt0+webiRthtyLiS0PsJExfYgRGWsiy6c81N3bLkqg3rh/Tq2N3eB5XtTjpmHQEAL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5EdscHzbn/Al1WWRwLnCkVPltzoMH7GffnDlj69vkXFl+sAXV
	5V45e0h8zz9yEca+s1skh6yqvz+lKMyNllzTAiZtTlk6GY0xoJNog8LPLcy4/xlIlzH5ejT3La/
	SR7fMnqiZjqLWQZxQLbUBmrRnoN7FZOw9gVuSOdmCCj0NaoQUjp/+wbwgs+Gp
X-Gm-Gg: ASbGncv4L8pQygaNqTjiy1i+qnu/a1yXahLHpnSQMZcgmAwldoAc52EEzwrWNNDiFY2
	4jf0kPWjlhXmOlDJG/LxIXlWyyArh5esMpbXYz7Pzxc3LEkT6BAq+4KV/FQDFdKNf12u5GSxxP2
	wWuYDjL6fL68w22tMmLguWqo6aMyTh5a60HQCq/hK0tmOLjN/KQ94eFsgQm/eNnIxJepW4sgGfl
	KeDR+rr90ctw2niw0sL0JwLCa5B/rgB6LXbsIIPkn2AbA7qsXsmzY5lQFyjf1LTMNApfBm8FOmM
	oPxqV+YmKWeLZBlY0MsS+rk3SyLDig6tRUt43NZ9y7l/y0F0kZlkmYC3q1KVqadJpCg=
X-Received: by 2002:a05:620a:d81:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7cacc1be6a3mr110658085a.15.1746048312418;
        Wed, 30 Apr 2025 14:25:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHno9xC01KtHTcmyiEyJau4nN1jUTcCXOPCTlNFj1PnUJfKhzAvD4jmrGjvb47znNHqT2g5uA==
X-Received: by 2002:a05:620a:d81:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7cacc1be6a3mr110655985a.15.1746048312015;
        Wed, 30 Apr 2025 14:25:12 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acebe215210sm396837966b.68.2025.04.30.14.25.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 14:25:11 -0700 (PDT)
Message-ID: <a5db4897-44d7-4e79-89a8-0db35d49913a@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 23:25:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: qcs8300: add video node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250501-qcs8300_iris-v7-0-b229d5347990@quicinc.com>
 <20250501-qcs8300_iris-v7-4-b229d5347990@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250501-qcs8300_iris-v7-4-b229d5347990@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: royuSPnrpZUfhNdCSt2OKQHBOU70zmqV
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68129539 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=AFtjm6BWk6c1pdSQgKUA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDE1NyBTYWx0ZWRfXw/WraGFseGmU iYS1OSkR6geyq+lsFTgcTeU/Cn22Kai7isuS5uf3mrWpOZEbrzAnwILfOyZdKRGVpSN+Qncr4Pz QSSQ5GECQqE/EayeXm4ShKeJhD4vbLnU0QTIhCnEeCJCrrY4G4dVuT7Yzp0Enpr66Z2Nh3LRPtS
 RXj/qEyzJtVOx+3xVax21/03nK0gEEgBNecbqEOZh36uyk/Pyz+cFG5Zg7avdd+XmCJkYRHpTbo Vd+hcUtkuqpdtngyfTjFTH6A469tooZZT1O4gwI9QU9KasEW+v88cObK/97kmPsJFdi2eoFm0Zv 26Xq+ZhT4SR4H914btofycUtox6oufrmp0hQZNUPtBwaPwBE1twEWaTUv8Bz9mo6414jKXsKHA6
 N8g3QBrVhq02nfVkG2Ys91lHBTRZXsJWPbGkbPRN2520laYer9OtM8/DB4PKJ5JY+VinFHEI
X-Proofpoint-GUID: royuSPnrpZUfhNdCSt2OKQHBOU70zmqV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=813 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300157

On 4/30/25 10:46 PM, Vikash Garodia wrote:
> Add the IRIS video-codec node on QCS8300 platform to support video
> functionality.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

