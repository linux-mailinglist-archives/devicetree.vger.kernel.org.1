Return-Path: <devicetree+bounces-181112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 802ACAC64F4
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 10:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE746163B6D
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 08:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C782741D3;
	Wed, 28 May 2025 08:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fHBZYzpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3760918FDD2
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 08:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748422724; cv=none; b=FeuONaih6AhBALKCJanNE5cPb6h/cIrmUBurG00mzKhpPNG5kAiA622kIamt2yuxUhtaeqB3X0aBAEgCT3SvxGIoEvZdS0R7lrSwLnrYPrjsRf2o7HXdxtx7Kpeoyaj0NOMFa6FbfCtz64juLiCtzuSqzU3UKtH7kGSoDbwjW3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748422724; c=relaxed/simple;
	bh=bA/Z65fa0OThbvG45ZApa7k0SfvsTsIxp4mwIBCzg2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f62Ba2Dt7T8yE26wM3NBZlF+p5F5/SX9+9mvaafpXyejQagKrEPYEsf4fzmV5E7LUnKfILYQ4jjy+Bnopsnp2vdYkixO5rXe4s5rww5aNoUidhx5rN3uafV2eYDstKwQRBrUXZw+NVrUJuRo98Y4A7AEDss40S3AA5Dyaye/8fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fHBZYzpO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S4GCQ8029195
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 08:58:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=z8bp2Hr4AknvzUgfDRIK+uMY
	DaEWT4Q8XdrOq5uZM0U=; b=fHBZYzpOPWiPDOLUyCYnL3/poHQ7tFNEA2KaFa6G
	Zt9RK5ytOip0ReoFQI9Gd8PhZNJd5fkOepB0pKVRI4RjbEZSd8YL1QYrBGlRmFvL
	pVBnBeB4L5dTgqjTaW2phWXKm46U4bvQ23ovMYkK3gehA2x24KeGTHcLpXpAkYq0
	T/ylk/jZ1SJeMEVQhEJJuSTErw1JeiVDKENgON3BwZJ+JTCaj8GjEdzrajb7tI9T
	hbK1pCiZ6r6O6owS/uV/Qn6l/jgIa/NcwEM9FX8fIDdteyQwHsOsv73c6HAuJ9VI
	izzgDc9oNiYVAyLaeLKkYL9kAnorzpYiBarc+LowIUB9hg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992kpe8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 08:58:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53e316734so651103185a.2
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 01:58:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748422720; x=1749027520;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8bp2Hr4AknvzUgfDRIK+uMYDaEWT4Q8XdrOq5uZM0U=;
        b=UWoKfT01tuWr0iuj6IKbi9KBYpMgesQonfjf/KPUTavdk6fBDIyz+q6ikwq2027PVZ
         XmxUX+RKAlcft1x/cn4M/OPluTNxH6qw6Lho914LBVMlvxade3t1OYbspJ+C9HEjfOsx
         jkKZQeYw0uu5BqlkWuJ/otjeXGQVdECqtqjCiiPb5KiTd1mHePFhKokxJIg9ngKtoN7A
         oDtBYF1sM84NRbUCAYXdXqHRJaN40pz1JcPAkIxU3BIOZrNDaxV6y+ur5xLnasbrXF1o
         dF3kWSsqvXdYVMcF+CSEZb4JkBLu31ONRy8lJ6WWSCVvKy4/rfDHQUZYCEQVB4zcVyeH
         DFfw==
X-Forwarded-Encrypted: i=1; AJvYcCW6MQMF5lTd04AY50UVEuVYC7v+pck2Kg42W72F5hESF9TKEMMVK7dhXZVGlV9JHHwWq5hpri7oiJFJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyeUT0pQdEQHOkaLH23K9kGi4BQgQFvldAg5KfQRn8NaBMnddqa
	03egn5IPVsCoNtBe4ITI81tFf5v2zlsX/sP6PA4yEmC84K60wGvIpp35qoTUMabvv2j4zI8FCb8
	iIszH4+v89O4J45iyEbzT0CYVK6Bprzbh0bSX43qqyjijEK77RXVJx241nkdIXdOB
X-Gm-Gg: ASbGncvzDc7adJaGJxnopUUn5JgSXbVk9xkOElVjwzWtkvsLigvTCA8dQcSAdKTNOwI
	lgBHMUKWwHmhVKlixdH5x2yJhCnEQ7dmaKuleMxBQq2xYTr1IwDeBsVgiAK9oYpLnRouEj+EDqo
	hxBw4yS3KF/M+71z9bSzueI5xNxK3urpA75SOUctz1wVmE3XwKTte/T7/Rg0gdh9CRgiWEoB+6e
	B6U14ippr+I5xeVapwhCR/YTr4ccn0EiU9US6dMNgOqbaxM1pKYR9BAxvEVq3bawhDDhgnuS5fS
	aGYzmHD4JgEfLy/ejc3uCuanJfhDB43bCNT3iOYHR8VKe8xOiftxC97Tbw9CcIQF6yqLM0+VSSA
	=
