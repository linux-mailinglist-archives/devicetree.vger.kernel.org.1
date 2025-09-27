Return-Path: <devicetree+bounces-222108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BD436BA5EF9
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 14:26:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6F331B20054
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C145D2E090E;
	Sat, 27 Sep 2025 12:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LtAHyxdA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4782BEC30
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758975956; cv=none; b=JQ2W44MSdGsISNg/+VfgXOHbKApkaaGCa2/gmpHGQ140Gdol+unIbhnDUd7xKwGUzx6H7mJ08VfHhUleITwJT8Gha1fMUmQmYvRbkBeqUVp+JS86J8ReHfDsL6GIq3qVNoJodmcgnrmPzO8cnE7IRPFmeNV5n2e0eigD48IMMFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758975956; c=relaxed/simple;
	bh=8LxIxoEuK9oDbUJERTI0um1igrwtdtq0Mq737gi/9CI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sAGdULViZFQJp0YNOxVdXkIykplIu9QurcDFRpBwColci4ou3MVV8tdhduZXrNQA5j6nEUy6q9l3Ey3BbIwLUJQI0NiYBN+m3JGRheCmc+qWrAArg5V/ngnTyQpFhgFQjZWyd+Q00YKNTOVqic/pW+Kx1U/SgKoa5wdaRpxSGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LtAHyxdA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R3Yv8k024270
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8HTZrkSYrqPPOE5aWwuZ/eo7FP1KIcHRJKoII1rHuug=; b=LtAHyxdAoERLVHjZ
	JbX115ejTnojvTKRZuUdPj0fYaO0C0eczNiv43mvnGuxSSJNaGnD1UyGLqOKGQZw
	G6Z8Q4wwd2Ef0gn5ZI/RYEX6KCE9ujwfgSiAauKN4FHhV1deKSpo5TxFND3UzPZe
	a/m22yMSkF1Y95uwOT82TntEsXDs0FDo4A7UtkQSo4Ffb/RAhRoAxf7UpC+Hejn9
	dBDqQ5oUq1zp2UGyeq8b/pdQaPlJDwifMdhRvfRmyj2zjLLzCq/bEqDqvYgL58gh
	0cxqGGcLeSDfy3a2BnH23sP6+bZyfHJCaPBgeMZiMsF9R+KK8+uRnuMOnBeresZY
	FVLe+A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8518qfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:25:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-819d2492a75so133570785a.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 05:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758975953; x=1759580753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8HTZrkSYrqPPOE5aWwuZ/eo7FP1KIcHRJKoII1rHuug=;
        b=J+Xi5fySJekqU+hD+FZNpzGgrFFZeR1PfkrY9Smn4AvYZQXeODP4XFnLCkgSQ59Zgg
         4Sgy83Hy1toYRcycsyD2NlMZr/wMdo/BFfHwF3hYGo2DWrK/T3/5EKaRHVZW7SNDTYTl
         Nvqjw2BXscC1xI1XD84WJXrCQcTb/LG2Lt8rssUUDuTrsnxu6TfV05Jl54vQnxtR8zND
         IkjzlK/Qu54Qkdmqj40P5MMpdODU085xm8/GO3eWwpcDq6/4NSZZzmSw/pMWZiyDMCi0
         5R6gHoPPcbnWV3JdcPW6Osrzurro8DDWSlqsDGRJVzdhj7++mvpucx9A+zP7Km9mct4x
         F4hg==
X-Forwarded-Encrypted: i=1; AJvYcCXbZ3uJmFGNIRCnS0AhvHFxGrReo0uFwsdhCPdDoUqQ4jF5yhhpP/muG0DTrF16K1+UuvDjaa/xcZQn@vger.kernel.org
X-Gm-Message-State: AOJu0YzcDUoi8tMTh02b1We/tdn3fNoku2B/ygwjl4zMvzH8WuupSREm
	3oPTnG/qkU54zJFGub0wX7atieSTzrdz0iBZ2i6wxmZ6HlHrFog5ar7upr7Ifr30c8ue5VfvsXQ
	/BIKOYOQLHLogD2hQYPBOaMJKxSb2JAnXUFml01LLIZ3VWlc1ax5OvPfIwHXUiY5z
