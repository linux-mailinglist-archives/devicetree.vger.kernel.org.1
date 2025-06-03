Return-Path: <devicetree+bounces-182480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7463ACC788
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 984A416647C
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 13:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F1922D9ED;
	Tue,  3 Jun 2025 13:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPxtjvAI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C713C8E8
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 13:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956736; cv=none; b=Hj9lrIOxU5TDn7a7XJLBWLnhlEnpXSsns8cIsX3mnIQmg7C8PHJfBo7dJkzuVf3x9Umhapr8dGG0428/f8VaahmQmCAzYFIRJy6r9DGyFtHx3iaKc5Z1gBBEFaEzFqkXko2hMN93qmJljuKjS5u5wxgJUUry9zTJITIciZCKz80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956736; c=relaxed/simple;
	bh=5QAzmDvFRTpWAdFmxQg4x7ej8GR00Z3SpQ2nqB74y3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R7uKpatWBH/XV5b3cuqXFlO50hh7JIeqDBrws0nYQBtXZO3gL7WW0XIDv52R/T7FODU6WAVL16NDwPYQ8PA5FGWwKzf09mibf3LjV06K6B8GHCySHoLJn7hiaFCiy+lXw0mNyXbaNWi9aDwneF3jQGeGwXtcelpjsBqrFuc57uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPxtjvAI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JHfT013495
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 13:18:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lv0T7rdeI0hM2CzDvZmpwZ//
	ZkBMY34hJ+d47pTOKf0=; b=cPxtjvAI7V/Cxqre9DCTBZ+gdCwmenr/i73YMU2+
	nErSTdtPdacQWDWJAl7YzrswCFRyy7bAm0P1hpGMszucX/bRWvzdEftpX74IqfOx
	6DMML6+GqoXg8AhbOEubOdpfUQgmlamWCz06iRHWIz1JRAAXep1UyavWhfF3h4Pv
	OZL7OvytdPRFNrOlfFH1/BolD1HElZBkA7PrH0M+Vrp6f1YexPb/rSa8cqhXA1fG
	tQimAAI/O1oXBLQ7CTzFXmql1WH4z1C8oiOQ/qtxo+FXy+fw72C8jDUjnJjzOYgr
	tJFyqw/2O38iq1DfsOPIsz1KLh5j79elzmbhm84gWhbkWg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8njnc7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 13:18:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c9305d29abso893149685a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:18:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956733; x=1749561533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lv0T7rdeI0hM2CzDvZmpwZ//ZkBMY34hJ+d47pTOKf0=;
        b=IQpagyNIeMjmTDiUpm6w7ePM3aRasecP+z1xKMGkNa8woNyGzcDNtqS2EPWqv9im/d
         lFf/JJT73krfN2mDLZL4FOVze+mlD0kqfbBZsPJfn1XHdyT8oAuRFsC50JKyrYH954CL
         mKBiAJoSuYjb8FEkIalp0T14jw8VLj02ERNvB0zXXJ9Va7FMznZuw4lutzuG4gl+niYs
         GEciTTIMrj0Fb6dailk8jW+2h/kZ3jTXpS8Pb56Wbx67JIzxks5ojvU6AjSJ1Mrofedd
         JaNKCXX7uvE9EM8l5gbVLyUOeyyfz/+9Z8BHfS3a8tOpGFjPsQpEElTOIg5j31jXwPde
         WxPA==
X-Forwarded-Encrypted: i=1; AJvYcCUfgaP3oF0Wkng0dfivfD5+wIYdYEJV2mcyc+oGow46Wz1w7VKjAGZZrxlz5+5GGdUeRo4z/EsnwZd1@vger.kernel.org
X-Gm-Message-State: AOJu0YwLnFjdHYvWA0L2pFPUvEyWvI9ucZ/VlaOrxBKNM0QohR/pvc4G
	STO7MASFpUvHU4L3Rtbuze4WcBkO/5CGlT3A0jnXq92UxqwnraklG7Ot1YOy5wv9kfrvi/qi63z
	UTptsa7DYrujUEoVBc4S33Oe+MrrJbNlAqoiMZ2UbvhYaxaYWyJid8vKgfC8hZ0Hq
X-Gm-Gg: ASbGnctwlfowhQrKfj7Fz38T5ZojOiRn5yjb1SWFh+rpJsQmFBxmfIJAK4yXY76oA4S
	mQItbaPrtGE6MXnceUmG9OkzB09GeY0BnCo6VJM5PPOfRrN4Wam1rvlmT4RJRVN78wstXl9319k
	ElCS6Upx1JrMVge5IDCZMmfklXdid35FK/3lQ97oukIdZWay3KB6PKkM9sl4xXyUGvn2tW65usL
	UBLKHMdGyEd/dKJit2/hjZXI6HE/2gdEmuzcxgkIrjS9JjX7q2xKA9vPIXDAsoQknosa5xWathm
	U11+RYYNy0zszVGCvhiPbLy2ONgNoJEAfQ/XXTDUVv0bWeoqI7HsyOABDV1rXzqFLYRbKDtji/0
	=
