Return-Path: <devicetree+bounces-161304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB51A73558
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32AFD172F52
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABAC915746F;
	Thu, 27 Mar 2025 15:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PjBW2NkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEEB14B086
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743087986; cv=none; b=bDfX0umruj07eRqTVIXigamNFkfqY9kY3HGpWAP5QbFNuMo1UHMTvs36OQb0v17AWueehxsQElMAH/q2K0esXyfPhfojK0ps752VVQuoJyvNrlaawHZa6RpPnvp0Ef7+LLyJPatCaqdJnP3jbGrsh+pWJP531urAvl1zPEpsxVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743087986; c=relaxed/simple;
	bh=oL7hddb8pSaL/X5YLvbgpsuKPSqXlv5kikYSpG3nZB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HA7HOhiCG73dVJu+oK0ReGCXCggTg/EDgXA3Sh1edO6dkJQmGU7Ph0wF+iI7kTbE0GMBDHFGwYxIGc+oBjBCbWx+8hE0QVlxMDjbuvADb6Y/jxB/tVaZ9FiCWVfKuHMBNDRrPlXlOunCmJl5pgs/VlCQKyUcNM+UAAwm3yt7dR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PjBW2NkD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52REfo8F022979
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:06:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RKFntSHCTGPKcQhIqy1arMAJ
	cgI7btxBYC/rwfIx7Vg=; b=PjBW2NkDyXAwzk32YYPee/g+NfnL3lhxpNyU00TQ
	zsa38pBFNK7Q2lTp27z/CQZbNWUi+syhvS1hC59mgfH2QMPc6WElPh7/Rtj9rCdP
	7EpV/AuwgrNFeRKFNabTzHuGxdUapLQBAsgF6/y3uZgiuuYnkI4DQO1aUScj3fi3
	HRYFsRITcz9u8V5ONlgka1Ypy9f0+U8rxBJb9B/hDPgV8j8t+N7xKE1cNUW1jVbM
	R94k4zrLbzlisAAmzCqh+A1y1NyXA9dxKNhg39hbO+vjQwVgmIiHvUzWeph93cuP
	8hYdebfv7gS/EYbV608WazLXNta71iB1c78G78VdgP3BHQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mb9mw6ff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:06:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5c82c6d72so217908285a.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:06:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743087982; x=1743692782;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RKFntSHCTGPKcQhIqy1arMAJcgI7btxBYC/rwfIx7Vg=;
        b=N/iLEw47M/UunW6NRkR91OmnRu+c4VHQH9NbyOZVCxttIGohHFyjGJsYBWTUjuPpvt
         gmcqipXLY18G7Q8aW8jty9SlBgQxF4fRstHKmdHdxrWtZVG6J6dqVOm1AmAy6c9DtW3v
         0B3oksCt27l7CpIEwE4Wdi2vVll+INAX5hgRhDXOe0FY/MmJX5gFvRm+Fc42A1Un7fwu
         mwNdPpaemMmjmTNdGX4gk2FC9JApPgTHAr0Q4gglGJZI4W24Da48Ak5AYmYXR7ADDc2E
         6Yjv9hAI+62eAU0WZPFwTQhbW/r93jOIakCEV1cFkXJQAODuXEU34G1M90+2KhJckW5B
         iI0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWl6h8yCbBzytDkWra1dIvcXobskfjUG8r4erTVdBP67KT7f+zN6ggovoZQ8RJwoikPCgFOE4Irca6C@vger.kernel.org
X-Gm-Message-State: AOJu0YxiNFlmSemYAsJZHZPIWyNA5dt0q87/BnE5J3TUXkQOlZRPzJhX
	LyNINliAhOQSeDRrFMTke/mTMAsxMuYk+1697LgTwz+aOOoiEuz4i/lb/UeQ/ve9WRCreEa2kf0
	//tfsoYlawDHx0S+B4K+gZgYdHnwIdALcgYSXhrkjV5nix3oXx4BOZbvG0Hg2
X-Gm-Gg: ASbGncuIDsFU0m75+Arl+SZFpyTFZbMJfFTsfLhqK+XQI0V8Yt40SDHqhCS4RiInkaJ
	grJkHLSY+ZXA3217jBZDwWqkIA4CuGGim451/GeTWkgo+bTf7aRzpKDUTaiUo8Ltt97BwaMWLSN
	UoZZITp1eU1gu77CDvLrUslTFkqcwHG8cnArAUud58Nx7phgIkwEZuTce1ibBx0zHLsLsVBXqP5
	khluZV3aZc+eOOP7XWZOSOdY8kPakcRH+NHcIDBfVmgbhS7X9yQy0LDyRD/OGpdp+BAM1Klrla4
	U2v4AQjDP0bw6pf6XRqsJY+icxWJd+b/hYvM5yQD1lUjQR0IWuY60nBOQ5BRvtjv6nlYPP4QJ7r
	OXO8=
X-Received: by 2002:a05:620a:2492:b0:7c5:ad3c:8478 with SMTP id af79cd13be357-7c5ed9f4f9cmr517572685a.16.1743087981773;
        Thu, 27 Mar 2025 08:06:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhuNSAPU6HEIo9bahrZTEHK4yVoTqrYVjH2/T9oNoAmTxgLhnWKjqSSISPHOseE28eYCJQuw==
X-Received: by 2002:a05:620a:2492:b0:7c5:ad3c:8478 with SMTP id af79cd13be357-7c5ed9f4f9cmr517565685a.16.1743087981179;
        Thu, 27 Mar 2025 08:06:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbe00sm2106702e87.146.2025.03.27.08.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 08:06:20 -0700 (PDT)
Date: Thu, 27 Mar 2025 17:06:17 +0200
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
Subject: Re: [PATCH v3 10/18] clk: qcom: camcc-sm8550: Move PLL & clk
 configuration to really probe
Message-ID: <ycplfyrtunsp6k2cuszsynljihk5obhzl3bau6lt7geouabuwh@ssbbduiaz5nm>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-10-895fafd62627@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-10-895fafd62627@quicinc.com>
X-Authority-Analysis: v=2.4 cv=cs+bk04i c=1 sm=1 tr=0 ts=67e5696e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=OU1JASuMovj745rkUKUA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: _F67kNVohS3ubE3J_qPFk17IsBqynxPa
X-Proofpoint-ORIG-GUID: _F67kNVohS3ubE3J_qPFk17IsBqynxPa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270103

On Thu, Mar 27, 2025 at 03:22:30PM +0530, Jagadeesh Kona wrote:
> Camera PLLs on SM8550 require both MMCX and MXC rails to be kept ON to
> configure the PLLs properly. Hence move runtime power management, PLL
> configuration and enabling critical clocks to qcom_cc_really_probe() which
> ensures all required power domains are in enabled state before configuring
> the PLLs or enabling the clocks.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  drivers/clk/qcom/camcc-sm8550.c | 81 ++++++++++++++++++++---------------------
>  1 file changed, 40 insertions(+), 41 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

