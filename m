Return-Path: <devicetree+bounces-208008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D88B314FB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:18:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 130071C88702
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B1A2D77EF;
	Fri, 22 Aug 2025 10:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k8UIYOsm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B4C2D3759
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755857873; cv=none; b=I8gbgDB6BiFlU4uvCTBNpLtgaoI+R+3tCiQx1Jma0K6dRb1bD6CIXrw+EMo9+1i3ef2vQey1e3MxVgnmGXEjvLGzCD8Tf2P0/FNP1KnK04gt6fX/Gh6fSxDvIKDUAmjbg1sCsd4wrHmnj8UeXo6vgG6kNT0sNG4j8r0wFyfsLa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755857873; c=relaxed/simple;
	bh=dwy1mShF1PZxzzBuHTRn8TQEplDFuzWD+llts5KfLfw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fhYMn91NEI9jxw3gudTMMb6Qgch/vWEG20ajY91BrMDP1yxkt9Hg/dVFcmixx3zv0YmKpSBToqpDjvhDA7ghTD2HaRia2XCKtvHKtbDTUCPaA1L4LgMii/ZpUz3yKwm4rEwtQ/3CjCL2VVYt1PXRYjl1W65OCydSMHgxFNPu5LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k8UIYOsm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UZw0006760
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:17:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iBQ7WvE0H2xSgLFqIELm4rfB
	EkobKCDAjN2aokgsXOY=; b=k8UIYOsmVWWPINPoQjHFKJTHAGxOoDe3cNAYj9+b
	drfEsEEzIHMUY1Neahzhc+zSPKELpQ+0RopbuPjPrwMyQE1v3O2HpL2SgqxZ4jxy
	0+MmYQQ2Q1HXk44thJ+WfZrOk97RskqlJIk2MHgEtKxV2uQ9CSls4ijhduG/UFH4
	WA8KRvh4bqfFuOsJscNGIFckCh6t97OftvcYk00BmFgeD1pN68rxwfXojTNv+5MY
	ozHmekQGnPpgr7MFlJRz6dfj7MvdRvL8avySHJypxL5kNuhf3PBbIWdNbnp+N7bc
	4cFz4Oxxk8+/srrQAFdkcp30TeKf7V3sHLgZtm6x0rMS2A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5290u4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:17:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88dd1408so43632936d6.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:17:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755857870; x=1756462670;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iBQ7WvE0H2xSgLFqIELm4rfBEkobKCDAjN2aokgsXOY=;
        b=vFFZ0pR2q2/TAKaobccCv8wjNTfLAenaR4OxlBvjS64biGPaz/K5KQ8D+Sf0QUHzBT
         BPS+z8Weco/6I9FXx/aQd594rlgvhA+fk9LBZ94vw5SFKQd7R6J8jKOQqYRmq1hFOL+V
         c76Lk187YJOfdQQ43m3yLjPmfEBBBwg/UEWZZFRLA5mvzZ1DeS7CgNaItNhdjXUu/EZP
         JEGmnWAxajWF1vI/OgryCLSnFg0yZxgXzODk6IeeKQ05oocydqtRdyl6uKviyv5xPjJ8
         pT/1tpJEf1mo5sHosrcBPO6Le14TabtyknizqBfZalculM9fGzngjk7y9F/+IcN8oUKd
         EMEA==
X-Forwarded-Encrypted: i=1; AJvYcCV5Mys56K/8zCyDt4m7+I71liTiiA9FKnfqJen2vUHoVXMkS9UI/VGYOV38tTjEg/ze5y/3Vnvm6VHU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzb6JuM+2wcrpTgQ6HeDPQHXJUIVyV+PNTdP4BXhdz25U1Z80L
	UxbJJtLW7ebaBpLcW++AU4gf8LMKAKLDyDWDKBKTxVDkMWSLmY3L0wBf89phYnTIP4n9bmyO6LQ
	Pv3OUYPFYmfbdf989NhGDcmleQRBM5QjTjrkwpuZoeopDwd31uB5cQd69cnaIPF/i
