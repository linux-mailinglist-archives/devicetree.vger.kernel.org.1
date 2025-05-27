Return-Path: <devicetree+bounces-180987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E94A6AC5CEE
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 00:22:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0178E1896F7A
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF04C217657;
	Tue, 27 May 2025 22:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B61rgfbF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41FC215F7D
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 22:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748384529; cv=none; b=KAj0fa+bbAH+GQZHDw97Z1hQaunJsbcvT2M43orurH/9DK70Gx7+J29BxhkunZMsLGlIT7ZpeLxEznBZIaZSBDqsDc52jCet4h5SUE3C13qFwDIMl/OdjAYcGfF9A4IssV/20tsaozzML8aNpiEDVQ5hutWSNgqX5S8Q1B5OWpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748384529; c=relaxed/simple;
	bh=oWBAuylOevnG14A3o6B6U+zMilcjaHUpvqHHM3GDbSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DgejMrYMkFmCV4x9Am82p3odDLFrrXQiLSxBGTvHF3HSAp2GwEUUkxsVn2opssWayn8iLqWE6imbHQi3nvAtFGyd/P35fJhhIazGpKScqCNnC95ZSci0s4W7ChWTivxDaCYZDGjeI+C+VYw3bhV05CpEq2cb6pL5+To1sTHKvkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B61rgfbF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RKFpM5016904
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 22:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	co4RwX7fyamGEB9Zn9Nbjwa2/IhbSm6IfT1PpDPhJZs=; b=B61rgfbF7Hxrv/HA
	U859kjzYiEU2h8YPkR74d73ZqKG36WRePqQKoyOQZwy+gkNs63KJLy9QiHf/TE0R
	2NgKKdLreoDJGbiUtY2QaSP+49ahCE6kBVxbk1mpom15XqxMBukMKh9DVYMxr4x/
	Gz0IyJZPgho44gSsK/PDGba4rdo9Ox0GUoraT8Vtz2JQTMyBQCJhbEewMrtusbL/
	pkDpQmvai8DFSjMFh10nuKlkByF5NAEKdKf/sBdnTl0RMY/LqoXArhLOtY+pmEhO
	tW2mqZoMEBf7WmfFTfyJnwkViWv5ZWvk/pQM/shUhXpgMXKuQwy5ytp0o/LSnfdc
	R8WgoA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcvu5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 22:22:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6faaa088820so5862896d6.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 15:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748384525; x=1748989325;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=co4RwX7fyamGEB9Zn9Nbjwa2/IhbSm6IfT1PpDPhJZs=;
        b=UH6TLd6OowyZz9x89p1oSZy4qi2GlDBp792h4JPcQ0GuEz234304mBODJ3+OY+KlYo
         M7yrN3dh13eNOAUNF8l++jfTvz96wbj6nDwj15QvoK6BUSOELyEQy3sYwb5lHun5eWao
         mJLyMDtF95T1wF9786Wm+p9gtZmsbrVTp0v2ESl4meR9tMySEI8RH+DYSOsw4hnMMeiN
         oz3WD08evJ2YRdTyTR1M9i7C5mIgnqIq3rADWQFuuvAehJ/SYyU1t31GRbw/LOslBTii
         SHJfkYsc7o7DDoKJbuUuQ8hGM+D/NeSyOA6ASs5pn2fa8yM+gyl7sGDO2uobV77VLCMf
         a6Ug==
X-Forwarded-Encrypted: i=1; AJvYcCX7MamIzmSKCG/m+BEsQiT4ZkoXfymNKotNYDOcqfbKR4NyncAcyg8NP1uNO+padoXXa1RRjFtJgD6r@vger.kernel.org
X-Gm-Message-State: AOJu0YzX/KmSkWccIa1Idn4BMdOFOboqO5hEYv1XVZgspwtdzhPBL3+f
	ZDdqCCgqo2/yR1NBsQsjCCu9IQ+XvrI5A1tNFck55I3pQf0/WjgTIhE5lD6RJKxdt/awNB+1zjf
	F+5YkepUmRzm7ZyIJKwayU+xltkYq4CfX+Pc3X1VxW+0tuH6wlWrqE0vfhMxxkxlrtpARA8zW
