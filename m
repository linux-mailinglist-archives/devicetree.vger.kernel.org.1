Return-Path: <devicetree+bounces-173244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D882AA7EAD
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 07:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEA924648F4
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 05:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094A51A238E;
	Sat,  3 May 2025 05:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zcr9CJyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E13D1922DC
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 05:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746251473; cv=none; b=UemzOkqneZ7XTcS+8U3wHf/ybBckc+Mp1fNiVPgWvux72o005ye3KsQmRnGCnLSP776fQCQWZg/e3VQrelSuB920ZL1zIkh9PMaAQMHDIlNJuSkFSY5grhAf8ht99jhzM87xQz7WMNJrDDzukX7ztpoCQooFKprIcKAen5e/53I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746251473; c=relaxed/simple;
	bh=AxK2Er7e4qbH+VJ2vhJbE6S+jLI7sAd0bDAU0Dmr3U4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IoUB0v2LIdYyz0wiV4/mLM7dE3pkF+74u8KJjmV7ePx4QNo0T7Lg8qLVipYwqPeJaQNFCvsi92N4nPx5un7zCjm4sZHrytwCJLNVvfSyBbWcanfhMXlETwbjW9a1vzzbQidBWBAu5/JVVFI+/lUyyBhqnxV8+DKebKidxC8Xupc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zcr9CJyD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5435OqdC017860
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 05:51:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=z7RuyIdhrRBZm4S/CdQ9tNde
	Aw8FFfZxEFL41QTfBVQ=; b=Zcr9CJyDrovL8SU+zmNyOFN2y0XUSicLIlcRrmww
	0swuT9Shk998kPSUfnKsmAe+HaeJwIqaiSClW/rbfyLIb7mrX5ewaac10wQX1rnF
	OJmGmCC74sh2QahqMZdBzJ1WCFHLTyDzY6qDUyQE1Fji6o4dgBssr6/MGdp9xBxz
	2ZA0G/F/867wqKbebyknD18j6alG2aeuCwzERk2SPvFa7A7+qqqc6q5tcyYfkV1j
	mlxn9wuWHV1dX8ZYuDloNl7LqWKLMLsvJbdIEgFA3YP/vK+kaNi9/xmrRTXt1WQo
	mF+gttf71v7SGuWaZCxH8jlDGNAKVUD9Pm2rk1V3ZlBTGQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dcakg2gx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 05:51:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c7c30d8986so20438085a.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:51:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746251469; x=1746856269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z7RuyIdhrRBZm4S/CdQ9tNdeAw8FFfZxEFL41QTfBVQ=;
        b=iWEh2ljusWI0tsNB2AutCIL04Nho13RWV1w0JX5hd/UmL6AHEtVL/80r/JlUNNmJuz
         HTFRR/3eurxnFrMbQFwcnp+T9Kz/PoycojlvMJ8phxl30soY59NJ68pWFdBW4vmMicG7
         g6hlFZ9e4CZv+tIAvmef1XJ3Qkb3H27fN6XPauPyucNhco01GCSX2NwdxWCoAHj/8dXg
         9neAmCHax6wgqIOz8es+M9DzTUqhv7zd6OXTNyn9+ZeD5+Z1xeikmzi/pxec73+NEOPP
         zqnWgva7jHdcK/SExTDBrOPYgkfzsP1OMz5wmuccAzvfUt3oLH0XN7fDrGlrv9gfVJTO
         SvoA==
X-Forwarded-Encrypted: i=1; AJvYcCUPenlraGr0uf7/xEcOopWNzc0p4WqfDultKQvxPKoKZS/fKrUeMZUJvdJw+qoR4dy20TVxs5AYrzKg@vger.kernel.org
X-Gm-Message-State: AOJu0YypHt6uxqhK0h4Eh1BWCM49kDPt2DlLE5Nf1rb4etUJiKU5Tr0y
	g96QgnMqFpzXyt6OepD18zBkTtCLm55AHDDkCzUL9JUSPEgKp5HTQiZKPzmS/te4uc9lg3YL4bw
	4PGDyD1t1y4Py4n5vjIH0budMb47PVr4S1IED4nsn+5ECREvQr7dJ8tHntzgYr+XqtYX2hFc=
X-Gm-Gg: ASbGncvZ3ld8Mfg817lkg6YTAzFT378qQwDi7V3rd//mUoHPJY1CsPmtdO14DfHm2L+
	bQuYubEBmsYubWVpshUEDKbbH+GP6UKJic9FfJIX8enP8qVSqDr4v455Vb/wr3sVov3wsxYWHvp
	PbW7fuz4YGxWD/fLESxg8dTk1lb06e5hyl6oB8rIXmDlJWz9iO3lTNvVcyBQe1E0CeLMmLqCOdL
	jQbGn2NXUjQM5gr06QuQlPgJP9sTcaldwUD77/hnrtcMs96jCpa/f4fwFcIBVpbf9l0stRkX/lK
	gA4+soaqLbfBWGVNvGT5VaobfqRQQd95ya3VnyHFeAHUux/l0hTia4xhLOF9N5uhR0TmbIVBFjo
	=
