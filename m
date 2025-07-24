Return-Path: <devicetree+bounces-199473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6120DB10D8F
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 16:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9F91170761
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3992E0B5B;
	Thu, 24 Jul 2025 14:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ILfxjR15"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3434E2DCF4D
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753367023; cv=none; b=jlOFto6NTPplvh3JXElbtknpuEucxb1gZ7BzHXDRAN3Mhs9Bwmbinx2Fu2fdltRT2LldVfj4rRNWsip1HW/B+sNMMUBxfkjQjCN9PtivB5ElYLoFmMexZMubHGlJRgbNhxxTpn5fYfx4cHG51gSxbpo7ItiDVGsA9dsAvgxocRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753367023; c=relaxed/simple;
	bh=WvyN6qjNgv1yPDJutX/kmce+hYMmWcbroxxMeW2zB98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mazyvgyHvlcyr3WjcEW1ORux6nqsm8vXPNzIJLPX8UE9Jbxwsqxpo1wEUgte2qrcAQXtPgiqy/NH06pNIsnIyc09UvwxL2pyN1jrbWZ8iTq6C3uZBMpbF1gBX4ZXKOqVMSchtlrZGZ8W5HLXfdinxd6IHojhTvI1mhYLjbke8/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ILfxjR15; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O6dAa3025292
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:23:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EFOidjaJx90ia2Zk8m3/+Y4Z
	rTzQKZq9KqbiuEHtDDI=; b=ILfxjR15jwCUi3M1R+fDS5ml1CNV83noBUt0MZs5
	byh6gmEMOeSC8koxy+Byaev3OxYkJHmvxHaM1o2oEAp4SgxJW3susPClH6bPs/I5
	63KPEE9thB/uFCitK0IJ0e8Bv7yxwgtsNiYDnlaYRFYTI/UHuG/WtbfuP7UD3YEX
	CdvA2Qzn3ozZ0xZW3DWNDM+NLp8rdAVwYhWqTvOf8B9Y/KnsUy3uzbHzNjijDZDr
	1iyq41DeRXfaraNaAkJOGWJqIVVeINHRJsOVnr4MBNzcK/dc0o1yvum2RRtIIBn+
	n/JntZnMc0rM+73i6qVLMwhZNLgFVSn9bn7kAmNE5bgI6Q==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483frk1b8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:23:40 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-875af9a84d8so78257241.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 07:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753367019; x=1753971819;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFOidjaJx90ia2Zk8m3/+Y4ZrTzQKZq9KqbiuEHtDDI=;
        b=fze93H5X+j5FyLLF8UZbj539DK7QYTVikQi65P94i0f75iSfGjZWobW+Esp7JNKBPY
         wQwXaBbxepTBa1fLQS6LL9gCc5ukH7HW0o76/ENnEDgUl74TiecBChOi85103Y+wphTn
         naAs9PPJ2zdVBS1mK38T0A7qBfep48mkJzPajHfZu3OwTTQK3koqT2Gr7hRdx9b3mXDN
         C1U3LnrZiU7OUI8yFprWybrnzNitiH8Oirj1yMhDqja1LGtC67Mtlwr4PW7iJ6b6xC5E
         nKQYnYCCBpISoay+M5wIuCs6GZcFDU8RAY/WxFlP2SzT6IybOCYQyEMb55ZbUVu6iuhl
         k+6w==
X-Forwarded-Encrypted: i=1; AJvYcCXcoS4V8cEDGwYn1eHgP888VJXNNhXxpBN9AFeiGha9egn4KLQlqmVsm7DUBtJG+cOfQV22/A8s6Xxx@vger.kernel.org
X-Gm-Message-State: AOJu0YwBHjno+f/nyHA2WSBq9cHCDwI04ZAt9RpKABnRsq4qgX+tFnKp
	/RAxH+s3TNLUswbe2CWIbxG4VG9uRP1DyMUuOkqgfC5SZ3SAVTvZ/g99eQyz9u34nbjWSPKrk6z
	PRfpaZLgCaBIff05w6ivedq9koc0TWBdQor5eWAbfZuZoIhwYq1l5LYfg+tyXbBRi
