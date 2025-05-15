Return-Path: <devicetree+bounces-177709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B461AB8ADF
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7A3D16BF25
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A82A218AAD;
	Thu, 15 May 2025 15:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QRTIPliF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DBF217F54
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323308; cv=none; b=DH3Y8E8JjqPMzfmdhmLd9fWUw+VJ5ndEE1MmtFGKjYClSddzz5AzDNbmGfS45l2TosWrcXEQqT0lDFAkSFe5jZlP7OafY3RJPE1QTRSEDRXKP0zkHiY3GHsnh6pauMSdudeObvUcM2FTZ3ZFyAdXLmSegC5l/t+cpkc/o1mGWto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323308; c=relaxed/simple;
	bh=PiE+MH1cFiOpy6aub2DtWFiJcuOCWUKrQxaljJ2s49Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nP0K/+5DgmHww59FlObW2GG3wCvKwmTXm2y9RUBFxaI6UH/hJQFEgA7USHoClqLwqjpEGxL+NWG4pb0BUGLGdFWCOFaEK8PPz0DEMhV5g1HtXaYxQbDBBSqWcQh+TPtY/AxkOK1uAYp1eSRAFTjYPW26EuC3DPg4M50mVUrl0tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QRTIPliF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFY1A016973
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:35:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4yB/XQGZjAJwAICW4F7u+rn/T60dhMBEFnCYzfHzDX4=; b=QRTIPliFhSzpIgiw
	pgvEdtyT0EHBMG7dH+tDDmMdDHsD7n4u/QzeFYejwXxcFPo25g7APjxPWgYMfwCe
	LXMFPkqPDjvLT1c3Y9hjWfkheeOFDJ2Wp5OzhSu5EY/fNKkkBM+sW+V7AtKEc2L0
	yI0gouRmgTL1xl/owD9FEWLEfdBQdk9SUhhUidAnhRtqIiW0bgNQD0zx5m1guU7g
	bzGP5cljNX2dwsphn7r9OgWRYReL5jbNXqgYHubaGd9gkJF5vlkOD4RHWXUpI+Hw
	uPZ2VobrBtFCjJ4Jf9I9wlmJbaGXAX/zVzRV8UKKkwZKB7LU3jhrtd/FdvTdfXfs
	An03yw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmpsg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:35:05 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8ac35546eso348396d6.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:35:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323304; x=1747928104;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4yB/XQGZjAJwAICW4F7u+rn/T60dhMBEFnCYzfHzDX4=;
        b=VUct69v/xlfLdOLgKN0923Sk3J6EMG2l8lBgf1rPm3DM8JkclsEegPkO1a8YTDe9yL
         NOTYsQYCzreIWFJndH2Fcvnpi82qUOcxCh2pGlWEsrosDnZ2KRmYZHWvPfryQwK0K+O9
         3nQFIVqHj8mTv5uEpKjG5ZzO788DSwAs8/8ZMEYKUfoyUSReHNYv4dJw+wWCNEsEM+Ya
         6Telo/1ywR3uezlxhN9J+T0ZEW9pNKxyDG/XhYQo43dQ+n7NfCGMI+k+H8XLxbnH9/7k
         3y4c/AyculVBVIQiVIazZ6wfxXPv0FFs0adGMJl270TXBfrA4yMVAd4MMLem9Qqn4wht
         BdFA==
X-Forwarded-Encrypted: i=1; AJvYcCUPBFsK5CzZ4Zc68RWqlHABiQaRjtmDcRCDrMNoKUxIXYAjKBSmus8fEECtuK2QsG9O15fRLeezpZBQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn0eIjkA4C+aVQ1Ikfa9/OIs9Y4U+enem7oz2ekQ2LhkwNtfcv
	B++1rML0ZwKqK9vfL153pvRLFPD8vukdqadkc/FciNoPue/Svm/+RizVi+RUl0pBEjBcg11HJXg
	PYiLh4i/KWdM/436/IXX3ClhGmO7+E/x0+4lM5K0pGqVIx3nL589/lxQslv9f6beM