X-Gm-Gg: ASbGncvTxmEpS8nsk0F1q/OAu+ZJnAiNmI0XPdamwoIzxMRLm+16m+ARJp1pGXrGvJQ
	C8OcwOWi+nztZKpoAwG1u3BuE3FrsH3WOadM51auf7EAU2sRCnKDqyQrPgafPcLIhjZpUfzTh5B
	W8LIsY3cCxn/1omGblawurFg7UawCiGBlIcHpZoGTbqyPXaqAYHyK7jFO0UtOiaGBgVoAEp0cer
	UEuaQWHWmnF2BBj6eKpvUMGOX7pFVC0zs10B8S6QxNg+VXzPvpKvcQ+ns/aEfaNPoy4AMFzGpX6
	S0Oou+cRv+L90vkHuUJR7PuuGy3622jGiE0LF/iOAsFnkoqrGJHSdusADSmw5Bo0GJPW32meLBc
	U9R8RID9Vr9oifwV6BY6lFg==
X-Received: by 2002:a05:620a:3182:b0:812:81c6:266c with SMTP id af79cd13be357-85ae6d81db3mr926480085a.9.1758975953015;
        Sat, 27 Sep 2025 05:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCG2e/ZW9GFpuGzcSJqt6X2AuHy0M9fiQ/EEgWD1R6USyO/kkVUy9LiI1L21B8ibFVZJ2N8g==
X-Received: by 2002:a05:620a:3182:b0:812:81c6:266c with SMTP id af79cd13be357-85ae6d81db3mr926475985a.9.1758975952413;
        Sat, 27 Sep 2025 05:25:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353fa65a62sm554412366b.47.2025.09.27.05.25.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 05:25:51 -0700 (PDT)
Message-ID: <7cfa782b-07a5-4f0e-9151-44a42c77badc@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 14:25:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark
 <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov
 <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
 <20250926-add-displayport-support-for-qcs615-platform-v7-10-dc5edaac6c2b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-10-dc5edaac6c2b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68d7d7d2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7a1U2GcbA96CJLvzQ6EA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX6SssJQCxvlZk
 1iZ4h7RrBVfMvVYm/XAddCxa/2VccTvFl2IKqnz655TvdRtgpfEnRQwnrUg1n3VNqMZ9h6QFZGa
 FV5mIy78Kq9CpeRN3iqibuwE/pRSQR0QEVxIqguMdEHzKWIyfh0r4L/E0TS89COK8CEN7jiFSQb
 63nO5E6BBuweYvpp+IjS6oaO1g87kPs9CLkJv3ykfSf9oAOXkogkPTp2VOI+G4uAegua302bhMA
 YK6c2Z7OyBOjLJoiYpbydA7Yz+PJEeFt30hx8NWf3KFg8nA1TWQfRWvXn0WNM61zGc7oaqLaDfv
 NTUmjxX6K+jMcIRhoxcuTq1f/RNqMr40vQ6SL9Un3Xe/cPw8CbfPGJCW1hjwjlu7iaEmlJaOwfu
 ImoM2xPl5vTsUMV1W/wG9NrufW3h6A==
X-Proofpoint-ORIG-GUID: IeaPCPrdCvNod3a_DuTT6Fxl2YNc7shn
X-Proofpoint-GUID: IeaPCPrdCvNod3a_DuTT6Fxl2YNc7shn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-27_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032

On 9/26/25 9:25 AM, Xiangxu Yin wrote:
> When both USB and DP PHY modes are enabled simultaneously on the same
> QMP USBC PHY, it can lead to hardware misconfiguration and undefined
> behavior. This happens because the PHY resources are not designed to
> operate in both modes at the same time.
> 
> To prevent this, introduce a mutual exclusion check between USB and DP
> PHY modes.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

