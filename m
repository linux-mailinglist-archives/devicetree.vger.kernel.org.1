Return-Path: <devicetree+bounces-177439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1738BAB77CD
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 955444A82DE
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0827E29672E;
	Wed, 14 May 2025 21:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YqoKUfxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DA029551D
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257760; cv=none; b=Tk5BKFf2TsnLOjSk4lA7NFWUFMCBTVHI9G3BmAZyTZxxRbt1wl16ptucSJMwwjS7aOso6OnNkGhSV5IGSROzt6FiwoFaoSYbSmVIG62wciPeECae2GDsn0fHFX3TgZPab0b/MOblpn1Y1cVOARZeB3eORoQmhajo7EFoC8FkZZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257760; c=relaxed/simple;
	bh=j7WsjS00K3b+a97k61GU+JejilHZrixnSaC0OSTnvJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sec9aMEk/iHgNqJTSY/5eEFWdcHnhx5dw8Fp4LAcWkcPYYzDXZUtDRG6h0zju/5NtGhEn3AzAZGqbpwYNI86bDFeNNIs1pGHhBGxzkq9ztRbKSpiqY6Tt5EdA1cYuaYbeEQ1VUkq4/BMKSyh+TCUoDl1akkBXRm/pn2hFnVYoPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YqoKUfxl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EL6HIr013101
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:22:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NqN08L1o+DsIhnbifR4SWbDh
	2bpcoXr6Sqa16WdTVB4=; b=YqoKUfxlX6LrSNvIv4VpXjnzsCWs3vI0wHuJ+41e
	NQ7VVxMRHGI2+snTiktM8tPbIu+Dc7MZZyKEF0cDwoRGQLp92G+umcrISJBTpDww
	N4/qwrEwuFqjX+HRdHTHrMZ40WdYV59CV11ow7dd3UVdt6vdmBFo+nnCf3TpdjPO
	wwqh3jYjMDG0kb8NehkFNpFIUEpWp7CH8Y7R5MO38FxgFNDc2CcwD493LxTYxpa0
	6FgDNm9d8hAwWnCa5qZrV5jJ+Irw5BHMTLO84FmSr3w9SGijQQ6UUorTeazBak9e
	LFyK5XIIGjuZ59+FMAdeyvLanHhB5jTEyQqWCLOCZT8+Eg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmm5dy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:22:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5b9333642so23164585a.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:22:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257756; x=1747862556;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NqN08L1o+DsIhnbifR4SWbDh2bpcoXr6Sqa16WdTVB4=;
        b=vSDrHFwGQ4CyvoUSR0XRYv2BYaqfHHgJItiAoT1eWARLRrAIXY8VJcPJEZHEcX2P1/
         r+djHyVI379g4UJYfLoYKJ0id1XHZQu0RrJUXgUHZhvBVivYGyAc5062LoFOfuBACgwT
         lST0EiL+ugGZ158KhMfIQvQtp56W8Qvv4OvQ54n3UiodzTuqI/8TAhHls2t7cdiag91P
         s9qfhWL6cvc+fmP7SzJAhLUUagwd6LySlxXAinESRKl5gLsLwwi+cdG31PtiObu56XAk
         UBzP7Po+xLpq1jdGQL/XwnNSuv6uAo3efUeVAvZlXwpxtJDTBJqfQYigY2NGOgL+K6RG
         hM2A==
X-Forwarded-Encrypted: i=1; AJvYcCWH3HSuAktnUiGllfvKlitjQEmQ1uKaiRFQpPh642PSpltH7AVz2vKVAEZ/psBQQqXf8gnRdjGQsiqn@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ5AqxkdI236dcKXC8GbTBMcZxmU7b9RTLTnrflfcZPsX6XMd3
	wxmE3getWrvZqbZbXCPXsDls5dIkJpI4//nHHPZ4f+6J35EV2TxvyEF+wJidSIW8ZUM268O/Cgy
	8/2oJgdBChX4kd90VGBdsa90/PCNbxgFa+vRwGQZXSgCf2QoPzLA6IXJNH3hrovKzauHh