X-Gm-Gg: ASbGncuCyzoxmn1v8vZjuKsxzpOz3o6y8FlaUFIhPdvlRn165M8tPVTQ+s3PCinYbpO
	YmjyRe4mBcqVXUKVRCbTP2Re+2KTpgzDhGgsrxU92SJYTncZFDYZwR255ww1jynd1GJgJYyM8im
	OHjQc3K1dcsbNrFKakVz8p4w8yDSBYkhi3KNHPE/GBVyXpd5ybDNjea9zdkfdiRKXOkds6O0aMt
	I/2SU5HD2Jvcn/GIxBeUeoVe5dtzKoy2d1fnXrPIQHPZglaxC4vg9KCkaK1QYJa4DLWsJCwE+aI
	QUed/FYr6s/z3HqoBwGz3UUfQsEA1DaRDQOkH+lMZdIIrIrdp/GZjdlZ3wQCwf91LmmAE+zAxeR
	5Ep6gHIPohG8P2HG0UHEwFUrELJ2LTM//EXGgjPKc03AKDmVXbIlE
X-Received: by 2002:a05:6102:50a0:b0:4ec:285:72e1 with SMTP id ada2fe7eead31-4fa14f8c61cmr3317695137.6.1753367019195;
        Thu, 24 Jul 2025 07:23:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrZKK7zJvgusO6fy75bTCT4/4c02uD5wEiU3AAJ6v0c53WXnZcDPmknMIWu2XnG0USllhMnA==
X-Received: by 2002:a05:6102:50a0:b0:4ec:285:72e1 with SMTP id ada2fe7eead31-4fa14f8c61cmr3317642137.6.1753367018745;
        Thu, 24 Jul 2025 07:23:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53b35cbfsm383014e87.70.2025.07.24.07.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 07:23:38 -0700 (PDT)
Date: Thu, 24 Jul 2025 17:23:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: srinivas.kandagatla@oss.qualcomm.com
Cc: andersson@kernel.org, sboyd@kernel.org, broonie@kernel.org,
        mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srini@kernel.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 2/2] clk: qcom: lpass-gfm-sm8250: remove unused gfm
 driver
Message-ID: <updct7763epzqvs5xgs37xsokb534vhefvkmt3rtjqvaceu2vw@jqsd4s3nbuyk>
References: <20250724134229.103001-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250724134229.103001-3-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250724134229.103001-3-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwOSBTYWx0ZWRfX68XsMf6M7fwI
 M2NdIuWkyePCeifKH60Q4U1TqKi3uqVjZtGdLl7Z3AsuODpoJRav0Ne22arJNrzpQj9qjhFepvq
 rgC1XxyQu06fqMm3cRmMSHD62cdmWIQT7z9Lv1607Dsh7lL8kMrod2kh1/7gUyeQhAtWgAfSbMU
 kGr3hfrR8d+3aTCEsXhBXw2Y96X8ELB+f6TdAwtJK8tHuT3uJhwb/zjW63HNK2Ku6pavdDEgQPr
 DglUF47ghalUNcfNjNOThEgL/CQKcOgOsFWA8+5GReB9xH17NHOkmuq4tS4dy/0PxCcP/T9aAdy
 S8FvCibeupRUVl6RW6CJvHKXsbj9Wk7ii2ZaoONN3z6x93VDeNuIm1ioBOKIt4nYQcAUhmUCU8B
 0zh7JBYrv44wR4/QKI92HK5VeKLxS1Y+t1RvwBhB6SXYGuf4lQj53kLCBXcZCtXopQ43u013
X-Proofpoint-GUID: 2aJ7IQv_VMJjxh-K3usfBDzE76KvR8VI
X-Authority-Analysis: v=2.4 cv=WbsMa1hX c=1 sm=1 tr=0 ts=688241ec cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=U1RUb5vHvPbtf-jDBY0A:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 2aJ7IQv_VMJjxh-K3usfBDzE76KvR8VI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=822 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240109

On Thu, Jul 24, 2025 at 02:42:29PM +0100, srinivas.kandagatla@oss.qualcomm.com wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

I think this should still be @linaro.org, especially looking at your SoB
chain.

> 
> GFM mux driver for sm8250 is totally dead and unused, there is no point
> in keeping this driver without any users. This patch removes the driver
> and the dt-bindings and headers associated with this driver.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/clock/qcom,aoncc-sm8250.yaml     |  61 ----
>  .../bindings/clock/qcom,audiocc-sm8250.yaml   |  61 ----
>  drivers/clk/qcom/Kconfig                      |   7 -
>  drivers/clk/qcom/Makefile                     |   1 -
>  drivers/clk/qcom/lpass-gfm-sm8250.c           | 318 ------------------
>  .../clock/qcom,sm8250-lpass-aoncc.h           |  11 -
>  .../clock/qcom,sm8250-lpass-audiocc.h         |  13 -
>  7 files changed, 472 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/qcom,aoncc-sm8250.yaml
>  delete mode 100644 Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
>  delete mode 100644 drivers/clk/qcom/lpass-gfm-sm8250.c
>  delete mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-aoncc.h
>  delete mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h
> 

-- 
With best wishes
Dmitry

