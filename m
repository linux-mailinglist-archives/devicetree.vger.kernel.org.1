Return-Path: <devicetree+bounces-250160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EA2CE69A5
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B22F4300E3C8
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF612D63FC;
	Mon, 29 Dec 2025 11:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CuAO0k/8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jmEU11Nn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583BB2D5C91
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767008916; cv=none; b=mn0QqxBSen1ln+u3MUYOnJKD9YM+mod5QmMeuwW+AI3RjJkxCWgyQChD1pnQq0WBBzY97XDBEO/eSRnrXtNMCGDZEVyhtW3zucoU7jLEfSWAefUO8fYgcFIvCESW2O6P8s/kXofDp6OtV0LHg/ZvMzMrfV0ZA3D11qyvEVmyWWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767008916; c=relaxed/simple;
	bh=nfGKOnxXXrdpdlQUOwhs4XUAyaXh0DDZiajPljdkwp8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s8GRIH1SX4SrR1sG2Z/3Xl+TnJDcxludMxUT93C5M2gw6CUbAkqcVTmtl9BNhU+eZt9K8rfIrsYTQDYd7rPn8OnMnc1F+ku51BtWRVnoy/aHw0nBAVw3Mbn16xtAxzXIGL85XvLf8G1tV7+9EiP+leqkUfB9Sx+tJ/tBO3DkTjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CuAO0k/8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jmEU11Nn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAnlsI3232504
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o6pLjLJrFiUbAE2U6jsZwO/RLEVLAwFpUy6cDdi91Bo=; b=CuAO0k/8qX7YirEh
	Cw/KTLT3ZglmvPAMVFry0csnDdPJgI6KmmMz1o3NCU0oBt6X6uGxIVxRss6UCx9L
	fZ6n6ec0Q7fq7iTjdJJoCxIC7xZcndhA/jazwhvGkSb6fxxyYKTq2xhss2MmnEog
	WN02XjN0tK2lOasCY7ziO8Mf/qBusvfIg0OETxnTuBZDElGJ4DoUkGMf0fJMiqC5
	11YIa9jg/wblsqIZ2uT/ZKjylJJK0OMEWJ2jOJfDpGaeZocIbf1dmbZEVY7rKfow
	POV2wcw3FuCb+30o5yAsHN7DJKAUfzcHteJBmMC0hH7/jHsEg19nZRIhVJpUEKt9
	30RNog==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba8r6c53s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:48:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8887c61412bso31568076d6.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767008914; x=1767613714; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o6pLjLJrFiUbAE2U6jsZwO/RLEVLAwFpUy6cDdi91Bo=;
        b=jmEU11Nn/nvxnMZua8MyPuL4yEZIXQkPVgaAmMLJCCF5XynnOiYB2PikixZDlxEUSl
         fRoK5jtS+nfSIkj3qC2ZyeBZvQZYdAyEuxS+UJtcmRIN4yveA1LEmwCKFNlkuUpneV1e
         M2+J9pjPZVpaCc6v2OCrYuqO9aRDBrwHhFGggDL+DtC15GB6lKPaaNBpo+0+rpRmmxyY
         u6KRZIKFwvMdJDj0xXYAp8xaoeNstjTuddJGGHmCrSzdPNp83OQOK3xjYC5r1ROBzNwr
         AT+T2GvTLuy0Y1qmYNEKmjaHhNUflMRxIv+MKOJf8tLl+CDCR/OA/zOoHmWriSO7wT1C
         K1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767008914; x=1767613714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o6pLjLJrFiUbAE2U6jsZwO/RLEVLAwFpUy6cDdi91Bo=;
        b=flHB6odWuJNx4ZHBVx+rkHAa2GTxn2aVWb//N5pQuzdedilNmdW+K2TkQqQxZbjbci
         nvcT0IMPkEz7fYlQZR6e2bzGij2LhgnDhLnjb2LoqgDy7bs7s3RiP4j21GzxXN1GNXA6
         35Iu80v4S6rgIcnmQy+iXvI1gYn6r+m36UFDp/RycsM7LKnYETEKMlgNGWN5uZX9Rh5w
         jRd8crOiXROj/2z/YflL+nPM7hrX/UfL8Uk30IVwf3CBDnvFXv0NdgBdxMSSlY6G2Mzh
         wNOVdJnVdc7EffCTuuYKSbWAm3dz+uv0DZUKRGVSCiy5QPRLzzl7A91AbkkueQEN6Kni
         ydcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXknZHB0+cK3ZCuDRW1YewSAeAE9EIwVnSjXvsGmf1c5Xbb5G9puy0YwQ4pBBvsHa2/w+8yEFZYm0IL@vger.kernel.org
