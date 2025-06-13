Return-Path: <devicetree+bounces-185694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A028AD8CD4
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 15:10:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 744DF188E563
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 13:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6813585C5E;
	Fri, 13 Jun 2025 13:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FZtOAtCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62ABA29
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 13:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749820241; cv=none; b=Rujxz39XvbY+VzannqwDg1HfW7uvwAVhkGqjeRdpsYt8Eu690zkgLo9cYG9+1dPfoSme/Je+hQYDCE7EXaSiiVQxDSP06PokkQnuU4Wa6D8UrTK5LpipgU6/ZI+2IVg3M18icw6fI+O0VzJKnG4O1gYT/kX5LdZsOPoNwESPX8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749820241; c=relaxed/simple;
	bh=0ZB4tBA7VPI4q2+c0Iur9EkWxAnjfflthKsJ5EfCyNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uBzLjjmgg+aDHTkjR8s94/jNtkBfb+F1w7+Q1Be52Gp4Ocq+Yf5nPJEKhPxTaMxoIVwtZ6gCi9B0K7XinzFpGxI2IOgWhm7uQ0i/EjjbQVWoezhFZ0jjtpkCATUOVNB6lD402Ze0bfXbasUXK1ohH/BkugmL2pm6msClOj73snk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FZtOAtCT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D99vU3013766
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 13:10:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=311F7krfIodtR5drIHKaH5kh
	X/9H/NonlAsY598nqSA=; b=FZtOAtCTdEghKcZAGH7tmzlOnJ+QW+EJbZ4a2iKl
	t2KhWrnRDLdrAlHY+QHXOtOtX4jVsrkiFWyVL4gHnyKM2U9KS2gqBy7FvzdjhKHv
	06+rwmBVGmq2HlCv7L3e5fKh9qD63JTFc1yZfs7OSJKRGwZlTzQa4VPtJreLCFRl
	9gBq8lp1iLl104flOuAILllRUNq3+X13vYOyZSEBpkL3urbsUYC+QZVD6XAR5bg+
	zBB6l4F4rkGn/r0YjjQ1aeLxBWC5yl/uIjV2PsFkZ97XJG+iin9fWXCmtYO17FTu
	XQiBIlEK20iNZt3BZePZvcdxqC5FjY91ePv2xUNboDy1zA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmnk6fs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 13:10:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d22790afd2so355692585a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 06:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749820237; x=1750425037;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=311F7krfIodtR5drIHKaH5khX/9H/NonlAsY598nqSA=;
        b=M5W14/rc4jI772cvwzNxfwdG4ZrzPq0okVgOCJ+KoaUmpHq9I0K0pBLrX3ppf38YzS
         V+98IBADGPm7s+hj3lHaFSE/brUz4Lji8gALjHeDRQI2KJq+AXhRe5WfGqXgzIUjb/C0
         0+JwYMWAa5s76D/wJ29T66ANVndCKYOiMBRmzRcBhGWtX8OS57z/KV5tYt+jzSKKRUEf
         StBFW+iC3zxN1TZV1WFGecIdwmC25XMSGBJQhfkE3rPRVf+XdH/kIc9bt0gWQiYvzbsJ
         Qft2gB7GRGAuAft7L5i27BMFfoSNr11zaPQyW+dBTz4E18fuQF8F5+XMDJRexiVLSOQe
         LNmg==
X-Forwarded-Encrypted: i=1; AJvYcCWHsP7phlsP8qnlM0vjR6hpRMpnSB54Yq7e+C0lgdKQ1VR4BRPF3/dTqdKejxhkn/UjsFOwcsA4SNsq@vger.kernel.org
X-Gm-Message-State: AOJu0YwUvJOt0WI1se4JNEUOXnMahYYU90wZqLcOnujEbGT6vptR9F2s
	pE1vYF6qsaUC1fdHL2diufhqE2uU1ZzkQtWDJhqPWm4C+5cqFDf8nGnzX/lNKD6bWsXzW3h436I
	CGWHoSVkJw1Wh5UuulgMW+TfSExRmxo9Sh0a3AmIJXgTXG4JtxjgxylOb6ngwjn+2
