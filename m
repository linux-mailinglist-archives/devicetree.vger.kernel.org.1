Return-Path: <devicetree+bounces-125720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB429DF033
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 12:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22AAA16240A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 11:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100F01917FE;
	Sat, 30 Nov 2024 11:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXba2dg6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E9515CD42
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 11:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732966648; cv=none; b=N0iQV3RDKKolCZTgXwHdS/ZM5OKPRNTnYF4Xw620ruiGA2xGO9VCjJU3M53DYMYy7rfMtpTXhY8SrQnTqDIblLrdtFf6KkRk2wyEVTa32adc8Ljvtbv3qXBxqQpgbek7FF5EYy+q6TAgeKLXNN7yZnZAlnaLzq9M60iLmfAeyp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732966648; c=relaxed/simple;
	bh=Thmgg5qZ1Ayj21DY0zxPd/gKajl715z9C/UHZ6SA18Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=URf1eODGyOs6zzG2De/n6z48VF/7DT4WCA0X4oZFZt+Nn2pC6bFnh5KAaNCLtGQ8og1npareBihw6lpuPk2o6sOMX6iY9WHaIMz9eHgZttDNGx8+9QR1e7M8JaSm33rN5p3z8kZbHB/5PG7ZJluBYcq34JR+uF2/tWwFgfhCZkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXba2dg6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUAtIIS014640
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 11:37:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OZvpAxmieEw473kwTlA9LztuKkMS27kGy1qIBHQ8Lng=; b=fXba2dg6B7uaj/8F
	I0Pd5UltCnJDKkvPA6mW6kOMXTA+eCTfLyJyPMZ/zsy5rJe11ZRK7GiwMYL4A8Ig
	kvSTPWpfwLbs3a0yFHyD+TAg3NJTSGhWPsLHOnHmipBhVCBbIbyuLKK2ZD9rNxRv
	KGCPB/ikg3boxGgj6yw6EhAMC1U2w3rj4uTmWefJsaHe0blB+sKyn4JabvOLhgpQ
	VMKHp9dzHBBJM9QTz7tiEkRo7B9Mm0ihC970sXN4ybiy+cTnl3P+jnxgIaNdtg06
	xcDS4HloFJwT65/sNt2Lcz+HLNssO1Lr8lu3MkgP69/0o+UWwDyWb2Ip0ISQrrhw
	OWoc9g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437u368kxu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 11:37:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-466c4b8cab2so3774351cf.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 03:37:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732966645; x=1733571445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OZvpAxmieEw473kwTlA9LztuKkMS27kGy1qIBHQ8Lng=;
        b=blzmDx0nkIxrEVZwkP21BqfksjgQP2jkudbJGi+7AVDpnGEd1tJKjFAqufVoHP03BN
         xdp+d9vgkTu6A2C7Kqn4RB79oVsxWlYbWCKHdkzrbXmlW6+pFMWIY2eX/rd0VIxF60LZ
         +ixkacO1wOFMTJsuV2dCg5dPM9PywHbXdsNJLJo5dZRGPJCfBW2i+R8EVmiTPM5cUdL+
         ghhT/gOb5YTXu95fUfnTAUCBA649tHVkF9SX9UfyQuI64DSqbZWYvkqQgHCYzE2ZhhDw
         R7EQvUS0h1KBLwq4gFJq5BxYBwwc+JAT4nAezC7QtGGotU6UAoCmYhfxF9cW/suIeOqT
         5Jvg==
X-Forwarded-Encrypted: i=1; AJvYcCUEsRNMdRvx8JuRBfpjZB79LhhVMLgJW4QtvShCHeIMduwhXImVA5mbcdTOWR2B7sPkCb1klD7d2aV8@vger.kernel.org
X-Gm-Message-State: AOJu0YypxVefmOxsarGi+IrnVcKNS1ieTIQuKHZzBc/Nmu0xPeBQm/ch
	dFxq6hm/1UvCJtqeDX7niVe+najtncbDcSvI7r5qXKjQ/wLsRtkD8TLAaEkigx9cajJQeT/wPWL
	zbw4JMlC05hbApVaqKXniUhf4+MUUD+LgIFSJjVfypX0qt1bXkV6XfNRZzccO
X-Gm-Gg: ASbGncvDrfbpA+fy3mWKwgNfZuRDo/NFAvqHTRl2HanLd95mbryfF+9p6+fP6GqA0HZ
	8vxzppRp/K+xMmDXda8DakwkZkh62ptchzxzT/U7Yf20M8RrsFaJbFPZdyzu0dNAgD2bOd6TbAt
	8dvkAkJ6vhaRokV6It/GFM8MSazKtdtQofHHsC8EZf1Uo9MV69GR4MiJkwXPBVAvHJFrs8fFLIL
	Np5b53Oj38VjulwrdRYU1VMOuigMsIraaoDbuIYeThEcHiTWDuy5ce6eNSTE06MjPO5gelPrC1u
	yuwcCn92sCgBawfa775QSh1F0NJzwTk=
X-Received: by 2002:a05:622a:1a02:b0:463:5517:ffdf with SMTP id d75a77b69052e-466b36d27cbmr76067661cf.16.1732966645289;
        Sat, 30 Nov 2024 03:37:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzT9ypsq48UF7x887wPpK3Ma8DeIIzsTE7qzn3zdK4jFniAGHsJbfgxS0eMI6V8wqi307QdQ==
X-Received: by 2002:a05:622a:1a02:b0:463:5517:ffdf with SMTP id d75a77b69052e-466b36d27cbmr76067521cf.16.1732966644925;
        Sat, 30 Nov 2024 03:37:24 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d0d1de7429sm195217a12.74.2024.11.30.03.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 03:37:24 -0800 (PST)
Message-ID: <6e01c2b4-2383-4c2c-b848-da3f3760ea98@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 12:37:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: x1e80100-vivobook-s15: Use the
 samsung,atna33xc20 panel driver
To: maud_spierings@hotmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Douglas Anderson
 <dianders@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241125-asus_qcom_display-v4-0-61a4da162406@hotmail.com>
 <20241125-asus_qcom_display-v4-1-61a4da162406@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241125-asus_qcom_display-v4-1-61a4da162406@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wP7OKwe13MVxni35R6py3OWMFpFJcuI0
X-Proofpoint-ORIG-GUID: wP7OKwe13MVxni35R6py3OWMFpFJcuI0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 clxscore=1015 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=760 phishscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2411300096

On 25.11.2024 8:11 PM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> The Asus vivobook s15 uses the ATNA56AC03 panel.
> This panel is controlled by the atna33xc20 driver instead of the generic
> edp-panel driver
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

