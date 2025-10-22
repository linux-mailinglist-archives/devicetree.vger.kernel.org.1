Return-Path: <devicetree+bounces-229886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7373BFD653
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7543B5629C1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3B52C15A3;
	Wed, 22 Oct 2025 16:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NOnaTDWD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0AB2C11F8
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761151112; cv=none; b=ZI+nV8WSuFpUcZGq5DvZV3SV7R3+0dVgh4BnpHvudYitV3x9QNZaEEGoBydtD0a8dFpf6V9q1PIpK8aEUozlC7PDScy+0r8PRvfrltoJYq783AC6zp3iy3Jiokzxvs8TPVzgajB5Lm8c8Bq1jHbqWbpv8KIZxknmJM4IzmxHN/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761151112; c=relaxed/simple;
	bh=ptTXlSwGKwMBwM41aPaSp9jgtyBevA5FsiIBwd9TsaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pxjaByV0ZCOEhd8r0/cdRQX4BI3Z4aVoFNo2+gFjtQG/FNZgoioOib/qjXi+DysyZ954Wh5aWIWTYVodT/nBD8gm1P/wpj0VAjgJ0tdLjQE9UPNC1nv8s4nh1ekgT4P5ZoGYiJOdHKsP9GRxlpSfqSc/4wEZ35MtnDusc8ELJ9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NOnaTDWD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MARjVE001141
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	07OU1z1hNxrGxA+md7kscEsHiEoFwg7IhtIMFNGGHkY=; b=NOnaTDWDqHKfBvMg
	gkcJw2k12CGgYvyybuCsPTbcYgdeP/z4OmxpqVKNhDaTS7PvB2Q6ceZH90bmYUKq
	T/GY8YsXKZ1KbLNgeTKwoS+DRqepBTwNNY4AV/9qNGJUWJNN3WcrMJaSF3uVHxxw
	1GwkGlGKlEMXYGrE3IsUk8mSgR5htAFyQq0vZT0dIvb+lsxB+P4gXhyKkh2c8nr+
	Y0K8pD7jTKFOnLF/aC270TyCXQ8gEu+VpxRsVQgcggc23zBSDFkujHZiUsrm4Dj3
	IEgmhAjSLnd43uw9oyloPNgZhac7FgFbzIcFc5Nh228enP8swqNnWq8JjoTCzBUW
	mFCRrA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08wb0sr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:38:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e892b1c102so4915511cf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:38:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761151109; x=1761755909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=07OU1z1hNxrGxA+md7kscEsHiEoFwg7IhtIMFNGGHkY=;
        b=MAJnxKHfdTmS2pXUAXPvcYglKpo4N1Ra5gqqEDVMtvgeMdgRAF5YrPkOVCxNk6go7A
         fKEd3Y8chgpMkKF63O0WIeUO+m0S0uVCuz4H2JiLXKTqBia+/OlrbHtmWNVDRp7h/x/y
         jNMGT0qdC54/1emF396ODAtjC3cCL4aXHoIHeJAtH/lwpbwtTOSQUa3CNxWkOzm0iKcD
         93wyt6FXoY45b+n3H4TNGJnRe5Dt9rRHhkunAFlfAzhOhUE818jTQPuFHZ0tAc6mjiCY
         ZJL22o1eZLVavPio0JdoRdEHa+raJzMreaqmEA/AeHd47iNBbQ+yx54+oXrczQ3dFYzs
         4GCw==
X-Forwarded-Encrypted: i=1; AJvYcCUamg4LZtkhupZxwIP84zevAoC+q1e5OD9yF8Se322lbgyEoTBoNWVMSIfEuD9cQojC0A9eg18lg0ZO@vger.kernel.org
X-Gm-Message-State: AOJu0YzNPKs3OWK+EVRpOivEz8ThlrjfcpQQc6aJDYn+mydBVdc364ay
	nj4+x7HJivQq42E0kcq242RUzNXzxnMxvYeXyJFvjQXCeZhmuLH2Yp3j88N5wvfkoHWT3an1+99
	oa8LhvBCO8rKNoomikxCxGh59t+N3PI+HMAekffdoeW2ubCVKtPD5Sv7M8GLjoht/
X-Gm-Gg: ASbGncssdtpXESIi1PdW2Nb/VOjmjTTU0rjrOvV8NpSPl8etBwZcblihlybmJgDDJC5
	EOsE6YbkSnTIHYZasTisHST9M7QRHe91GkFvZ1rvMeGVmMBuupWRKuWlNm4TT+ZJrnMmNL7PSzZ
	79yD55df2k9fscWOWvfeJJSGGI0r2PMu7DIJ9qW5AIF44wPTl3ouPr7c59h1ryzuXCa0k8GXjw1
	dd95/rpVj/ZWmy6Bfttt5QayO/MwHXdciBSwz5USX9FHs0/cTyUNDZ2vkXWwy7wRBAxMZJPoni8
	t+f7CFsUKDJhgksBctmirr9f0mJVQ9I4Dc1+tzxds77Z/xsvFiOaRWtKJBZuJgp79KfWcJIjUds
	3GOjRe1Sk6/6690pKLoz5cYrhnBDdrcoZMRV07tRjAG0ZxuKnT5JVsEvO
X-Received: by 2002:a05:622a:548:b0:4e8:b910:3a7f with SMTP id d75a77b69052e-4e8b9103edemr124725361cf.13.1761151108821;
        Wed, 22 Oct 2025 09:38:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRYPknr9Uj0amxUOYfxOvPxxQnoEoW4H0vD0Htc0V340Pcq+BvtCrnq9gFpLvh3TOojHocGg==
X-Received: by 2002:a05:622a:548:b0:4e8:b910:3a7f with SMTP id d75a77b69052e-4e8b9103edemr124724941cf.13.1761151108268;
        Wed, 22 Oct 2025 09:38:28 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb03649dsm1375160666b.50.2025.10.22.09.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:38:27 -0700 (PDT)
Message-ID: <06f74fee-9ab5-4b26-9497-9f617edd97f0@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:38:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
 <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: x54Gqfr0auzl0Y8fFqat66XBP_QzoV7V
X-Proofpoint-GUID: x54Gqfr0auzl0Y8fFqat66XBP_QzoV7V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX+WkyAHFm8JvA
 hx8WdF74aT5DbyPfq9MfdLIGGDDU0rRN4WoL73lbb2rI1ltUpyXY2Uvtpn0MwDsUrjHnp5VX4C7
 UWWVjT0YBZPS0X2y+eQrPGdtlu86rgZXCo1gzX+cRscUcEj+QorbhgOWfEqPzynlUpapBIpr3Yr
 TgZBafJfRnNSPvOFkkEljB9sgRTg2sdNM/FyN0l/AKNnYvsmrffrGWtqPNHavKHP6g+ZPSeY2Rc
 W0rXmaarmHkoaDE3jtGDeqsiXZTReRCSgv1GMQhFg73pc2dW3BeI9nM0avS9uJMxyJrFlTAgnUj
 iXxNHeoVa/Hza6oP3H1XOM50D6AyRialBBHkuUb/swlslcOoa1zfIug5imAsiguCbEJrgRImtSD
 yFs3OlBI0q/dHVi0gKsQGssDKiR9aQ==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f90886 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ksxQWNrZAAAA:8 a=KKAkSRfTAAAA:8 a=HJemwo2QgkXW1dxJUx8A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=l7WU34MJF0Z5EO9KEJC3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

On 10/13/25 10:55 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Xilin Wu <sophon@radxa.com> # qcs6490-radxa-dragon-q6a
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