X-Gm-Gg: ASbGncty7TFZcuy11rwPxc0iP/2opLtO0bFoB32jlvk35T2atB39Fkyds/8b7skS2Ra
	k4BmqY2z0nrizuGrExpG//adMVWx4SH/YinPIMStT0EFwf6hL4NiEaiTvPgZKXkkbfuuRCic9JV
	r+gmghTj1sdR+L8wkoWYPqRBwuGGoRdPyiw1sDeQxooZsLQ4GRKGbNVurHBs1US4sgi832xms/a
	04QMogkVfrL6896XCslf1KbK6s/CXZjXeJysvRaZ+84meA0NQFoKjNSlzrMxu++fiaTJwGu/hnB
	qf7yw1ph+zKcIy0GYQe3b8Ij/sarKbpPNgL7llBnb2u1i0G2C+Ar8Mg1+Q09S4fr7ZCCu3uT6Xk
	dnm6X5QI2xDemX7xUn52SioIOxSLFkLlgLBA=
X-Received: by 2002:a05:620a:24d2:b0:7d2:271d:d395 with SMTP id af79cd13be357-7d3bc4b5acamr527507785a.37.1749820237463;
        Fri, 13 Jun 2025 06:10:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7prG3XcpQX6Swj4+2/RLuYYqGBZcoo3RwqH7z0osM9u+iPSEeNwNKJ7Z5Tg9Glvb5yCkC8Q==
X-Received: by 2002:a05:620a:24d2:b0:7d2:271d:d395 with SMTP id af79cd13be357-7d3bc4b5acamr527502985a.37.1749820236999;
        Fri, 13 Jun 2025 06:10:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b33069a9asm5648641fa.27.2025.06.13.06.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 06:10:35 -0700 (PDT)
Date: Fri, 13 Jun 2025 16:10:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
Message-ID: <ezlboeao2mqdbyxw6orzcqla3xthbo5ppuuhugwyxs5t4njvsd@qyy5r2ksmrj2>
References: <20250612-qcs615-mm-cpu-dt-v3-v3-0-721d5db70342@quicinc.com>
 <20250612-qcs615-mm-cpu-dt-v3-v3-2-721d5db70342@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250612-qcs615-mm-cpu-dt-v3-v3-2-721d5db70342@quicinc.com>
X-Proofpoint-ORIG-GUID: cFu6InWgwuzN_ysX-qO1P_JK80ELvLnd
X-Proofpoint-GUID: cFu6InWgwuzN_ysX-qO1P_JK80ELvLnd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDA5NiBTYWx0ZWRfX1QL+dMcFe4P0
 8GIw/wEDDmGCucW8Ae1NYYYLRWwFBipefxgrtsVjUnXh9UNTrQNdC6ZDWqZnvA7kB6ReSjWd5bo
 Li7IrzQrLqxqMpvuRyhN4OXqWP/dY34xuSTfUF3a9olpK5sLuyAzyE7DOeUbRLJk9JXJ+s2/xaN
 fZfL9FAw3zob6lSugswKnhK8T+azVGc5ZayHhVud08r06hMFJBoW5XaGIPAGsW36OM6ZI6eh1tC
 bxVB3oTgXfBSU4lZIsdxPw+zRGbD3HtryGZu9FPIF1vNYQkWjrEDBLtMdegNfIBXx1YmK+5BH7f
 PNcD8xX1EmMqmBJXzJoaqfN7zZ6237wMyiVHjKwH7HdKKhtEI8RuTDTCzP8rb7BF3V51ys0YlHu
 6LiW4XfrWYCtaQQj+hVNaKa7LdxkipPPuRJHzxNgKogGEbVIxlrO3j7DqFYfwWNrxK2nFpRa
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=684c234e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=A1pg4z-Cax2pQkPbWCoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_01,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=962 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506130096

On Thu, Jun 12, 2025 at 03:47:21PM +0530, Taniya Das wrote:
> Add cpufreq-hw node to support CPU frequency scaling.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> +
> +		cpufreq_hw: cpufreq@18323000 {
> +			compatible = "qcom,sc7180-cpufreq-hw", qcom,cpufreq-hw";

This wasn't build-tested (or was edited after being compile-tested).

> +			reg = <0 0x18323000 0 0x1400>, <0 0x18325800 0 0x1400>;
> +			reg-names = "freq-domain0", "freq-domain1";
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
> +			clock-names = "xo", "alternate";
> +
> +			#freq-domain-cells = <1>;
> +			#clock-cells = <1>;
> +		};
> +
>  	};
>  
>  	arch_timer: timer {
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

