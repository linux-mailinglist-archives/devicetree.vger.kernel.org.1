Return-Path: <devicetree+bounces-173243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E872AA7EA7
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 07:46:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E4C74A60E6
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 05:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CDB6131E49;
	Sat,  3 May 2025 05:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BzhZkqfs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E670E7404E
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 05:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746251198; cv=none; b=SmCocjhcD4mZ73M1KXa0b7Ok55DSIquhZozG+VcuR5wIwnvLSNKSKGrYZQ/GwjF98SefWWsQXapg1pohJrqJ2xZ3ERUyRnylT1AJfuz0xjr3xumUSfUjHpxDKmj7PKA1vew3s8Y5m6n+o2HNeeuaGrUV9JDD9+3GpeR3gZzClqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746251198; c=relaxed/simple;
	bh=FZkziwf+DNshxofsJT6BEaExHEp9WU3/A33fWGZvXpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IQvYlF5yu9mn+S53fA5Ku8XibZdBARStGH/Yelp868wwzZnah4yupvPymWTsAWhGO7dy7taEbTUNJ8qX1YEZiys5npTSlBr62roZ/cZ3CdoDxTE8YULMJQ8gnGcs0gx9kAKxZxUXyn9j1hwEaI40LnXjPoFaEHoLecuh1+szydk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BzhZkqfs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5435e54h002850
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 05:46:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MF/so5t7HZgWT3eWuH3tumGi
	2Fh4xLxU/AxIoXWE++Y=; b=BzhZkqfsgSeMovLa1hzrnq/tT0WtuOTPshrJJ7No
	MkFhJQSbbVtVLBVeC0qBdKlFiAtj1A9sNaQ5sn7QLqHcek8G2EY32NpfPSrjYD1a
	/Anw+zDNVnBTlr1zYO/tG18SRW7uOFRoY+jV7NYmOFGdHKxCAZk/nNcZd2CfoFzP
	GHseGOdB1aJ6kE8LJLqPnFReeMzRonobKimQL7xVlO8uRYUMaSZVfJoj07l+Kgyn
	ITF6f5JhQAuKjDaJXS1YoI12XHfskVO59q/gx3NFz7svleoeJvmo4JXItdFTk+BB
	H98UiSmvWxwpJ+6tgTq7GkjdMzrS1e5g80gu+InXhz+AqQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46daqxg5y7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 05:46:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4768a1420b6so53233181cf.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:46:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746251195; x=1746855995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MF/so5t7HZgWT3eWuH3tumGi2Fh4xLxU/AxIoXWE++Y=;
        b=a/vAQ9DpRNoyyQUadsnhx39QiwmZtXjeD3KFayW266brMgBUfEHf2bmphzYStxSBAd
         ZWJtwTJznCB/S5GdWBXM8NPA6zY1L0/j/rwuAVEPqlwF1V0TS1W+vdFqIyWpLel7TwuM
         3P4rueWsCn8oT0JwX5Pae14TVJI+8KLpTEn8NVa9hBtJCpKD+cp3Dkdr44YPqZE6+WbJ
         IISnQQUsOE4N9WTmfKy2RZvtrkp7cBH6lZEfW0NUcxfTnSYraD2Tbf+fgwAjfUFtZYgN
         Lqw0NibJu2LgN8peDcXmmAngOP/T9nkXEzc4PXoy+bEnTM8As8qumKntECHX03SU/jgF
         NgZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzja4meBpYr9Us/fxumYsRmA8QmIxGlleg9MwImS7KnojUjMmKw50yp6aOgOX58GHSdKrP815o7upZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7+4nCB97A1nu4eX/pzUZVBOUqFQH5ID2RYsgbPZZPTwFw9xY4
	3Qo97ii0rOK8W5YBIkLE302WkevgH7WfHAxJRM2/Mu2ex3qcfoW3GdAUPEzS6RCqLJxJ+YJVF2I
	3e0zcuWsPGxKbTKATdpK35Tnl4287P2pEqTG8uxwx3rtGoqWa5d8JS6rfcx/M
X-Gm-Gg: ASbGncvv9/FqVp8w1CZPauf3gaJqvvi1TH9J6OHPRsTqcvoP3Ow+NegLeQB6jS7/QiA
	qUdMpjgtXW7Y7qHXejXR/goc1nONOaRKTnlBuoDc/Gd76PK7SfA6k607GcjjCSVPvonmLsojD2c
	izrKbmWOkPyEkTPc6Se3T/TYa5UDggzVnWl8zr89JP6JV1RZ/+Ywz/5DFernhjcK8PXC8bEHfe/
	ijSbGKk1Hagzgd0wIfwuEUakt92vjt6Ulbv4TmT9tt3BatS/8HmCzmGFPfqyvHto+CQeeDTWlrm
	NeEwM0BhMfEO7iXL1uYEi/aFU5QRg3S4+XAw3tD+RW7KoGZStvoS1W7jKr0YukaWZKnPt+/+TkE
	=