X-Received: by 2002:a05:620a:469f:b0:7cd:53cc:c60c with SMTP id af79cd13be357-7d0a2016db8mr2833639385a.37.1748956732912;
        Tue, 03 Jun 2025 06:18:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9Ni02Zm/ODdbCsemImel2/PqcbT7yDIu9fD/LbcVyDDkpwf5PY9D8yi3BVY+nWGItaalipQ==
X-Received: by 2002:a05:620a:469f:b0:7cd:53cc:c60c with SMTP id af79cd13be357-7d0a2016db8mr2833636185a.37.1748956732521;
        Tue, 03 Jun 2025 06:18:52 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85bf63aesm18053221fa.112.2025.06.03.06.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:18:51 -0700 (PDT)
Date: Tue, 3 Jun 2025 16:18:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rakesh Kota <quic_kotarake@quicinc.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sa8775p: pmic: enable rtc
Message-ID: <geaejertcg7lfwaxgmm3dmiwvyrducjfywcis663mbwil6szff@ivpot6ekhjkw>
References: <20250529-add-rtc-for-sa8775p-v2-1-f06fd212c0e5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250529-add-rtc-for-sa8775p-v2-1-f06fd212c0e5@oss.qualcomm.com>
X-Proofpoint-GUID: YItpebBSD2NZjBRg-Wn6OLkqFpAaK75c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDExNSBTYWx0ZWRfX5II3VviPLhH/
 9r8C/PA7mcna4ausGfA5rdwSKl1dgRHNqsO2OEwKH5OLPUFWPk/JirIoYdcgKLwxvsBkZ6cJ7Rt
 wAhF05gVKCBmClg/p9sPsZjpwN+hSfd2k/CO2rP6AJ6XHYiOB98JIsJPjGSWc3HXW2UO90d80Ka
 Y/aAJrknjUItJlEeXM2Xjf+o34kaR5IFhQ7osx+OLt4hQ4UOfHZj2XCt7Z23DmNWTbRP2hRuAaT
 DQ71qYgMjcxmJTKxMx0GJxUi5c328j6BqmQ17OuxF2jgO6BZzQCa6Pq989DVNA6DLxaHbGCTCPf
 yljoptwW8CBRJTvRemy2heHP6vs9Em+LjZo3x97N045OIHVAaJGKKAemONZdAFW0Qk5lux0WM0l
 odg3P5kjAA/kq2zfUBOGW+IaEVq2sSYz1V4lBThmoiGp73jgnv4g25kaGm+kCo9h1VA4wkyw
X-Proofpoint-ORIG-GUID: YItpebBSD2NZjBRg-Wn6OLkqFpAaK75c
X-Authority-Analysis: v=2.4 cv=UphjN/wB c=1 sm=1 tr=0 ts=683ef63e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=Zu5RX7N5wJyGiFM1bRgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030115

On Thu, May 29, 2025 at 11:47:08AM +0800, Tingguo Cheng wrote:
> Add RTC node, the RTC is controlled by PMIC device via spmi bus.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---
> Changes in v2:
> - Changed the Email address from quicinc.com to oss.qualcomm.com.
> - Removed the 'allow-set-time' property because APPS is prohibited from setting the hardware RTC time.

How do we handle the offset then? Is there an nvram cell that stores
offset between RTC value and the actual time?

> - Rebased on next-20250528.
> - Link to v1: https://lore.kernel.org/r/20240902104302.3959670-1-quic_tingguoc@quicinc.com
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> index 1369c3d43f866de9d8cd5cd4985241b99c0a0454..9e0d05c1b39ce229d5d4310ea1df1bf02e689178 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> @@ -132,6 +132,13 @@ pmm8654au_0_pon_resin: resin {
>  			};
>  		};
>  
> +		pmm8654au_0_rtc: rtc@6100 {
> +			compatible = "qcom,pmk8350-rtc";
> +			reg = <0x6100>, <0x6200>;
> +			reg-names = "rtc", "alarm";
> +			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
> +		};
> +
>  		pmm8654au_0_gpios: gpio@8800 {
>  			compatible = "qcom,pmm8654au-gpio", "qcom,spmi-gpio";
>  			reg = <0x8800>;
> 
> ---
> base-commit: 4788e5176e2ae85ec6d2022a5a79aae0da083154
> change-id: 20250529-add-rtc-for-sa8775p-726de6e77500
> 
> Best regards,
> -- 
> Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

