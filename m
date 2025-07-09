Return-Path: <devicetree+bounces-194489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B8786AFE5AE
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 12:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66A6A7BA069
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 10:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DCBA28982D;
	Wed,  9 Jul 2025 10:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YPoi1nFI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FC1285C91
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 10:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752056671; cv=none; b=t+lYuwMgr763Roqhl0iQgqXKxLH6yGYzzQynGOfWvDlvVlhc8g8B67u9a4WGTrSpZUntKEQfEtjm5YbNA1h7JWTZk/ojgj6RX5qdTCUEoCFkkAIn5A8K66bPT7YZdteaExKGy9/u40F785UIg6kL4AmVia4nhzMOdBOQLo4fmuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752056671; c=relaxed/simple;
	bh=iVry2JyCcu7AKZu9v6f1maMzGydag0Qd+QdMuPJxkYw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gKAxTVQ7ESS8uj/MLn1Jhm1/wXulyMZTKsblYchVV/ng4qnB/LJ7OnTX7TrTTtQqboSpqcdWQOJ4ainwIORtSmvhBVv/wtqdEam1O+X0dds//KhAPwkpbEiQXyRoYVOw0yY4P4f/o+NE2qyCCJNnQOUvP3DZZ808bYl4OIY+jaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YPoi1nFI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5697hRZx011361
	for <devicetree@vger.kernel.org>; Wed, 9 Jul 2025 10:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lNUtv6pJqxHYa2M0wcQ+2mlhPMafKCL2RFFU3mc+cMI=; b=YPoi1nFIbFqIu8JK
	fZdB2dgP6zTl5p0Dcl94+SdTyeTH/IJvPubDgnJx/fJ1Sxd9krpI7V1ajGC3Fmn3
	pVUxHfGcZxsD7KKIr7WvDb4Z+SEsr/8bKzzkx1IDjMCHnqJT2MP0f4ZkPm3zC2ud
	3JwZNUbowNkHTDQDnxN652RlIViHCHvapnB0XeFmxjKL1quxt1fgiUMJ9NICBRbu
	IMkE/EgAEGNX79h6s5XOBvFfhXITYpZEB02yBbDqpjt0TIVVnb836pV3AGYZzQ/o
	VK7QudGzBF11exzHlc/3IZ2m7esRdOOl3pksFFy7lHAz3BaEkx7MXaa0GNGHZl/A
	UmM7Bw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9q0ftk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 10:24:28 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fd202ecf82so7699736d6.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 03:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752056667; x=1752661467;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lNUtv6pJqxHYa2M0wcQ+2mlhPMafKCL2RFFU3mc+cMI=;
        b=dZuFUn+2z5HHSkXgMRed4RlFj2+qLjZsuZO8ac/Vmss9kYQk6mdh1uJQzQyzjlryJh
         G2lij0fQCoYu5HVxf/cwZCh8ZJ47rxtJ9aly6jPBrTMqOXn45R8D24ZXRvffnX9wCK+B
         kQMVMRp06kUEjwU5z2Tppj/VH4mUPbIpxZf6a3+pjmEl6+ke65xRqQZuCuV5hjBFP4Ls
         rmvoTzwZvARAlnSwXubOFqcI3lhJkbwIrSGFJPYlD7Bx9hmzGnhyjbCfgNELcOW+QGIQ
         hCTzY2qzPVtuylTlYzQN1caocHBIUUylTl5vdj3sNL/KktH62UXpO7jYUXf3Yd8uXIkf
         vjdw==
X-Forwarded-Encrypted: i=1; AJvYcCVYV5pmFUUR4Pc2J/9oPLDG3CTq8+zNy6uDWBgQQFSi01AOAdUNSmRNuSv5kr5zGm7fOtBkvgJLdFnk@vger.kernel.org
X-Gm-Message-State: AOJu0YwFqvMGpR91KHo+bxw5H7Pu3+m/gL/m5DROXoC4kjrdeJ/0tOJJ
	AxqCo4+67JXchQ3p5BxHCzOtYYBLLcWIXFNlTR+swV0c0U3lQevhXP8FsXG2AylTliSWds1R9dD
	D8wbqvOFg9fQCa1s4ibnbBqsVFwQAP1q4ZIy0AQVUvLCSr7w4nKElVwuoIBlMFwLY
