Return-Path: <devicetree+bounces-178475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D9FABBF19
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:27:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 428E83B1355
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B295F27A112;
	Mon, 19 May 2025 13:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I7VCfql2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D452798FA
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 13:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747661210; cv=none; b=S3EaasthhC1OWDicPFGNnzV72iNGZgNDv0p+4uG70/jM0WzQPGm2JO2zaB3mQN/B++sy9i++Ea3DIWaKifByyXkhVLW9DJgqRwmxqbu94AGa43rGs3LnnKZj0hVNHvbnX+AnN3wSBKF4DyYLm2pOLKccMtuwML9+zGi+heF+zD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747661210; c=relaxed/simple;
	bh=dUKwwAuAnYppk79gB4Ni92ph+3QHQ8Ax2CcJHfIxNQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L6Md9UoL2lZzqVjXnqEnkLbd6vBI1GhX61UhRu/05n5qNi1yUuoqGvsC4ifCHBfzFDFhTxs6u+Iot6SpUTDGStOFprng0IQ6PWcifwWeB6w4b6NMwyZt2uqoAUg7NeWfm9PS5pBRJbONOMH/eEGUW5/NTSMAdpP8zFsf1mg48fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I7VCfql2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9amRR019805
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 13:26:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oGkk5uPJENlcrR8ExGnK93Az
	4FZA48X1UVpf5g9eL1k=; b=I7VCfql2kc7qjAhj9U4Ib2pC2SRvhWpc50xCFtgB
	FZEbxxfJw7SgxZZY3MV/GJ6hS0Qfq8uC388znSM6gF+ciCv++FeiWFZP6H+axZbP
	sHQCInrP5gs8hJBIK0M7tgN4GgofOSI8Q5fXWFIgA6P4cbNCRkRTPLGXH3cJbjrA
	8X47iE7CVVWug/XC7DOs8I7+cJfDrZH53KkwJHstRaMHM2r0O1Hefo2N9ou+OmPG
	zE69BHQp7mLZbOP9pcQxWsQos+tybqsG0Neot7lgA09Fs2Wln2+yi1jpxAtYB5sS
	vggNG1t/KHaPtgc8vQZcAjXL5qahu+8DEa7CmRzoU6UzIQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjkymjtt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 13:26:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8c9552514so30263276d6.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 06:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747661207; x=1748266007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oGkk5uPJENlcrR8ExGnK93Az4FZA48X1UVpf5g9eL1k=;
        b=i7Aa31Xu0BnhZt1paosbqwlU1w469t2wk9BQ/ip9TcaZyqORfimprrHrnDCqOQoAwJ
         O83WdeIUvF3YYQ0e0QiEdJzHsev3kXwTl7RyZkrxVJPMTrWmlxVSblHYfyOxjtjRhHln
         wZZBMtf/yyj7C4d/e0FQFCDE6d/CDK1vOlW65jtniKgJnrswQFTBDLAvwyHAXLQ/SBLj
         ZMjtOrO1KcF9FXI8SDt7ww41tpCYXWdA8gld/veLty+DkhPpN2jxFL4svAhMzl+SGLsC
         mN7UgS7tHBS//I2/n05PA2AYw0d4A8pwvsC8Q9uHMtFdumMRsl+IZ2kNFj+mTtxo0vzf
         28uQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkUqSJDOfoMkvCz49lE9Krre53Z2wRWH4sT35xggeUmgeHCYKsqg2wyPGoqHB+g86OFBhW5LhpQBF2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg2z0NJuPw0t3tcJ7OvtbTKjw3Y/AWLI/c5Df6GWSkojOHJWmH
	LF7pC6iIClueJnmuorXxqxvbSBk5RgKZf+fsoNOlyLdvGYnEoaBKqyHOvWUAq+Bwy+m9ExtjAd2
	FKaB0IIF9DPnwVj/hbtn/JBWr7ojvayBwLkegi8CdJ0u6BgN7oZeOZb3KFZDMyTjw
X-Gm-Gg: ASbGncu+AuxFnEl4MacnKt+HAvC6kplQkiwU0SPgAC/NJXssfHjOZqX5hne+OsGbQQ9
	igIjIMcp//dPMVamdJSOHTMiFvrTwdkNb3B6p4IQKLXCEco//8WQ05O0JsEzy7gM6tYq+O+akun
	vF6K+wIuQn/Nry+6rbYKJZA9Mq23CEZoupj8soVx7v4e2gMvjQVp8TyzJxSeyVia6sJvLn9a49k
	/OFoSz0x9JR8SDlJ98Y8nvEY0J6DXPx5vhMhPnCsc7/1iEhsA9dl5hexqTdTe2L0gdWQkGPHNJJ
	hdmLnU9erwqzKHAkIcBNBEtbZOqSZgUuMVak6Qt14sAD9AsipmhYsLJJJYB/OQyVfXVjiG2Zrek
	=
