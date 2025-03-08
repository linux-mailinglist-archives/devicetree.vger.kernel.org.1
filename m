Return-Path: <devicetree+bounces-155662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEE3A57B84
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 16:17:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8DDF16CE71
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30E81BEF74;
	Sat,  8 Mar 2025 15:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LesB243q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7956D13D28F
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 15:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741447038; cv=none; b=gujHloRaBCZBfq8OfeifzNG4o2wIp4I31FXYi2kr31Jbg6xhhwxJl5Vjla77EzSOa9FMXFmYoTdcT/Ytnwj+w29Y2syv7x4EwQpkIId1B4TEqffqslXSuGWNgwRvElxVacQEMXLq2tDTm2gr5bECQtlmwfiMclmjsruqfvAmJg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741447038; c=relaxed/simple;
	bh=eHD1UOflqnibS+rNcgWGWII/4Eeo/dKZHtQqL98tyoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZhsUsf+gwIFx+fWtQ+bNUZaumINjg2mPle/7iZmMJI3vBA4eSA2Cv7QVxqCrW342yHLTLlVut9lcrgXgVJS/PGINya+4zK357L1HFcRYJGrFciCTvRoUsl3rzrb7/0o/jVTRJH9cWQPKI1dBX2GiUXDYosH6+ChZd2VHxuBudE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LesB243q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528Co2jN011561
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 15:17:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	re5UzEZ5K6uVdro9hKWQbaz4oQpEoaV0Io0NxF4iFsE=; b=LesB243qK1RsT5R4
	qtOpimO+KyBkph3WmQMTmzJm5TbTR9+OibF+k3U0vlCO7/lYGdK7sArDnvMuOX1F
	chf3D2u3lQpgSco5/qniT6N9hskJm362Hf3IYxb2JrLMjO9qM0Mk2y8FZfzkJCVx
	3JgnYwXpd3njrVtqnSpyoSYjhgMPN3B0HXOZlMvcZj1M0vFyuNvK/oAFQHzDmG1j
	VEjhU3KdpWPQB8j874vNBYAhmX5SHihBFicDSOsB8Pl+6Z48l5Wmt/PYfGriVhUI
	i7hv5YwSNvC8ujULTkCvNH4RilaHDuY16md4xiSSKPcBFs9vVai3ikXfty6qirmw
	wSn8OA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0w0qyf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 15:17:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54734292aso2626985a.2
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 07:17:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741447035; x=1742051835;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=re5UzEZ5K6uVdro9hKWQbaz4oQpEoaV0Io0NxF4iFsE=;
        b=l2UkUmgsBG+AYxJoG3YTZMl9YhyH8s4zQnmB4aTl3yocrzJK+RA5e3Css3UpbCFqro
         X6KqZFgby3lO+vrmvQJXOPkbDzFMQ6Kt2EP1gq6g2Mr+nT+FBwt5ABlgUv0iBwWAhmZ7
         2EKim3XX2d+JgnUOZq/1V8rhVhiDMSiC7Dr8D520iEhrijzIRyKOKnFfKdtdzBL39fH3
         D0P7R3IX3xzkQV9cs3qR9ZPCLSD+5OZu+tCfCmgOl6Wzu0FGpNVSYUaT8vvWS8NIr1E0
         e7qJ7ioJsjhSFdk2J0hz59+mNicX2VefneLn3KrczrzhbjTFDEQkN8MdNPQgG6/4dkDo
         HePg==
X-Forwarded-Encrypted: i=1; AJvYcCU+3fj52BWhmRqVeam/Jc8EUMvvF4KcOOhbjFpMdSQLvxWVqjqpju7/pWMTZK+aUe4hyiyXuIwQD1PH@vger.kernel.org
X-Gm-Message-State: AOJu0YwnphK2G20aYnufosq42FX1iOG1tj36q6+1fqnKZBrmVzX4Gadc
	wjHPS6MnGoHGHq4EoqN0NL+G6jyldXSTeAH+97WgTCWKhSA5/odh/cUka7OvhrzDw6DdSWyC5OF
	NGQqa9lvZFswWHYaLoxw5J6GJ++KopaM1N8oSZ3ZIKa236tWGm52IVYiqxH8o
X-Gm-Gg: ASbGnctaWJ1nWc2MANONchhTPRxNVWHg6P6802tr1TN7sWGgZY5yR6kRx6XcJX+89Fa
	VlERXNez/S5p0kULHtAYhUUs17yHE8siKndHtb0iEEKpY6MA7P+y5lniQC2UCGsyY5QiZNm1wPm
	T9wN58IaLiN71kV0lYDPwl9UMDIjYnEln301Cwjxog8H70+znPl4Jw8CC7hZ7YuXJ2ppEWlI1JY
	gfQ7nQfIPwP5sse1AokQUGNSX8BqMDWHtpvCCVlASt2yoZ6uF3CdRgEi5xOjF6dmUc07wY2mBl9
	n6wN4lhTiv8l96BFxc37Z8GyaYjMyV0OxM8VokY+c8zAeQ0WiwIZ0lVs9UQLnbpiKgRPoA==
X-Received: by 2002:a05:6214:5289:b0:6e4:3caf:c9aa with SMTP id 6a1803df08f44-6e908ca7100mr16888486d6.3.1741447035355;
        Sat, 08 Mar 2025 07:17:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXqvQTdLBkyJnbcjsyepOHJUD5AVaMnkEXC3SHRcGgUUebagk/n8W0aVAJDr231t/iWfulzA==
X-Received: by 2002:a05:6214:5289:b0:6e4:3caf:c9aa with SMTP id 6a1803df08f44-6e908ca7100mr16888306d6.3.1741447035019;
        Sat, 08 Mar 2025 07:17:15 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2390fe76csm447136266b.0.2025.03.08.07.17.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:17:14 -0800 (PST)
Message-ID: <a366082d-419f-4bdd-bbd3-5771f6ea86c8@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:17:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: Fix CPU7 opp table
To: wuxilin123@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Thara Gopinath <thara.gopinath@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250308-fix-sm8250-cpufreq-v1-1-8a0226721399@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250308-fix-sm8250-cpufreq-v1-1-8a0226721399@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tsdHJ8Zzj2QGXqkhDggFwyiEqiYFfHlC
X-Proofpoint-GUID: tsdHJ8Zzj2QGXqkhDggFwyiEqiYFfHlC
X-Authority-Analysis: v=2.4 cv=MICamNZl c=1 sm=1 tr=0 ts=67cc5f7c cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=VArMjV_vRDmCgQX4rEwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_06,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=942 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080115

On 8.03.2025 11:27 AM, Xilin Wu via B4 Relay wrote:
> From: Xilin Wu <wuxilin123@gmail.com>
> 
> There is a typo in cpu7_opp9. Fix it to get rid of the following
> errors.
> 
> [    0.198043] cpu cpu7: Voltage update failed freq=1747200
> [    0.198052] cpu cpu7: failed to update OPP for freq=1747200
> 
> Fixes: 8e0e8016cb79 ("arm64: dts: qcom: sm8250: Add CPU opp tables")
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


