Return-Path: <devicetree+bounces-161247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D898A73271
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D9E516C4B0
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 12:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4612144C7;
	Thu, 27 Mar 2025 12:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jHGvL8m9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8792144AC
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743079502; cv=none; b=dc2jlpIm1cAyQ3m62fsy5RWvh2C81allqGdCa/QnVg15Khp0FVHxO1D0XcRJa50g25b67J+EwkzOf8xXdrhmhaTDNn66+too80eX5MzA/pVrFgx9FjIcJnWTu2+042cca7YnveauQxWD3vFLPx92fOYUHXez4XfEoS2YhCtKklo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743079502; c=relaxed/simple;
	bh=/e3zytaAp4B3Bi5NEKovC7YiZIBoqxK6PObe0Ho2l+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uLp1nsTkjx6/pSZ+NHijC+DuimXQNsK9uXhZmRDEvcAxCE5d3zXuzuJuRnJIQrYv18bdfYb+XNf1UbJ8D4ry4utf3iqkcVo+lQSOaX/zcpNuf/qT/Vc/u39quLCMFka5L3iVe3VJfVmEr9Ej1MgkomOSOB2sjLPp0khtO/FBzMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jHGvL8m9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jErL024933
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:45:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iTWYq5AdnAs47H3SzxP5M9xN
	x8rCWKHzlbp9acZHpf4=; b=jHGvL8m91b3znyth69j7clRrt6YMeooGnHhHLxqr
	108GLUUlBMBojdwxrZhN07PFJCF3ArWF+JVLPaDiyKBG9XCv9y7snRIdU5AJnIt7
	/Rh5NKSZXXG+5tunxaXPM3Nc+r7z3W68D0nhp7fe2Ux4CQIk+3iI5QTGodTpK3RN
	gaT8MyzwL4ol3uALBV7CbNBfzxBj49bMUQFRIl1IYH6GybqC6G291DxdLzxAmJxs
	uwVHYEKwuHrLYOlpHkqL7pe/wOxLRxzZXEYHLYhWUXUf0OE6WcK2JZdbQiHumcOh
	II36QarzOUSaUz59hlvTwFrKpZ/wS9zCrgEF1c8Sqa5quA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd4rhsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:45:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c593ce5e2eso175358985a.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 05:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743079499; x=1743684299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTWYq5AdnAs47H3SzxP5M9xNx8rCWKHzlbp9acZHpf4=;
        b=R3lstJcbTZ6KLmB7aN4PtwtOGHYJoxQd+EWdS3U0O7fOuzvazfTgCvBJzzCdgSMRTp
         x76C+hRVFtqA6eCPirnbqBt+QeCwEu3gZ9xDwHExhYrFsUWARrSLHbtSHThGrNR6sd3j
         9jT3e+MLiY9MeANV07zlqaHKUUR0vMGjrsCDgqXFEyM6O++6gsKzPzwGq98l5j3v4t/8
         DG490MvIhExF9BOJXRX6DEQwJvHvQAwSoAodXs8+bO3IjaTrME5oBRphKoa5WQe7Cnjl
         UKFczDWYCD+CdmyRjTE22KRJCMPoeIGawhoPnf2/k/V1+bpnJ95pdy3vh0SA7cDpAkGZ
         7XDw==
X-Forwarded-Encrypted: i=1; AJvYcCVfz2xdIDPwIsKNbhg5UDyE11u5wveT3bGGhLohvZobQISAwPNXSdIOA6/ATZ1YQUZNQEP4xdnBOGjp@vger.kernel.org
X-Gm-Message-State: AOJu0Yzws+kceO2HHfvCOIql8/rfV7ukVRKHDia2pmIokJ6wYE4kGycj
	JYqZeeWdFbTKL/NWS0+3TewJ7wLIp2SHIMhTyyg0F7KCBSFVNkv/oDz66W/WFh4F8FnMeFVmFpR
	tRJ1pSKd4ZFX+ZTPJJVTPylNfzmTPCrzaK66C6XksgZ0yofXGmTPehfhClwjT
X-Gm-Gg: ASbGncujDJnlBVvCq0fSnv8LShVqbM3WT8PLBieucpbPDy5RAzmTzxqDItrvzZCKZci
	ngnBEpDA53mKxnm6sIIRTeSZCkqfIRgeBXAiiftWu40P/ns5CjwM6yOa3IYwBYgvFs27VZYQNVQ
	Q2ARwG4LchGbEoxnWidcJFK+AgXdUHQdHZXLWC+cApBTcKONXXhcqF35b9m/egME5sMpjpQOGFD
	rbCADI6c4jg6u9ho0XKFYJyc50Ppz8TomG8w1yXi9C9yaOWKCeokn6ll/LKms1gKy8TFhzQRZVc
	KbuiRycYoaaFfH0kvkK5gofbwtfpHzLUpg0vZF8GpinIuCchw58ld6kUWUxx5gM8XH9AV3kDZcs
	e8rU=
X-Received: by 2002:a05:620a:471f:b0:7c5:5d13:f188 with SMTP id af79cd13be357-7c5eda0c5f9mr466683485a.26.1743079498566;
        Thu, 27 Mar 2025 05:44:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3dfY3x0bdj6tB5sjdegn50OeuwdU7NRXUEUCKAXCf4eOxYNQbMoUjzG7hB4EuvuWYiKzTEw==
X-Received: by 2002:a05:620a:471f:b0:7c5:5d13:f188 with SMTP id af79cd13be357-7c5eda0c5f9mr466678385a.26.1743079498069;
        Thu, 27 Mar 2025 05:44:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6509690sm2082148e87.201.2025.03.27.05.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 05:44:57 -0700 (PDT)
Date: Thu, 27 Mar 2025 14:44:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 05/18] clk: qcom: common: Handle runtime power
 management in qcom_cc_really_probe
Message-ID: <l5h2lsw6ujys5plfmsaw5yv7pupjnz6fcl5yehxucul2le24vs@qbxkdbmknyap>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-5-895fafd62627@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-5-895fafd62627@quicinc.com>
X-Proofpoint-ORIG-GUID: HvaJDpXjWPKseFWiepEP9ltzMnjHqEw8
X-Proofpoint-GUID: HvaJDpXjWPKseFWiepEP9ltzMnjHqEw8
X-Authority-Analysis: v=2.4 cv=QLZoRhLL c=1 sm=1 tr=0 ts=67e5484c cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=mx-Q9tutXSnSn-y_4VoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=737 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270088

On Thu, Mar 27, 2025 at 03:22:25PM +0530, Jagadeesh Kona wrote:
> Add support for runtime power management in qcom_cc_really_probe() to
> commonize it across all the clock controllers. The runtime power management
> is not required for all clock controllers, hence handle the rpm based on
> use_rpm flag in clock controller descriptor.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  drivers/clk/qcom/common.c | 37 ++++++++++++++++++++++++++++---------
>  drivers/clk/qcom/common.h |  1 +
>  2 files changed, 29 insertions(+), 9 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

