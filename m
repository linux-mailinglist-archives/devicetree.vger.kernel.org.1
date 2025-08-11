Return-Path: <devicetree+bounces-203242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AF5B2080B
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97C847A3DFA
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48032D3229;
	Mon, 11 Aug 2025 11:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cGBZsmHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283C92D29D1
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754912429; cv=none; b=G6UVtZFG5shwr6I1GdaVeckD0eb37wKxizMqZjhuIUeu9PRO804WAuudNHGOtKJv8xH1isOfsrchKEpJTUEwh5GpJKmH/Q4qzDUtUzioCzXCesNrRYJOffKBt8BoSFuBRG0gNhXrfSfr53mCDyXDGqh17Uj52xgeQ/o00JVgPzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754912429; c=relaxed/simple;
	bh=6lFao+Zb7QpPd8YuHQG/nU2Wug6imx5UBEuBoNzE88s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BPWZls/oahJMC3rMq9NR8HijkFMWKD7UA1/GPPCnvOw5OsctD/8gyIH7S5zikquzfb+DzQRLKHGMaQTRObAeomDXiMYnCUick8qoIiGn/K765OLhvzduUYO0mHoW9U91Pdh/81tN1G4EEfsP/DO4/392RTKVNDYkE6yg4SH9/lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cGBZsmHz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BAFlGB023153
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:40:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MI7eOWlhA8wMryLN7DmMCKNMSC+NaTn6BOa2zl+P8EU=; b=cGBZsmHzqQa3K8cg
	aNlqzxrGZNzagDvgTVYlPOUIVixavEVjuA+9qXI7IODtbXS4GIDclPvYIK788uOg
	dBr24Bb++1teD74Qpf6QJU/hiWfKHfDm+aT489OpTw+ykU6oMca+AvDKFpsHGP2q
	n41FnnRow9Cfn4x3BTaAzArfoNDhaHj1rTgkCsu3AkzE+JnknjUgJeMeBKk02QL6
	tr8surAZ6TRk9/DG2eJFK2dgp5VsRdlFQqqD3Dbl4/WXM3ZqTyVD/2il67Oo+UZO
	HcbtQ2aisCxfr/Pl3HQ4cqu4qFTMrwAEX3Y/aLrzWQOhs3c/sXm+r2zqxYVXqgTY
	0YHOZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem488ha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:40:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0dfcd82ebso111471cf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754912426; x=1755517226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MI7eOWlhA8wMryLN7DmMCKNMSC+NaTn6BOa2zl+P8EU=;
        b=N6gbkDGbL7/3ftFXgOMhWtyJhNEI5CcAJrjP64/T8b6cH0YC1mY8jkN84dKkAsr2M6
         Ykc99O/+Oeg0Y20jSjrlj485BpzhFkTyqnq03nw91He0BdiXkAWRCOyHLsdQmQ6HpFnp
         BWr3zRO0gTwFiXW4Mgj04Llcsy4Q7wnqpp7/LQuX0Y0RjG4MSMpDRjA8ZL4ns0rfP/bz
         FrwY/U78ZI4V+KP0Wf6rw4/3yAxZvGaFjnEu8ScRGKBYzAx21WHHP4M1HOzQIIzTByvI
         9B7u4tNpB4+faDzwXnHc1ZGAl2SMNYwpoy70HGk/W5sPUxLIU3KcPz3TL5+4ul2T7CFp
         PIaQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7qKQxF5k5pO60ouOYTCWrBGs5B/P4Y6Wd+xq3TTP1mP61TWq83HjdVF2uZm4LgL+o5lyxbIYWymKJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnf28Cuf+O89AfbD3wFI7dnCS8XNF0wTN2MkjnnVhH/iDJULxS
	eA+UErZe9SfShIWsYTilU3M+8zdTtQ9/yH8GEr+RYiytO3OtTD86S2JNEKYu8eebGXYnAquIzXa
	BtsMFX0SwpFGth2yMtf/zXU63qzCxyCAPSh761n8Z9wrpMoVJ+/+XIDkp33PvcL6w
X-Gm-Gg: ASbGncud4+MaA2gg7nEbHBttAyKvbaaWliz4FnuPrvnAN91qJNB7zMO9g9ng7xKwmrm
	iaLvTBKmi/aqwWBIeoxNZQLRU24/YxrxJm0jbsnziqqr6+7FHxDmdMDQlhTumbSV4/vWrd7CRX0
	aqQwyd7NYdNApiyioKzLPxsQ07FJLI46oXiof+YMAGBU8Xq+WivFz5TLcgjoZTNnYf62Vl9oqz6
	SYEt6zOMqPQubn/HjcKCDW+iEtKZS7/hrkm6XxwZNTcUPeEtOccrMHrGbW7vTgF3fkYykzUtLXS
	gE6EhMk4djvXtM1AsMC+7ZwCthdStwW0EgYFSWvTl2Z1GPaswtACP/P+ZJP2P+84UXJFRFEmB8b
	DAgefrBAWzk2MI9q6aA==
X-Received: by 2002:ac8:5a8a:0:b0:48a:80e5:72be with SMTP id d75a77b69052e-4b0bebf823bmr63470101cf.2.1754912426089;
        Mon, 11 Aug 2025 04:40:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIIAf6uSUuU4xC43V1tuCSDMHeT1D1YgDQ6raFA0BynMKaAicqiW+cWh3QOPFeReGv9rWEcg==
X-Received: by 2002:ac8:5a8a:0:b0:48a:80e5:72be with SMTP id d75a77b69052e-4b0bebf823bmr63469761cf.2.1754912425547;
        Mon, 11 Aug 2025 04:40:25 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f00252sm18323144a12.8.2025.08.11.04.40.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:40:24 -0700 (PDT)
Message-ID: <d7058c31-8591-4e7b-9580-218888c13738@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:40:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 vibrator support
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250811-aw86927-v2-0-64be8f3da560@fairphone.com>
 <20250811-aw86927-v2-3-64be8f3da560@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250811-aw86927-v2-3-64be8f3da560@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1W8qiqsu-6rVTWFgnTGWG0neFFPjbfP1
X-Proofpoint-ORIG-GUID: 1W8qiqsu-6rVTWFgnTGWG0neFFPjbfP1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX597bvJMu+jQy
 zRwF2aeFDt4b1SCwTcJIXJVccZJ+DxsPZTL8fN76I1S1eCqRtRs+Y1MCJS4NxFj4HvPvO4dn0Qt
 X1RRhyAnCkyid+8d/HD3H4zBYIgzKY8u7QyfjW9XLnmf4YePbQWX9SCE6CLTsuo/hfPkaBUAs8g
 lWqQEs3wXBM7yJKO8f3cCvafWokW4rfqsfak4YTvp6bhGbcMSu6H/4Cev3Njr08YcYlk9UcbBfn
 /JDU8dpSBOodTx9LacR83WJhEU7pdyTift6vGKqA9eWTCHQIMvYNrZEAsB4Ogg94/MpL6qfog8p
 wfSHBYeiRQdfc6cYy9alH3tenfh0bmCfnV0ZpwlBRNG8G/XNl4zhVFVFfHhGYJpe0g/kVEBiHMO
 6/L9vtIS
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=6899d6ab cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=wGZfWhOSCpwZsoq7SDQA:9 a=QEXdDO2ut3YA:10 a=a0DIy2mVpJAA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

On 8/11/25 1:12 PM, Griffin Kroah-Hartman wrote:
> Add the required node for haptic playback (Awinic AW86927).
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---

I'll hit enter harder this time! ;)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