X-Received: by 2002:a05:620a:bcc:b0:7cd:27e7:48c1 with SMTP id af79cd13be357-7ceecc316e4mr2763167085a.48.1748422720605;
        Wed, 28 May 2025 01:58:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXBDkfWJBkTWuCCeU7+zsGcKIenmBvr3C7DrbG4zhB6psU9lPSb+ekdddwRTP9fA45T50jQg==
X-Received: by 2002:a05:620a:bcc:b0:7cd:27e7:48c1 with SMTP id af79cd13be357-7ceecc316e4mr2763164285a.48.1748422720239;
        Wed, 28 May 2025 01:58:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f61c6c3sm190707e87.35.2025.05.28.01.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 01:58:39 -0700 (PDT)
Date: Wed, 28 May 2025 11:58:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA3NyBTYWx0ZWRfXyCmeIp0kIZgE
 P1Qt5A/AGidNlaqJIgABRPWGoM4farmVVX+FlJ9EPBfyEYzgoozX28Pk3hc7OwTujhmg56FcOtE
 Q4YxflSJwhn0vYalSsfqJSYD/FPeJWuFuhdSOzhrD8OJ+mGsBPov3dTQGwXUC1MEkdtkZ/7uv4T
 ZZi7iHZw2dSfP08ipKwG9lGS+BsniK6WEY0L6wWfSSeRSwyjkcUK6ARJuEBV2GF8TCwr6HIyKYX
 xvQRkgI+bmmSqC8iC2mkRl7UEWQRSw8LOpzhe6qfk3jcokcCFyiIsnlY5ww/IbQgG8iNchQ1/sn
 jclgG5U3JKivIAfEEVMbKCm/WsQZoRoWrQOyGK/CrX2GT0TaIlvGo4yFfP9mgwbk3x85AZrLmw2
 OkJmBoLBE0SycSIZIdpMru+c3Zs6CXqJi4AGpsOuSLc8766npfDVUU51AZQCU08Yj9h+K6HK
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=6836d041 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=VZyleXZfCtbGlGZB2B0A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: n8J_kgy8CsEGufEP34wX_O4GeRIl_hfA
X-Proofpoint-ORIG-GUID: n8J_kgy8CsEGufEP34wX_O4GeRIl_hfA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_04,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280077

On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
> > On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
> >> From: Neil Armstrong <neil.armstrong@linaro.org>
> >>
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> >>
> >> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >> will be set in between of USB-Only, Combo and DisplayPort Only so
> >> this will leave enough time to the DRM DisplayPort controller to
> >> turn of the DisplayPort PHY.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> [konrad: renaming, rewording, bug fixes]
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> 
> [...]
> 
> >> +	} else {
> >> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
> > 
> > Why? if the SID is not DP, then there can't be a DP stream.
> > 
> >> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
> >> +			new_mode = QMPPHY_MODE_USB3_ONLY;
> >> +		else
> >> +			new_mode = QMPPHY_MODE_USB3DP;
> 
> To be honest I don't really know.. Neil chose to do that, but I don't
> think there's a strict requirement.. Should we default to 4ln-USB3?

Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
mode). We handle 2ln-USB3 only.

> 
> [...]
> 
> > Consider the following scenario: connect DP dongle, use modetest to
> > setup DP stream, disconnect dongle, connect USB3 device. What would be
> > the actual state of the PHY? Modetest is still running, so DP stream is
> > not going to be shut down from the driver.
> > 
> > I think we might need a generic notifier from the PHY to the user,
> > telling that the PHY is going away (or just that the PHY is changing the
> > state). Then it would be usable by both the DP and USB drivers to let
> > them know that they should toggle the state.
> 
> 
> If modetest won't stop running even though there was a DP unplug
> (and therefore presumably a destruction of the display), I don't
> think things are designed very well

They are, but differently. Display settings are always controlled by
DRM clients (typically, a userspace compositor). They can decide to
send data to unconnected display, they can decide to ignore HPD events,
etc. Even if userspace responds to the event, there always will be some
delay. I choose modetest, because it's a particularly good example of a
delay going to the infinity.

-- 
With best wishes
Dmitry

