Return-Path: <devicetree+bounces-216434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D8AB54CC4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89F47188EFE1
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B01D6305948;
	Fri, 12 Sep 2025 12:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lt+f6//T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277BA305976
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678460; cv=none; b=oyxTIOi8a8Jk+t9hUKHdiyt/cpLnwQKBlaikOH9LQD8wAY96WYRCCNmaKBE3lG6CV4RsvA7q8DG5H5Y38RZJ2FVk7HPidF1JQDOqbtMnd/TxoywHwnZUGI3qH3KPSQcc1V7bMkoztolAq7VxgilXW8qXslWArcu0DSkFFcYCoDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678460; c=relaxed/simple;
	bh=26UCG6mcsHCJYK7t/iVJ83hqO7D3+2hpEfCS2ouqMi4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hfioCSTYV1NvO1koxY1QMFvOR5gdBgYt5vDkbyncmbXSMjcfA2B2LKiOcw6pflbZuYiFMkLAlS1Z242MgBJxHhJMqeuvxUYn1BfIz5x81uBjlrqn9pwhIYD9Tg4ugd0iYSoqWhzLXBsR9ieJBgFRToPi3jyDQ6Plc+VwEl55k1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lt+f6//T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fIas015195
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:00:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8MdWDU2Uyypxys9C+gGfTrGxJ8Ztl4i13k8tb6lf2HY=; b=Lt+f6//TKAvf+thd
	4RoLaVi38xbabaR0TvVfcaC0kLc9G720+QBnDakbquJ3gwVDgPtZL2dK6bLQYssW
	kBX3Yh0xE1GeFrkJeiaYwLN/bgMSJg1WzzGP++TI98hXn7/omCxCxIK3wyluLgNk
	qtOXTqvCYOd2B69u6zogxXTGldX4SiTHSRQkgCJU0m4Vg3GZGSqL4iQl9sZUF1bc
	Jwc/LmwvppGZkvZbcE1cPrs/k6aSaDTHzzNIGuOVAliYQloikBFzK2bsOtpYWRcb
	ZTNXwzwtevqsW/AqNlTH+c1rIbGW9eaGpvTp+/15L5QeuwxdKuxfO6BxfZ7t4DOr
	U1kC8g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aaputkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:00:58 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4e516e0e2cso341349a12.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:00:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678457; x=1758283257;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8MdWDU2Uyypxys9C+gGfTrGxJ8Ztl4i13k8tb6lf2HY=;
        b=evXFOu3PJoJOkVh+CLcEiB/KCibQpGJIsqW/n1l3TY8892uYfvWVAmRtoe/UzfNgPY
         HK2tlFVUJywILJx6nubL6YUpZzlsfn58Jrm8C/t+qnE3tubA4+btwyR3ldgq638Qhg9V
         EufRr/w+NMa6Y+BTYreqFGqWMeNMVONRUb49OKeKSHQ8LIrsguyw+HErUZLI80ZoOGXG
         4XBv0zrywlwI7mwlcDP0jLUpCCB40dzJmtPXTxtN1LWseGGFq90VQZTKKG7Gqbe7jQj4
         UsvKiCmpvguebfCCfMIwrBa7C0/I7zYVBDfeZGL8DLLw+5G2O0tdYyNI5F3C2CxdMrtl
         2T2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2Gl7GuhsWunEwZHrAAh6PWd8cEp1FY9eeZP8eyzo+VBTjam0kAx2JCEatzReFj8G660w3YtRlFZ3F@vger.kernel.org
X-Gm-Message-State: AOJu0YzajAKF3MVy/vcm5eTUgLHwQPhI0Fa/jUaI9aRVEyS/DgZajrI1
	qRnOkYSrkrpJcJrKgymKHK5RhZ9A0tF2V41fhISZTThbtPSjATHTaJFLfva+9hljJobNUUi0Xhz
	QPa8nTlZ7hQ7buNnRJ3VUi9nFx/CjyudziHjZxQ4fFBf+ICccJxUSKUjWiBf4C+R/