X-Gm-Gg: ASbGncsT/luZvjp+tLb43njpk8KuJwFPIZ5nBMlmO/qYXPnJEFQVYScEOugYLt3M1Xc
	QlU7lOIoSQaLAlWh9KZn6P5MIELfvfJG1RNhN3WPFVaww64DaVOvkdcJPAV9+zGfZwJrYBbYswn
	iZaybgemsfbqXfnp+Bt7FvUqw459/hEEcXuwidNahPVteIEHeWY7JV8G+NQy7dNUHnTmnOZiqxH
	ritUd5lAY8nKrpsx4CQSOTn+DJcIwnoVPbX1ZuQ5k+BuwX263rR2RPnSS95oKScsQYBRtFBIwTt
	iP5bXS7v7e/VotJiY4R8IVOQLt1I4xrR12iNL8AtMaC1rOPUEkjCzKtI9h0y1gFj1g==
X-Received: by 2002:a05:6214:2403:b0:6f6:e6d1:40d8 with SMTP id 6a1803df08f44-6f8b08c7856mr1053736d6.11.1747323304323;
        Thu, 15 May 2025 08:35:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5GtBANepnczey5ulcTX+FlLpeblm1J2dmWkv5sgN3i5CFmiKb8SQIzrnodlg/LcQE6qf1Ww==
X-Received: by 2002:a05:6214:2403:b0:6f6:e6d1:40d8 with SMTP id 6a1803df08f44-6f8b08c7856mr1053466d6.11.1747323303917;
        Thu, 15 May 2025 08:35:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005a6e637dsm6880a12.43.2025.05.15.08.35.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:35:03 -0700 (PDT)
Message-ID: <2a49a457-9b6a-481b-9b04-c9747ac67003@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:35:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 17/18] arm64: dts: qcom: sm8550: Additionally manage
 MXC power domain in camcc
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-17-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-17-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NCBTYWx0ZWRfX0aqshuEhK9uw
 7sIookdDVP3V/TJJTnRX7aYhK8+sQz4EXjAIE83598d8ljf8g8mRC6bOCziitpgLYDyfKhobPoZ
 vCuAYKdJM3j3TmMcsSPeuPxY1cMLwPLe2+4YAvfIi4SeowOs2R1FBk6cgarkCwPJnDz1G54XvRe
 rwq2cRorK6tJrr+9qgE/9y5/gdpX2QIl/AByPnvAIQIoxZEbQdSA3KZS40QcCFUUsepp8x/4zEe
 uW9YxvnBOgoui7LXjoDpGAR6dzfkxiFbuVF7XF3m2H3vRv0d6n7yYbSYu5YmJWG59ysGq0ecY3j
 Y1sXwwvLyzC/O4olgrA261tfTafezbQWI//gX5I1HFr8wMHEuZ/IWU7OIyflEd8Z3IeL3qLiieY
 Z1vhGP4RPqqY5p+dOtroAI7gTl7KewHI4liq6ZfVQA2sQxczopNSwvLmB5YbJeYo9dkJybmT
X-Authority-Analysis: v=2.4 cv=G5scE8k5 c=1 sm=1 tr=0 ts=682609a9 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=9YvV8F1douotiZniFPIA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: A0i7EOOrcrPPg8b5awHCMeQJYmcYZ2vt
X-Proofpoint-ORIG-GUID: A0i7EOOrcrPPg8b5awHCMeQJYmcYZ2vt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=606 clxscore=1015 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150154

On 5/14/25 9:09 PM, Jagadeesh Kona wrote:
> From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> Camcc requires both MMCX and MXC rails to be powered ON to configure
> the camera PLLs on SM8550 platform. Hence add MXC power domain to
> camcc node on SM8550. While at it, update SM8550_MMCX macro to RPMHPD_MMCX
> to align towards common macros.
> 
> Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Taniya Das <quic_tdas@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