X-Received: by 2002:a05:620a:8013:b0:7c5:53ab:a722 with SMTP id af79cd13be357-7cae3a5a0dfmr5909085a.5.1746251469341;
        Fri, 02 May 2025 22:51:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHU1mh7yhVDqrwrGX92lx5O39gpt1bwUkfkp+UAf/dF55RZM9Isaqsry40YdK6JtOnY5dhaeA==
X-Received: by 2002:a05:620a:8013:b0:7c5:53ab:a722 with SMTP id af79cd13be357-7cae3a5a0dfmr5906785a.5.1746251468983;
        Fri, 02 May 2025 22:51:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f680dsm650283e87.220.2025.05.02.22.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 22:51:08 -0700 (PDT)
Date: Sat, 3 May 2025 08:51:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC/WIP 1/4] arm64: dts: qcom: sm8750: Add display (MDSS)
 with Display CC
Message-ID: <dc64ygn6pt5bvdgizc2qk2qnxn3on5nv7hes3hhc6qqmiumdfd@nxpfis6disof>
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
 <81205948-ae43-44ee-aa07-e490ea3bba23@oss.qualcomm.com>
 <97ae84c6-0807-4b19-a474-ba76cc049da9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97ae84c6-0807-4b19-a474-ba76cc049da9@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDA0NiBTYWx0ZWRfX8OLU8C27Vv2h
 F7XL5FJtGts8yvhp6rkyIO2ROG8o69SV0b3+STD0aimOEjZiWXZxdrIAkEN9eJRjuf7BdN/faQ3
 julc3bSNLDMnuAsLEdYSwX/s2cVlbfKLYH3HFMry8ZRif46fR1H11bbF0TtlXc2ioTmnYv7T6/o
 pIEp2X1D8JvpqLd3Zp0lLMBcJKmtxiNYIQYfRZyIjrGxqqb5a2m0nx9Jm1IEg45GwpQUl1poqkv
 QoGDw61fATV/Z2esLBoNqWQFWGGOJAoatrAmeNX6QPA0yv82I89tNDxMAHMpWwhZn6fbL9cGwxe
 F+9T4cFAfSul8c1F7gnhftFPimDjxEn+klmHRe0ObkG0KeTrQe/uwHioLV+0izILQ/qYGWt841o
 eElruw1zzXej3SX+/yafR6zVszogKiMiekM2+LnYpXSdJ9RVk2kyuxiudvdeK9SbBw67c0fB
X-Proofpoint-ORIG-GUID: 5rcfrw5VLq9Z9EPeHK5kwsq3paDtcyKA
X-Authority-Analysis: v=2.4 cv=JtvxrN4C c=1 sm=1 tr=0 ts=6815aecf cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=h8DH9cjr6Ktg_wdBaOkA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5rcfrw5VLq9Z9EPeHK5kwsq3paDtcyKA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_03,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505030046

On Tue, Apr 29, 2025 at 04:07:24PM -0700, Abhinav Kumar wrote:
> 
> 
> On 4/28/2025 2:31 PM, Konrad Dybcio wrote:
> > On 4/24/25 3:04 PM, Krzysztof Kozlowski wrote:
> > > Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
> > > DisplayPort and Display Clock Controller.
> > > 
> > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > 
> > > ---
> > 
> > [...]
> > 
> > > +				mdp_opp_table: opp-table {
> > > +					compatible = "operating-points-v2";
> > > +
> > 
> > The computer tells me there's also a 156 MHz rate @ SVS_D1
> > 
> > Maybe Abhinav could chime in whether we should add it or not
> > 
> 
> Yes I also see a 156Mhz for LOW_SVS_D1 but we had a similar entry even for
> sm8650 and did not publish it in the dt.
> 
> It was present till sm8450.dtsi but dropped in sm8550/sm8650 even though
> LOW_SVS_D1 is present even on those.
> 
> I think the reason could be that the displays being used on the reference
> boards will need a pixel clock of atleast >= low_svs and the MDP clock
> usually depends on the value of the DSI pixel clock (which has a fixed
> relationship to the byte clock) to maintain the data rate. So as a result
> perhaps even if we add it, for most displays this level will be unused.
> 
> If we end up using displays which are so small that the pixel clock
> requirement will be even lower than low_svs, we can add those.
> 
> OR as an alternative, we can leave this patch as it is and add the
> low_svs_d1 for all chipsets which support it together in another series that
> way it will have the full context of why we are adding it otherwise it will
> look odd again of why sm8550/sm8650 was left out but added in sm8750.

I think it's better to describe hardware accurately, even if the
particular entry ends up being unused. I'd vote for this option.

> > [...]
> > 
> > > +				mdss_dsi_opp_table: opp-table {
> > > +					compatible = "operating-points-v2";
> > > +
> > 
> > Similarly there's a 140.63 MHz rate at SVS_D1, but it seems odd
> > with the decimals
> 
> For this one, yes its true that LOW_SVS_D1 is 140.63Mhz for sm8750 but this
> voltage corner was somehow never used for DSI byte clock again I am thinking
> this is because for the display resolutions we use, we will always be >=
> low_svs so the low_svs_d1 will never hit even if we add it.

Please add all voltage/frequency corners. Think about low-res DP or
low-res, low-rate WB.

-- 
With best wishes
Dmitry