X-Gm-Gg: ASbGnctmj16I7Bmwz8hURPSVJZX5jr7AKk3BbwVQ9nZ56hoFoGfk8+Lo4PTvEGutqoz
	Idx1HqO49ni/k78ROm05SMew3JH2TIwUJiuXz6w55tEOp0/feGO6u+ooMdag3Co01Y16y+zp5mV
	W1V4o5Jm3Ju9yhn2qFxXj83omBlz4UlXVLr/Rv6g/1BUUvi2fwySfBcGgvTwj0d8NpZUeDHypM1
	bH4MlneXmT1WCIArc2Ow3NbUWVGWUMwL+ZZvJUZWy8qUOmJ5xxsaiZEsikwuZzA34egsOlU59xI
	lzZbLa8zM9FkbrQtVK23P0AWY72UBZribByCY86K80QwYXJR0QJ8dxchvatIbdEkK4OIr2x6NXa
	MyGq8G/YH/MpL9rdJyw58R4Cc2v9gQA==
X-Received: by 2002:a05:6a00:39a9:b0:772:29be:e006 with SMTP id d2e1a72fcca58-77611fc4e71mr1825312b3a.0.1757678456675;
        Fri, 12 Sep 2025 05:00:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyWZ/RCwH5uoedcQ8POSwjS4P2D41yWOMHKovMkWcY5GLr2xHum8zhLBWbP5bd/3+H2e7PZw==
X-Received: by 2002:a05:6a00:39a9:b0:772:29be:e006 with SMTP id d2e1a72fcca58-77611fc4e71mr1825274b3a.0.1757678455923;
        Fri, 12 Sep 2025 05:00:55 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a48c19sm5291497b3a.36.2025.09.12.05.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:00:55 -0700 (PDT)
Message-ID: <11fd5d7a-e084-4ee5-9f34-2ec0481a1d46@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:00:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/13] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
 <x6p3hgatsauguzxryubkh54mue5adldkem2dh74ugf6jf3ige3@cb3mmigu6sjy>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <x6p3hgatsauguzxryubkh54mue5adldkem2dh74ugf6jf3ige3@cb3mmigu6sjy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c40b7a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1bTgUAhQIaiSlqBNWd0A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: uc2K8rfpTfhSXAGgeaup2tmfvTkW43zF
X-Proofpoint-ORIG-GUID: uc2K8rfpTfhSXAGgeaup2tmfvTkW43zF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX+HBjQt/2oIAT
 t0bgG8uORsyP1XFy750bMYT+55xp33RuYrNaWekEjvIXQHr6fGjAvH90xCskX6+GvGAoHG8vKOv
 pAuRvVNCxiHzBko5ilKFEJBiySlWEMMpMbMFSNEkcBP7FBzFiqixZCQ0Vuh7010PuMs2A0R66Z/
 V6XJasEatU/thcCVj0aocQDN3e2IcwVFXfzodJukf8PCnBwVkSH9FQt2U/kdZs0j3Dak57rIyqq
 v/OGFRFhYEQMeSpdfSjs12sF4XFFe01zKj1rPB9D4XH1HB6WicSmCon8jvOakTex6aA5hMEIxvb
 cIDxnfEtddO/yVW5pnLY5BZHOcCZRk2yLMQsBminuhyvzcC4O5n+UdfXPGCd19okGKhbQXb8D97
 IWm55a7i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000


On 9/12/2025 6:20 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:06PM +0800, Xiangxu Yin wrote:
>> Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
>> Move USB PHY-only register configuration from com_init to
>> qmp_usbc_usb_power_on.
> Two sets of changes. Two commits.


Ok, will split.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 47 ++++++++++++++++++++------------
>>  1 file changed, 29 insertions(+), 18 deletions(-)
>>