X-Gm-Gg: ASbGncu7uoyEMJkd6BQGxwxRpqARSz9bNTLCZGSTcZPuafqSmM0y3nXAg+8U4crTxQX
	LFzqOWnBgvcQLnzN2wnqGoYUoURip7k08VGCx8l7XDP4FtYTYdWrAhmw8cVdt6X/3fx/jjuML/d
	dGkSeEpdlMs1sF2lu7L/XPGSIJEqwht1jGkaaWS8kVCOz9lNyZqxfyW76onqdzyOZXmqsQtSdbN
	gCn1Gm18jwY//KvOB36r+exXDu6s4nQ9YpDP0QQwvSfHoKEqlAv3EWKgDC+Qx/SC/n2pQTxTLAj
	q+5QPYF10tg6f5l9/T0lPFs584+PLbeyE2MBWg+8fEzV6LBeo2Ul2AODgphoDtrHvw==
X-Received: by 2002:a05:6214:21c2:b0:6f2:c9dd:353d with SMTP id 6a1803df08f44-6fa9d2baa17mr114438646d6.10.1748384525598;
        Tue, 27 May 2025 15:22:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPdM04AdWocnf2vMjTqsH3Hq3s8MdMYiX5o9329a/ATt3+6/aInv+e1DqCUlQfmpR8ii1oeQ==
X-Received: by 2002:a05:6214:21c2:b0:6f2:c9dd:353d with SMTP id 6a1803df08f44-6fa9d2baa17mr114438206d6.10.1748384524734;
        Tue, 27 May 2025 15:22:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f225f7asm18968066b.117.2025.05.27.15.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 15:22:04 -0700 (PDT)
Message-ID: <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
Date: Wed, 28 May 2025 00:22:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ptcEFgnpPrAGGLt2UHReB7Al-BYbNgop
X-Proofpoint-GUID: ptcEFgnpPrAGGLt2UHReB7Al-BYbNgop
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=68363b0e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=L9oCjnS6bectiR9KkwQA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE4OCBTYWx0ZWRfX2QL8CCSqDRTU
 yrjJt5eBNKX0ps88ZOneCnRAwhFe6qFNH2bxsK05ZU0isSz3DuNLdiILCMm1ZVdy+9XdVE8Qx4O
 QB4RsVt//RNAyjSNomuOxckux9vU8aL8zLhtPtIAoF29fRrHhYewQwSu7kO9rbcG5ckjeF+uGBb
 A0Go2Ft0x0tpVs3pDpaPkcybGC3bvKWH3raBNcGvawz/51JbLS6UiaxGy/MjwsmvbzOi3/eqw+T
 AjK13XsKbN+q2qGpsZcInUEIOUP6ruceA/KR9rYJPQYZ7prU7AN8BtUX+VrVNEaLjqOVXsOPjzx
 /nC+ISmY9ggwJDlpo4nKGAEEMk0equJfCpkdszwicAnNI/9HFlWb5mWsSrkXyNfUcBQPm0LdIgi
 N4rn2JraqbhcPAa9Pcupna5RPJjOiRoyeS8JVfnJNYaMXv+0v0vd6gAFu79WiSpeEJO2TdSa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_11,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270188

On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
>>
>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>> will be set in between of USB-Only, Combo and DisplayPort Only so
>> this will leave enough time to the DRM DisplayPort controller to
>> turn of the DisplayPort PHY.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> [konrad: renaming, rewording, bug fixes]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---

[...]

>> +	} else {
>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
> 
> Why? if the SID is not DP, then there can't be a DP stream.
> 
>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>> +		else
>> +			new_mode = QMPPHY_MODE_USB3DP;

To be honest I don't really know.. Neil chose to do that, but I don't
think there's a strict requirement.. Should we default to 4ln-USB3?

[...]

> Consider the following scenario: connect DP dongle, use modetest to
> setup DP stream, disconnect dongle, connect USB3 device. What would be
> the actual state of the PHY? Modetest is still running, so DP stream is
> not going to be shut down from the driver.
> 
> I think we might need a generic notifier from the PHY to the user,
> telling that the PHY is going away (or just that the PHY is changing the
> state). Then it would be usable by both the DP and USB drivers to let
> them know that they should toggle the state.


If modetest won't stop running even though there was a DP unplug
(and therefore presumably a destruction of the display), I don't
think things are designed very well

Konrad