X-Received: by 2002:a05:622a:4a09:b0:476:8225:dac9 with SMTP id d75a77b69052e-48d5da48b21mr26804911cf.45.1746251194790;
        Fri, 02 May 2025 22:46:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMgvUFBcAgYiEH2v/8tiGWbtw2LOg1LR2AfqMw15DOu+nL+S40ZYWy5mZq0KGU7+YBjPKWMA==
X-Received: by 2002:a05:622a:4a09:b0:476:8225:dac9 with SMTP id d75a77b69052e-48d5da48b21mr26804721cf.45.1746251194472;
        Fri, 02 May 2025 22:46:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202a89f450sm6249821fa.80.2025.05.02.22.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 22:46:33 -0700 (PDT)
Date: Sat, 3 May 2025 08:46:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <quic_kdybcio@quicinc.com>
Subject: Re: [PATCH 0/7] arm64: dts: qcom: x1e80100-*: Drop useless DP3
 compatible override
Message-ID: <qgojusp6c5mglve35sgncwpuft2flnvfysstbyieysktdlxwp3@lp73etm4zzai>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
 <wsdhqocld54ygjrnn6etydorcg6j6uko4ner2dawoomflvu3bp@tq5jbqcahip4>
 <aBHvwUAISo2JhYSz@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aBHvwUAISo2JhYSz@linaro.org>
X-Proofpoint-GUID: DfYSXoGWT-0FgApKomsiy6wtab9Cq6JA
X-Proofpoint-ORIG-GUID: DfYSXoGWT-0FgApKomsiy6wtab9Cq6JA
X-Authority-Analysis: v=2.4 cv=baZrUPPB c=1 sm=1 tr=0 ts=6815adbb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=ZJu6mct0EmN0ZqeJLYoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDA0NiBTYWx0ZWRfX6dINALOTFSqZ
 6aiPp2xTGgWPyLSKvy1ERXooSOynVraHimj5y4Lz0cEVaE8ilEt+NcinVILswv5pZp3cJ6eqojn
 /dAMQjg+Ho2Y6CySZKR2h+mm70Y9jWcRoUJf9E92SUkhADhRHFxsyEp8/k8hjeEid5mpURkGwKa
 W5srn3ztvfgelXPNQ417+wlNEeu+tTCfxrR/q8exbR6JWwlBORYy/sa9+/X/MMjvXRlzW4AWTlW
 9YF+A6ZK0BvNLhex/XO5oo8okRroFH7TnD8HoQ3XTxhZLa8oCI6FAzquCjNAVIGKwz2UZlFF1o9
 aajm2HmeuK7Ozf2Qqz7aL0ZDs/q1HNl4j16+elcJzcZQ1L8ERHpth3jj/LkufFqcRvuRsG64zyC
 B3G12qz93JNQxOzKPjbYZLP+JQQHPZB/+yHOZlN36VMUehhp/fGO2e35u9QEXpXeRECaCrFu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_03,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 mlxlogscore=999 clxscore=1015 suspectscore=0 spamscore=0 adultscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030046

On Wed, Apr 30, 2025 at 12:39:13PM +0300, Abel Vesa wrote:
> On 25-04-30 01:26:13, Sebastian Reichel wrote:
> > Hi,
> > 
> > On Tue, Apr 29, 2025 at 10:42:28AM +0300, Abel Vesa wrote:
> > > It all started with the support for CRD back when we had different
> > > compatibles for eDP and DP. Meanwhile, that has been sorted out and it
> > > is now figured out at runtime while using only the DP compatible.
> > > 
> > > It's almost funny how this got copied over from CRD and spread to all
> > > X Elite platforms.
> > > 
> > > TBH, the best reason to drop it ASAP is to make sure this doesn't spread
> > > beyond X Elite to newer platforms.
> > > 
> > > Functionally nothing changes.
> > 
> > Looking at the diff I wonder if this part should also be simplified:
> > 
> > /delete-property/ #sound-dai-cells;
> > 
> > This is done by all upstream X1E boards, so maybe just drop the
> > #sound-dai-cells directly in x1e80100.dtsi?
> 
> Yeah, I'm not sure about that.
> 
> Though the DP3 PHY is currently used as eDP, I think it could be used
> as DP. So I think it makes more sense to keep the DP3 controller as is
> in the SoC dtsi and delete the #sound-dai-cells property in each board
> specific dts. Don't know if it will ever be the case with this SoC, but
> maybe someone will use DP3 with the PHY configured as DP rather than
> eDP.
> 
> Not sure if I'm 100% right about this though.
> 
> Dmitry, Bjorn, do you think that is accurate enough?

Yes, this sounds logical. DP3 is repurposed for eDP on a board level, so
the SoC configuration should not contain any specific config for that
port.

> 
> > 
> > Greetings,
> > 
> > -- Sebastian
> 
> 

-- 
With best wishes
Dmitry