X-Gm-Message-State: AOJu0YzLDmv0r55CJRG1BmERVP5peOw612lAbXia8CW8xl0ZN7cu/Qck
	+/HwkQw4I6ymsrRQW8yZBC/0aRa6DZD2k5REC8KmjBMp+kzitECZeW5AH21HqG+mDuVioAvpaw3
	e5lj6aMYmF8cBMU6eq0mdXyKWbyE40CI4vB0gYm8hH8vg9TD9oVcGeSHITgT7lX/D
X-Gm-Gg: AY/fxX7dwZzam6fJHWc7RxTGHEpo/FVf8dzWUdtVqNNX3WOucngBfkctHtkALkjVoQT
	8TVUQJh8WohpT7hnKCciGyPkc3aIeLid9WcTu+XiF1pRtnMLHKMqKwLDTJNh0VpSCjFZLGC/5Vl
	hhw7twaFVq5c8Z9ME3QRtnaf080OPFj7v9voLYTBQhAgf0Yu1M1TgJcAb/PDC1PW4tTJ7jhrMy8
	rb3QKptCMrEOQlc4RTxbXt4HDfqVrTMIafFHb4xitkBS5NYErW3W2t/Vx34JEKo1pY80pqxgnEH
	eprWQegRf+BxMeLL6XZMk9CybSVuvyuVSu0NVDD7IJodrB/kcMsZAoPyxEFqLkN3DfUWHzBrKqb
	BJfGh84Y2umlxKVVSCcpJkOAtlIUCXuRphdX2/QQymso64tr/J9qd47y40kbUp1jE1Q==
X-Received: by 2002:ac8:5744:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f4abdcbf88mr336871361cf.8.1767008913772;
        Mon, 29 Dec 2025 03:48:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFNlXPHrw+87xPczjAyHHJCHq5687dQa02ZCgEwbyXKTU5UGiHsqq1xwLX0wezJROhFK0cxxQ==
X-Received: by 2002:ac8:5744:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f4abdcbf88mr336871141cf.8.1767008913320;
        Mon, 29 Dec 2025 03:48:33 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad8577sm3297200666b.24.2025.12.29.03.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 03:48:32 -0800 (PST)
Message-ID: <8c015da1-27dc-4572-b34a-43eab6e3d5fb@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 12:48:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: x1-el2: Enable the APSS watchdog
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-0-1801c55d2883@oss.qualcomm.com>
 <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-3-1801c55d2883@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-3-1801c55d2883@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Raidyltv c=1 sm=1 tr=0 ts=69526a92 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZJLRl-gtoie-yrmA93AA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 8U4C0uOMtsB3UcxtGPCa2WPJAAlFAlk7
X-Proofpoint-GUID: 8U4C0uOMtsB3UcxtGPCa2WPJAAlFAlk7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEwOCBTYWx0ZWRfX+/pnI/93wMkZ
 zydMc9LuixMfjdnEmKYmTd9qBDVCnjUZZSW3dVwsVcC5a25vvPCExXo3/y/pOHC2gQr7380yNRt
 ASgq/NKv0GOG31GmEew2M+8XY2rtKzwNGeRV84lzl+r6FiQIDNHv1qI5NvKFeFlkz0vuqGWoECc
 +pQQBEAxFdMg2LvVcQ/Kv3cdVFhKlmRIzX/hSxRVhPaHknULnN1aopRx9Ule8W29r0EVAqh+I77
 wV5t6SKVF5rRL0+cPbuGsCiLyZl3P4aXkY9maLk9an6W/lAN40EPTxtPMdQgUkdNTbSYkYsrW48
 nQyaHoe8VF8E0MMMi1kjRKP+hqXN6VWUgO08UsR2BEq+0eE1Pmcs9ZjyyOIWqB9BI0sPkLX/iyR
 qa6+p7ofW2ALQ6MnG1Ej/n/t/TMCpGPDX7tLG5AGztQ+yjtkPPSwCV2mqvU1fPmGTULkcki7lhn
 p/4RJXrL2dfQfyR9gGQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_03,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290108

On 12/24/25 11:45 AM, Abel Vesa wrote:
> In EL2, the APSS watchdog is available. So enable it in the overlay.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