X-Gm-Gg: ASbGncsbgtxFhuvVEi5DJSaNGrSI3ewD04z2H4uAAu34w2/fsdDYre7gd/z9waZd4At
	huMI50HYsbzxo2imPbHTfvum68y7AREOdPQGL/3QR7nuFZ1UKB2H6DWLKlv6i7DcTrjxmWDhdnI
	s0l1XwVnfAtAveBTwgkomX79MrayCp62uzZGH9Up9pvaVTlgEwowcItceXVbakCOI3EffUsjMeD
	yo8rpm1olfKC3M+BTd05Yj49piVgprLVqHepMmv4tl2eEUnHrIRohh2i47ndKPluznY70JCFb1j
	pgFw3nXSLOcTzy/6EMswzxNv8l6H70HxVKyNe7gczqioLV+zae0vELtTxEUwLbJvji0c4chBItB
	B+fU=
X-Received: by 2002:a05:620a:2b8a:b0:7d3:e9b7:7121 with SMTP id af79cd13be357-7db7db75713mr93682885a.12.1752056667165;
        Wed, 09 Jul 2025 03:24:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEREjGHO7hyySUVs4E462k9QGMOzS+RTEfsdDUihtz+3BINf+Xle9j6Glc7VDw6cWwpuUeoBQ==
X-Received: by 2002:a05:620a:2b8a:b0:7d3:e9b7:7121 with SMTP id af79cd13be357-7db7db75713mr93680185a.12.1752056666658;
        Wed, 09 Jul 2025 03:24:26 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6976f6sm8712648a12.20.2025.07.09.03.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 03:24:25 -0700 (PDT)
Message-ID: <950b2bf1-9d6f-4b96-8879-fd693ee68965@oss.qualcomm.com>
Date: Wed, 9 Jul 2025 12:24:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: x1e80100: Add videocc
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
 <20250709-x1e-videocc-v2-6-ad1acf5674b4@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250709-x1e-videocc-v2-6-ad1acf5674b4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: s38mESbJ9p-uB7qIvxo2y_IV-0W_2u0H
X-Proofpoint-ORIG-GUID: s38mESbJ9p-uB7qIvxo2y_IV-0W_2u0H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA5MDA5MyBTYWx0ZWRfX5szfFDw6phIc
 PxyIdhRMHkF9MJIfhyJM7nSNTvcXqzTHikJoKLaoK28azc2ymuVEih0qJNLDFTol06M0ITHIuHS
 GCQeXM/Xl7GW836gGbVhv0osiN16wHvpTo+gKQbcrnAnP201NwR9oXtrzEWyLpyKHkn83BHRbfC
 UmOh9vr6RvwkAwQZOmF73WLWL5eauGPQgIlDZ+rk662/Myh5aJbKZtvgrzdOAiGJL5hwDBOX4Hv
 5S0qZC0q88QslvKOKBK8mwyKldMrdocCDF/ulaIwHAbLzrAnvU/OqMyIDYe4xcFCxUn4jSWNMlT
 rtkZ/ZLZGHVPCF8IeRwzj/G7dKkvWOgixfPEwOg5kekIoQ1FRVCFogWyGk0VMLiWFW5DRqouyxK
 GpXeV6Pmdb4IuDeWS5W+jqGKCWU4HYx+3uzJqIb1z7K30a07WB1WUPs0azUVpBHQvDXkaVDc
X-Authority-Analysis: v=2.4 cv=BM+zrEQG c=1 sm=1 tr=0 ts=686e435c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=VobtZvVdalDbsM2SP8wA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_02,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=730 priorityscore=1501 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507090093

On 7/9/25 12:08 PM, Stephan Gerhold wrote:
> Add the video clock controller for X1E80100, similar to sm8550.dtsi. It
> provides the needed clocks/power domains for the iris video codec.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