X-Gm-Gg: ASbGnctXJkXGaHCrxQADn3TsmhxGwdnmAKr4e7NwaBs9tY7nYjOp9rEbI5NGYrDj4QP
	AD6Pq59vR09dlIvtYMs4rwtdm8AIIB96S3jV2hCR7cdXGqdz/sKFSjEm+ifavrykZmzcd1q+OMG
	x7UeRXwPgIT8Gx8gwTcyXqvYxyPrKEvSZZsuNxHI15PMIRtmapqIcf4nqX6RHgYKXSP2Clvr9NL
	s6aMLKQ9HxKGMnrT/Z0Iz9wQ5DUaiOn/JhhptMtPsfab/8cyWJb1HwguN0q0KNBEWi50lxzWPkT
	5vTK//p03+hWFaOpedAklIr31GGTWwtUJqvZf74fjtZL8v3x+3FgXKS/3rhgL3JoASC4L3MAGyY
	=
X-Received: by 2002:a05:620a:3915:b0:7c5:b909:fde1 with SMTP id af79cd13be357-7cd28830017mr670165785a.25.1747257756542;
        Wed, 14 May 2025 14:22:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3j8ZrN0KQo365y2Sc8Bjn+p8W6FoHjqjWpPbd0tLd2YG4QSuAxdOrqQ6cIDMVlXolfagIsw==
X-Received: by 2002:a05:620a:3915:b0:7c5:b909:fde1 with SMTP id af79cd13be357-7cd28830017mr670161785a.25.1747257756170;
        Wed, 14 May 2025 14:22:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc644fcbfsm2377737e87.50.2025.05.14.14.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:22:35 -0700 (PDT)
Date: Thu, 15 May 2025 00:22:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 11/18] clk: qcom: camcc-sm8650: Move PLL & clk
 configuration to really probe
Message-ID: <n6sgzqmwcyadr7l4fwek4nq6zhgj3wcv3dxx7jwmmszwmwiw7c@d7a7qnd3cv4m>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-11-571c63297d01@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-11-571c63297d01@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5OCBTYWx0ZWRfX3EN0nf+kqb/H
 9/P6FaJJRvEYkFLLg6bZqSjh0JmUQR6lJ40kMQSRsi2l1f1zTNGrVJ11PQniAIYlUBxbq0Pgja6
 4AK94jKL4eQ1dWAghU56R2ncweruG5XnI7tA26Kwefp1h3rDdTgaTDztZxje2bzH23hFA2jJVwo
 Ds29Wn5BKKtpb+ySIKu/wLqCTq58TEOXxhc+q30KUi2JcvqNw5A3RGN3UCjNwXbwJyOOQm/Kr3N
 +xx+jjG2yclt3Mbs5I6kgUPZQGsULeTvtPblRqOFtnsNdqi3MIvqcPfSbP19sSsPkx0gmlTSNof
 sCRsppSUD2lD4odnY7ZHfPxsWB4aY1XGez22mm/DCC/SypMHrvVi5iCO3d+v14rkKubbfkVZytk
 izDvZKLSJrXH4pBDUWpkrblXQJNwRkrDMxcp5XN7bqdhJj3zlQT/fDDbj1tozuModX9W4srB
X-Authority-Analysis: v=2.4 cv=G5scE8k5 c=1 sm=1 tr=0 ts=6825099e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=R-MJ-YjwOO2PQHfhffwA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9NF-ytQjgQV77BLpbcqy0nWDeW6a38eO
X-Proofpoint-ORIG-GUID: 9NF-ytQjgQV77BLpbcqy0nWDeW6a38eO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140198

On Thu, May 15, 2025 at 12:38:56AM +0530, Jagadeesh Kona wrote:
> Camera PLLs on SM8650 require both MMCX and MXC rails to be kept ON
> to configure the PLLs properly. Hence move runtime power management,
> PLL configuration and enabling critical clocks to qcom_cc_really_probe()
> which ensures all required power domains are in enabled state before
> configuring the PLLs or enabling the clocks.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  drivers/clk/qcom/camcc-sm8650.c | 83 +++++++++++++++++++++--------------------
>  1 file changed, 42 insertions(+), 41 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