X-Gm-Gg: ASbGncu+J51hVF5+wg6Ewye9moWaEhxkcSztgmisblEdeI+nEGl7oVUwWA1UGWVilnf
	gav1sxupEuRst3pltuFRA1Tqy4GY2k5t3iDUsHgVzs4NfFs4F9u7aAY0XL5Gpsk0Q0B9HRtr6uC
	n5RJaLgcVHA0Bn+lneC1wXNxu7VqqZEsmHEcOpbpiPKq2J2PbRMyUCfiUB4Phw7jwW9n5F5OFVW
	+XetrNqBAIwGPjnr4NjqyfedK2XZz/MqusCK64/8zCOob48B4ZsP4/ZA9bn92fp+sdtcbbON06j
	grFTKM+HpTyEZ06UFMMD5DHrCHJMI/pUqU2xEzSAYYtcuY+6pm5EGlpB7DqhAEXRn9QDMHeuLZG
	RUgO3CCzL/1buf6iDCLo0wgq0TkTMP0LsgGjWl2/3ZEh28OAzMcRM
X-Received: by 2002:a05:6214:3014:b0:70d:6df4:1b1d with SMTP id 6a1803df08f44-70d972371e4mr28644716d6.58.1755857869919;
        Fri, 22 Aug 2025 03:17:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH62oAsAMsiUv97NbT9YVzJguJ02slvA/bRLNpNdl+mlKb3ebFjncfo2wZhMvsCIXsDoIBaUw==
X-Received: by 2002:a05:6214:3014:b0:70d:6df4:1b1d with SMTP id 6a1803df08f44-70d972371e4mr28644476d6.58.1755857869279;
        Fri, 22 Aug 2025 03:17:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e0281cf77sm1536535e87.135.2025.08.22.03.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:17:48 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:17:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 04/16] arm64: dts: qcom: sm8550-hdk: Set up 4-lane DP
Message-ID: <3dt5hkmi7trwyynutgkn5r3e3zips4vouhdp2fsxu6fiw44sef@kgxoyyih4tsk>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
 <20250822-topic-x1e80100-4lanes-v2-4-4b21372b1901@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-4-4b21372b1901@linaro.org>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a843cf cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=YJrRJlPzAM5hdBvFenMA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: q6tP5NaynllUJytF4ciz-qz5zn5kC4eF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXwhRMwMoxcV29
 Gfhmcwtaw+r+UrUYNI6KQbJN5V+q224dvfqZSR0cWktIsPrKZpu2y5AIUqPxiSMgJiG7fcEEL8g
 DvwkXjtg7nNYKDHVlSBZf4jWPFU/cpj0qXD1ZpivntbM4XSj2p5jU8Li1l0RjYlpkCk4lEjWJbO
 Q73wiEO/ZIRGl438BA+dz/ZzEa2gzOHXBtgTYlIJjRlgogBQfQxvo0XzbN1wIjqNd/kPHzcUurg
 IeTLf2ylZSaiLH7bsV01X4eoOeZer5Gds10Bepmjc1UQ/VMbg+91ABPLyjaAjmLYii4V4pCv4aN
 /ojXtuFP4vUQvgcmYU2BUfyFvnaDWyq281g5+htt33QUeUPvkn4UkPtSvxXEYK8JRNZ5YGOZo/4
 DQhOt9kJLN34JrgPKwTuAX0Po8hBwA==
X-Proofpoint-ORIG-GUID: q6tP5NaynllUJytF4ciz-qz5zn5kC4eF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 11:39:16AM +0200, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHYs to the
> controllers now the mode-switch events can reach the QMP Combo PHYs.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 9dfb248f9ab52b354453cf42c09d93bbee99214f..6c2c9514a7396a8b75ebe24585b47571c74ff568 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -1003,7 +1003,7 @@ &mdss_dp0 {
>  };
>  
>  &mdss_dp0_out {
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;

On most of these platforms the data lanes between DP and combo PHY are
hardwired. I'd suggest moving the data-lanes to the SoC dtsi (at least
for USB-C-wrapped DP controllers).

>  };
>  
>  &pcie0 {
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