X-Received: by 2002:ad4:4ee6:0:b0:6f8:c53f:48e with SMTP id 6a1803df08f44-6f8c53f0bc2mr146769376d6.0.1747661206751;
        Mon, 19 May 2025 06:26:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0aOVnc3nCtR9lGsacqR42oc4D8WjdNAyfE+YftMATKn0uQn4ucAG7wCIoSsvdjD5bfEC09w==
X-Received: by 2002:ad4:4ee6:0:b0:6f8:c53f:48e with SMTP id 6a1803df08f44-6f8c53f0bc2mr146769056d6.0.1747661206344;
        Mon, 19 May 2025 06:26:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084dd21esm18791861fa.63.2025.05.19.06.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 06:26:45 -0700 (PDT)
Date: Mon, 19 May 2025 16:26:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: Ayushi Makhija <amakhija@qti.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 1/2] arm64: dts: qcom: sa8775p: add Display Serial
 Interface device nodes
Message-ID: <4cjz3wu3osafi7sffluslxea3e6vkdw45usg3djpclw5lv4fvg@ofoqbmwjdmjh>
References: <20250513102611.1456868-1-amakhija@qti.qualcomm.com>
 <20250513102611.1456868-2-amakhija@qti.qualcomm.com>
 <tjp2pfescczqikbu2tzylx4ecb3n6trixvhbdwbpz6y4jc52wk@fmkdxrelun3i>
 <38a94e78-9793-455b-a5ab-6283d397b759@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <38a94e78-9793-455b-a5ab-6283d397b759@quicinc.com>
X-Proofpoint-GUID: 1ESsuaDI4BOzErPmijfMQh5jHaIR6gzc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEyNSBTYWx0ZWRfX4rJOxzH2n6Yi
 CeU5Vu2ZFgh3+AinnRW1dTr7KsaChc/hRFne0YUWIfSN9q351UO81TGwif9+YUfgVK0AdCaSs+3
 Zp8p129k1vFaTqFbLhed6Bzzu0ylJhnmh/MyyzVie/9zq3Ngj3fDFUkBViuYLuqbEiwJGTbF6wa
 1qvftZATl2y8DkV8umL10Jj5qdrEFRXf1x8WT/6biP83QldzkWWbMLEVGfxEslYh/zZS7FFQjQ8
 mtb0twcbbtyjM+tNAi5UEr1U79r25BAX1c5Vb24SnUT/1K1LmM/rUytf1tTMP8qJzAk6CDn+Ovt
 3RumJH/20eR+GMUB2r35dgrpa2+L+y/UpILVny5yaLjWxdRgSVvNk5P3+svBe3pqKcTWTOQ1bnG
 Y8JxelTAnaBIkxvKA+nQrJfsVQ+EAzYSnIUU0NZ/s+pIEuW3hM9B2AexYfHRViJdodqjudJ9
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=682b3198 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=vtArrIq1twOU848iWwIA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 1ESsuaDI4BOzErPmijfMQh5jHaIR6gzc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190125

On Mon, May 19, 2025 at 04:30:55PM +0530, Ayushi Makhija wrote:
> On 5/19/2025 6:31 AM, Dmitry Baryshkov wrote:
> > On Tue, May 13, 2025 at 03:56:10PM +0530, Ayushi Makhija wrote:
> >> From: Ayushi Makhija <quic_amakhija@quicinc.com>
> >>
> >> Add device tree nodes for the DSI0 and DSI1 controllers
> >> with their corresponding PHYs found on Qualcomm SA8775P SoC.
> >>
> >> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> >> Reviewed-by: Dmitry Baryshkov <lumag@kernel.org>
> >> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 186 +++++++++++++++++++++++++-
> >>  1 file changed, 185 insertions(+), 1 deletion(-)

> >> +
> >> +				dsi0_opp_table: opp-table {
> > 
> > mdss_dsi_opp_table: opp-table {}
> > 
> >> +					compatible = "operating-points-v2";
> >> +
> >> +					opp-358000000 {
> > 
> > Is there only one entry? Usually there are several.
> > 
> 
> Hi Dmitry,
> 
> Thanks, for the review.
> 
> In the IP catalog Clock documentation of SA8775P, the same DSI clock frequency (358Mhz)
> is mentioned for all the voltage corners (svs_l1, nom, turbo and turbo_l1).
> That's why I kept the single entry opp-358000000 for 358Mhz and selected lowest voltage corner svs_l1.
>  
> I will address rest of the comments in next version of series.

Ack, thanks for the confirmation.

-- 
With best wishes
Dmitry

